#!/opt/homebrew/bin/python3

import json
import zipfile
import sys
import re
from pathlib import Path

# Define the keys to remove
keys_to_remove = {
    'created_by', 'updated_by', 'is_hidden', 'is_discreet', 'created_at', 'updated_at',
    'is_pinned', 'colour', 'marketplace_uuid', 'header_image', 'header_uuid',
    'is_personality_pinned', 'is_appearance_pinned', 'is_personality_visible', 'is_private',
    'focus_x', 'focus_y', 'is_template', 'is_attributes_private', 'image_path', 'image_uuid',
    'visibility_id', 'mirror_id', 'slug', 'campaign_id', 'tooltip', 'is_featured'
}

def find_entity_name(data, word, entity_id):
    """Find the entity.name for a given entity.id within the specified array."""
    plural_word = word + 's'  # Assuming the plural is simply the singular + 's'
    for item in data.get(plural_word, []):
        if item.get('entity', {}).get('id') == entity_id:
            return item.get('entity', {}).get('name')
    return None

def replace_references(entry, data):
    """Recursively search for [word:number] references and strip out specific keys, given the full dataset."""
    if isinstance(entry, dict):
        # Remove specific keys
        entry = {key: replace_references(value, data) for key, value in entry.items() if key not in keys_to_remove and value != []}
    elif isinstance(entry, list):
        entry = [replace_references(element, data) for element in entry]
    elif isinstance(entry, str):
        entry = re.sub(r'\[([a-zA-Z]+):(\d+)\]', lambda m: find_entity_name(data, m.group(1), int(m.group(2))) or m.group(0), entry)
    return entry

def extract_json_from_zip(zip_path, output_file):
    data = {}
    
    with zipfile.ZipFile(zip_path, 'r') as z:
        # First pass: Extract and store data
        for file_info in z.infolist():
            if file_info.filename.endswith('.json') and not file_info.is_dir():
                folder_name = Path(file_info.filename).parent.name
                with z.open(file_info) as f:
                    file_content = f.read().decode('utf-8')
                    json_content = json.loads(file_content)
                    
                    if folder_name not in data:
                        data[folder_name] = []
                    data[folder_name].append(json_content)
    
    # Second pass: Replace references and remove specific keys with the entire dataset available for lookup
    for category in data:
        data[category] = [replace_references(entry, data) for entry in data[category]]
    
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=4)

if __name__ == '__main__':
    if len(sys.argv) != 3:
        print("Usage: python script.py <path_to_zip_file> <output_json_file>")
        sys.exit(1)

    zip_path = sys.argv[1]
    output_file = sys.argv[2]

    extract_json_from_zip(zip_path, output_file)

