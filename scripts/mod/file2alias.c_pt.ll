; ModuleID = '/llk/IR_all_yes/scripts/mod/file2alias.c_pt.bc'
source_filename = "../scripts/mod/file2alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devtable = type { ptr, i64, ptr }
%struct.dmifield = type { ptr, i32 }
%struct.Elf32_Sym = type { i32, i32, i32, i8, i8, i16 }
%struct.elf_info = type { i64, ptr, ptr, ptr, ptr, i16, i16, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.Elf32_Shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.module = type { ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.buffer, [25 x i8], ptr, ptr, [0 x i8] }
%struct.buffer = type { ptr, i32, i32 }
%struct.anon = type { [8 x i8] }
%struct.dmi_strmatch = type { i8, [79 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"__mod_\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"_device_table\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"of\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"pnp\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"pnp_card\00", align 1
@devtable = internal unnamed_addr constant [47 x %struct.devtable] [%struct.devtable { ptr @.str.40, i64 16, ptr @do_hid_entry }, %struct.devtable { ptr @.str.41, i64 24, ptr @do_ieee1394_entry }, %struct.devtable { ptr @.str.42, i64 32, ptr @do_pci_entry }, %struct.devtable { ptr @.str.43, i64 12, ptr @do_ccw_entry }, %struct.devtable { ptr @.str.44, i64 8, ptr @do_ap_entry }, %struct.devtable { ptr @.str.45, i64 8, ptr @do_css_entry }, %struct.devtable { ptr @.str.46, i64 4, ptr @do_serio_entry }, %struct.devtable { ptr @.str.47, i64 24, ptr @do_acpi_entry }, %struct.devtable { ptr @.str.48, i64 52, ptr @do_pcmcia_entry }, %struct.devtable { ptr @.str.49, i64 64, ptr @do_vio_entry }, %struct.devtable { ptr @.str.50, i64 164, ptr @do_input_entry }, %struct.devtable { ptr @.str.51, i64 12, ptr @do_eisa_entry }, %struct.devtable { ptr @.str.52, i64 8, ptr @do_parisc_entry }, %struct.devtable { ptr @.str.53, i64 12, ptr @do_sdio_entry }, %struct.devtable { ptr @.str.54, i64 6, ptr @do_ssb_entry }, %struct.devtable { ptr @.str.55, i64 6, ptr @do_bcma_entry }, %struct.devtable { ptr @.str.56, i64 8, ptr @do_virtio_entry }, %struct.devtable { ptr @.str.57, i64 20, ptr @do_vmbus_entry }, %struct.devtable { ptr @.str.58, i64 36, ptr @do_rpmsg_entry }, %struct.devtable { ptr @.str.59, i64 24, ptr @do_i2c_entry }, %struct.devtable { ptr @.str.60, i64 12, ptr @do_i3c_entry }, %struct.devtable { ptr @.str.61, i64 36, ptr @do_spi_entry }, %struct.devtable { ptr @.str.62, i64 332, ptr @do_dmi_entry }, %struct.devtable { ptr @.str.63, i64 24, ptr @do_platform_entry }, %struct.devtable { ptr @.str.64, i64 8, ptr @do_mdio_entry }, %struct.devtable { ptr @.str.65, i64 8, ptr @do_zorro_entry }, %struct.devtable { ptr @.str.66, i64 12, ptr @do_isapnp_entry }, %struct.devtable { ptr @.str.67, i64 12, ptr @do_ipack_entry }, %struct.devtable { ptr @.str.68, i64 12, ptr @do_amba_entry }, %struct.devtable { ptr @.str.69, i64 1, ptr @do_mips_cdmm_entry }, %struct.devtable { ptr @.str.70, i64 16, ptr @do_x86cpu_entry }, %struct.devtable { ptr @.str.71, i64 2, ptr @do_cpu_entry }, %struct.devtable { ptr @.str.72, i64 56, ptr @do_mei_entry }, %struct.devtable { ptr @.str.73, i64 8, ptr @do_rio_entry }, %struct.devtable { ptr @.str.74, i64 8, ptr @do_ulpi_entry }, %struct.devtable { ptr @.str.75, i64 20, ptr @do_hda_entry }, %struct.devtable { ptr @.str.76, i64 12, ptr @do_sdw_entry }, %struct.devtable { ptr @.str.77, i64 18, ptr @do_fsl_mc_entry }, %struct.devtable { ptr @.str.78, i64 32, ptr @do_tbsvc_entry }, %struct.devtable { ptr @.str.79, i64 8, ptr @do_typec_entry }, %struct.devtable { ptr @.str.80, i64 16, ptr @do_tee_entry }, %struct.devtable { ptr @.str.81, i64 44, ptr @do_wmi_entry }, %struct.devtable { ptr @.str.82, i64 36, ptr @do_mhi_entry }, %struct.devtable { ptr @.str.83, i64 36, ptr @do_auxiliary_entry }, %struct.devtable { ptr @.str.84, i64 12, ptr @do_ssam_entry }, %struct.devtable { ptr @.str.85, i64 8, ptr @do_dfl_entry }, %struct.devtable { ptr @.str.86, i64 20, ptr @do_ishtp_entry }], align 16
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [176 x i8] c"%s: sizeof(struct %s_device_id)=%lu is not a modulo of the size of section __mod_%s__<identifier>_device_table=%lu.\0AFix definition of struct %s_device_id in mod_devicetable.h\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [60 x i8] c"%s: struct %s_device_id is %lu bytes.  The last of %lu is:\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"%s: struct %s_device_id is not terminated with a NULL entry!\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"usb:\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%04X\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%0*X\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%X\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"[%X-%X]\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"[%X-9\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"[%X\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"A-%X]\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%X]\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"dc\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"ic\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"MODULE_ALIAS(\22%s\22);\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"of:N%sT%s\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"%sC%s\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"MODULE_ALIAS(\22pnp:d%s*\22);\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"MODULE_ALIAS(\22acpi*:%s:*\22);\0A\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"hid\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"ieee1394\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"ccw\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"ap\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"css\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"serio\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"acpi\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"pcmcia\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"vio\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"eisa\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"parisc\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"sdio\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"ssb\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"bcma\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"virtio\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"vmbus\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"rpmsg\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"i3c\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"dmi\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"zorro\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"isapnp\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"ipack\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"amba\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"mipscdmm\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"x86cpu\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"mei\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"rapidio\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"hdaudio\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"sdw\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"fslmc\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"tbsvc\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"typec\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"tee\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"wmi\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"mhi\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"auxiliary\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"ssam\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"dfl\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"ishtp\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"hid:\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"%08X\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"ieee1394:\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"mo\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"sp\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"pci:\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"vfio_pci:\00", align 1
@.str.98 = private unnamed_addr constant [40 x i8] c"Unknown PCI driver_override alias %08X\0A\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@.str.101 = private unnamed_addr constant [31 x i8] c"Can't handle masks in %s:%04X\0A\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"sc\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"ccw:\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"dm\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"ap:t%02X*\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"css:t%01X\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"serio:\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"ty\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"pr\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"acpi*:%s:*\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"acpi*:\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c":*\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"pa\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"pb\00", align 1
@.str.129 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"pd\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"vio:T%sS%s\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"input:\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"k*\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"r*\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"a*\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"m*\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"l*\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"s*\00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c"f*\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"w*\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"%X,*\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"eisa:s%s*\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"hv\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"sdio:\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"ssb:\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"bcma:\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"vmbus:\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"rpmsg:%s\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"i2c:%s\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"i3c:\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"manuf\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"spi:%s\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"dmi*\00", align 1
@dmi_fields = internal unnamed_addr constant [15 x %struct.dmifield] [%struct.dmifield { ptr @.str.165, i32 1 }, %struct.dmifield { ptr @.str.166, i32 2 }, %struct.dmifield { ptr @.str.167, i32 3 }, %struct.dmifield { ptr @.str.168, i32 4 }, %struct.dmifield { ptr @.str.169, i32 5 }, %struct.dmifield { ptr @.str.170, i32 6 }, %struct.dmifield { ptr @.str.171, i32 7 }, %struct.dmifield { ptr @.str.172, i32 8 }, %struct.dmifield { ptr @.str.173, i32 13 }, %struct.dmifield { ptr @.str.174, i32 14 }, %struct.dmifield { ptr @.str.175, i32 15 }, %struct.dmifield { ptr @.str.176, i32 18 }, %struct.dmifield { ptr @.str.177, i32 19 }, %struct.dmifield { ptr @.str.178, i32 20 }, %struct.dmifield zeroinitializer], align 16
@.str.163 = private unnamed_addr constant [5 x i8] c":%s*\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"bvn\00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"bvr\00", align 1
@.str.167 = private unnamed_addr constant [3 x i8] c"bd\00", align 1
@.str.168 = private unnamed_addr constant [3 x i8] c"br\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"efr\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"svn\00", align 1
@.str.171 = private unnamed_addr constant [3 x i8] c"pn\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"pvr\00", align 1
@.str.173 = private unnamed_addr constant [4 x i8] c"rvn\00", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"rn\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"rvr\00", align 1
@.str.176 = private unnamed_addr constant [4 x i8] c"cvn\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"ct\00", align 1
@.str.178 = private unnamed_addr constant [4 x i8] c"cvr\00", align 1
@.str.179 = private unnamed_addr constant [12 x i8] c"platform:%s\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"mdio:\00", align 1
@.str.181 = private unnamed_addr constant [7 x i8] c"zorro:\00", align 1
@.str.182 = private unnamed_addr constant [21 x i8] c"pnp:d%c%c%c%x%x%x%x*\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"ipack:\00", align 1
@.str.184 = private unnamed_addr constant [104 x i8] c"%s: Masked-off bit(s) of AMBA device ID are non-zero: id=0x%08X, mask=0x%08X.  Please fix this driver.\0A\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"amba:d\00", align 1
@.str.186 = private unnamed_addr constant [16 x i8] c"mipscdmm:t%02X*\00", align 1
@.str.187 = private unnamed_addr constant [14 x i8] c"cpu:type:x86,\00", align 1
@.str.190 = private unnamed_addr constant [11 x i8] c":feature:*\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"%04X*\00", align 1
@.str.192 = private unnamed_addr constant [26 x i8] c"cpu:type:*:feature:*%04X*\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"mei:\00", align 1
@.str.194 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.195 = private unnamed_addr constant [69 x i8] c"%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"rapidio:\00", align 1
@.str.197 = private unnamed_addr constant [3 x i8] c"av\00", align 1
@.str.198 = private unnamed_addr constant [3 x i8] c"ad\00", align 1
@.str.199 = private unnamed_addr constant [16 x i8] c"ulpi:v%04xp%04x\00", align 1
@.str.200 = private unnamed_addr constant [9 x i8] c"hdaudio:\00", align 1
@.str.203 = private unnamed_addr constant [5 x i8] c"sdw:\00", align 1
@.str.204 = private unnamed_addr constant [16 x i8] c"fsl-mc:v%08Xd%s\00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c"tbsvc:\00", align 1
@.str.206 = private unnamed_addr constant [4 x i8] c"k%s\00", align 1
@.str.207 = private unnamed_addr constant [13 x i8] c"typec:id%04X\00", align 1
@.str.208 = private unnamed_addr constant [73 x i8] c"tee:%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x\00", align 1
@.str.209 = private unnamed_addr constant [40 x i8] c"Invalid WMI device id 'wmi:%s' in '%s'\0A\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"wmi:%s\00", align 1
@.str.211 = private unnamed_addr constant [47 x i8] c"Could not generate all MODULE_ALIAS's in '%s'\0A\00", align 1
@.str.212 = private unnamed_addr constant [7 x i8] c"mhi:%s\00", align 1
@.str.213 = private unnamed_addr constant [13 x i8] c"auxiliary:%s\00", align 1
@.str.214 = private unnamed_addr constant [16 x i8] c"ssam:d%02Xc%02X\00", align 1
@.str.215 = private unnamed_addr constant [15 x i8] c"dfl:t%04Xf%04X\00", align 1
@.str.218 = private unnamed_addr constant [69 x i8] c"%02X%02X%02X%02X-%02X%02X-%02X%02X-%02X%02X-%02X%02X%02X%02X%02X%02X\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @handle_moddevtable(ptr noundef %mod, ptr nocapture noundef readonly %info, ptr noundef %sym, ptr noundef %symname) local_unnamed_addr #0 {
entry:
  %st_shndx = getelementptr inbounds %struct.Elf32_Sym, ptr %sym, i64 0, i32 5
  %0 = load i16, ptr %st_shndx, align 2, !tbaa !5
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %cleanup76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv.i = zext i16 %0 to i32
  %1 = add i16 %0, 1
  %2 = icmp ult i16 %1, -255
  br i1 %2, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false
  %sub.i = or i32 %conv.i, -65536
  br label %get_secindex.exit

if.end.i:                                         ; preds = %lor.lhs.false
  %cmp.not.i = icmp eq i16 %0, -1
  br i1 %cmp.not.i, label %if.end9.i, label %get_secindex.exit

if.end9.i:                                        ; preds = %if.end.i
  %symtab_shndx_start.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 12
  %3 = load ptr, ptr %symtab_shndx_start.i, align 8, !tbaa !11
  %symtab_start.i = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 3
  %4 = load ptr, ptr %symtab_start.i, align 8, !tbaa !15
  %sub.ptr.lhs.cast.i = ptrtoint ptr %sym to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %4 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 4
  %arrayidx.i = getelementptr inbounds i32, ptr %3, i64 %sub.ptr.div.i
  %5 = load i32, ptr %arrayidx.i, align 4, !tbaa !16
  br label %get_secindex.exit

get_secindex.exit:                                ; preds = %if.end9.i, %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %5, %if.end9.i ], [ %conv.i, %if.end.i ]
  %num_sections = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 10
  %6 = load i32, ptr %num_sections, align 4, !tbaa !17
  %cmp.not = icmp ult i32 %retval.0.i, %6
  br i1 %cmp.not, label %if.end, label %cleanup76

if.end:                                           ; preds = %get_secindex.exit
  %st_info = getelementptr inbounds %struct.Elf32_Sym, ptr %sym, i64 0, i32 3
  %7 = load i8, ptr %st_info, align 4, !tbaa !18
  %8 = and i8 %7, 15
  %cmp1.not = icmp eq i8 %8, 1
  br i1 %cmp1.not, label %if.end4, label %cleanup76

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %symname, ptr noundef nonnull dereferenceable(7) @.str, i64 noundef 6) #16
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %cleanup76

if.end8:                                          ; preds = %if.end4
  %add.ptr = getelementptr inbounds i8, ptr %symname, i64 6
  %call9 = tail call i64 @strlen(ptr noundef nonnull %add.ptr) #16
  %conv11 = and i64 %call9, 4294967295
  %cmp12 = icmp ult i64 %conv11, 13
  br i1 %cmp12, label %cleanup76, label %if.end15

if.end15:                                         ; preds = %if.end8
  %add.ptr16 = getelementptr inbounds i8, ptr %add.ptr, i64 %conv11
  %add.ptr17 = getelementptr inbounds i8, ptr %add.ptr16, i64 -13
  %call18 = tail call i32 @strcmp(ptr noundef nonnull %add.ptr17, ptr noundef nonnull dereferenceable(14) @.str.1) #16
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %cleanup76

if.end21:                                         ; preds = %if.end15
  %call22 = tail call ptr @strstr(ptr noundef nonnull %add.ptr, ptr noundef nonnull @.str.2) #16
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %cleanup76, label %if.end25

if.end25:                                         ; preds = %if.end21
  %sub.ptr.lhs.cast = ptrtoint ptr %call22 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv26 = trunc i64 %sub.ptr.sub to i32
  %sechdrs = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 2
  %9 = load ptr, ptr %sechdrs, align 8, !tbaa !19
  br i1 %2, label %if.end.i135, label %get_secindex.exit145.thread

if.end.i135:                                      ; preds = %if.end25
  %cmp.not.i134 = icmp eq i16 %0, -1
  br i1 %cmp.not.i134, label %get_secindex.exit145, label %get_secindex.exit145.thread174

get_secindex.exit145:                             ; preds = %if.end.i135
  %symtab_shndx_start.i136 = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 12
  %10 = load ptr, ptr %symtab_shndx_start.i136, align 8, !tbaa !11
  %symtab_start.i137 = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 3
  %11 = load ptr, ptr %symtab_start.i137, align 8, !tbaa !15
  %sub.ptr.lhs.cast.i138 = ptrtoint ptr %sym to i64
  %sub.ptr.rhs.cast.i139 = ptrtoint ptr %11 to i64
  %sub.ptr.sub.i140 = sub i64 %sub.ptr.lhs.cast.i138, %sub.ptr.rhs.cast.i139
  %sub.ptr.div.i141 = ashr exact i64 %sub.ptr.sub.i140, 4
  %arrayidx.i142 = getelementptr inbounds i32, ptr %10, i64 %sub.ptr.div.i141
  %12 = load i32, ptr %arrayidx.i142, align 4, !tbaa !16
  %idxprom = zext i32 %12 to i64
  %sh_type = getelementptr inbounds %struct.Elf32_Shdr, ptr %9, i64 %idxprom, i32 1
  %13 = load i32, ptr %sh_type, align 4, !tbaa !20
  %and28 = and i32 %13, 8
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end9.i159, label %if.then30

get_secindex.exit145.thread174:                   ; preds = %if.end.i135
  %idxprom176 = zext i16 %0 to i64
  %sh_type177 = getelementptr inbounds %struct.Elf32_Shdr, ptr %9, i64 %idxprom176, i32 1
  %14 = load i32, ptr %sh_type177, align 4, !tbaa !20
  %and28178 = and i32 %14, 8
  %tobool29.not179 = icmp eq i32 %and28178, 0
  br i1 %tobool29.not179, label %get_secindex.exit161, label %if.then30

get_secindex.exit145.thread:                      ; preds = %if.end25
  %sub.i132 = or i32 %conv.i, -65536
  %idxprom163 = zext i32 %sub.i132 to i64
  %sh_type164 = getelementptr inbounds %struct.Elf32_Shdr, ptr %9, i64 %idxprom163, i32 1
  %15 = load i32, ptr %sh_type164, align 4, !tbaa !20
  %and28165 = and i32 %15, 8
  %tobool29.not166 = icmp eq i32 %and28165, 0
  br i1 %tobool29.not166, label %get_secindex.exit161, label %if.then30

if.then30:                                        ; preds = %get_secindex.exit145.thread, %get_secindex.exit145.thread174, %get_secindex.exit145
  %st_size = getelementptr inbounds %struct.Elf32_Sym, ptr %sym, i64 0, i32 2
  %16 = load i32, ptr %st_size, align 4, !tbaa !22
  %conv31 = zext i32 %16 to i64
  %call32 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %conv31) #17
  br label %if.end41

if.end9.i159:                                     ; preds = %get_secindex.exit145
  %symtab_shndx_start.i152 = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 12
  %17 = load ptr, ptr %symtab_shndx_start.i152, align 8, !tbaa !11
  %symtab_start.i153 = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 3
  %18 = load ptr, ptr %symtab_start.i153, align 8, !tbaa !15
  %sub.ptr.lhs.cast.i154 = ptrtoint ptr %sym to i64
  %sub.ptr.rhs.cast.i155 = ptrtoint ptr %18 to i64
  %sub.ptr.sub.i156 = sub i64 %sub.ptr.lhs.cast.i154, %sub.ptr.rhs.cast.i155
  %sub.ptr.div.i157 = ashr exact i64 %sub.ptr.sub.i156, 4
  %arrayidx.i158 = getelementptr inbounds i32, ptr %17, i64 %sub.ptr.div.i157
  %19 = load i32, ptr %arrayidx.i158, align 4, !tbaa !16
  br label %get_secindex.exit161

get_secindex.exit161:                             ; preds = %if.end9.i159, %get_secindex.exit145.thread, %get_secindex.exit145.thread174
  %retval.0.i160 = phi i32 [ %19, %if.end9.i159 ], [ %conv.i, %get_secindex.exit145.thread174 ], [ %sub.i132, %get_secindex.exit145.thread ]
  %.in = getelementptr inbounds %struct.elf_info, ptr %info, i64 0, i32 1
  %20 = load ptr, ptr %.in, align 8, !tbaa !23
  %idxprom35 = zext i32 %retval.0.i160 to i64
  %sh_offset = getelementptr inbounds %struct.Elf32_Shdr, ptr %9, i64 %idxprom35, i32 4
  %21 = load i32, ptr %sh_offset, align 4, !tbaa !24
  %idx.ext37 = zext i32 %21 to i64
  %add.ptr38 = getelementptr i8, ptr %20, i64 %idx.ext37
  %st_value = getelementptr inbounds %struct.Elf32_Sym, ptr %sym, i64 0, i32 1
  %22 = load i32, ptr %st_value, align 4, !tbaa !25
  %idx.ext39 = zext i32 %22 to i64
  %add.ptr40 = getelementptr i8, ptr %add.ptr38, i64 %idx.ext39
  br label %if.end41

if.end41:                                         ; preds = %get_secindex.exit161, %if.then30
  %zeros.0 = phi ptr [ %call32, %if.then30 ], [ null, %get_secindex.exit161 ]
  %symval.0 = phi ptr [ %call32, %if.then30 ], [ %add.ptr40, %get_secindex.exit161 ]
  %call42 = tail call fastcc zeroext i1 @sym_is(ptr noundef nonnull %add.ptr, i32 noundef %conv26, ptr noundef nonnull @.str.3)
  br i1 %call42, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end41
  %st_size44 = getelementptr inbounds %struct.Elf32_Sym, ptr %sym, i64 0, i32 2
  %23 = load i32, ptr %st_size44, align 4, !tbaa !22
  %conv45 = zext i32 %23 to i64
  tail call fastcc void @do_usb_table(ptr noundef %symval.0, i64 noundef %conv45, ptr noundef %mod)
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end41
  %call47 = tail call fastcc zeroext i1 @sym_is(ptr noundef nonnull %add.ptr, i32 noundef %conv26, ptr noundef nonnull @.str.4)
  br i1 %call47, label %if.then48, label %if.else51

if.then48:                                        ; preds = %if.end46
  %st_size49 = getelementptr inbounds %struct.Elf32_Sym, ptr %sym, i64 0, i32 2
  %24 = load i32, ptr %st_size49, align 4, !tbaa !22
  %conv50 = zext i32 %24 to i64
  tail call fastcc void @do_of_table(ptr noundef %symval.0, i64 noundef %conv50, ptr noundef %mod)
  br label %if.end75

if.else51:                                        ; preds = %if.end46
  %call52 = tail call fastcc zeroext i1 @sym_is(ptr noundef nonnull %add.ptr, i32 noundef %conv26, ptr noundef nonnull @.str.5)
  br i1 %call52, label %if.then53, label %if.else56

if.then53:                                        ; preds = %if.else51
  %st_size54 = getelementptr inbounds %struct.Elf32_Sym, ptr %sym, i64 0, i32 2
  %25 = load i32, ptr %st_size54, align 4, !tbaa !22
  %conv55 = zext i32 %25 to i64
  tail call fastcc void @do_pnp_device_entry(ptr noundef %symval.0, i64 noundef %conv55, ptr noundef %mod)
  br label %if.end75

if.else56:                                        ; preds = %if.else51
  %call57 = tail call fastcc zeroext i1 @sym_is(ptr noundef nonnull %add.ptr, i32 noundef %conv26, ptr noundef nonnull @.str.6)
  br i1 %call57, label %if.then58, label %for.body

if.then58:                                        ; preds = %if.else56
  %st_size59 = getelementptr inbounds %struct.Elf32_Sym, ptr %sym, i64 0, i32 2
  %26 = load i32, ptr %st_size59, align 4, !tbaa !22
  %conv60 = zext i32 %26 to i64
  tail call fastcc void @do_pnp_card_entries(ptr noundef %symval.0, i64 noundef %conv60, ptr noundef %mod)
  br label %if.end75

for.body:                                         ; preds = %for.inc, %if.else56
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.else56 ]
  %arrayidx66 = getelementptr inbounds [47 x %struct.devtable], ptr @devtable, i64 0, i64 %indvars.iv
  %27 = load ptr, ptr %arrayidx66, align 8, !tbaa !26
  %call67 = tail call fastcc zeroext i1 @sym_is(ptr noundef nonnull %add.ptr, i32 noundef %conv26, ptr noundef %27)
  br i1 %call67, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  %conv62.le = and i64 %indvars.iv, 4294967295
  %st_size69 = getelementptr inbounds %struct.Elf32_Sym, ptr %sym, i64 0, i32 2
  %28 = load i32, ptr %st_size69, align 4, !tbaa !22
  %conv70 = zext i32 %28 to i64
  %id_size = getelementptr inbounds [47 x %struct.devtable], ptr @devtable, i64 0, i64 %conv62.le, i32 1
  %29 = load i64, ptr %id_size, align 8, !tbaa !28
  %do_entry = getelementptr inbounds [47 x %struct.devtable], ptr @devtable, i64 0, i64 %conv62.le, i32 2
  %30 = load ptr, ptr %do_entry, align 8, !tbaa !29
  tail call fastcc void @do_table(ptr noundef %symval.0, i64 noundef %conv70, i64 noundef %29, ptr noundef %27, ptr noundef %30, ptr noundef %mod)
  br label %if.end75

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 47
  br i1 %exitcond.not, label %if.end75, label %for.body

if.end75:                                         ; preds = %for.inc, %cleanup, %if.then58, %if.then53, %if.then48
  tail call void @free(ptr noundef %zeros.0) #18
  br label %cleanup76

cleanup76:                                        ; preds = %if.end75, %if.end21, %if.end15, %if.end8, %if.end4, %if.end, %get_secindex.exit, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn uwtable
define internal fastcc zeroext i1 @sym_is(ptr nocapture noundef readonly %name, i32 noundef %namelen, ptr nocapture noundef readonly %symbol) unnamed_addr #4 {
entry:
  %conv = zext i32 %namelen to i64
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %symbol) #16
  %cmp.not = icmp eq i64 %call, %conv
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr %name, ptr %symbol, i64 %conv)
  %cmp4 = icmp eq i32 %bcmp, 0
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i1 [ %cmp4, %if.end ], [ false, %entry ]
  ret i1 %retval.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_usb_table(ptr nocapture noundef readonly %symval, i64 noundef %size, ptr noundef %mod) unnamed_addr #0 {
entry:
  %name = getelementptr inbounds %struct.module, ptr %mod, i64 0, i32 12
  tail call fastcc void @device_id_check(ptr noundef nonnull %name, ptr noundef nonnull @.str.3, i64 noundef %size, i64 noundef 24, ptr noundef %symval)
  %sub = add i64 %size, -24
  %cmp14.not = icmp eq i64 %sub, 0
  br i1 %cmp14.not, label %for.end, label %for.body

for.body:                                         ; preds = %do_usb_entry_multi.exit, %entry
  %conv15 = phi i64 [ %conv, %do_usb_entry_multi.exit ], [ 0, %entry ]
  %add.ptr = getelementptr i8, ptr %symval, i64 %conv15
  %arrayidx.i.i = getelementptr inbounds i8, ptr %add.ptr, i64 1
  %0 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !30
  %add.ptr2.i = getelementptr i8, ptr %add.ptr, i64 2
  %arrayidx.i150.i = getelementptr i8, ptr %add.ptr, i64 3
  %1 = load i8, ptr %arrayidx.i150.i, align 1, !tbaa !30
  %2 = load i8, ptr %add.ptr2.i, align 1, !tbaa !30
  %__x1.sroa.4.0.insert.ext.i = zext i8 %2 to i32
  %__x1.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x1.sroa.4.0.insert.ext.i, 8
  %__x1.sroa.0.0.insert.ext.i = zext i8 %1 to i32
  %add.ptr5.i = getelementptr i8, ptr %add.ptr, i64 4
  %arrayidx.i160.i = getelementptr i8, ptr %add.ptr, i64 5
  %3 = load i8, ptr %arrayidx.i160.i, align 1, !tbaa !30
  %4 = load i8, ptr %add.ptr5.i, align 1, !tbaa !30
  %__x4.sroa.4.0.insert.ext.i = zext i8 %4 to i32
  %__x4.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x4.sroa.4.0.insert.ext.i, 8
  %__x4.sroa.0.0.insert.ext.i = zext i8 %3 to i32
  %add.ptr8.i = getelementptr i8, ptr %add.ptr, i64 6
  %arrayidx.i170.i = getelementptr i8, ptr %add.ptr, i64 7
  %5 = load i8, ptr %arrayidx.i170.i, align 1, !tbaa !30
  %6 = load i8, ptr %add.ptr8.i, align 1, !tbaa !30
  %__x7.sroa.4.0.insert.ext.i = zext i8 %6 to i32
  %__x7.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x7.sroa.4.0.insert.ext.i, 8
  %__x7.sroa.0.0.insert.ext.i = zext i8 %5 to i32
  %__x7.sroa.0.0.insert.insert.i = or i32 %__x7.sroa.4.0.insert.shift.i, %__x7.sroa.0.0.insert.ext.i
  %add.ptr11.i = getelementptr i8, ptr %add.ptr, i64 8
  %arrayidx.i180.i = getelementptr i8, ptr %add.ptr, i64 9
  %7 = load i8, ptr %arrayidx.i180.i, align 1, !tbaa !30
  %8 = load i8, ptr %add.ptr11.i, align 1, !tbaa !30
  %__x10.sroa.4.0.insert.ext.i = zext i8 %8 to i32
  %__x10.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x10.sroa.4.0.insert.ext.i, 8
  %__x10.sroa.0.0.insert.ext.i = zext i8 %7 to i32
  %__x10.sroa.0.0.insert.insert.i = or i32 %__x10.sroa.4.0.insert.shift.i, %__x10.sroa.0.0.insert.ext.i
  %add.ptr14.i = getelementptr i8, ptr %add.ptr, i64 10
  %9 = load i8, ptr %add.ptr14.i, align 1, !tbaa !30
  %add.ptr17.i = getelementptr i8, ptr %add.ptr, i64 13
  %10 = load i8, ptr %add.ptr17.i, align 1, !tbaa !30
  %conv.i = zext i8 %0 to i32
  %and.i = and i32 %conv.i, 4
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %__x7.sroa.0.0.insert.insert.i
  %and21.i = and i32 %conv.i, 8
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %cond27.i = select i1 %tobool22.not.i, i32 -1, i32 %__x10.sroa.0.0.insert.insert.i
  %conv31.i = and i32 %cond.i, 14
  %cmp44.i = icmp ugt i32 %conv31.i, 9
  br i1 %cmp44.i, label %for.end.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body
  %11 = tail call i32 @llvm.umin.i32(i32 %cond27.i, i32 39321) #18
  %12 = insertelement <4 x i32> poison, i32 %cond.i, i64 0
  %13 = insertelement <4 x i32> %12, i32 %11, i64 1
  %shuffle = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %shuffle.fr = freeze <4 x i32> %shuffle
  %14 = and <4 x i32> %shuffle.fr, <i32 224, i32 14, i32 224, i32 3584>
  %15 = icmp ugt <4 x i32> %14, <i32 144, i32 9, i32 144, i32 2304>
  %16 = and i32 %11, 3584
  %cmp48.2.i = icmp ugt i32 %16, 2304
  %cmp44.3.i = icmp ugt i32 %cond.i, 40959
  %17 = bitcast <4 x i1> %15 to i4
  %18 = icmp ne i4 %17, 0
  %op.rdx = select i1 %18, i1 true, i1 %cmp48.2.i
  %op.rdx28 = select i1 %op.rdx, i1 true, i1 %cmp44.3.i
  %spec.select279.i = select i1 %op.rdx28, i8 15, i8 9
  br label %for.end.i

for.end.i:                                        ; preds = %lor.lhs.false.i, %for.body
  %cmp.lcssa.i = phi i1 [ true, %for.body ], [ %op.rdx28, %lor.lhs.false.i ]
  %max.0.i = phi i8 [ 15, %for.body ], [ %spec.select279.i, %lor.lhs.false.i ]
  %conv52.i = zext i8 %9 to i32
  %conv54.i = zext i8 %10 to i32
  %__x4.sroa.0.0.insert.insert.i = or i32 %__x1.sroa.4.0.insert.shift.i, %__x1.sroa.0.0.insert.ext.i
  %__x1.sroa.0.0.insert.insert.i = or i32 %__x4.sroa.0.0.insert.insert.i, %__x4.sroa.0.0.insert.ext.i
  %or145.i = or i32 %__x1.sroa.0.0.insert.insert.i, %__x4.sroa.4.0.insert.shift.i
  %or53.i = or i32 %or145.i, %conv52.i
  %or55.i = or i32 %or53.i, %conv54.i
  %tobool56.not.i = icmp eq i32 %or55.i, 0
  %cmp60.not259.i = icmp ugt i32 %cond.i, %cond27.i
  %or.cond265.i = select i1 %tobool56.not.i, i1 true, i1 %cmp60.not259.i
  br i1 %or.cond265.i, label %do_usb_entry_multi.exit, label %for.body62.i

for.body62.i:                                     ; preds = %for.inc93.i, %for.end.i
  %ndigits.1262.i = phi i32 [ %dec.i, %for.inc93.i ], [ 3, %for.end.i ]
  %devhi.0261.i = phi i32 [ %devhi.1.i, %for.inc93.i ], [ %cond27.i, %for.end.i ]
  %devlo.0260.i = phi i32 [ %devlo.1.i, %for.inc93.i ], [ %cond.i, %for.end.i ]
  %19 = trunc i32 %devlo.0260.i to i8
  %conv64.i = and i8 %19, 15
  %20 = trunc i32 %devhi.0261.i to i8
  %conv66.i = and i8 %20, 15
  %21 = tail call i8 @llvm.umin.i8(i8 %conv66.i, i8 %max.0.i) #18
  %shr73.i = lshr i32 %devlo.0260.i, 4
  %shr74.i = lshr i32 %devhi.0261.i, 4
  %cmp75.i = icmp ne i32 %shr73.i, %shr74.i
  %tobool78.i = icmp ne i32 %ndigits.1262.i, 0
  %or.cond.i = select i1 %cmp75.i, i1 %tobool78.i, i1 false
  br i1 %or.cond.i, label %if.end80.i, label %if.then79.i

if.then79.i:                                      ; preds = %for.body62.i
  tail call fastcc void @do_usb_entry(ptr noundef %add.ptr, i32 noundef %shr73.i, i32 noundef %ndigits.1262.i, i8 noundef zeroext %conv64.i, i8 noundef zeroext %21, i8 noundef zeroext %max.0.i, ptr noundef %mod) #18
  br label %do_usb_entry_multi.exit

if.end80.i:                                       ; preds = %for.body62.i
  %cmp82.not.i = icmp eq i8 %conv64.i, 0
  br i1 %cmp82.not.i, label %if.end85.i, label %if.then84.i

if.then84.i:                                      ; preds = %if.end80.i
  br i1 %cmp.lcssa.i, label %if.then.i.i, label %for.end31.3.i.i

if.then.i.i:                                      ; preds = %if.then84.i
  %add.i.i = add nuw nsw i32 %shr73.i, 1
  br label %incbcd.exit.i

for.end31.3.i.i:                                  ; preds = %if.then84.i
  %and.i.i = and i32 %shr73.i, 15
  %22 = tail call i32 @llvm.umin.i32(i32 %and.i.i, i32 9) #18
  %shr.1.i.i = lshr i32 %devlo.0260.i, 8
  %and.1.i.i = and i32 %shr.1.i.i, 15
  %23 = tail call i32 @llvm.umin.i32(i32 %and.1.i.i, i32 9) #18
  %narrow.i.i = mul nuw nsw i32 %23, 10
  %shr.2.i.i = lshr i32 %devlo.0260.i, 12
  %and.2.i.i = and i32 %shr.2.i.i, 15
  %24 = tail call i32 @llvm.umin.i32(i32 %and.2.i.i, i32 9) #18
  %narrow19.i.i = mul nuw nsw i32 %24, 100
  %shr.3.i.i = lshr i32 %devlo.0260.i, 16
  %and.3.i.i = and i32 %shr.3.i.i, 15
  %25 = tail call i32 @llvm.umin.i32(i32 %and.3.i.i, i32 9) #18
  %narrow22.i.i = mul nuw nsw i32 %25, 1000
  %narrow23.i.i = add nuw nsw i32 %22, 1
  %narrow24.i.i = add nuw nsw i32 %narrow23.i.i, %narrow.i.i
  %narrow25.i.i = add nuw nsw i32 %narrow24.i.i, %narrow19.i.i
  %narrow.i = add nuw nsw i32 %narrow25.i.i, %narrow22.i.i
  %rem.i.lhs.trunc.i = trunc i32 %narrow.i to i16
  %rem.i246.i = urem i16 %rem.i.lhs.trunc.i, 10
  %div.1.i247.i = udiv i16 %rem.i.lhs.trunc.i, 10
  %rem.1.i248.i = urem i16 %div.1.i247.i, 10
  %26 = shl nuw nsw i16 %rem.1.i248.i, 4
  %conv36.1.i253.i = or i16 %26, %rem.i246.i
  %conv36.1.i.i = zext i16 %conv36.1.i253.i to i32
  %div.2.i249.i = udiv i16 %rem.i.lhs.trunc.i, 100
  %rem.2.i.lhs.trunc.i = trunc i16 %div.2.i249.i to i8
  %rem.2.i250.i = urem i8 %rem.2.i.lhs.trunc.i, 10
  %rem.2.tr.i.i = zext i8 %rem.2.i250.i to i32
  %27 = shl nuw nsw i32 %rem.2.tr.i.i, 8
  %conv36.2.i.i = or i32 %27, %conv36.1.i.i
  %div.3.i251.i = udiv i16 %rem.i.lhs.trunc.i, 1000
  %rem.3.i.lhs.trunc.i = trunc i16 %div.3.i251.i to i8
  %rem.3.i252.i = urem i8 %rem.3.i.lhs.trunc.i, 10
  %rem.3.tr.i.i = zext i8 %rem.3.i252.i to i32
  %28 = shl nuw nsw i32 %rem.3.tr.i.i, 12
  %conv36.3.i.i = or i32 %conv36.2.i.i, %28
  br label %incbcd.exit.i

incbcd.exit.i:                                    ; preds = %for.end31.3.i.i, %if.then.i.i
  %storemerge.i.i = phi i32 [ %conv36.3.i.i, %for.end31.3.i.i ], [ %add.i.i, %if.then.i.i ]
  tail call fastcc void @do_usb_entry(ptr noundef %add.ptr, i32 noundef %shr73.i, i32 noundef %ndigits.1262.i, i8 noundef zeroext %conv64.i, i8 noundef zeroext %max.0.i, i8 noundef zeroext %max.0.i, ptr noundef %mod) #18
  br label %if.end85.i

if.end85.i:                                       ; preds = %incbcd.exit.i, %if.end80.i
  %devlo.1.i = phi i32 [ %shr73.i, %if.end80.i ], [ %storemerge.i.i, %incbcd.exit.i ]
  %cmp88.i = icmp ugt i8 %max.0.i, %conv66.i
  br i1 %cmp88.i, label %if.then90.i, label %for.inc93.i

if.then90.i:                                      ; preds = %if.end85.i
  br i1 %cmp.lcssa.i, label %if.then.i208.i, label %for.end31.3.i237.i

if.then.i208.i:                                   ; preds = %if.then90.i
  %add.i207.i = add nsw i32 %shr74.i, -1
  br label %incbcd.exit239.i

for.end31.3.i237.i:                               ; preds = %if.then90.i
  %and.i209.i = and i32 %shr74.i, 15
  %29 = tail call i32 @llvm.umin.i32(i32 %and.i209.i, i32 9) #18
  %shr.1.i210.i = lshr i32 %devhi.0261.i, 8
  %and.1.i211.i = and i32 %shr.1.i210.i, 15
  %30 = tail call i32 @llvm.umin.i32(i32 %and.1.i211.i, i32 9) #18
  %narrow.i212.i = mul nuw nsw i32 %30, 10
  %narrow23.i213.i = add nuw nsw i32 %narrow.i212.i, %29
  %shr.2.i214.i = lshr i32 %devhi.0261.i, 12
  %and.2.i215.i = and i32 %shr.2.i214.i, 15
  %31 = tail call i32 @llvm.umin.i32(i32 %and.2.i215.i, i32 9) #18
  %narrow19.i216.i = mul nuw nsw i32 %31, 100
  %narrow24.i217.i = add nuw nsw i32 %narrow23.i213.i, %narrow19.i216.i
  %shr.3.i218.i = lshr i32 %devhi.0261.i, 16
  %and.3.i219.i = and i32 %shr.3.i218.i, 15
  %32 = tail call i32 @llvm.umin.i32(i32 %and.3.i219.i, i32 9) #18
  %narrow22.i220.i = mul nuw nsw i32 %32, 1000
  %narrow25.i221.i = add nuw nsw i32 %narrow24.i217.i, %narrow22.i220.i
  %add13.3.i222.i = zext i32 %narrow25.i221.i to i64
  %add18.i223.i = add nsw i64 %add13.3.i222.i, -1
  %rem.i224.i = urem i64 %add18.i223.i, 10
  %33 = trunc i64 %rem.i224.i to i32
  %div.1.i225.i = udiv i64 %add18.i223.i, 10
  %rem.1.i226.i = urem i64 %div.1.i225.i, 10
  %rem.1.tr.i227.i = trunc i64 %rem.1.i226.i to i32
  %34 = shl nuw nsw i32 %rem.1.tr.i227.i, 4
  %conv36.1.i228.i = or i32 %34, %33
  %div.2.i229.i = udiv i64 %add18.i223.i, 100
  %rem.2.i230.i = urem i64 %div.2.i229.i, 10
  %rem.2.tr.i231.i = trunc i64 %rem.2.i230.i to i32
  %35 = shl nuw nsw i32 %rem.2.tr.i231.i, 8
  %conv36.2.i232.i = or i32 %conv36.1.i228.i, %35
  %div.3.i233.i = udiv i64 %add18.i223.i, 1000
  %rem.3.i234.i = urem i64 %div.3.i233.i, 10
  %rem.3.tr.i235.i = trunc i64 %rem.3.i234.i to i32
  %36 = shl nuw nsw i32 %rem.3.tr.i235.i, 12
  %conv36.3.i236.i = or i32 %conv36.2.i232.i, %36
  br label %incbcd.exit239.i

incbcd.exit239.i:                                 ; preds = %for.end31.3.i237.i, %if.then.i208.i
  %storemerge.i238.i = phi i32 [ %conv36.3.i236.i, %for.end31.3.i237.i ], [ %add.i207.i, %if.then.i208.i ]
  tail call fastcc void @do_usb_entry(ptr noundef %add.ptr, i32 noundef %shr74.i, i32 noundef %ndigits.1262.i, i8 noundef zeroext 0, i8 noundef zeroext %21, i8 noundef zeroext %max.0.i, ptr noundef %mod) #18
  br label %for.inc93.i

for.inc93.i:                                      ; preds = %incbcd.exit239.i, %if.end85.i
  %devhi.1.i = phi i32 [ %storemerge.i238.i, %incbcd.exit239.i ], [ %shr74.i, %if.end85.i ]
  %dec.i = add nsw i32 %ndigits.1262.i, -1
  %cmp60.not.i = icmp ugt i32 %devlo.1.i, %devhi.1.i
  br i1 %cmp60.not.i, label %do_usb_entry_multi.exit, label %for.body62.i

do_usb_entry_multi.exit:                          ; preds = %for.inc93.i, %if.then79.i, %for.end.i
  %add = add nuw nsw i64 %conv15, 24
  %conv = and i64 %add, 4294967295
  %cmp = icmp ult i64 %conv, %sub
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %do_usb_entry_multi.exit, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_of_table(ptr noundef %symval, i64 noundef %size, ptr noundef %mod) unnamed_addr #0 {
entry:
  %alias.i = alloca [500 x i8], align 16
  %name = getelementptr inbounds %struct.module, ptr %mod, i64 0, i32 12
  tail call fastcc void @device_id_check(ptr noundef nonnull %name, ptr noundef nonnull @.str.4, i64 noundef %size, i64 noundef 196, ptr noundef %symval)
  %sub = add i64 %size, -196
  %cmp10.not = icmp eq i64 %sub, 0
  br i1 %cmp10.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %dev_table_buf.i = getelementptr inbounds %struct.module, ptr %mod, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %do_of_entry_multi.exit, %for.body.lr.ph
  %conv11 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %do_of_entry_multi.exit ]
  %add.ptr = getelementptr i8, ptr %symval, i64 %conv11
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %alias.i) #18
  %add.ptr1.i = getelementptr i8, ptr %add.ptr, i64 32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr, i64 64
  %0 = load i8, ptr %add.ptr, align 1, !tbaa !30
  %tobool.not.i = icmp eq i8 %0, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.15, ptr %add.ptr
  %1 = load i8, ptr %add.ptr1.i, align 1, !tbaa !30
  %tobool6.not.i = icmp eq i8 %1, 0
  %cond11.i = select i1 %tobool6.not.i, ptr @.str.15, ptr %add.ptr1.i
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %alias.i, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond11.i) #18
  %2 = load i8, ptr %add.ptr2.i, align 1, !tbaa !30
  %tobool13.not.i = icmp eq i8 %2, 0
  br i1 %tobool13.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %idxprom.i = sext i32 %call.i to i64
  %arrayidx14.i = getelementptr inbounds [500 x i8], ptr %alias.i, i64 0, i64 %idxprom.i
  %3 = load i8, ptr %add.ptr1.i, align 1, !tbaa !30
  %tobool17.not.i = icmp eq i8 %3, 0
  %cond18.i = select i1 %tobool17.not.i, ptr @.str.36, ptr @.str.15
  %call20.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx14.i, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond18.i, ptr noundef nonnull %add.ptr2.i) #18
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body
  %4 = load i8, ptr %alias.i, align 16, !tbaa !30
  %tobool24.not50.i = icmp eq i8 %4, 0
  br i1 %tobool24.not50.i, label %for.end.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %call25.i = tail call ptr @__ctype_b_loc() #19
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %5 = phi i8 [ %4, %for.body.lr.ph.i ], [ %9, %for.inc.i ]
  %tmp.051.i = phi ptr [ %alias.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i ]
  %6 = load ptr, ptr %call25.i, align 8, !tbaa !31
  %idxprom27.i = sext i8 %5 to i64
  %arrayidx28.i = getelementptr inbounds i16, ptr %6, i64 %idxprom27.i
  %7 = load i16, ptr %arrayidx28.i, align 2, !tbaa !32
  %8 = and i16 %7, 8192
  %tobool30.not.i = icmp eq i16 %8, 0
  br i1 %tobool30.not.i, label %for.inc.i, label %if.then31.i

if.then31.i:                                      ; preds = %for.body.i
  store i8 95, ptr %tmp.051.i, align 1, !tbaa !30
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then31.i, %for.body.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %tmp.051.i, i64 1
  %9 = load i8, ptr %incdec.ptr.i, align 1, !tbaa !30
  %tobool24.not.i = icmp eq i8 %9, 0
  br i1 %tobool24.not.i, label %for.end.i, label %for.body.i

for.end.i:                                        ; preds = %for.inc.i, %if.end.i
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %dev_table_buf.i, ptr noundef nonnull @.str.33, ptr noundef nonnull %alias.i) #18
  %strlen.i = call i64 @strlen(ptr nonnull %alias.i) #18
  %endptr.i = getelementptr i8, ptr %alias.i, i64 %strlen.i
  store i16 67, ptr %endptr.i, align 1
  %call.i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias.i) #16
  %sub.i.i = shl i64 %call.i.i, 32
  %sext.i.i = add i64 %sub.i.i, -4294967296
  %idxprom.i.i = ashr exact i64 %sext.i.i, 32
  %arrayidx.i.i = getelementptr inbounds i8, ptr %alias.i, i64 %idxprom.i.i
  %10 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !30
  %cmp.not.i.i = icmp eq i8 %10, 42
  br i1 %cmp.not.i.i, label %do_of_entry_multi.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end.i
  %idx.ext.i.i = ashr exact i64 %sub.i.i, 32
  %add.ptr.i.i = getelementptr inbounds i8, ptr %alias.i, i64 %idx.ext.i.i
  %strlen.i.i = call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i.i) #18
  %endptr.i.i = getelementptr i8, ptr %add.ptr.i.i, i64 %strlen.i.i
  store i16 42, ptr %endptr.i.i, align 1
  br label %do_of_entry_multi.exit

do_of_entry_multi.exit:                           ; preds = %if.then.i.i, %for.end.i
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %dev_table_buf.i, ptr noundef nonnull @.str.33, ptr noundef nonnull %alias.i) #18
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %alias.i) #18
  %add = add nuw nsw i64 %conv11, 196
  %conv = and i64 %add, 4294967295
  %cmp = icmp ult i64 %conv, %sub
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %do_of_entry_multi.exit, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_pnp_device_entry(ptr noundef %symval, i64 noundef %size, ptr noundef %mod) unnamed_addr #0 {
entry:
  %acpi_id = alloca [8 x i8], align 1
  %div = udiv i64 %size, 12
  %0 = trunc i64 %div to i32
  %conv = add i32 %0, -1
  %name = getelementptr inbounds %struct.module, ptr %mod, i64 0, i32 12
  tail call fastcc void @device_id_check(ptr noundef nonnull %name, ptr noundef nonnull @.str.5, i64 noundef %size, i64 noundef 12, ptr noundef %symval)
  %cmp32.not = icmp eq i32 %conv, 0
  br i1 %cmp32.not, label %for.end20, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %dev_table_buf = getelementptr inbounds %struct.module, ptr %mod, i64 0, i32 8
  %wide.trip.count = zext i32 %conv to i64
  %arrayidx15.1 = getelementptr inbounds [8 x i8], ptr %acpi_id, i64 0, i64 1
  %arrayidx15.2 = getelementptr inbounds [8 x i8], ptr %acpi_id, i64 0, i64 2
  %arrayidx15.3 = getelementptr inbounds [8 x i8], ptr %acpi_id, i64 0, i64 3
  %arrayidx15.4 = getelementptr inbounds [8 x i8], ptr %acpi_id, i64 0, i64 4
  %arrayidx15.5 = getelementptr inbounds [8 x i8], ptr %acpi_id, i64 0, i64 5
  %arrayidx15.6 = getelementptr inbounds [8 x i8], ptr %acpi_id, i64 0, i64 6
  %arrayidx15.7 = getelementptr inbounds [8 x i8], ptr %acpi_id, i64 0, i64 7
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %mul = mul nuw nsw i64 %indvars.iv, 12
  %add.ptr = getelementptr i8, ptr %symval, i64 %mul
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acpi_id) #18
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %dev_table_buf, ptr noundef nonnull @.str.38, ptr noundef %add.ptr) #18
  %call = tail call ptr @__ctype_toupper_loc() #19
  %1 = load ptr, ptr %call, align 8, !tbaa !31
  %2 = load i8, ptr %add.ptr, align 1, !tbaa !30
  %3 = zext i8 %2 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %1, i64 %3
  %4 = load i32, ptr %arrayidx12, align 4, !tbaa !16
  %conv13 = trunc i32 %4 to i8
  store i8 %conv13, ptr %acpi_id, align 1, !tbaa !30
  %5 = load ptr, ptr %call, align 8, !tbaa !31
  %arrayidx.1 = getelementptr inbounds [8 x i8], ptr %add.ptr, i64 0, i64 1
  %6 = load i8, ptr %arrayidx.1, align 1, !tbaa !30
  %7 = zext i8 %6 to i64
  %arrayidx12.1 = getelementptr inbounds i32, ptr %5, i64 %7
  %8 = load i32, ptr %arrayidx12.1, align 4, !tbaa !16
  %conv13.1 = trunc i32 %8 to i8
  store i8 %conv13.1, ptr %arrayidx15.1, align 1, !tbaa !30
  %9 = load ptr, ptr %call, align 8, !tbaa !31
  %arrayidx.2 = getelementptr inbounds [8 x i8], ptr %add.ptr, i64 0, i64 2
  %10 = load i8, ptr %arrayidx.2, align 1, !tbaa !30
  %11 = zext i8 %10 to i64
  %arrayidx12.2 = getelementptr inbounds i32, ptr %9, i64 %11
  %12 = load i32, ptr %arrayidx12.2, align 4, !tbaa !16
  %conv13.2 = trunc i32 %12 to i8
  store i8 %conv13.2, ptr %arrayidx15.2, align 1, !tbaa !30
  %13 = load ptr, ptr %call, align 8, !tbaa !31
  %arrayidx.3 = getelementptr inbounds [8 x i8], ptr %add.ptr, i64 0, i64 3
  %14 = load i8, ptr %arrayidx.3, align 1, !tbaa !30
  %15 = zext i8 %14 to i64
  %arrayidx12.3 = getelementptr inbounds i32, ptr %13, i64 %15
  %16 = load i32, ptr %arrayidx12.3, align 4, !tbaa !16
  %conv13.3 = trunc i32 %16 to i8
  store i8 %conv13.3, ptr %arrayidx15.3, align 1, !tbaa !30
  %17 = load ptr, ptr %call, align 8, !tbaa !31
  %arrayidx.4 = getelementptr inbounds [8 x i8], ptr %add.ptr, i64 0, i64 4
  %18 = load i8, ptr %arrayidx.4, align 1, !tbaa !30
  %19 = zext i8 %18 to i64
  %arrayidx12.4 = getelementptr inbounds i32, ptr %17, i64 %19
  %20 = load i32, ptr %arrayidx12.4, align 4, !tbaa !16
  %conv13.4 = trunc i32 %20 to i8
  store i8 %conv13.4, ptr %arrayidx15.4, align 1, !tbaa !30
  %21 = load ptr, ptr %call, align 8, !tbaa !31
  %arrayidx.5 = getelementptr inbounds [8 x i8], ptr %add.ptr, i64 0, i64 5
  %22 = load i8, ptr %arrayidx.5, align 1, !tbaa !30
  %23 = zext i8 %22 to i64
  %arrayidx12.5 = getelementptr inbounds i32, ptr %21, i64 %23
  %24 = load i32, ptr %arrayidx12.5, align 4, !tbaa !16
  %conv13.5 = trunc i32 %24 to i8
  store i8 %conv13.5, ptr %arrayidx15.5, align 1, !tbaa !30
  %25 = load ptr, ptr %call, align 8, !tbaa !31
  %arrayidx.6 = getelementptr inbounds [8 x i8], ptr %add.ptr, i64 0, i64 6
  %26 = load i8, ptr %arrayidx.6, align 1, !tbaa !30
  %27 = zext i8 %26 to i64
  %arrayidx12.6 = getelementptr inbounds i32, ptr %25, i64 %27
  %28 = load i32, ptr %arrayidx12.6, align 4, !tbaa !16
  %conv13.6 = trunc i32 %28 to i8
  store i8 %conv13.6, ptr %arrayidx15.6, align 1, !tbaa !30
  %29 = load ptr, ptr %call, align 8, !tbaa !31
  %arrayidx.7 = getelementptr inbounds [8 x i8], ptr %add.ptr, i64 0, i64 7
  %30 = load i8, ptr %arrayidx.7, align 1, !tbaa !30
  %31 = zext i8 %30 to i64
  %arrayidx12.7 = getelementptr inbounds i32, ptr %29, i64 %31
  %32 = load i32, ptr %arrayidx12.7, align 4, !tbaa !16
  %conv13.7 = trunc i32 %32 to i8
  store i8 %conv13.7, ptr %arrayidx15.7, align 1, !tbaa !30
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %dev_table_buf, ptr noundef nonnull @.str.39, ptr noundef nonnull %acpi_id) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acpi_id) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end20, label %for.body

for.end20:                                        ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_pnp_card_entries(ptr noundef %symval, i64 noundef %size, ptr noundef %mod) unnamed_addr #0 {
entry:
  %acpi_id = alloca [8 x i8], align 1
  %div = udiv i64 %size, 76
  %0 = trunc i64 %div to i32
  %conv = add i32 %0, -1
  %name = getelementptr inbounds %struct.module, ptr %mod, i64 0, i32 12
  tail call fastcc void @device_id_check(ptr noundef nonnull %name, ptr noundef nonnull @.str.5, i64 noundef %size, i64 noundef 76, ptr noundef %symval)
  %cmp106.not = icmp eq i32 %conv, 0
  br i1 %cmp106.not, label %for.end71, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %dev_table_buf = getelementptr inbounds %struct.module, ptr %mod, i64 0, i32 8
  %wide.trip.count = zext i32 %conv to i64
  %add.ptr = getelementptr i8, ptr %symval, i64 12
  %add.ptr18 = getelementptr i8, ptr %symval, i64 12
  %arrayidx53.1 = getelementptr inbounds [8 x i8], ptr %acpi_id, i64 0, i64 1
  %arrayidx53.2 = getelementptr inbounds [8 x i8], ptr %acpi_id, i64 0, i64 2
  %arrayidx53.3 = getelementptr inbounds [8 x i8], ptr %acpi_id, i64 0, i64 3
  %arrayidx53.4 = getelementptr inbounds [8 x i8], ptr %acpi_id, i64 0, i64 4
  %arrayidx53.5 = getelementptr inbounds [8 x i8], ptr %acpi_id, i64 0, i64 5
  %arrayidx53.6 = getelementptr inbounds [8 x i8], ptr %acpi_id, i64 0, i64 6
  %arrayidx53.7 = getelementptr inbounds [8 x i8], ptr %acpi_id, i64 0, i64 7
  br label %for.body

for.body:                                         ; preds = %for.end68, %for.body.lr.ph
  %indvars.iv114 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next115, %for.end68 ]
  %mul = mul nuw nsw i64 %indvars.iv114, 76
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i64 %mul
  %cmp12102.not = icmp eq i64 %indvars.iv114, 0
  br label %for.body7

for.body7:                                        ; preds = %for.inc66, %for.body
  %j.0105 = phi i32 [ 0, %for.body ], [ %inc67, %for.inc66 ]
  %idxprom = zext i32 %j.0105 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.anon], ptr %add.ptr3, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !30
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.end68, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.body7
  br i1 %cmp12102.not, label %if.then39, label %for.body15

for.body15:                                       ; preds = %for.end, %for.cond11.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end ], [ 0, %for.cond11.preheader ]
  %mul17 = mul nuw nsw i64 %indvars.iv, 76
  %add.ptr19 = getelementptr i8, ptr %add.ptr18, i64 %mul17
  %2 = load i8, ptr %add.ptr19, align 1, !tbaa !30
  %tobool29.not = icmp eq i8 %2, 0
  br i1 %tobool29.not, label %for.end, label %if.end31

for.cond20:                                       ; preds = %if.end31
  %arrayidx25.1 = getelementptr inbounds [8 x %struct.anon], ptr %add.ptr19, i64 0, i64 1
  %3 = load i8, ptr %arrayidx25.1, align 1, !tbaa !30
  %tobool29.not.1 = icmp eq i8 %3, 0
  br i1 %tobool29.not.1, label %for.end, label %if.end31.1

if.end31.1:                                       ; preds = %for.cond20
  %call.1 = call i32 @strcmp(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx25.1) #16
  %tobool32.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool32.not.1, label %for.inc66, label %for.cond20.1

for.cond20.1:                                     ; preds = %if.end31.1
  %arrayidx25.2 = getelementptr inbounds [8 x %struct.anon], ptr %add.ptr19, i64 0, i64 2
  %4 = load i8, ptr %arrayidx25.2, align 1, !tbaa !30
  %tobool29.not.2 = icmp eq i8 %4, 0
  br i1 %tobool29.not.2, label %for.end, label %if.end31.2

if.end31.2:                                       ; preds = %for.cond20.1
  %call.2 = call i32 @strcmp(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx25.2) #16
  %tobool32.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool32.not.2, label %for.inc66, label %for.cond20.2

for.cond20.2:                                     ; preds = %if.end31.2
  %arrayidx25.3 = getelementptr inbounds [8 x %struct.anon], ptr %add.ptr19, i64 0, i64 3
  %5 = load i8, ptr %arrayidx25.3, align 1, !tbaa !30
  %tobool29.not.3 = icmp eq i8 %5, 0
  br i1 %tobool29.not.3, label %for.end, label %if.end31.3

if.end31.3:                                       ; preds = %for.cond20.2
  %call.3 = call i32 @strcmp(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx25.3) #16
  %tobool32.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool32.not.3, label %for.inc66, label %for.cond20.3

for.cond20.3:                                     ; preds = %if.end31.3
  %arrayidx25.4 = getelementptr inbounds [8 x %struct.anon], ptr %add.ptr19, i64 0, i64 4
  %6 = load i8, ptr %arrayidx25.4, align 1, !tbaa !30
  %tobool29.not.4 = icmp eq i8 %6, 0
  br i1 %tobool29.not.4, label %for.end, label %if.end31.4

if.end31.4:                                       ; preds = %for.cond20.3
  %call.4 = call i32 @strcmp(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx25.4) #16
  %tobool32.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool32.not.4, label %for.inc66, label %for.cond20.4

for.cond20.4:                                     ; preds = %if.end31.4
  %arrayidx25.5 = getelementptr inbounds [8 x %struct.anon], ptr %add.ptr19, i64 0, i64 5
  %7 = load i8, ptr %arrayidx25.5, align 1, !tbaa !30
  %tobool29.not.5 = icmp eq i8 %7, 0
  br i1 %tobool29.not.5, label %for.end, label %if.end31.5

if.end31.5:                                       ; preds = %for.cond20.4
  %call.5 = call i32 @strcmp(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx25.5) #16
  %tobool32.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool32.not.5, label %for.inc66, label %for.cond20.5

for.cond20.5:                                     ; preds = %if.end31.5
  %arrayidx25.6 = getelementptr inbounds [8 x %struct.anon], ptr %add.ptr19, i64 0, i64 6
  %8 = load i8, ptr %arrayidx25.6, align 1, !tbaa !30
  %tobool29.not.6 = icmp eq i8 %8, 0
  br i1 %tobool29.not.6, label %for.end, label %if.end31.6

if.end31.6:                                       ; preds = %for.cond20.5
  %call.6 = call i32 @strcmp(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx25.6) #16
  %tobool32.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool32.not.6, label %for.inc66, label %for.cond20.6

for.cond20.6:                                     ; preds = %if.end31.6
  %arrayidx25.7 = getelementptr inbounds [8 x %struct.anon], ptr %add.ptr19, i64 0, i64 7
  %9 = load i8, ptr %arrayidx25.7, align 1, !tbaa !30
  %tobool29.not.7 = icmp eq i8 %9, 0
  br i1 %tobool29.not.7, label %for.end, label %if.end31.7

if.end31.7:                                       ; preds = %for.cond20.6
  %call.7 = call i32 @strcmp(ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx25.7) #16
  %tobool32.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool32.not.7, label %for.inc66, label %for.end

if.end31:                                         ; preds = %for.body15
  %call = call i32 @strcmp(ptr noundef nonnull %arrayidx, ptr noundef nonnull %add.ptr19) #16
  %tobool32.not = icmp eq i32 %call, 0
  br i1 %tobool32.not, label %for.inc66, label %for.cond20

for.end:                                          ; preds = %if.end31.7, %for.cond20.6, %for.cond20.5, %for.cond20.4, %for.cond20.3, %for.cond20.2, %for.cond20.1, %for.cond20, %for.body15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp12 = icmp ult i64 %indvars.iv.next, %indvars.iv114
  br i1 %cmp12, label %for.body15, label %if.then39

if.then39:                                        ; preds = %for.end, %for.cond11.preheader
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %acpi_id) #18
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %dev_table_buf, ptr noundef nonnull @.str.38, ptr noundef nonnull %arrayidx) #18
  %call45 = tail call ptr @__ctype_toupper_loc() #19
  %10 = load ptr, ptr %call45, align 8, !tbaa !31
  %11 = load i8, ptr %arrayidx, align 1, !tbaa !30
  %idxprom49 = sext i8 %11 to i64
  %arrayidx50 = getelementptr inbounds i32, ptr %10, i64 %idxprom49
  %12 = load i32, ptr %arrayidx50, align 4, !tbaa !16
  %conv51 = trunc i32 %12 to i8
  store i8 %conv51, ptr %acpi_id, align 1, !tbaa !30
  %13 = load ptr, ptr %call45, align 8, !tbaa !31
  %arrayidx47.1 = getelementptr inbounds i8, ptr %arrayidx, i64 1
  %14 = load i8, ptr %arrayidx47.1, align 1, !tbaa !30
  %idxprom49.1 = sext i8 %14 to i64
  %arrayidx50.1 = getelementptr inbounds i32, ptr %13, i64 %idxprom49.1
  %15 = load i32, ptr %arrayidx50.1, align 4, !tbaa !16
  %conv51.1 = trunc i32 %15 to i8
  store i8 %conv51.1, ptr %arrayidx53.1, align 1, !tbaa !30
  %16 = load ptr, ptr %call45, align 8, !tbaa !31
  %arrayidx47.2 = getelementptr inbounds i8, ptr %arrayidx, i64 2
  %17 = load i8, ptr %arrayidx47.2, align 1, !tbaa !30
  %idxprom49.2 = sext i8 %17 to i64
  %arrayidx50.2 = getelementptr inbounds i32, ptr %16, i64 %idxprom49.2
  %18 = load i32, ptr %arrayidx50.2, align 4, !tbaa !16
  %conv51.2 = trunc i32 %18 to i8
  store i8 %conv51.2, ptr %arrayidx53.2, align 1, !tbaa !30
  %19 = load ptr, ptr %call45, align 8, !tbaa !31
  %arrayidx47.3 = getelementptr inbounds i8, ptr %arrayidx, i64 3
  %20 = load i8, ptr %arrayidx47.3, align 1, !tbaa !30
  %idxprom49.3 = sext i8 %20 to i64
  %arrayidx50.3 = getelementptr inbounds i32, ptr %19, i64 %idxprom49.3
  %21 = load i32, ptr %arrayidx50.3, align 4, !tbaa !16
  %conv51.3 = trunc i32 %21 to i8
  store i8 %conv51.3, ptr %arrayidx53.3, align 1, !tbaa !30
  %22 = load ptr, ptr %call45, align 8, !tbaa !31
  %arrayidx47.4 = getelementptr inbounds i8, ptr %arrayidx, i64 4
  %23 = load i8, ptr %arrayidx47.4, align 1, !tbaa !30
  %idxprom49.4 = sext i8 %23 to i64
  %arrayidx50.4 = getelementptr inbounds i32, ptr %22, i64 %idxprom49.4
  %24 = load i32, ptr %arrayidx50.4, align 4, !tbaa !16
  %conv51.4 = trunc i32 %24 to i8
  store i8 %conv51.4, ptr %arrayidx53.4, align 1, !tbaa !30
  %25 = load ptr, ptr %call45, align 8, !tbaa !31
  %arrayidx47.5 = getelementptr inbounds i8, ptr %arrayidx, i64 5
  %26 = load i8, ptr %arrayidx47.5, align 1, !tbaa !30
  %idxprom49.5 = sext i8 %26 to i64
  %arrayidx50.5 = getelementptr inbounds i32, ptr %25, i64 %idxprom49.5
  %27 = load i32, ptr %arrayidx50.5, align 4, !tbaa !16
  %conv51.5 = trunc i32 %27 to i8
  store i8 %conv51.5, ptr %arrayidx53.5, align 1, !tbaa !30
  %28 = load ptr, ptr %call45, align 8, !tbaa !31
  %arrayidx47.6 = getelementptr inbounds i8, ptr %arrayidx, i64 6
  %29 = load i8, ptr %arrayidx47.6, align 1, !tbaa !30
  %idxprom49.6 = sext i8 %29 to i64
  %arrayidx50.6 = getelementptr inbounds i32, ptr %28, i64 %idxprom49.6
  %30 = load i32, ptr %arrayidx50.6, align 4, !tbaa !16
  %conv51.6 = trunc i32 %30 to i8
  store i8 %conv51.6, ptr %arrayidx53.6, align 1, !tbaa !30
  %31 = load ptr, ptr %call45, align 8, !tbaa !31
  %arrayidx47.7 = getelementptr inbounds i8, ptr %arrayidx, i64 7
  %32 = load i8, ptr %arrayidx47.7, align 1, !tbaa !30
  %idxprom49.7 = sext i8 %32 to i64
  %arrayidx50.7 = getelementptr inbounds i32, ptr %31, i64 %idxprom49.7
  %33 = load i32, ptr %arrayidx50.7, align 4, !tbaa !16
  %conv51.7 = trunc i32 %33 to i8
  store i8 %conv51.7, ptr %arrayidx53.7, align 1, !tbaa !30
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %dev_table_buf, ptr noundef nonnull @.str.39, ptr noundef nonnull %acpi_id) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %acpi_id) #18
  br label %for.inc66

for.inc66:                                        ; preds = %if.then39, %if.end31, %if.end31.7, %if.end31.6, %if.end31.5, %if.end31.4, %if.end31.3, %if.end31.2, %if.end31.1
  %inc67 = add nuw nsw i32 %j.0105, 1
  %exitcond.not = icmp eq i32 %inc67, 8
  br i1 %exitcond.not, label %for.end68, label %for.body7

for.end68:                                        ; preds = %for.inc66, %for.body7
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %exitcond117.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count
  br i1 %exitcond117.not, label %for.end71, label %for.body

for.end71:                                        ; preds = %for.end68, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_table(ptr noundef %symval, i64 noundef %size, i64 noundef %id_size, ptr noundef %device_id, ptr nocapture noundef readonly %do_entry, ptr noundef %mod) unnamed_addr #0 {
entry:
  %alias = alloca [500 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %alias) #18
  %name = getelementptr inbounds %struct.module, ptr %mod, i64 0, i32 12
  tail call fastcc void @device_id_check(ptr noundef nonnull %name, ptr noundef %device_id, i64 noundef %size, i64 noundef %id_size, ptr noundef %symval)
  %sub = sub i64 %size, %id_size
  %cmp17.not = icmp eq i64 %size, %id_size
  br i1 %cmp17.not, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %dev_table_buf = getelementptr inbounds %struct.module, ptr %mod, i64 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %conv18 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %for.inc ]
  %add.ptr = getelementptr i8, ptr %symval, i64 %conv18
  %call = call i32 %do_entry(ptr noundef nonnull %name, ptr noundef %add.ptr, ptr noundef nonnull %alias) #18
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %dev_table_buf, ptr noundef nonnull @.str.33, ptr noundef nonnull %alias) #18
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %add = add i64 %conv18, %id_size
  %conv = and i64 %add, 4294967295
  %cmp = icmp ult i64 %conv, %sub
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %alias) #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @add_moddevtable(ptr noundef %buf, ptr nocapture noundef readonly %mod) local_unnamed_addr #0 {
entry:
  tail call void (ptr, ptr, ...) @buf_printf(ptr noundef %buf, ptr noundef nonnull @.str.7) #18
  %dev_table_buf = getelementptr inbounds %struct.module, ptr %mod, i64 0, i32 8
  %0 = load ptr, ptr %dev_table_buf, align 8, !tbaa !33
  %pos = getelementptr inbounds %struct.module, ptr %mod, i64 0, i32 8, i32 1
  %1 = load i32, ptr %pos, align 8, !tbaa !35
  tail call void @buf_write(ptr noundef %buf, ptr noundef %0, i32 noundef %1) #18
  %2 = load ptr, ptr %dev_table_buf, align 8, !tbaa !33
  tail call void @free(ptr noundef %2) #18
  ret void
}

declare void @buf_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

declare void @buf_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @device_id_check(ptr noundef %modname, ptr noundef %device_id, i64 noundef %size, i64 noundef %id_size, ptr nocapture noundef readonly %symval) unnamed_addr #0 {
entry:
  %rem = urem i64 %size, %id_size
  %div = udiv i64 %size, %id_size
  %tobool.not = icmp ne i64 %rem, 0
  %cmp = icmp ult i64 %size, %id_size
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef %modname, ptr noundef %device_id, i64 noundef %id_size, ptr noundef %device_id, i64 noundef %size, ptr noundef %device_id) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp152.not = icmp eq i64 %id_size, 0
  br i1 %cmp152.not, label %for.end23, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %symval, i64 %size
  %idx.neg = sub i64 0, %id_size
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i64 %idx.neg
  %0 = trunc i64 %id_size to i32
  br label %for.body

for.body:                                         ; preds = %for.inc21, %for.body.lr.ph
  %conv54 = phi i64 [ 0, %for.body.lr.ph ], [ %conv, %for.inc21 ]
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc22, %for.inc21 ]
  %add.ptr4 = getelementptr i8, ptr %add.ptr3, i64 %conv54
  %1 = load i8, ptr %add.ptr4, align 1, !tbaa !30
  %tobool5.not = icmp eq i8 %1, 0
  br i1 %tobool5.not, label %for.inc21, label %if.then6

if.then6:                                         ; preds = %for.body
  %2 = load ptr, ptr @stderr, align 8, !tbaa !31
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.9, ptr noundef %modname, ptr noundef %device_id, i64 noundef %id_size, i64 noundef %div) #20
  br label %for.body11

for.body11:                                       ; preds = %for.body11, %if.then6
  %indvars.iv = phi i64 [ 0, %if.then6 ], [ %indvars.iv.next, %for.body11 ]
  %3 = load ptr, ptr @stderr, align 8, !tbaa !31
  %add.ptr16 = getelementptr i8, ptr %add.ptr3, i64 %indvars.iv
  %4 = load i8, ptr %add.ptr16, align 1, !tbaa !30
  %conv17 = zext i8 %4 to i32
  %call18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %conv17) #20
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %id_size
  br i1 %exitcond.not, label %for.cond7.for.end_crit_edge, label %for.body11

for.cond7.for.end_crit_edge:                      ; preds = %for.body11
  %5 = load ptr, ptr @stderr, align 8, !tbaa !31
  %fputc = tail call i32 @fputc(i32 10, ptr %5)
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.11, ptr noundef %modname, ptr noundef %device_id) #18
  br label %for.inc21

for.inc21:                                        ; preds = %for.cond7.for.end_crit_edge, %for.body
  %i.2 = phi i32 [ %0, %for.cond7.for.end_crit_edge ], [ %i.053, %for.body ]
  %inc22 = add nsw i32 %i.2, 1
  %conv = sext i32 %inc22 to i64
  %cmp1 = icmp ult i64 %conv, %id_size
  br i1 %cmp1, label %for.body, label %for.end23

for.end23:                                        ; preds = %for.inc21, %if.end
  ret void
}

declare void @modpost_log(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @do_usb_entry(ptr nocapture noundef readonly %symval, i32 noundef %bcdDevice_initial, i32 noundef %bcdDevice_initial_digits, i8 noundef zeroext %range_lo, i8 noundef zeroext %range_hi, i8 noundef zeroext %max, ptr noundef %mod) unnamed_addr #0 {
entry:
  %alias = alloca [500 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %alias) #18
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 1
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %1 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i32
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %add.ptr2 = getelementptr i8, ptr %symval, i64 2
  %arrayidx.i352 = getelementptr i8, ptr %symval, i64 3
  %2 = load i8, ptr %arrayidx.i352, align 1, !tbaa !30
  %3 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %add.ptr5 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i362 = getelementptr i8, ptr %symval, i64 5
  %4 = load i8, ptr %arrayidx.i362, align 1, !tbaa !30
  %5 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %__x4.sroa.4.0.insert.ext = zext i8 %5 to i32
  %__x4.sroa.4.0.insert.shift = shl nuw nsw i32 %__x4.sroa.4.0.insert.ext, 8
  %__x4.sroa.0.0.insert.ext = zext i8 %4 to i32
  %__x4.sroa.0.0.insert.insert = or i32 %__x4.sroa.4.0.insert.shift, %__x4.sroa.0.0.insert.ext
  %add.ptr11 = getelementptr i8, ptr %symval, i64 10
  %6 = load i8, ptr %add.ptr11, align 1, !tbaa !30
  %add.ptr14 = getelementptr i8, ptr %symval, i64 11
  %7 = load i8, ptr %add.ptr14, align 1, !tbaa !30
  %add.ptr17 = getelementptr i8, ptr %symval, i64 12
  %8 = load i8, ptr %add.ptr17, align 1, !tbaa !30
  %add.ptr20 = getelementptr i8, ptr %symval, i64 13
  %9 = load i8, ptr %add.ptr20, align 1, !tbaa !30
  %add.ptr23 = getelementptr i8, ptr %symval, i64 14
  %10 = load i8, ptr %add.ptr23, align 1, !tbaa !30
  %add.ptr26 = getelementptr i8, ptr %symval, i64 15
  %11 = load i8, ptr %add.ptr26, align 1, !tbaa !30
  %add.ptr29 = getelementptr i8, ptr %symval, i64 16
  %12 = load i8, ptr %add.ptr29, align 1, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %alias, ptr noundef nonnull align 1 dereferenceable(5) @.str.12, i64 5, i1 false) #18
  %strlen = call i64 @strlen(ptr nonnull %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 118, ptr %endptr, align 1
  %and = and i32 %__x.sroa.0.0.insert.ext, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %__x1.sroa.4.0.insert.ext = zext i8 %3 to i32
  %__x1.sroa.4.0.insert.shift = shl nuw nsw i32 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.0.0.insert.ext = zext i8 %2 to i32
  %__x1.sroa.0.0.insert.insert = or i32 %__x1.sroa.4.0.insert.shift, %__x1.sroa.0.0.insert.ext
  %call35 = call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr36 = getelementptr inbounds i8, ptr %alias, i64 %call35
  %call38 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr36, ptr noundef nonnull @.str.14, i32 noundef %__x1.sroa.0.0.insert.insert) #18
  br label %do.body44

if.else:                                          ; preds = %entry
  %call41 = call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr42 = getelementptr inbounds i8, ptr %alias, i64 %call41
  store i16 42, ptr %add.ptr42, align 1
  br label %do.body44

do.body44:                                        ; preds = %if.else, %if.then
  %strlen327 = call i64 @strlen(ptr nonnull %alias)
  %endptr328 = getelementptr i8, ptr %alias, i64 %strlen327
  store i16 112, ptr %endptr328, align 1
  %and48 = and i32 %__x.sroa.0.0.insert.ext, 2
  %tobool49.not = icmp eq i32 %and48, 0
  %call60 = call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr61 = getelementptr inbounds i8, ptr %alias, i64 %call60
  br i1 %tobool49.not, label %if.else57, label %if.then50

if.then50:                                        ; preds = %do.body44
  %call56 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr61, ptr noundef nonnull @.str.14, i32 noundef %__x4.sroa.0.0.insert.insert) #18
  br label %do.end65

if.else57:                                        ; preds = %do.body44
  store i16 42, ptr %add.ptr61, align 1
  br label %do.end65

do.end65:                                         ; preds = %if.else57, %if.then50
  %strlen329 = call i64 @strlen(ptr nonnull %alias)
  %endptr330 = getelementptr i8, ptr %alias, i64 %strlen329
  store i16 100, ptr %endptr330, align 1
  %tobool68.not = icmp eq i32 %bcdDevice_initial_digits, 0
  br i1 %tobool68.not, label %if.end75, label %if.then69

if.then69:                                        ; preds = %do.end65
  %call72 = call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr73 = getelementptr inbounds i8, ptr %alias, i64 %call72
  %call74 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr73, ptr noundef nonnull @.str.18, i32 noundef %bcdDevice_initial_digits, i32 noundef %bcdDevice_initial) #18
  br label %if.end75

if.end75:                                         ; preds = %if.then69, %do.end65
  %conv76 = zext i8 %range_lo to i32
  %conv77 = zext i8 %range_hi to i32
  %cmp = icmp eq i8 %range_lo, %range_hi
  br i1 %cmp, label %if.then79, label %if.else86

if.then79:                                        ; preds = %if.end75
  %call82 = call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr83 = getelementptr inbounds i8, ptr %alias, i64 %call82
  %call85 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr83, ptr noundef nonnull @.str.19, i32 noundef %conv76) #18
  br label %if.end132

if.else86:                                        ; preds = %if.end75
  %cmp88.not = icmp ne i8 %range_lo, 0
  %cmp92 = icmp ult i8 %range_hi, %max
  %or.cond347 = or i1 %cmp88.not, %cmp92
  br i1 %or.cond347, label %if.then94, label %if.end132

if.then94:                                        ; preds = %if.else86
  %cmp96 = icmp ugt i8 %range_lo, 9
  %cmp100 = icmp ult i8 %range_hi, 10
  %or.cond = or i1 %cmp96, %cmp100
  %call105 = call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr106 = getelementptr inbounds i8, ptr %alias, i64 %call105
  br i1 %or.cond, label %if.then102, label %if.else110

if.then102:                                       ; preds = %if.then94
  %call109 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr106, ptr noundef nonnull @.str.20, i32 noundef %conv76, i32 noundef %conv77) #18
  br label %if.end132

if.else110:                                       ; preds = %if.then94
  %cmp116 = icmp ult i8 %range_lo, 9
  %cond = select i1 %cmp116, ptr @.str.21, ptr @.str.22
  %call119 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr106, ptr noundef nonnull %cond, i32 noundef %conv76) #18
  %call122 = call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr123 = getelementptr inbounds i8, ptr %alias, i64 %call122
  %cmp125 = icmp ugt i8 %range_hi, 10
  %cond127 = select i1 %cmp125, ptr @.str.23, ptr @.str.24
  %call129 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr123, ptr noundef nonnull %cond127, i32 noundef %conv77) #18
  br label %if.end132

if.end132:                                        ; preds = %if.else110, %if.then102, %if.else86, %if.then79
  %cmp134 = icmp ult i32 %bcdDevice_initial_digits, 3
  br i1 %cmp134, label %if.then136, label %do.body140

if.then136:                                       ; preds = %if.end132
  %strlen345 = call i64 @strlen(ptr nonnull %alias)
  %endptr346 = getelementptr i8, ptr %alias, i64 %strlen345
  store i16 42, ptr %endptr346, align 1
  br label %do.body140

do.body140:                                       ; preds = %if.then136, %if.end132
  %strlen331 = call i64 @strlen(ptr nonnull %alias)
  %endptr332 = getelementptr i8, ptr %alias, i64 %strlen331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr332, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, i64 3, i1 false)
  %and144 = and i32 %__x.sroa.0.0.insert.ext, 16
  %tobool145.not = icmp eq i32 %and144, 0
  %call156 = call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr157 = getelementptr inbounds i8, ptr %alias, i64 %call156
  br i1 %tobool145.not, label %if.else153, label %if.then146

if.then146:                                       ; preds = %do.body140
  %conv151 = zext i8 %6 to i32
  %call152 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr157, ptr noundef nonnull @.str.26, i32 noundef %conv151) #18
  br label %do.body162

if.else153:                                       ; preds = %do.body140
  store i16 42, ptr %add.ptr157, align 1
  br label %do.body162

do.body162:                                       ; preds = %if.else153, %if.then146
  %strlen333 = call i64 @strlen(ptr nonnull %alias)
  %endptr334 = getelementptr i8, ptr %alias, i64 %strlen333
  store i32 6517604, ptr %endptr334, align 1
  %and166 = and i32 %__x.sroa.0.0.insert.ext, 32
  %tobool167.not = icmp eq i32 %and166, 0
  %call178 = call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr179 = getelementptr inbounds i8, ptr %alias, i64 %call178
  br i1 %tobool167.not, label %if.else175, label %if.then168

if.then168:                                       ; preds = %do.body162
  %conv173 = zext i8 %7 to i32
  %call174 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr179, ptr noundef nonnull @.str.26, i32 noundef %conv173) #18
  br label %do.body184

if.else175:                                       ; preds = %do.body162
  store i16 42, ptr %add.ptr179, align 1
  br label %do.body184

do.body184:                                       ; preds = %if.else175, %if.then168
  %strlen335 = call i64 @strlen(ptr nonnull %alias)
  %endptr336 = getelementptr i8, ptr %alias, i64 %strlen335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr336, ptr noundef nonnull align 1 dereferenceable(3) @.str.28, i64 3, i1 false)
  %and188 = and i32 %__x.sroa.0.0.insert.ext, 64
  %tobool189.not = icmp eq i32 %and188, 0
  %call200 = call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr201 = getelementptr inbounds i8, ptr %alias, i64 %call200
  br i1 %tobool189.not, label %if.else197, label %if.then190

if.then190:                                       ; preds = %do.body184
  %conv195 = zext i8 %8 to i32
  %call196 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr201, ptr noundef nonnull @.str.26, i32 noundef %conv195) #18
  br label %do.body206

if.else197:                                       ; preds = %do.body184
  store i16 42, ptr %add.ptr201, align 1
  br label %do.body206

do.body206:                                       ; preds = %if.else197, %if.then190
  %strlen337 = call i64 @strlen(ptr nonnull %alias)
  %endptr338 = getelementptr i8, ptr %alias, i64 %strlen337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr338, ptr noundef nonnull align 1 dereferenceable(3) @.str.29, i64 3, i1 false)
  %and210 = and i32 %__x.sroa.0.0.insert.ext, 128
  %tobool211.not = icmp eq i32 %and210, 0
  %call222 = call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr223 = getelementptr inbounds i8, ptr %alias, i64 %call222
  br i1 %tobool211.not, label %if.else219, label %if.then212

if.then212:                                       ; preds = %do.body206
  %conv217 = zext i8 %9 to i32
  %call218 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr223, ptr noundef nonnull @.str.26, i32 noundef %conv217) #18
  br label %do.body228

if.else219:                                       ; preds = %do.body206
  store i16 42, ptr %add.ptr223, align 1
  br label %do.body228

do.body228:                                       ; preds = %if.else219, %if.then212
  %strlen339 = call i64 @strlen(ptr nonnull %alias)
  %endptr340 = getelementptr i8, ptr %alias, i64 %strlen339
  store i32 6517609, ptr %endptr340, align 1
  %13 = and i32 %__x.sroa.4.0.insert.ext, 1
  %tobool233.not = icmp eq i32 %13, 0
  %call244 = call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr245 = getelementptr inbounds i8, ptr %alias, i64 %call244
  br i1 %tobool233.not, label %if.else241, label %if.then234

if.then234:                                       ; preds = %do.body228
  %conv239 = zext i8 %10 to i32
  %call240 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr245, ptr noundef nonnull @.str.26, i32 noundef %conv239) #18
  br label %do.body250

if.else241:                                       ; preds = %do.body228
  store i16 42, ptr %add.ptr245, align 1
  br label %do.body250

do.body250:                                       ; preds = %if.else241, %if.then234
  %strlen341 = call i64 @strlen(ptr nonnull %alias)
  %endptr342 = getelementptr i8, ptr %alias, i64 %strlen341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr342, ptr noundef nonnull align 1 dereferenceable(3) @.str.31, i64 3, i1 false)
  %14 = and i32 %__x.sroa.4.0.insert.ext, 2
  %tobool255.not = icmp eq i32 %14, 0
  %call266 = call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr267 = getelementptr inbounds i8, ptr %alias, i64 %call266
  br i1 %tobool255.not, label %if.else263, label %if.then256

if.then256:                                       ; preds = %do.body250
  %conv261 = zext i8 %11 to i32
  %call262 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr267, ptr noundef nonnull @.str.26, i32 noundef %conv261) #18
  br label %do.body272

if.else263:                                       ; preds = %do.body250
  store i16 42, ptr %add.ptr267, align 1
  br label %do.body272

do.body272:                                       ; preds = %if.else263, %if.then256
  %strlen343 = call i64 @strlen(ptr nonnull %alias)
  %endptr344 = getelementptr i8, ptr %alias, i64 %strlen343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr344, ptr noundef nonnull align 1 dereferenceable(3) @.str.32, i64 3, i1 false)
  %15 = and i32 %__x.sroa.4.0.insert.ext, 4
  %tobool277.not = icmp eq i32 %15, 0
  %call288 = call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr289 = getelementptr inbounds i8, ptr %alias, i64 %call288
  br i1 %tobool277.not, label %if.else285, label %if.then278

if.then278:                                       ; preds = %do.body272
  %conv283 = zext i8 %12 to i32
  %call284 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr289, ptr noundef nonnull @.str.26, i32 noundef %conv283) #18
  br label %do.end293

if.else285:                                       ; preds = %do.body272
  store i16 42, ptr %add.ptr289, align 1
  br label %do.end293

do.end293:                                        ; preds = %if.else285, %if.then278
  %call.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i448 = ashr exact i64 %sext.i, 32
  %arrayidx.i449 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i448
  %16 = load i8, ptr %arrayidx.i449, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %16, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end293
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %do.end293
  %dev_table_buf = getelementptr inbounds %struct.module, ptr %mod, i64 0, i32 8
  call void (ptr, ptr, ...) @buf_printf(ptr noundef nonnull %dev_table_buf, ptr noundef nonnull @.str.33, ptr noundef nonnull %alias) #18
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %alias) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_toupper_loc() local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_hid_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 1
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %1 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i16
  %__x.sroa.4.0.insert.shift = shl nuw i16 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i16
  %__x.sroa.0.0.insert.insert = or i16 %__x.sroa.4.0.insert.shift, %__x.sroa.0.0.insert.ext
  %add.ptr2 = getelementptr i8, ptr %symval, i64 2
  %arrayidx.i104 = getelementptr i8, ptr %symval, i64 3
  %2 = load i8, ptr %arrayidx.i104, align 1, !tbaa !30
  %3 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %__x1.sroa.4.0.insert.ext = zext i8 %3 to i16
  %__x1.sroa.4.0.insert.shift = shl nuw i16 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.0.0.insert.ext = zext i8 %2 to i16
  %__x1.sroa.0.0.insert.insert = or i16 %__x1.sroa.4.0.insert.shift, %__x1.sroa.0.0.insert.ext
  %add.ptr5 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i114 = getelementptr i8, ptr %symval, i64 7
  %4 = load i8, ptr %arrayidx.i114, align 1, !tbaa !30
  %arrayidx.i114.1 = getelementptr i8, ptr %symval, i64 6
  %5 = load i8, ptr %arrayidx.i114.1, align 1, !tbaa !30
  %arrayidx.i114.2 = getelementptr i8, ptr %symval, i64 5
  %6 = load i8, ptr %arrayidx.i114.2, align 1, !tbaa !30
  %7 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %__x4.sroa.6.0.insert.ext = zext i8 %7 to i32
  %__x4.sroa.6.0.insert.shift = shl nuw i32 %__x4.sroa.6.0.insert.ext, 24
  %__x4.sroa.5.0.insert.ext = zext i8 %6 to i32
  %__x4.sroa.5.0.insert.shift = shl nuw nsw i32 %__x4.sroa.5.0.insert.ext, 16
  %__x4.sroa.5.0.insert.insert = or i32 %__x4.sroa.6.0.insert.shift, %__x4.sroa.5.0.insert.shift
  %__x4.sroa.4.0.insert.ext = zext i8 %5 to i32
  %__x4.sroa.4.0.insert.shift = shl nuw nsw i32 %__x4.sroa.4.0.insert.ext, 8
  %__x4.sroa.4.0.insert.insert = or i32 %__x4.sroa.5.0.insert.insert, %__x4.sroa.4.0.insert.shift
  %__x4.sroa.0.0.insert.ext = zext i8 %4 to i32
  %__x4.sroa.0.0.insert.insert = or i32 %__x4.sroa.4.0.insert.insert, %__x4.sroa.0.0.insert.ext
  %add.ptr8 = getelementptr i8, ptr %symval, i64 8
  %arrayidx.i124 = getelementptr i8, ptr %symval, i64 11
  %8 = load i8, ptr %arrayidx.i124, align 1, !tbaa !30
  %arrayidx.i124.1 = getelementptr i8, ptr %symval, i64 10
  %9 = load i8, ptr %arrayidx.i124.1, align 1, !tbaa !30
  %arrayidx.i124.2 = getelementptr i8, ptr %symval, i64 9
  %10 = load i8, ptr %arrayidx.i124.2, align 1, !tbaa !30
  %11 = load i8, ptr %add.ptr8, align 1, !tbaa !30
  %__x7.sroa.6.0.insert.ext = zext i8 %11 to i32
  %__x7.sroa.6.0.insert.shift = shl nuw i32 %__x7.sroa.6.0.insert.ext, 24
  %__x7.sroa.5.0.insert.ext = zext i8 %10 to i32
  %__x7.sroa.5.0.insert.shift = shl nuw nsw i32 %__x7.sroa.5.0.insert.ext, 16
  %__x7.sroa.5.0.insert.insert = or i32 %__x7.sroa.6.0.insert.shift, %__x7.sroa.5.0.insert.shift
  %__x7.sroa.4.0.insert.ext = zext i8 %9 to i32
  %__x7.sroa.4.0.insert.shift = shl nuw nsw i32 %__x7.sroa.4.0.insert.ext, 8
  %__x7.sroa.4.0.insert.insert = or i32 %__x7.sroa.5.0.insert.insert, %__x7.sroa.4.0.insert.shift
  %__x7.sroa.0.0.insert.ext = zext i8 %8 to i32
  %__x7.sroa.0.0.insert.insert = or i32 %__x7.sroa.4.0.insert.insert, %__x7.sroa.0.0.insert.ext
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %alias, ptr noundef nonnull align 1 dereferenceable(5) @.str.87, i64 5, i1 false)
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 98, ptr %endptr, align 1
  %cmp.not = icmp eq i16 %__x.sroa.0.0.insert.insert, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i16 %__x.sroa.0.0.insert.insert to i32
  %call12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr13 = getelementptr inbounds i8, ptr %alias, i64 %call12
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr13, ptr noundef nonnull @.str.14, i32 noundef %conv) #18
  br label %do.body19

if.else:                                          ; preds = %entry
  %call16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr17 = getelementptr inbounds i8, ptr %alias, i64 %call16
  store i16 42, ptr %add.ptr17, align 1
  br label %do.body19

do.body19:                                        ; preds = %if.else, %if.then
  %strlen94 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr95 = getelementptr i8, ptr %alias, i64 %strlen94
  store i16 103, ptr %endptr95, align 1
  %cmp22.not = icmp eq i16 %__x1.sroa.0.0.insert.insert, 0
  br i1 %cmp22.not, label %if.else29, label %if.then24

if.then24:                                        ; preds = %do.body19
  %conv21 = zext i16 %__x1.sroa.0.0.insert.insert to i32
  %call25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr26 = getelementptr inbounds i8, ptr %alias, i64 %call25
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr26, ptr noundef nonnull @.str.14, i32 noundef %conv21) #18
  br label %do.body36

if.else29:                                        ; preds = %do.body19
  %call30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr31 = getelementptr inbounds i8, ptr %alias, i64 %call30
  store i16 42, ptr %add.ptr31, align 1
  br label %do.body36

do.body36:                                        ; preds = %if.else29, %if.then24
  %strlen96 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr97 = getelementptr i8, ptr %alias, i64 %strlen96
  store i16 118, ptr %endptr97, align 1
  %cmp38.not = icmp eq i32 %__x4.sroa.0.0.insert.insert, -1
  %call45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr46 = getelementptr inbounds i8, ptr %alias, i64 %call45
  br i1 %cmp38.not, label %if.else44, label %if.then40

if.then40:                                        ; preds = %do.body36
  %call43 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr46, ptr noundef nonnull @.str.90, i32 noundef %__x4.sroa.0.0.insert.insert) #18
  br label %do.body51

if.else44:                                        ; preds = %do.body36
  store i16 42, ptr %add.ptr46, align 1
  br label %do.body51

do.body51:                                        ; preds = %if.else44, %if.then40
  %strlen98 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr99 = getelementptr i8, ptr %alias, i64 %strlen98
  store i16 112, ptr %endptr99, align 1
  %cmp53.not = icmp eq i32 %__x7.sroa.0.0.insert.insert, -1
  %call60 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr61 = getelementptr inbounds i8, ptr %alias, i64 %call60
  br i1 %cmp53.not, label %if.else59, label %if.then55

if.then55:                                        ; preds = %do.body51
  %call58 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr61, ptr noundef nonnull @.str.90, i32 noundef %__x7.sroa.0.0.insert.insert) #18
  br label %do.end65

if.else59:                                        ; preds = %do.body51
  store i16 42, ptr %add.ptr61, align 1
  br label %do.end65

do.end65:                                         ; preds = %if.else59, %if.then55
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_ieee1394_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 3
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %add.ptr2 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i103 = getelementptr i8, ptr %symval, i64 7
  %1 = load i8, ptr %arrayidx.i103, align 1, !tbaa !30
  %arrayidx.i103.1 = getelementptr i8, ptr %symval, i64 6
  %2 = load i8, ptr %arrayidx.i103.1, align 1, !tbaa !30
  %arrayidx.i103.2 = getelementptr i8, ptr %symval, i64 5
  %3 = load i8, ptr %arrayidx.i103.2, align 1, !tbaa !30
  %4 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %add.ptr5 = getelementptr i8, ptr %symval, i64 8
  %arrayidx.i113 = getelementptr i8, ptr %symval, i64 11
  %5 = load i8, ptr %arrayidx.i113, align 1, !tbaa !30
  %arrayidx.i113.1 = getelementptr i8, ptr %symval, i64 10
  %6 = load i8, ptr %arrayidx.i113.1, align 1, !tbaa !30
  %arrayidx.i113.2 = getelementptr i8, ptr %symval, i64 9
  %7 = load i8, ptr %arrayidx.i113.2, align 1, !tbaa !30
  %8 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %__x4.sroa.6.0.insert.ext = zext i8 %8 to i32
  %__x4.sroa.6.0.insert.shift = shl nuw i32 %__x4.sroa.6.0.insert.ext, 24
  %__x4.sroa.5.0.insert.ext = zext i8 %7 to i32
  %__x4.sroa.5.0.insert.shift = shl nuw nsw i32 %__x4.sroa.5.0.insert.ext, 16
  %__x4.sroa.5.0.insert.insert = or i32 %__x4.sroa.6.0.insert.shift, %__x4.sroa.5.0.insert.shift
  %__x4.sroa.4.0.insert.ext = zext i8 %6 to i32
  %__x4.sroa.4.0.insert.shift = shl nuw nsw i32 %__x4.sroa.4.0.insert.ext, 8
  %__x4.sroa.4.0.insert.insert = or i32 %__x4.sroa.5.0.insert.insert, %__x4.sroa.4.0.insert.shift
  %__x4.sroa.0.0.insert.ext = zext i8 %5 to i32
  %__x4.sroa.0.0.insert.insert = or i32 %__x4.sroa.4.0.insert.insert, %__x4.sroa.0.0.insert.ext
  %add.ptr8 = getelementptr i8, ptr %symval, i64 12
  %arrayidx.i123 = getelementptr i8, ptr %symval, i64 15
  %9 = load i8, ptr %arrayidx.i123, align 1, !tbaa !30
  %arrayidx.i123.1 = getelementptr i8, ptr %symval, i64 14
  %10 = load i8, ptr %arrayidx.i123.1, align 1, !tbaa !30
  %arrayidx.i123.2 = getelementptr i8, ptr %symval, i64 13
  %11 = load i8, ptr %arrayidx.i123.2, align 1, !tbaa !30
  %12 = load i8, ptr %add.ptr8, align 1, !tbaa !30
  %__x7.sroa.6.0.insert.ext = zext i8 %12 to i32
  %__x7.sroa.6.0.insert.shift = shl nuw i32 %__x7.sroa.6.0.insert.ext, 24
  %__x7.sroa.5.0.insert.ext = zext i8 %11 to i32
  %__x7.sroa.5.0.insert.shift = shl nuw nsw i32 %__x7.sroa.5.0.insert.ext, 16
  %__x7.sroa.5.0.insert.insert = or i32 %__x7.sroa.6.0.insert.shift, %__x7.sroa.5.0.insert.shift
  %__x7.sroa.4.0.insert.ext = zext i8 %10 to i32
  %__x7.sroa.4.0.insert.shift = shl nuw nsw i32 %__x7.sroa.4.0.insert.ext, 8
  %__x7.sroa.4.0.insert.insert = or i32 %__x7.sroa.5.0.insert.insert, %__x7.sroa.4.0.insert.shift
  %__x7.sroa.0.0.insert.ext = zext i8 %9 to i32
  %__x7.sroa.0.0.insert.insert = or i32 %__x7.sroa.4.0.insert.insert, %__x7.sroa.0.0.insert.ext
  %add.ptr11 = getelementptr i8, ptr %symval, i64 16
  %arrayidx.i133 = getelementptr i8, ptr %symval, i64 19
  %13 = load i8, ptr %arrayidx.i133, align 1, !tbaa !30
  %arrayidx.i133.1 = getelementptr i8, ptr %symval, i64 18
  %14 = load i8, ptr %arrayidx.i133.1, align 1, !tbaa !30
  %arrayidx.i133.2 = getelementptr i8, ptr %symval, i64 17
  %15 = load i8, ptr %arrayidx.i133.2, align 1, !tbaa !30
  %16 = load i8, ptr %add.ptr11, align 1, !tbaa !30
  %__x10.sroa.6.0.insert.ext = zext i8 %16 to i32
  %__x10.sroa.6.0.insert.shift = shl nuw i32 %__x10.sroa.6.0.insert.ext, 24
  %__x10.sroa.5.0.insert.ext = zext i8 %15 to i32
  %__x10.sroa.5.0.insert.shift = shl nuw nsw i32 %__x10.sroa.5.0.insert.ext, 16
  %__x10.sroa.5.0.insert.insert = or i32 %__x10.sroa.6.0.insert.shift, %__x10.sroa.5.0.insert.shift
  %__x10.sroa.4.0.insert.ext = zext i8 %14 to i32
  %__x10.sroa.4.0.insert.shift = shl nuw nsw i32 %__x10.sroa.4.0.insert.ext, 8
  %__x10.sroa.4.0.insert.insert = or i32 %__x10.sroa.5.0.insert.insert, %__x10.sroa.4.0.insert.shift
  %__x10.sroa.0.0.insert.ext = zext i8 %13 to i32
  %__x10.sroa.0.0.insert.insert = or i32 %__x10.sroa.4.0.insert.insert, %__x10.sroa.0.0.insert.ext
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %alias, ptr noundef nonnull align 1 dereferenceable(10) @.str.91, i64 10, i1 false) #18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i32 7234934, ptr %endptr, align 1
  %and = and i32 %__x.sroa.0.0.insert.ext, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %__x1.sroa.6.0.insert.ext = zext i8 %4 to i32
  %__x1.sroa.6.0.insert.shift = shl nuw i32 %__x1.sroa.6.0.insert.ext, 24
  %__x1.sroa.5.0.insert.ext = zext i8 %3 to i32
  %__x1.sroa.5.0.insert.shift = shl nuw nsw i32 %__x1.sroa.5.0.insert.ext, 16
  %__x1.sroa.5.0.insert.insert = or i32 %__x1.sroa.6.0.insert.shift, %__x1.sroa.5.0.insert.shift
  %__x1.sroa.4.0.insert.ext = zext i8 %2 to i32
  %__x1.sroa.4.0.insert.shift = shl nuw nsw i32 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.4.0.insert.insert = or i32 %__x1.sroa.5.0.insert.insert, %__x1.sroa.4.0.insert.shift
  %__x1.sroa.0.0.insert.ext = zext i8 %1 to i32
  %__x1.sroa.0.0.insert.insert = or i32 %__x1.sroa.4.0.insert.insert, %__x1.sroa.0.0.insert.ext
  %call14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr15 = getelementptr inbounds i8, ptr %alias, i64 %call14
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr15, ptr noundef nonnull @.str.90, i32 noundef %__x1.sroa.0.0.insert.insert) #18
  br label %do.body20

if.else:                                          ; preds = %entry
  %call17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr18 = getelementptr inbounds i8, ptr %alias, i64 %call17
  store i16 42, ptr %add.ptr18, align 1
  br label %do.body20

do.body20:                                        ; preds = %if.else, %if.then
  %strlen93 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr94 = getelementptr i8, ptr %alias, i64 %strlen93
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr94, ptr noundef nonnull align 1 dereferenceable(3) @.str.93, i64 3, i1 false)
  %and22 = and i32 %__x.sroa.0.0.insert.ext, 2
  %tobool23.not = icmp eq i32 %and22, 0
  %call29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr30 = getelementptr inbounds i8, ptr %alias, i64 %call29
  br i1 %tobool23.not, label %if.else28, label %if.then24

if.then24:                                        ; preds = %do.body20
  %call27 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr30, ptr noundef nonnull @.str.90, i32 noundef %__x4.sroa.0.0.insert.insert) #18
  br label %do.body35

if.else28:                                        ; preds = %do.body20
  store i16 42, ptr %add.ptr30, align 1
  br label %do.body35

do.body35:                                        ; preds = %if.else28, %if.then24
  %strlen95 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr96 = getelementptr i8, ptr %alias, i64 %strlen95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr96, ptr noundef nonnull align 1 dereferenceable(3) @.str.94, i64 3, i1 false)
  %and37 = and i32 %__x.sroa.0.0.insert.ext, 4
  %tobool38.not = icmp eq i32 %and37, 0
  %call44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr45 = getelementptr inbounds i8, ptr %alias, i64 %call44
  br i1 %tobool38.not, label %if.else43, label %if.then39

if.then39:                                        ; preds = %do.body35
  %call42 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr45, ptr noundef nonnull @.str.90, i32 noundef %__x7.sroa.0.0.insert.insert) #18
  br label %do.body50

if.else43:                                        ; preds = %do.body35
  store i16 42, ptr %add.ptr45, align 1
  br label %do.body50

do.body50:                                        ; preds = %if.else43, %if.then39
  %strlen97 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr98 = getelementptr i8, ptr %alias, i64 %strlen97
  store i32 7497078, ptr %endptr98, align 1
  %and52 = and i32 %__x.sroa.0.0.insert.ext, 8
  %tobool53.not = icmp eq i32 %and52, 0
  %call59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr60 = getelementptr inbounds i8, ptr %alias, i64 %call59
  br i1 %tobool53.not, label %if.else58, label %if.then54

if.then54:                                        ; preds = %do.body50
  %call57 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr60, ptr noundef nonnull @.str.90, i32 noundef %__x10.sroa.0.0.insert.insert) #18
  br label %do.end64

if.else58:                                        ; preds = %do.body50
  store i16 42, ptr %add.ptr60, align 1
  br label %do.end64

do.end64:                                         ; preds = %if.else58, %if.then54
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i139 = ashr exact i64 %sext.i, 32
  %arrayidx.i140 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i139
  %17 = load i8, ptr %arrayidx.i140, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %17, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end64
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %do.end64
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @do_pci_entry(ptr noundef %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #0 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 3
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %symval, i64 2
  %1 = load i8, ptr %arrayidx.i.1, align 1, !tbaa !30
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %symval, i64 1
  %2 = load i8, ptr %arrayidx.i.2, align 1, !tbaa !30
  %3 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext = zext i8 %3 to i32
  %__x.sroa.6.0.insert.shift = shl nuw i32 %__x.sroa.6.0.insert.ext, 24
  %__x.sroa.5.0.insert.ext = zext i8 %2 to i32
  %__x.sroa.5.0.insert.shift = shl nuw nsw i32 %__x.sroa.5.0.insert.ext, 16
  %__x.sroa.5.0.insert.insert = or i32 %__x.sroa.6.0.insert.shift, %__x.sroa.5.0.insert.shift
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i32
  %__x.sroa.4.0.insert.shift = shl nuw nsw i32 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.4.0.insert.insert = or i32 %__x.sroa.5.0.insert.insert, %__x.sroa.4.0.insert.shift
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %__x.sroa.0.0.insert.insert = or i32 %__x.sroa.4.0.insert.insert, %__x.sroa.0.0.insert.ext
  %add.ptr2 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i244 = getelementptr i8, ptr %symval, i64 7
  %4 = load i8, ptr %arrayidx.i244, align 1, !tbaa !30
  %arrayidx.i244.1 = getelementptr i8, ptr %symval, i64 6
  %5 = load i8, ptr %arrayidx.i244.1, align 1, !tbaa !30
  %arrayidx.i244.2 = getelementptr i8, ptr %symval, i64 5
  %6 = load i8, ptr %arrayidx.i244.2, align 1, !tbaa !30
  %7 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %__x1.sroa.6.0.insert.ext = zext i8 %7 to i32
  %__x1.sroa.6.0.insert.shift = shl nuw i32 %__x1.sroa.6.0.insert.ext, 24
  %__x1.sroa.5.0.insert.ext = zext i8 %6 to i32
  %__x1.sroa.5.0.insert.shift = shl nuw nsw i32 %__x1.sroa.5.0.insert.ext, 16
  %__x1.sroa.5.0.insert.insert = or i32 %__x1.sroa.6.0.insert.shift, %__x1.sroa.5.0.insert.shift
  %__x1.sroa.4.0.insert.ext = zext i8 %5 to i32
  %__x1.sroa.4.0.insert.shift = shl nuw nsw i32 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.4.0.insert.insert = or i32 %__x1.sroa.5.0.insert.insert, %__x1.sroa.4.0.insert.shift
  %__x1.sroa.0.0.insert.ext = zext i8 %4 to i32
  %__x1.sroa.0.0.insert.insert = or i32 %__x1.sroa.4.0.insert.insert, %__x1.sroa.0.0.insert.ext
  %add.ptr5 = getelementptr i8, ptr %symval, i64 8
  %arrayidx.i254 = getelementptr i8, ptr %symval, i64 11
  %8 = load i8, ptr %arrayidx.i254, align 1, !tbaa !30
  %arrayidx.i254.1 = getelementptr i8, ptr %symval, i64 10
  %9 = load i8, ptr %arrayidx.i254.1, align 1, !tbaa !30
  %arrayidx.i254.2 = getelementptr i8, ptr %symval, i64 9
  %10 = load i8, ptr %arrayidx.i254.2, align 1, !tbaa !30
  %11 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %__x4.sroa.6.0.insert.ext = zext i8 %11 to i32
  %__x4.sroa.6.0.insert.shift = shl nuw i32 %__x4.sroa.6.0.insert.ext, 24
  %__x4.sroa.5.0.insert.ext = zext i8 %10 to i32
  %__x4.sroa.5.0.insert.shift = shl nuw nsw i32 %__x4.sroa.5.0.insert.ext, 16
  %__x4.sroa.5.0.insert.insert = or i32 %__x4.sroa.6.0.insert.shift, %__x4.sroa.5.0.insert.shift
  %__x4.sroa.4.0.insert.ext = zext i8 %9 to i32
  %__x4.sroa.4.0.insert.shift = shl nuw nsw i32 %__x4.sroa.4.0.insert.ext, 8
  %__x4.sroa.4.0.insert.insert = or i32 %__x4.sroa.5.0.insert.insert, %__x4.sroa.4.0.insert.shift
  %__x4.sroa.0.0.insert.ext = zext i8 %8 to i32
  %__x4.sroa.0.0.insert.insert = or i32 %__x4.sroa.4.0.insert.insert, %__x4.sroa.0.0.insert.ext
  %add.ptr8 = getelementptr i8, ptr %symval, i64 12
  %arrayidx.i264 = getelementptr i8, ptr %symval, i64 15
  %12 = load i8, ptr %arrayidx.i264, align 1, !tbaa !30
  %arrayidx.i264.1 = getelementptr i8, ptr %symval, i64 14
  %13 = load i8, ptr %arrayidx.i264.1, align 1, !tbaa !30
  %arrayidx.i264.2 = getelementptr i8, ptr %symval, i64 13
  %14 = load i8, ptr %arrayidx.i264.2, align 1, !tbaa !30
  %15 = load i8, ptr %add.ptr8, align 1, !tbaa !30
  %__x7.sroa.6.0.insert.ext = zext i8 %15 to i32
  %__x7.sroa.6.0.insert.shift = shl nuw i32 %__x7.sroa.6.0.insert.ext, 24
  %__x7.sroa.5.0.insert.ext = zext i8 %14 to i32
  %__x7.sroa.5.0.insert.shift = shl nuw nsw i32 %__x7.sroa.5.0.insert.ext, 16
  %__x7.sroa.5.0.insert.insert = or i32 %__x7.sroa.6.0.insert.shift, %__x7.sroa.5.0.insert.shift
  %__x7.sroa.4.0.insert.ext = zext i8 %13 to i32
  %__x7.sroa.4.0.insert.shift = shl nuw nsw i32 %__x7.sroa.4.0.insert.ext, 8
  %__x7.sroa.4.0.insert.insert = or i32 %__x7.sroa.5.0.insert.insert, %__x7.sroa.4.0.insert.shift
  %__x7.sroa.0.0.insert.ext = zext i8 %12 to i32
  %__x7.sroa.0.0.insert.insert = or i32 %__x7.sroa.4.0.insert.insert, %__x7.sroa.0.0.insert.ext
  %arrayidx.i274 = getelementptr i8, ptr %symval, i64 19
  %16 = load i8, ptr %arrayidx.i274, align 1, !tbaa !30
  %arrayidx.i274.1 = getelementptr i8, ptr %symval, i64 18
  %17 = load i8, ptr %arrayidx.i274.1, align 1, !tbaa !30
  %arrayidx.i274.2 = getelementptr i8, ptr %symval, i64 17
  %18 = load i8, ptr %arrayidx.i274.2, align 1, !tbaa !30
  %__x10.sroa.5.0.insert.ext = zext i8 %18 to i32
  %__x10.sroa.4.0.insert.ext = zext i8 %17 to i32
  %__x10.sroa.0.0.insert.ext = zext i8 %16 to i32
  %add.ptr14 = getelementptr i8, ptr %symval, i64 20
  %arrayidx.i284 = getelementptr i8, ptr %symval, i64 23
  %19 = load i8, ptr %arrayidx.i284, align 1, !tbaa !30
  %arrayidx.i284.1 = getelementptr i8, ptr %symval, i64 22
  %20 = load i8, ptr %arrayidx.i284.1, align 1, !tbaa !30
  %arrayidx.i284.2 = getelementptr i8, ptr %symval, i64 21
  %21 = load i8, ptr %arrayidx.i284.2, align 1, !tbaa !30
  %22 = load i8, ptr %add.ptr14, align 1, !tbaa !30
  %__x13.sroa.6.0.insert.ext = zext i8 %22 to i32
  %__x13.sroa.6.0.insert.shift = shl nuw i32 %__x13.sroa.6.0.insert.ext, 24
  %__x13.sroa.5.0.insert.ext = zext i8 %21 to i32
  %__x13.sroa.5.0.insert.shift = shl nuw nsw i32 %__x13.sroa.5.0.insert.ext, 16
  %__x13.sroa.5.0.insert.insert = or i32 %__x13.sroa.6.0.insert.shift, %__x13.sroa.5.0.insert.shift
  %__x13.sroa.4.0.insert.ext = zext i8 %20 to i32
  %__x13.sroa.4.0.insert.shift = shl nuw nsw i32 %__x13.sroa.4.0.insert.ext, 8
  %__x13.sroa.4.0.insert.insert = or i32 %__x13.sroa.5.0.insert.insert, %__x13.sroa.4.0.insert.shift
  %__x13.sroa.0.0.insert.ext = zext i8 %19 to i32
  %__x13.sroa.0.0.insert.insert = or i32 %__x13.sroa.4.0.insert.insert, %__x13.sroa.0.0.insert.ext
  %add.ptr17 = getelementptr i8, ptr %symval, i64 28
  %arrayidx.i294 = getelementptr i8, ptr %symval, i64 31
  %23 = load i8, ptr %arrayidx.i294, align 1, !tbaa !30
  %arrayidx.i294.1 = getelementptr i8, ptr %symval, i64 30
  %24 = load i8, ptr %arrayidx.i294.1, align 1, !tbaa !30
  %arrayidx.i294.2 = getelementptr i8, ptr %symval, i64 29
  %25 = load i8, ptr %arrayidx.i294.2, align 1, !tbaa !30
  %26 = load i8, ptr %add.ptr17, align 1, !tbaa !30
  %__x16.sroa.6.0.insert.ext = zext i8 %26 to i32
  %__x16.sroa.6.0.insert.shift = shl nuw i32 %__x16.sroa.6.0.insert.ext, 24
  %__x16.sroa.5.0.insert.ext = zext i8 %25 to i32
  %__x16.sroa.5.0.insert.shift = shl nuw nsw i32 %__x16.sroa.5.0.insert.ext, 16
  %__x16.sroa.5.0.insert.insert = or i32 %__x16.sroa.6.0.insert.shift, %__x16.sroa.5.0.insert.shift
  %__x16.sroa.4.0.insert.ext = zext i8 %24 to i32
  %__x16.sroa.4.0.insert.shift = shl nuw nsw i32 %__x16.sroa.4.0.insert.ext, 8
  %__x16.sroa.4.0.insert.insert = or i32 %__x16.sroa.5.0.insert.insert, %__x16.sroa.4.0.insert.shift
  %__x16.sroa.0.0.insert.ext = zext i8 %23 to i32
  %__x16.sroa.0.0.insert.insert = or i32 %__x16.sroa.4.0.insert.insert, %__x16.sroa.0.0.insert.ext
  switch i32 %__x16.sroa.0.0.insert.insert, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %alias, ptr noundef nonnull align 1 dereferenceable(5) @.str.96, i64 5, i1 false) #18
  br label %do.body

sw.bb19:                                          ; preds = %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %alias, ptr noundef nonnull align 1 dereferenceable(10) @.str.97, i64 10, i1 false) #18
  br label %do.body

sw.default:                                       ; preds = %entry
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.98, i32 noundef %__x16.sroa.0.0.insert.insert) #18
  br label %cleanup

do.body:                                          ; preds = %sw.bb19, %sw.bb
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 118, ptr %endptr, align 1
  %cmp.not = icmp eq i32 %__x.sroa.0.0.insert.insert, -1
  %call25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr26 = getelementptr inbounds i8, ptr %alias, i64 %call25
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %call24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr26, ptr noundef nonnull @.str.90, i32 noundef %__x.sroa.0.0.insert.insert) #18
  br label %do.body28

if.else:                                          ; preds = %do.body
  store i16 42, ptr %add.ptr26, align 1
  br label %do.body28

do.body28:                                        ; preds = %if.else, %if.then
  %strlen228 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr229 = getelementptr i8, ptr %alias, i64 %strlen228
  store i16 100, ptr %endptr229, align 1
  %cmp30.not = icmp eq i32 %__x1.sroa.0.0.insert.insert, -1
  %call36 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr37 = getelementptr inbounds i8, ptr %alias, i64 %call36
  br i1 %cmp30.not, label %if.else35, label %if.then31

if.then31:                                        ; preds = %do.body28
  %call34 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr37, ptr noundef nonnull @.str.90, i32 noundef %__x1.sroa.0.0.insert.insert) #18
  br label %do.body42

if.else35:                                        ; preds = %do.body28
  store i16 42, ptr %add.ptr37, align 1
  br label %do.body42

do.body42:                                        ; preds = %if.else35, %if.then31
  %strlen230 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr231 = getelementptr i8, ptr %alias, i64 %strlen230
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr231, ptr noundef nonnull align 1 dereferenceable(3) @.str.99, i64 3, i1 false)
  %cmp44.not = icmp eq i32 %__x4.sroa.0.0.insert.insert, -1
  %call50 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr51 = getelementptr inbounds i8, ptr %alias, i64 %call50
  br i1 %cmp44.not, label %if.else49, label %if.then45

if.then45:                                        ; preds = %do.body42
  %call48 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr51, ptr noundef nonnull @.str.90, i32 noundef %__x4.sroa.0.0.insert.insert) #18
  br label %do.body56

if.else49:                                        ; preds = %do.body42
  store i16 42, ptr %add.ptr51, align 1
  br label %do.body56

do.body56:                                        ; preds = %if.else49, %if.then45
  %strlen232 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr233 = getelementptr i8, ptr %alias, i64 %strlen232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr233, ptr noundef nonnull align 1 dereferenceable(3) @.str.100, i64 3, i1 false)
  %cmp58.not = icmp eq i32 %__x7.sroa.0.0.insert.insert, -1
  %call64 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr65 = getelementptr inbounds i8, ptr %alias, i64 %call64
  br i1 %cmp58.not, label %if.else63, label %if.then59

if.then59:                                        ; preds = %do.body56
  %call62 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr65, ptr noundef nonnull @.str.90, i32 noundef %__x7.sroa.0.0.insert.insert) #18
  br label %do.end69

if.else63:                                        ; preds = %do.body56
  store i16 42, ptr %add.ptr65, align 1
  br label %do.end69

do.end69:                                         ; preds = %if.else63, %if.then59
  switch i8 %21, label %if.then99 [
    i8 -1, label %lor.lhs.false
    i8 0, label %lor.lhs.false
  ]

lor.lhs.false:                                    ; preds = %do.end69, %do.end69
  switch i8 %20, label %if.then99 [
    i8 -1, label %lor.lhs.false91
    i8 0, label %lor.lhs.false91
  ]

lor.lhs.false91:                                  ; preds = %lor.lhs.false, %lor.lhs.false
  switch i8 %19, label %if.then99 [
    i8 -1, label %do.body101
    i8 0, label %do.body101
  ]

if.then99:                                        ; preds = %lor.lhs.false91, %lor.lhs.false, %do.end69
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.101, ptr noundef %filename, i32 noundef %__x13.sroa.0.0.insert.insert) #18
  br label %cleanup

do.body101:                                       ; preds = %lor.lhs.false91, %lor.lhs.false91
  %strlen234 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr235 = getelementptr i8, ptr %alias, i64 %strlen234
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr235, ptr noundef nonnull align 1 dereferenceable(3) @.str.102, i64 3, i1 false)
  %cmp104 = icmp eq i8 %21, -1
  %call107 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr108 = getelementptr inbounds i8, ptr %alias, i64 %call107
  br i1 %cmp104, label %if.then106, label %if.else111

if.then106:                                       ; preds = %do.body101
  %call110 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr108, ptr noundef nonnull @.str.26, i32 noundef %__x10.sroa.5.0.insert.ext) #18
  br label %do.body118

if.else111:                                       ; preds = %do.body101
  store i16 42, ptr %add.ptr108, align 1
  br label %do.body118

do.body118:                                       ; preds = %if.else111, %if.then106
  %strlen236 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr237 = getelementptr i8, ptr %alias, i64 %strlen236
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr237, ptr noundef nonnull align 1 dereferenceable(3) @.str.103, i64 3, i1 false)
  %cmp121 = icmp eq i8 %20, -1
  %call124 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr125 = getelementptr inbounds i8, ptr %alias, i64 %call124
  br i1 %cmp121, label %if.then123, label %if.else128

if.then123:                                       ; preds = %do.body118
  %call127 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr125, ptr noundef nonnull @.str.26, i32 noundef %__x10.sroa.4.0.insert.ext) #18
  br label %do.body135

if.else128:                                       ; preds = %do.body118
  store i16 42, ptr %add.ptr125, align 1
  br label %do.body135

do.body135:                                       ; preds = %if.else128, %if.then123
  %strlen238 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr239 = getelementptr i8, ptr %alias, i64 %strlen238
  store i16 105, ptr %endptr239, align 1
  %cmp138 = icmp eq i8 %19, -1
  %call141 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr142 = getelementptr inbounds i8, ptr %alias, i64 %call141
  br i1 %cmp138, label %if.then140, label %if.else145

if.then140:                                       ; preds = %do.body135
  %call144 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr142, ptr noundef nonnull @.str.26, i32 noundef %__x10.sroa.0.0.insert.ext) #18
  br label %do.end151

if.else145:                                       ; preds = %do.body135
  store i16 42, ptr %add.ptr142, align 1
  br label %do.end151

do.end151:                                        ; preds = %if.else145, %if.then140
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i300 = ashr exact i64 %sext.i, 32
  %arrayidx.i301 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i300
  %27 = load i8, ptr %arrayidx.i301, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %27, 42
  br i1 %cmp.not.i, label %cleanup, label %if.then.i

if.then.i:                                        ; preds = %do.end151
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.end151, %if.then99, %sw.default
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %if.then99 ], [ 1, %do.end151 ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_ccw_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 1
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %add.ptr2 = getelementptr i8, ptr %symval, i64 2
  %arrayidx.i110 = getelementptr i8, ptr %symval, i64 3
  %1 = load i8, ptr %arrayidx.i110, align 1, !tbaa !30
  %2 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %add.ptr5 = getelementptr i8, ptr %symval, i64 6
  %3 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %add.ptr8 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i130 = getelementptr i8, ptr %symval, i64 5
  %4 = load i8, ptr %arrayidx.i130, align 1, !tbaa !30
  %5 = load i8, ptr %add.ptr8, align 1, !tbaa !30
  %__x7.sroa.4.0.insert.ext = zext i8 %5 to i32
  %__x7.sroa.4.0.insert.shift = shl nuw nsw i32 %__x7.sroa.4.0.insert.ext, 8
  %__x7.sroa.0.0.insert.ext = zext i8 %4 to i32
  %__x7.sroa.0.0.insert.insert = or i32 %__x7.sroa.4.0.insert.shift, %__x7.sroa.0.0.insert.ext
  %add.ptr11 = getelementptr i8, ptr %symval, i64 7
  %6 = load i8, ptr %add.ptr11, align 1, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %alias, ptr noundef nonnull align 1 dereferenceable(5) @.str.105, i64 5, i1 false) #18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 116, ptr %endptr, align 1
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %__x1.sroa.4.0.insert.ext = zext i8 %2 to i32
  %__x1.sroa.4.0.insert.shift = shl nuw nsw i32 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.0.0.insert.ext = zext i8 %1 to i32
  %__x1.sroa.0.0.insert.insert = or i32 %__x1.sroa.4.0.insert.shift, %__x1.sroa.0.0.insert.ext
  %call14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr15 = getelementptr inbounds i8, ptr %alias, i64 %call14
  %call17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr15, ptr noundef nonnull @.str.14, i32 noundef %__x1.sroa.0.0.insert.insert) #18
  br label %do.body21

if.else:                                          ; preds = %entry
  %call18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr19 = getelementptr inbounds i8, ptr %alias, i64 %call18
  store i16 42, ptr %add.ptr19, align 1
  br label %do.body21

do.body21:                                        ; preds = %if.else, %if.then
  %strlen100 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr101 = getelementptr i8, ptr %alias, i64 %strlen100
  store i16 109, ptr %endptr101, align 1
  %and24 = and i32 %conv, 2
  %tobool25.not = icmp eq i32 %and24, 0
  %call32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr33 = getelementptr inbounds i8, ptr %alias, i64 %call32
  br i1 %tobool25.not, label %if.else31, label %if.then26

if.then26:                                        ; preds = %do.body21
  %conv29 = zext i8 %3 to i32
  %call30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr33, ptr noundef nonnull @.str.26, i32 noundef %conv29) #18
  br label %do.body38

if.else31:                                        ; preds = %do.body21
  store i16 42, ptr %add.ptr33, align 1
  br label %do.body38

do.body38:                                        ; preds = %if.else31, %if.then26
  %strlen102 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr103 = getelementptr i8, ptr %alias, i64 %strlen102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr103, ptr noundef nonnull align 1 dereferenceable(3) @.str.108, i64 3, i1 false)
  %and41 = and i32 %conv, 4
  %tobool42.not = icmp eq i32 %and41, 0
  %call49 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr50 = getelementptr inbounds i8, ptr %alias, i64 %call49
  br i1 %tobool42.not, label %if.else48, label %if.then43

if.then43:                                        ; preds = %do.body38
  %call47 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr50, ptr noundef nonnull @.str.14, i32 noundef %__x7.sroa.0.0.insert.insert) #18
  br label %do.body55

if.else48:                                        ; preds = %do.body38
  store i16 42, ptr %add.ptr50, align 1
  br label %do.body55

do.body55:                                        ; preds = %if.else48, %if.then43
  %strlen104 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr105 = getelementptr i8, ptr %alias, i64 %strlen104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr105, ptr noundef nonnull align 1 dereferenceable(3) @.str.109, i64 3, i1 false)
  %and58 = and i32 %conv, 8
  %tobool59.not = icmp eq i32 %and58, 0
  %call66 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr67 = getelementptr inbounds i8, ptr %alias, i64 %call66
  br i1 %tobool59.not, label %if.else65, label %if.then60

if.then60:                                        ; preds = %do.body55
  %conv63 = zext i8 %6 to i32
  %call64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr67, ptr noundef nonnull @.str.26, i32 noundef %conv63) #18
  br label %do.end71

if.else65:                                        ; preds = %do.body55
  store i16 42, ptr %add.ptr67, align 1
  br label %do.end71

do.end71:                                         ; preds = %if.else65, %if.then60
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i146 = ashr exact i64 %sext.i, 32
  %arrayidx.i147 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i146
  %7 = load i8, ptr %arrayidx.i147, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %7, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end71
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %do.end71
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_ap_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr nocapture noundef writeonly %alias) #10 {
entry:
  %add.ptr = getelementptr i8, ptr %symval, i64 2
  %0 = load i8, ptr %add.ptr, align 1, !tbaa !30
  %conv = zext i8 %0 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.110, i32 noundef %conv) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_css_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr nocapture noundef writeonly %alias) #10 {
entry:
  %add.ptr = getelementptr i8, ptr %symval, i64 1
  %0 = load i8, ptr %add.ptr, align 1, !tbaa !30
  %conv = zext i8 %0 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.111, i32 noundef %conv) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_serio_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #10 {
entry:
  %0 = load i8, ptr %symval, align 1, !tbaa !30
  %add.ptr2 = getelementptr i8, ptr %symval, i64 3
  %1 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %add.ptr5 = getelementptr i8, ptr %symval, i64 2
  %2 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %add.ptr8 = getelementptr i8, ptr %symval, i64 1
  %3 = load i8, ptr %add.ptr8, align 1, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %alias, ptr noundef nonnull align 1 dereferenceable(7) @.str.112, i64 7, i1 false) #18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr, ptr noundef nonnull align 1 dereferenceable(3) @.str.113, i64 3, i1 false)
  %cmp.not = icmp eq i8 %0, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i8 %0 to i32
  %call12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr13 = getelementptr inbounds i8, ptr %alias, i64 %call12
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr13, ptr noundef nonnull @.str.26, i32 noundef %conv) #18
  br label %do.body19

if.else:                                          ; preds = %entry
  %call16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr17 = getelementptr inbounds i8, ptr %alias, i64 %call16
  store i16 42, ptr %add.ptr17, align 1
  br label %do.body19

do.body19:                                        ; preds = %if.else, %if.then
  %strlen98 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr99 = getelementptr i8, ptr %alias, i64 %strlen98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr99, ptr noundef nonnull align 1 dereferenceable(3) @.str.114, i64 3, i1 false)
  %cmp22.not = icmp eq i8 %1, -1
  br i1 %cmp22.not, label %if.else29, label %if.then24

if.then24:                                        ; preds = %do.body19
  %conv21 = zext i8 %1 to i32
  %call25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr26 = getelementptr inbounds i8, ptr %alias, i64 %call25
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr26, ptr noundef nonnull @.str.26, i32 noundef %conv21) #18
  br label %do.body36

if.else29:                                        ; preds = %do.body19
  %call30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr31 = getelementptr inbounds i8, ptr %alias, i64 %call30
  store i16 42, ptr %add.ptr31, align 1
  br label %do.body36

do.body36:                                        ; preds = %if.else29, %if.then24
  %strlen100 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr101 = getelementptr i8, ptr %alias, i64 %strlen100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr101, ptr noundef nonnull align 1 dereferenceable(3) @.str.115, i64 3, i1 false)
  %cmp39.not = icmp eq i8 %2, -1
  br i1 %cmp39.not, label %if.else46, label %if.then41

if.then41:                                        ; preds = %do.body36
  %conv38 = zext i8 %2 to i32
  %call42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr43 = getelementptr inbounds i8, ptr %alias, i64 %call42
  %call45 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr43, ptr noundef nonnull @.str.26, i32 noundef %conv38) #18
  br label %do.body53

if.else46:                                        ; preds = %do.body36
  %call47 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr48 = getelementptr inbounds i8, ptr %alias, i64 %call47
  store i16 42, ptr %add.ptr48, align 1
  br label %do.body53

do.body53:                                        ; preds = %if.else46, %if.then41
  %strlen102 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr103 = getelementptr i8, ptr %alias, i64 %strlen102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr103, ptr noundef nonnull align 1 dereferenceable(3) @.str.116, i64 3, i1 false)
  %cmp56.not = icmp eq i8 %3, -1
  br i1 %cmp56.not, label %if.else63, label %if.then58

if.then58:                                        ; preds = %do.body53
  %conv55 = zext i8 %3 to i32
  %call59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr60 = getelementptr inbounds i8, ptr %alias, i64 %call59
  %call62 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr60, ptr noundef nonnull @.str.26, i32 noundef %conv55) #18
  br label %do.end69

if.else63:                                        ; preds = %do.body53
  %call64 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr65 = getelementptr inbounds i8, ptr %alias, i64 %call64
  store i16 42, ptr %add.ptr65, align 1
  br label %do.end69

do.end69:                                         ; preds = %if.else63, %if.then58
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i134 = ashr exact i64 %sext.i, 32
  %arrayidx.i135 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i134
  %4 = load i8, ptr %arrayidx.i135, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %4, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end69
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %do.end69
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_acpi_entry(ptr nocapture noundef readnone %filename, ptr noundef %symval, ptr nocapture noundef writeonly %alias) #10 {
entry:
  %add.ptr1 = getelementptr i8, ptr %symval, i64 16
  %add.ptr2 = getelementptr i8, ptr %symval, i64 20
  %tobool.not = icmp eq ptr %symval, null
  br i1 %tobool.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %char0 = load i8, ptr %symval, align 1
  %tobool3.not = icmp eq i8 %char0, 0
  br i1 %tobool3.not, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.117, ptr noundef nonnull %symval) #18
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true, %entry
  %tobool6.not = icmp eq ptr %add.ptr1, null
  br i1 %tobool6.not, label %if.end24, label %if.then7

if.then7:                                         ; preds = %if.else
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %alias, ptr noundef nonnull align 1 dereferenceable(7) @.str.118, i64 7, i1 false)
  %0 = load i32, ptr %add.ptr2, align 4, !tbaa !16
  %1 = and i32 %0, 16711680
  %tobool9.not = icmp eq i32 %1, 0
  %arrayidx18 = getelementptr inbounds i8, ptr %alias, i64 6
  br i1 %tobool9.not, label %if.else16, label %if.then10

if.then10:                                        ; preds = %if.then7
  %2 = load i32, ptr %add.ptr1, align 4, !tbaa !16
  %shr13 = lshr i32 %2, 16
  %and14 = and i32 %shr13, 255
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx18, ptr noundef nonnull @.str.119, i32 noundef %and14) #18
  br label %if.end

if.else16:                                        ; preds = %if.then7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %arrayidx18, ptr noundef nonnull align 1 dereferenceable(3) @.str.120, i64 3, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else16, %if.then10
  %3 = load i32, ptr %add.ptr2, align 4, !tbaa !16
  %4 = and i32 %3, 65280
  %tobool9.not.1 = icmp eq i32 %4, 0
  %arrayidx18.1 = getelementptr inbounds i8, ptr %alias, i64 8
  br i1 %tobool9.not.1, label %if.else16.1, label %if.then10.1

if.then10.1:                                      ; preds = %if.end
  %5 = load i32, ptr %add.ptr1, align 4, !tbaa !16
  %shr13.1 = lshr i32 %5, 8
  %and14.1 = and i32 %shr13.1, 255
  %call15.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx18.1, ptr noundef nonnull @.str.119, i32 noundef %and14.1) #18
  br label %if.end.1

if.else16.1:                                      ; preds = %if.end
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %arrayidx18.1, ptr noundef nonnull align 1 dereferenceable(3) @.str.120, i64 3, i1 false)
  br label %if.end.1

if.end.1:                                         ; preds = %if.else16.1, %if.then10.1
  %6 = load i32, ptr %add.ptr2, align 4, !tbaa !16
  %7 = and i32 %6, 255
  %tobool9.not.2 = icmp eq i32 %7, 0
  %arrayidx18.2 = getelementptr inbounds i8, ptr %alias, i64 10
  br i1 %tobool9.not.2, label %if.else16.2, label %if.then10.2

if.then10.2:                                      ; preds = %if.end.1
  %8 = load i32, ptr %add.ptr1, align 4, !tbaa !16
  %and14.2 = and i32 %8, 255
  %call15.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx18.2, ptr noundef nonnull @.str.119, i32 noundef %and14.2) #18
  br label %if.end.2

if.else16.2:                                      ; preds = %if.end.1
  store i16 16191, ptr %arrayidx18.2, align 1
  br label %if.end.2

if.end.2:                                         ; preds = %if.else16.2, %if.then10.2
  %arrayidx21 = getelementptr inbounds i8, ptr %alias, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %arrayidx21, ptr noundef nonnull align 1 dereferenceable(3) @.str.121, i64 3, i1 false)
  br label %if.end24

if.end24:                                         ; preds = %if.end.2, %if.else, %if.then
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_pcmcia_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef %symval, ptr noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 1
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %1 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %add.ptr2 = getelementptr i8, ptr %symval, i64 2
  %arrayidx.i253 = getelementptr i8, ptr %symval, i64 3
  %2 = load i8, ptr %arrayidx.i253, align 1, !tbaa !30
  %3 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %add.ptr5 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i263 = getelementptr i8, ptr %symval, i64 5
  %4 = load i8, ptr %arrayidx.i263, align 1, !tbaa !30
  %5 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %__x4.sroa.4.0.insert.ext = zext i8 %5 to i32
  %__x4.sroa.4.0.insert.shift = shl nuw nsw i32 %__x4.sroa.4.0.insert.ext, 8
  %__x4.sroa.0.0.insert.ext = zext i8 %4 to i32
  %__x4.sroa.0.0.insert.insert = or i32 %__x4.sroa.4.0.insert.shift, %__x4.sroa.0.0.insert.ext
  %add.ptr8 = getelementptr i8, ptr %symval, i64 6
  %6 = load i8, ptr %add.ptr8, align 1, !tbaa !30
  %add.ptr11 = getelementptr i8, ptr %symval, i64 7
  %7 = load i8, ptr %add.ptr11, align 1, !tbaa !30
  %add.ptr14 = getelementptr i8, ptr %symval, i64 8
  %8 = load i8, ptr %add.ptr14, align 1, !tbaa !30
  %add.ptr16 = getelementptr i8, ptr %symval, i64 12
  %arrayidx.i303 = getelementptr i8, ptr %symval, i64 15
  %9 = load i8, ptr %arrayidx.i303, align 1, !tbaa !30
  %arrayidx.i303.1 = getelementptr i8, ptr %symval, i64 14
  %10 = load i8, ptr %arrayidx.i303.1, align 1, !tbaa !30
  %arrayidx.i303.2 = getelementptr i8, ptr %symval, i64 13
  %11 = load i8, ptr %arrayidx.i303.2, align 1, !tbaa !30
  %12 = load i8, ptr %add.ptr16, align 1, !tbaa !30
  %__x17.sroa.24.0.insert.ext = zext i8 %12 to i32
  %__x17.sroa.24.0.insert.shift = shl nuw i32 %__x17.sroa.24.0.insert.ext, 24
  %__x17.sroa.20.0.insert.ext = zext i8 %11 to i32
  %__x17.sroa.20.0.insert.shift = shl nuw nsw i32 %__x17.sroa.20.0.insert.ext, 16
  %__x17.sroa.20.0.insert.insert = or i32 %__x17.sroa.24.0.insert.shift, %__x17.sroa.20.0.insert.shift
  %__x17.sroa.16.0.insert.ext = zext i8 %10 to i32
  %__x17.sroa.16.0.insert.shift = shl nuw nsw i32 %__x17.sroa.16.0.insert.ext, 8
  %__x17.sroa.16.0.insert.insert = or i32 %__x17.sroa.20.0.insert.insert, %__x17.sroa.16.0.insert.shift
  %__x17.sroa.0.0.insert.ext = zext i8 %9 to i32
  %__x17.sroa.0.0.insert.insert = or i32 %__x17.sroa.16.0.insert.insert, %__x17.sroa.0.0.insert.ext
  store i32 %__x17.sroa.0.0.insert.insert, ptr %add.ptr16, align 4, !tbaa !16
  %arrayidx.1 = getelementptr i8, ptr %symval, i64 16
  %arrayidx.i303.1313 = getelementptr i8, ptr %symval, i64 19
  %13 = load i8, ptr %arrayidx.i303.1313, align 1, !tbaa !30
  %arrayidx.i303.1.1 = getelementptr i8, ptr %symval, i64 18
  %14 = load i8, ptr %arrayidx.i303.1.1, align 1, !tbaa !30
  %arrayidx.i303.2.1 = getelementptr i8, ptr %symval, i64 17
  %15 = load i8, ptr %arrayidx.i303.2.1, align 1, !tbaa !30
  %16 = load i8, ptr %arrayidx.1, align 1, !tbaa !30
  %__x17.sroa.24.0.insert.ext358 = zext i8 %16 to i32
  %__x17.sroa.24.0.insert.shift359 = shl nuw i32 %__x17.sroa.24.0.insert.ext358, 24
  %__x17.sroa.20.0.insert.ext343 = zext i8 %15 to i32
  %__x17.sroa.20.0.insert.shift344 = shl nuw nsw i32 %__x17.sroa.20.0.insert.ext343, 16
  %__x17.sroa.20.0.insert.insert346 = or i32 %__x17.sroa.24.0.insert.shift359, %__x17.sroa.20.0.insert.shift344
  %__x17.sroa.16.0.insert.ext328 = zext i8 %14 to i32
  %__x17.sroa.16.0.insert.shift329 = shl nuw nsw i32 %__x17.sroa.16.0.insert.ext328, 8
  %__x17.sroa.16.0.insert.insert331 = or i32 %__x17.sroa.20.0.insert.insert346, %__x17.sroa.16.0.insert.shift329
  %__x17.sroa.0.0.insert.ext316 = zext i8 %13 to i32
  %__x17.sroa.0.0.insert.insert318 = or i32 %__x17.sroa.16.0.insert.insert331, %__x17.sroa.0.0.insert.ext316
  store i32 %__x17.sroa.0.0.insert.insert318, ptr %arrayidx.1, align 4, !tbaa !16
  %arrayidx.2 = getelementptr i8, ptr %symval, i64 20
  %arrayidx.i303.2314 = getelementptr i8, ptr %symval, i64 23
  %17 = load i8, ptr %arrayidx.i303.2314, align 1, !tbaa !30
  %arrayidx.i303.1.2 = getelementptr i8, ptr %symval, i64 22
  %18 = load i8, ptr %arrayidx.i303.1.2, align 1, !tbaa !30
  %arrayidx.i303.2.2 = getelementptr i8, ptr %symval, i64 21
  %19 = load i8, ptr %arrayidx.i303.2.2, align 1, !tbaa !30
  %20 = load i8, ptr %arrayidx.2, align 1, !tbaa !30
  %__x17.sroa.24.0.insert.ext363 = zext i8 %20 to i32
  %__x17.sroa.24.0.insert.shift364 = shl nuw i32 %__x17.sroa.24.0.insert.ext363, 24
  %__x17.sroa.20.0.insert.ext348 = zext i8 %19 to i32
  %__x17.sroa.20.0.insert.shift349 = shl nuw nsw i32 %__x17.sroa.20.0.insert.ext348, 16
  %__x17.sroa.20.0.insert.insert351 = or i32 %__x17.sroa.24.0.insert.shift364, %__x17.sroa.20.0.insert.shift349
  %__x17.sroa.16.0.insert.ext333 = zext i8 %18 to i32
  %__x17.sroa.16.0.insert.shift334 = shl nuw nsw i32 %__x17.sroa.16.0.insert.ext333, 8
  %__x17.sroa.16.0.insert.insert336 = or i32 %__x17.sroa.20.0.insert.insert351, %__x17.sroa.16.0.insert.shift334
  %__x17.sroa.0.0.insert.ext320 = zext i8 %17 to i32
  %__x17.sroa.0.0.insert.insert322 = or i32 %__x17.sroa.16.0.insert.insert336, %__x17.sroa.0.0.insert.ext320
  store i32 %__x17.sroa.0.0.insert.insert322, ptr %arrayidx.2, align 4, !tbaa !16
  %arrayidx.3 = getelementptr i8, ptr %symval, i64 24
  %arrayidx.i303.3 = getelementptr i8, ptr %symval, i64 27
  %21 = load i8, ptr %arrayidx.i303.3, align 1, !tbaa !30
  %arrayidx.i303.1.3 = getelementptr i8, ptr %symval, i64 26
  %22 = load i8, ptr %arrayidx.i303.1.3, align 1, !tbaa !30
  %arrayidx.i303.2.3 = getelementptr i8, ptr %symval, i64 25
  %23 = load i8, ptr %arrayidx.i303.2.3, align 1, !tbaa !30
  %24 = load i8, ptr %arrayidx.3, align 1, !tbaa !30
  %__x17.sroa.24.0.insert.ext368 = zext i8 %24 to i32
  %__x17.sroa.24.0.insert.shift369 = shl nuw i32 %__x17.sroa.24.0.insert.ext368, 24
  %__x17.sroa.20.0.insert.ext353 = zext i8 %23 to i32
  %__x17.sroa.20.0.insert.shift354 = shl nuw nsw i32 %__x17.sroa.20.0.insert.ext353, 16
  %__x17.sroa.20.0.insert.insert356 = or i32 %__x17.sroa.24.0.insert.shift369, %__x17.sroa.20.0.insert.shift354
  %__x17.sroa.16.0.insert.ext338 = zext i8 %22 to i32
  %__x17.sroa.16.0.insert.shift339 = shl nuw nsw i32 %__x17.sroa.16.0.insert.ext338, 8
  %__x17.sroa.16.0.insert.insert341 = or i32 %__x17.sroa.20.0.insert.insert356, %__x17.sroa.16.0.insert.shift339
  %__x17.sroa.0.0.insert.ext324 = zext i8 %21 to i32
  %__x17.sroa.0.0.insert.insert326 = or i32 %__x17.sroa.16.0.insert.insert341, %__x17.sroa.0.0.insert.ext324
  store i32 %__x17.sroa.0.0.insert.insert326, ptr %arrayidx.3, align 4, !tbaa !16
  store i64 16432653916791664, ptr %alias, align 1
  %strlen = tail call i64 @strlen(ptr nonnull %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 109, ptr %endptr, align 1
  %and = and i32 %__x.sroa.0.0.insert.ext, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %__x1.sroa.4.0.insert.ext = zext i8 %3 to i32
  %__x1.sroa.4.0.insert.shift = shl nuw nsw i32 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.0.0.insert.ext = zext i8 %2 to i32
  %__x1.sroa.0.0.insert.insert = or i32 %__x1.sroa.4.0.insert.shift, %__x1.sroa.0.0.insert.ext
  %call22 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr23 = getelementptr inbounds i8, ptr %alias, i64 %call22
  %call25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr23, ptr noundef nonnull @.str.14, i32 noundef %__x1.sroa.0.0.insert.insert) #18
  br label %do.body29

if.else:                                          ; preds = %entry
  %call26 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr27 = getelementptr inbounds i8, ptr %alias, i64 %call26
  store i16 42, ptr %add.ptr27, align 1
  br label %do.body29

do.body29:                                        ; preds = %if.else, %if.then
  %strlen233 = tail call i64 @strlen(ptr nonnull %alias)
  %endptr234 = getelementptr i8, ptr %alias, i64 %strlen233
  store i16 99, ptr %endptr234, align 1
  %and32 = and i32 %__x.sroa.0.0.insert.ext, 2
  %tobool33.not = icmp eq i32 %and32, 0
  %call40 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr41 = getelementptr inbounds i8, ptr %alias, i64 %call40
  br i1 %tobool33.not, label %if.else39, label %if.then34

if.then34:                                        ; preds = %do.body29
  %call38 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr41, ptr noundef nonnull @.str.14, i32 noundef %__x4.sroa.0.0.insert.insert) #18
  br label %do.body46

if.else39:                                        ; preds = %do.body29
  store i16 42, ptr %add.ptr41, align 1
  br label %do.body46

do.body46:                                        ; preds = %if.else39, %if.then34
  %strlen235 = tail call i64 @strlen(ptr nonnull %alias)
  %endptr236 = getelementptr i8, ptr %alias, i64 %strlen235
  store i16 102, ptr %endptr236, align 1
  %and49 = and i32 %__x.sroa.0.0.insert.ext, 4
  %tobool50.not = icmp eq i32 %and49, 0
  %call57 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr58 = getelementptr inbounds i8, ptr %alias, i64 %call57
  br i1 %tobool50.not, label %if.else56, label %if.then51

if.then51:                                        ; preds = %do.body46
  %conv54 = zext i8 %6 to i32
  %call55 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr58, ptr noundef nonnull @.str.26, i32 noundef %conv54) #18
  br label %do.body63

if.else56:                                        ; preds = %do.body46
  store i16 42, ptr %add.ptr58, align 1
  br label %do.body63

do.body63:                                        ; preds = %if.else56, %if.then51
  %strlen237 = tail call i64 @strlen(ptr nonnull %alias)
  %endptr238 = getelementptr i8, ptr %alias, i64 %strlen237
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr238, ptr noundef nonnull align 1 dereferenceable(3) @.str.125, i64 3, i1 false)
  %and66 = and i32 %__x.sroa.0.0.insert.ext, 8
  %tobool67.not = icmp eq i32 %and66, 0
  %call74 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr75 = getelementptr inbounds i8, ptr %alias, i64 %call74
  br i1 %tobool67.not, label %if.else73, label %if.then68

if.then68:                                        ; preds = %do.body63
  %conv71 = zext i8 %7 to i32
  %call72 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr75, ptr noundef nonnull @.str.26, i32 noundef %conv71) #18
  br label %do.body80

if.else73:                                        ; preds = %do.body63
  store i16 42, ptr %add.ptr75, align 1
  br label %do.body80

do.body80:                                        ; preds = %if.else73, %if.then68
  %strlen239 = tail call i64 @strlen(ptr nonnull %alias)
  %endptr240 = getelementptr i8, ptr %alias, i64 %strlen239
  store i32 7235184, ptr %endptr240, align 1
  %25 = and i8 %1, 1
  %tobool84.not = icmp eq i8 %25, 0
  %call91 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr92 = getelementptr inbounds i8, ptr %alias, i64 %call91
  br i1 %tobool84.not, label %if.else90, label %if.then85

if.then85:                                        ; preds = %do.body80
  %conv88 = zext i8 %8 to i32
  %call89 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr92, ptr noundef nonnull @.str.26, i32 noundef %conv88) #18
  br label %do.body97

if.else90:                                        ; preds = %do.body80
  store i16 42, ptr %add.ptr92, align 1
  br label %do.body97

do.body97:                                        ; preds = %if.else90, %if.then85
  %strlen241 = tail call i64 @strlen(ptr nonnull %alias)
  %endptr242 = getelementptr i8, ptr %alias, i64 %strlen241
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr242, ptr noundef nonnull align 1 dereferenceable(3) @.str.127, i64 3, i1 false)
  %and100 = and i32 %__x.sroa.0.0.insert.ext, 16
  %tobool101.not = icmp eq i32 %and100, 0
  %call108 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr109 = getelementptr inbounds i8, ptr %alias, i64 %call108
  br i1 %tobool101.not, label %if.else107, label %if.then102

if.then102:                                       ; preds = %do.body97
  %26 = load i32, ptr %add.ptr16, align 4, !tbaa !16
  %call106 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr109, ptr noundef nonnull @.str.90, i32 noundef %26) #18
  br label %do.body114

if.else107:                                       ; preds = %do.body97
  store i16 42, ptr %add.ptr109, align 1
  br label %do.body114

do.body114:                                       ; preds = %if.else107, %if.then102
  %strlen243 = tail call i64 @strlen(ptr nonnull %alias)
  %endptr244 = getelementptr i8, ptr %alias, i64 %strlen243
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr244, ptr noundef nonnull align 1 dereferenceable(3) @.str.128, i64 3, i1 false)
  %and117 = and i32 %__x.sroa.0.0.insert.ext, 32
  %tobool118.not = icmp eq i32 %and117, 0
  %call125 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr126 = getelementptr inbounds i8, ptr %alias, i64 %call125
  br i1 %tobool118.not, label %if.else124, label %if.then119

if.then119:                                       ; preds = %do.body114
  %arrayidx122 = getelementptr i8, ptr %symval, i64 16
  %27 = load i32, ptr %arrayidx122, align 4, !tbaa !16
  %call123 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr126, ptr noundef nonnull @.str.90, i32 noundef %27) #18
  br label %do.body131

if.else124:                                       ; preds = %do.body114
  store i16 42, ptr %add.ptr126, align 1
  br label %do.body131

do.body131:                                       ; preds = %if.else124, %if.then119
  %strlen245 = tail call i64 @strlen(ptr nonnull %alias)
  %endptr246 = getelementptr i8, ptr %alias, i64 %strlen245
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr246, ptr noundef nonnull align 1 dereferenceable(3) @.str.129, i64 3, i1 false)
  %and134 = and i32 %__x.sroa.0.0.insert.ext, 64
  %tobool135.not = icmp eq i32 %and134, 0
  %call142 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr143 = getelementptr inbounds i8, ptr %alias, i64 %call142
  br i1 %tobool135.not, label %if.else141, label %if.then136

if.then136:                                       ; preds = %do.body131
  %arrayidx139 = getelementptr i8, ptr %symval, i64 20
  %28 = load i32, ptr %arrayidx139, align 4, !tbaa !16
  %call140 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr143, ptr noundef nonnull @.str.90, i32 noundef %28) #18
  br label %do.body148

if.else141:                                       ; preds = %do.body131
  store i16 42, ptr %add.ptr143, align 1
  br label %do.body148

do.body148:                                       ; preds = %if.else141, %if.then136
  %strlen247 = tail call i64 @strlen(ptr nonnull %alias)
  %endptr248 = getelementptr i8, ptr %alias, i64 %strlen247
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr248, ptr noundef nonnull align 1 dereferenceable(3) @.str.130, i64 3, i1 false)
  %and151 = and i32 %__x.sroa.0.0.insert.ext, 128
  %tobool152.not = icmp eq i32 %and151, 0
  %call159 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr160 = getelementptr inbounds i8, ptr %alias, i64 %call159
  br i1 %tobool152.not, label %if.else158, label %if.then153

if.then153:                                       ; preds = %do.body148
  %arrayidx156 = getelementptr i8, ptr %symval, i64 24
  %29 = load i32, ptr %arrayidx156, align 4, !tbaa !16
  %call157 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr160, ptr noundef nonnull @.str.90, i32 noundef %29) #18
  br label %do.end164

if.else158:                                       ; preds = %do.body148
  store i16 42, ptr %add.ptr160, align 1
  br label %do.end164

do.end164:                                        ; preds = %if.else158, %if.then153
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i309 = ashr exact i64 %sext.i, 32
  %arrayidx.i310 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i309
  %30 = load i8, ptr %arrayidx.i310, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %30, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end164
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %do.end164
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_vio_entry(ptr nocapture noundef readnone %filename, ptr noundef %symval, ptr noundef %alias) #10 {
entry:
  %add.ptr1 = getelementptr i8, ptr %symval, i64 32
  %0 = load i8, ptr %symval, align 1, !tbaa !30
  %tobool.not = icmp eq i8 %0, 0
  %cond = select i1 %tobool.not, ptr @.str.15, ptr %symval
  %1 = load i8, ptr %add.ptr1, align 1, !tbaa !30
  %tobool4.not = icmp eq i8 %1, 0
  %cond9 = select i1 %tobool4.not, ptr @.str.15, ptr %add.ptr1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.131, ptr noundef nonnull %cond, ptr noundef nonnull %cond9) #18
  %tobool10.not27 = icmp eq ptr %alias, null
  br i1 %tobool10.not27, label %for.end, label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %entry
  %2 = load i8, ptr %alias, align 1, !tbaa !30
  %tobool12.not30 = icmp eq i8 %2, 0
  br i1 %tobool12.not30, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %land.rhs.preheader
  %call13 = tail call ptr @__ctype_b_loc() #19
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %3 = phi i8 [ %7, %for.inc ], [ %2, %for.body.preheader ]
  %tmp.02831 = phi ptr [ %incdec.ptr, %for.inc ], [ %alias, %for.body.preheader ]
  %4 = load ptr, ptr %call13, align 8, !tbaa !31
  %idxprom = sext i8 %3 to i64
  %arrayidx15 = getelementptr inbounds i16, ptr %4, i64 %idxprom
  %5 = load i16, ptr %arrayidx15, align 2, !tbaa !32
  %6 = and i16 %5, 8192
  %tobool17.not = icmp eq i16 %6, 0
  br i1 %tobool17.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  store i8 95, ptr %tmp.02831, align 1, !tbaa !30
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %incdec.ptr = getelementptr inbounds i8, ptr %tmp.02831, i64 1
  %7 = load i8, ptr %incdec.ptr, align 1, !tbaa !30
  %tobool12.not = icmp eq i8 %7, 0
  br i1 %tobool12.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %land.rhs.preheader, %entry
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i = ashr exact i64 %sext.i, 32
  %arrayidx.i = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i
  %8 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %8, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %for.end
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %for.end
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_input_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef %symval, ptr noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 3
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %symval, i64 2
  %1 = load i8, ptr %arrayidx.i.1, align 1, !tbaa !30
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i32
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %add.ptr2 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i230 = getelementptr i8, ptr %symval, i64 5
  %2 = load i8, ptr %arrayidx.i230, align 1, !tbaa !30
  %3 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %add.ptr5 = getelementptr i8, ptr %symval, i64 6
  %arrayidx.i240 = getelementptr i8, ptr %symval, i64 7
  %4 = load i8, ptr %arrayidx.i240, align 1, !tbaa !30
  %5 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %__x4.sroa.4.0.insert.ext = zext i8 %5 to i32
  %__x4.sroa.4.0.insert.shift = shl nuw nsw i32 %__x4.sroa.4.0.insert.ext, 8
  %__x4.sroa.0.0.insert.ext = zext i8 %4 to i32
  %__x4.sroa.0.0.insert.insert = or i32 %__x4.sroa.4.0.insert.shift, %__x4.sroa.0.0.insert.ext
  %add.ptr8 = getelementptr i8, ptr %symval, i64 8
  %arrayidx.i250 = getelementptr i8, ptr %symval, i64 9
  %6 = load i8, ptr %arrayidx.i250, align 1, !tbaa !30
  %7 = load i8, ptr %add.ptr8, align 1, !tbaa !30
  %__x7.sroa.4.0.insert.ext = zext i8 %7 to i32
  %__x7.sroa.4.0.insert.shift = shl nuw nsw i32 %__x7.sroa.4.0.insert.ext, 8
  %__x7.sroa.0.0.insert.ext = zext i8 %6 to i32
  %__x7.sroa.0.0.insert.insert = or i32 %__x7.sroa.4.0.insert.shift, %__x7.sroa.0.0.insert.ext
  %add.ptr11 = getelementptr i8, ptr %symval, i64 10
  %arrayidx.i260 = getelementptr i8, ptr %symval, i64 11
  %8 = load i8, ptr %arrayidx.i260, align 1, !tbaa !30
  %9 = load i8, ptr %add.ptr11, align 1, !tbaa !30
  %__x10.sroa.4.0.insert.ext = zext i8 %9 to i32
  %__x10.sroa.4.0.insert.shift = shl nuw nsw i32 %__x10.sroa.4.0.insert.ext, 8
  %__x10.sroa.0.0.insert.ext = zext i8 %8 to i32
  %__x10.sroa.0.0.insert.insert = or i32 %__x10.sroa.4.0.insert.shift, %__x10.sroa.0.0.insert.ext
  %add.ptr13 = getelementptr i8, ptr %symval, i64 12
  %add.ptr14 = getelementptr i8, ptr %symval, i64 16
  %add.ptr15 = getelementptr i8, ptr %symval, i64 112
  %add.ptr16 = getelementptr i8, ptr %symval, i64 116
  %add.ptr17 = getelementptr i8, ptr %symval, i64 124
  %add.ptr18 = getelementptr i8, ptr %symval, i64 128
  %add.ptr19 = getelementptr i8, ptr %symval, i64 132
  %add.ptr20 = getelementptr i8, ptr %symval, i64 136
  %add.ptr21 = getelementptr i8, ptr %symval, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %alias, ptr noundef nonnull align 1 dereferenceable(7) @.str.132, i64 7, i1 false)
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 98, ptr %endptr, align 1
  %and = and i32 %__x.sroa.0.0.insert.ext, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %__x1.sroa.4.0.insert.ext = zext i8 %3 to i32
  %__x1.sroa.4.0.insert.shift = shl nuw nsw i32 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.0.0.insert.ext = zext i8 %2 to i32
  %__x1.sroa.0.0.insert.insert = or i32 %__x1.sroa.4.0.insert.shift, %__x1.sroa.0.0.insert.ext
  %call23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr24 = getelementptr inbounds i8, ptr %alias, i64 %call23
  %call25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr24, ptr noundef nonnull @.str.14, i32 noundef %__x1.sroa.0.0.insert.insert) #18
  br label %do.body29

if.else:                                          ; preds = %entry
  %call26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr27 = getelementptr inbounds i8, ptr %alias, i64 %call26
  store i16 42, ptr %add.ptr27, align 1
  br label %do.body29

do.body29:                                        ; preds = %if.else, %if.then
  %strlen220 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr221 = getelementptr i8, ptr %alias, i64 %strlen220
  store i16 118, ptr %endptr221, align 1
  %and31 = and i32 %__x.sroa.0.0.insert.ext, 2
  %tobool32.not = icmp eq i32 %and31, 0
  %call39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr40 = getelementptr inbounds i8, ptr %alias, i64 %call39
  br i1 %tobool32.not, label %if.else38, label %if.then33

if.then33:                                        ; preds = %do.body29
  %call37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr40, ptr noundef nonnull @.str.14, i32 noundef %__x4.sroa.0.0.insert.insert) #18
  br label %do.body45

if.else38:                                        ; preds = %do.body29
  store i16 42, ptr %add.ptr40, align 1
  br label %do.body45

do.body45:                                        ; preds = %if.else38, %if.then33
  %strlen222 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr223 = getelementptr i8, ptr %alias, i64 %strlen222
  store i16 112, ptr %endptr223, align 1
  %and47 = and i32 %__x.sroa.0.0.insert.ext, 4
  %tobool48.not = icmp eq i32 %and47, 0
  %call55 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr56 = getelementptr inbounds i8, ptr %alias, i64 %call55
  br i1 %tobool48.not, label %if.else54, label %if.then49

if.then49:                                        ; preds = %do.body45
  %call53 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr56, ptr noundef nonnull @.str.14, i32 noundef %__x7.sroa.0.0.insert.insert) #18
  br label %do.body61

if.else54:                                        ; preds = %do.body45
  store i16 42, ptr %add.ptr56, align 1
  br label %do.body61

do.body61:                                        ; preds = %if.else54, %if.then49
  %strlen224 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr225 = getelementptr i8, ptr %alias, i64 %strlen224
  store i16 101, ptr %endptr225, align 1
  %and63 = and i32 %__x.sroa.0.0.insert.ext, 8
  %tobool64.not = icmp eq i32 %and63, 0
  %call71 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr72 = getelementptr inbounds i8, ptr %alias, i64 %call71
  br i1 %tobool64.not, label %if.else70, label %if.then65

if.then65:                                        ; preds = %do.body61
  %call69 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr72, ptr noundef nonnull @.str.14, i32 noundef %__x10.sroa.0.0.insert.insert) #18
  br label %do.end76

if.else70:                                        ; preds = %do.body61
  store i16 42, ptr %add.ptr72, align 1
  br label %do.end76

do.end76:                                         ; preds = %if.else70, %if.then65
  %call77 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr78 = getelementptr inbounds i8, ptr %alias, i64 %call77
  store i32 2778413, ptr %add.ptr78, align 1
  %and80 = and i32 %__x.sroa.0.0.insert.ext, 16
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end83, label %for.body.i269.preheader

for.body.i269.preheader:                          ; preds = %do.end76
  %arrayidx.i.i = getelementptr i8, ptr %symval, i64 15
  %10 = load i8, ptr %arrayidx.i.i, align 1, !tbaa !30
  %arrayidx.i.1.i = getelementptr i8, ptr %symval, i64 14
  %11 = load i8, ptr %arrayidx.i.1.i, align 1, !tbaa !30
  %arrayidx.i.2.i = getelementptr i8, ptr %symval, i64 13
  %12 = load i8, ptr %arrayidx.i.2.i, align 1, !tbaa !30
  %13 = load i8, ptr %add.ptr13, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext.i = zext i8 %13 to i32
  %__x.sroa.6.0.insert.shift.i = shl nuw i32 %__x.sroa.6.0.insert.ext.i, 24
  %__x.sroa.5.0.insert.ext.i = zext i8 %12 to i32
  %__x.sroa.5.0.insert.shift.i = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i, 16
  %__x.sroa.4.0.insert.ext.i = zext i8 %11 to i32
  %__x.sroa.4.0.insert.shift.i = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i, 8
  %__x.sroa.0.0.insert.ext.i = zext i8 %10 to i32
  %__x.sroa.5.0.insert.insert.i = or i32 %__x.sroa.4.0.insert.shift.i, %__x.sroa.0.0.insert.ext.i
  %__x.sroa.4.0.insert.insert.i = or i32 %__x.sroa.5.0.insert.insert.i, %__x.sroa.5.0.insert.shift.i
  %__x.sroa.0.0.insert.insert.i = or i32 %__x.sroa.4.0.insert.insert.i, %__x.sroa.6.0.insert.shift.i
  store i32 %__x.sroa.0.0.insert.insert.i, ptr %add.ptr13, align 4, !tbaa !16
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc11.i, %for.body.i269.preheader
  %indvars.iv = phi i64 [ 0, %for.body.i269.preheader ], [ %indvars.iv.next, %for.inc11.i ]
  %div729.i = lshr i64 %indvars.iv, 5
  %idxprom8.i = and i64 %div729.i, 134217727
  %arrayidx9.i = getelementptr inbounds i32, ptr %add.ptr13, i64 %idxprom8.i
  %14 = load i32, ptr %arrayidx9.i, align 4, !tbaa !16
  %conv.i = zext i32 %14 to i64
  %shl.i = shl nuw nsw i64 1, %indvars.iv
  %and.i = and i64 %shl.i, %conv.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %for.inc11.i, label %if.then.i

if.then.i:                                        ; preds = %for.body6.i
  %15 = trunc i64 %indvars.iv to i32
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %call.i
  %call10.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i, ptr noundef nonnull @.str.143, i32 noundef %15) #18
  br label %for.inc11.i

for.inc11.i:                                      ; preds = %if.then.i, %for.body6.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next, 31
  br i1 %exitcond35.not.i, label %if.end83, label %for.body6.i

if.end83:                                         ; preds = %for.inc11.i, %do.end76
  %call84 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr85 = getelementptr inbounds i8, ptr %alias, i64 %call84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %add.ptr85, ptr noundef nonnull align 1 dereferenceable(3) @.str.135, i64 3, i1 false)
  %and87 = and i32 %__x.sroa.0.0.insert.ext, 32
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end91, label %for.body.i288

for.body.i288:                                    ; preds = %for.body.i288.1, %if.end83
  %indvars.iv.i271 = phi i64 [ %indvars.iv.next.i286.1, %for.body.i288.1 ], [ 3, %if.end83 ]
  %arrayidx.i272 = getelementptr inbounds i32, ptr %add.ptr14, i64 %indvars.iv.i271
  %arrayidx.i.i273 = getelementptr inbounds i8, ptr %arrayidx.i272, i64 3
  %16 = load i8, ptr %arrayidx.i.i273, align 1, !tbaa !30
  %arrayidx.i.1.i274 = getelementptr inbounds i8, ptr %arrayidx.i272, i64 2
  %17 = load i8, ptr %arrayidx.i.1.i274, align 1, !tbaa !30
  %arrayidx.i.2.i275 = getelementptr inbounds i8, ptr %arrayidx.i272, i64 1
  %18 = load i8, ptr %arrayidx.i.2.i275, align 1, !tbaa !30
  %19 = load i8, ptr %arrayidx.i272, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext.i276 = zext i8 %19 to i32
  %__x.sroa.6.0.insert.shift.i277 = shl nuw i32 %__x.sroa.6.0.insert.ext.i276, 24
  %__x.sroa.5.0.insert.ext.i278 = zext i8 %18 to i32
  %__x.sroa.5.0.insert.shift.i279 = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i278, 16
  %__x.sroa.4.0.insert.ext.i281 = zext i8 %17 to i32
  %__x.sroa.4.0.insert.shift.i282 = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i281, 8
  %__x.sroa.0.0.insert.ext.i284 = zext i8 %16 to i32
  %__x.sroa.5.0.insert.insert.i280 = or i32 %__x.sroa.4.0.insert.shift.i282, %__x.sroa.0.0.insert.ext.i284
  %__x.sroa.4.0.insert.insert.i283 = or i32 %__x.sroa.5.0.insert.insert.i280, %__x.sroa.5.0.insert.shift.i279
  %__x.sroa.0.0.insert.insert.i285 = or i32 %__x.sroa.4.0.insert.insert.i283, %__x.sroa.6.0.insert.shift.i277
  store i32 %__x.sroa.0.0.insert.insert.i285, ptr %arrayidx.i272, align 4, !tbaa !16
  %indvars.iv.next.i286 = add nuw nsw i64 %indvars.iv.i271, 1
  %exitcond.i287 = icmp eq i64 %indvars.iv.next.i286, 24
  br i1 %exitcond.i287, label %for.body6.i299, label %for.body.i288.1

for.body.i288.1:                                  ; preds = %for.body.i288
  %arrayidx.i272.1 = getelementptr inbounds i32, ptr %add.ptr14, i64 %indvars.iv.next.i286
  %arrayidx.i.i273.1 = getelementptr inbounds i8, ptr %arrayidx.i272.1, i64 3
  %20 = load i8, ptr %arrayidx.i.i273.1, align 1, !tbaa !30
  %arrayidx.i.1.i274.1 = getelementptr inbounds i8, ptr %arrayidx.i272.1, i64 2
  %21 = load i8, ptr %arrayidx.i.1.i274.1, align 1, !tbaa !30
  %arrayidx.i.2.i275.1 = getelementptr inbounds i8, ptr %arrayidx.i272.1, i64 1
  %22 = load i8, ptr %arrayidx.i.2.i275.1, align 1, !tbaa !30
  %23 = load i8, ptr %arrayidx.i272.1, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext.i276.1 = zext i8 %23 to i32
  %__x.sroa.6.0.insert.shift.i277.1 = shl nuw i32 %__x.sroa.6.0.insert.ext.i276.1, 24
  %__x.sroa.5.0.insert.ext.i278.1 = zext i8 %22 to i32
  %__x.sroa.5.0.insert.shift.i279.1 = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i278.1, 16
  %__x.sroa.4.0.insert.ext.i281.1 = zext i8 %21 to i32
  %__x.sroa.4.0.insert.shift.i282.1 = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i281.1, 8
  %__x.sroa.0.0.insert.ext.i284.1 = zext i8 %20 to i32
  %__x.sroa.5.0.insert.insert.i280.1 = or i32 %__x.sroa.4.0.insert.shift.i282.1, %__x.sroa.0.0.insert.ext.i284.1
  %__x.sroa.4.0.insert.insert.i283.1 = or i32 %__x.sroa.5.0.insert.insert.i280.1, %__x.sroa.5.0.insert.shift.i279.1
  %__x.sroa.0.0.insert.insert.i285.1 = or i32 %__x.sroa.4.0.insert.insert.i283.1, %__x.sroa.6.0.insert.shift.i277.1
  store i32 %__x.sroa.0.0.insert.insert.i285.1, ptr %arrayidx.i272.1, align 4, !tbaa !16
  %indvars.iv.next.i286.1 = add nuw nsw i64 %indvars.iv.i271, 2
  br label %for.body.i288

for.body6.i299:                                   ; preds = %for.inc11.i306, %for.body.i288
  %i.133.i289 = phi i32 [ %inc12.i304, %for.inc11.i306 ], [ 113, %for.body.i288 ]
  %div729.i290 = lshr i32 %i.133.i289, 5
  %idxprom8.i291 = zext i32 %div729.i290 to i64
  %arrayidx9.i292 = getelementptr inbounds i32, ptr %add.ptr14, i64 %idxprom8.i291
  %24 = load i32, ptr %arrayidx9.i292, align 4, !tbaa !16
  %conv.i293 = zext i32 %24 to i64
  %rem.i294 = and i32 %i.133.i289, 31
  %sh_prom.i295 = zext i32 %rem.i294 to i64
  %shl.i296 = shl nuw nsw i64 1, %sh_prom.i295
  %and.i297 = and i64 %shl.i296, %conv.i293
  %tobool.not.i298 = icmp eq i64 %and.i297, 0
  br i1 %tobool.not.i298, label %for.inc11.i306, label %if.then.i303

if.then.i303:                                     ; preds = %for.body6.i299
  %call.i300 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i301 = getelementptr inbounds i8, ptr %alias, i64 %call.i300
  %call10.i302 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i301, ptr noundef nonnull @.str.143, i32 noundef %i.133.i289) #18
  br label %for.inc11.i306

for.inc11.i306:                                   ; preds = %if.then.i303, %for.body6.i299
  %inc12.i304 = add nuw nsw i32 %i.133.i289, 1
  %exitcond35.not.i305 = icmp eq i32 %inc12.i304, 767
  br i1 %exitcond35.not.i305, label %if.end91, label %for.body6.i299

if.end91:                                         ; preds = %for.inc11.i306, %if.end83
  %call92 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr93 = getelementptr inbounds i8, ptr %alias, i64 %call92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %add.ptr93, ptr noundef nonnull align 1 dereferenceable(3) @.str.136, i64 3, i1 false)
  %and95 = and i32 %__x.sroa.0.0.insert.ext, 64
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end99, label %for.body.i326.preheader

for.body.i326.preheader:                          ; preds = %if.end91
  %arrayidx.i.i311 = getelementptr i8, ptr %symval, i64 115
  %25 = load i8, ptr %arrayidx.i.i311, align 1, !tbaa !30
  %arrayidx.i.1.i312 = getelementptr i8, ptr %symval, i64 114
  %26 = load i8, ptr %arrayidx.i.1.i312, align 1, !tbaa !30
  %arrayidx.i.2.i313 = getelementptr i8, ptr %symval, i64 113
  %27 = load i8, ptr %arrayidx.i.2.i313, align 1, !tbaa !30
  %28 = load i8, ptr %add.ptr15, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext.i314 = zext i8 %28 to i32
  %__x.sroa.6.0.insert.shift.i315 = shl nuw i32 %__x.sroa.6.0.insert.ext.i314, 24
  %__x.sroa.5.0.insert.ext.i316 = zext i8 %27 to i32
  %__x.sroa.5.0.insert.shift.i317 = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i316, 16
  %__x.sroa.4.0.insert.ext.i319 = zext i8 %26 to i32
  %__x.sroa.4.0.insert.shift.i320 = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i319, 8
  %__x.sroa.0.0.insert.ext.i322 = zext i8 %25 to i32
  %__x.sroa.5.0.insert.insert.i318 = or i32 %__x.sroa.4.0.insert.shift.i320, %__x.sroa.0.0.insert.ext.i322
  %__x.sroa.4.0.insert.insert.i321 = or i32 %__x.sroa.5.0.insert.insert.i318, %__x.sroa.5.0.insert.shift.i317
  %__x.sroa.0.0.insert.insert.i323 = or i32 %__x.sroa.4.0.insert.insert.i321, %__x.sroa.6.0.insert.shift.i315
  store i32 %__x.sroa.0.0.insert.insert.i323, ptr %add.ptr15, align 4, !tbaa !16
  br label %for.body6.i337

for.body6.i337:                                   ; preds = %for.inc11.i344, %for.body.i326.preheader
  %indvars.iv576 = phi i64 [ 0, %for.body.i326.preheader ], [ %indvars.iv.next577, %for.inc11.i344 ]
  %div729.i328 = lshr i64 %indvars.iv576, 5
  %idxprom8.i329 = and i64 %div729.i328, 134217727
  %arrayidx9.i330 = getelementptr inbounds i32, ptr %add.ptr15, i64 %idxprom8.i329
  %29 = load i32, ptr %arrayidx9.i330, align 4, !tbaa !16
  %conv.i331 = zext i32 %29 to i64
  %shl.i334 = shl nuw nsw i64 1, %indvars.iv576
  %and.i335 = and i64 %shl.i334, %conv.i331
  %tobool.not.i336 = icmp eq i64 %and.i335, 0
  br i1 %tobool.not.i336, label %for.inc11.i344, label %if.then.i341

if.then.i341:                                     ; preds = %for.body6.i337
  %30 = trunc i64 %indvars.iv576 to i32
  %call.i338 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i339 = getelementptr inbounds i8, ptr %alias, i64 %call.i338
  %call10.i340 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i339, ptr noundef nonnull @.str.143, i32 noundef %30) #18
  br label %for.inc11.i344

for.inc11.i344:                                   ; preds = %if.then.i341, %for.body6.i337
  %indvars.iv.next577 = add nuw nsw i64 %indvars.iv576, 1
  %exitcond35.not.i343 = icmp eq i64 %indvars.iv.next577, 15
  br i1 %exitcond35.not.i343, label %if.end99, label %for.body6.i337

if.end99:                                         ; preds = %for.inc11.i344, %if.end91
  %call100 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr101 = getelementptr inbounds i8, ptr %alias, i64 %call100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %add.ptr101, ptr noundef nonnull align 1 dereferenceable(3) @.str.137, i64 3, i1 false)
  %and103 = and i32 %__x.sroa.0.0.insert.ext, 128
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.end107, label %for.body.i364.preheader

for.body.i364.preheader:                          ; preds = %if.end99
  %arrayidx.i.i349 = getelementptr i8, ptr %symval, i64 119
  %31 = load i8, ptr %arrayidx.i.i349, align 1, !tbaa !30
  %arrayidx.i.1.i350 = getelementptr i8, ptr %symval, i64 118
  %32 = load i8, ptr %arrayidx.i.1.i350, align 1, !tbaa !30
  %arrayidx.i.2.i351 = getelementptr i8, ptr %symval, i64 117
  %33 = load i8, ptr %arrayidx.i.2.i351, align 1, !tbaa !30
  %34 = load i8, ptr %add.ptr16, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext.i352 = zext i8 %34 to i32
  %__x.sroa.6.0.insert.shift.i353 = shl nuw i32 %__x.sroa.6.0.insert.ext.i352, 24
  %__x.sroa.5.0.insert.ext.i354 = zext i8 %33 to i32
  %__x.sroa.5.0.insert.shift.i355 = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i354, 16
  %__x.sroa.4.0.insert.ext.i357 = zext i8 %32 to i32
  %__x.sroa.4.0.insert.shift.i358 = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i357, 8
  %__x.sroa.0.0.insert.ext.i360 = zext i8 %31 to i32
  %__x.sroa.5.0.insert.insert.i356 = or i32 %__x.sroa.4.0.insert.shift.i358, %__x.sroa.0.0.insert.ext.i360
  %__x.sroa.4.0.insert.insert.i359 = or i32 %__x.sroa.5.0.insert.insert.i356, %__x.sroa.5.0.insert.shift.i355
  %__x.sroa.0.0.insert.insert.i361 = or i32 %__x.sroa.4.0.insert.insert.i359, %__x.sroa.6.0.insert.shift.i353
  store i32 %__x.sroa.0.0.insert.insert.i361, ptr %add.ptr16, align 4, !tbaa !16
  %arrayidx.i348.1 = getelementptr i8, ptr %symval, i64 120
  %arrayidx.i.i349.1 = getelementptr i8, ptr %symval, i64 123
  %35 = load i8, ptr %arrayidx.i.i349.1, align 1, !tbaa !30
  %arrayidx.i.1.i350.1 = getelementptr i8, ptr %symval, i64 122
  %36 = load i8, ptr %arrayidx.i.1.i350.1, align 1, !tbaa !30
  %arrayidx.i.2.i351.1 = getelementptr i8, ptr %symval, i64 121
  %37 = load i8, ptr %arrayidx.i.2.i351.1, align 1, !tbaa !30
  %38 = load i8, ptr %arrayidx.i348.1, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext.i352.1 = zext i8 %38 to i32
  %__x.sroa.6.0.insert.shift.i353.1 = shl nuw i32 %__x.sroa.6.0.insert.ext.i352.1, 24
  %__x.sroa.5.0.insert.ext.i354.1 = zext i8 %37 to i32
  %__x.sroa.5.0.insert.shift.i355.1 = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i354.1, 16
  %__x.sroa.4.0.insert.ext.i357.1 = zext i8 %36 to i32
  %__x.sroa.4.0.insert.shift.i358.1 = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i357.1, 8
  %__x.sroa.0.0.insert.ext.i360.1 = zext i8 %35 to i32
  %__x.sroa.5.0.insert.insert.i356.1 = or i32 %__x.sroa.4.0.insert.shift.i358.1, %__x.sroa.0.0.insert.ext.i360.1
  %__x.sroa.4.0.insert.insert.i359.1 = or i32 %__x.sroa.5.0.insert.insert.i356.1, %__x.sroa.5.0.insert.shift.i355.1
  %__x.sroa.0.0.insert.insert.i361.1 = or i32 %__x.sroa.4.0.insert.insert.i359.1, %__x.sroa.6.0.insert.shift.i353.1
  store i32 %__x.sroa.0.0.insert.insert.i361.1, ptr %arrayidx.i348.1, align 4, !tbaa !16
  br label %for.body6.i375

for.body6.i375:                                   ; preds = %for.inc11.i382, %for.body.i364.preheader
  %i.133.i365 = phi i32 [ %inc12.i380, %for.inc11.i382 ], [ 0, %for.body.i364.preheader ]
  %div729.i366 = lshr i32 %i.133.i365, 5
  %idxprom8.i367 = zext i32 %div729.i366 to i64
  %arrayidx9.i368 = getelementptr inbounds i32, ptr %add.ptr16, i64 %idxprom8.i367
  %39 = load i32, ptr %arrayidx9.i368, align 4, !tbaa !16
  %conv.i369 = zext i32 %39 to i64
  %rem.i370 = and i32 %i.133.i365, 31
  %sh_prom.i371 = zext i32 %rem.i370 to i64
  %shl.i372 = shl nuw nsw i64 1, %sh_prom.i371
  %and.i373 = and i64 %shl.i372, %conv.i369
  %tobool.not.i374 = icmp eq i64 %and.i373, 0
  br i1 %tobool.not.i374, label %for.inc11.i382, label %if.then.i379

if.then.i379:                                     ; preds = %for.body6.i375
  %call.i376 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i377 = getelementptr inbounds i8, ptr %alias, i64 %call.i376
  %call10.i378 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i377, ptr noundef nonnull @.str.143, i32 noundef %i.133.i365) #18
  br label %for.inc11.i382

for.inc11.i382:                                   ; preds = %if.then.i379, %for.body6.i375
  %inc12.i380 = add nuw nsw i32 %i.133.i365, 1
  %exitcond35.not.i381 = icmp eq i32 %inc12.i380, 63
  br i1 %exitcond35.not.i381, label %if.end107, label %for.body6.i375

if.end107:                                        ; preds = %for.inc11.i382, %if.end99
  %call108 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr109 = getelementptr inbounds i8, ptr %alias, i64 %call108
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %add.ptr109, ptr noundef nonnull align 1 dereferenceable(3) @.str.138, i64 3, i1 false)
  %40 = and i32 %__x.sroa.4.0.insert.ext, 1
  %tobool112.not = icmp eq i32 %40, 0
  br i1 %tobool112.not, label %if.end115, label %for.body.i402.preheader

for.body.i402.preheader:                          ; preds = %if.end107
  %arrayidx.i.i387 = getelementptr i8, ptr %symval, i64 127
  %41 = load i8, ptr %arrayidx.i.i387, align 1, !tbaa !30
  %arrayidx.i.1.i388 = getelementptr i8, ptr %symval, i64 126
  %42 = load i8, ptr %arrayidx.i.1.i388, align 1, !tbaa !30
  %arrayidx.i.2.i389 = getelementptr i8, ptr %symval, i64 125
  %43 = load i8, ptr %arrayidx.i.2.i389, align 1, !tbaa !30
  %44 = load i8, ptr %add.ptr17, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext.i390 = zext i8 %44 to i32
  %__x.sroa.6.0.insert.shift.i391 = shl nuw i32 %__x.sroa.6.0.insert.ext.i390, 24
  %__x.sroa.5.0.insert.ext.i392 = zext i8 %43 to i32
  %__x.sroa.5.0.insert.shift.i393 = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i392, 16
  %__x.sroa.4.0.insert.ext.i395 = zext i8 %42 to i32
  %__x.sroa.4.0.insert.shift.i396 = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i395, 8
  %__x.sroa.0.0.insert.ext.i398 = zext i8 %41 to i32
  %__x.sroa.5.0.insert.insert.i394 = or i32 %__x.sroa.4.0.insert.shift.i396, %__x.sroa.0.0.insert.ext.i398
  %__x.sroa.4.0.insert.insert.i397 = or i32 %__x.sroa.5.0.insert.insert.i394, %__x.sroa.5.0.insert.shift.i393
  %__x.sroa.0.0.insert.insert.i399 = or i32 %__x.sroa.4.0.insert.insert.i397, %__x.sroa.6.0.insert.shift.i391
  store i32 %__x.sroa.0.0.insert.insert.i399, ptr %add.ptr17, align 4, !tbaa !16
  %conv.i407 = zext i32 %__x.sroa.0.0.insert.insert.i399 to i64
  %and.i411 = and i64 %conv.i407, 1
  %tobool.not.i412 = icmp eq i64 %and.i411, 0
  br i1 %tobool.not.i412, label %for.inc11.i420, label %if.then.i417

if.then.i417:                                     ; preds = %for.body.i402.preheader
  %call.i414 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i415 = getelementptr inbounds i8, ptr %alias, i64 %call.i414
  %call10.i416 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i415, ptr noundef nonnull @.str.143, i32 noundef 0) #18
  %.pre = load i32, ptr %add.ptr17, align 4, !tbaa !16
  %.pre613 = zext i32 %.pre to i64
  br label %for.inc11.i420

for.inc11.i420:                                   ; preds = %if.then.i417, %for.body.i402.preheader
  %conv.i407.1.pre-phi = phi i64 [ %.pre613, %if.then.i417 ], [ %conv.i407, %for.body.i402.preheader ]
  %and.i411.1 = and i64 %conv.i407.1.pre-phi, 2
  %tobool.not.i412.1 = icmp eq i64 %and.i411.1, 0
  br i1 %tobool.not.i412.1, label %for.inc11.i420.1, label %if.then.i417.1

if.then.i417.1:                                   ; preds = %for.inc11.i420
  %call.i414.1 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i415.1 = getelementptr inbounds i8, ptr %alias, i64 %call.i414.1
  %call10.i416.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i415.1, ptr noundef nonnull @.str.143, i32 noundef 1) #18
  %.pre596 = load i32, ptr %add.ptr17, align 4, !tbaa !16
  %.pre614 = zext i32 %.pre596 to i64
  br label %for.inc11.i420.1

for.inc11.i420.1:                                 ; preds = %if.then.i417.1, %for.inc11.i420
  %conv.i407.2.pre-phi = phi i64 [ %.pre614, %if.then.i417.1 ], [ %conv.i407.1.pre-phi, %for.inc11.i420 ]
  %and.i411.2 = and i64 %conv.i407.2.pre-phi, 4
  %tobool.not.i412.2 = icmp eq i64 %and.i411.2, 0
  br i1 %tobool.not.i412.2, label %for.inc11.i420.2, label %if.then.i417.2

if.then.i417.2:                                   ; preds = %for.inc11.i420.1
  %call.i414.2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i415.2 = getelementptr inbounds i8, ptr %alias, i64 %call.i414.2
  %call10.i416.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i415.2, ptr noundef nonnull @.str.143, i32 noundef 2) #18
  %.pre597 = load i32, ptr %add.ptr17, align 4, !tbaa !16
  %.pre615 = zext i32 %.pre597 to i64
  br label %for.inc11.i420.2

for.inc11.i420.2:                                 ; preds = %if.then.i417.2, %for.inc11.i420.1
  %conv.i407.3.pre-phi = phi i64 [ %.pre615, %if.then.i417.2 ], [ %conv.i407.2.pre-phi, %for.inc11.i420.1 ]
  %and.i411.3 = and i64 %conv.i407.3.pre-phi, 8
  %tobool.not.i412.3 = icmp eq i64 %and.i411.3, 0
  br i1 %tobool.not.i412.3, label %for.inc11.i420.3, label %if.then.i417.3

if.then.i417.3:                                   ; preds = %for.inc11.i420.2
  %call.i414.3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i415.3 = getelementptr inbounds i8, ptr %alias, i64 %call.i414.3
  %call10.i416.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i415.3, ptr noundef nonnull @.str.143, i32 noundef 3) #18
  %.pre598 = load i32, ptr %add.ptr17, align 4, !tbaa !16
  %.pre616 = zext i32 %.pre598 to i64
  br label %for.inc11.i420.3

for.inc11.i420.3:                                 ; preds = %if.then.i417.3, %for.inc11.i420.2
  %conv.i407.4.pre-phi = phi i64 [ %.pre616, %if.then.i417.3 ], [ %conv.i407.3.pre-phi, %for.inc11.i420.2 ]
  %and.i411.4 = and i64 %conv.i407.4.pre-phi, 16
  %tobool.not.i412.4 = icmp eq i64 %and.i411.4, 0
  br i1 %tobool.not.i412.4, label %for.inc11.i420.4, label %if.then.i417.4

if.then.i417.4:                                   ; preds = %for.inc11.i420.3
  %call.i414.4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i415.4 = getelementptr inbounds i8, ptr %alias, i64 %call.i414.4
  %call10.i416.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i415.4, ptr noundef nonnull @.str.143, i32 noundef 4) #18
  %.pre599 = load i32, ptr %add.ptr17, align 4, !tbaa !16
  %.pre617 = zext i32 %.pre599 to i64
  br label %for.inc11.i420.4

for.inc11.i420.4:                                 ; preds = %if.then.i417.4, %for.inc11.i420.3
  %conv.i407.5.pre-phi = phi i64 [ %.pre617, %if.then.i417.4 ], [ %conv.i407.4.pre-phi, %for.inc11.i420.3 ]
  %and.i411.5 = and i64 %conv.i407.5.pre-phi, 32
  %tobool.not.i412.5 = icmp eq i64 %and.i411.5, 0
  br i1 %tobool.not.i412.5, label %for.inc11.i420.5, label %if.then.i417.5

if.then.i417.5:                                   ; preds = %for.inc11.i420.4
  %call.i414.5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i415.5 = getelementptr inbounds i8, ptr %alias, i64 %call.i414.5
  %call10.i416.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i415.5, ptr noundef nonnull @.str.143, i32 noundef 5) #18
  %.pre600 = load i32, ptr %add.ptr17, align 4, !tbaa !16
  %.pre618 = zext i32 %.pre600 to i64
  br label %for.inc11.i420.5

for.inc11.i420.5:                                 ; preds = %if.then.i417.5, %for.inc11.i420.4
  %conv.i407.6.pre-phi = phi i64 [ %.pre618, %if.then.i417.5 ], [ %conv.i407.5.pre-phi, %for.inc11.i420.4 ]
  %and.i411.6 = and i64 %conv.i407.6.pre-phi, 64
  %tobool.not.i412.6 = icmp eq i64 %and.i411.6, 0
  br i1 %tobool.not.i412.6, label %if.end115, label %if.then.i417.6

if.then.i417.6:                                   ; preds = %for.inc11.i420.5
  %call.i414.6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i415.6 = getelementptr inbounds i8, ptr %alias, i64 %call.i414.6
  %call10.i416.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i415.6, ptr noundef nonnull @.str.143, i32 noundef 6) #18
  br label %if.end115

if.end115:                                        ; preds = %if.then.i417.6, %for.inc11.i420.5, %if.end107
  %call116 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr117 = getelementptr inbounds i8, ptr %alias, i64 %call116
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %add.ptr117, ptr noundef nonnull align 1 dereferenceable(3) @.str.139, i64 3, i1 false)
  %45 = and i32 %__x.sroa.4.0.insert.ext, 2
  %tobool120.not = icmp eq i32 %45, 0
  br i1 %tobool120.not, label %if.end123, label %for.body.i440.preheader

for.body.i440.preheader:                          ; preds = %if.end115
  %arrayidx.i.i425 = getelementptr i8, ptr %symval, i64 131
  %46 = load i8, ptr %arrayidx.i.i425, align 1, !tbaa !30
  %arrayidx.i.1.i426 = getelementptr i8, ptr %symval, i64 130
  %47 = load i8, ptr %arrayidx.i.1.i426, align 1, !tbaa !30
  %arrayidx.i.2.i427 = getelementptr i8, ptr %symval, i64 129
  %48 = load i8, ptr %arrayidx.i.2.i427, align 1, !tbaa !30
  %49 = load i8, ptr %add.ptr18, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext.i428 = zext i8 %49 to i32
  %__x.sroa.6.0.insert.shift.i429 = shl nuw i32 %__x.sroa.6.0.insert.ext.i428, 24
  %__x.sroa.5.0.insert.ext.i430 = zext i8 %48 to i32
  %__x.sroa.5.0.insert.shift.i431 = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i430, 16
  %__x.sroa.4.0.insert.ext.i433 = zext i8 %47 to i32
  %__x.sroa.4.0.insert.shift.i434 = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i433, 8
  %__x.sroa.0.0.insert.ext.i436 = zext i8 %46 to i32
  %__x.sroa.5.0.insert.insert.i432 = or i32 %__x.sroa.4.0.insert.shift.i434, %__x.sroa.0.0.insert.ext.i436
  %__x.sroa.4.0.insert.insert.i435 = or i32 %__x.sroa.5.0.insert.insert.i432, %__x.sroa.5.0.insert.shift.i431
  %__x.sroa.0.0.insert.insert.i437 = or i32 %__x.sroa.4.0.insert.insert.i435, %__x.sroa.6.0.insert.shift.i429
  store i32 %__x.sroa.0.0.insert.insert.i437, ptr %add.ptr18, align 4, !tbaa !16
  br label %for.body6.i451

for.body6.i451:                                   ; preds = %for.inc11.i458, %for.body.i440.preheader
  %indvars.iv584 = phi i64 [ 0, %for.body.i440.preheader ], [ %indvars.iv.next585, %for.inc11.i458 ]
  %div729.i442 = lshr i64 %indvars.iv584, 5
  %idxprom8.i443 = and i64 %div729.i442, 134217727
  %arrayidx9.i444 = getelementptr inbounds i32, ptr %add.ptr18, i64 %idxprom8.i443
  %50 = load i32, ptr %arrayidx9.i444, align 4, !tbaa !16
  %conv.i445 = zext i32 %50 to i64
  %shl.i448 = shl nuw nsw i64 1, %indvars.iv584
  %and.i449 = and i64 %shl.i448, %conv.i445
  %tobool.not.i450 = icmp eq i64 %and.i449, 0
  br i1 %tobool.not.i450, label %for.inc11.i458, label %if.then.i455

if.then.i455:                                     ; preds = %for.body6.i451
  %51 = trunc i64 %indvars.iv584 to i32
  %call.i452 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i453 = getelementptr inbounds i8, ptr %alias, i64 %call.i452
  %call10.i454 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i453, ptr noundef nonnull @.str.143, i32 noundef %51) #18
  br label %for.inc11.i458

for.inc11.i458:                                   ; preds = %if.then.i455, %for.body6.i451
  %indvars.iv.next585 = add nuw nsw i64 %indvars.iv584, 1
  %exitcond35.not.i457 = icmp eq i64 %indvars.iv.next585, 15
  br i1 %exitcond35.not.i457, label %if.end123, label %for.body6.i451

if.end123:                                        ; preds = %for.inc11.i458, %if.end115
  %call124 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr125 = getelementptr inbounds i8, ptr %alias, i64 %call124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %add.ptr125, ptr noundef nonnull align 1 dereferenceable(3) @.str.140, i64 3, i1 false)
  %52 = and i32 %__x.sroa.4.0.insert.ext, 4
  %tobool128.not = icmp eq i32 %52, 0
  br i1 %tobool128.not, label %if.end131, label %for.body.i478.preheader

for.body.i478.preheader:                          ; preds = %if.end123
  %arrayidx.i.i463 = getelementptr i8, ptr %symval, i64 135
  %53 = load i8, ptr %arrayidx.i.i463, align 1, !tbaa !30
  %arrayidx.i.1.i464 = getelementptr i8, ptr %symval, i64 134
  %54 = load i8, ptr %arrayidx.i.1.i464, align 1, !tbaa !30
  %arrayidx.i.2.i465 = getelementptr i8, ptr %symval, i64 133
  %55 = load i8, ptr %arrayidx.i.2.i465, align 1, !tbaa !30
  %56 = load i8, ptr %add.ptr19, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext.i466 = zext i8 %56 to i32
  %__x.sroa.6.0.insert.shift.i467 = shl nuw i32 %__x.sroa.6.0.insert.ext.i466, 24
  %__x.sroa.5.0.insert.ext.i468 = zext i8 %55 to i32
  %__x.sroa.5.0.insert.shift.i469 = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i468, 16
  %__x.sroa.4.0.insert.ext.i471 = zext i8 %54 to i32
  %__x.sroa.4.0.insert.shift.i472 = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i471, 8
  %__x.sroa.0.0.insert.ext.i474 = zext i8 %53 to i32
  %__x.sroa.5.0.insert.insert.i470 = or i32 %__x.sroa.4.0.insert.shift.i472, %__x.sroa.0.0.insert.ext.i474
  %__x.sroa.4.0.insert.insert.i473 = or i32 %__x.sroa.5.0.insert.insert.i470, %__x.sroa.5.0.insert.shift.i469
  %__x.sroa.0.0.insert.insert.i475 = or i32 %__x.sroa.4.0.insert.insert.i473, %__x.sroa.6.0.insert.shift.i467
  store i32 %__x.sroa.0.0.insert.insert.i475, ptr %add.ptr19, align 4, !tbaa !16
  %conv.i483 = zext i32 %__x.sroa.0.0.insert.insert.i475 to i64
  %and.i487 = and i64 %conv.i483, 1
  %tobool.not.i488 = icmp eq i64 %and.i487, 0
  br i1 %tobool.not.i488, label %for.inc11.i496, label %if.then.i493

if.then.i493:                                     ; preds = %for.body.i478.preheader
  %call.i490 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i491 = getelementptr inbounds i8, ptr %alias, i64 %call.i490
  %call10.i492 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i491, ptr noundef nonnull @.str.143, i32 noundef 0) #18
  %.pre601 = load i32, ptr %add.ptr19, align 4, !tbaa !16
  %.pre607 = zext i32 %.pre601 to i64
  br label %for.inc11.i496

for.inc11.i496:                                   ; preds = %if.then.i493, %for.body.i478.preheader
  %conv.i483.1.pre-phi = phi i64 [ %.pre607, %if.then.i493 ], [ %conv.i483, %for.body.i478.preheader ]
  %and.i487.1 = and i64 %conv.i483.1.pre-phi, 2
  %tobool.not.i488.1 = icmp eq i64 %and.i487.1, 0
  br i1 %tobool.not.i488.1, label %for.inc11.i496.1, label %if.then.i493.1

if.then.i493.1:                                   ; preds = %for.inc11.i496
  %call.i490.1 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i491.1 = getelementptr inbounds i8, ptr %alias, i64 %call.i490.1
  %call10.i492.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i491.1, ptr noundef nonnull @.str.143, i32 noundef 1) #18
  %.pre602 = load i32, ptr %add.ptr19, align 4, !tbaa !16
  %.pre608 = zext i32 %.pre602 to i64
  br label %for.inc11.i496.1

for.inc11.i496.1:                                 ; preds = %if.then.i493.1, %for.inc11.i496
  %conv.i483.2.pre-phi = phi i64 [ %.pre608, %if.then.i493.1 ], [ %conv.i483.1.pre-phi, %for.inc11.i496 ]
  %and.i487.2 = and i64 %conv.i483.2.pre-phi, 4
  %tobool.not.i488.2 = icmp eq i64 %and.i487.2, 0
  br i1 %tobool.not.i488.2, label %for.inc11.i496.2, label %if.then.i493.2

if.then.i493.2:                                   ; preds = %for.inc11.i496.1
  %call.i490.2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i491.2 = getelementptr inbounds i8, ptr %alias, i64 %call.i490.2
  %call10.i492.2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i491.2, ptr noundef nonnull @.str.143, i32 noundef 2) #18
  %.pre603 = load i32, ptr %add.ptr19, align 4, !tbaa !16
  %.pre609 = zext i32 %.pre603 to i64
  br label %for.inc11.i496.2

for.inc11.i496.2:                                 ; preds = %if.then.i493.2, %for.inc11.i496.1
  %conv.i483.3.pre-phi = phi i64 [ %.pre609, %if.then.i493.2 ], [ %conv.i483.2.pre-phi, %for.inc11.i496.1 ]
  %and.i487.3 = and i64 %conv.i483.3.pre-phi, 8
  %tobool.not.i488.3 = icmp eq i64 %and.i487.3, 0
  br i1 %tobool.not.i488.3, label %for.inc11.i496.3, label %if.then.i493.3

if.then.i493.3:                                   ; preds = %for.inc11.i496.2
  %call.i490.3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i491.3 = getelementptr inbounds i8, ptr %alias, i64 %call.i490.3
  %call10.i492.3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i491.3, ptr noundef nonnull @.str.143, i32 noundef 3) #18
  %.pre604 = load i32, ptr %add.ptr19, align 4, !tbaa !16
  %.pre610 = zext i32 %.pre604 to i64
  br label %for.inc11.i496.3

for.inc11.i496.3:                                 ; preds = %if.then.i493.3, %for.inc11.i496.2
  %conv.i483.4.pre-phi = phi i64 [ %.pre610, %if.then.i493.3 ], [ %conv.i483.3.pre-phi, %for.inc11.i496.2 ]
  %and.i487.4 = and i64 %conv.i483.4.pre-phi, 16
  %tobool.not.i488.4 = icmp eq i64 %and.i487.4, 0
  br i1 %tobool.not.i488.4, label %for.inc11.i496.4, label %if.then.i493.4

if.then.i493.4:                                   ; preds = %for.inc11.i496.3
  %call.i490.4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i491.4 = getelementptr inbounds i8, ptr %alias, i64 %call.i490.4
  %call10.i492.4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i491.4, ptr noundef nonnull @.str.143, i32 noundef 4) #18
  %.pre605 = load i32, ptr %add.ptr19, align 4, !tbaa !16
  %.pre611 = zext i32 %.pre605 to i64
  br label %for.inc11.i496.4

for.inc11.i496.4:                                 ; preds = %if.then.i493.4, %for.inc11.i496.3
  %conv.i483.5.pre-phi = phi i64 [ %.pre611, %if.then.i493.4 ], [ %conv.i483.4.pre-phi, %for.inc11.i496.3 ]
  %and.i487.5 = and i64 %conv.i483.5.pre-phi, 32
  %tobool.not.i488.5 = icmp eq i64 %and.i487.5, 0
  br i1 %tobool.not.i488.5, label %for.inc11.i496.5, label %if.then.i493.5

if.then.i493.5:                                   ; preds = %for.inc11.i496.4
  %call.i490.5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i491.5 = getelementptr inbounds i8, ptr %alias, i64 %call.i490.5
  %call10.i492.5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i491.5, ptr noundef nonnull @.str.143, i32 noundef 5) #18
  %.pre606 = load i32, ptr %add.ptr19, align 4, !tbaa !16
  %.pre612 = zext i32 %.pre606 to i64
  br label %for.inc11.i496.5

for.inc11.i496.5:                                 ; preds = %if.then.i493.5, %for.inc11.i496.4
  %conv.i483.6.pre-phi = phi i64 [ %.pre612, %if.then.i493.5 ], [ %conv.i483.5.pre-phi, %for.inc11.i496.4 ]
  %and.i487.6 = and i64 %conv.i483.6.pre-phi, 64
  %tobool.not.i488.6 = icmp eq i64 %and.i487.6, 0
  br i1 %tobool.not.i488.6, label %if.end131, label %if.then.i493.6

if.then.i493.6:                                   ; preds = %for.inc11.i496.5
  %call.i490.6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i491.6 = getelementptr inbounds i8, ptr %alias, i64 %call.i490.6
  %call10.i492.6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i491.6, ptr noundef nonnull @.str.143, i32 noundef 6) #18
  br label %if.end131

if.end131:                                        ; preds = %if.then.i493.6, %for.inc11.i496.5, %if.end123
  %call132 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr133 = getelementptr inbounds i8, ptr %alias, i64 %call132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %add.ptr133, ptr noundef nonnull align 1 dereferenceable(3) @.str.141, i64 3, i1 false)
  %57 = and i32 %__x.sroa.4.0.insert.ext, 8
  %tobool136.not = icmp eq i32 %57, 0
  br i1 %tobool136.not, label %if.end139, label %for.body.i516.preheader

for.body.i516.preheader:                          ; preds = %if.end131
  %arrayidx.i.i501 = getelementptr i8, ptr %symval, i64 139
  %58 = load i8, ptr %arrayidx.i.i501, align 1, !tbaa !30
  %arrayidx.i.1.i502 = getelementptr i8, ptr %symval, i64 138
  %59 = load i8, ptr %arrayidx.i.1.i502, align 1, !tbaa !30
  %arrayidx.i.2.i503 = getelementptr i8, ptr %symval, i64 137
  %60 = load i8, ptr %arrayidx.i.2.i503, align 1, !tbaa !30
  %61 = load i8, ptr %add.ptr20, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext.i504 = zext i8 %61 to i32
  %__x.sroa.6.0.insert.shift.i505 = shl nuw i32 %__x.sroa.6.0.insert.ext.i504, 24
  %__x.sroa.5.0.insert.ext.i506 = zext i8 %60 to i32
  %__x.sroa.5.0.insert.shift.i507 = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i506, 16
  %__x.sroa.4.0.insert.ext.i509 = zext i8 %59 to i32
  %__x.sroa.4.0.insert.shift.i510 = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i509, 8
  %__x.sroa.0.0.insert.ext.i512 = zext i8 %58 to i32
  %__x.sroa.5.0.insert.insert.i508 = or i32 %__x.sroa.4.0.insert.shift.i510, %__x.sroa.0.0.insert.ext.i512
  %__x.sroa.4.0.insert.insert.i511 = or i32 %__x.sroa.5.0.insert.insert.i508, %__x.sroa.5.0.insert.shift.i507
  %__x.sroa.0.0.insert.insert.i513 = or i32 %__x.sroa.4.0.insert.insert.i511, %__x.sroa.6.0.insert.shift.i505
  store i32 %__x.sroa.0.0.insert.insert.i513, ptr %add.ptr20, align 4, !tbaa !16
  %arrayidx.i500.1 = getelementptr i8, ptr %symval, i64 140
  %arrayidx.i.i501.1 = getelementptr i8, ptr %symval, i64 143
  %62 = load i8, ptr %arrayidx.i.i501.1, align 1, !tbaa !30
  %arrayidx.i.1.i502.1 = getelementptr i8, ptr %symval, i64 142
  %63 = load i8, ptr %arrayidx.i.1.i502.1, align 1, !tbaa !30
  %arrayidx.i.2.i503.1 = getelementptr i8, ptr %symval, i64 141
  %64 = load i8, ptr %arrayidx.i.2.i503.1, align 1, !tbaa !30
  %65 = load i8, ptr %arrayidx.i500.1, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext.i504.1 = zext i8 %65 to i32
  %__x.sroa.6.0.insert.shift.i505.1 = shl nuw i32 %__x.sroa.6.0.insert.ext.i504.1, 24
  %__x.sroa.5.0.insert.ext.i506.1 = zext i8 %64 to i32
  %__x.sroa.5.0.insert.shift.i507.1 = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i506.1, 16
  %__x.sroa.4.0.insert.ext.i509.1 = zext i8 %63 to i32
  %__x.sroa.4.0.insert.shift.i510.1 = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i509.1, 8
  %__x.sroa.0.0.insert.ext.i512.1 = zext i8 %62 to i32
  %__x.sroa.5.0.insert.insert.i508.1 = or i32 %__x.sroa.4.0.insert.shift.i510.1, %__x.sroa.0.0.insert.ext.i512.1
  %__x.sroa.4.0.insert.insert.i511.1 = or i32 %__x.sroa.5.0.insert.insert.i508.1, %__x.sroa.5.0.insert.shift.i507.1
  %__x.sroa.0.0.insert.insert.i513.1 = or i32 %__x.sroa.4.0.insert.insert.i511.1, %__x.sroa.6.0.insert.shift.i505.1
  store i32 %__x.sroa.0.0.insert.insert.i513.1, ptr %arrayidx.i500.1, align 4, !tbaa !16
  %arrayidx.i500.2 = getelementptr i8, ptr %symval, i64 144
  %arrayidx.i.i501.2 = getelementptr i8, ptr %symval, i64 147
  %66 = load i8, ptr %arrayidx.i.i501.2, align 1, !tbaa !30
  %arrayidx.i.1.i502.2 = getelementptr i8, ptr %symval, i64 146
  %67 = load i8, ptr %arrayidx.i.1.i502.2, align 1, !tbaa !30
  %arrayidx.i.2.i503.2 = getelementptr i8, ptr %symval, i64 145
  %68 = load i8, ptr %arrayidx.i.2.i503.2, align 1, !tbaa !30
  %69 = load i8, ptr %arrayidx.i500.2, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext.i504.2 = zext i8 %69 to i32
  %__x.sroa.6.0.insert.shift.i505.2 = shl nuw i32 %__x.sroa.6.0.insert.ext.i504.2, 24
  %__x.sroa.5.0.insert.ext.i506.2 = zext i8 %68 to i32
  %__x.sroa.5.0.insert.shift.i507.2 = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i506.2, 16
  %__x.sroa.4.0.insert.ext.i509.2 = zext i8 %67 to i32
  %__x.sroa.4.0.insert.shift.i510.2 = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i509.2, 8
  %__x.sroa.0.0.insert.ext.i512.2 = zext i8 %66 to i32
  %__x.sroa.5.0.insert.insert.i508.2 = or i32 %__x.sroa.4.0.insert.shift.i510.2, %__x.sroa.0.0.insert.ext.i512.2
  %__x.sroa.4.0.insert.insert.i511.2 = or i32 %__x.sroa.5.0.insert.insert.i508.2, %__x.sroa.5.0.insert.shift.i507.2
  %__x.sroa.0.0.insert.insert.i513.2 = or i32 %__x.sroa.4.0.insert.insert.i511.2, %__x.sroa.6.0.insert.shift.i505.2
  store i32 %__x.sroa.0.0.insert.insert.i513.2, ptr %arrayidx.i500.2, align 4, !tbaa !16
  %arrayidx.i500.3 = getelementptr i8, ptr %symval, i64 148
  %arrayidx.i.i501.3 = getelementptr i8, ptr %symval, i64 151
  %70 = load i8, ptr %arrayidx.i.i501.3, align 1, !tbaa !30
  %arrayidx.i.1.i502.3 = getelementptr i8, ptr %symval, i64 150
  %71 = load i8, ptr %arrayidx.i.1.i502.3, align 1, !tbaa !30
  %arrayidx.i.2.i503.3 = getelementptr i8, ptr %symval, i64 149
  %72 = load i8, ptr %arrayidx.i.2.i503.3, align 1, !tbaa !30
  %73 = load i8, ptr %arrayidx.i500.3, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext.i504.3 = zext i8 %73 to i32
  %__x.sroa.6.0.insert.shift.i505.3 = shl nuw i32 %__x.sroa.6.0.insert.ext.i504.3, 24
  %__x.sroa.5.0.insert.ext.i506.3 = zext i8 %72 to i32
  %__x.sroa.5.0.insert.shift.i507.3 = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i506.3, 16
  %__x.sroa.4.0.insert.ext.i509.3 = zext i8 %71 to i32
  %__x.sroa.4.0.insert.shift.i510.3 = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i509.3, 8
  %__x.sroa.0.0.insert.ext.i512.3 = zext i8 %70 to i32
  %__x.sroa.5.0.insert.insert.i508.3 = or i32 %__x.sroa.4.0.insert.shift.i510.3, %__x.sroa.0.0.insert.ext.i512.3
  %__x.sroa.4.0.insert.insert.i511.3 = or i32 %__x.sroa.5.0.insert.insert.i508.3, %__x.sroa.5.0.insert.shift.i507.3
  %__x.sroa.0.0.insert.insert.i513.3 = or i32 %__x.sroa.4.0.insert.insert.i511.3, %__x.sroa.6.0.insert.shift.i505.3
  store i32 %__x.sroa.0.0.insert.insert.i513.3, ptr %arrayidx.i500.3, align 4, !tbaa !16
  br label %for.body6.i527

for.body6.i527:                                   ; preds = %for.inc11.i534, %for.body.i516.preheader
  %i.133.i517 = phi i32 [ %inc12.i532, %for.inc11.i534 ], [ 0, %for.body.i516.preheader ]
  %div729.i518 = lshr i32 %i.133.i517, 5
  %idxprom8.i519 = zext i32 %div729.i518 to i64
  %arrayidx9.i520 = getelementptr inbounds i32, ptr %add.ptr20, i64 %idxprom8.i519
  %74 = load i32, ptr %arrayidx9.i520, align 4, !tbaa !16
  %conv.i521 = zext i32 %74 to i64
  %rem.i522 = and i32 %i.133.i517, 31
  %sh_prom.i523 = zext i32 %rem.i522 to i64
  %shl.i524 = shl nuw nsw i64 1, %sh_prom.i523
  %and.i525 = and i64 %shl.i524, %conv.i521
  %tobool.not.i526 = icmp eq i64 %and.i525, 0
  br i1 %tobool.not.i526, label %for.inc11.i534, label %if.then.i531

if.then.i531:                                     ; preds = %for.body6.i527
  %call.i528 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i529 = getelementptr inbounds i8, ptr %alias, i64 %call.i528
  %call10.i530 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i529, ptr noundef nonnull @.str.143, i32 noundef %i.133.i517) #18
  br label %for.inc11.i534

for.inc11.i534:                                   ; preds = %if.then.i531, %for.body6.i527
  %inc12.i532 = add nuw nsw i32 %i.133.i517, 1
  %exitcond35.not.i533 = icmp eq i32 %inc12.i532, 127
  br i1 %exitcond35.not.i533, label %if.end139, label %for.body6.i527

if.end139:                                        ; preds = %for.inc11.i534, %if.end131
  %call140 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr141 = getelementptr inbounds i8, ptr %alias, i64 %call140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %add.ptr141, ptr noundef nonnull align 1 dereferenceable(3) @.str.142, i64 3, i1 false)
  %75 = and i32 %__x.sroa.4.0.insert.ext, 16
  %tobool144.not = icmp eq i32 %75, 0
  br i1 %tobool144.not, label %if.end147, label %for.body.i554.preheader

for.body.i554.preheader:                          ; preds = %if.end139
  %arrayidx.i.i539 = getelementptr i8, ptr %symval, i64 155
  %76 = load i8, ptr %arrayidx.i.i539, align 1, !tbaa !30
  %arrayidx.i.1.i540 = getelementptr i8, ptr %symval, i64 154
  %77 = load i8, ptr %arrayidx.i.1.i540, align 1, !tbaa !30
  %arrayidx.i.2.i541 = getelementptr i8, ptr %symval, i64 153
  %78 = load i8, ptr %arrayidx.i.2.i541, align 1, !tbaa !30
  %79 = load i8, ptr %add.ptr21, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext.i542 = zext i8 %79 to i32
  %__x.sroa.6.0.insert.shift.i543 = shl nuw i32 %__x.sroa.6.0.insert.ext.i542, 24
  %__x.sroa.5.0.insert.ext.i544 = zext i8 %78 to i32
  %__x.sroa.5.0.insert.shift.i545 = shl nuw nsw i32 %__x.sroa.5.0.insert.ext.i544, 16
  %__x.sroa.4.0.insert.ext.i547 = zext i8 %77 to i32
  %__x.sroa.4.0.insert.shift.i548 = shl nuw nsw i32 %__x.sroa.4.0.insert.ext.i547, 8
  %__x.sroa.0.0.insert.ext.i550 = zext i8 %76 to i32
  %__x.sroa.5.0.insert.insert.i546 = or i32 %__x.sroa.4.0.insert.shift.i548, %__x.sroa.0.0.insert.ext.i550
  %__x.sroa.4.0.insert.insert.i549 = or i32 %__x.sroa.5.0.insert.insert.i546, %__x.sroa.5.0.insert.shift.i545
  %__x.sroa.0.0.insert.insert.i551 = or i32 %__x.sroa.4.0.insert.insert.i549, %__x.sroa.6.0.insert.shift.i543
  store i32 %__x.sroa.0.0.insert.insert.i551, ptr %add.ptr21, align 4, !tbaa !16
  br label %for.body6.i565

for.body6.i565:                                   ; preds = %for.inc11.i572, %for.body.i554.preheader
  %indvars.iv592 = phi i64 [ 0, %for.body.i554.preheader ], [ %indvars.iv.next593, %for.inc11.i572 ]
  %div729.i556 = lshr i64 %indvars.iv592, 5
  %idxprom8.i557 = and i64 %div729.i556, 134217727
  %arrayidx9.i558 = getelementptr inbounds i32, ptr %add.ptr21, i64 %idxprom8.i557
  %80 = load i32, ptr %arrayidx9.i558, align 4, !tbaa !16
  %conv.i559 = zext i32 %80 to i64
  %shl.i562 = shl nuw nsw i64 1, %indvars.iv592
  %and.i563 = and i64 %shl.i562, %conv.i559
  %tobool.not.i564 = icmp eq i64 %and.i563, 0
  br i1 %tobool.not.i564, label %for.inc11.i572, label %if.then.i569

if.then.i569:                                     ; preds = %for.body6.i565
  %81 = trunc i64 %indvars.iv592 to i32
  %call.i566 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr.i567 = getelementptr inbounds i8, ptr %alias, i64 %call.i566
  %call10.i568 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i567, ptr noundef nonnull @.str.143, i32 noundef %81) #18
  br label %for.inc11.i572

for.inc11.i572:                                   ; preds = %if.then.i569, %for.body6.i565
  %indvars.iv.next593 = add nuw nsw i64 %indvars.iv592, 1
  %exitcond35.not.i571 = icmp eq i64 %indvars.iv.next593, 16
  br i1 %exitcond35.not.i571, label %if.end147, label %for.body6.i565

if.end147:                                        ; preds = %for.inc11.i572, %if.end139
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_eisa_entry(ptr nocapture noundef readnone %filename, ptr noundef %symval, ptr nocapture noundef %alias) #10 {
entry:
  %tobool.not = icmp eq ptr %symval, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.144, ptr noundef nonnull %symval) #18
  br label %if.end

if.else:                                          ; preds = %entry
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 42, ptr %endptr, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_parisc_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #10 {
entry:
  %0 = load i8, ptr %symval, align 1, !tbaa !30
  %add.ptr2 = getelementptr i8, ptr %symval, i64 2
  %arrayidx.i106 = getelementptr i8, ptr %symval, i64 3
  %1 = load i8, ptr %arrayidx.i106, align 1, !tbaa !30
  %2 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %__x1.sroa.4.0.insert.ext = zext i8 %2 to i16
  %__x1.sroa.4.0.insert.shift = shl nuw i16 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.0.0.insert.ext = zext i8 %1 to i16
  %__x1.sroa.0.0.insert.insert = or i16 %__x1.sroa.4.0.insert.shift, %__x1.sroa.0.0.insert.ext
  %add.ptr5 = getelementptr i8, ptr %symval, i64 1
  %3 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %add.ptr8 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i126 = getelementptr i8, ptr %symval, i64 7
  %4 = load i8, ptr %arrayidx.i126, align 1, !tbaa !30
  %arrayidx.i126.1 = getelementptr i8, ptr %symval, i64 6
  %5 = load i8, ptr %arrayidx.i126.1, align 1, !tbaa !30
  %arrayidx.i126.2 = getelementptr i8, ptr %symval, i64 5
  %6 = load i8, ptr %arrayidx.i126.2, align 1, !tbaa !30
  %7 = load i8, ptr %add.ptr8, align 1, !tbaa !30
  %__x7.sroa.6.0.insert.ext = zext i8 %7 to i32
  %__x7.sroa.6.0.insert.shift = shl nuw i32 %__x7.sroa.6.0.insert.ext, 24
  %__x7.sroa.5.0.insert.ext = zext i8 %6 to i32
  %__x7.sroa.5.0.insert.shift = shl nuw nsw i32 %__x7.sroa.5.0.insert.ext, 16
  %__x7.sroa.5.0.insert.insert = or i32 %__x7.sroa.6.0.insert.shift, %__x7.sroa.5.0.insert.shift
  %__x7.sroa.4.0.insert.ext = zext i8 %5 to i32
  %__x7.sroa.4.0.insert.shift = shl nuw nsw i32 %__x7.sroa.4.0.insert.ext, 8
  %__x7.sroa.4.0.insert.insert = or i32 %__x7.sroa.5.0.insert.insert, %__x7.sroa.4.0.insert.shift
  %__x7.sroa.0.0.insert.ext = zext i8 %4 to i32
  %__x7.sroa.0.0.insert.insert = or i32 %__x7.sroa.4.0.insert.insert, %__x7.sroa.0.0.insert.ext
  store i64 16434895990710640, ptr %alias, align 1
  %strlen = tail call i64 @strlen(ptr nonnull %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 116, ptr %endptr, align 1
  %cmp.not = icmp eq i8 %0, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i8 %0 to i32
  %call12 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr13 = getelementptr inbounds i8, ptr %alias, i64 %call12
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr13, ptr noundef nonnull @.str.26, i32 noundef %conv) #18
  br label %do.body19

if.else:                                          ; preds = %entry
  %call16 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr17 = getelementptr inbounds i8, ptr %alias, i64 %call16
  store i16 42, ptr %add.ptr17, align 1
  br label %do.body19

do.body19:                                        ; preds = %if.else, %if.then
  %strlen96 = tail call i64 @strlen(ptr nonnull %alias)
  %endptr97 = getelementptr i8, ptr %alias, i64 %strlen96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr97, ptr noundef nonnull align 1 dereferenceable(3) @.str.146, i64 3, i1 false)
  %cmp22.not = icmp eq i16 %__x1.sroa.0.0.insert.insert, -1
  br i1 %cmp22.not, label %if.else29, label %if.then24

if.then24:                                        ; preds = %do.body19
  %conv21 = zext i16 %__x1.sroa.0.0.insert.insert to i32
  %call25 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr26 = getelementptr inbounds i8, ptr %alias, i64 %call25
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr26, ptr noundef nonnull @.str.14, i32 noundef %conv21) #18
  br label %do.body36

if.else29:                                        ; preds = %do.body19
  %call30 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr31 = getelementptr inbounds i8, ptr %alias, i64 %call30
  store i16 42, ptr %add.ptr31, align 1
  br label %do.body36

do.body36:                                        ; preds = %if.else29, %if.then24
  %strlen98 = tail call i64 @strlen(ptr nonnull %alias)
  %endptr99 = getelementptr i8, ptr %alias, i64 %strlen98
  store i32 7759218, ptr %endptr99, align 1
  %cmp39.not = icmp eq i8 %3, -1
  br i1 %cmp39.not, label %if.else46, label %if.then41

if.then41:                                        ; preds = %do.body36
  %conv38 = zext i8 %3 to i32
  %call42 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr43 = getelementptr inbounds i8, ptr %alias, i64 %call42
  %call45 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr43, ptr noundef nonnull @.str.26, i32 noundef %conv38) #18
  br label %do.body53

if.else46:                                        ; preds = %do.body36
  %call47 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr48 = getelementptr inbounds i8, ptr %alias, i64 %call47
  store i16 42, ptr %add.ptr48, align 1
  br label %do.body53

do.body53:                                        ; preds = %if.else46, %if.then41
  %strlen100 = tail call i64 @strlen(ptr nonnull %alias)
  %endptr101 = getelementptr i8, ptr %alias, i64 %strlen100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr101, ptr noundef nonnull align 1 dereferenceable(3) @.str.99, i64 3, i1 false)
  %cmp55.not = icmp eq i32 %__x7.sroa.0.0.insert.insert, -1
  %call62 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr63 = getelementptr inbounds i8, ptr %alias, i64 %call62
  br i1 %cmp55.not, label %if.else61, label %if.then57

if.then57:                                        ; preds = %do.body53
  %call60 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr63, ptr noundef nonnull @.str.90, i32 noundef %__x7.sroa.0.0.insert.insert) #18
  br label %do.end67

if.else61:                                        ; preds = %do.body53
  store i16 42, ptr %add.ptr63, align 1
  br label %do.end67

do.end67:                                         ; preds = %if.else61, %if.then57
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i132 = ashr exact i64 %sext.i, 32
  %arrayidx.i133 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i132
  %8 = load i8, ptr %arrayidx.i133, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %8, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end67
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %do.end67
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_sdio_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #10 {
entry:
  %0 = load i8, ptr %symval, align 1, !tbaa !30
  %add.ptr2 = getelementptr i8, ptr %symval, i64 2
  %arrayidx.i79 = getelementptr i8, ptr %symval, i64 3
  %1 = load i8, ptr %arrayidx.i79, align 1, !tbaa !30
  %2 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %__x1.sroa.4.0.insert.ext = zext i8 %2 to i16
  %__x1.sroa.4.0.insert.shift = shl nuw i16 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.0.0.insert.ext = zext i8 %1 to i16
  %__x1.sroa.0.0.insert.insert = or i16 %__x1.sroa.4.0.insert.shift, %__x1.sroa.0.0.insert.ext
  %add.ptr5 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i89 = getelementptr i8, ptr %symval, i64 5
  %3 = load i8, ptr %arrayidx.i89, align 1, !tbaa !30
  %4 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %__x4.sroa.4.0.insert.ext = zext i8 %4 to i16
  %__x4.sroa.4.0.insert.shift = shl nuw i16 %__x4.sroa.4.0.insert.ext, 8
  %__x4.sroa.0.0.insert.ext = zext i8 %3 to i16
  %__x4.sroa.0.0.insert.insert = or i16 %__x4.sroa.4.0.insert.shift, %__x4.sroa.0.0.insert.ext
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %alias, ptr noundef nonnull align 1 dereferenceable(6) @.str.148, i64 6, i1 false) #18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 99, ptr %endptr, align 1
  %cmp.not = icmp eq i8 %0, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i8 %0 to i32
  %call9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr10 = getelementptr inbounds i8, ptr %alias, i64 %call9
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr10, ptr noundef nonnull @.str.26, i32 noundef %conv) #18
  br label %do.body16

if.else:                                          ; preds = %entry
  %call13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr14 = getelementptr inbounds i8, ptr %alias, i64 %call13
  store i16 42, ptr %add.ptr14, align 1
  br label %do.body16

do.body16:                                        ; preds = %if.else, %if.then
  %strlen71 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr72 = getelementptr i8, ptr %alias, i64 %strlen71
  store i16 118, ptr %endptr72, align 1
  %cmp19.not = icmp eq i16 %__x1.sroa.0.0.insert.insert, -1
  br i1 %cmp19.not, label %if.else26, label %if.then21

if.then21:                                        ; preds = %do.body16
  %conv18 = zext i16 %__x1.sroa.0.0.insert.insert to i32
  %call22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr23 = getelementptr inbounds i8, ptr %alias, i64 %call22
  %call25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr23, ptr noundef nonnull @.str.14, i32 noundef %conv18) #18
  br label %do.body33

if.else26:                                        ; preds = %do.body16
  %call27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr28 = getelementptr inbounds i8, ptr %alias, i64 %call27
  store i16 42, ptr %add.ptr28, align 1
  br label %do.body33

do.body33:                                        ; preds = %if.else26, %if.then21
  %strlen73 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr74 = getelementptr i8, ptr %alias, i64 %strlen73
  store i16 100, ptr %endptr74, align 1
  %cmp36.not = icmp eq i16 %__x4.sroa.0.0.insert.insert, -1
  br i1 %cmp36.not, label %if.else43, label %if.then38

if.then38:                                        ; preds = %do.body33
  %conv35 = zext i16 %__x4.sroa.0.0.insert.insert to i32
  %call39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr40 = getelementptr inbounds i8, ptr %alias, i64 %call39
  %call42 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr40, ptr noundef nonnull @.str.14, i32 noundef %conv35) #18
  br label %do.end49

if.else43:                                        ; preds = %do.body33
  %call44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr45 = getelementptr inbounds i8, ptr %alias, i64 %call44
  store i16 42, ptr %add.ptr45, align 1
  br label %do.end49

do.end49:                                         ; preds = %if.else43, %if.then38
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i95 = ashr exact i64 %sext.i, 32
  %arrayidx.i96 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i95
  %5 = load i8, ptr %arrayidx.i96, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %5, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end49
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %do.end49
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_ssb_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 1
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %1 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i16
  %__x.sroa.4.0.insert.shift = shl nuw i16 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i16
  %__x.sroa.0.0.insert.insert = or i16 %__x.sroa.4.0.insert.shift, %__x.sroa.0.0.insert.ext
  %add.ptr2 = getelementptr i8, ptr %symval, i64 2
  %arrayidx.i79 = getelementptr i8, ptr %symval, i64 3
  %2 = load i8, ptr %arrayidx.i79, align 1, !tbaa !30
  %3 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %__x1.sroa.4.0.insert.ext = zext i8 %3 to i16
  %__x1.sroa.4.0.insert.shift = shl nuw i16 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.0.0.insert.ext = zext i8 %2 to i16
  %__x1.sroa.0.0.insert.insert = or i16 %__x1.sroa.4.0.insert.shift, %__x1.sroa.0.0.insert.ext
  %add.ptr5 = getelementptr i8, ptr %symval, i64 4
  %4 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %alias, ptr noundef nonnull align 1 dereferenceable(5) @.str.149, i64 5, i1 false) #18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 118, ptr %endptr, align 1
  %cmp.not = icmp eq i16 %__x.sroa.0.0.insert.insert, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i16 %__x.sroa.0.0.insert.insert to i32
  %call9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr10 = getelementptr inbounds i8, ptr %alias, i64 %call9
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr10, ptr noundef nonnull @.str.14, i32 noundef %conv) #18
  br label %do.body16

if.else:                                          ; preds = %entry
  %call13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr14 = getelementptr inbounds i8, ptr %alias, i64 %call13
  store i16 42, ptr %add.ptr14, align 1
  br label %do.body16

do.body16:                                        ; preds = %if.else, %if.then
  %strlen71 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr72 = getelementptr i8, ptr %alias, i64 %strlen71
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr72, ptr noundef nonnull align 1 dereferenceable(3) @.str.115, i64 3, i1 false)
  %cmp19.not = icmp eq i16 %__x1.sroa.0.0.insert.insert, -1
  br i1 %cmp19.not, label %if.else26, label %if.then21

if.then21:                                        ; preds = %do.body16
  %conv18 = zext i16 %__x1.sroa.0.0.insert.insert to i32
  %call22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr23 = getelementptr inbounds i8, ptr %alias, i64 %call22
  %call25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr23, ptr noundef nonnull @.str.14, i32 noundef %conv18) #18
  br label %do.body33

if.else26:                                        ; preds = %do.body16
  %call27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr28 = getelementptr inbounds i8, ptr %alias, i64 %call27
  store i16 42, ptr %add.ptr28, align 1
  br label %do.body33

do.body33:                                        ; preds = %if.else26, %if.then21
  %strlen73 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr74 = getelementptr i8, ptr %alias, i64 %strlen73
  store i32 7759218, ptr %endptr74, align 1
  %cmp36.not = icmp eq i8 %4, -1
  br i1 %cmp36.not, label %if.else43, label %if.then38

if.then38:                                        ; preds = %do.body33
  %conv35 = zext i8 %4 to i32
  %call39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr40 = getelementptr inbounds i8, ptr %alias, i64 %call39
  %call42 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr40, ptr noundef nonnull @.str.26, i32 noundef %conv35) #18
  br label %do.end49

if.else43:                                        ; preds = %do.body33
  %call44 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr45 = getelementptr inbounds i8, ptr %alias, i64 %call44
  store i16 42, ptr %add.ptr45, align 1
  br label %do.end49

do.end49:                                         ; preds = %if.else43, %if.then38
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i95 = ashr exact i64 %sext.i, 32
  %arrayidx.i96 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i95
  %5 = load i8, ptr %arrayidx.i96, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %5, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end49
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %do.end49
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_bcma_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 1
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %1 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i16
  %__x.sroa.4.0.insert.shift = shl nuw i16 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i16
  %__x.sroa.0.0.insert.insert = or i16 %__x.sroa.4.0.insert.shift, %__x.sroa.0.0.insert.ext
  %add.ptr2 = getelementptr i8, ptr %symval, i64 2
  %arrayidx.i108 = getelementptr i8, ptr %symval, i64 3
  %2 = load i8, ptr %arrayidx.i108, align 1, !tbaa !30
  %3 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %__x1.sroa.4.0.insert.ext = zext i8 %3 to i16
  %__x1.sroa.4.0.insert.shift = shl nuw i16 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.0.0.insert.ext = zext i8 %2 to i16
  %__x1.sroa.0.0.insert.insert = or i16 %__x1.sroa.4.0.insert.shift, %__x1.sroa.0.0.insert.ext
  %add.ptr5 = getelementptr i8, ptr %symval, i64 4
  %4 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %add.ptr8 = getelementptr i8, ptr %symval, i64 5
  %5 = load i8, ptr %add.ptr8, align 1, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %alias, ptr noundef nonnull align 1 dereferenceable(6) @.str.150, i64 6, i1 false) #18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 109, ptr %endptr, align 1
  %cmp.not = icmp eq i16 %__x.sroa.0.0.insert.insert, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i16 %__x.sroa.0.0.insert.insert to i32
  %call12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr13 = getelementptr inbounds i8, ptr %alias, i64 %call12
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr13, ptr noundef nonnull @.str.14, i32 noundef %conv) #18
  br label %do.body19

if.else:                                          ; preds = %entry
  %call16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr17 = getelementptr inbounds i8, ptr %alias, i64 %call16
  store i16 42, ptr %add.ptr17, align 1
  br label %do.body19

do.body19:                                        ; preds = %if.else, %if.then
  %strlen98 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr99 = getelementptr i8, ptr %alias, i64 %strlen98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr99, ptr noundef nonnull align 1 dereferenceable(3) @.str.115, i64 3, i1 false)
  %cmp22.not = icmp eq i16 %__x1.sroa.0.0.insert.insert, -1
  br i1 %cmp22.not, label %if.else29, label %if.then24

if.then24:                                        ; preds = %do.body19
  %conv21 = zext i16 %__x1.sroa.0.0.insert.insert to i32
  %call25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr26 = getelementptr inbounds i8, ptr %alias, i64 %call25
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr26, ptr noundef nonnull @.str.14, i32 noundef %conv21) #18
  br label %do.body36

if.else29:                                        ; preds = %do.body19
  %call30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr31 = getelementptr inbounds i8, ptr %alias, i64 %call30
  store i16 42, ptr %add.ptr31, align 1
  br label %do.body36

do.body36:                                        ; preds = %if.else29, %if.then24
  %strlen100 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr101 = getelementptr i8, ptr %alias, i64 %strlen100
  store i32 7759218, ptr %endptr101, align 1
  %cmp39.not = icmp eq i8 %4, -1
  br i1 %cmp39.not, label %if.else46, label %if.then41

if.then41:                                        ; preds = %do.body36
  %conv38 = zext i8 %4 to i32
  %call42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr43 = getelementptr inbounds i8, ptr %alias, i64 %call42
  %call45 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr43, ptr noundef nonnull @.str.26, i32 noundef %conv38) #18
  br label %do.body53

if.else46:                                        ; preds = %do.body36
  %call47 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr48 = getelementptr inbounds i8, ptr %alias, i64 %call47
  store i16 42, ptr %add.ptr48, align 1
  br label %do.body53

do.body53:                                        ; preds = %if.else46, %if.then41
  %strlen102 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr103 = getelementptr i8, ptr %alias, i64 %strlen102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr103, ptr noundef nonnull align 1 dereferenceable(3) @.str.151, i64 3, i1 false)
  %cmp56.not = icmp eq i8 %5, -1
  br i1 %cmp56.not, label %if.else63, label %if.then58

if.then58:                                        ; preds = %do.body53
  %conv55 = zext i8 %5 to i32
  %call59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr60 = getelementptr inbounds i8, ptr %alias, i64 %call59
  %call62 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr60, ptr noundef nonnull @.str.26, i32 noundef %conv55) #18
  br label %do.end69

if.else63:                                        ; preds = %do.body53
  %call64 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr65 = getelementptr inbounds i8, ptr %alias, i64 %call64
  store i16 42, ptr %add.ptr65, align 1
  br label %do.end69

do.end69:                                         ; preds = %if.else63, %if.then58
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i134 = ashr exact i64 %sext.i, 32
  %arrayidx.i135 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i134
  %6 = load i8, ptr %arrayidx.i135, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %6, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end69
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %do.end69
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_virtio_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr nocapture noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 3
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %symval, i64 2
  %1 = load i8, ptr %arrayidx.i.1, align 1, !tbaa !30
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %symval, i64 1
  %2 = load i8, ptr %arrayidx.i.2, align 1, !tbaa !30
  %3 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext = zext i8 %3 to i32
  %__x.sroa.6.0.insert.shift = shl nuw i32 %__x.sroa.6.0.insert.ext, 24
  %__x.sroa.5.0.insert.ext = zext i8 %2 to i32
  %__x.sroa.5.0.insert.shift = shl nuw nsw i32 %__x.sroa.5.0.insert.ext, 16
  %__x.sroa.5.0.insert.insert = or i32 %__x.sroa.6.0.insert.shift, %__x.sroa.5.0.insert.shift
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i32
  %__x.sroa.4.0.insert.shift = shl nuw nsw i32 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.4.0.insert.insert = or i32 %__x.sroa.5.0.insert.insert, %__x.sroa.4.0.insert.shift
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %__x.sroa.0.0.insert.insert = or i32 %__x.sroa.4.0.insert.insert, %__x.sroa.0.0.insert.ext
  %add.ptr2 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i46 = getelementptr i8, ptr %symval, i64 7
  %4 = load i8, ptr %arrayidx.i46, align 1, !tbaa !30
  %arrayidx.i46.1 = getelementptr i8, ptr %symval, i64 6
  %5 = load i8, ptr %arrayidx.i46.1, align 1, !tbaa !30
  %arrayidx.i46.2 = getelementptr i8, ptr %symval, i64 5
  %6 = load i8, ptr %arrayidx.i46.2, align 1, !tbaa !30
  %7 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %__x1.sroa.6.0.insert.ext = zext i8 %7 to i32
  %__x1.sroa.6.0.insert.shift = shl nuw i32 %__x1.sroa.6.0.insert.ext, 24
  %__x1.sroa.5.0.insert.ext = zext i8 %6 to i32
  %__x1.sroa.5.0.insert.shift = shl nuw nsw i32 %__x1.sroa.5.0.insert.ext, 16
  %__x1.sroa.5.0.insert.insert = or i32 %__x1.sroa.6.0.insert.shift, %__x1.sroa.5.0.insert.shift
  %__x1.sroa.4.0.insert.ext = zext i8 %5 to i32
  %__x1.sroa.4.0.insert.shift = shl nuw nsw i32 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.4.0.insert.insert = or i32 %__x1.sroa.5.0.insert.insert, %__x1.sroa.4.0.insert.shift
  %__x1.sroa.0.0.insert.ext = zext i8 %4 to i32
  %__x1.sroa.0.0.insert.insert = or i32 %__x1.sroa.4.0.insert.insert, %__x1.sroa.0.0.insert.ext
  store i64 16448047365122422, ptr %alias, align 1
  %strlen = tail call i64 @strlen(ptr nonnull %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 100, ptr %endptr, align 1
  %cmp.not = icmp eq i32 %__x.sroa.0.0.insert.insert, -1
  %call8 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr9 = getelementptr inbounds i8, ptr %alias, i64 %call8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr9, ptr noundef nonnull @.str.90, i32 noundef %__x.sroa.0.0.insert.insert) #18
  br label %do.body11

if.else:                                          ; preds = %entry
  store i16 42, ptr %add.ptr9, align 1
  br label %do.body11

do.body11:                                        ; preds = %if.else, %if.then
  %strlen40 = tail call i64 @strlen(ptr nonnull %alias)
  %endptr41 = getelementptr i8, ptr %alias, i64 %strlen40
  store i16 118, ptr %endptr41, align 1
  %cmp13.not = icmp eq i32 %__x1.sroa.0.0.insert.insert, -1
  %call19 = tail call i64 @strlen(ptr noundef nonnull %alias) #16
  %add.ptr20 = getelementptr inbounds i8, ptr %alias, i64 %call19
  br i1 %cmp13.not, label %if.else18, label %if.then14

if.then14:                                        ; preds = %do.body11
  %call17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %add.ptr20, ptr noundef nonnull @.str.90, i32 noundef %__x1.sroa.0.0.insert.insert) #18
  br label %do.end24

if.else18:                                        ; preds = %do.body11
  store i16 42, ptr %add.ptr20, align 1
  br label %do.end24

do.end24:                                         ; preds = %if.else18, %if.then14
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i52 = ashr exact i64 %sext.i, 32
  %arrayidx.i53 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i52
  %8 = load i8, ptr %arrayidx.i53, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %8, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end24
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %do.end24
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_vmbus_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #10 {
entry:
  %guid_name = alloca [34 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %guid_name) #18
  %0 = load i8, ptr %symval, align 1, !tbaa !30
  %conv4 = zext i8 %0 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %guid_name, ptr noundef nonnull @.str.119, i32 noundef %conv4) #18
  %arrayidx.1 = getelementptr inbounds [34 x i8], ptr %guid_name, i64 0, i64 2
  %arrayidx3.1 = getelementptr inbounds [16 x i8], ptr %symval, i64 0, i64 1
  %1 = load i8, ptr %arrayidx3.1, align 1, !tbaa !30
  %conv4.1 = zext i8 %1 to i32
  %call.1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx.1, ptr noundef nonnull @.str.119, i32 noundef %conv4.1) #18
  %arrayidx.2 = getelementptr inbounds [34 x i8], ptr %guid_name, i64 0, i64 4
  %arrayidx3.2 = getelementptr inbounds [16 x i8], ptr %symval, i64 0, i64 2
  %2 = load i8, ptr %arrayidx3.2, align 1, !tbaa !30
  %conv4.2 = zext i8 %2 to i32
  %call.2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx.2, ptr noundef nonnull @.str.119, i32 noundef %conv4.2) #18
  %arrayidx.3 = getelementptr inbounds [34 x i8], ptr %guid_name, i64 0, i64 6
  %arrayidx3.3 = getelementptr inbounds [16 x i8], ptr %symval, i64 0, i64 3
  %3 = load i8, ptr %arrayidx3.3, align 1, !tbaa !30
  %conv4.3 = zext i8 %3 to i32
  %call.3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx.3, ptr noundef nonnull @.str.119, i32 noundef %conv4.3) #18
  %arrayidx.4 = getelementptr inbounds [34 x i8], ptr %guid_name, i64 0, i64 8
  %arrayidx3.4 = getelementptr inbounds [16 x i8], ptr %symval, i64 0, i64 4
  %4 = load i8, ptr %arrayidx3.4, align 1, !tbaa !30
  %conv4.4 = zext i8 %4 to i32
  %call.4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx.4, ptr noundef nonnull @.str.119, i32 noundef %conv4.4) #18
  %arrayidx.5 = getelementptr inbounds [34 x i8], ptr %guid_name, i64 0, i64 10
  %arrayidx3.5 = getelementptr inbounds [16 x i8], ptr %symval, i64 0, i64 5
  %5 = load i8, ptr %arrayidx3.5, align 1, !tbaa !30
  %conv4.5 = zext i8 %5 to i32
  %call.5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx.5, ptr noundef nonnull @.str.119, i32 noundef %conv4.5) #18
  %arrayidx.6 = getelementptr inbounds [34 x i8], ptr %guid_name, i64 0, i64 12
  %arrayidx3.6 = getelementptr inbounds [16 x i8], ptr %symval, i64 0, i64 6
  %6 = load i8, ptr %arrayidx3.6, align 1, !tbaa !30
  %conv4.6 = zext i8 %6 to i32
  %call.6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx.6, ptr noundef nonnull @.str.119, i32 noundef %conv4.6) #18
  %arrayidx.7 = getelementptr inbounds [34 x i8], ptr %guid_name, i64 0, i64 14
  %arrayidx3.7 = getelementptr inbounds [16 x i8], ptr %symval, i64 0, i64 7
  %7 = load i8, ptr %arrayidx3.7, align 1, !tbaa !30
  %conv4.7 = zext i8 %7 to i32
  %call.7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx.7, ptr noundef nonnull @.str.119, i32 noundef %conv4.7) #18
  %arrayidx.8 = getelementptr inbounds [34 x i8], ptr %guid_name, i64 0, i64 16
  %arrayidx3.8 = getelementptr inbounds [16 x i8], ptr %symval, i64 0, i64 8
  %8 = load i8, ptr %arrayidx3.8, align 1, !tbaa !30
  %conv4.8 = zext i8 %8 to i32
  %call.8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx.8, ptr noundef nonnull @.str.119, i32 noundef %conv4.8) #18
  %arrayidx.9 = getelementptr inbounds [34 x i8], ptr %guid_name, i64 0, i64 18
  %arrayidx3.9 = getelementptr inbounds [16 x i8], ptr %symval, i64 0, i64 9
  %9 = load i8, ptr %arrayidx3.9, align 1, !tbaa !30
  %conv4.9 = zext i8 %9 to i32
  %call.9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx.9, ptr noundef nonnull @.str.119, i32 noundef %conv4.9) #18
  %arrayidx.10 = getelementptr inbounds [34 x i8], ptr %guid_name, i64 0, i64 20
  %arrayidx3.10 = getelementptr inbounds [16 x i8], ptr %symval, i64 0, i64 10
  %10 = load i8, ptr %arrayidx3.10, align 1, !tbaa !30
  %conv4.10 = zext i8 %10 to i32
  %call.10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx.10, ptr noundef nonnull @.str.119, i32 noundef %conv4.10) #18
  %arrayidx.11 = getelementptr inbounds [34 x i8], ptr %guid_name, i64 0, i64 22
  %arrayidx3.11 = getelementptr inbounds [16 x i8], ptr %symval, i64 0, i64 11
  %11 = load i8, ptr %arrayidx3.11, align 1, !tbaa !30
  %conv4.11 = zext i8 %11 to i32
  %call.11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx.11, ptr noundef nonnull @.str.119, i32 noundef %conv4.11) #18
  %arrayidx.12 = getelementptr inbounds [34 x i8], ptr %guid_name, i64 0, i64 24
  %arrayidx3.12 = getelementptr inbounds [16 x i8], ptr %symval, i64 0, i64 12
  %12 = load i8, ptr %arrayidx3.12, align 1, !tbaa !30
  %conv4.12 = zext i8 %12 to i32
  %call.12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx.12, ptr noundef nonnull @.str.119, i32 noundef %conv4.12) #18
  %arrayidx.13 = getelementptr inbounds [34 x i8], ptr %guid_name, i64 0, i64 26
  %arrayidx3.13 = getelementptr inbounds [16 x i8], ptr %symval, i64 0, i64 13
  %13 = load i8, ptr %arrayidx3.13, align 1, !tbaa !30
  %conv4.13 = zext i8 %13 to i32
  %call.13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx.13, ptr noundef nonnull @.str.119, i32 noundef %conv4.13) #18
  %arrayidx.14 = getelementptr inbounds [34 x i8], ptr %guid_name, i64 0, i64 28
  %arrayidx3.14 = getelementptr inbounds [16 x i8], ptr %symval, i64 0, i64 14
  %14 = load i8, ptr %arrayidx3.14, align 1, !tbaa !30
  %conv4.14 = zext i8 %14 to i32
  %call.14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx.14, ptr noundef nonnull @.str.119, i32 noundef %conv4.14) #18
  %arrayidx.15 = getelementptr inbounds [34 x i8], ptr %guid_name, i64 0, i64 30
  %arrayidx3.15 = getelementptr inbounds [16 x i8], ptr %symval, i64 0, i64 15
  %15 = load i8, ptr %arrayidx3.15, align 1, !tbaa !30
  %conv4.15 = zext i8 %15 to i32
  %call.15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx.15, ptr noundef nonnull @.str.119, i32 noundef %conv4.15) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %alias, ptr noundef nonnull align 1 dereferenceable(7) @.str.153, i64 7, i1 false) #18
  %call6 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull %guid_name) #18
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %guid_name) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_rpmsg_entry(ptr nocapture noundef readnone %filename, ptr noundef %symval, ptr nocapture noundef writeonly %alias) #10 {
entry:
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.154, ptr noundef %symval) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_i2c_entry(ptr nocapture noundef readnone %filename, ptr noundef %symval, ptr nocapture noundef writeonly %alias) #10 {
entry:
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.155, ptr noundef %symval) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_i3c_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #10 {
entry:
  %0 = load i8, ptr %symval, align 1, !tbaa !30
  %add.ptr2 = getelementptr i8, ptr %symval, i64 1
  %1 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %add.ptr5 = getelementptr i8, ptr %symval, i64 2
  %arrayidx.i119 = getelementptr i8, ptr %symval, i64 3
  %2 = load i8, ptr %arrayidx.i119, align 1, !tbaa !30
  %3 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %__x4.sroa.4.0.insert.ext = zext i8 %3 to i32
  %__x4.sroa.4.0.insert.shift = shl nuw nsw i32 %__x4.sroa.4.0.insert.ext, 8
  %__x4.sroa.0.0.insert.ext = zext i8 %2 to i32
  %__x4.sroa.0.0.insert.insert = or i32 %__x4.sroa.4.0.insert.shift, %__x4.sroa.0.0.insert.ext
  %add.ptr8 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i129 = getelementptr i8, ptr %symval, i64 5
  %4 = load i8, ptr %arrayidx.i129, align 1, !tbaa !30
  %5 = load i8, ptr %add.ptr8, align 1, !tbaa !30
  %__x7.sroa.4.0.insert.ext = zext i8 %5 to i32
  %__x7.sroa.4.0.insert.shift = shl nuw nsw i32 %__x7.sroa.4.0.insert.ext, 8
  %__x7.sroa.0.0.insert.ext = zext i8 %4 to i32
  %__x7.sroa.0.0.insert.insert = or i32 %__x7.sroa.4.0.insert.shift, %__x7.sroa.0.0.insert.ext
  %add.ptr11 = getelementptr i8, ptr %symval, i64 6
  %arrayidx.i139 = getelementptr i8, ptr %symval, i64 7
  %6 = load i8, ptr %arrayidx.i139, align 1, !tbaa !30
  %7 = load i8, ptr %add.ptr11, align 1, !tbaa !30
  %__x10.sroa.4.0.insert.ext = zext i8 %7 to i32
  %__x10.sroa.4.0.insert.shift = shl nuw nsw i32 %__x10.sroa.4.0.insert.ext, 8
  %__x10.sroa.0.0.insert.ext = zext i8 %6 to i32
  %__x10.sroa.0.0.insert.insert = or i32 %__x10.sroa.4.0.insert.shift, %__x10.sroa.0.0.insert.ext
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %alias, ptr noundef nonnull align 1 dereferenceable(5) @.str.156, i64 5, i1 false) #18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i32 7496548, ptr %endptr, align 1
  %conv = zext i8 %0 to i32
  %and = and i32 %conv, 1
  %tobool.not = icmp eq i32 %and, 0
  %call18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr19 = getelementptr inbounds i8, ptr %alias, i64 %call18
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv16 = zext i8 %1 to i32
  %call17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr19, ptr noundef nonnull @.str.26, i32 noundef %conv16) #18
  br label %do.body21

if.else:                                          ; preds = %entry
  store i16 42, ptr %add.ptr19, align 1
  br label %do.body21

do.body21:                                        ; preds = %if.else, %if.then
  %strlen99 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr100 = getelementptr i8, ptr %alias, i64 %strlen99
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr100, ptr noundef nonnull align 1 dereferenceable(6) @.str.158, i64 6, i1 false)
  %and24 = and i32 %conv, 2
  %tobool25.not = icmp eq i32 %and24, 0
  %call32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr33 = getelementptr inbounds i8, ptr %alias, i64 %call32
  br i1 %tobool25.not, label %if.else31, label %if.then26

if.then26:                                        ; preds = %do.body21
  %call30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr33, ptr noundef nonnull @.str.14, i32 noundef %__x4.sroa.0.0.insert.insert) #18
  br label %do.body38

if.else31:                                        ; preds = %do.body21
  store i16 42, ptr %add.ptr33, align 1
  br label %do.body38

do.body38:                                        ; preds = %if.else31, %if.then26
  %strlen101 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr102 = getelementptr i8, ptr %alias, i64 %strlen101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr102, ptr noundef nonnull align 1 dereferenceable(5) @.str.159, i64 5, i1 false)
  %and41 = and i32 %conv, 4
  %tobool42.not = icmp eq i32 %and41, 0
  %call49 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr50 = getelementptr inbounds i8, ptr %alias, i64 %call49
  br i1 %tobool42.not, label %if.else48, label %if.then43

if.then43:                                        ; preds = %do.body38
  %call47 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr50, ptr noundef nonnull @.str.14, i32 noundef %__x7.sroa.0.0.insert.insert) #18
  br label %do.body55

if.else48:                                        ; preds = %do.body38
  store i16 42, ptr %add.ptr50, align 1
  br label %do.body55

do.body55:                                        ; preds = %if.else48, %if.then43
  %strlen103 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr104 = getelementptr i8, ptr %alias, i64 %strlen103
  store i32 7632997, ptr %endptr104, align 1
  %and58 = and i32 %conv, 8
  %tobool59.not = icmp eq i32 %and58, 0
  %call66 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr67 = getelementptr inbounds i8, ptr %alias, i64 %call66
  br i1 %tobool59.not, label %if.else65, label %if.then60

if.then60:                                        ; preds = %do.body55
  %call64 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr67, ptr noundef nonnull @.str.14, i32 noundef %__x10.sroa.0.0.insert.insert) #18
  br label %do.end71

if.else65:                                        ; preds = %do.body55
  store i16 42, ptr %add.ptr67, align 1
  br label %do.end71

do.end71:                                         ; preds = %if.else65, %if.then60
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_spi_entry(ptr nocapture noundef readnone %filename, ptr noundef %symval, ptr nocapture noundef writeonly %alias) #10 {
entry:
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.161, ptr noundef %symval) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_dmi_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr nocapture noundef %alias) #10 {
entry:
  %add.ptr = getelementptr i8, ptr %symval, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %alias, ptr noundef nonnull align 1 dereferenceable(5) @.str.162, i64 5, i1 false)
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc26, %entry
  %indvars.iv51 = phi i64 [ 0, %entry ], [ %indvars.iv.next52, %for.inc26 ]
  %field = getelementptr inbounds [15 x %struct.dmifield], ptr @dmi_fields, i64 0, i64 %indvars.iv51, i32 1
  %arrayidx13 = getelementptr inbounds [15 x %struct.dmifield], ptr @dmi_fields, i64 0, i64 %indvars.iv51
  br label %for.body5

for.body5:                                        ; preds = %for.inc, %for.cond2.preheader
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds [4 x %struct.dmi_strmatch], ptr %add.ptr, i64 0, i64 %indvars.iv
  %bf.load = load i8, ptr %arrayidx, align 1
  %bf.clear = and i8 %bf.load, 127
  %tobool.not = icmp eq i8 %bf.clear, 0
  br i1 %tobool.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body5
  %conv6 = zext i8 %bf.clear to i32
  %0 = load i32, ptr %field, align 8, !tbaa !36
  %cmp14 = icmp eq i32 %0, %conv6
  br i1 %cmp14, label %if.then, label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %call16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr17 = getelementptr inbounds i8, ptr %alias, i64 %call16
  %1 = load ptr, ptr %arrayidx13, align 16, !tbaa !38
  %call20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr17, ptr noundef nonnull @.str.163, ptr noundef %1) #18
  %call21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr22 = getelementptr inbounds i8, ptr %alias, i64 %call21
  %substr = getelementptr inbounds %struct.dmi_strmatch, ptr %arrayidx, i64 0, i32 1
  %2 = load i8, ptr %substr, align 1, !tbaa !30
  %tobool.not17.i = icmp eq i8 %2, 0
  br i1 %tobool.not17.i, label %dmi_ascii_filter.exit, label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %if.then
  %3 = phi i8 [ %4, %for.inc.i ], [ %2, %if.then ]
  %s.addr.019.i = phi ptr [ %incdec.ptr9.i, %for.inc.i ], [ %substr, %if.then ]
  %d.addr.018.i = phi ptr [ %d.addr.1.i, %for.inc.i ], [ %add.ptr22, %if.then ]
  %.fr.i = freeze i8 %3
  %cmp.i = icmp slt i8 %.fr.i, 33
  br i1 %cmp.i, label %for.inc.i, label %switch.early.test.i

switch.early.test.i:                              ; preds = %for.body.i
  switch i8 %.fr.i, label %if.then.i [
    i8 127, label %for.inc.i
    i8 58, label %for.inc.i
  ]

if.then.i:                                        ; preds = %switch.early.test.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %d.addr.018.i, i64 1
  store i8 %.fr.i, ptr %d.addr.018.i, align 1, !tbaa !30
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %switch.early.test.i, %switch.early.test.i, %for.body.i
  %d.addr.1.i = phi ptr [ %incdec.ptr.i, %if.then.i ], [ %d.addr.018.i, %switch.early.test.i ], [ %d.addr.018.i, %for.body.i ], [ %d.addr.018.i, %switch.early.test.i ]
  %incdec.ptr9.i = getelementptr inbounds i8, ptr %s.addr.019.i, i64 1
  %4 = load i8, ptr %incdec.ptr9.i, align 1, !tbaa !30
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %dmi_ascii_filter.exit, label %for.body.i

dmi_ascii_filter.exit:                            ; preds = %for.inc.i, %if.then
  %d.addr.0.lcssa.i = phi ptr [ %add.ptr22, %if.then ], [ %d.addr.1.i, %for.inc.i ]
  store i8 0, ptr %d.addr.0.lcssa.i, align 1, !tbaa !30
  %strlen45 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr46 = getelementptr i8, ptr %alias, i64 %strlen45
  store i16 42, ptr %endptr46, align 1
  br label %for.inc

for.inc:                                          ; preds = %dmi_ascii_filter.exit, %land.lhs.true, %for.body5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.inc26, label %for.body5

for.inc26:                                        ; preds = %for.inc
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next52, 15
  br i1 %exitcond54.not, label %for.end28, label %for.cond2.preheader

for.end28:                                        ; preds = %for.inc26
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 58, ptr %endptr, align 1
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_platform_entry(ptr nocapture noundef readnone %filename, ptr noundef %symval, ptr nocapture noundef writeonly %alias) #10 {
entry:
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.179, ptr noundef %symval) #18
  ret i32 1
}

; Function Attrs: nofree nosync nounwind uwtable
define internal i32 @do_mdio_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr nocapture noundef writeonly %alias) #11 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 3
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %symval, i64 2
  %1 = load i8, ptr %arrayidx.i.1, align 1, !tbaa !30
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %symval, i64 1
  %2 = load i8, ptr %arrayidx.i.2, align 1, !tbaa !30
  %3 = load i8, ptr %symval, align 1, !tbaa !30
  %add.ptr2 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i27 = getelementptr i8, ptr %symval, i64 7
  %4 = load i8, ptr %arrayidx.i27, align 1, !tbaa !30
  %arrayidx.i27.1 = getelementptr i8, ptr %symval, i64 6
  %5 = load i8, ptr %arrayidx.i27.1, align 1, !tbaa !30
  %arrayidx.i27.2 = getelementptr i8, ptr %symval, i64 5
  %6 = load i8, ptr %arrayidx.i27.2, align 1, !tbaa !30
  %7 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %alias, ptr noundef nonnull align 1 dereferenceable(6) @.str.180, i64 6, i1 false)
  %__x.sroa.6.0.insert.ext = zext i8 %3 to i32
  %__x.sroa.6.0.insert.shift = shl nuw i32 %__x.sroa.6.0.insert.ext, 24
  %__x.sroa.5.0.insert.ext = zext i8 %2 to i32
  %__x.sroa.5.0.insert.shift = shl nuw nsw i32 %__x.sroa.5.0.insert.ext, 16
  %__x.sroa.5.0.insert.insert = or i32 %__x.sroa.6.0.insert.shift, %__x.sroa.5.0.insert.shift
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i32
  %__x.sroa.4.0.insert.shift = shl nuw nsw i32 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.4.0.insert.insert = or i32 %__x.sroa.5.0.insert.insert, %__x.sroa.4.0.insert.shift
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %__x.sroa.0.0.insert.insert = or i32 %__x.sroa.4.0.insert.insert, %__x.sroa.0.0.insert.ext
  %broadcast.splatinsert36 = insertelement <16 x i32> poison, i32 %__x.sroa.0.0.insert.insert, i64 0
  %broadcast.splat37 = shufflevector <16 x i32> %broadcast.splatinsert36, <16 x i32> poison, <16 x i32> zeroinitializer
  %__x1.sroa.6.0.insert.ext = zext i8 %7 to i32
  %__x1.sroa.6.0.insert.shift = shl nuw i32 %__x1.sroa.6.0.insert.ext, 24
  %__x1.sroa.5.0.insert.ext = zext i8 %6 to i32
  %__x1.sroa.5.0.insert.shift = shl nuw nsw i32 %__x1.sroa.5.0.insert.ext, 16
  %__x1.sroa.5.0.insert.insert = or i32 %__x1.sroa.6.0.insert.shift, %__x1.sroa.5.0.insert.shift
  %__x1.sroa.4.0.insert.ext = zext i8 %5 to i32
  %__x1.sroa.4.0.insert.shift = shl nuw nsw i32 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.4.0.insert.insert = or i32 %__x1.sroa.5.0.insert.insert, %__x1.sroa.4.0.insert.shift
  %__x1.sroa.0.0.insert.ext = zext i8 %4 to i32
  %__x1.sroa.0.0.insert.insert = or i32 %__x1.sroa.4.0.insert.insert, %__x1.sroa.0.0.insert.ext
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %__x1.sroa.0.0.insert.insert, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %add.ptr4 = getelementptr inbounds i8, ptr %alias, i64 5
  %8 = and <16 x i32> %broadcast.splat, <i32 -2147483648, i32 1073741824, i32 536870912, i32 268435456, i32 134217728, i32 67108864, i32 33554432, i32 16777216, i32 8388608, i32 4194304, i32 2097152, i32 1048576, i32 524288, i32 262144, i32 131072, i32 65536>
  %9 = icmp eq <16 x i32> %8, zeroinitializer
  %10 = and <16 x i32> %broadcast.splat37, <i32 -2147483648, i32 1073741824, i32 536870912, i32 268435456, i32 134217728, i32 67108864, i32 33554432, i32 16777216, i32 8388608, i32 4194304, i32 2097152, i32 1048576, i32 524288, i32 262144, i32 131072, i32 65536>
  %11 = icmp eq <16 x i32> %10, zeroinitializer
  %12 = select <16 x i1> %11, <16 x i8> <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>, <16 x i8> <i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49>
  %13 = select <16 x i1> %9, <16 x i8> <i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63>, <16 x i8> %12
  store <16 x i8> %13, ptr %add.ptr4, align 1, !tbaa !30
  %next.gep.1 = getelementptr i8, ptr %alias, i64 21
  %14 = and <16 x i32> %broadcast.splat, <i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 512, i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1>
  %15 = icmp eq <16 x i32> %14, zeroinitializer
  %16 = and <16 x i32> %broadcast.splat37, <i32 32768, i32 16384, i32 8192, i32 4096, i32 2048, i32 1024, i32 512, i32 256, i32 128, i32 64, i32 32, i32 16, i32 8, i32 4, i32 2, i32 1>
  %17 = icmp eq <16 x i32> %16, zeroinitializer
  %18 = select <16 x i1> %17, <16 x i8> <i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48, i8 48>, <16 x i8> <i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49, i8 49>
  %19 = select <16 x i1> %15, <16 x i8> <i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63, i8 63>, <16 x i8> %18
  store <16 x i8> %19, ptr %next.gep.1, align 1, !tbaa !30
  %ind.end = getelementptr i8, ptr %alias, i64 37
  store i8 0, ptr %ind.end, align 1, !tbaa !30
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_zorro_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr nocapture noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 3
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %symval, i64 2
  %1 = load i8, ptr %arrayidx.i.1, align 1, !tbaa !30
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %symval, i64 1
  %2 = load i8, ptr %arrayidx.i.2, align 1, !tbaa !30
  %3 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext = zext i8 %3 to i32
  %__x.sroa.6.0.insert.shift = shl nuw i32 %__x.sroa.6.0.insert.ext, 24
  %__x.sroa.5.0.insert.ext = zext i8 %2 to i32
  %__x.sroa.5.0.insert.shift = shl nuw nsw i32 %__x.sroa.5.0.insert.ext, 16
  %__x.sroa.5.0.insert.insert = or i32 %__x.sroa.6.0.insert.shift, %__x.sroa.5.0.insert.shift
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i32
  %__x.sroa.4.0.insert.shift = shl nuw nsw i32 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.4.0.insert.insert = or i32 %__x.sroa.5.0.insert.insert, %__x.sroa.4.0.insert.shift
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %__x.sroa.0.0.insert.insert = or i32 %__x.sroa.4.0.insert.insert, %__x.sroa.0.0.insert.ext
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %alias, ptr noundef nonnull align 1 dereferenceable(7) @.str.181, i64 7, i1 false) #18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 105, ptr %endptr, align 1
  %cmp.not = icmp eq i32 %__x.sroa.0.0.insert.insert, -1
  %call5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr6 = getelementptr inbounds i8, ptr %alias, i64 %call5
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr6, ptr noundef nonnull @.str.90, i32 noundef %__x.sroa.0.0.insert.insert) #18
  br label %do.end

if.else:                                          ; preds = %entry
  store i16 42, ptr %add.ptr6, align 1
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_isapnp_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr nocapture noundef writeonly %alias) #10 {
entry:
  %add.ptr = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i = getelementptr i8, ptr %symval, i64 5
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %1 = load i8, ptr %add.ptr, align 1, !tbaa !30
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i32
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %add.ptr2 = getelementptr i8, ptr %symval, i64 6
  %arrayidx.i38 = getelementptr i8, ptr %symval, i64 7
  %2 = load i8, ptr %arrayidx.i38, align 1, !tbaa !30
  %3 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %__x1.sroa.4.0.insert.ext = zext i8 %3 to i32
  %__x1.sroa.0.0.insert.ext = zext i8 %2 to i32
  %4 = lshr i32 %__x.sroa.0.0.insert.ext, 2
  %sub = or i32 %4, 64
  %and5 = shl nuw nsw i32 %__x.sroa.0.0.insert.ext, 3
  %shl = and i32 %and5, 24
  %5 = lshr i32 %__x.sroa.4.0.insert.ext, 5
  %or = or i32 %5, %shl
  %sub10 = or i32 %or, 64
  %and13 = and i32 %__x.sroa.4.0.insert.ext, 31
  %sub15 = or i32 %and13, 64
  %6 = lshr i32 %__x1.sroa.0.0.insert.ext, 4
  %and20 = and i32 %__x1.sroa.0.0.insert.ext, 15
  %7 = lshr i32 %__x1.sroa.4.0.insert.ext, 4
  %and26 = and i32 %__x1.sroa.4.0.insert.ext, 15
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.182, i32 noundef %sub, i32 noundef %sub10, i32 noundef %sub15, i32 noundef %6, i32 noundef %and20, i32 noundef %7, i32 noundef %and26) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_ipack_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #10 {
entry:
  %0 = load i8, ptr %symval, align 1, !tbaa !30
  %add.ptr2 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i76 = getelementptr i8, ptr %symval, i64 7
  %1 = load i8, ptr %arrayidx.i76, align 1, !tbaa !30
  %arrayidx.i76.1 = getelementptr i8, ptr %symval, i64 6
  %2 = load i8, ptr %arrayidx.i76.1, align 1, !tbaa !30
  %arrayidx.i76.2 = getelementptr i8, ptr %symval, i64 5
  %3 = load i8, ptr %arrayidx.i76.2, align 1, !tbaa !30
  %4 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %__x1.sroa.6.0.insert.ext = zext i8 %4 to i32
  %__x1.sroa.6.0.insert.shift = shl nuw i32 %__x1.sroa.6.0.insert.ext, 24
  %__x1.sroa.5.0.insert.ext = zext i8 %3 to i32
  %__x1.sroa.5.0.insert.shift = shl nuw nsw i32 %__x1.sroa.5.0.insert.ext, 16
  %__x1.sroa.5.0.insert.insert = or i32 %__x1.sroa.6.0.insert.shift, %__x1.sroa.5.0.insert.shift
  %__x1.sroa.4.0.insert.ext = zext i8 %2 to i32
  %__x1.sroa.4.0.insert.shift = shl nuw nsw i32 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.4.0.insert.insert = or i32 %__x1.sroa.5.0.insert.insert, %__x1.sroa.4.0.insert.shift
  %__x1.sroa.0.0.insert.ext = zext i8 %1 to i32
  %__x1.sroa.0.0.insert.insert = or i32 %__x1.sroa.4.0.insert.insert, %__x1.sroa.0.0.insert.ext
  %add.ptr5 = getelementptr i8, ptr %symval, i64 8
  %arrayidx.i86 = getelementptr i8, ptr %symval, i64 11
  %5 = load i8, ptr %arrayidx.i86, align 1, !tbaa !30
  %arrayidx.i86.1 = getelementptr i8, ptr %symval, i64 10
  %6 = load i8, ptr %arrayidx.i86.1, align 1, !tbaa !30
  %arrayidx.i86.2 = getelementptr i8, ptr %symval, i64 9
  %7 = load i8, ptr %arrayidx.i86.2, align 1, !tbaa !30
  %8 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %__x4.sroa.6.0.insert.ext = zext i8 %8 to i32
  %__x4.sroa.6.0.insert.shift = shl nuw i32 %__x4.sroa.6.0.insert.ext, 24
  %__x4.sroa.5.0.insert.ext = zext i8 %7 to i32
  %__x4.sroa.5.0.insert.shift = shl nuw nsw i32 %__x4.sroa.5.0.insert.ext, 16
  %__x4.sroa.5.0.insert.insert = or i32 %__x4.sroa.6.0.insert.shift, %__x4.sroa.5.0.insert.shift
  %__x4.sroa.4.0.insert.ext = zext i8 %6 to i32
  %__x4.sroa.4.0.insert.shift = shl nuw nsw i32 %__x4.sroa.4.0.insert.ext, 8
  %__x4.sroa.4.0.insert.insert = or i32 %__x4.sroa.5.0.insert.insert, %__x4.sroa.4.0.insert.shift
  %__x4.sroa.0.0.insert.ext = zext i8 %5 to i32
  %__x4.sroa.0.0.insert.insert = or i32 %__x4.sroa.4.0.insert.insert, %__x4.sroa.0.0.insert.ext
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %alias, ptr noundef nonnull align 1 dereferenceable(7) @.str.183, i64 7, i1 false) #18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 102, ptr %endptr, align 1
  %cmp.not = icmp eq i8 %0, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i8 %0 to i32
  %call9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr10 = getelementptr inbounds i8, ptr %alias, i64 %call9
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr10, ptr noundef nonnull @.str.26, i32 noundef %conv) #18
  br label %do.body16

if.else:                                          ; preds = %entry
  %call13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr14 = getelementptr inbounds i8, ptr %alias, i64 %call13
  store i16 42, ptr %add.ptr14, align 1
  br label %do.body16

do.body16:                                        ; preds = %if.else, %if.then
  %strlen68 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr69 = getelementptr i8, ptr %alias, i64 %strlen68
  store i16 118, ptr %endptr69, align 1
  %cmp18.not = icmp eq i32 %__x1.sroa.0.0.insert.insert, -1
  %call25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr26 = getelementptr inbounds i8, ptr %alias, i64 %call25
  br i1 %cmp18.not, label %if.else24, label %if.then20

if.then20:                                        ; preds = %do.body16
  %call23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr26, ptr noundef nonnull @.str.90, i32 noundef %__x1.sroa.0.0.insert.insert) #18
  br label %do.body31

if.else24:                                        ; preds = %do.body16
  store i16 42, ptr %add.ptr26, align 1
  br label %do.body31

do.body31:                                        ; preds = %if.else24, %if.then20
  %strlen70 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr71 = getelementptr i8, ptr %alias, i64 %strlen70
  store i16 100, ptr %endptr71, align 1
  %cmp33.not = icmp eq i32 %__x4.sroa.0.0.insert.insert, -1
  %call40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr41 = getelementptr inbounds i8, ptr %alias, i64 %call40
  br i1 %cmp33.not, label %if.else39, label %if.then35

if.then35:                                        ; preds = %do.body31
  %call38 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr41, ptr noundef nonnull @.str.90, i32 noundef %__x4.sroa.0.0.insert.insert) #18
  br label %do.end45

if.else39:                                        ; preds = %do.body31
  store i16 42, ptr %add.ptr41, align 1
  br label %do.end45

do.end45:                                         ; preds = %if.else39, %if.then35
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i92 = ashr exact i64 %sext.i, 32
  %arrayidx.i93 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i92
  %9 = load i8, ptr %arrayidx.i93, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %9, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end45
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %do.end45
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @do_amba_entry(ptr noundef %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #0 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 3
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %symval, i64 2
  %1 = load i8, ptr %arrayidx.i.1, align 1, !tbaa !30
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %symval, i64 1
  %2 = load i8, ptr %arrayidx.i.2, align 1, !tbaa !30
  %3 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext = zext i8 %3 to i32
  %__x.sroa.6.0.insert.shift = shl nuw i32 %__x.sroa.6.0.insert.ext, 24
  %__x.sroa.5.0.insert.ext = zext i8 %2 to i32
  %__x.sroa.5.0.insert.shift = shl nuw nsw i32 %__x.sroa.5.0.insert.ext, 16
  %__x.sroa.5.0.insert.insert = or i32 %__x.sroa.6.0.insert.shift, %__x.sroa.5.0.insert.shift
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i32
  %__x.sroa.4.0.insert.shift = shl nuw nsw i32 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.4.0.insert.insert = or i32 %__x.sroa.5.0.insert.insert, %__x.sroa.4.0.insert.shift
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %__x.sroa.0.0.insert.insert = or i32 %__x.sroa.4.0.insert.insert, %__x.sroa.0.0.insert.ext
  %add.ptr2 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i25 = getelementptr i8, ptr %symval, i64 7
  %4 = load i8, ptr %arrayidx.i25, align 1, !tbaa !30
  %arrayidx.i25.1 = getelementptr i8, ptr %symval, i64 6
  %5 = load i8, ptr %arrayidx.i25.1, align 1, !tbaa !30
  %arrayidx.i25.2 = getelementptr i8, ptr %symval, i64 5
  %6 = load i8, ptr %arrayidx.i25.2, align 1, !tbaa !30
  %7 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %__x1.sroa.6.0.insert.ext = zext i8 %7 to i32
  %__x1.sroa.6.0.insert.shift = shl nuw i32 %__x1.sroa.6.0.insert.ext, 24
  %__x1.sroa.5.0.insert.ext = zext i8 %6 to i32
  %__x1.sroa.5.0.insert.shift = shl nuw nsw i32 %__x1.sroa.5.0.insert.ext, 16
  %__x1.sroa.5.0.insert.insert = or i32 %__x1.sroa.6.0.insert.shift, %__x1.sroa.5.0.insert.shift
  %__x1.sroa.4.0.insert.ext = zext i8 %5 to i32
  %__x1.sroa.4.0.insert.shift = shl nuw nsw i32 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.4.0.insert.insert = or i32 %__x1.sroa.5.0.insert.insert, %__x1.sroa.4.0.insert.shift
  %__x1.sroa.0.0.insert.ext = zext i8 %4 to i32
  %__x1.sroa.0.0.insert.insert = or i32 %__x1.sroa.4.0.insert.insert, %__x1.sroa.0.0.insert.ext
  %and = and i32 %__x1.sroa.0.0.insert.insert, %__x.sroa.0.0.insert.insert
  %cmp.not = icmp eq i32 %and, %__x.sroa.0.0.insert.insert
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 2, ptr noundef nonnull @.str.184, ptr noundef %filename, i32 noundef %__x.sroa.0.0.insert.insert, i32 noundef %__x1.sroa.0.0.insert.insert) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %alias, ptr noundef nonnull align 1 dereferenceable(7) @.str.185, i64 7, i1 false)
  %add.ptr4 = getelementptr inbounds i8, ptr %alias, i64 6
  br label %for.body

for.body:                                         ; preds = %append_nibble_mask.exit, %if.end
  %digit.033 = phi i32 [ 0, %if.end ], [ %inc, %append_nibble_mask.exit ]
  %p.032 = phi ptr [ %add.ptr4, %if.end ], [ %p.2.i, %append_nibble_mask.exit ]
  %.neg = mul nsw i32 %digit.033, -4
  %mul = add nsw i32 %.neg, 28
  %shr = lshr i32 %__x.sroa.0.0.insert.insert, %mul
  %and6 = and i32 %shr, 15
  %shr9 = lshr i32 %__x1.sroa.0.0.insert.insert, %mul
  %and10 = and i32 %shr9, 15
  switch i32 %and10, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 15, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %for.body
  %incdec.ptr.i = getelementptr inbounds i8, ptr %p.032, i64 1
  store i8 63, ptr %p.032, align 1, !tbaa !30
  br label %append_nibble_mask.exit

sw.bb1.i:                                         ; preds = %for.body
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.032, ptr noundef nonnull @.str.19, i32 noundef %and6) #18
  %idx.ext.i = sext i32 %call.i to i64
  %add.ptr.i = getelementptr inbounds i8, ptr %p.032, i64 %idx.ext.i
  br label %append_nibble_mask.exit

sw.default.i:                                     ; preds = %for.body
  %incdec.ptr2.i = getelementptr inbounds i8, ptr %p.032, i64 1
  store i8 91, ptr %p.032, align 1, !tbaa !30
  %cmp3.i = icmp eq i32 %and6, 0
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %sw.default.i
  %call4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %incdec.ptr2.i, ptr noundef nonnull @.str.19, i32 noundef 0) #18
  %idx.ext5.i = sext i32 %call4.i to i64
  %add.ptr6.i = getelementptr inbounds i8, ptr %incdec.ptr2.i, i64 %idx.ext5.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %sw.default.i
  %p.1.i = phi ptr [ %add.ptr6.i, %if.then.i ], [ %incdec.ptr2.i, %sw.default.i ]
  %and.1.i = and i32 %shr9, 1
  %cmp3.1.i = icmp eq i32 %and.1.i, %and6
  br i1 %cmp3.1.i, label %if.then.1.i, label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  %call4.1.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.1.i, ptr noundef nonnull @.str.19, i32 noundef 1) #18
  %idx.ext5.1.i = sext i32 %call4.1.i to i64
  %add.ptr6.1.i = getelementptr inbounds i8, ptr %p.1.i, i64 %idx.ext5.1.i
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i
  %p.1.1.i = phi ptr [ %add.ptr6.1.i, %if.then.1.i ], [ %p.1.i, %for.inc.i ]
  %and.2.i = and i32 %shr9, 2
  %cmp3.2.i = icmp eq i32 %and.2.i, %and6
  br i1 %cmp3.2.i, label %if.then.2.i, label %for.inc.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  %call4.2.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.1.1.i, ptr noundef nonnull @.str.19, i32 noundef 2) #18
  %idx.ext5.2.i = sext i32 %call4.2.i to i64
  %add.ptr6.2.i = getelementptr inbounds i8, ptr %p.1.1.i, i64 %idx.ext5.2.i
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then.2.i, %for.inc.1.i
  %p.1.2.i = phi ptr [ %add.ptr6.2.i, %if.then.2.i ], [ %p.1.1.i, %for.inc.1.i ]
  %and.3.i = and i32 %shr9, 3
  %cmp3.3.i = icmp eq i32 %and.3.i, %and6
  br i1 %cmp3.3.i, label %if.then.3.i, label %for.inc.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  %call4.3.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.1.2.i, ptr noundef nonnull @.str.19, i32 noundef 3) #18
  %idx.ext5.3.i = sext i32 %call4.3.i to i64
  %add.ptr6.3.i = getelementptr inbounds i8, ptr %p.1.2.i, i64 %idx.ext5.3.i
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then.3.i, %for.inc.2.i
  %p.1.3.i = phi ptr [ %add.ptr6.3.i, %if.then.3.i ], [ %p.1.2.i, %for.inc.2.i ]
  %and.4.i = and i32 %shr9, 4
  %cmp3.4.i = icmp eq i32 %and.4.i, %and6
  br i1 %cmp3.4.i, label %if.then.4.i, label %for.inc.4.i

if.then.4.i:                                      ; preds = %for.inc.3.i
  %call4.4.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.1.3.i, ptr noundef nonnull @.str.19, i32 noundef 4) #18
  %idx.ext5.4.i = sext i32 %call4.4.i to i64
  %add.ptr6.4.i = getelementptr inbounds i8, ptr %p.1.3.i, i64 %idx.ext5.4.i
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then.4.i, %for.inc.3.i
  %p.1.4.i = phi ptr [ %add.ptr6.4.i, %if.then.4.i ], [ %p.1.3.i, %for.inc.3.i ]
  %and.5.i = and i32 %shr9, 5
  %cmp3.5.i = icmp eq i32 %and.5.i, %and6
  br i1 %cmp3.5.i, label %if.then.5.i, label %for.inc.5.i

if.then.5.i:                                      ; preds = %for.inc.4.i
  %call4.5.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.1.4.i, ptr noundef nonnull @.str.19, i32 noundef 5) #18
  %idx.ext5.5.i = sext i32 %call4.5.i to i64
  %add.ptr6.5.i = getelementptr inbounds i8, ptr %p.1.4.i, i64 %idx.ext5.5.i
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then.5.i, %for.inc.4.i
  %p.1.5.i = phi ptr [ %add.ptr6.5.i, %if.then.5.i ], [ %p.1.4.i, %for.inc.4.i ]
  %and.6.i = and i32 %shr9, 6
  %cmp3.6.i = icmp eq i32 %and.6.i, %and6
  br i1 %cmp3.6.i, label %if.then.6.i, label %for.inc.6.i

if.then.6.i:                                      ; preds = %for.inc.5.i
  %call4.6.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.1.5.i, ptr noundef nonnull @.str.19, i32 noundef 6) #18
  %idx.ext5.6.i = sext i32 %call4.6.i to i64
  %add.ptr6.6.i = getelementptr inbounds i8, ptr %p.1.5.i, i64 %idx.ext5.6.i
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then.6.i, %for.inc.5.i
  %p.1.6.i = phi ptr [ %add.ptr6.6.i, %if.then.6.i ], [ %p.1.5.i, %for.inc.5.i ]
  %and.7.i = and i32 %shr9, 7
  %cmp3.7.i = icmp eq i32 %and.7.i, %and6
  br i1 %cmp3.7.i, label %if.then.7.i, label %for.inc.7.i

if.then.7.i:                                      ; preds = %for.inc.6.i
  %call4.7.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.1.6.i, ptr noundef nonnull @.str.19, i32 noundef 7) #18
  %idx.ext5.7.i = sext i32 %call4.7.i to i64
  %add.ptr6.7.i = getelementptr inbounds i8, ptr %p.1.6.i, i64 %idx.ext5.7.i
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.then.7.i, %for.inc.6.i
  %p.1.7.i = phi ptr [ %add.ptr6.7.i, %if.then.7.i ], [ %p.1.6.i, %for.inc.6.i ]
  %and.8.i = and i32 %shr9, 8
  %cmp3.8.i = icmp eq i32 %and.8.i, %and6
  br i1 %cmp3.8.i, label %if.then.8.i, label %for.inc.8.i

if.then.8.i:                                      ; preds = %for.inc.7.i
  %call4.8.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.1.7.i, ptr noundef nonnull @.str.19, i32 noundef 8) #18
  %idx.ext5.8.i = sext i32 %call4.8.i to i64
  %add.ptr6.8.i = getelementptr inbounds i8, ptr %p.1.7.i, i64 %idx.ext5.8.i
  br label %for.inc.8.i

for.inc.8.i:                                      ; preds = %if.then.8.i, %for.inc.7.i
  %p.1.8.i = phi ptr [ %add.ptr6.8.i, %if.then.8.i ], [ %p.1.7.i, %for.inc.7.i ]
  %and.9.i = and i32 %shr9, 9
  %cmp3.9.i = icmp eq i32 %and.9.i, %and6
  br i1 %cmp3.9.i, label %if.then.9.i, label %for.inc.9.i

if.then.9.i:                                      ; preds = %for.inc.8.i
  %call4.9.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.1.8.i, ptr noundef nonnull @.str.19, i32 noundef 9) #18
  %idx.ext5.9.i = sext i32 %call4.9.i to i64
  %add.ptr6.9.i = getelementptr inbounds i8, ptr %p.1.8.i, i64 %idx.ext5.9.i
  br label %for.inc.9.i

for.inc.9.i:                                      ; preds = %if.then.9.i, %for.inc.8.i
  %p.1.9.i = phi ptr [ %add.ptr6.9.i, %if.then.9.i ], [ %p.1.8.i, %for.inc.8.i ]
  %and.10.i = and i32 %shr9, 10
  %cmp3.10.i = icmp eq i32 %and.10.i, %and6
  br i1 %cmp3.10.i, label %if.then.10.i, label %for.inc.10.i

if.then.10.i:                                     ; preds = %for.inc.9.i
  %call4.10.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.1.9.i, ptr noundef nonnull @.str.19, i32 noundef 10) #18
  %idx.ext5.10.i = sext i32 %call4.10.i to i64
  %add.ptr6.10.i = getelementptr inbounds i8, ptr %p.1.9.i, i64 %idx.ext5.10.i
  br label %for.inc.10.i

for.inc.10.i:                                     ; preds = %if.then.10.i, %for.inc.9.i
  %p.1.10.i = phi ptr [ %add.ptr6.10.i, %if.then.10.i ], [ %p.1.9.i, %for.inc.9.i ]
  %and.11.i = and i32 %shr9, 11
  %cmp3.11.i = icmp eq i32 %and.11.i, %and6
  br i1 %cmp3.11.i, label %if.then.11.i, label %for.inc.11.i

if.then.11.i:                                     ; preds = %for.inc.10.i
  %call4.11.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.1.10.i, ptr noundef nonnull @.str.19, i32 noundef 11) #18
  %idx.ext5.11.i = sext i32 %call4.11.i to i64
  %add.ptr6.11.i = getelementptr inbounds i8, ptr %p.1.10.i, i64 %idx.ext5.11.i
  br label %for.inc.11.i

for.inc.11.i:                                     ; preds = %if.then.11.i, %for.inc.10.i
  %p.1.11.i = phi ptr [ %add.ptr6.11.i, %if.then.11.i ], [ %p.1.10.i, %for.inc.10.i ]
  %and.12.i = and i32 %shr9, 12
  %cmp3.12.i = icmp eq i32 %and.12.i, %and6
  br i1 %cmp3.12.i, label %if.then.12.i, label %for.inc.12.i

if.then.12.i:                                     ; preds = %for.inc.11.i
  %call4.12.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.1.11.i, ptr noundef nonnull @.str.19, i32 noundef 12) #18
  %idx.ext5.12.i = sext i32 %call4.12.i to i64
  %add.ptr6.12.i = getelementptr inbounds i8, ptr %p.1.11.i, i64 %idx.ext5.12.i
  br label %for.inc.12.i

for.inc.12.i:                                     ; preds = %if.then.12.i, %for.inc.11.i
  %p.1.12.i = phi ptr [ %add.ptr6.12.i, %if.then.12.i ], [ %p.1.11.i, %for.inc.11.i ]
  %and.13.i = and i32 %shr9, 13
  %cmp3.13.i = icmp eq i32 %and.13.i, %and6
  br i1 %cmp3.13.i, label %if.then.13.i, label %for.inc.13.i

if.then.13.i:                                     ; preds = %for.inc.12.i
  %call4.13.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.1.12.i, ptr noundef nonnull @.str.19, i32 noundef 13) #18
  %idx.ext5.13.i = sext i32 %call4.13.i to i64
  %add.ptr6.13.i = getelementptr inbounds i8, ptr %p.1.12.i, i64 %idx.ext5.13.i
  br label %for.inc.13.i

for.inc.13.i:                                     ; preds = %if.then.13.i, %for.inc.12.i
  %p.1.13.i = phi ptr [ %add.ptr6.13.i, %if.then.13.i ], [ %p.1.12.i, %for.inc.12.i ]
  %and.14.i = and i32 %shr9, 14
  %cmp3.14.i = icmp eq i32 %and.14.i, %and6
  br i1 %cmp3.14.i, label %if.then.14.i, label %for.inc.14.i

if.then.14.i:                                     ; preds = %for.inc.13.i
  %call4.14.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.1.13.i, ptr noundef nonnull @.str.19, i32 noundef 14) #18
  %idx.ext5.14.i = sext i32 %call4.14.i to i64
  %add.ptr6.14.i = getelementptr inbounds i8, ptr %p.1.13.i, i64 %idx.ext5.14.i
  br label %for.inc.14.i

for.inc.14.i:                                     ; preds = %if.then.14.i, %for.inc.13.i
  %p.1.14.i = phi ptr [ %add.ptr6.14.i, %if.then.14.i ], [ %p.1.13.i, %for.inc.13.i ]
  %cmp3.15.i = icmp eq i32 %and10, %and6
  br i1 %cmp3.15.i, label %if.then.15.i, label %for.inc.15.i

if.then.15.i:                                     ; preds = %for.inc.14.i
  %call4.15.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %p.1.14.i, ptr noundef nonnull @.str.19, i32 noundef 15) #18
  %idx.ext5.15.i = sext i32 %call4.15.i to i64
  %add.ptr6.15.i = getelementptr inbounds i8, ptr %p.1.14.i, i64 %idx.ext5.15.i
  br label %for.inc.15.i

for.inc.15.i:                                     ; preds = %if.then.15.i, %for.inc.14.i
  %p.1.15.i = phi ptr [ %add.ptr6.15.i, %if.then.15.i ], [ %p.1.14.i, %for.inc.14.i ]
  %incdec.ptr7.i = getelementptr inbounds i8, ptr %p.1.15.i, i64 1
  store i8 93, ptr %p.1.15.i, align 1, !tbaa !30
  br label %append_nibble_mask.exit

append_nibble_mask.exit:                          ; preds = %for.inc.15.i, %sw.bb1.i, %sw.bb.i
  %p.2.i = phi ptr [ %incdec.ptr7.i, %for.inc.15.i ], [ %add.ptr.i, %sw.bb1.i ], [ %incdec.ptr.i, %sw.bb.i ]
  store i8 0, ptr %p.2.i, align 1, !tbaa !30
  %inc = add nuw nsw i32 %digit.033, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %append_nibble_mask.exit
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_mips_cdmm_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr nocapture noundef writeonly %alias) #10 {
entry:
  %0 = load i8, ptr %symval, align 1, !tbaa !30
  %conv = zext i8 %0 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.186, i32 noundef %conv) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_x86cpu_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #10 {
entry:
  %add.ptr = getelementptr i8, ptr %symval, i64 8
  %arrayidx.i = getelementptr i8, ptr %symval, i64 9
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %1 = load i8, ptr %add.ptr, align 1, !tbaa !30
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i16
  %__x.sroa.4.0.insert.shift = shl nuw i16 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i16
  %__x.sroa.0.0.insert.insert = or i16 %__x.sroa.4.0.insert.shift, %__x.sroa.0.0.insert.ext
  %add.ptr2 = getelementptr i8, ptr %symval, i64 2
  %arrayidx.i98 = getelementptr i8, ptr %symval, i64 3
  %2 = load i8, ptr %arrayidx.i98, align 1, !tbaa !30
  %3 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %__x1.sroa.4.0.insert.ext = zext i8 %3 to i16
  %__x1.sroa.4.0.insert.shift = shl nuw i16 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.0.0.insert.ext = zext i8 %2 to i16
  %__x1.sroa.0.0.insert.insert = or i16 %__x1.sroa.4.0.insert.shift, %__x1.sroa.0.0.insert.ext
  %add.ptr5 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i108 = getelementptr i8, ptr %symval, i64 5
  %4 = load i8, ptr %arrayidx.i108, align 1, !tbaa !30
  %5 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %__x4.sroa.4.0.insert.ext = zext i8 %5 to i16
  %__x4.sroa.4.0.insert.shift = shl nuw i16 %__x4.sroa.4.0.insert.ext, 8
  %__x4.sroa.0.0.insert.ext = zext i8 %4 to i16
  %__x4.sroa.0.0.insert.insert = or i16 %__x4.sroa.4.0.insert.shift, %__x4.sroa.0.0.insert.ext
  %arrayidx.i118 = getelementptr inbounds i8, ptr %symval, i64 1
  %6 = load i8, ptr %arrayidx.i118, align 1, !tbaa !30
  %7 = load i8, ptr %symval, align 1, !tbaa !30
  %__x7.sroa.4.0.insert.ext = zext i8 %7 to i16
  %__x7.sroa.4.0.insert.shift = shl nuw i16 %__x7.sroa.4.0.insert.ext, 8
  %__x7.sroa.0.0.insert.ext = zext i8 %6 to i16
  %__x7.sroa.0.0.insert.insert = or i16 %__x7.sroa.4.0.insert.shift, %__x7.sroa.0.0.insert.ext
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %alias, ptr noundef nonnull align 1 dereferenceable(14) @.str.187, i64 14, i1 false) #18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i32 7234934, ptr %endptr, align 1
  %cmp.not = icmp eq i16 %__x7.sroa.0.0.insert.insert, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i16 %__x7.sroa.0.0.insert.insert to i32
  %call12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr13 = getelementptr inbounds i8, ptr %alias, i64 %call12
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr13, ptr noundef nonnull @.str.14, i32 noundef %conv) #18
  br label %do.body19

if.else:                                          ; preds = %entry
  %call16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr17 = getelementptr inbounds i8, ptr %alias, i64 %call16
  store i16 42, ptr %add.ptr17, align 1
  br label %do.body19

do.body19:                                        ; preds = %if.else, %if.then
  %strlen88 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr89 = getelementptr i8, ptr %alias, i64 %strlen88
  store i32 7168358, ptr %endptr89, align 1
  %cmp22.not = icmp eq i16 %__x1.sroa.0.0.insert.insert, 0
  br i1 %cmp22.not, label %if.else29, label %if.then24

if.then24:                                        ; preds = %do.body19
  %conv21 = zext i16 %__x1.sroa.0.0.insert.insert to i32
  %call25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr26 = getelementptr inbounds i8, ptr %alias, i64 %call25
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr26, ptr noundef nonnull @.str.14, i32 noundef %conv21) #18
  br label %do.body36

if.else29:                                        ; preds = %do.body19
  %call30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr31 = getelementptr inbounds i8, ptr %alias, i64 %call30
  store i16 42, ptr %add.ptr31, align 1
  br label %do.body36

do.body36:                                        ; preds = %if.else29, %if.then24
  %strlen90 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr91 = getelementptr i8, ptr %alias, i64 %strlen90
  store i32 6582125, ptr %endptr91, align 1
  %cmp39.not = icmp eq i16 %__x4.sroa.0.0.insert.insert, 0
  br i1 %cmp39.not, label %if.else46, label %if.then41

if.then41:                                        ; preds = %do.body36
  %conv38 = zext i16 %__x4.sroa.0.0.insert.insert to i32
  %call42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr43 = getelementptr inbounds i8, ptr %alias, i64 %call42
  %call45 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr43, ptr noundef nonnull @.str.14, i32 noundef %conv38) #18
  br label %do.end52

if.else46:                                        ; preds = %do.body36
  %call47 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr48 = getelementptr inbounds i8, ptr %alias, i64 %call47
  store i16 42, ptr %add.ptr48, align 1
  br label %do.end52

do.end52:                                         ; preds = %if.else46, %if.then41
  %strlen92 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr93 = getelementptr i8, ptr %alias, i64 %strlen92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %endptr93, ptr noundef nonnull align 1 dereferenceable(11) @.str.190, i64 11, i1 false)
  %cmp55.not = icmp eq i16 %__x.sroa.0.0.insert.insert, 0
  br i1 %cmp55.not, label %if.end62, label %if.then57

if.then57:                                        ; preds = %do.end52
  %conv54 = zext i16 %__x.sroa.0.0.insert.insert to i32
  %call58 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr59 = getelementptr inbounds i8, ptr %alias, i64 %call58
  %call61 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr59, ptr noundef nonnull @.str.191, i32 noundef %conv54) #18
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %do.end52
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_cpu_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr nocapture noundef writeonly %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 1
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %1 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i32
  %__x.sroa.4.0.insert.shift = shl nuw nsw i32 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %__x.sroa.0.0.insert.insert = or i32 %__x.sroa.4.0.insert.shift, %__x.sroa.0.0.insert.ext
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.192, i32 noundef %__x.sroa.0.0.insert.insert) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_mei_entry(ptr nocapture noundef readnone %filename, ptr noundef %symval, ptr nocapture noundef %alias) #10 {
entry:
  %add.ptr1 = getelementptr i8, ptr %symval, i64 32
  %add.ptr2 = getelementptr i8, ptr %symval, i64 48
  %0 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %alias, ptr noundef nonnull align 1 dereferenceable(5) @.str.193, i64 5, i1 false)
  %call3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr4 = getelementptr inbounds i8, ptr %alias, i64 %call3
  %1 = load i8, ptr %symval, align 1, !tbaa !30
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, ptr @.str.15, ptr %symval
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr4, ptr noundef nonnull @.str.194, ptr noundef nonnull %cond) #18
  %2 = load i64, ptr %add.ptr1, align 1
  %3 = getelementptr i8, ptr %symval, i64 40
  %4 = load i64, ptr %3, align 1
  %uuid.sroa.0.0.extract.trunc.i = trunc i64 %2 to i32
  %5 = lshr i32 %uuid.sroa.0.0.extract.trunc.i, 8
  %6 = lshr i32 %uuid.sroa.0.0.extract.trunc.i, 16
  %7 = lshr i32 %uuid.sroa.0.0.extract.trunc.i, 24
  %uuid.sroa.5.0.extract.shift.i = lshr i64 %2, 32
  %uuid.sroa.5.0.extract.trunc.i = trunc i64 %uuid.sroa.5.0.extract.shift.i to i32
  %uuid.sroa.6.0.extract.shift.i = lshr i64 %2, 40
  %uuid.sroa.6.0.extract.trunc.i = trunc i64 %uuid.sroa.6.0.extract.shift.i to i32
  %uuid.sroa.7.0.extract.shift.i = lshr i64 %2, 48
  %uuid.sroa.7.0.extract.trunc.i = trunc i64 %uuid.sroa.7.0.extract.shift.i to i32
  %uuid.sroa.8.0.extract.shift.i = lshr i64 %2, 56
  %uuid.sroa.8.0.extract.trunc.i = trunc i64 %uuid.sroa.8.0.extract.shift.i to i32
  %uuid.sroa.9.8.extract.trunc.i = trunc i64 %4 to i32
  %8 = lshr i32 %uuid.sroa.9.8.extract.trunc.i, 8
  %9 = lshr i32 %uuid.sroa.9.8.extract.trunc.i, 16
  %10 = lshr i32 %uuid.sroa.9.8.extract.trunc.i, 24
  %uuid.sroa.14.8.extract.shift.i = lshr i64 %4, 32
  %uuid.sroa.14.8.extract.trunc.i = trunc i64 %uuid.sroa.14.8.extract.shift.i to i32
  %uuid.sroa.15.8.extract.shift.i = lshr i64 %4, 40
  %uuid.sroa.15.8.extract.trunc.i = trunc i64 %uuid.sroa.15.8.extract.shift.i to i32
  %uuid.sroa.16.8.extract.shift.i = lshr i64 %4, 48
  %uuid.sroa.16.8.extract.trunc.i = trunc i64 %uuid.sroa.16.8.extract.shift.i to i32
  %uuid.sroa.17.8.extract.shift.i = lshr i64 %4, 56
  %uuid.sroa.17.8.extract.trunc.i = trunc i64 %uuid.sroa.17.8.extract.shift.i to i32
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sext.i = shl i64 %call.i, 32
  %idx.ext.i = ashr exact i64 %sext.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %conv4.i = and i32 %6, 255
  %conv7.i = and i32 %5, 255
  %conv10.i = and i32 %uuid.sroa.0.0.extract.trunc.i, 255
  %conv13.i = and i32 %uuid.sroa.6.0.extract.trunc.i, 255
  %conv16.i = and i32 %uuid.sroa.5.0.extract.trunc.i, 255
  %conv22.i = and i32 %uuid.sroa.7.0.extract.trunc.i, 255
  %conv25.i = and i32 %uuid.sroa.9.8.extract.trunc.i, 255
  %conv28.i = and i32 %8, 255
  %conv31.i = and i32 %9, 255
  %conv37.i = and i32 %uuid.sroa.14.8.extract.trunc.i, 255
  %conv40.i = and i32 %uuid.sroa.15.8.extract.trunc.i, 255
  %conv43.i = and i32 %uuid.sroa.16.8.extract.trunc.i, 255
  %call47.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i, ptr noundef nonnull @.str.195, i32 noundef %7, i32 noundef %conv4.i, i32 noundef %conv7.i, i32 noundef %conv10.i, i32 noundef %conv13.i, i32 noundef %conv16.i, i32 noundef %uuid.sroa.8.0.extract.trunc.i, i32 noundef %conv22.i, i32 noundef %conv25.i, i32 noundef %conv28.i, i32 noundef %conv31.i, i32 noundef %10, i32 noundef %conv37.i, i32 noundef %conv40.i, i32 noundef %conv43.i, i32 noundef %uuid.sroa.17.8.extract.trunc.i) #18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 58, ptr %endptr, align 1
  %cmp.not = icmp eq i8 %0, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv7 = zext i8 %0 to i32
  %call9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr10 = getelementptr inbounds i8, ptr %alias, i64 %call9
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr10, ptr noundef nonnull @.str.26, i32 noundef %conv7) #18
  br label %do.end

if.else:                                          ; preds = %entry
  %call13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr14 = getelementptr inbounds i8, ptr %alias, i64 %call13
  store i16 42, ptr %add.ptr14, align 1
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %strlen30 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr31 = getelementptr i8, ptr %alias, i64 %strlen30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr31, ptr noundef nonnull align 1 dereferenceable(3) @.str.121, i64 3, i1 false)
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_rio_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 1
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %1 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i16
  %__x.sroa.4.0.insert.shift = shl nuw i16 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i16
  %__x.sroa.0.0.insert.insert = or i16 %__x.sroa.4.0.insert.shift, %__x.sroa.0.0.insert.ext
  %add.ptr2 = getelementptr i8, ptr %symval, i64 2
  %arrayidx.i108 = getelementptr i8, ptr %symval, i64 3
  %2 = load i8, ptr %arrayidx.i108, align 1, !tbaa !30
  %3 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %__x1.sroa.4.0.insert.ext = zext i8 %3 to i16
  %__x1.sroa.4.0.insert.shift = shl nuw i16 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.0.0.insert.ext = zext i8 %2 to i16
  %__x1.sroa.0.0.insert.insert = or i16 %__x1.sroa.4.0.insert.shift, %__x1.sroa.0.0.insert.ext
  %add.ptr5 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i118 = getelementptr i8, ptr %symval, i64 5
  %4 = load i8, ptr %arrayidx.i118, align 1, !tbaa !30
  %5 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %__x4.sroa.4.0.insert.ext = zext i8 %5 to i16
  %__x4.sroa.4.0.insert.shift = shl nuw i16 %__x4.sroa.4.0.insert.ext, 8
  %__x4.sroa.0.0.insert.ext = zext i8 %4 to i16
  %__x4.sroa.0.0.insert.insert = or i16 %__x4.sroa.4.0.insert.shift, %__x4.sroa.0.0.insert.ext
  %add.ptr8 = getelementptr i8, ptr %symval, i64 6
  %arrayidx.i128 = getelementptr i8, ptr %symval, i64 7
  %6 = load i8, ptr %arrayidx.i128, align 1, !tbaa !30
  %7 = load i8, ptr %add.ptr8, align 1, !tbaa !30
  %__x7.sroa.4.0.insert.ext = zext i8 %7 to i16
  %__x7.sroa.4.0.insert.shift = shl nuw i16 %__x7.sroa.4.0.insert.ext, 8
  %__x7.sroa.0.0.insert.ext = zext i8 %6 to i16
  %__x7.sroa.0.0.insert.insert = or i16 %__x7.sroa.4.0.insert.shift, %__x7.sroa.0.0.insert.ext
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %alias, ptr noundef nonnull align 1 dereferenceable(9) @.str.196, i64 9, i1 false) #18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 118, ptr %endptr, align 1
  %cmp.not = icmp eq i16 %__x1.sroa.0.0.insert.insert, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i16 %__x1.sroa.0.0.insert.insert to i32
  %call12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr13 = getelementptr inbounds i8, ptr %alias, i64 %call12
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr13, ptr noundef nonnull @.str.14, i32 noundef %conv) #18
  br label %do.body19

if.else:                                          ; preds = %entry
  %call16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr17 = getelementptr inbounds i8, ptr %alias, i64 %call16
  store i16 42, ptr %add.ptr17, align 1
  br label %do.body19

do.body19:                                        ; preds = %if.else, %if.then
  %strlen98 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr99 = getelementptr i8, ptr %alias, i64 %strlen98
  store i16 100, ptr %endptr99, align 1
  %cmp22.not = icmp eq i16 %__x.sroa.0.0.insert.insert, -1
  br i1 %cmp22.not, label %if.else29, label %if.then24

if.then24:                                        ; preds = %do.body19
  %conv21 = zext i16 %__x.sroa.0.0.insert.insert to i32
  %call25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr26 = getelementptr inbounds i8, ptr %alias, i64 %call25
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr26, ptr noundef nonnull @.str.14, i32 noundef %conv21) #18
  br label %do.body36

if.else29:                                        ; preds = %do.body19
  %call30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr31 = getelementptr inbounds i8, ptr %alias, i64 %call30
  store i16 42, ptr %add.ptr31, align 1
  br label %do.body36

do.body36:                                        ; preds = %if.else29, %if.then24
  %strlen100 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr101 = getelementptr i8, ptr %alias, i64 %strlen100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr101, ptr noundef nonnull align 1 dereferenceable(3) @.str.197, i64 3, i1 false)
  %cmp39.not = icmp eq i16 %__x7.sroa.0.0.insert.insert, -1
  br i1 %cmp39.not, label %if.else46, label %if.then41

if.then41:                                        ; preds = %do.body36
  %conv38 = zext i16 %__x7.sroa.0.0.insert.insert to i32
  %call42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr43 = getelementptr inbounds i8, ptr %alias, i64 %call42
  %call45 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr43, ptr noundef nonnull @.str.14, i32 noundef %conv38) #18
  br label %do.body53

if.else46:                                        ; preds = %do.body36
  %call47 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr48 = getelementptr inbounds i8, ptr %alias, i64 %call47
  store i16 42, ptr %add.ptr48, align 1
  br label %do.body53

do.body53:                                        ; preds = %if.else46, %if.then41
  %strlen102 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr103 = getelementptr i8, ptr %alias, i64 %strlen102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr103, ptr noundef nonnull align 1 dereferenceable(3) @.str.198, i64 3, i1 false)
  %cmp56.not = icmp eq i16 %__x4.sroa.0.0.insert.insert, -1
  br i1 %cmp56.not, label %if.else63, label %if.then58

if.then58:                                        ; preds = %do.body53
  %conv55 = zext i16 %__x4.sroa.0.0.insert.insert to i32
  %call59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr60 = getelementptr inbounds i8, ptr %alias, i64 %call59
  %call62 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr60, ptr noundef nonnull @.str.14, i32 noundef %conv55) #18
  br label %do.end69

if.else63:                                        ; preds = %do.body53
  %call64 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr65 = getelementptr inbounds i8, ptr %alias, i64 %call64
  store i16 42, ptr %add.ptr65, align 1
  br label %do.end69

do.end69:                                         ; preds = %if.else63, %if.then58
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i134 = ashr exact i64 %sext.i, 32
  %arrayidx.i135 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i134
  %8 = load i8, ptr %arrayidx.i135, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %8, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end69
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %do.end69
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_ulpi_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr nocapture noundef writeonly %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 1
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %1 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i32
  %__x.sroa.4.0.insert.shift = shl nuw nsw i32 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %__x.sroa.0.0.insert.insert = or i32 %__x.sroa.4.0.insert.shift, %__x.sroa.0.0.insert.ext
  %add.ptr2 = getelementptr i8, ptr %symval, i64 2
  %arrayidx.i10 = getelementptr i8, ptr %symval, i64 3
  %2 = load i8, ptr %arrayidx.i10, align 1, !tbaa !30
  %3 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %__x1.sroa.4.0.insert.ext = zext i8 %3 to i32
  %__x1.sroa.4.0.insert.shift = shl nuw nsw i32 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.0.0.insert.ext = zext i8 %2 to i32
  %__x1.sroa.0.0.insert.insert = or i32 %__x1.sroa.4.0.insert.shift, %__x1.sroa.0.0.insert.ext
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.199, i32 noundef %__x.sroa.0.0.insert.insert, i32 noundef %__x1.sroa.0.0.insert.insert) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_hda_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 3
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %symval, i64 2
  %1 = load i8, ptr %arrayidx.i.1, align 1, !tbaa !30
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %symval, i64 1
  %2 = load i8, ptr %arrayidx.i.2, align 1, !tbaa !30
  %3 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.6.0.insert.ext = zext i8 %3 to i32
  %__x.sroa.6.0.insert.shift = shl nuw i32 %__x.sroa.6.0.insert.ext, 24
  %__x.sroa.5.0.insert.ext = zext i8 %2 to i32
  %__x.sroa.5.0.insert.shift = shl nuw nsw i32 %__x.sroa.5.0.insert.ext, 16
  %__x.sroa.5.0.insert.insert = or i32 %__x.sroa.6.0.insert.shift, %__x.sroa.5.0.insert.shift
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i32
  %__x.sroa.4.0.insert.shift = shl nuw nsw i32 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.4.0.insert.insert = or i32 %__x.sroa.5.0.insert.insert, %__x.sroa.4.0.insert.shift
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %__x.sroa.0.0.insert.insert = or i32 %__x.sroa.4.0.insert.insert, %__x.sroa.0.0.insert.ext
  %add.ptr2 = getelementptr i8, ptr %symval, i64 4
  %arrayidx.i74 = getelementptr i8, ptr %symval, i64 7
  %4 = load i8, ptr %arrayidx.i74, align 1, !tbaa !30
  %arrayidx.i74.1 = getelementptr i8, ptr %symval, i64 6
  %5 = load i8, ptr %arrayidx.i74.1, align 1, !tbaa !30
  %arrayidx.i74.2 = getelementptr i8, ptr %symval, i64 5
  %6 = load i8, ptr %arrayidx.i74.2, align 1, !tbaa !30
  %7 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %__x1.sroa.6.0.insert.ext = zext i8 %7 to i32
  %__x1.sroa.6.0.insert.shift = shl nuw i32 %__x1.sroa.6.0.insert.ext, 24
  %__x1.sroa.5.0.insert.ext = zext i8 %6 to i32
  %__x1.sroa.5.0.insert.shift = shl nuw nsw i32 %__x1.sroa.5.0.insert.ext, 16
  %__x1.sroa.5.0.insert.insert = or i32 %__x1.sroa.6.0.insert.shift, %__x1.sroa.5.0.insert.shift
  %__x1.sroa.4.0.insert.ext = zext i8 %5 to i32
  %__x1.sroa.4.0.insert.shift = shl nuw nsw i32 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.4.0.insert.insert = or i32 %__x1.sroa.5.0.insert.insert, %__x1.sroa.4.0.insert.shift
  %__x1.sroa.0.0.insert.ext = zext i8 %4 to i32
  %__x1.sroa.0.0.insert.insert = or i32 %__x1.sroa.4.0.insert.insert, %__x1.sroa.0.0.insert.ext
  %add.ptr5 = getelementptr i8, ptr %symval, i64 8
  %8 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %alias, ptr noundef nonnull align 1 dereferenceable(9) @.str.200, i64 9, i1 false) #18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 118, ptr %endptr, align 1
  %cmp.not = icmp eq i32 %__x.sroa.0.0.insert.insert, 0
  %call11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr12 = getelementptr inbounds i8, ptr %alias, i64 %call11
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr12, ptr noundef nonnull @.str.90, i32 noundef %__x.sroa.0.0.insert.insert) #18
  br label %do.body14

if.else:                                          ; preds = %entry
  store i16 42, ptr %add.ptr12, align 1
  br label %do.body14

do.body14:                                        ; preds = %if.else, %if.then
  %strlen66 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr67 = getelementptr i8, ptr %alias, i64 %strlen66
  store i16 114, ptr %endptr67, align 1
  %cmp16.not = icmp eq i32 %__x1.sroa.0.0.insert.insert, 0
  %call22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr23 = getelementptr inbounds i8, ptr %alias, i64 %call22
  br i1 %cmp16.not, label %if.else21, label %if.then17

if.then17:                                        ; preds = %do.body14
  %call20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr23, ptr noundef nonnull @.str.90, i32 noundef %__x1.sroa.0.0.insert.insert) #18
  br label %do.body28

if.else21:                                        ; preds = %do.body14
  store i16 42, ptr %add.ptr23, align 1
  br label %do.body28

do.body28:                                        ; preds = %if.else21, %if.then17
  %strlen68 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr69 = getelementptr i8, ptr %alias, i64 %strlen68
  store i16 97, ptr %endptr69, align 1
  %cmp30.not = icmp eq i8 %8, 0
  br i1 %cmp30.not, label %if.else37, label %if.then32

if.then32:                                        ; preds = %do.body28
  %conv = zext i8 %8 to i32
  %call33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr34 = getelementptr inbounds i8, ptr %alias, i64 %call33
  %call36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr34, ptr noundef nonnull @.str.26, i32 noundef %conv) #18
  br label %do.end43

if.else37:                                        ; preds = %do.body28
  %call38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr39 = getelementptr inbounds i8, ptr %alias, i64 %call38
  store i16 42, ptr %add.ptr39, align 1
  br label %do.end43

do.end43:                                         ; preds = %if.else37, %if.then32
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i90 = ashr exact i64 %sext.i, 32
  %arrayidx.i91 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i90
  %9 = load i8, ptr %arrayidx.i91, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %9, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end43
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %do.end43
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_sdw_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 1
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %1 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i16
  %__x.sroa.4.0.insert.shift = shl nuw i16 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i16
  %__x.sroa.0.0.insert.insert = or i16 %__x.sroa.4.0.insert.shift, %__x.sroa.0.0.insert.ext
  %add.ptr2 = getelementptr i8, ptr %symval, i64 2
  %arrayidx.i108 = getelementptr i8, ptr %symval, i64 3
  %2 = load i8, ptr %arrayidx.i108, align 1, !tbaa !30
  %3 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %__x1.sroa.4.0.insert.ext = zext i8 %3 to i16
  %__x1.sroa.4.0.insert.shift = shl nuw i16 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.0.0.insert.ext = zext i8 %2 to i16
  %__x1.sroa.0.0.insert.insert = or i16 %__x1.sroa.4.0.insert.shift, %__x1.sroa.0.0.insert.ext
  %add.ptr5 = getelementptr i8, ptr %symval, i64 4
  %4 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %add.ptr8 = getelementptr i8, ptr %symval, i64 5
  %5 = load i8, ptr %add.ptr8, align 1, !tbaa !30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %alias, ptr noundef nonnull align 1 dereferenceable(5) @.str.203, i64 5, i1 false) #18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 109, ptr %endptr, align 1
  %cmp.not = icmp eq i16 %__x.sroa.0.0.insert.insert, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv = zext i16 %__x.sroa.0.0.insert.insert to i32
  %call12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr13 = getelementptr inbounds i8, ptr %alias, i64 %call12
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr13, ptr noundef nonnull @.str.14, i32 noundef %conv) #18
  br label %do.body19

if.else:                                          ; preds = %entry
  %call16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr17 = getelementptr inbounds i8, ptr %alias, i64 %call16
  store i16 42, ptr %add.ptr17, align 1
  br label %do.body19

do.body19:                                        ; preds = %if.else, %if.then
  %strlen98 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr99 = getelementptr i8, ptr %alias, i64 %strlen98
  store i16 112, ptr %endptr99, align 1
  %cmp22.not = icmp eq i16 %__x1.sroa.0.0.insert.insert, 0
  br i1 %cmp22.not, label %if.else29, label %if.then24

if.then24:                                        ; preds = %do.body19
  %conv21 = zext i16 %__x1.sroa.0.0.insert.insert to i32
  %call25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr26 = getelementptr inbounds i8, ptr %alias, i64 %call25
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr26, ptr noundef nonnull @.str.14, i32 noundef %conv21) #18
  br label %do.body36

if.else29:                                        ; preds = %do.body19
  %call30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr31 = getelementptr inbounds i8, ptr %alias, i64 %call30
  store i16 42, ptr %add.ptr31, align 1
  br label %do.body36

do.body36:                                        ; preds = %if.else29, %if.then24
  %strlen100 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr101 = getelementptr i8, ptr %alias, i64 %strlen100
  store i16 118, ptr %endptr101, align 1
  %cmp39.not = icmp eq i8 %4, 0
  br i1 %cmp39.not, label %if.else46, label %if.then41

if.then41:                                        ; preds = %do.body36
  %conv38 = zext i8 %4 to i32
  %call42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr43 = getelementptr inbounds i8, ptr %alias, i64 %call42
  %call45 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr43, ptr noundef nonnull @.str.26, i32 noundef %conv38) #18
  br label %do.body53

if.else46:                                        ; preds = %do.body36
  %call47 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr48 = getelementptr inbounds i8, ptr %alias, i64 %call47
  store i16 42, ptr %add.ptr48, align 1
  br label %do.body53

do.body53:                                        ; preds = %if.else46, %if.then41
  %strlen102 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr103 = getelementptr i8, ptr %alias, i64 %strlen102
  store i16 99, ptr %endptr103, align 1
  %cmp56.not = icmp eq i8 %5, 0
  br i1 %cmp56.not, label %if.else63, label %if.then58

if.then58:                                        ; preds = %do.body53
  %conv55 = zext i8 %5 to i32
  %call59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr60 = getelementptr inbounds i8, ptr %alias, i64 %call59
  %call62 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr60, ptr noundef nonnull @.str.26, i32 noundef %conv55) #18
  br label %do.end69

if.else63:                                        ; preds = %do.body53
  %call64 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr65 = getelementptr inbounds i8, ptr %alias, i64 %call64
  store i16 42, ptr %add.ptr65, align 1
  br label %do.end69

do.end69:                                         ; preds = %if.else63, %if.then58
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i134 = ashr exact i64 %sext.i, 32
  %arrayidx.i135 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i134
  %6 = load i8, ptr %arrayidx.i135, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %6, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end69
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %do.end69
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_fsl_mc_entry(ptr nocapture noundef readnone %filename, ptr noundef %symval, ptr nocapture noundef writeonly %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 1
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %1 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i32
  %__x.sroa.4.0.insert.shift = shl nuw nsw i32 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %__x.sroa.0.0.insert.insert = or i32 %__x.sroa.4.0.insert.shift, %__x.sroa.0.0.insert.ext
  %add.ptr1 = getelementptr i8, ptr %symval, i64 2
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.204, i32 noundef %__x.sroa.0.0.insert.insert, ptr noundef %add.ptr1) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_tbsvc_entry(ptr nocapture noundef readnone %filename, ptr noundef %symval, ptr noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 3
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %add.ptr3 = getelementptr i8, ptr %symval, i64 16
  %arrayidx.i96 = getelementptr i8, ptr %symval, i64 19
  %1 = load i8, ptr %arrayidx.i96, align 1, !tbaa !30
  %arrayidx.i96.1 = getelementptr i8, ptr %symval, i64 18
  %2 = load i8, ptr %arrayidx.i96.1, align 1, !tbaa !30
  %arrayidx.i96.2 = getelementptr i8, ptr %symval, i64 17
  %3 = load i8, ptr %arrayidx.i96.2, align 1, !tbaa !30
  %4 = load i8, ptr %add.ptr3, align 1, !tbaa !30
  %__x2.sroa.6.0.insert.ext = zext i8 %4 to i32
  %__x2.sroa.6.0.insert.shift = shl nuw i32 %__x2.sroa.6.0.insert.ext, 24
  %__x2.sroa.5.0.insert.ext = zext i8 %3 to i32
  %__x2.sroa.5.0.insert.shift = shl nuw nsw i32 %__x2.sroa.5.0.insert.ext, 16
  %__x2.sroa.5.0.insert.insert = or i32 %__x2.sroa.6.0.insert.shift, %__x2.sroa.5.0.insert.shift
  %__x2.sroa.4.0.insert.ext = zext i8 %2 to i32
  %__x2.sroa.4.0.insert.shift = shl nuw nsw i32 %__x2.sroa.4.0.insert.ext, 8
  %__x2.sroa.4.0.insert.insert = or i32 %__x2.sroa.5.0.insert.insert, %__x2.sroa.4.0.insert.shift
  %__x2.sroa.0.0.insert.ext = zext i8 %1 to i32
  %__x2.sroa.0.0.insert.insert = or i32 %__x2.sroa.4.0.insert.insert, %__x2.sroa.0.0.insert.ext
  %add.ptr6 = getelementptr i8, ptr %symval, i64 20
  %arrayidx.i106 = getelementptr i8, ptr %symval, i64 23
  %5 = load i8, ptr %arrayidx.i106, align 1, !tbaa !30
  %arrayidx.i106.1 = getelementptr i8, ptr %symval, i64 22
  %6 = load i8, ptr %arrayidx.i106.1, align 1, !tbaa !30
  %arrayidx.i106.2 = getelementptr i8, ptr %symval, i64 21
  %7 = load i8, ptr %arrayidx.i106.2, align 1, !tbaa !30
  %8 = load i8, ptr %add.ptr6, align 1, !tbaa !30
  %__x5.sroa.6.0.insert.ext = zext i8 %8 to i32
  %__x5.sroa.6.0.insert.shift = shl nuw i32 %__x5.sroa.6.0.insert.ext, 24
  %__x5.sroa.5.0.insert.ext = zext i8 %7 to i32
  %__x5.sroa.5.0.insert.shift = shl nuw nsw i32 %__x5.sroa.5.0.insert.ext, 16
  %__x5.sroa.5.0.insert.insert = or i32 %__x5.sroa.6.0.insert.shift, %__x5.sroa.5.0.insert.shift
  %__x5.sroa.4.0.insert.ext = zext i8 %6 to i32
  %__x5.sroa.4.0.insert.shift = shl nuw nsw i32 %__x5.sroa.4.0.insert.ext, 8
  %__x5.sroa.4.0.insert.insert = or i32 %__x5.sroa.5.0.insert.insert, %__x5.sroa.4.0.insert.shift
  %__x5.sroa.0.0.insert.ext = zext i8 %5 to i32
  %__x5.sroa.0.0.insert.insert = or i32 %__x5.sroa.4.0.insert.insert, %__x5.sroa.0.0.insert.ext
  %add.ptr9 = getelementptr i8, ptr %symval, i64 24
  %arrayidx.i116 = getelementptr i8, ptr %symval, i64 27
  %9 = load i8, ptr %arrayidx.i116, align 1, !tbaa !30
  %arrayidx.i116.1 = getelementptr i8, ptr %symval, i64 26
  %10 = load i8, ptr %arrayidx.i116.1, align 1, !tbaa !30
  %arrayidx.i116.2 = getelementptr i8, ptr %symval, i64 25
  %11 = load i8, ptr %arrayidx.i116.2, align 1, !tbaa !30
  %12 = load i8, ptr %add.ptr9, align 1, !tbaa !30
  %__x8.sroa.6.0.insert.ext = zext i8 %12 to i32
  %__x8.sroa.6.0.insert.shift = shl nuw i32 %__x8.sroa.6.0.insert.ext, 24
  %__x8.sroa.5.0.insert.ext = zext i8 %11 to i32
  %__x8.sroa.5.0.insert.shift = shl nuw nsw i32 %__x8.sroa.5.0.insert.ext, 16
  %__x8.sroa.5.0.insert.insert = or i32 %__x8.sroa.6.0.insert.shift, %__x8.sroa.5.0.insert.shift
  %__x8.sroa.4.0.insert.ext = zext i8 %10 to i32
  %__x8.sroa.4.0.insert.shift = shl nuw nsw i32 %__x8.sroa.4.0.insert.ext, 8
  %__x8.sroa.4.0.insert.insert = or i32 %__x8.sroa.5.0.insert.insert, %__x8.sroa.4.0.insert.shift
  %__x8.sroa.0.0.insert.ext = zext i8 %9 to i32
  %__x8.sroa.0.0.insert.insert = or i32 %__x8.sroa.4.0.insert.insert, %__x8.sroa.0.0.insert.ext
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %alias, ptr noundef nonnull align 1 dereferenceable(7) @.str.205, i64 7, i1 false) #18
  %and = and i32 %__x.sroa.0.0.insert.ext, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr1 = getelementptr i8, ptr %symval, i64 4
  %call11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr12 = getelementptr inbounds i8, ptr %alias, i64 %call11
  %call13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr12, ptr noundef nonnull @.str.206, ptr noundef %add.ptr1) #18
  br label %do.body

if.else:                                          ; preds = %entry
  %call14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr15 = getelementptr inbounds i8, ptr %alias, i64 %call14
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr15)
  %endptr = getelementptr i8, ptr %add.ptr15, i64 %strlen
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr, ptr noundef nonnull align 1 dereferenceable(3) @.str.135, i64 3, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %strlen86 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr87 = getelementptr i8, ptr %alias, i64 %strlen86
  store i16 112, ptr %endptr87, align 1
  %and18 = and i32 %__x.sroa.0.0.insert.ext, 2
  %tobool19.not = icmp eq i32 %and18, 0
  %call25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr26 = getelementptr inbounds i8, ptr %alias, i64 %call25
  br i1 %tobool19.not, label %if.else24, label %if.then20

if.then20:                                        ; preds = %do.body
  %call23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr26, ptr noundef nonnull @.str.90, i32 noundef %__x2.sroa.0.0.insert.insert) #18
  br label %do.body29

if.else24:                                        ; preds = %do.body
  store i16 42, ptr %add.ptr26, align 1
  br label %do.body29

do.body29:                                        ; preds = %if.else24, %if.then20
  %strlen88 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr89 = getelementptr i8, ptr %alias, i64 %strlen88
  store i16 118, ptr %endptr89, align 1
  %and31 = and i32 %__x.sroa.0.0.insert.ext, 4
  %tobool32.not = icmp eq i32 %and31, 0
  %call38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr39 = getelementptr inbounds i8, ptr %alias, i64 %call38
  br i1 %tobool32.not, label %if.else37, label %if.then33

if.then33:                                        ; preds = %do.body29
  %call36 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr39, ptr noundef nonnull @.str.90, i32 noundef %__x5.sroa.0.0.insert.insert) #18
  br label %do.body44

if.else37:                                        ; preds = %do.body29
  store i16 42, ptr %add.ptr39, align 1
  br label %do.body44

do.body44:                                        ; preds = %if.else37, %if.then33
  %strlen90 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr91 = getelementptr i8, ptr %alias, i64 %strlen90
  store i16 114, ptr %endptr91, align 1
  %and46 = and i32 %__x.sroa.0.0.insert.ext, 8
  %tobool47.not = icmp eq i32 %and46, 0
  %call53 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr54 = getelementptr inbounds i8, ptr %alias, i64 %call53
  br i1 %tobool47.not, label %if.else52, label %if.then48

if.then48:                                        ; preds = %do.body44
  %call51 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr54, ptr noundef nonnull @.str.90, i32 noundef %__x8.sroa.0.0.insert.insert) #18
  br label %do.end58

if.else52:                                        ; preds = %do.body44
  store i16 42, ptr %add.ptr54, align 1
  br label %do.end58

do.end58:                                         ; preds = %if.else52, %if.then48
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i122 = ashr exact i64 %sext.i, 32
  %arrayidx.i123 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i122
  %13 = load i8, ptr %arrayidx.i123, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %13, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %do.end58
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %do.end58
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_typec_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr nocapture noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 1
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %1 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i32
  %__x.sroa.4.0.insert.shift = shl nuw nsw i32 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %__x.sroa.0.0.insert.insert = or i32 %__x.sroa.4.0.insert.shift, %__x.sroa.0.0.insert.ext
  %add.ptr2 = getelementptr i8, ptr %symval, i64 2
  %2 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.207, i32 noundef %__x.sroa.0.0.insert.insert) #18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 109, ptr %endptr, align 1
  %cmp.not = icmp eq i8 %2, 7
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv5 = zext i8 %2 to i32
  %call7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr8 = getelementptr inbounds i8, ptr %alias, i64 %call7
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr8, ptr noundef nonnull @.str.26, i32 noundef %conv5) #18
  br label %do.end

if.else:                                          ; preds = %entry
  %call11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr12 = getelementptr inbounds i8, ptr %alias, i64 %call11
  store i16 42, ptr %add.ptr12, align 1
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_tee_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr nocapture noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 15
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %symval, i64 14
  %1 = load i8, ptr %arrayidx.i.1, align 1, !tbaa !30
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %symval, i64 13
  %2 = load i8, ptr %arrayidx.i.2, align 1, !tbaa !30
  %arrayidx.i.3 = getelementptr inbounds i8, ptr %symval, i64 12
  %3 = load i8, ptr %arrayidx.i.3, align 1, !tbaa !30
  %arrayidx.i.4 = getelementptr inbounds i8, ptr %symval, i64 11
  %4 = load i8, ptr %arrayidx.i.4, align 1, !tbaa !30
  %arrayidx.i.5 = getelementptr inbounds i8, ptr %symval, i64 10
  %5 = load i8, ptr %arrayidx.i.5, align 1, !tbaa !30
  %arrayidx.i.6 = getelementptr inbounds i8, ptr %symval, i64 9
  %6 = load i8, ptr %arrayidx.i.6, align 1, !tbaa !30
  %arrayidx.i.7 = getelementptr inbounds i8, ptr %symval, i64 8
  %7 = load i8, ptr %arrayidx.i.7, align 1, !tbaa !30
  %arrayidx.i.8 = getelementptr inbounds i8, ptr %symval, i64 7
  %8 = load i8, ptr %arrayidx.i.8, align 1, !tbaa !30
  %arrayidx.i.9 = getelementptr inbounds i8, ptr %symval, i64 6
  %9 = load i8, ptr %arrayidx.i.9, align 1, !tbaa !30
  %arrayidx.i.10 = getelementptr inbounds i8, ptr %symval, i64 5
  %10 = load i8, ptr %arrayidx.i.10, align 1, !tbaa !30
  %arrayidx.i.11 = getelementptr inbounds i8, ptr %symval, i64 4
  %11 = load i8, ptr %arrayidx.i.11, align 1, !tbaa !30
  %arrayidx.i.12 = getelementptr inbounds i8, ptr %symval, i64 3
  %12 = load i8, ptr %arrayidx.i.12, align 1, !tbaa !30
  %arrayidx.i.13 = getelementptr inbounds i8, ptr %symval, i64 2
  %13 = load i8, ptr %arrayidx.i.13, align 1, !tbaa !30
  %arrayidx.i.14 = getelementptr inbounds i8, ptr %symval, i64 1
  %14 = load i8, ptr %arrayidx.i.14, align 1, !tbaa !30
  %15 = load i8, ptr %symval, align 1, !tbaa !30
  %conv = zext i8 %0 to i32
  %conv3 = zext i8 %1 to i32
  %conv6 = zext i8 %2 to i32
  %conv9 = zext i8 %3 to i32
  %conv12 = zext i8 %4 to i32
  %conv15 = zext i8 %5 to i32
  %conv18 = zext i8 %6 to i32
  %conv21 = zext i8 %7 to i32
  %conv24 = zext i8 %8 to i32
  %conv27 = zext i8 %9 to i32
  %conv30 = zext i8 %10 to i32
  %conv33 = zext i8 %11 to i32
  %conv36 = zext i8 %12 to i32
  %conv39 = zext i8 %13 to i32
  %conv42 = zext i8 %14 to i32
  %conv45 = zext i8 %15 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.208, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv6, i32 noundef %conv9, i32 noundef %conv12, i32 noundef %conv15, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %conv24, i32 noundef %conv27, i32 noundef %conv30, i32 noundef %conv33, i32 noundef %conv36, i32 noundef %conv39, i32 noundef %conv42, i32 noundef %conv45) #18
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i47 = ashr exact i64 %sext.i, 32
  %arrayidx.i48 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i47
  %16 = load i8, ptr %arrayidx.i48, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %16, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %entry
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @do_wmi_entry(ptr noundef %filename, ptr noundef %symval, ptr nocapture noundef writeonly %alias) #0 {
entry:
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %symval) #16
  %cmp.not = icmp eq i64 %call, 36
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.209, ptr noundef %symval, ptr noundef %filename) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %alias, i64 noundef 500, ptr noundef nonnull @.str.210, ptr noundef %symval) #18
  %0 = icmp ugt i32 %call3, 499
  br i1 %0, label %if.then6, label %cleanup

if.then6:                                         ; preds = %if.end
  tail call void (i32, ptr, ...) @modpost_log(i32 noundef 0, ptr noundef nonnull @.str.211, ptr noundef %filename) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then6 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_mhi_entry(ptr nocapture noundef readnone %filename, ptr noundef %symval, ptr nocapture noundef writeonly %alias) #10 {
entry:
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.212, ptr noundef %symval) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_auxiliary_entry(ptr nocapture noundef readnone %filename, ptr noundef %symval, ptr nocapture noundef writeonly %alias) #10 {
entry:
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.213, ptr noundef %symval) #18
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_ssam_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr nocapture noundef %alias) #10 {
entry:
  %0 = load i8, ptr %symval, align 1, !tbaa !30
  %add.ptr2 = getelementptr i8, ptr %symval, i64 1
  %1 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %add.ptr5 = getelementptr i8, ptr %symval, i64 2
  %2 = load i8, ptr %add.ptr5, align 1, !tbaa !30
  %add.ptr8 = getelementptr i8, ptr %symval, i64 3
  %3 = load i8, ptr %add.ptr8, align 1, !tbaa !30
  %add.ptr11 = getelementptr i8, ptr %symval, i64 4
  %4 = load i8, ptr %add.ptr11, align 1, !tbaa !30
  %add.ptr14 = getelementptr i8, ptr %symval, i64 5
  %5 = load i8, ptr %add.ptr14, align 1, !tbaa !30
  %conv = zext i8 %1 to i32
  %conv16 = zext i8 %2 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.214, i32 noundef %conv, i32 noundef %conv16) #18
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 116, ptr %endptr, align 1
  %conv18 = zext i8 %0 to i32
  %and = and i32 %conv18, 1
  %tobool.not = icmp eq i32 %and, 0
  %call23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr24 = getelementptr inbounds i8, ptr %alias, i64 %call23
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv21 = zext i8 %3 to i32
  %call22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr24, ptr noundef nonnull @.str.26, i32 noundef %conv21) #18
  br label %do.body26

if.else:                                          ; preds = %entry
  store i16 42, ptr %add.ptr24, align 1
  br label %do.body26

do.body26:                                        ; preds = %if.else, %if.then
  %strlen82 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr83 = getelementptr i8, ptr %alias, i64 %strlen82
  store i16 105, ptr %endptr83, align 1
  %and29 = and i32 %conv18, 2
  %tobool30.not = icmp eq i32 %and29, 0
  %call37 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr38 = getelementptr inbounds i8, ptr %alias, i64 %call37
  br i1 %tobool30.not, label %if.else36, label %if.then31

if.then31:                                        ; preds = %do.body26
  %conv34 = zext i8 %4 to i32
  %call35 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr38, ptr noundef nonnull @.str.26, i32 noundef %conv34) #18
  br label %do.body43

if.else36:                                        ; preds = %do.body26
  store i16 42, ptr %add.ptr38, align 1
  br label %do.body43

do.body43:                                        ; preds = %if.else36, %if.then31
  %strlen84 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %alias)
  %endptr85 = getelementptr i8, ptr %alias, i64 %strlen84
  store i16 102, ptr %endptr85, align 1
  %and46 = and i32 %conv18, 4
  %tobool47.not = icmp eq i32 %and46, 0
  %call54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %add.ptr55 = getelementptr inbounds i8, ptr %alias, i64 %call54
  br i1 %tobool47.not, label %if.else53, label %if.then48

if.then48:                                        ; preds = %do.body43
  %conv51 = zext i8 %5 to i32
  %call52 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr55, ptr noundef nonnull @.str.26, i32 noundef %conv51) #18
  br label %do.end59

if.else53:                                        ; preds = %do.body43
  store i16 42, ptr %add.ptr55, align 1
  br label %do.end59

do.end59:                                         ; preds = %if.else53, %if.then48
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_dfl_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr nocapture noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 1
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %1 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.4.0.insert.ext = zext i8 %1 to i32
  %__x.sroa.4.0.insert.shift = shl nuw nsw i32 %__x.sroa.4.0.insert.ext, 8
  %__x.sroa.0.0.insert.ext = zext i8 %0 to i32
  %__x.sroa.0.0.insert.insert = or i32 %__x.sroa.4.0.insert.shift, %__x.sroa.0.0.insert.ext
  %add.ptr2 = getelementptr i8, ptr %symval, i64 2
  %arrayidx.i11 = getelementptr i8, ptr %symval, i64 3
  %2 = load i8, ptr %arrayidx.i11, align 1, !tbaa !30
  %3 = load i8, ptr %add.ptr2, align 1, !tbaa !30
  %__x1.sroa.4.0.insert.ext = zext i8 %3 to i32
  %__x1.sroa.4.0.insert.shift = shl nuw nsw i32 %__x1.sroa.4.0.insert.ext, 8
  %__x1.sroa.0.0.insert.ext = zext i8 %2 to i32
  %__x1.sroa.0.0.insert.insert = or i32 %__x1.sroa.4.0.insert.shift, %__x1.sroa.0.0.insert.ext
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %alias, ptr noundef nonnull @.str.215, i32 noundef %__x.sroa.0.0.insert.insert, i32 noundef %__x1.sroa.0.0.insert.insert) #18
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sub.i = shl i64 %call.i, 32
  %sext.i = add i64 %sub.i, -4294967296
  %idxprom.i17 = ashr exact i64 %sext.i, 32
  %arrayidx.i18 = getelementptr inbounds i8, ptr %alias, i64 %idxprom.i17
  %4 = load i8, ptr %arrayidx.i18, align 1, !tbaa !30
  %cmp.not.i = icmp eq i8 %4, 42
  br i1 %cmp.not.i, label %add_wildcard.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %idx.ext.i = ashr exact i64 %sub.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %add.ptr.i) #18
  %endptr.i = getelementptr i8, ptr %add.ptr.i, i64 %strlen.i
  store i16 42, ptr %endptr.i, align 1
  br label %add_wildcard.exit

add_wildcard.exit:                                ; preds = %if.then.i, %entry
  ret i32 1
}

; Function Attrs: nofree nounwind uwtable
define internal i32 @do_ishtp_entry(ptr nocapture noundef readnone %filename, ptr nocapture noundef readonly %symval, ptr nocapture noundef %alias) #10 {
entry:
  %arrayidx.i = getelementptr inbounds i8, ptr %symval, i64 15
  %0 = load i8, ptr %arrayidx.i, align 1, !tbaa !30
  %arrayidx.i.1 = getelementptr inbounds i8, ptr %symval, i64 14
  %1 = load i8, ptr %arrayidx.i.1, align 1, !tbaa !30
  %arrayidx.i.2 = getelementptr inbounds i8, ptr %symval, i64 13
  %2 = load i8, ptr %arrayidx.i.2, align 1, !tbaa !30
  %arrayidx.i.3 = getelementptr inbounds i8, ptr %symval, i64 12
  %3 = load i8, ptr %arrayidx.i.3, align 1, !tbaa !30
  %arrayidx.i.4 = getelementptr inbounds i8, ptr %symval, i64 11
  %4 = load i8, ptr %arrayidx.i.4, align 1, !tbaa !30
  %arrayidx.i.5 = getelementptr inbounds i8, ptr %symval, i64 10
  %5 = load i8, ptr %arrayidx.i.5, align 1, !tbaa !30
  %arrayidx.i.6 = getelementptr inbounds i8, ptr %symval, i64 9
  %6 = load i8, ptr %arrayidx.i.6, align 1, !tbaa !30
  %arrayidx.i.7 = getelementptr inbounds i8, ptr %symval, i64 8
  %7 = load i8, ptr %arrayidx.i.7, align 1, !tbaa !30
  %arrayidx.i.8 = getelementptr inbounds i8, ptr %symval, i64 7
  %8 = load i8, ptr %arrayidx.i.8, align 1, !tbaa !30
  %__x.sroa.11.8.insert.ext = zext i8 %8 to i32
  %arrayidx.i.9 = getelementptr inbounds i8, ptr %symval, i64 6
  %9 = load i8, ptr %arrayidx.i.9, align 1, !tbaa !30
  %__x.sroa.11.9.insert.ext = zext i8 %9 to i32
  %arrayidx.i.10 = getelementptr inbounds i8, ptr %symval, i64 5
  %10 = load i8, ptr %arrayidx.i.10, align 1, !tbaa !30
  %__x.sroa.11.10.insert.ext = zext i8 %10 to i32
  %arrayidx.i.11 = getelementptr inbounds i8, ptr %symval, i64 4
  %11 = load i8, ptr %arrayidx.i.11, align 1, !tbaa !30
  %__x.sroa.11.11.insert.ext = zext i8 %11 to i32
  %arrayidx.i.12 = getelementptr inbounds i8, ptr %symval, i64 3
  %12 = load i8, ptr %arrayidx.i.12, align 1, !tbaa !30
  %arrayidx.i.13 = getelementptr inbounds i8, ptr %symval, i64 2
  %13 = load i8, ptr %arrayidx.i.13, align 1, !tbaa !30
  %arrayidx.i.14 = getelementptr inbounds i8, ptr %symval, i64 1
  %14 = load i8, ptr %arrayidx.i.14, align 1, !tbaa !30
  %15 = load i8, ptr %symval, align 1, !tbaa !30
  %__x.sroa.0.sroa.10.0.insert.ext = zext i8 %7 to i64
  %__x.sroa.0.sroa.10.0.insert.shift = shl nuw i64 %__x.sroa.0.sroa.10.0.insert.ext, 56
  %__x.sroa.0.sroa.9.0.insert.ext = zext i8 %6 to i64
  %__x.sroa.0.sroa.9.0.insert.shift = shl nuw nsw i64 %__x.sroa.0.sroa.9.0.insert.ext, 48
  %__x.sroa.0.sroa.9.0.insert.insert = or i64 %__x.sroa.0.sroa.10.0.insert.shift, %__x.sroa.0.sroa.9.0.insert.shift
  %__x.sroa.0.sroa.8.0.insert.ext = zext i8 %5 to i64
  %__x.sroa.0.sroa.8.0.insert.shift = shl nuw nsw i64 %__x.sroa.0.sroa.8.0.insert.ext, 40
  %__x.sroa.0.sroa.8.0.insert.insert = or i64 %__x.sroa.0.sroa.9.0.insert.insert, %__x.sroa.0.sroa.8.0.insert.shift
  %__x.sroa.0.sroa.7.0.insert.ext = zext i8 %4 to i64
  %__x.sroa.0.sroa.7.0.insert.shift = shl nuw nsw i64 %__x.sroa.0.sroa.7.0.insert.ext, 32
  %__x.sroa.0.sroa.7.0.insert.insert = or i64 %__x.sroa.0.sroa.8.0.insert.insert, %__x.sroa.0.sroa.7.0.insert.shift
  %__x.sroa.0.sroa.6.0.insert.ext = zext i8 %3 to i64
  %__x.sroa.0.sroa.6.0.insert.shift = shl nuw nsw i64 %__x.sroa.0.sroa.6.0.insert.ext, 24
  %__x.sroa.0.sroa.6.0.insert.insert = or i64 %__x.sroa.0.sroa.7.0.insert.insert, %__x.sroa.0.sroa.6.0.insert.shift
  %__x.sroa.0.sroa.5.0.insert.ext = zext i8 %2 to i64
  %__x.sroa.0.sroa.5.0.insert.shift = shl nuw nsw i64 %__x.sroa.0.sroa.5.0.insert.ext, 16
  %__x.sroa.0.sroa.4.0.insert.ext = zext i8 %1 to i64
  %__x.sroa.0.sroa.4.0.insert.shift = shl nuw nsw i64 %__x.sroa.0.sroa.4.0.insert.ext, 8
  %__x.sroa.0.sroa.4.0.insert.mask = or i64 %__x.sroa.0.sroa.6.0.insert.insert, %__x.sroa.0.sroa.5.0.insert.shift
  %__x.sroa.0.sroa.0.0.insert.ext = zext i8 %0 to i64
  %__x.sroa.0.sroa.0.0.insert.mask = or i64 %__x.sroa.0.sroa.4.0.insert.mask, %__x.sroa.0.sroa.4.0.insert.shift
  %__x.sroa.0.sroa.0.0.insert.insert = or i64 %__x.sroa.0.sroa.0.0.insert.mask, %__x.sroa.0.sroa.0.0.insert.ext
  store i64 34685676799161193, ptr %alias, align 1
  %guid.sroa.0.0.extract.trunc.i = trunc i64 %__x.sroa.0.sroa.0.0.insert.insert to i32
  %16 = lshr i32 %guid.sroa.0.0.extract.trunc.i, 8
  %17 = lshr i32 %guid.sroa.0.0.extract.trunc.i, 16
  %18 = lshr i32 %guid.sroa.0.0.extract.trunc.i, 24
  %guid.sroa.5.0.extract.shift.i = lshr exact i64 %__x.sroa.0.sroa.7.0.insert.insert, 32
  %guid.sroa.5.0.extract.trunc.i = trunc i64 %guid.sroa.5.0.extract.shift.i to i32
  %guid.sroa.6.0.extract.trunc.i = zext i8 %5 to i32
  %guid.sroa.7.0.extract.trunc.i = zext i8 %6 to i32
  %guid.sroa.8.0.extract.trunc.i = zext i8 %7 to i32
  %guid.sroa.14.8.extract.trunc.i = zext i8 %12 to i32
  %guid.sroa.15.8.extract.trunc.i = zext i8 %13 to i32
  %guid.sroa.16.8.extract.trunc.i = zext i8 %14 to i32
  %guid.sroa.17.8.extract.trunc.i = zext i8 %15 to i32
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %alias) #16
  %sext.i = shl i64 %call.i, 32
  %idx.ext.i = ashr exact i64 %sext.i, 32
  %add.ptr.i = getelementptr inbounds i8, ptr %alias, i64 %idx.ext.i
  %conv4.i = and i32 %17, 255
  %conv7.i = and i32 %16, 255
  %conv10.i = and i32 %guid.sroa.0.0.extract.trunc.i, 255
  %conv16.i = and i32 %guid.sroa.5.0.extract.trunc.i, 255
  %call47.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %add.ptr.i, ptr noundef nonnull @.str.218, i32 noundef %18, i32 noundef %conv4.i, i32 noundef %conv7.i, i32 noundef %conv10.i, i32 noundef %guid.sroa.6.0.extract.trunc.i, i32 noundef %conv16.i, i32 noundef %guid.sroa.8.0.extract.trunc.i, i32 noundef %guid.sroa.7.0.extract.trunc.i, i32 noundef %__x.sroa.11.8.insert.ext, i32 noundef %__x.sroa.11.9.insert.ext, i32 noundef %__x.sroa.11.10.insert.ext, i32 noundef %__x.sroa.11.11.insert.ext, i32 noundef %guid.sroa.14.8.extract.trunc.i, i32 noundef %guid.sroa.15.8.extract.trunc.i, i32 noundef %guid.sroa.16.8.extract.trunc.i, i32 noundef %guid.sroa.17.8.extract.trunc.i) #18
  %strlen = tail call i64 @strlen(ptr nonnull %alias)
  %endptr = getelementptr i8, ptr %alias, i64 %strlen
  store i16 125, ptr %endptr, align 1
  ret i32 1
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #14

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1) "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "alloc-family"="malloc" "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { argmemonly nofree nounwind willreturn }
attributes #16 = { nounwind readonly willreturn }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { nounwind }
attributes #19 = { nounwind readnone willreturn }
attributes #20 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!5 = !{!6, !10, i64 14}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !8, i64 12, !8, i64 13, !10, i64 14}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"short", !8, i64 0}
!11 = !{!12, !14, i64 80}
!12 = !{!"elf_info", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !10, i64 40, !10, i64 42, !14, i64 48, !14, i64 56, !7, i64 64, !7, i64 68, !7, i64 72, !14, i64 80, !14, i64 88}
!13 = !{!"long", !8, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!12, !14, i64 24}
!16 = !{!7, !7, i64 0}
!17 = !{!12, !7, i64 68}
!18 = !{!6, !8, i64 12}
!19 = !{!12, !14, i64 16}
!20 = !{!21, !7, i64 4}
!21 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36}
!22 = !{!6, !7, i64 8}
!23 = !{!12, !14, i64 8}
!24 = !{!21, !7, i64 16}
!25 = !{!6, !7, i64 4}
!26 = !{!27, !14, i64 0}
!27 = !{!"devtable", !14, i64 0, !13, i64 8, !14, i64 16}
!28 = !{!27, !13, i64 8}
!29 = !{!27, !14, i64 16}
!30 = !{!8, !8, i64 0}
!31 = !{!14, !14, i64 0}
!32 = !{!10, !10, i64 0}
!33 = !{!34, !14, i64 0}
!34 = !{!"buffer", !14, i64 0, !7, i64 8, !7, i64 12}
!35 = !{!34, !7, i64 8}
!36 = !{!37, !7, i64 8}
!37 = !{!"dmifield", !14, i64 0, !7, i64 8}
!38 = !{!37, !14, i64 0}
