Write-Host "Minifying HTML files..."
html-minifier -c "./html-minifer-conf.conf" --file-ext html  --input-dir "./" --output-dir "./"
Write-Host "Copying .htaccess files..."                                   
gci ".\" -Dir -Rec | cpi ".\.htaccess" -D {$_.fullname}
Write-Host "Git add, commit, and push..."                                       
git add *                                      
git commit -m "updated"                                    
git push                                    
Write-Host "Done!"