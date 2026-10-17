# NetHunter Kernel for Redmi 8A (`olivelite` / `Mi439`) - crDroid Android 14

Automated GitHub Actions workflow to compile a custom Kali NetHunter kernel for the Xiaomi Redmi 8A (`olivelite`) running **crDroid 10.x (Android 14)**.

---

### Features Included
- **Kernel Base**: Upstream Linux `4.19.y` (`LineageOS/android_kernel_xiaomi_msm8937` branch `lineage-21`)
- **Compiler**: Google AOSP Clang `r487747c` (Clang 17.0.2)
- **Wi-Fi Packet Injection**: Official Kali NetHunter 4.19 `mac80211` frame injection patch
- **External USB Wi-Fi Drivers**:
  - Atheros: `ath9k_htc` (TL-WN722N v1, AR9271), `carl9170`
  - Ralink / MediaTek: `rt2800usb` (RT3070, RT5370), `mt7601u`
  - Realtek: `rtl8187`, `rtl8192cu`, and in-tree `rtl88xxau` (RTL8812AU / RTL8814AU / RTL8821AU)
- **HID Attacks (BadUSB)**: USB ConfigFS HID gadget emulation enabled
- **Output**: Flashable AnyKernel3 `.zip` for custom recovery (TWRP/OrangeFox).

---

### How to Build on GitHub (Zero Local Setup)

1. Create a new empty repository on your GitHub account (e.g., `nethunter-kernel-olivelite`).
2. Push this folder to your repository:
   ```bash
   cd ~/nethunter-kernel-olivelite
   git init -b main
   git add .
   git commit -m "Add NetHunter kernel build workflow"
   git remote add origin https://github.com/<YOUR_GITHUB_USERNAME>/nethunter-kernel-olivelite.git
   git push -u origin main
   ```
3. Open your repo on GitHub:
   - Go to the **Actions** tab.
   - Select **Build NetHunter Kernel - Redmi 8A (olivelite)**.
   - Click **Run workflow** -> **Run workflow**.
4. Wait ~20–30 minutes for the build to finish.
5. Download `NetHunter-Kernel-olivelite-crDroid14.zip` under **Artifacts** at the bottom of the run page.
6. Reboot to TWRP/OrangeFox and flash the ZIP!
