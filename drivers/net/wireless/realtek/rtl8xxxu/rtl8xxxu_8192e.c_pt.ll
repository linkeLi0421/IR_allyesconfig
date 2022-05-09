; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtl8xxxu_reg8val = type { i16, i8 }
%struct.rtl8xxxu_fileops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i32, i32, i32, i32, i16, i8, i8, ptr, i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rtl8xxxu_reg32val = type { i16, i32 }
%struct.rtl8xxxu_rfregval = type { i8, i32 }
%struct.atomic_t = type { i32 }
%struct.rtl8xxxu_priv = type { ptr, ptr, ptr, %struct.spinlock, %struct.list_head, i32, i8, %struct.spinlock, %struct.list_head, i32, i8, %struct.work_struct, [6 x i8], [8 x i8], [8 x i8], [6 x i8], [6 x i8], [6 x i8], [6 x i8], [3 x %struct.rtl8723au_idx], [3 x %struct.rtl8723au_idx], [3 x %struct.rtl8723au_idx], [3 x %struct.rtl8723au_idx], [3 x %struct.rtl8723au_idx], [4 x %struct.rtl8723au_idx], [4 x %struct.rtl8723au_idx], [4 x %struct.rtl8723au_idx], ptr, i32, i8, i32, i32, [20 x i32], [4 x i8], i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.mutex, %struct.usb_anchor, %struct.usb_anchor, %struct.usb_anchor, ptr, i32, %struct.mutex, %union.anon.139, %union.anon.140, [16 x i32], [4 x i32], [9 x i32], [9 x i32], i32, i8, [56 x i8], i8, [1 x i32], [1 x i32], ptr, %struct.delayed_work, %struct.work_struct, %struct.sk_buff_head, %struct.rtl8xxxu_btcoex, %struct.rtl8xxxu_ra_report }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rtl8723au_idx = type { i8 }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.139 = type { i32 }
%union.anon.140 = type { %struct.rtl8723bu_efuse }
%struct.rtl8723bu_efuse = type { i16, [14 x i8], %struct.rtl8723bu_efuse_tx_power, %struct.rtl8723bu_efuse_tx_power, %struct.rtl8723bu_efuse_tx_power, %struct.rtl8723bu_efuse_tx_power, i8, i8, i8, i8, i8, i8, [3 x i8], i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, [9 x i8], i8, [30 x i8], [2 x i8], [11 x i8], i8, i8, i8, [4 x i8], [6 x i8], [2 x i8], [7 x i8], [2 x i8], [20 x i8], [207 x i8], i8, [4 x i8] }
%struct.rtl8723bu_efuse_tx_power = type { [6 x i8], [5 x i8], %struct.rtl8723au_idx, [3 x %struct.rtl8723bu_pwr_idx], [24 x i8] }
%struct.rtl8723bu_pwr_idx = type { i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.rtl8xxxu_btcoex = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.rtl8xxxu_ra_report = type { %struct.rate_info, i32, i8 }
%struct.rate_info = type { i8, i8, i16, i8, i8, i8, i8, i8, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@rtl8192e_mac_init_table = internal global { [102 x %struct.rtl8xxxu_reg8val], [104 x i8] } { [102 x %struct.rtl8xxxu_reg8val] [%struct.rtl8xxxu_reg8val { i16 17, i8 -21 }, %struct.rtl8xxxu_reg8val { i16 18, i8 7 }, %struct.rtl8xxxu_reg8val { i16 20, i8 117 }, %struct.rtl8xxxu_reg8val { i16 771, i8 -89 }, %struct.rtl8xxxu_reg8val { i16 1064, i8 10 }, %struct.rtl8xxxu_reg8val { i16 1065, i8 16 }, %struct.rtl8xxxu_reg8val { i16 1072, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1073, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1074, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1075, i8 1 }, %struct.rtl8xxxu_reg8val { i16 1076, i8 4 }, %struct.rtl8xxxu_reg8val { i16 1077, i8 5 }, %struct.rtl8xxxu_reg8val { i16 1078, i8 7 }, %struct.rtl8xxxu_reg8val { i16 1079, i8 8 }, %struct.rtl8xxxu_reg8val { i16 1084, i8 4 }, %struct.rtl8xxxu_reg8val { i16 1085, i8 5 }, %struct.rtl8xxxu_reg8val { i16 1086, i8 7 }, %struct.rtl8xxxu_reg8val { i16 1087, i8 8 }, %struct.rtl8xxxu_reg8val { i16 1088, i8 93 }, %struct.rtl8xxxu_reg8val { i16 1089, i8 1 }, %struct.rtl8xxxu_reg8val { i16 1090, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1092, i8 16 }, %struct.rtl8xxxu_reg8val { i16 1093, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1094, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1095, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1096, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1097, i8 -16 }, %struct.rtl8xxxu_reg8val { i16 1098, i8 15 }, %struct.rtl8xxxu_reg8val { i16 1099, i8 62 }, %struct.rtl8xxxu_reg8val { i16 1100, i8 16 }, %struct.rtl8xxxu_reg8val { i16 1101, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1102, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1103, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1104, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1105, i8 -16 }, %struct.rtl8xxxu_reg8val { i16 1106, i8 15 }, %struct.rtl8xxxu_reg8val { i16 1107, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1110, i8 94 }, %struct.rtl8xxxu_reg8val { i16 1120, i8 102 }, %struct.rtl8xxxu_reg8val { i16 1121, i8 102 }, %struct.rtl8xxxu_reg8val { i16 1224, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1225, i8 8 }, %struct.rtl8xxxu_reg8val { i16 1228, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1229, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1230, i8 1 }, %struct.rtl8xxxu_reg8val { i16 1280, i8 38 }, %struct.rtl8xxxu_reg8val { i16 1281, i8 -94 }, %struct.rtl8xxxu_reg8val { i16 1282, i8 47 }, %struct.rtl8xxxu_reg8val { i16 1283, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1284, i8 40 }, %struct.rtl8xxxu_reg8val { i16 1285, i8 -93 }, %struct.rtl8xxxu_reg8val { i16 1286, i8 94 }, %struct.rtl8xxxu_reg8val { i16 1287, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1288, i8 43 }, %struct.rtl8xxxu_reg8val { i16 1289, i8 -92 }, %struct.rtl8xxxu_reg8val { i16 1290, i8 94 }, %struct.rtl8xxxu_reg8val { i16 1291, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1292, i8 79 }, %struct.rtl8xxxu_reg8val { i16 1293, i8 -92 }, %struct.rtl8xxxu_reg8val { i16 1294, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1295, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1298, i8 28 }, %struct.rtl8xxxu_reg8val { i16 1300, i8 10 }, %struct.rtl8xxxu_reg8val { i16 1302, i8 10 }, %struct.rtl8xxxu_reg8val { i16 1317, i8 79 }, %struct.rtl8xxxu_reg8val { i16 1344, i8 18 }, %struct.rtl8xxxu_reg8val { i16 1345, i8 100 }, %struct.rtl8xxxu_reg8val { i16 1360, i8 16 }, %struct.rtl8xxxu_reg8val { i16 1361, i8 16 }, %struct.rtl8xxxu_reg8val { i16 1369, i8 2 }, %struct.rtl8xxxu_reg8val { i16 1372, i8 80 }, %struct.rtl8xxxu_reg8val { i16 1373, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1541, i8 48 }, %struct.rtl8xxxu_reg8val { i16 1544, i8 14 }, %struct.rtl8xxxu_reg8val { i16 1545, i8 42 }, %struct.rtl8xxxu_reg8val { i16 1568, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1569, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1570, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1571, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1572, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1573, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1574, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1575, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1592, i8 80 }, %struct.rtl8xxxu_reg8val { i16 1596, i8 10 }, %struct.rtl8xxxu_reg8val { i16 1597, i8 10 }, %struct.rtl8xxxu_reg8val { i16 1598, i8 14 }, %struct.rtl8xxxu_reg8val { i16 1599, i8 14 }, %struct.rtl8xxxu_reg8val { i16 1600, i8 64 }, %struct.rtl8xxxu_reg8val { i16 1602, i8 64 }, %struct.rtl8xxxu_reg8val { i16 1603, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1618, i8 -56 }, %struct.rtl8xxxu_reg8val { i16 1646, i8 5 }, %struct.rtl8xxxu_reg8val { i16 1792, i8 33 }, %struct.rtl8xxxu_reg8val { i16 1793, i8 67 }, %struct.rtl8xxxu_reg8val { i16 1794, i8 101 }, %struct.rtl8xxxu_reg8val { i16 1795, i8 -121 }, %struct.rtl8xxxu_reg8val { i16 1800, i8 33 }, %struct.rtl8xxxu_reg8val { i16 1801, i8 67 }, %struct.rtl8xxxu_reg8val { i16 1802, i8 101 }, %struct.rtl8xxxu_reg8val { i16 1803, i8 -121 }, %struct.rtl8xxxu_reg8val { i16 -1, i8 -1 }], [104 x i8] zeroinitializer }, align 32
@rtl8192eu_fops = dso_local global { %struct.rtl8xxxu_fileops, [36 x i8] } { %struct.rtl8xxxu_fileops { ptr @rtl8192eu_parse_efuse, ptr @rtl8192eu_load_firmware, ptr @rtl8192eu_power_on, ptr @rtl8192eu_power_off, ptr @rtl8xxxu_reset_8051, ptr @rtl8xxxu_auto_llt_table, ptr @rtl8192eu_init_phy_bb, ptr @rtl8192eu_init_phy_rf, ptr null, ptr @rtl8192eu_phy_iq_calibrate, ptr @rtl8xxxu_gen2_config_channel, ptr @rtl8xxxu_parse_rxdesc24, ptr null, ptr null, ptr @rtl8192e_enable_rf, ptr @rtl8xxxu_gen2_disable_rf, ptr @rtl8xxxu_gen2_usb_quirks, ptr @rtl8192e_set_tx_power, ptr @rtl8xxxu_gen2_update_rate_mask, ptr @rtl8xxxu_gen2_report_connect, ptr @rtl8xxxu_fill_txdesc_v2, i32 128, i32 0, i8 40, i8 24, i8 32, i32 264246806, i32 264246806, i32 264246806, i32 264246806, i16 15615, i8 0, i8 0, ptr @rtl8192e_mac_init_table, i8 -13, i8 8, i8 12, i8 0 }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Vendor\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Product\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Serial\00", [25 x i8] zeroinitializer }, align 32
@rtl8xxxu_debug = external dso_local local_unnamed_addr global i32, align 4
@rtl8192eu_parse_efuse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 666, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: dumping efuse (0x%02zx bytes):\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl8192eu_parse_efuse\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl8192eu_parse_efuse._entry_ptr = internal global ptr @rtl8192eu_parse_efuse._entry, section ".printk_index", align 4
@rtl8192eu_parse_efuse._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 668, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%02x: %8ph\0A\00", [20 x i8] zeroinitializer }, align 32
@rtl8192eu_parse_efuse._entry_ptr.10 = internal global ptr @rtl8192eu_parse_efuse._entry.8, section ".printk_index", align 4
@rtl8192eu_log_next_device_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 574, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"invalid record length %d while parsing \22%s\22 at offset %u.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtl8192eu_log_next_device_info\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rtl8192eu_log_next_device_info._entry_ptr = internal global ptr @rtl8192eu_log_next_device_info._entry, section ".printk_index", align 4
@rtl8192eu_log_next_device_info._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.5, i32 583, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@rtl8192eu_log_next_device_info._entry_ptr.16 = internal global ptr @rtl8192eu_log_next_device_info._entry.14, section ".printk_index", align 4
@rtl8192eu_log_next_device_info._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.12, ptr @.str.5, i32 586, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s not available.\0A\00", [45 x i8] zeroinitializer }, align 32
@rtl8192eu_log_next_device_info._entry_ptr.19 = internal global ptr @rtl8192eu_log_next_device_info._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtlwifi/rtl8192eu_nic.bin\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl8192eu_active_to_lps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.5, i32 1465, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to flush TX queue\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl8192eu_active_to_lps\00", [40 x i8] zeroinitializer }, align 32
@rtl8192eu_active_to_lps._entry_ptr = internal global ptr @rtl8192eu_active_to_lps._entry, section ".printk_index", align 4
@rtl8192eu_active_to_emu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 1529, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Disabling MAC timed out\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl8192eu_active_to_emu\00", [40 x i8] zeroinitializer }, align 32
@rtl8192eu_active_to_emu._entry_ptr = internal global ptr @rtl8192eu_active_to_emu._entry, section ".printk_index", align 4
@rtl8192eu_phy_init_table = internal global { [209 x %struct.rtl8xxxu_reg32val], [440 x i8] } { [209 x %struct.rtl8xxxu_reg32val] [%struct.rtl8xxxu_reg32val { i16 2048, i32 -2147221504 }, %struct.rtl8xxxu_reg32val { i16 2052, i32 3 }, %struct.rtl8xxxu_reg32val { i16 2056, i32 64512 }, %struct.rtl8xxxu_reg32val { i16 2060, i32 10 }, %struct.rtl8xxxu_reg32val { i16 2064, i32 268440369 }, %struct.rtl8xxxu_reg32val { i16 2068, i32 34356496 }, %struct.rtl8xxxu_reg32val { i16 2072, i32 35783557 }, %struct.rtl8xxxu_reg32val { i16 2076, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2080, i32 16777472 }, %struct.rtl8xxxu_reg32val { i16 2084, i32 3736068 }, %struct.rtl8xxxu_reg32val { i16 2088, i32 16777472 }, %struct.rtl8xxxu_reg32val { i16 2092, i32 3736068 }, %struct.rtl8xxxu_reg32val { i16 2096, i32 842150450 }, %struct.rtl8xxxu_reg32val { i16 2100, i32 808464432 }, %struct.rtl8xxxu_reg32val { i16 2104, i32 808464432 }, %struct.rtl8xxxu_reg32val { i16 2108, i32 808464432 }, %struct.rtl8xxxu_reg32val { i16 2112, i32 65536 }, %struct.rtl8xxxu_reg32val { i16 2116, i32 65536 }, %struct.rtl8xxxu_reg32val { i16 2120, i32 673720360 }, %struct.rtl8xxxu_reg32val { i16 2124, i32 673720360 }, %struct.rtl8xxxu_reg32val { i16 2128, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2132, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2136, i32 10092698 }, %struct.rtl8xxxu_reg32val { i16 2140, i32 16777236 }, %struct.rtl8xxxu_reg32val { i16 2144, i32 1727397888 }, %struct.rtl8xxxu_reg32val { i16 2148, i32 102694912 }, %struct.rtl8xxxu_reg32val { i16 2152, i32 808464432 }, %struct.rtl8xxxu_reg32val { i16 2156, i32 808464432 }, %struct.rtl8xxxu_reg32val { i16 2160, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2164, i32 1426080256 }, %struct.rtl8xxxu_reg32val { i16 2168, i32 134744072 }, %struct.rtl8xxxu_reg32val { i16 2172, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2176, i32 -1342174180 }, %struct.rtl8xxxu_reg32val { i16 2180, i32 1 }, %struct.rtl8xxxu_reg32val { i16 2184, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2188, i32 -872415040 }, %struct.rtl8xxxu_reg32val { i16 2192, i32 2048 }, %struct.rtl8xxxu_reg32val { i16 2196, i32 -2 }, %struct.rtl8xxxu_reg32val { i16 2200, i32 1076895760 }, %struct.rtl8xxxu_reg32val { i16 2304, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2308, i32 35 }, %struct.rtl8xxxu_reg32val { i16 2312, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2316, i32 -2129521901 }, %struct.rtl8xxxu_reg32val { i16 2320, i32 -2140405759 }, %struct.rtl8xxxu_reg32val { i16 2324, i32 1 }, %struct.rtl8xxxu_reg32val { i16 2328, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2332, i32 65536 }, %struct.rtl8xxxu_reg32val { i16 2340, i32 1 }, %struct.rtl8xxxu_reg32val { i16 2344, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2348, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2352, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2356, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2360, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2364, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2368, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2372, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2380, i32 8 }, %struct.rtl8xxxu_reg32val { i16 2560, i32 13682632 }, %struct.rtl8xxxu_reg32val { i16 2564, i32 -2113994740 }, %struct.rtl8xxxu_reg32val { i16 2568, i32 -1937538304 }, %struct.rtl8xxxu_reg32val { i16 2572, i32 778572303 }, %struct.rtl8xxxu_reg32val { i16 2576, i32 -1795122312 }, %struct.rtl8xxxu_reg32val { i16 2580, i32 286576680 }, %struct.rtl8xxxu_reg32val { i16 2584, i32 8917271 }, %struct.rtl8xxxu_reg32val { i16 2588, i32 -1995174144 }, %struct.rtl8xxxu_reg32val { i16 2592, i32 437977088 }, %struct.rtl8xxxu_reg32val { i16 2596, i32 151917335 }, %struct.rtl8xxxu_reg32val { i16 2600, i32 516 }, %struct.rtl8xxxu_reg32val { i16 2604, i32 13828096 }, %struct.rtl8xxxu_reg32val { i16 2672, i32 270532352 }, %struct.rtl8xxxu_reg32val { i16 2676, i32 7 }, %struct.rtl8xxxu_reg32val { i16 2680, i32 2304 }, %struct.rtl8xxxu_reg32val { i16 2684, i32 576390662 }, %struct.rtl8xxxu_reg32val { i16 2688, i32 562066865 }, %struct.rtl8xxxu_reg32val { i16 2872, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3072, i32 1208425792 }, %struct.rtl8xxxu_reg32val { i16 3076, i32 60839475 }, %struct.rtl8xxxu_reg32val { i16 3080, i32 228 }, %struct.rtl8xxxu_reg32val { i16 3084, i32 1819044972 }, %struct.rtl8xxxu_reg32val { i16 3088, i32 142606336 }, %struct.rtl8xxxu_reg32val { i16 3092, i32 1073742080 }, %struct.rtl8xxxu_reg32val { i16 3096, i32 142606336 }, %struct.rtl8xxxu_reg32val { i16 3100, i32 1073742080 }, %struct.rtl8xxxu_reg32val { i16 3104, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3108, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3112, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3116, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3120, i32 1776921671 }, %struct.rtl8xxxu_reg32val { i16 3124, i32 1184256687 }, %struct.rtl8xxxu_reg32val { i16 3128, i32 1232689556 }, %struct.rtl8xxxu_reg32val { i16 3132, i32 177706780 }, %struct.rtl8xxxu_reg32val { i16 3136, i32 528236607 }, %struct.rtl8xxxu_reg32val { i16 3140, i32 65719 }, %struct.rtl8xxxu_reg32val { i16 3144, i32 -335412985 }, %struct.rtl8xxxu_reg32val { i16 3148, i32 8323967 }, %struct.rtl8xxxu_reg32val { i16 3152, i32 3407904 }, %struct.rtl8xxxu_reg32val { i16 3156, i32 8421407 }, %struct.rtl8xxxu_reg32val { i16 3160, i32 32 }, %struct.rtl8xxxu_reg32val { i16 3164, i32 2393234 }, %struct.rtl8xxxu_reg32val { i16 3168, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3172, i32 1897038987 }, %struct.rtl8xxxu_reg32val { i16 3176, i32 1203768319 }, %struct.rtl8xxxu_reg32val { i16 3180, i32 54 }, %struct.rtl8xxxu_reg32val { i16 3184, i32 1536 }, %struct.rtl8xxxu_reg32val { i16 3188, i32 33632617 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 31 }, %struct.rtl8xxxu_reg32val { i16 3196, i32 12129810 }, %struct.rtl8xxxu_reg32val { i16 3200, i32 1073742080 }, %struct.rtl8xxxu_reg32val { i16 3204, i32 569769984 }, %struct.rtl8xxxu_reg32val { i16 3208, i32 1073742080 }, %struct.rtl8xxxu_reg32val { i16 3212, i32 -1595670528 }, %struct.rtl8xxxu_reg32val { i16 3216, i32 1185824 }, %struct.rtl8xxxu_reg32val { i16 3220, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3224, i32 1185824 }, %struct.rtl8xxxu_reg32val { i16 3228, i32 32639 }, %struct.rtl8xxxu_reg32val { i16 3232, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3236, i32 196768 }, %struct.rtl8xxxu_reg32val { i16 3240, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3244, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3248, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3252, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3256, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3260, i32 671088640 }, %struct.rtl8xxxu_reg32val { i16 3264, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3268, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3272, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3276, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3280, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3284, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3288, i32 1689396263 }, %struct.rtl8xxxu_reg32val { i16 3292, i32 7760178 }, %struct.rtl8xxxu_reg32val { i16 3296, i32 2236962 }, %struct.rtl8xxxu_reg32val { i16 3300, i32 262144 }, %struct.rtl8xxxu_reg32val { i16 3304, i32 2003059458 }, %struct.rtl8xxxu_reg32val { i16 3308, i32 798479372 }, %struct.rtl8xxxu_reg32val { i16 3328, i32 526144 }, %struct.rtl8xxxu_reg32val { i16 3332, i32 132099 }, %struct.rtl8xxxu_reg32val { i16 3336, i32 36991 }, %struct.rtl8xxxu_reg32val { i16 3340, i32 536936961 }, %struct.rtl8xxxu_reg32val { i16 3344, i32 -1604111565 }, %struct.rtl8xxxu_reg32val { i16 3348, i32 859028547 }, %struct.rtl8xxxu_reg32val { i16 3352, i32 2056215403 }, %struct.rtl8xxxu_reg32val { i16 3356, i32 127 }, %struct.rtl8xxxu_reg32val { i16 3372, i32 -862480011 }, %struct.rtl8xxxu_reg32val { i16 3376, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3380, i32 -2141159424 }, %struct.rtl8xxxu_reg32val { i16 3384, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3388, i32 1209171 }, %struct.rtl8xxxu_reg32val { i16 3392, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3396, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3400, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3404, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3408, i32 1681331210 }, %struct.rtl8xxxu_reg32val { i16 3412, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3416, i32 642 }, %struct.rtl8xxxu_reg32val { i16 3420, i32 805511268 }, %struct.rtl8xxxu_reg32val { i16 3424, i32 1179901544 }, %struct.rtl8xxxu_reg32val { i16 3428, i32 72452668 }, %struct.rtl8xxxu_reg32val { i16 3432, i32 8449 }, %struct.rtl8xxxu_reg32val { i16 3436, i32 706747414 }, %struct.rtl8xxxu_reg32val { i16 3440, i32 403846702 }, %struct.rtl8xxxu_reg32val { i16 3444, i32 841753120 }, %struct.rtl8xxxu_reg32val { i16 3448, i32 932900 }, %struct.rtl8xxxu_reg32val { i16 3456, i32 17305608 }, %struct.rtl8xxxu_reg32val { i16 3460, i32 2048 }, %struct.rtl8xxxu_reg32val { i16 3464, i32 -256573440 }, %struct.rtl8xxxu_reg32val { i16 3584, i32 808464432 }, %struct.rtl8xxxu_reg32val { i16 3588, i32 808464432 }, %struct.rtl8xxxu_reg32val { i16 3592, i32 59781168 }, %struct.rtl8xxxu_reg32val { i16 3600, i32 808464432 }, %struct.rtl8xxxu_reg32val { i16 3604, i32 808464432 }, %struct.rtl8xxxu_reg32val { i16 3608, i32 808464432 }, %struct.rtl8xxxu_reg32val { i16 3612, i32 808464432 }, %struct.rtl8xxxu_reg32val { i16 3624, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3632, i32 268491807 }, %struct.rtl8xxxu_reg32val { i16 3636, i32 268471327 }, %struct.rtl8xxxu_reg32val { i16 3640, i32 34865410 }, %struct.rtl8xxxu_reg32val { i16 3644, i32 1746273474 }, %struct.rtl8xxxu_reg32val { i16 3648, i32 16808960 }, %struct.rtl8xxxu_reg32val { i16 3652, i32 16795648 }, %struct.rtl8xxxu_reg32val { i16 3656, i32 -83886080 }, %struct.rtl8xxxu_reg32val { i16 3660, i32 10449 }, %struct.rtl8xxxu_reg32val { i16 3664, i32 268491807 }, %struct.rtl8xxxu_reg32val { i16 3668, i32 268471327 }, %struct.rtl8xxxu_reg32val { i16 3672, i32 34865410 }, %struct.rtl8xxxu_reg32val { i16 3676, i32 672533765 }, %struct.rtl8xxxu_reg32val { i16 3680, i32 8 }, %struct.rtl8xxxu_reg32val { i16 3688, i32 264263254 }, %struct.rtl8xxxu_reg32val { i16 3692, i32 62953110 }, %struct.rtl8xxxu_reg32val { i16 3696, i32 62953110 }, %struct.rtl8xxxu_reg32val { i16 3700, i32 201348694 }, %struct.rtl8xxxu_reg32val { i16 3704, i32 201348694 }, %struct.rtl8xxxu_reg32val { i16 3708, i32 201348694 }, %struct.rtl8xxxu_reg32val { i16 3712, i32 201348694 }, %struct.rtl8xxxu_reg32val { i16 3716, i32 62953110 }, %struct.rtl8xxxu_reg32val { i16 3720, i32 201348694 }, %struct.rtl8xxxu_reg32val { i16 3724, i32 62953110 }, %struct.rtl8xxxu_reg32val { i16 3792, i32 62953110 }, %struct.rtl8xxxu_reg32val { i16 3796, i32 62953110 }, %struct.rtl8xxxu_reg32val { i16 3800, i32 62953110 }, %struct.rtl8xxxu_reg32val { i16 3804, i32 54998 }, %struct.rtl8xxxu_reg32val { i16 3808, i32 54998 }, %struct.rtl8xxxu_reg32val { i16 3820, i32 264246806 }, %struct.rtl8xxxu_reg32val { i16 3812, i32 -1342174180 }, %struct.rtl8xxxu_reg32val { i16 3816, i32 1 }, %struct.rtl8xxxu_reg32val { i16 3860, i32 3 }, %struct.rtl8xxxu_reg32val { i16 3916, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3840, i32 768 }, %struct.rtl8xxxu_reg32val { i16 -1, i32 -1 }], [440 x i8] zeroinitializer }, align 32
@rtl8xxx_agc_8192eu_highpa_table = internal global { [131 x %struct.rtl8xxxu_reg32val], [264 x i8] } { [131 x %struct.rtl8xxxu_reg32val] [%struct.rtl8xxxu_reg32val { i16 3192, i32 -100663295 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -117374975 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -134086655 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -150798335 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -167510015 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -184221695 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -200933375 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -217645055 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -234356735 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -251068415 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -267780095 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -284491775 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -301203455 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -317915135 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -334626815 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -351338495 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -368050175 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -384761855 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -401473535 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -418185215 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -434896895 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -451608575 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -468320255 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -485031935 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -501743615 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -518455295 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1978007551 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1994719231 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2011430911 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2028142591 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2044854271 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2061565951 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2078277631 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2094989311 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2111700991 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1780678657 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1763966977 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1747255297 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1730543617 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1713831937 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1697120257 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1680408577 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1663696897 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1646985217 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1630273537 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1613561857 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1194196993 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1177485313 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1160773633 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1144061953 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1127350273 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1110638593 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1093926913 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077215233 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077280769 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077346305 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077411841 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077477377 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077542913 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077608449 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077673985 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077739521 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077805057 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077870593 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -96468991 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -113180671 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -129892351 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -146604031 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -163315711 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -180027391 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -196739071 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -213450751 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -230162431 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -246874111 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -263585791 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -280297471 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -297009151 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -313720831 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -330432511 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -347144191 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -363855871 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -380567551 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -397279231 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -413990911 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -430702591 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -447414271 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -464125951 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -480837631 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -497549311 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -514260991 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1973813247 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1990524927 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2007236607 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2023948287 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2040659967 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2057371647 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2074083327 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2090795007 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2107506687 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1784872961 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1768161281 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1751449601 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1734737921 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1718026241 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1701314561 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1684602881 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1667891201 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1651179521 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1634467841 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1617756161 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1198391297 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1181679617 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1164967937 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1148256257 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1131544577 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1114832897 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1098121217 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1081409537 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1081475073 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1081540609 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1081606145 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1081671681 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1081737217 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1081802753 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1081868289 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1081933825 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1081999361 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1082064897 }, %struct.rtl8xxxu_reg32val { i16 3152, i32 262690 }, %struct.rtl8xxxu_reg32val { i16 3152, i32 262688 }, %struct.rtl8xxxu_reg32val { i16 -1, i32 -1 }], [264 x i8] zeroinitializer }, align 32
@rtl8xxx_agc_8192eu_std_table = internal global { [131 x %struct.rtl8xxxu_reg32val], [264 x i8] } { [131 x %struct.rtl8xxxu_reg32val] [%struct.rtl8xxxu_reg32val { i16 3192, i32 -83886079 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -83820543 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -83755007 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -83689471 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -83623935 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -83558399 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -100270079 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -116981759 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -133693439 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -150405119 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -167116799 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -183828479 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -200540159 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -217251839 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -233963519 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -250675199 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -267386879 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -284098559 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -300810239 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -317521919 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -334233599 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -350945279 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -367656959 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -384368639 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -401080319 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -417791999 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -937820159 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -954531839 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -971243519 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 119341057 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 102629377 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 85917697 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 69206017 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 52494337 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1440612351 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1457324031 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1474035711 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1490747391 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1507459071 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2061041663 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2077753343 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2094465023 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 623509505 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 606797825 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 590086145 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 573374465 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1731067905 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1714356225 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1697644545 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1680932865 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1664221185 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1647509505 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1630797825 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1161101313 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1144389633 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1127677953 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1110966273 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1094254593 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077542913 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077608449 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077673985 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077739521 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077805057 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1077870593 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -79691775 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -79626239 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -79560703 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -79495167 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -79429631 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -79364095 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -96075775 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -112787455 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -129499135 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -146210815 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -162922495 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -179634175 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -196345855 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -213057535 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -229769215 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -246480895 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -263192575 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -279904255 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -296615935 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -313327615 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -330039295 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -346750975 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -363462655 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -380174335 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -396886015 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -413597695 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -430309375 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -447021055 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -463732735 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -480444415 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -497156095 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -513867775 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1973420031 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1990131711 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2006843391 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2023555071 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2040266751 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2056978431 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2073690111 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2090401791 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -2107113471 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1802043393 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1785331713 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1768620033 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1751908353 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1735196673 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1718484993 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1701773313 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1685061633 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1668349953 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1651638273 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1634926593 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1232338945 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1215627265 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1198915585 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1182203905 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1165492225 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1148780545 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1132068865 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1115357185 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1098645505 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1081933825 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1081999361 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1082064897 }, %struct.rtl8xxxu_reg32val { i16 3152, i32 262178 }, %struct.rtl8xxxu_reg32val { i16 3152, i32 262176 }, %struct.rtl8xxxu_reg32val { i16 -1, i32 -1 }], [264 x i8] zeroinitializer }, align 32
@rtl8192eu_radioa_init_table = internal global { [98 x %struct.rtl8xxxu_rfregval], [208 x i8] } { [98 x %struct.rtl8xxxu_rfregval] [%struct.rtl8xxxu_rfregval { i8 127, i32 130 }, %struct.rtl8xxxu_rfregval { i8 -127, i32 261120 }, %struct.rtl8xxxu_rfregval { i8 0, i32 196608 }, %struct.rtl8xxxu_rfregval { i8 8, i32 33792 }, %struct.rtl8xxxu_rfregval { i8 24, i32 1031 }, %struct.rtl8xxxu_rfregval { i8 25, i32 18 }, %struct.rtl8xxxu_rfregval { i8 27, i32 100 }, %struct.rtl8xxxu_rfregval { i8 30, i32 524297 }, %struct.rtl8xxxu_rfregval { i8 31, i32 2176 }, %struct.rtl8xxxu_rfregval { i8 47, i32 106592 }, %struct.rtl8xxxu_rfregval { i8 63, i32 0 }, %struct.rtl8xxxu_rfregval { i8 66, i32 24768 }, %struct.rtl8xxxu_rfregval { i8 87, i32 851968 }, %struct.rtl8xxxu_rfregval { i8 88, i32 778624 }, %struct.rtl8xxxu_rfregval { i8 103, i32 5458 }, %struct.rtl8xxxu_rfregval { i8 -125, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -80, i32 1047025 }, %struct.rtl8xxxu_rfregval { i8 -79, i32 349208 }, %struct.rtl8xxxu_rfregval { i8 -78, i32 576512 }, %struct.rtl8xxxu_rfregval { i8 -76, i32 274563 }, %struct.rtl8xxxu_rfregval { i8 -75, i32 33126 }, %struct.rtl8xxxu_rfregval { i8 -74, i32 32830 }, %struct.rtl8xxxu_rfregval { i8 -73, i32 116383 }, %struct.rtl8xxxu_rfregval { i8 -72, i32 16511 }, %struct.rtl8xxxu_rfregval { i8 -71, i32 524289 }, %struct.rtl8xxxu_rfregval { i8 -70, i32 262145 }, %struct.rtl8xxxu_rfregval { i8 -69, i32 1024 }, %struct.rtl8xxxu_rfregval { i8 -65, i32 786432 }, %struct.rtl8xxxu_rfregval { i8 -62, i32 9216 }, %struct.rtl8xxxu_rfregval { i8 -61, i32 9 }, %struct.rtl8xxxu_rfregval { i8 -60, i32 265361 }, %struct.rtl8xxxu_rfregval { i8 -59, i32 629145 }, %struct.rtl8xxxu_rfregval { i8 -58, i32 163 }, %struct.rtl8xxxu_rfregval { i8 -57, i32 559136 }, %struct.rtl8xxxu_rfregval { i8 -56, i32 486406 }, %struct.rtl8xxxu_rfregval { i8 -55, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -54, i32 524288 }, %struct.rtl8xxxu_rfregval { i8 -33, i32 384 }, %struct.rtl8xxxu_rfregval { i8 -17, i32 416 }, %struct.rtl8xxxu_rfregval { i8 81, i32 431429 }, %struct.rtl8xxxu_rfregval { i8 82, i32 517214 }, %struct.rtl8xxxu_rfregval { i8 83, i32 113 }, %struct.rtl8xxxu_rfregval { i8 86, i32 335859 }, %struct.rtl8xxxu_rfregval { i8 53, i32 168 }, %struct.rtl8xxxu_rfregval { i8 53, i32 482 }, %struct.rtl8xxxu_rfregval { i8 53, i32 680 }, %struct.rtl8xxxu_rfregval { i8 54, i32 7204 }, %struct.rtl8xxxu_rfregval { i8 54, i32 39972 }, %struct.rtl8xxxu_rfregval { i8 54, i32 72740 }, %struct.rtl8xxxu_rfregval { i8 54, i32 105508 }, %struct.rtl8xxxu_rfregval { i8 24, i32 3079 }, %struct.rtl8xxxu_rfregval { i8 90, i32 294912 }, %struct.rtl8xxxu_rfregval { i8 25, i32 473552 }, %struct.rtl8xxxu_rfregval { i8 52, i32 44503 }, %struct.rtl8xxxu_rfregval { i8 52, i32 40404 }, %struct.rtl8xxxu_rfregval { i8 52, i32 36305 }, %struct.rtl8xxxu_rfregval { i8 52, i32 32206 }, %struct.rtl8xxxu_rfregval { i8 52, i32 28107 }, %struct.rtl8xxxu_rfregval { i8 52, i32 24008 }, %struct.rtl8xxxu_rfregval { i8 52, i32 19909 }, %struct.rtl8xxxu_rfregval { i8 52, i32 13516 }, %struct.rtl8xxxu_rfregval { i8 52, i32 9295 }, %struct.rtl8xxxu_rfregval { i8 52, i32 5196 }, %struct.rtl8xxxu_rfregval { i8 52, i32 20 }, %struct.rtl8xxxu_rfregval { i8 0, i32 196953 }, %struct.rtl8xxxu_rfregval { i8 -124, i32 426368 }, %struct.rtl8xxxu_rfregval { i8 -122, i32 334 }, %struct.rtl8xxxu_rfregval { i8 -121, i32 298496 }, %struct.rtl8xxxu_rfregval { i8 -114, i32 415040 }, %struct.rtl8xxxu_rfregval { i8 -113, i32 557056 }, %struct.rtl8xxxu_rfregval { i8 -17, i32 8352 }, %struct.rtl8xxxu_rfregval { i8 59, i32 983728 }, %struct.rtl8xxxu_rfregval { i8 59, i32 980912 }, %struct.rtl8xxxu_rfregval { i8 59, i32 872368 }, %struct.rtl8xxxu_rfregval { i8 59, i32 847968 }, %struct.rtl8xxxu_rfregval { i8 59, i32 721040 }, %struct.rtl8xxxu_rfregval { i8 59, i32 655488 }, %struct.rtl8xxxu_rfregval { i8 59, i32 589952 }, %struct.rtl8xxxu_rfregval { i8 59, i32 587648 }, %struct.rtl8xxxu_rfregval { i8 59, i32 493360 }, %struct.rtl8xxxu_rfregval { i8 59, i32 397232 }, %struct.rtl8xxxu_rfregval { i8 59, i32 393120 }, %struct.rtl8xxxu_rfregval { i8 59, i32 263712 }, %struct.rtl8xxxu_rfregval { i8 59, i32 225424 }, %struct.rtl8xxxu_rfregval { i8 59, i32 131200 }, %struct.rtl8xxxu_rfregval { i8 59, i32 127072 }, %struct.rtl8xxxu_rfregval { i8 59, i32 65456 }, %struct.rtl8xxxu_rfregval { i8 -17, i32 160 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 24, i32 64519 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 30, i32 1 }, %struct.rtl8xxxu_rfregval { i8 31, i32 524288 }, %struct.rtl8xxxu_rfregval { i8 0, i32 212592 }, %struct.rtl8xxxu_rfregval { i8 -1, i32 -1 }], [208 x i8] zeroinitializer }, align 32
@rtl8192eu_radiob_init_table = internal global { [78 x %struct.rtl8xxxu_rfregval], [144 x i8] } { [78 x %struct.rtl8xxxu_rfregval] [%struct.rtl8xxxu_rfregval { i8 127, i32 130 }, %struct.rtl8xxxu_rfregval { i8 -127, i32 261120 }, %struct.rtl8xxxu_rfregval { i8 0, i32 196608 }, %struct.rtl8xxxu_rfregval { i8 8, i32 33792 }, %struct.rtl8xxxu_rfregval { i8 24, i32 1031 }, %struct.rtl8xxxu_rfregval { i8 25, i32 18 }, %struct.rtl8xxxu_rfregval { i8 27, i32 100 }, %struct.rtl8xxxu_rfregval { i8 30, i32 524297 }, %struct.rtl8xxxu_rfregval { i8 31, i32 2176 }, %struct.rtl8xxxu_rfregval { i8 47, i32 106592 }, %struct.rtl8xxxu_rfregval { i8 63, i32 0 }, %struct.rtl8xxxu_rfregval { i8 66, i32 24768 }, %struct.rtl8xxxu_rfregval { i8 87, i32 851968 }, %struct.rtl8xxxu_rfregval { i8 88, i32 778624 }, %struct.rtl8xxxu_rfregval { i8 103, i32 5458 }, %struct.rtl8xxxu_rfregval { i8 127, i32 130 }, %struct.rtl8xxxu_rfregval { i8 -127, i32 258048 }, %struct.rtl8xxxu_rfregval { i8 -125, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -33, i32 384 }, %struct.rtl8xxxu_rfregval { i8 -17, i32 416 }, %struct.rtl8xxxu_rfregval { i8 81, i32 431429 }, %struct.rtl8xxxu_rfregval { i8 82, i32 517166 }, %struct.rtl8xxxu_rfregval { i8 83, i32 113 }, %struct.rtl8xxxu_rfregval { i8 86, i32 335859 }, %struct.rtl8xxxu_rfregval { i8 53, i32 168 }, %struct.rtl8xxxu_rfregval { i8 53, i32 480 }, %struct.rtl8xxxu_rfregval { i8 53, i32 680 }, %struct.rtl8xxxu_rfregval { i8 54, i32 7336 }, %struct.rtl8xxxu_rfregval { i8 54, i32 39972 }, %struct.rtl8xxxu_rfregval { i8 54, i32 72740 }, %struct.rtl8xxxu_rfregval { i8 54, i32 105508 }, %struct.rtl8xxxu_rfregval { i8 24, i32 3079 }, %struct.rtl8xxxu_rfregval { i8 90, i32 294912 }, %struct.rtl8xxxu_rfregval { i8 25, i32 473552 }, %struct.rtl8xxxu_rfregval { i8 52, i32 44503 }, %struct.rtl8xxxu_rfregval { i8 52, i32 40404 }, %struct.rtl8xxxu_rfregval { i8 52, i32 36305 }, %struct.rtl8xxxu_rfregval { i8 52, i32 32206 }, %struct.rtl8xxxu_rfregval { i8 52, i32 28107 }, %struct.rtl8xxxu_rfregval { i8 52, i32 24008 }, %struct.rtl8xxxu_rfregval { i8 52, i32 19909 }, %struct.rtl8xxxu_rfregval { i8 52, i32 13516 }, %struct.rtl8xxxu_rfregval { i8 52, i32 9295 }, %struct.rtl8xxxu_rfregval { i8 52, i32 5196 }, %struct.rtl8xxxu_rfregval { i8 52, i32 20 }, %struct.rtl8xxxu_rfregval { i8 0, i32 196953 }, %struct.rtl8xxxu_rfregval { i8 -124, i32 426368 }, %struct.rtl8xxxu_rfregval { i8 -122, i32 206 }, %struct.rtl8xxxu_rfregval { i8 -121, i32 297472 }, %struct.rtl8xxxu_rfregval { i8 -114, i32 415040 }, %struct.rtl8xxxu_rfregval { i8 -113, i32 557056 }, %struct.rtl8xxxu_rfregval { i8 -17, i32 8352 }, %struct.rtl8xxxu_rfregval { i8 59, i32 983728 }, %struct.rtl8xxxu_rfregval { i8 59, i32 980912 }, %struct.rtl8xxxu_rfregval { i8 59, i32 872368 }, %struct.rtl8xxxu_rfregval { i8 59, i32 847968 }, %struct.rtl8xxxu_rfregval { i8 59, i32 721040 }, %struct.rtl8xxxu_rfregval { i8 59, i32 655488 }, %struct.rtl8xxxu_rfregval { i8 59, i32 589952 }, %struct.rtl8xxxu_rfregval { i8 59, i32 587648 }, %struct.rtl8xxxu_rfregval { i8 59, i32 493360 }, %struct.rtl8xxxu_rfregval { i8 59, i32 397232 }, %struct.rtl8xxxu_rfregval { i8 59, i32 393120 }, %struct.rtl8xxxu_rfregval { i8 59, i32 263712 }, %struct.rtl8xxxu_rfregval { i8 59, i32 225424 }, %struct.rtl8xxxu_rfregval { i8 59, i32 131200 }, %struct.rtl8xxxu_rfregval { i8 59, i32 127072 }, %struct.rtl8xxxu_rfregval { i8 59, i32 65456 }, %struct.rtl8xxxu_rfregval { i8 -17, i32 160 }, %struct.rtl8xxxu_rfregval { i8 0, i32 65881 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 30, i32 1 }, %struct.rtl8xxxu_rfregval { i8 31, i32 524288 }, %struct.rtl8xxxu_rfregval { i8 0, i32 212592 }, %struct.rtl8xxxu_rfregval { i8 -1, i32 -1 }], [144 x i8] zeroinitializer }, align 32
@rtl8192eu_phy_iq_calibrate.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.5, ptr @.str.27, i8 1, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtl8xxxu\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtl8192eu_phy_iq_calibrate\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: candidate is %x\0A\00", [43 x i8] zeroinitializer }, align 32
@rtl8192eu_phy_iq_calibrate.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.5, ptr @.str.28, i8 1, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: e94 =%x e9c=%x ea4=%x eac=%x eb4=%x ebc=%x ec4=%x ecc=%x\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl8xxxu_iqk_phy_iq_bb_reg = external dso_local constant [0 x i32], align 4
@rtl8192eu_phy_iqcalibrate.adda_regs = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 2140, i32 3692, i32 3696, i32 3700, i32 3704, i32 3708, i32 3712, i32 3716, i32 3720, i32 3724, i32 3792, i32 3796, i32 3800, i32 3804, i32 3808, i32 3820], [32 x i8] zeroinitializer }, align 32
@rtl8192eu_phy_iqcalibrate.iqk_mac_regs = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1314, i32 1360, i32 1361, i32 64], [16 x i8] zeroinitializer }, align 32
@rtl8192eu_phy_iqcalibrate.iqk_bb_regs = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 3076, i32 3080, i32 2164, i32 2920, i32 2924, i32 2160, i32 2144, i32 2148, i32 2564], [60 x i8] zeroinitializer }, align 32
@rtl8192eu_phy_iqcalibrate.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.29, ptr @.str.5, ptr @.str.30, i8 1, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtl8192eu_phy_iqcalibrate\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Path A TX IQK failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl8192eu_phy_iqcalibrate.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.29, ptr @.str.5, ptr @.str.31, i8 1, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Path A RX IQK failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl8192eu_phy_iqcalibrate.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.29, ptr @.str.5, ptr @.str.32, i8 1, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Path B IQK failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@rtl8192eu_phy_iqcalibrate.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.29, ptr @.str.5, ptr @.str.33, i8 1, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Path B RX IQK failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl8192eu_rx_iqk_path_a._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.34, ptr @.str.5, i32 881, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl8192eu_rx_iqk_path_a\00", [40 x i8] zeroinitializer }, align 32
@rtl8192eu_rx_iqk_path_a._entry_ptr = internal global ptr @rtl8192eu_rx_iqk_path_a._entry, section ".printk_index", align 4
@rtl8192eu_iqk_path_b._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.35, ptr @.str.5, i32 928, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtl8192eu_iqk_path_b\00", [43 x i8] zeroinitializer }, align 32
@rtl8192eu_iqk_path_b._entry_ptr = internal global ptr @rtl8192eu_iqk_path_b._entry, section ".printk_index", align 4
@rtl8192eu_rx_iqk_path_b._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.36, ptr @.str.5, i32 1048, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl8192eu_rx_iqk_path_b\00", [40 x i8] zeroinitializer }, align 32
@rtl8192eu_rx_iqk_path_b._entry_ptr = internal global ptr @rtl8192eu_rx_iqk_path_b._entry, section ".printk_index", align 4
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"rtl8192e_mac_init_table\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 35, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"rtl8192eu_fops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1674, i32 25 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 657, i32 39 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 658, i32 39 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 659, i32 39 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 664, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 668, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 572, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 583, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 586, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 678, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1465, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1528, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [25 x i8] c"rtl8192eu_phy_init_table\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 65, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant [32 x i8] c"rtl8xxx_agc_8192eu_highpa_table\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 266, i32 33 }
@___asan_gen_.127 = private unnamed_addr constant [29 x i8] c"rtl8xxx_agc_8192eu_std_table\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 197, i32 33 }
@___asan_gen_.130 = private unnamed_addr constant [28 x i8] c"rtl8192eu_radioa_init_table\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 335, i32 33 }
@___asan_gen_.133 = private unnamed_addr constant [28 x i8] c"rtl8192eu_radiob_init_table\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 415, i32 33 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1307, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1308, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant [10 x i8] c"adda_regs\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1061, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant [13 x i8] c"iqk_mac_regs\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1071, i32 19 }
@___asan_gen_.154 = private unnamed_addr constant [12 x i8] c"iqk_bb_regs\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1075, i32 19 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1141, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1158, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1185, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1201, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 880, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 927, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [58 x i8] c"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1047, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @rtl8192eu_active_to_emu._entry, ptr @rtl8192eu_active_to_emu._entry_ptr, ptr @rtl8192eu_active_to_lps._entry, ptr @rtl8192eu_active_to_lps._entry_ptr, ptr @rtl8192eu_iqk_path_b._entry, ptr @rtl8192eu_iqk_path_b._entry_ptr, ptr @rtl8192eu_log_next_device_info._entry, ptr @rtl8192eu_log_next_device_info._entry.14, ptr @rtl8192eu_log_next_device_info._entry.17, ptr @rtl8192eu_log_next_device_info._entry_ptr, ptr @rtl8192eu_log_next_device_info._entry_ptr.16, ptr @rtl8192eu_log_next_device_info._entry_ptr.19, ptr @rtl8192eu_parse_efuse._entry, ptr @rtl8192eu_parse_efuse._entry.8, ptr @rtl8192eu_parse_efuse._entry_ptr, ptr @rtl8192eu_parse_efuse._entry_ptr.10, ptr @rtl8192eu_rx_iqk_path_a._entry, ptr @rtl8192eu_rx_iqk_path_a._entry_ptr, ptr @rtl8192eu_rx_iqk_path_b._entry, ptr @rtl8192eu_rx_iqk_path_b._entry_ptr, ptr @rtl8192e_mac_init_table, ptr @rtl8192eu_fops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @rtl8192eu_phy_init_table, ptr @rtl8xxx_agc_8192eu_highpa_table, ptr @rtl8xxx_agc_8192eu_std_table, ptr @rtl8192eu_radioa_init_table, ptr @rtl8192eu_radiob_init_table, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @rtl8192eu_phy_iqcalibrate.adda_regs, ptr @rtl8192eu_phy_iqcalibrate.iqk_mac_regs, ptr @rtl8192eu_phy_iqcalibrate.iqk_bb_regs, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192e_mac_init_table to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_fops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_parse_efuse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_parse_efuse._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_log_next_device_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_log_next_device_info._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_log_next_device_info._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_active_to_lps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_active_to_emu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_phy_init_table to i32), i32 1672, i32 2112, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8xxx_agc_8192eu_highpa_table to i32), i32 1048, i32 1312, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8xxx_agc_8192eu_std_table to i32), i32 1048, i32 1312, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_radioa_init_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_radiob_init_table to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_phy_iqcalibrate.adda_regs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_phy_iqcalibrate.iqk_mac_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_phy_iqcalibrate.iqk_bb_regs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_rx_iqk_path_a._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_iqk_path_b._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192eu_rx_iqk_path_b._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8192eu_parse_efuse(ptr noundef %priv) #0 align 64 {
entry:
  %value.i254 = alloca [80 x i8], align 1
  %value.i233 = alloca [80 x i8], align 1
  %value.i = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %efuse_wifi = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52
  %0 = ptrtoint ptr %efuse_wifi to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %efuse_wifi, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10625, i16 %1)
  %cmp.not = icmp eq i16 %1, 10625
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_addr = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 12
  %mac_addr2 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 24, i32 2
  %2 = ptrtoint ptr %mac_addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_addr2, align 4
  %4 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 24, i32 6
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 12, i32 4
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %add.ptr1.i, align 2
  %cck_tx_power_index_A = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 15
  %tx_power_index_A = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %cck_tx_power_index_A, ptr %tx_power_index_A, i32 6)
  %cck_tx_power_index_B = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 16
  %tx_power_index_B = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %cck_tx_power_index_B, ptr %tx_power_index_B, i32 6)
  %ht40_1s_tx_power_index_A = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 17
  %ht40_base = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 1
  %10 = call ptr @memcpy(ptr %ht40_1s_tx_power_index_A, ptr %ht40_base, i32 5)
  %ht40_1s_tx_power_index_B = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 18
  %ht40_base14 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 1
  %11 = call ptr @memcpy(ptr %ht40_1s_tx_power_index_B, ptr %ht40_base14, i32 5)
  %ht20_ofdm_1s_diff = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %ht20_ofdm_1s_diff to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %ht20_ofdm_1s_diff, align 1
  %13 = lshr i8 %bf.load, 4
  %ht20_tx_power_diff = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 25
  %ht20_ofdm_1s_diff19 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %ht20_ofdm_1s_diff19 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load20 = load i8, ptr %ht20_ofdm_1s_diff19, align 1
  %15 = and i8 %bf.load20, -16
  %bf.set28 = or i8 %15, %13
  %16 = ptrtoint ptr %ht20_tx_power_diff to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %bf.set28, ptr %ht20_tx_power_diff, align 1
  %ht40_tx_power_diff = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 26
  %17 = ptrtoint ptr %ht40_tx_power_diff to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ht40_tx_power_diff, align 1
  %arrayidx44 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 3, i32 0
  %18 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load45 = load i16, ptr %arrayidx44, align 2
  %19 = lshr i16 %bf.load45, 8
  %arrayidx49 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 24, i32 1
  %20 = trunc i16 %19 to i8
  %21 = and i8 %20, 15
  %arrayidx60 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 3, i32 0
  %22 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load61 = load i16, ptr %arrayidx60, align 2
  %sh.diff = lshr i16 %bf.load61, 4
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %bf.shl69 = and i8 %tr.sh.diff, -16
  %bf.set71 = or i8 %bf.shl69, %21
  %23 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %bf.set71, ptr %arrayidx49, align 1
  %arrayidx84 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 25, i32 1
  %24 = trunc i16 %bf.load45 to i8
  %25 = and i8 %24, 15
  %26 = trunc i16 %bf.load61 to i8
  %bf.shl104 = shl i8 %26, 4
  %bf.set106 = or i8 %bf.shl104, %25
  %27 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.set106, ptr %arrayidx84, align 1
  %arrayidx119 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 26, i32 1
  %28 = lshr i8 %24, 4
  %29 = and i8 %26, -16
  %bf.set141 = or i8 %29, %28
  %30 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %bf.set141, ptr %arrayidx119, align 1
  %arrayidx44.1 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 3, i32 1
  %31 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load45.1 = load i16, ptr %arrayidx44.1, align 2
  %32 = lshr i16 %bf.load45.1, 8
  %arrayidx49.1 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 24, i32 2
  %33 = trunc i16 %32 to i8
  %34 = and i8 %33, 15
  %arrayidx60.1 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 3, i32 1
  %35 = ptrtoint ptr %arrayidx60.1 to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load61.1 = load i16, ptr %arrayidx60.1, align 2
  %sh.diff.1 = lshr i16 %bf.load61.1, 4
  %tr.sh.diff.1 = trunc i16 %sh.diff.1 to i8
  %bf.shl69.1 = and i8 %tr.sh.diff.1, -16
  %bf.set71.1 = or i8 %bf.shl69.1, %34
  %36 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %bf.set71.1, ptr %arrayidx49.1, align 1
  %arrayidx84.1 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 25, i32 2
  %37 = trunc i16 %bf.load45.1 to i8
  %38 = and i8 %37, 15
  %39 = trunc i16 %bf.load61.1 to i8
  %bf.shl104.1 = shl i8 %39, 4
  %bf.set106.1 = or i8 %bf.shl104.1, %38
  %40 = ptrtoint ptr %arrayidx84.1 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %bf.set106.1, ptr %arrayidx84.1, align 1
  %arrayidx119.1 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 26, i32 2
  %41 = lshr i8 %37, 4
  %42 = and i8 %39, -16
  %bf.set141.1 = or i8 %42, %41
  %43 = ptrtoint ptr %arrayidx119.1 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %bf.set141.1, ptr %arrayidx119.1, align 1
  %arrayidx44.2 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 3, i32 2
  %44 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load45.2 = load i16, ptr %arrayidx44.2, align 2
  %45 = lshr i16 %bf.load45.2, 8
  %arrayidx49.2 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 24, i32 3
  %46 = trunc i16 %45 to i8
  %47 = and i8 %46, 15
  %arrayidx60.2 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 3, i32 2
  %48 = ptrtoint ptr %arrayidx60.2 to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load61.2 = load i16, ptr %arrayidx60.2, align 2
  %sh.diff.2 = lshr i16 %bf.load61.2, 4
  %tr.sh.diff.2 = trunc i16 %sh.diff.2 to i8
  %bf.shl69.2 = and i8 %tr.sh.diff.2, -16
  %bf.set71.2 = or i8 %bf.shl69.2, %47
  %49 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %bf.set71.2, ptr %arrayidx49.2, align 1
  %arrayidx84.2 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 25, i32 3
  %50 = trunc i16 %bf.load45.2 to i8
  %51 = and i8 %50, 15
  %52 = trunc i16 %bf.load61.2 to i8
  %bf.shl104.2 = shl i8 %52, 4
  %bf.set106.2 = or i8 %bf.shl104.2, %51
  %53 = ptrtoint ptr %arrayidx84.2 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %bf.set106.2, ptr %arrayidx84.2, align 1
  %arrayidx119.2 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 26, i32 3
  %54 = lshr i8 %50, 4
  %55 = and i8 %52, -16
  %bf.set141.2 = or i8 %55, %54
  %56 = ptrtoint ptr %arrayidx119.2 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %bf.set141.2, ptr %arrayidx119.2, align 1
  %has_xtalk = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 28
  %57 = ptrtoint ptr %has_xtalk to i32
  call void @__asan_load4_noabort(i32 %57)
  %bf.load145 = load i32, ptr %has_xtalk, align 4
  %bf.set147 = or i32 %bf.load145, 256
  store i32 %bf.set147, ptr %has_xtalk, align 4
  %xtal_k = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 7
  %58 = ptrtoint ptr %xtal_k to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %xtal_k, align 1
  %60 = and i8 %59, 63
  %xtalk = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 29
  %61 = ptrtoint ptr %xtalk to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %xtalk, align 4
  %device_info = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 24, i32 8
  %62 = ptrtoint ptr %device_info to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %device_info, align 1
  %conv.i = zext i8 %63 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %63)
  %cmp.i = icmp ugt i8 %63, 80
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %udev.i = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %64 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %udev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %65, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.11, i32 noundef %conv.i, ptr noundef nonnull @.str, i32 noundef 0) #7
  br label %rtl8192eu_log_next_device_info.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %cmp4.i = icmp ugt i8 %63, 1
  br i1 %cmp4.i, label %if.then6.i, label %do.end22.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %value.i) #4
  %arrayidx7.i = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 24, i32 10
  %sub.i = add nsw i32 %conv.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %sub.i)
  %66 = icmp ugt i32 %sub.i, 79
  %67 = sub nuw nsw i32 82, %conv.i
  %68 = select i1 %66, i32 0, i32 %67
  %69 = getelementptr i8, ptr %value.i, i32 %sub.i
  %70 = call ptr @memset(ptr %69, i32 255, i32 %68)
  %71 = call ptr @memcpy(ptr %value.i, ptr %arrayidx7.i, i32 %sub.i)
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %69, align 1
  %udev15.i = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %73 = ptrtoint ptr %udev15.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %udev15.i, align 4
  %dev16.i = getelementptr inbounds %struct.usb_device, ptr %74, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str, ptr noundef nonnull %value.i) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %value.i) #4
  br label %rtl8192eu_log_next_device_info.exit

do.end22.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %udev23.i = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %75 = ptrtoint ptr %udev23.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %udev23.i, align 4
  %dev24.i = getelementptr inbounds %struct.usb_device, ptr %76, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str) #7
  br label %rtl8192eu_log_next_device_info.exit

rtl8192eu_log_next_device_info.exit:              ; preds = %do.end22.i, %if.then6.i, %do.end.i
  %record_offset.0 = phi i32 [ 0, %do.end.i ], [ %conv.i, %if.then6.i ], [ 0, %do.end22.i ]
  %add.ptr.i234 = getelementptr i8, ptr %device_info, i32 %record_offset.0
  %77 = ptrtoint ptr %add.ptr.i234 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %add.ptr.i234, align 1
  %conv.i235 = zext i8 %78 to i32
  %add.i236 = add nuw nsw i32 %record_offset.0, %conv.i235
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %add.i236)
  %cmp.i237 = icmp ugt i32 %add.i236, 80
  br i1 %cmp.i237, label %do.end.i240, label %if.end.i242

do.end.i240:                                      ; preds = %rtl8192eu_log_next_device_info.exit
  call void @__sanitizer_cov_trace_pc() #6
  %udev.i238 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %79 = ptrtoint ptr %udev.i238 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %udev.i238, align 4
  %dev.i239 = getelementptr inbounds %struct.usb_device, ptr %80, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i239, ptr noundef nonnull @.str.11, i32 noundef %conv.i235, ptr noundef nonnull @.str.1, i32 noundef %record_offset.0) #7
  br label %rtl8192eu_log_next_device_info.exit253

if.end.i242:                                      ; preds = %rtl8192eu_log_next_device_info.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %78)
  %cmp4.i241 = icmp ugt i8 %78, 1
  br i1 %cmp4.i241, label %if.then6.i249, label %do.end22.i252

if.then6.i249:                                    ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %value.i233) #4
  %arrayidx7.i243 = getelementptr i8, ptr %add.ptr.i234, i32 2
  %sub.i244 = add nsw i32 %conv.i235, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %sub.i244)
  %81 = icmp ugt i32 %sub.i244, 79
  %82 = sub nsw i32 82, %conv.i235
  %83 = select i1 %81, i32 0, i32 %82
  %84 = getelementptr i8, ptr %value.i233, i32 %sub.i244
  %85 = call ptr @memset(ptr %84, i32 255, i32 %83)
  %86 = call ptr @memcpy(ptr %value.i233, ptr %arrayidx7.i243, i32 %sub.i244)
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %84, align 1
  %udev15.i246 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %88 = ptrtoint ptr %udev15.i246 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %udev15.i246, align 4
  %dev16.i247 = getelementptr inbounds %struct.usb_device, ptr %89, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16.i247, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, ptr noundef nonnull %value.i233) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %value.i233) #4
  br label %rtl8192eu_log_next_device_info.exit253

do.end22.i252:                                    ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #6
  %udev23.i250 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %90 = ptrtoint ptr %udev23.i250 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %udev23.i250, align 4
  %dev24.i251 = getelementptr inbounds %struct.usb_device, ptr %91, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24.i251, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1) #7
  br label %rtl8192eu_log_next_device_info.exit253

rtl8192eu_log_next_device_info.exit253:           ; preds = %do.end22.i252, %if.then6.i249, %do.end.i240
  %record_offset.1 = phi i32 [ %record_offset.0, %do.end.i240 ], [ %add.i236, %if.then6.i249 ], [ %record_offset.0, %do.end22.i252 ]
  %add.ptr.i255 = getelementptr i8, ptr %device_info, i32 %record_offset.1
  %92 = ptrtoint ptr %add.ptr.i255 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %add.ptr.i255, align 1
  %conv.i256 = zext i8 %93 to i32
  %add.i257 = add nuw nsw i32 %record_offset.1, %conv.i256
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %add.i257)
  %cmp.i258 = icmp ugt i32 %add.i257, 80
  br i1 %cmp.i258, label %do.end.i261, label %if.end.i263

do.end.i261:                                      ; preds = %rtl8192eu_log_next_device_info.exit253
  call void @__sanitizer_cov_trace_pc() #6
  %udev.i259 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %94 = ptrtoint ptr %udev.i259 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %udev.i259, align 4
  %dev.i260 = getelementptr inbounds %struct.usb_device, ptr %95, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i260, ptr noundef nonnull @.str.11, i32 noundef %conv.i256, ptr noundef nonnull @.str.2, i32 noundef %record_offset.1) #7
  br label %rtl8192eu_log_next_device_info.exit274

if.end.i263:                                      ; preds = %rtl8192eu_log_next_device_info.exit253
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %93)
  %cmp4.i262 = icmp ugt i8 %93, 1
  br i1 %cmp4.i262, label %if.then6.i270, label %do.end22.i273

if.then6.i270:                                    ; preds = %if.end.i263
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %value.i254) #4
  %arrayidx7.i264 = getelementptr i8, ptr %add.ptr.i255, i32 2
  %sub.i265 = add nsw i32 %conv.i256, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %sub.i265)
  %96 = icmp ugt i32 %sub.i265, 79
  %97 = sub nsw i32 82, %conv.i256
  %98 = select i1 %96, i32 0, i32 %97
  %99 = getelementptr i8, ptr %value.i254, i32 %sub.i265
  %100 = call ptr @memset(ptr %99, i32 255, i32 %98)
  %101 = call ptr @memcpy(ptr %value.i254, ptr %arrayidx7.i264, i32 %sub.i265)
  %102 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %99, align 1
  %udev15.i267 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %103 = ptrtoint ptr %udev15.i267 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %udev15.i267, align 4
  %dev16.i268 = getelementptr inbounds %struct.usb_device, ptr %104, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16.i268, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, ptr noundef nonnull %value.i254) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %value.i254) #4
  br label %rtl8192eu_log_next_device_info.exit274

do.end22.i273:                                    ; preds = %if.end.i263
  call void @__sanitizer_cov_trace_pc() #6
  %udev23.i271 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %105 = ptrtoint ptr %udev23.i271 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %udev23.i271, align 4
  %dev24.i272 = getelementptr inbounds %struct.usb_device, ptr %106, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24.i272, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2) #7
  br label %rtl8192eu_log_next_device_info.exit274

rtl8192eu_log_next_device_info.exit274:           ; preds = %do.end22.i273, %if.then6.i270, %do.end.i261
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rtl8xxxu_debug to i32))
  %107 = load i32, ptr @rtl8xxxu_debug, align 4
  %and156 = and i32 %107, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool.not = icmp eq i32 %and156, 0
  br i1 %tobool.not, label %rtl8192eu_log_next_device_info.exit274.cleanup_crit_edge, label %if.then157

rtl8192eu_log_next_device_info.exit274.cleanup_crit_edge: ; preds = %rtl8192eu_log_next_device_info.exit274
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then157:                                       ; preds = %rtl8192eu_log_next_device_info.exit274
  %udev = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %108 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %109, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 512) #7
  br label %do.end166

do.end166:                                        ; preds = %do.end166.do.end166_crit_edge, %if.then157
  %i.1281 = phi i32 [ 0, %if.then157 ], [ %add, %do.end166.do.end166_crit_edge ]
  %110 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %udev, align 4
  %dev168 = getelementptr inbounds %struct.usb_device, ptr %111, i32 0, i32 15
  %arrayidx169 = getelementptr i8, ptr %efuse_wifi, i32 %i.1281
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev168, ptr noundef nonnull @.str.9, i32 noundef %i.1281, ptr noundef %arrayidx169) #7
  %add = add nuw nsw i32 %i.1281, 8
  %cmp161 = icmp ult i32 %i.1281, 504
  br i1 %cmp161, label %do.end166.do.end166_crit_edge, label %do.end166.cleanup_crit_edge

do.end166.cleanup_crit_edge:                      ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end166.do.end166_crit_edge:                    ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end166

cleanup:                                          ; preds = %do.end166.cleanup_crit_edge, %rtl8192eu_log_next_device_info.exit274.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %rtl8192eu_log_next_device_info.exit274.cleanup_crit_edge ], [ 0, %do.end166.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8192eu_load_firmware(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl8xxxu_load_firmware(ptr noundef %priv, ptr noundef nonnull @.str.20) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8192eu_power_on(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 240) #4
  %and = and i32 %call, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 20) #4
  %and3 = and i32 %call2, -15728641
  %or = or i32 %and3, 5242880
  %call4 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 20, i32 noundef %or) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i8 [ -125, %if.else ], [ -61, %entry.if.end_crit_edge ]
  %call5 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 124, i8 noundef zeroext %.sink) #4
  %call.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 40) #4
  %0 = and i8 %call.i, -5
  %call2.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 40, i8 noundef zeroext %0) #4
  %call3.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 120) #4
  %and4.i = and i32 %call3.i, -897
  %call5.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 120, i32 noundef %and4.i) #4
  %call6.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 40) #4
  %1 = and i8 %call6.i, -65
  %call10.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 40, i8 noundef zeroext %1) #4
  %call11.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 120) #4
  %and12.i = and i32 %call11.i, -2097153
  %call13.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 120, i32 noundef %and12.i) #4
  %call.i30 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 5) #4
  %2 = and i8 %call.i30, -25
  %call2.i31 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 5, i8 noundef zeroext %2) #4
  %call.i32 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 5) #4
  %3 = and i8 %call.i32, 127
  %call2.i33 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 5, i8 noundef zeroext %3) #4
  %call3.i34 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 5) #4
  %4 = and i8 %call3.i34, -5
  %call7.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 5, i8 noundef zeroext %4) #4
  %call8.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 5) #4
  %5 = and i8 %call8.i, -25
  %call12.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 5, i8 noundef zeroext %5) #4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %count.067.i = phi i32 [ 500, %if.end ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %call13.i35 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 4) #4
  %and14.i = and i32 %call13.i35, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.end.i, label %if.end18.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #4
  %dec.i = add nsw i32 %count.067.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end.i.exit_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end18.i:                                       ; preds = %for.body.i
  %call19.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 6) #4
  %7 = or i8 %call19.i, 1
  %call22.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 6, i8 noundef zeroext %7) #4
  %call23.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 4) #4
  %or24.i = or i32 %call23.i, 256
  %call25.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 4, i32 noundef %or24.i) #4
  br label %for.body28.i

for.body28.i:                                     ; preds = %if.end33.i.for.body28.i_crit_edge, %if.end18.i
  %count.168.i = phi i32 [ 500, %if.end18.i ], [ %dec35.i, %if.end33.i.for.body28.i_crit_edge ]
  %call29.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 4) #4
  %and30.i = and i32 %call29.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %cmp.i = icmp eq i32 %and30.i, 0
  br i1 %cmp.i, label %if.end9, label %if.end33.i

if.end33.i:                                       ; preds = %for.body28.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 2147480) #4
  %dec35.i = add nsw i32 %count.168.i, -1
  %tobool27.not.i = icmp eq i32 %dec35.i, 0
  br i1 %tobool27.not.i, label %if.end33.i.exit_crit_edge, label %if.end33.i.for.body28.i_crit_edge

if.end33.i.for.body28.i_crit_edge:                ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body28.i

if.end33.i.exit_crit_edge:                        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end9:                                          ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 256, i16 noundef zeroext 0) #4
  %call11 = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 256) #4
  %9 = or i16 %call11, 1791
  %call14 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 256, i16 noundef zeroext %9) #4
  br label %exit

exit:                                             ; preds = %if.end9, %if.end33.i.exit_crit_edge, %if.end.i.exit_crit_edge
  %ret.1.i38 = phi i32 [ 0, %if.end9 ], [ -16, %if.end33.i.exit_crit_edge ], [ -16, %if.end.i.exit_crit_edge ]
  ret i32 %ret.1.i38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8192eu_power_off(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl8xxxu_flush_fifo(ptr noundef %priv) #4
  %call1 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 1260) #4
  %0 = and i8 %call1, -3
  %call3 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 1260, i8 noundef zeroext %0) #4
  %call4 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 31, i8 noundef zeroext 0) #4
  %udev.i = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev.i, align 4
  %dev1.i = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  %call.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 1314, i8 noundef zeroext -1) #4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %retry.0.i = phi i32 [ 100, %entry ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  %call3.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 1528) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.cond.i

do.cond.i:                                        ; preds = %do.body.i
  %dec.i = add nsw i32 %retry.0.i, -1
  %tobool4.not.i = icmp eq i32 %retry.0.i, 0
  br i1 %tobool4.not.i, label %do.cond.i.if.end10.i_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.cond.i.if.end10.i_crit_edge:                   ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0.i)
  %tobool5.not.i = icmp eq i32 %retry.0.i, 0
  br i1 %tobool5.not.i, label %do.end9.i, label %do.end.i.if.end10.i_crit_edge

do.end.i.if.end10.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

do.end9.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.21) #7
  br label %rtl8192eu_active_to_lps.exit

if.end10.i:                                       ; preds = %do.end.i.if.end10.i_crit_edge, %do.cond.i.if.end10.i_crit_edge
  %call11.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 2) #4
  %3 = and i8 %call11.i, -2
  %call13.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 2, i8 noundef zeroext %3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 429496) #4
  %call14.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 2) #4
  %5 = and i8 %call14.i, -3
  %call18.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 2, i8 noundef zeroext %5) #4
  %call19.i = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 256) #4
  %6 = and i16 %call19.i, -256
  %7 = or i16 %6, 3
  %call25.i = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 256, i16 noundef zeroext %7) #4
  %call26.i = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 256) #4
  %8 = and i16 %call26.i, -513
  %call30.i = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 256, i16 noundef zeroext %8) #4
  %call31.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 1363) #4
  %9 = or i8 %call31.i, 32
  %call35.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 1363, i8 noundef zeroext %9) #4
  br label %rtl8192eu_active_to_lps.exit

rtl8192eu_active_to_lps.exit:                     ; preds = %if.end10.i, %do.end9.i
  %call6 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 128) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call6)
  %tobool.not = icmp sgt i8 %call6, -1
  br i1 %tobool.not, label %rtl8192eu_active_to_lps.exit.if.end_crit_edge, label %if.then

rtl8192eu_active_to_lps.exit.if.end_crit_edge:    ; preds = %rtl8192eu_active_to_lps.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %rtl8192eu_active_to_lps.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtl8xxxu_firmware_self_reset(ptr noundef %priv) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %rtl8192eu_active_to_lps.exit.if.end_crit_edge
  %call9 = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 2) #4
  %10 = and i16 %call9, -1025
  %call13 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 2, i16 noundef zeroext %10) #4
  %call14 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 128, i8 noundef zeroext 0) #4
  tail call void @rtl8xxxu_reset_8051(ptr noundef %priv) #4
  %call.i31 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 31) #4
  %11 = and i8 %call.i31, -2
  %call2.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 31, i8 noundef zeroext %11) #4
  %call3.i32 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 78) #4
  %12 = and i8 %call3.i32, 127
  %call7.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 78, i8 noundef zeroext %12) #4
  %call8.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 5) #4
  %13 = or i8 %call8.i, 2
  %call11.i33 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 5, i8 noundef zeroext %13) #4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %count.01.i = phi i32 [ 500, %if.end ], [ %dec.i34, %if.end.i.for.body.i_crit_edge ]
  %call12.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 5) #4
  %14 = and i8 %call12.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.i = icmp eq i8 %14, 0
  br i1 %cmp.i, label %for.body.i.rtl8192eu_active_to_emu.exit_crit_edge, label %if.end.i

for.body.i.rtl8192eu_active_to_emu.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtl8192eu_active_to_emu.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #4
  %dec.i34 = add nsw i32 %count.01.i, -1
  %tobool.not.i35 = icmp eq i32 %dec.i34, 0
  br i1 %tobool.not.i35, label %do.end.critedge.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

do.end.critedge.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #7
  br label %rtl8192eu_active_to_emu.exit

rtl8192eu_active_to_emu.exit:                     ; preds = %do.end.critedge.i, %for.body.i.rtl8192eu_active_to_emu.exit_crit_edge
  %call.i37 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 5) #4
  %18 = and i8 %call.i37, -25
  %19 = or i8 %18, 8
  %call4.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 5, i8 noundef zeroext %19) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_reset_8051(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_auto_llt_table(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8192eu_init_phy_bb(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 2) #4
  %0 = or i16 %call, 8195
  %call2 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 2, i16 noundef zeroext %0) #4
  %call3 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 31, i8 noundef zeroext 7) #4
  %call4 = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 2) #4
  %1 = or i16 %call4, 8215
  %call8 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 2, i16 noundef zeroext %1) #4
  %call9 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 31, i8 noundef zeroext 7) #4
  %call10 = tail call i32 @rtl8xxxu_init_phy_regs(ptr noundef %priv, ptr noundef nonnull @rtl8192eu_phy_init_table) #4
  %hi_pa = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 28
  %2 = ptrtoint ptr %hi_pa to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %hi_pa, align 4
  %3 = and i32 %bf.load, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %rtl8xxx_agc_8192eu_std_table.rtl8xxx_agc_8192eu_highpa_table = select i1 %tobool.not, ptr @rtl8xxx_agc_8192eu_std_table, ptr @rtl8xxx_agc_8192eu_highpa_table
  %call12 = tail call i32 @rtl8xxxu_init_phy_regs(ptr noundef %priv, ptr noundef nonnull %rtl8xxx_agc_8192eu_std_table.rtl8xxx_agc_8192eu_highpa_table) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8192eu_init_phy_rf(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl8xxxu_init_phy_rf(ptr noundef %priv, ptr noundef nonnull @rtl8192eu_radioa_init_table, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @rtl8xxxu_init_phy_rf(ptr noundef %priv, ptr noundef nonnull @rtl8192eu_radiob_init_table, i32 noundef 1) #4
  br label %exit

exit:                                             ; preds = %if.end, %entry.exit_crit_edge
  %ret.0 = phi i32 [ %call, %entry.exit_crit_edge ], [ %call1, %if.end ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8192eu_phy_iq_calibrate(ptr noundef %priv) #0 align 64 {
if.then.1:
  %result = alloca [4 x [8 x i32]], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %udev = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %result) #4
  %2 = call ptr @memset(ptr %result, i32 0, i32 128)
  call fastcc void @rtl8192eu_phy_iqcalibrate(ptr noundef %priv, ptr noundef nonnull %result, i32 noundef 0)
  call fastcc void @rtl8192eu_phy_iqcalibrate(ptr noundef %priv, ptr noundef nonnull %result, i32 noundef 1)
  %call.1 = call zeroext i1 @rtl8xxxu_gen2_simularity_compare(ptr noundef %priv, ptr noundef nonnull %result, i32 noundef 0, i32 noundef 1) #4
  br i1 %call.1, label %if.then.1.if.then40_crit_edge, label %if.then8.2

if.then.1.if.then40_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then40

if.then8.2:                                       ; preds = %if.then.1
  call fastcc void @rtl8192eu_phy_iqcalibrate(ptr noundef %priv, ptr noundef nonnull %result, i32 noundef 2)
  %call10.2 = call zeroext i1 @rtl8xxxu_gen2_simularity_compare(ptr noundef %priv, ptr noundef nonnull %result, i32 noundef 0, i32 noundef 2) #4
  br i1 %call10.2, label %if.then8.2.if.then40_crit_edge, label %for.inc.2

if.then8.2.if.then40_crit_edge:                   ; preds = %if.then8.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then40

for.inc.2:                                        ; preds = %if.then8.2
  call void @__sanitizer_cov_trace_pc() #6
  %call16.2 = call zeroext i1 @rtl8xxxu_gen2_simularity_compare(ptr noundef %priv, ptr noundef nonnull %result, i32 noundef 1, i32 noundef 2) #4
  %..2 = select i1 %call16.2, i32 1, i32 3
  br label %if.then40

if.then40:                                        ; preds = %for.inc.2, %if.then8.2.if.then40_crit_edge, %if.then.1.if.then40_crit_edge
  %candidate.2 = phi i32 [ 0, %if.then.1.if.then40_crit_edge ], [ 0, %if.then8.2.if.then40_crit_edge ], [ %..2, %for.inc.2 ]
  %arrayidx41 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %candidate.2
  %3 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx41, align 4
  %rege94 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 38
  %5 = ptrtoint ptr %rege94 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rege94, align 4
  %arrayidx44 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %candidate.2, i32 1
  %6 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx44, align 4
  %rege9c = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 39
  %8 = ptrtoint ptr %rege9c to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rege9c, align 4
  %arrayidx46 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %candidate.2, i32 2
  %9 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx46, align 4
  %arrayidx48 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %candidate.2, i32 3
  %11 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx48, align 4
  %arrayidx50 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %candidate.2, i32 4
  %13 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx50, align 4
  %regeb4 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 40
  %15 = ptrtoint ptr %regeb4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %regeb4, align 4
  %arrayidx52 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %candidate.2, i32 5
  %16 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx52, align 4
  %regebc = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 41
  %18 = ptrtoint ptr %regebc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %regebc, align 4
  %arrayidx54 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %candidate.2, i32 6
  %19 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx54, align 4
  %arrayidx56 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %candidate.2, i32 7
  %21 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx56, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192eu_phy_iq_calibrate.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192eu_phy_iq_calibrate, %if.then62)) #4
          to label %do.body64 [label %if.then62], !srcloc !106

if.then62:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8192eu_phy_iq_calibrate.__UNIQUE_ID_ddebug357, ptr noundef %dev1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %candidate.2) #4
  br label %do.body64

do.body64:                                        ; preds = %if.then62, %if.then40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192eu_phy_iq_calibrate.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192eu_phy_iq_calibrate, %if.then76)) #4
          to label %if.end85 [label %if.then76], !srcloc !106

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8192eu_phy_iq_calibrate.__UNIQUE_ID_ddebug358, ptr noundef %dev1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.26, i32 noundef %4, i32 noundef %7, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %22) #4
  br label %if.end85

if.end85:                                         ; preds = %if.then76, %do.body64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %phi.cmp = icmp eq i32 %4, 0
  br i1 %phi.cmp, label %if.end85.if.end92_crit_edge, label %if.then88

if.end85.if.end92_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end92

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp91 = icmp eq i32 %10, 0
  call void @rtl8xxxu_fill_iqk_matrix_a(ptr noundef %priv, i1 noundef zeroext true, ptr noundef nonnull %result, i32 noundef %candidate.2, i1 noundef zeroext %cmp91) #4
  br label %if.end92

if.end92:                                         ; preds = %if.then88, %if.end85.if.end92_crit_edge
  %rf_paths = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 35
  %23 = ptrtoint ptr %rf_paths to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rf_paths, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp93 = icmp ugt i8 %24, 1
  br i1 %cmp93, label %if.then95, label %if.end92.if.end100_crit_edge

if.end92.if.end100_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100

if.then95:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp98 = icmp eq i32 %20, 0
  call void @rtl8xxxu_fill_iqk_matrix_b(ptr noundef %priv, i1 noundef zeroext true, ptr noundef nonnull %result, i32 noundef %candidate.2, i1 noundef zeroext %cmp98) #4
  br label %if.end100

if.end100:                                        ; preds = %if.then95, %if.end92.if.end100_crit_edge
  %bb_recovery_backup = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 56
  call void @rtl8xxxu_save_regs(ptr noundef %priv, ptr noundef nonnull @rtl8xxxu_iqk_phy_iq_bb_reg, ptr noundef %bb_recovery_backup, i32 noundef 9) #4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %result) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen2_config_channel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_parse_rxdesc24(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8192e_enable_rf(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3696) #4
  %or = or i32 %call, 12582912
  %call1 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3696, i32 noundef %or) #4
  %call2 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 64) #4
  %0 = or i8 %call2, 32
  %call5 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 64, i8 noundef zeroext %0) #4
  %call6 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 1902, i8 noundef zeroext 4) #4
  %call7 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 56) #4
  %or8 = or i32 %call7, 2048
  %call9 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 56, i32 noundef %or8) #4
  %call10 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 2372) #4
  %or11 = or i32 %call10, 3
  %call12 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2372, i32 noundef %or11) #4
  %call13 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 2352, i8 noundef zeroext 119) #4
  %call14 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 76) #4
  %and = and i32 %call14, -25165825
  %or15 = or i32 %and, 8388608
  %call16 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 76, i32 noundef %or15) #4
  %call17 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 100) #4
  %1 = and i8 %call17, -2
  %call21 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 100, i8 noundef zeroext %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen2_disable_rf(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen2_usb_quirks(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8192e_set_tx_power(ptr noundef %priv, i32 noundef %channel, i1 noundef zeroext %ht40) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl8xxxu_gen2_channel_to_group(i32 noundef %channel) #4
  %arrayidx = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 15, i32 %call
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %call1 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3592) #4
  %and = and i32 %call1, -65281
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %and, %shl
  %call2 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3592, i32 noundef %or) #4
  %call3 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 2156) #4
  %and4 = and i32 %call3, 255
  %shl8 = shl nuw nsw i32 %conv, 16
  %or9 = or i32 %shl, %shl8
  %shl11 = shl nuw i32 %conv, 24
  %or12 = or i32 %or9, %shl11
  %or13 = or i32 %or12, %and4
  %call14 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2156, i32 noundef %or13) #4
  %arrayidx15 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 17, i32 %call
  %2 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx15, align 1
  %ofdm_tx_power_diff = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 24
  %4 = ptrtoint ptr %ofdm_tx_power_diff to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %ofdm_tx_power_diff, align 1
  %bf.shl = shl i8 %bf.load, 4
  %bf.ashr = ashr exact i8 %bf.shl, 4
  %add = add i8 %bf.ashr, %3
  %conv19 = zext i8 %add to i32
  %or28 = mul nuw i32 %conv19, 16843009
  %call29 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3584, i32 noundef %or28) #4
  %call30 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3588, i32 noundef %or28) #4
  %5 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx15, align 1
  %ht40_tx_power_diff = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 26
  %ht20_tx_power_diff = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 25
  %bf.ashr36.pn.in.in.in = select i1 %ht40, ptr %ht40_tx_power_diff, ptr %ht20_tx_power_diff
  %7 = ptrtoint ptr %bf.ashr36.pn.in.in.in to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.ashr36.pn.in.in = load i8, ptr %bf.ashr36.pn.in.in.in, align 1
  %bf.ashr36.pn.in = shl i8 %bf.ashr36.pn.in.in, 4
  %bf.ashr36.pn = ashr exact i8 %bf.ashr36.pn.in, 4
  %mcsbase.0 = add i8 %bf.ashr36.pn, %6
  %conv50 = zext i8 %mcsbase.0 to i32
  %or59 = mul nuw i32 %conv50, 16843009
  %call60 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3600, i32 noundef %or59) #4
  %call61 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3604, i32 noundef %or59) #4
  %call62 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3608, i32 noundef %or59) #4
  %call63 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3612, i32 noundef %or59) #4
  %tx_paths = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 37
  %8 = ptrtoint ptr %tx_paths to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tx_paths, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp = icmp ugt i8 %9, 1
  br i1 %cmp, label %if.then66, label %entry.if.end144_crit_edge

entry.if.end144_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end144

if.then66:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx67 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 16, i32 %call
  %10 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx67, align 1
  %call68 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 2104) #4
  %and69 = and i32 %call68, 255
  %conv70 = zext i8 %11 to i32
  %shl71 = shl nuw nsw i32 %conv70, 8
  %shl73 = shl nuw nsw i32 %conv70, 16
  %or74 = or i32 %shl71, %shl73
  %shl76 = shl nuw i32 %conv70, 24
  %or77 = or i32 %or74, %shl76
  %or78 = or i32 %or77, %and69
  %call79 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2104, i32 noundef %or78) #4
  %call80 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 2156) #4
  %and81 = and i32 %call80, -256
  %or83 = or i32 %and81, %conv70
  %call84 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2156, i32 noundef %or83) #4
  %arrayidx85 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 18, i32 %call
  %12 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx85, align 1
  %arrayidx87 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 24, i32 1
  %14 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load88 = load i8, ptr %arrayidx87, align 1
  %bf.ashr89 = ashr i8 %bf.load88, 4
  %add92 = add i8 %bf.ashr89, %13
  %conv94 = zext i8 %add92 to i32
  %or103 = mul nuw i32 %conv94, 16843009
  %call104 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2096, i32 noundef %or103) #4
  %call105 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2100, i32 noundef %or103) #4
  %15 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx85, align 1
  %arrayidx112 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 26, i32 1
  %arrayidx122 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 25, i32 1
  %bf.ashr114.pn.in.in = select i1 %ht40, ptr %arrayidx112, ptr %arrayidx122
  %17 = ptrtoint ptr %bf.ashr114.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.ashr114.pn.in = load i8, ptr %bf.ashr114.pn.in.in, align 1
  %bf.ashr114.pn = ashr i8 %bf.ashr114.pn.in, 4
  %mcsbase.1 = add i8 %bf.ashr114.pn, %16
  %conv130 = zext i8 %mcsbase.1 to i32
  %or139 = mul nuw i32 %conv130, 16843009
  %call140 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2108, i32 noundef %or139) #4
  %call141 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2120, i32 noundef %or139) #4
  %call142 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2124, i32 noundef %or139) #4
  %call143 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2152, i32 noundef %or139) #4
  br label %if.end144

if.end144:                                        ; preds = %if.then66, %entry.if.end144_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen2_update_rate_mask(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen2_report_connect(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_fill_txdesc_v2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_load_firmware(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_read32(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_write8(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_write32(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_write16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtl8xxxu_read16(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl8xxxu_read8(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_flush_fifo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_firmware_self_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_init_phy_regs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_init_phy_rf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8192eu_phy_iqcalibrate(ptr noundef %priv, ptr nocapture noundef writeonly %result, i32 noundef %t) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %udev = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  %call = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3152) #4
  %call2 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3160) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t)
  %cmp = icmp eq i32 %t, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %adda_backup = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 53
  tail call void @rtl8xxxu_save_regs(ptr noundef %priv, ptr noundef nonnull @rtl8192eu_phy_iqcalibrate.adda_regs, ptr noundef %adda_backup, i32 noundef 16) #4
  %mac_backup = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 54
  tail call void @rtl8xxxu_save_mac_regs(ptr noundef %priv, ptr noundef nonnull @rtl8192eu_phy_iqcalibrate.iqk_mac_regs, ptr noundef %mac_backup) #4
  %bb_backup = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 55
  tail call void @rtl8xxxu_save_regs(ptr noundef %priv, ptr noundef nonnull @rtl8192eu_phy_iqcalibrate.iqk_bb_regs, ptr noundef %bb_backup, i32 noundef 9) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @rtl8xxxu_path_adda_on(ptr noundef %priv, ptr noundef nonnull @rtl8192eu_phy_iqcalibrate.adda_regs, i1 noundef zeroext true) #4
  %mac_backup8 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 54
  tail call void @rtl8xxxu_mac_calibration(ptr noundef %priv, ptr noundef nonnull @rtl8192eu_phy_iqcalibrate.iqk_mac_regs, ptr noundef %mac_backup8) #4
  %call10 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 2564) #4
  %or = or i32 %call10, 251658240
  %call11 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2564, i32 noundef %or) #4
  %call12 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3076, i32 noundef 60839424) #4
  %call13 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3080, i32 noundef 524516) #4
  %call14 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2164, i32 noundef 572555776) #4
  %call15 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 2160) #4
  %or16 = or i32 %call15, 67109888
  %call17 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2160, i32 noundef %or16) #4
  %call18 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 2144) #4
  %or19 = or i32 %call18, 1024
  %call20 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2144, i32 noundef %or19) #4
  %call21 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 2148) #4
  %or22 = or i32 %call21, 1024
  %call23 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2148, i32 noundef %or22) #4
  %call24 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef -2139095040) #4
  %call25 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3648, i32 noundef 16808960) #4
  %call26 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3652, i32 noundef 16795648) #4
  br label %for.body

for.cond:                                         ; preds = %for.body
  br i1 %cmp27, label %for.cond.for.body_crit_edge, label %do.body

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end
  %cmp27 = phi i1 [ true, %if.end ], [ false, %for.cond.for.body_crit_edge ]
  %call.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef 0) #4
  %call1.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -33, i32 noundef 384) #4
  %call2.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef -2139095040) #4
  %call3.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3632, i32 noundef 402689052) #4
  %call4.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3636, i32 noundef 939559964) #4
  %call5.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3664, i32 noundef 939559964) #4
  %call6.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3668, i32 noundef 939559964) #4
  %call7.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3640, i32 noundef -2112617725) #4
  %call8.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3644, i32 noundef 1746272256) #4
  %call9.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3660, i32 noundef 4598033) #4
  %call10.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -117440512) #4
  %call11.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -134217728) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #4
  %call12.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3756) #4
  %call13.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3732) #4
  %call14.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3740) #4
  %and.i = and i32 %call12.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  %and16.i = and i32 %call13.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %and16.i)
  %cmp.not.i = icmp ne i32 %and16.i, 21102592
  %or.cond.i = select i1 %tobool15.not.i, i1 %cmp.not.i, i1 false
  %and18.i = and i32 %call14.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 4325376, i32 %and18.i)
  %cmp19.not.i = icmp ne i32 %and18.i, 4325376
  %or.cond35.i = select i1 %or.cond.i, i1 %cmp19.not.i, i1 false
  br i1 %or.cond35.i, label %for.end.thread, label %for.cond

for.end.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call33 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3732) #4
  %shr = lshr i32 %call33, 16
  %and34 = and i32 %shr, 1023
  %arrayidx = getelementptr [8 x i32], ptr %result, i32 %t
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and34, ptr %arrayidx, align 4
  %call36 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3740) #4
  %shr37 = lshr i32 %call36, 16
  %and38 = and i32 %shr37, 1023
  %arrayidx40 = getelementptr [8 x i32], ptr %result, i32 %t, i32 1
  %13 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and38, ptr %arrayidx40, align 4
  br label %for.body53

do.body:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192eu_phy_iqcalibrate.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192eu_phy_iqcalibrate, %if.then47)) #4
          to label %for.body53 [label %if.then47], !srcloc !106

if.then47:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8192eu_phy_iqcalibrate.__UNIQUE_ID_ddebug353, ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29) #4
  br label %for.body53

for.body53:                                       ; preds = %for.inc69.thread.for.body53_crit_edge, %for.inc69.for.body53_crit_edge, %if.then47, %do.body, %for.end.thread
  %cmp51 = phi i1 [ true, %do.body ], [ true, %for.end.thread ], [ true, %if.then47 ], [ false, %for.inc69.for.body53_crit_edge ], [ false, %for.inc69.thread.for.body53_crit_edge ]
  %call.i342 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef 0) #4
  %call1.i343 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -17, i32 noundef 524448) #4
  %call2.i344 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 48, i32 noundef 196608) #4
  %call3.i345 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 49, i32 noundef 15) #4
  %call4.i346 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 50, i32 noundef 987515) #4
  %call5.i347 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -33, i32 noundef 2432) #4
  %call6.i348 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 86, i32 noundef 331776) #4
  %call7.i349 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef -2139095040) #4
  %call8.i350 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3648, i32 noundef 16808960) #4
  %call9.i351 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3652, i32 noundef 16795648) #4
  %call10.i352 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3632, i32 noundef 402689052) #4
  %call11.i353 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3636, i32 noundef 939559964) #4
  %call12.i354 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3664, i32 noundef 939559964) #4
  %call13.i355 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3668, i32 noundef 939559964) #4
  %call14.i356 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3640, i32 noundef -2112484321) #4
  %call15.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3644, i32 noundef 1746275359) #4
  %call16.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3660, i32 noundef 4630801) #4
  %call17.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -100663296) #4
  %call18.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -134217728) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #4
  %call19.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3756) #4
  %call20.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3732) #4
  %call21.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3740) #4
  %and.i357 = and i32 %call19.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i357)
  %tobool22.not.i = icmp eq i32 %and.i357, 0
  br i1 %tobool22.not.i, label %land.lhs.true.i, label %for.body53.for.inc69_crit_edge

for.body53.for.inc69_crit_edge:                   ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc69

land.lhs.true.i:                                  ; preds = %for.body53
  %and23.i = and i32 %call20.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %and23.i)
  %cmp.not.i358 = icmp eq i32 %and23.i, 21102592
  %and25.i = and i32 %call21.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 4325376, i32 %and25.i)
  %cmp26.not.i = icmp eq i32 %and25.i, 4325376
  %or.cond.i359 = select i1 %cmp.not.i358, i1 true, i1 %cmp26.not.i
  br i1 %or.cond.i359, label %land.lhs.true.i.for.inc69_crit_edge, label %if.then.i

land.lhs.true.i.for.inc69_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc69

if.then.i:                                        ; preds = %land.lhs.true.i
  %shr.i = lshr i32 %call21.i, 16
  %and31.i = and i32 %shr.i, 1023
  %or30.i = or i32 %and23.i, %and31.i
  %or32.i = or i32 %or30.i, -2147451904
  %call33.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3648, i32 noundef %or32.i) #4
  %call34.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef 0) #4
  %call35.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -17, i32 noundef 524448) #4
  %call36.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 48, i32 noundef 196608) #4
  %call37.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 49, i32 noundef 15) #4
  %call38.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 50, i32 noundef 1015802) #4
  %call39.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -33, i32 noundef 2432) #4
  %call40.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 86, i32 noundef 331776) #4
  %call41.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef -2139095040) #4
  %call42.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3652, i32 noundef 16795648) #4
  %call43.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3632, i32 noundef 939559964) #4
  %call44.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3636, i32 noundef 402689052) #4
  %call45.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3664, i32 noundef 939559964) #4
  %call46.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3668, i32 noundef 939559964) #4
  %call47.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3640, i32 noundef -2112484321) #4
  %call48.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3644, i32 noundef 672533535) #4
  %call49.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3660, i32 noundef 4630673) #4
  %call50.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -100663296) #4
  %call51.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -134217728) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #4
  %call58.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3756) #4
  %call59.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3748) #4
  %call60.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef 0) #4
  %call61.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -33, i32 noundef 384) #4
  %and62.i = and i32 %call58.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp ne i32 %and62.i, 0
  %and65.i = and i32 %call59.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 20054016, i32 %and65.i)
  %cmp66.not.i = icmp eq i32 %and65.i, 20054016
  %or.cond127.i = select i1 %tobool63.not.i, i1 true, i1 %cmp66.not.i
  %and68.i = and i32 %call58.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 3538944, i32 %and68.i)
  %cmp69.not.i = icmp eq i32 %and68.i, 3538944
  %or.cond128.i = select i1 %or.cond127.i, i1 true, i1 %cmp69.not.i
  br i1 %or.cond128.i, label %for.inc69.thread, label %for.end71.thread

for.end71.thread:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %call58 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3748) #4
  %shr59 = lshr i32 %call58, 16
  %and60 = and i32 %shr59, 1023
  %arrayidx62 = getelementptr [8 x i32], ptr %result, i32 %t, i32 2
  %34 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and60, ptr %arrayidx62, align 4
  %call63 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3756) #4
  %shr64 = lshr i32 %call63, 16
  %and65 = and i32 %shr64, 1023
  %arrayidx67 = getelementptr [8 x i32], ptr %result, i32 %t, i32 3
  %35 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and65, ptr %arrayidx67, align 4
  br label %if.end90

for.inc69:                                        ; preds = %land.lhs.true.i.for.inc69_crit_edge, %for.body53.for.inc69_crit_edge
  %call27.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef 0) #4
  %call28.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -33, i32 noundef 384) #4
  br i1 %cmp51, label %for.inc69.for.body53_crit_edge, label %do.body74

for.inc69.for.body53_crit_edge:                   ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body53

for.inc69.thread:                                 ; preds = %if.then.i
  %36 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %udev, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #7
  br i1 %cmp51, label %for.inc69.thread.for.body53_crit_edge, label %for.inc69.thread.if.end90_crit_edge

for.inc69.thread.if.end90_crit_edge:              ; preds = %for.inc69.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end90

for.inc69.thread.for.body53_crit_edge:            ; preds = %for.inc69.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body53

do.body74:                                        ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192eu_phy_iqcalibrate.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192eu_phy_iqcalibrate, %if.then86)) #4
          to label %if.end90 [label %if.then86], !srcloc !106

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8192eu_phy_iqcalibrate.__UNIQUE_ID_ddebug354, ptr noundef %dev1, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29) #4
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %do.body74, %for.inc69.thread.if.end90_crit_edge, %for.end71.thread
  %rf_paths = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 35
  %38 = ptrtoint ptr %rf_paths to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rf_paths, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %39)
  %cmp92 = icmp ugt i8 %39, 1
  br i1 %cmp92, label %if.then94, label %if.end90.if.end183_crit_edge

if.end90.if.end183_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end183

if.then94:                                        ; preds = %if.end90
  %call95 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef 0) #4
  %call96 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 0, i32 noundef 65536) #4
  %call97 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef -2139095040) #4
  tail call void @rtl8xxxu_path_adda_on(ptr noundef %priv, ptr noundef nonnull @rtl8192eu_phy_iqcalibrate.adda_regs, i1 noundef zeroext false) #4
  %call98 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef -2139095040) #4
  %call99 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3648, i32 noundef 16808960) #4
  %call100 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3652, i32 noundef 16795648) #4
  br label %for.body104

for.body104:                                      ; preds = %for.inc120.for.body104_crit_edge, %if.then94
  %cmp102 = phi i1 [ true, %if.then94 ], [ false, %for.inc120.for.body104_crit_edge ]
  %call.i361 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef 0) #4
  %call1.i362 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 1, i8 noundef zeroext -33, i32 noundef 384) #4
  %call2.i363 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef -2139095040) #4
  %call3.i364 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef 0) #4
  %call4.i365 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef -2139095040) #4
  %call5.i366 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3632, i32 noundef 939559964) #4
  %call6.i367 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3636, i32 noundef 939559964) #4
  %call7.i368 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3664, i32 noundef 402689052) #4
  %call8.i369 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3668, i32 noundef 939559964) #4
  %call9.i370 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3672, i32 noundef -2112617502) #4
  %call10.i371 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3676, i32 noundef 1746272256) #4
  %call11.i372 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3660, i32 noundef 4794641) #4
  %call12.i373 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -100663296) #4
  %call13.i374 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -134217728) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #4
  %call14.i375 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3756) #4
  %call15.i376 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3764) #4
  %call16.i377 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3772) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i375)
  %tobool.not.i = icmp slt i32 %call14.i375, 0
  %and17.i = and i32 %call15.i376, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %and17.i)
  %cmp.not.i378 = icmp eq i32 %and17.i, 21102592
  %or.cond.i379 = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i378
  %and19.i = and i32 %call16.i377, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 4325376, i32 %and19.i)
  %cmp20.not.i = icmp eq i32 %and19.i, 4325376
  %or.cond39.i = select i1 %or.cond.i379, i1 true, i1 %cmp20.not.i
  br i1 %or.cond39.i, label %for.inc120, label %for.end122.thread

for.end122.thread:                                ; preds = %for.body104
  call void @__sanitizer_cov_trace_pc() #6
  %call109 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3764) #4
  %shr110 = lshr i32 %call109, 16
  %and111 = and i32 %shr110, 1023
  %arrayidx113 = getelementptr [8 x i32], ptr %result, i32 %t, i32 4
  %41 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and111, ptr %arrayidx113, align 4
  %call114 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3772) #4
  %shr115 = lshr i32 %call114, 16
  %and116 = and i32 %shr115, 1023
  %arrayidx118 = getelementptr [8 x i32], ptr %result, i32 %t, i32 5
  %42 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and116, ptr %arrayidx118, align 4
  br label %for.body145

for.inc120:                                       ; preds = %for.body104
  %43 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %udev, align 4
  %dev.i381 = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i381, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.35) #7
  br i1 %cmp102, label %for.inc120.for.body104_crit_edge, label %do.body125

for.inc120.for.body104_crit_edge:                 ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body104

do.body125:                                       ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192eu_phy_iqcalibrate.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192eu_phy_iqcalibrate, %if.then137)) #4
          to label %for.body145 [label %if.then137], !srcloc !106

if.then137:                                       ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8192eu_phy_iqcalibrate.__UNIQUE_ID_ddebug355, ptr noundef %dev1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.29) #4
  br label %for.body145

for.body145:                                      ; preds = %for.inc161.thread.for.body145_crit_edge, %for.inc161.for.body145_crit_edge, %if.then137, %do.body125, %for.end122.thread
  %cmp143 = phi i1 [ true, %do.body125 ], [ true, %for.end122.thread ], [ true, %if.then137 ], [ false, %for.inc161.for.body145_crit_edge ], [ false, %for.inc161.thread.for.body145_crit_edge ]
  %call.i384 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef 0) #4
  %call1.i385 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 1, i8 noundef zeroext -17, i32 noundef 524448) #4
  %call2.i386 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 1, i8 noundef zeroext 48, i32 noundef 196608) #4
  %call3.i387 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 1, i8 noundef zeroext 49, i32 noundef 15) #4
  %call4.i388 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 1, i8 noundef zeroext 50, i32 noundef 987515) #4
  %call5.i389 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 1, i8 noundef zeroext -33, i32 noundef 2432) #4
  %call6.i390 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 1, i8 noundef zeroext 86, i32 noundef 331776) #4
  %call7.i391 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef -2139095040) #4
  %call8.i392 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3648, i32 noundef 16808960) #4
  %call9.i393 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3652, i32 noundef 16795648) #4
  %call10.i394 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3632, i32 noundef 939559964) #4
  %call11.i395 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3636, i32 noundef 939559964) #4
  %call12.i396 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3664, i32 noundef 402689052) #4
  %call13.i397 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3668, i32 noundef 939559964) #4
  %call14.i398 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3672, i32 noundef -2112484321) #4
  %call15.i399 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3676, i32 noundef 1746275359) #4
  %call16.i400 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3660, i32 noundef 4630801) #4
  %call17.i401 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -100663296) #4
  %call18.i402 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -134217728) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #4
  %call19.i403 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3756) #4
  %call20.i404 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3764) #4
  %call21.i405 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3772) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19.i403)
  %tobool22.not.i406 = icmp sgt i32 %call19.i403, -1
  br i1 %tobool22.not.i406, label %land.lhs.true.i412, label %for.body145.for.inc161_crit_edge

for.body145.for.inc161_crit_edge:                 ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc161

land.lhs.true.i412:                               ; preds = %for.body145
  %and23.i407 = and i32 %call20.i404, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %and23.i407)
  %cmp.not.i408 = icmp eq i32 %and23.i407, 21102592
  %and25.i409 = and i32 %call21.i405, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 4325376, i32 %and25.i409)
  %cmp26.not.i410 = icmp eq i32 %and25.i409, 4325376
  %or.cond.i411 = select i1 %cmp.not.i408, i1 true, i1 %cmp26.not.i410
  br i1 %or.cond.i411, label %land.lhs.true.i412.for.inc161_crit_edge, label %if.then.i441

land.lhs.true.i412.for.inc161_crit_edge:          ; preds = %land.lhs.true.i412
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc161

if.then.i441:                                     ; preds = %land.lhs.true.i412
  %shr.i413 = lshr i32 %call21.i405, 16
  %and31.i414 = and i32 %shr.i413, 1023
  %or30.i415 = or i32 %and23.i407, %and31.i414
  %or32.i416 = or i32 %or30.i415, -2147451904
  %call33.i417 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3648, i32 noundef %or32.i416) #4
  %call34.i418 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef 0) #4
  %call35.i419 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 1, i8 noundef zeroext -17, i32 noundef 524448) #4
  %call36.i420 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 1, i8 noundef zeroext 48, i32 noundef 196608) #4
  %call37.i421 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 1, i8 noundef zeroext 49, i32 noundef 15) #4
  %call38.i422 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 1, i8 noundef zeroext 50, i32 noundef 1015802) #4
  %call39.i423 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 1, i8 noundef zeroext -33, i32 noundef 2432) #4
  %call40.i424 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 1, i8 noundef zeroext 86, i32 noundef 331776) #4
  %call41.i425 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef -2139095040) #4
  %call42.i426 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3652, i32 noundef 16795648) #4
  %call43.i427 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3632, i32 noundef 939559964) #4
  %call44.i428 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3636, i32 noundef 939559964) #4
  %call45.i429 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3664, i32 noundef 939559964) #4
  %call46.i430 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3668, i32 noundef 402689052) #4
  %call47.i431 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3640, i32 noundef -2112484321) #4
  %call48.i432 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3644, i32 noundef 672533535) #4
  %call49.i433 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3660, i32 noundef 4630673) #4
  %call50.i434 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -100663296) #4
  %call51.i435 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -134217728) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #4
  %call58.i436 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3756) #4
  %call59.i437 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3780) #4
  %call60.i438 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3788) #4
  %call61.i439 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef 0) #4
  %call62.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 1, i8 noundef zeroext -33, i32 noundef 384) #4
  %and63.i = and i32 %call58.i436, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp ne i32 %and63.i, 0
  %and66.i = and i32 %call59.i437, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 20054016, i32 %and66.i)
  %cmp67.not.i = icmp eq i32 %and66.i, 20054016
  %or.cond128.i440 = select i1 %tobool64.not.i, i1 true, i1 %cmp67.not.i
  %and69.i = and i32 %call60.i438, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 3538944, i32 %and69.i)
  %cmp70.not.i = icmp eq i32 %and69.i, 3538944
  %or.cond129.i = select i1 %or.cond128.i440, i1 true, i1 %cmp70.not.i
  br i1 %or.cond129.i, label %for.inc161.thread, label %for.end163.thread

for.end163.thread:                                ; preds = %if.then.i441
  call void @__sanitizer_cov_trace_pc() #6
  %call150 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3780) #4
  %shr151 = lshr i32 %call150, 16
  %and152 = and i32 %shr151, 1023
  %arrayidx154 = getelementptr [8 x i32], ptr %result, i32 %t, i32 6
  %65 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and152, ptr %arrayidx154, align 4
  %call155 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3788) #4
  %shr156 = lshr i32 %call155, 16
  %and157 = and i32 %shr156, 1023
  %arrayidx159 = getelementptr [8 x i32], ptr %result, i32 %t, i32 7
  %66 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %and157, ptr %arrayidx159, align 4
  br label %if.end183

for.inc161:                                       ; preds = %land.lhs.true.i412.for.inc161_crit_edge, %for.body145.for.inc161_crit_edge
  %call27.i442 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef 0) #4
  %call28.i443 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 1, i8 noundef zeroext -33, i32 noundef 384) #4
  br i1 %cmp143, label %for.inc161.for.body145_crit_edge, label %do.body166

for.inc161.for.body145_crit_edge:                 ; preds = %for.inc161
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body145

for.inc161.thread:                                ; preds = %if.then.i441
  %67 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %udev, align 4
  %dev.i446 = getelementptr inbounds %struct.usb_device, ptr %68, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i446, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.36) #7
  br i1 %cmp143, label %for.inc161.thread.for.body145_crit_edge, label %for.inc161.thread.if.end183_crit_edge

for.inc161.thread.if.end183_crit_edge:            ; preds = %for.inc161.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end183

for.inc161.thread.for.body145_crit_edge:          ; preds = %for.inc161.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body145

do.body166:                                       ; preds = %for.inc161
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8192eu_phy_iqcalibrate.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8192eu_phy_iqcalibrate, %if.then178)) #4
          to label %if.end183 [label %if.then178], !srcloc !106

if.then178:                                       ; preds = %do.body166
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8192eu_phy_iqcalibrate.__UNIQUE_ID_ddebug356, ptr noundef %dev1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.29) #4
  br label %if.end183

if.end183:                                        ; preds = %if.then178, %do.body166, %for.inc161.thread.if.end183_crit_edge, %for.end163.thread, %if.end90.if.end183_crit_edge
  %call184 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef 0) #4
  br i1 %cmp, label %if.end183.if.end215_crit_edge, label %if.then186

if.end183.if.end215_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end215

if.then186:                                       ; preds = %if.end183
  %adda_backup187 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 53
  tail call void @rtl8xxxu_restore_regs(ptr noundef %priv, ptr noundef nonnull @rtl8192eu_phy_iqcalibrate.adda_regs, ptr noundef %adda_backup187, i32 noundef 16) #4
  tail call void @rtl8xxxu_restore_mac_regs(ptr noundef %priv, ptr noundef nonnull @rtl8192eu_phy_iqcalibrate.iqk_mac_regs, ptr noundef %mac_backup8) #4
  %bb_backup191 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 55
  tail call void @rtl8xxxu_restore_regs(ptr noundef %priv, ptr noundef nonnull @rtl8192eu_phy_iqcalibrate.iqk_bb_regs, ptr noundef %bb_backup191, i32 noundef 9) #4
  %call193 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3152) #4
  %and194 = and i32 %call193, -256
  %or195 = or i32 %and194, 80
  %call196 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3152, i32 noundef %or195) #4
  %conv197 = and i32 %call, 255
  %or198 = or i32 %and194, %conv197
  %call199 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3152, i32 noundef %or198) #4
  %69 = ptrtoint ptr %rf_paths to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %rf_paths, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %70)
  %cmp202 = icmp ugt i8 %70, 1
  br i1 %cmp202, label %if.then204, label %if.then186.if.end212_crit_edge

if.then186.if.end212_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end212

if.then204:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #6
  %call205 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3160) #4
  %and206 = and i32 %call205, -256
  %or207 = or i32 %and206, 80
  %call208 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3160, i32 noundef %or207) #4
  %conv209 = and i32 %call2, 255
  %or210 = or i32 %and206, %conv209
  %call211 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3160, i32 noundef %or210) #4
  br label %if.end212

if.end212:                                        ; preds = %if.then204, %if.then186.if.end212_crit_edge
  %call213 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3632, i32 noundef 16813056) #4
  %call214 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3636, i32 noundef 16813056) #4
  br label %if.end215

if.end215:                                        ; preds = %if.end212, %if.end183.if.end215_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtl8xxxu_gen2_simularity_compare(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_fill_iqk_matrix_a(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_fill_iqk_matrix_b(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_save_regs(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_save_mac_regs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_path_adda_on(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_mac_calibration(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_write_rfreg(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_restore_regs(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_restore_mac_regs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_gen2_channel_to_group(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !59, !60, !61, !63, !64, !66, !68, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @rtl8192eu_fops, !1, !"rtl8192eu_fops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 1674, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 657, i32 39}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 658, i32 39}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 659, i32 39}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 664, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rtl8192eu_parse_efuse._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @rtl8192eu_parse_efuse._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 668, i32 4}
!18 = !{ptr @rtl8192eu_parse_efuse._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rtl8192eu_parse_efuse._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 572, i32 3}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rtl8192eu_log_next_device_info._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @rtl8192eu_log_next_device_info._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 583, i32 3}
!28 = !{ptr @rtl8192eu_log_next_device_info._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rtl8192eu_log_next_device_info._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 586, i32 3}
!32 = !{ptr @rtl8192eu_log_next_device_info._entry.17, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rtl8192eu_log_next_device_info._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 678, i32 12}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 1465, i32 3}
!38 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rtl8192eu_active_to_lps._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @rtl8192eu_active_to_lps._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 1528, i32 3}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rtl8192eu_active_to_emu._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @rtl8192eu_active_to_emu._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @rtl8192eu_phy_init_table, !47, !"rtl8192eu_phy_init_table", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 65, i32 33}
!48 = !{ptr @rtl8xxx_agc_8192eu_highpa_table, !49, !"rtl8xxx_agc_8192eu_highpa_table", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 266, i32 33}
!50 = !{ptr @rtl8xxx_agc_8192eu_std_table, !51, !"rtl8xxx_agc_8192eu_std_table", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 197, i32 33}
!52 = !{ptr @rtl8192eu_radioa_init_table, !53, !"rtl8192eu_radioa_init_table", i1 false, i1 false}
!53 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 335, i32 33}
!54 = !{ptr @rtl8192eu_radiob_init_table, !55, !"rtl8192eu_radiob_init_table", i1 false, i1 false}
!55 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 415, i32 33}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 1307, i32 3}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rtl8192eu_phy_iq_calibrate.__UNIQUE_ID_ddebug357, !57, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 1308, i32 3}
!63 = !{ptr @rtl8192eu_phy_iq_calibrate.__UNIQUE_ID_ddebug358, !62, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!64 = !{ptr @rtl8192eu_phy_iqcalibrate.adda_regs, !65, !"adda_regs", i1 false, i1 false}
!65 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 1061, i32 19}
!66 = !{ptr @rtl8192eu_phy_iqcalibrate.iqk_mac_regs, !67, !"iqk_mac_regs", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 1071, i32 19}
!68 = !{ptr @rtl8192eu_phy_iqcalibrate.iqk_bb_regs, !69, !"iqk_bb_regs", i1 false, i1 false}
!69 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 1075, i32 19}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 1141, i32 3}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @rtl8192eu_phy_iqcalibrate.__UNIQUE_ID_ddebug353, !71, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 1158, i32 3}
!76 = !{ptr @rtl8192eu_phy_iqcalibrate.__UNIQUE_ID_ddebug354, !75, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 1185, i32 4}
!79 = !{ptr @rtl8192eu_phy_iqcalibrate.__UNIQUE_ID_ddebug355, !78, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 1201, i32 4}
!82 = !{ptr @rtl8192eu_phy_iqcalibrate.__UNIQUE_ID_ddebug356, !81, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 880, i32 3}
!85 = !{ptr @rtl8192eu_rx_iqk_path_a._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @rtl8192eu_rx_iqk_path_a._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 927, i32 3}
!89 = !{ptr @rtl8192eu_iqk_path_b._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @rtl8192eu_iqk_path_b._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 1047, i32 3}
!93 = !{ptr @rtl8192eu_rx_iqk_path_b._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @rtl8192eu_rx_iqk_path_b._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @rtl8192e_mac_init_table, !96, !"rtl8192e_mac_init_table", i1 false, i1 false}
!96 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192e.c", i32 35, i32 32}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2148742995, i64 2148743000, i64 2148743013, i64 2148743057, i64 2148743091, i64 2148743112}
