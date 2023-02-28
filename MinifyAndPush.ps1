Write-Host "Minifying HTML files..."
html-minifier -c "C:\Users\Sarah\AppData\Roaming\npm\node_modules\html-minifier\cli-config-file.conf" --file-ext html  --input-dir "./" --output-dir "./"
Write-Host "Copying .htaccess files..."                                   
gci ".\" -Dir -Rec | cpi ".\.htaccess" -D {$_.fullname}
Write-Host "Git add, commit, and push..."                                       
git add *                                      
git commit -m "updated"                                    
git push                                    
Write-Host "Done!"