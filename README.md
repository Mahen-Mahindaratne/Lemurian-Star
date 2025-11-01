# Lemurian Star | An Advanced Batch Script Project

## This project was inspired by the scene in Captain America: The Winter Soldier where, while Steve Rogers and the rest of the S.T.R.I.K.E. team were busy freeing the Lemurian Star from the pirates led by Georges Batroc, Natasha Romanoff (the Black Widow) was running a side mission,  breaking into the main server room to retrieve evidence of  Zola's Algorithm.

## Lemurian Star is a collection of Windows batch scripts designed for systematic data collection from various sources on a system. The toolkit includes specialized scripts for cloning data from different locations with error handling and structured output.

> **⚠️ WARNING: Exercise extreme caution when executing these programs. Do not run them unless you have reviewed the source code and understand their function, as scripts with elevated privileges can permanently edit registries, cause system instability, lead to irreversible data loss, and even result in hardware damage requiring costly replacement.**

> **Legal Notice: You are prohibited from executing these programs on any device or account without explicit authorization. Unauthorized data access constitutes a criminal offense punishable by law in all civilized jurisdictions. Provided for educational and entertainment purposes only, you assume all liability for any legal consequences arising from the misuse of this material.**

**Lemurian Star | An Advanced Batch Script Project**: 
[![Lemurian Star | An Advanced Batch Script Project](https://img.youtube.com/vi/NJcJIu27Re0/0.jpg)](https://www.youtube.com/watch?v=NJcJIu27Re0)

### **INTENDED USE CASES**
- Legitimate forensic analysis
- Authorized data migration
- System administration with proper permissions
- Educational and research purposes
- Data recovery operations
- 
## Script Components

### **all_drives.bat**
- Copies data from all detected drives (A: through Z:)
- Creates organized structure in `SHIELD\Drives\[DriveLetter]`
- Includes comprehensive capacity warnings

### **all_public.bat**
- Targets public and shared folders:
  - `C:\Users\Public\*`
  - `C:\Shared`, `C:\Public`, `C:\Common`
- Organized output in `SHIELD\Public\` and `SHIELD\Shared\`

### **lemurian_star.bat**
- Focuses on user Documents folders
- Iterates through all user profiles in `C:\Users\`
- Creates user-specific backup structure

## Compilation Recommendation

### **Advanced BAT to EXE Converter**
For enhanced deployment and execution, we recommend compiling these scripts using **Advanced BAT to EXE Converter**:

**Benefits:**
- Creates standalone executable files
- Allows icon customization
- Provides version information embedding
- Enables execution without displaying command prompt windows
- Adds basic obfuscation to script contents

**Usage Tips:**
- Set visibility options based on your requirements
- Include required resources if needed
- Set appropriate execution level (user/admin)
- Add digital signatures if available

## Technical Features

- **Error Handling**: Automatic abortion on destination drive full
- **Structured Output**: Organized file hierarchy
- **Comprehensive Logging**: Real-time operation feedback
- **Capacity Awareness**: Space limitation warnings
- **User Profile Detection**: Automatic user folder discovery

## Security Considerations

- Scripts do not include encryption
- No automatic data transmission
- Local storage only in `SHIELD` directory
- Requires manual intervention for data movement

## Usage Instructions

1. **Review and understand the scripts** before execution
2. **Ensure adequate disk space** on destination drive
3. **Run with appropriate permissions** (Admin recommended)
4. **Monitor execution** for any errors
5. **Secure collected data** appropriately

## Ethical Guidelines

- Always obtain proper authorization
- Document your actions and purposes
- Respect privacy and data protection laws
- Use only for legitimate purposes
- Dispose of collected data responsibly

## 📞 Support

For questions about legitimate use cases or technical issues, please open an issue in this repository.

---

**Remember: With great power comes great responsibility. Use these tools wisely and ethically.**
