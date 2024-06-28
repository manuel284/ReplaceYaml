# paramters
# yamlFilePath: path to the yaml file
# change author and published as needed
param (
    [string]$yamlFilePath,
    [string]$author,
    [string]$published
)

# Read the YAML file
$yamlContent = Get-Content -Path $yamlFilePath -Raw | ConvertFrom-Yaml

# Update the YAML content
# Change fields as needed
$yamlContent.author = $author
$yamlContent.published = $published

# Convert back to YAML and write to the file
$yamlContent | ConvertTo-Yaml | Set-Content -Path $yamlFilePath