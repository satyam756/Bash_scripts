# Automating the pre-defined information 

# #!/bin/bash
############################################
# Author: Satyam Tripathi
# Date: 14/10/2023
# Description: 
# Date Modified: 14/10/2023
#############################################

# chmod a+x script name 

#!/bin/bash

read -r -p "Enter the name of the script" script
read -r -p "Enter your name" name
read -r -p "Enter the description of the script" description

echo "#!/bin/bash" > path/$(script)
echo # empty line
echo "############################################" >> path/$(script)
echo "# Author: $name" >> path/$(script)
echo "# Date: $(date)" >> path/$(script)
echo "# Description: $description" >> path/$(script)
echo "# Date Modified: $(date)" >> path/$(script)
echo # empty line
echo "############################################" >> path/$(script)
echo 
chmod a+x $(script)

vim $(script)

