; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c"
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
%struct.h2c_cmd = type { %union.anon.142 }
%union.anon.142 = type { %struct.anon.145 }
%struct.anon.145 = type { i32, i32 }

@rtl8723b_mac_init_table = internal global { [104 x %struct.rtl8xxxu_reg8val], [96 x i8] } { [104 x %struct.rtl8xxxu_reg8val] [%struct.rtl8xxxu_reg8val { i16 47, i8 48 }, %struct.rtl8xxxu_reg8val { i16 53, i8 0 }, %struct.rtl8xxxu_reg8val { i16 57, i8 8 }, %struct.rtl8xxxu_reg8val { i16 78, i8 -32 }, %struct.rtl8xxxu_reg8val { i16 100, i8 0 }, %struct.rtl8xxxu_reg8val { i16 103, i8 32 }, %struct.rtl8xxxu_reg8val { i16 1064, i8 10 }, %struct.rtl8xxxu_reg8val { i16 1065, i8 16 }, %struct.rtl8xxxu_reg8val { i16 1072, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1073, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1074, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1075, i8 1 }, %struct.rtl8xxxu_reg8val { i16 1076, i8 4 }, %struct.rtl8xxxu_reg8val { i16 1077, i8 5 }, %struct.rtl8xxxu_reg8val { i16 1078, i8 7 }, %struct.rtl8xxxu_reg8val { i16 1079, i8 8 }, %struct.rtl8xxxu_reg8val { i16 1084, i8 4 }, %struct.rtl8xxxu_reg8val { i16 1085, i8 5 }, %struct.rtl8xxxu_reg8val { i16 1086, i8 7 }, %struct.rtl8xxxu_reg8val { i16 1087, i8 8 }, %struct.rtl8xxxu_reg8val { i16 1088, i8 93 }, %struct.rtl8xxxu_reg8val { i16 1089, i8 1 }, %struct.rtl8xxxu_reg8val { i16 1090, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1092, i8 16 }, %struct.rtl8xxxu_reg8val { i16 1093, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1094, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1095, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1096, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1097, i8 -16 }, %struct.rtl8xxxu_reg8val { i16 1098, i8 15 }, %struct.rtl8xxxu_reg8val { i16 1099, i8 62 }, %struct.rtl8xxxu_reg8val { i16 1100, i8 16 }, %struct.rtl8xxxu_reg8val { i16 1101, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1102, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1103, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1104, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1105, i8 -16 }, %struct.rtl8xxxu_reg8val { i16 1106, i8 15 }, %struct.rtl8xxxu_reg8val { i16 1107, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1110, i8 94 }, %struct.rtl8xxxu_reg8val { i16 1120, i8 102 }, %struct.rtl8xxxu_reg8val { i16 1121, i8 102 }, %struct.rtl8xxxu_reg8val { i16 1224, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1225, i8 8 }, %struct.rtl8xxxu_reg8val { i16 1228, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1229, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1230, i8 1 }, %struct.rtl8xxxu_reg8val { i16 1280, i8 38 }, %struct.rtl8xxxu_reg8val { i16 1281, i8 -94 }, %struct.rtl8xxxu_reg8val { i16 1282, i8 47 }, %struct.rtl8xxxu_reg8val { i16 1283, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1284, i8 40 }, %struct.rtl8xxxu_reg8val { i16 1285, i8 -93 }, %struct.rtl8xxxu_reg8val { i16 1286, i8 94 }, %struct.rtl8xxxu_reg8val { i16 1287, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1288, i8 43 }, %struct.rtl8xxxu_reg8val { i16 1289, i8 -92 }, %struct.rtl8xxxu_reg8val { i16 1290, i8 94 }, %struct.rtl8xxxu_reg8val { i16 1291, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1292, i8 79 }, %struct.rtl8xxxu_reg8val { i16 1293, i8 -92 }, %struct.rtl8xxxu_reg8val { i16 1294, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1295, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1298, i8 28 }, %struct.rtl8xxxu_reg8val { i16 1300, i8 10 }, %struct.rtl8xxxu_reg8val { i16 1302, i8 10 }, %struct.rtl8xxxu_reg8val { i16 1317, i8 79 }, %struct.rtl8xxxu_reg8val { i16 1360, i8 16 }, %struct.rtl8xxxu_reg8val { i16 1361, i8 16 }, %struct.rtl8xxxu_reg8val { i16 1369, i8 2 }, %struct.rtl8xxxu_reg8val { i16 1372, i8 80 }, %struct.rtl8xxxu_reg8val { i16 1373, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1541, i8 48 }, %struct.rtl8xxxu_reg8val { i16 1544, i8 14 }, %struct.rtl8xxxu_reg8val { i16 1545, i8 42 }, %struct.rtl8xxxu_reg8val { i16 1568, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1569, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1570, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1571, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1572, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1573, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1574, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1575, i8 -1 }, %struct.rtl8xxxu_reg8val { i16 1592, i8 80 }, %struct.rtl8xxxu_reg8val { i16 1596, i8 10 }, %struct.rtl8xxxu_reg8val { i16 1597, i8 10 }, %struct.rtl8xxxu_reg8val { i16 1598, i8 14 }, %struct.rtl8xxxu_reg8val { i16 1599, i8 14 }, %struct.rtl8xxxu_reg8val { i16 1600, i8 64 }, %struct.rtl8xxxu_reg8val { i16 1602, i8 64 }, %struct.rtl8xxxu_reg8val { i16 1603, i8 0 }, %struct.rtl8xxxu_reg8val { i16 1618, i8 -56 }, %struct.rtl8xxxu_reg8val { i16 1646, i8 5 }, %struct.rtl8xxxu_reg8val { i16 1792, i8 33 }, %struct.rtl8xxxu_reg8val { i16 1793, i8 67 }, %struct.rtl8xxxu_reg8val { i16 1794, i8 101 }, %struct.rtl8xxxu_reg8val { i16 1795, i8 -121 }, %struct.rtl8xxxu_reg8val { i16 1800, i8 33 }, %struct.rtl8xxxu_reg8val { i16 1801, i8 67 }, %struct.rtl8xxxu_reg8val { i16 1802, i8 101 }, %struct.rtl8xxxu_reg8val { i16 1803, i8 -121 }, %struct.rtl8xxxu_reg8val { i16 1893, i8 24 }, %struct.rtl8xxxu_reg8val { i16 1902, i8 4 }, %struct.rtl8xxxu_reg8val { i16 -1, i8 -1 }], [96 x i8] zeroinitializer }, align 32
@rtl8723bu_fops = dso_local global { %struct.rtl8xxxu_fileops, [36 x i8] } { %struct.rtl8xxxu_fileops { ptr @rtl8723bu_parse_efuse, ptr @rtl8723bu_load_firmware, ptr @rtl8723bu_power_on, ptr @rtl8723bu_power_off, ptr @rtl8723bu_reset_8051, ptr @rtl8xxxu_auto_llt_table, ptr @rtl8723bu_init_phy_bb, ptr @rtl8723bu_init_phy_rf, ptr @rtl8723bu_phy_init_antenna_selection, ptr @rtl8723bu_phy_iq_calibrate, ptr @rtl8xxxu_gen2_config_channel, ptr @rtl8xxxu_parse_rxdesc24, ptr @rtl8723bu_init_aggregation, ptr @rtl8723bu_init_statistics, ptr @rtl8723b_enable_rf, ptr @rtl8xxxu_gen2_disable_rf, ptr @rtl8xxxu_gen2_usb_quirks, ptr @rtl8723b_set_tx_power, ptr @rtl8xxxu_gen2_update_rate_mask, ptr @rtl8xxxu_gen2_report_connect, ptr @rtl8xxxu_fill_txdesc_v2, i32 1024, i32 0, i8 40, i8 24, i8 -16, i32 29360148, i32 29360148, i32 29360148, i32 29360148, i16 16255, i8 2, i8 2, ptr @rtl8723b_mac_init_table, i8 -9, i8 12, i8 2, i8 2 }, [36 x i8] zeroinitializer }, align 32
@rtl8723bu_parse_efuse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 451, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Vendor: %.7s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl8723bu_parse_efuse\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl8723bu_parse_efuse._entry_ptr = internal global ptr @rtl8723bu_parse_efuse._entry, section ".printk_index", align 4
@rtl8723bu_parse_efuse._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 452, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Product: %.41s\0A\00", [16 x i8] zeroinitializer }, align 32
@rtl8723bu_parse_efuse._entry_ptr.7 = internal global ptr @rtl8723bu_parse_efuse._entry.5, section ".printk_index", align 4
@rtl8xxxu_debug = external dso_local local_unnamed_addr global i32, align 4
@rtl8723bu_parse_efuse._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 460, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: dumping efuse (0x%02zx bytes):\0A\00", [60 x i8] zeroinitializer }, align 32
@rtl8723bu_parse_efuse._entry_ptr.10 = internal global ptr @rtl8723bu_parse_efuse._entry.8, section ".printk_index", align 4
@rtl8723bu_parse_efuse._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 462, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%02x: %8ph\0A\00", [20 x i8] zeroinitializer }, align 32
@rtl8723bu_parse_efuse._entry_ptr.13 = internal global ptr @rtl8723bu_parse_efuse._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtlwifi/rtl8723bu_bt.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtlwifi/rtl8723bu_nic.bin\00", [38 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl8723bu_active_to_emu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 1244, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Disabling MAC timed out\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rtl8723bu_active_to_emu\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rtl8723bu_active_to_emu._entry_ptr = internal global ptr @rtl8723bu_active_to_emu._entry, section ".printk_index", align 4
@rtl8723b_phy_1t_init_table = internal global { [194 x %struct.rtl8xxxu_reg32val], [400 x i8] } { [194 x %struct.rtl8xxxu_reg32val] [%struct.rtl8xxxu_reg32val { i16 2048, i32 -2147221504 }, %struct.rtl8xxxu_reg32val { i16 2052, i32 3 }, %struct.rtl8xxxu_reg32val { i16 2056, i32 64512 }, %struct.rtl8xxxu_reg32val { i16 2060, i32 10 }, %struct.rtl8xxxu_reg32val { i16 2064, i32 268440369 }, %struct.rtl8xxxu_reg32val { i16 2068, i32 34356496 }, %struct.rtl8xxxu_reg32val { i16 2072, i32 35652485 }, %struct.rtl8xxxu_reg32val { i16 2076, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2080, i32 16777472 }, %struct.rtl8xxxu_reg32val { i16 2084, i32 1638916 }, %struct.rtl8xxxu_reg32val { i16 2088, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2092, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2096, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2100, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2104, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2108, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2112, i32 65536 }, %struct.rtl8xxxu_reg32val { i16 2116, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2120, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2124, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2128, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2132, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2136, i32 1452937641 }, %struct.rtl8xxxu_reg32val { i16 2140, i32 16777236 }, %struct.rtl8xxxu_reg32val { i16 2144, i32 1727398160 }, %struct.rtl8xxxu_reg32val { i16 2148, i32 102696521 }, %struct.rtl8xxxu_reg32val { i16 2152, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2156, i32 656877312 }, %struct.rtl8xxxu_reg32val { i16 2160, i32 117442400 }, %struct.rtl8xxxu_reg32val { i16 2164, i32 620773376 }, %struct.rtl8xxxu_reg32val { i16 2168, i32 2056 }, %struct.rtl8xxxu_reg32val { i16 2172, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2176, i32 -1342174180 }, %struct.rtl8xxxu_reg32val { i16 2180, i32 1 }, %struct.rtl8xxxu_reg32val { i16 2184, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2188, i32 -859832128 }, %struct.rtl8xxxu_reg32val { i16 2192, i32 2048 }, %struct.rtl8xxxu_reg32val { i16 2196, i32 -2 }, %struct.rtl8xxxu_reg32val { i16 2200, i32 1076895760 }, %struct.rtl8xxxu_reg32val { i16 2204, i32 7364688 }, %struct.rtl8xxxu_reg32val { i16 2304, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2308, i32 35 }, %struct.rtl8xxxu_reg32val { i16 2312, i32 0 }, %struct.rtl8xxxu_reg32val { i16 2316, i32 -2129522415 }, %struct.rtl8xxxu_reg32val { i16 2320, i32 2 }, %struct.rtl8xxxu_reg32val { i16 2324, i32 513 }, %struct.rtl8xxxu_reg32val { i16 2560, i32 13649864 }, %struct.rtl8xxxu_reg32val { i16 2564, i32 -2130739188 }, %struct.rtl8xxxu_reg32val { i16 2568, i32 -1937538304 }, %struct.rtl8xxxu_reg32val { i16 2572, i32 780079631 }, %struct.rtl8xxxu_reg32val { i16 2576, i32 -1795114120 }, %struct.rtl8xxxu_reg32val { i16 2580, i32 286576680 }, %struct.rtl8xxxu_reg32val { i16 2584, i32 8917271 }, %struct.rtl8xxxu_reg32val { i16 2588, i32 -1995174144 }, %struct.rtl8xxxu_reg32val { i16 2592, i32 437977088 }, %struct.rtl8xxxu_reg32val { i16 2596, i32 151917335 }, %struct.rtl8xxxu_reg32val { i16 2600, i32 516 }, %struct.rtl8xxxu_reg32val { i16 2604, i32 13828096 }, %struct.rtl8xxxu_reg32val { i16 2672, i32 270515968 }, %struct.rtl8xxxu_reg32val { i16 2676, i32 7 }, %struct.rtl8xxxu_reg32val { i16 2680, i32 2304 }, %struct.rtl8xxxu_reg32val { i16 2684, i32 576390662 }, %struct.rtl8xxxu_reg32val { i16 2688, i32 562062480 }, %struct.rtl8xxxu_reg32val { i16 2860, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3072, i32 1208425792 }, %struct.rtl8xxxu_reg32val { i16 3076, i32 60839441 }, %struct.rtl8xxxu_reg32val { i16 3080, i32 228 }, %struct.rtl8xxxu_reg32val { i16 3084, i32 1819044972 }, %struct.rtl8xxxu_reg32val { i16 3088, i32 142606336 }, %struct.rtl8xxxu_reg32val { i16 3092, i32 1073742080 }, %struct.rtl8xxxu_reg32val { i16 3096, i32 142606336 }, %struct.rtl8xxxu_reg32val { i16 3100, i32 1073742080 }, %struct.rtl8xxxu_reg32val { i16 3104, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3108, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3112, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3116, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3120, i32 1776921668 }, %struct.rtl8xxxu_reg32val { i16 3124, i32 1184256687 }, %struct.rtl8xxxu_reg32val { i16 3128, i32 1232689556 }, %struct.rtl8xxxu_reg32val { i16 3132, i32 177706780 }, %struct.rtl8xxxu_reg32val { i16 3136, i32 528236607 }, %struct.rtl8xxxu_reg32val { i16 3140, i32 65719 }, %struct.rtl8xxxu_reg32val { i16 3144, i32 -335412985 }, %struct.rtl8xxxu_reg32val { i16 3148, i32 8323967 }, %struct.rtl8xxxu_reg32val { i16 3152, i32 1767191584 }, %struct.rtl8xxxu_reg32val { i16 3156, i32 1136394388 }, %struct.rtl8xxxu_reg32val { i16 3160, i32 78153 }, %struct.rtl8xxxu_reg32val { i16 3164, i32 2426002 }, %struct.rtl8xxxu_reg32val { i16 3168, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3172, i32 1897038987 }, %struct.rtl8xxxu_reg32val { i16 3176, i32 1203768319 }, %struct.rtl8xxxu_reg32val { i16 3180, i32 54 }, %struct.rtl8xxxu_reg32val { i16 3184, i32 746520589 }, %struct.rtl8xxxu_reg32val { i16 3188, i32 33951963 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 31 }, %struct.rtl8xxxu_reg32val { i16 3196, i32 12129810 }, %struct.rtl8xxxu_reg32val { i16 3200, i32 956301540 }, %struct.rtl8xxxu_reg32val { i16 3204, i32 552992768 }, %struct.rtl8xxxu_reg32val { i16 3208, i32 1073742080 }, %struct.rtl8xxxu_reg32val { i16 3212, i32 538968064 }, %struct.rtl8xxxu_reg32val { i16 3216, i32 134682 }, %struct.rtl8xxxu_reg32val { i16 3220, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3224, i32 134682 }, %struct.rtl8xxxu_reg32val { i16 3228, i32 32639 }, %struct.rtl8xxxu_reg32val { i16 3232, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3236, i32 196768 }, %struct.rtl8xxxu_reg32val { i16 3240, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3244, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3248, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3252, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3256, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3260, i32 671088640 }, %struct.rtl8xxxu_reg32val { i16 3264, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3268, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3272, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3276, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3280, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3284, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3288, i32 1689396263 }, %struct.rtl8xxxu_reg32val { i16 3292, i32 7760178 }, %struct.rtl8xxxu_reg32val { i16 3296, i32 2236962 }, %struct.rtl8xxxu_reg32val { i16 3300, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3304, i32 929317634 }, %struct.rtl8xxxu_reg32val { i16 3308, i32 798479372 }, %struct.rtl8xxxu_reg32val { i16 3328, i32 1856 }, %struct.rtl8xxxu_reg32val { i16 3332, i32 1073873921 }, %struct.rtl8xxxu_reg32val { i16 3336, i32 36991 }, %struct.rtl8xxxu_reg32val { i16 3340, i32 536936961 }, %struct.rtl8xxxu_reg32val { i16 3344, i32 -1604111565 }, %struct.rtl8xxxu_reg32val { i16 3348, i32 859028563 }, %struct.rtl8xxxu_reg32val { i16 3352, i32 2056215407 }, %struct.rtl8xxxu_reg32val { i16 3372, i32 -862480011 }, %struct.rtl8xxxu_reg32val { i16 3376, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3380, i32 -2141159424 }, %struct.rtl8xxxu_reg32val { i16 3384, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3388, i32 1209171 }, %struct.rtl8xxxu_reg32val { i16 3392, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3396, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3400, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3404, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3408, i32 1681331210 }, %struct.rtl8xxxu_reg32val { i16 3412, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3416, i32 642 }, %struct.rtl8xxxu_reg32val { i16 3420, i32 805511268 }, %struct.rtl8xxxu_reg32val { i16 3424, i32 1179901544 }, %struct.rtl8xxxu_reg32val { i16 3428, i32 72452668 }, %struct.rtl8xxxu_reg32val { i16 3432, i32 8449 }, %struct.rtl8xxxu_reg32val { i16 3436, i32 706747414 }, %struct.rtl8xxxu_reg32val { i16 3440, i32 403846702 }, %struct.rtl8xxxu_reg32val { i16 3444, i32 841753120 }, %struct.rtl8xxxu_reg32val { i16 3448, i32 932900 }, %struct.rtl8xxxu_reg32val { i16 3584, i32 757935405 }, %struct.rtl8xxxu_reg32val { i16 3588, i32 757935405 }, %struct.rtl8xxxu_reg32val { i16 3592, i32 59778861 }, %struct.rtl8xxxu_reg32val { i16 3600, i32 757935405 }, %struct.rtl8xxxu_reg32val { i16 3604, i32 757935405 }, %struct.rtl8xxxu_reg32val { i16 3608, i32 757935405 }, %struct.rtl8xxxu_reg32val { i16 3612, i32 757935405 }, %struct.rtl8xxxu_reg32val { i16 3624, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3632, i32 268491807 }, %struct.rtl8xxxu_reg32val { i16 3636, i32 268471327 }, %struct.rtl8xxxu_reg32val { i16 3640, i32 34865410 }, %struct.rtl8xxxu_reg32val { i16 3644, i32 1746273474 }, %struct.rtl8xxxu_reg32val { i16 3648, i32 16808960 }, %struct.rtl8xxxu_reg32val { i16 3652, i32 16795648 }, %struct.rtl8xxxu_reg32val { i16 3656, i32 -83886080 }, %struct.rtl8xxxu_reg32val { i16 3660, i32 10449 }, %struct.rtl8xxxu_reg32val { i16 3664, i32 268491807 }, %struct.rtl8xxxu_reg32val { i16 3668, i32 268471327 }, %struct.rtl8xxxu_reg32val { i16 3672, i32 34865410 }, %struct.rtl8xxxu_reg32val { i16 3676, i32 672533765 }, %struct.rtl8xxxu_reg32val { i16 3680, i32 8 }, %struct.rtl8xxxu_reg32val { i16 3688, i32 1779030 }, %struct.rtl8xxxu_reg32val { i16 3692, i32 12583062 }, %struct.rtl8xxxu_reg32val { i16 3696, i32 12583062 }, %struct.rtl8xxxu_reg32val { i16 3700, i32 16777302 }, %struct.rtl8xxxu_reg32val { i16 3704, i32 16777236 }, %struct.rtl8xxxu_reg32val { i16 3708, i32 16777302 }, %struct.rtl8xxxu_reg32val { i16 3712, i32 16777236 }, %struct.rtl8xxxu_reg32val { i16 3716, i32 12583062 }, %struct.rtl8xxxu_reg32val { i16 3720, i32 16777302 }, %struct.rtl8xxxu_reg32val { i16 3724, i32 12583062 }, %struct.rtl8xxxu_reg32val { i16 3792, i32 12583062 }, %struct.rtl8xxxu_reg32val { i16 3796, i32 12583062 }, %struct.rtl8xxxu_reg32val { i16 3800, i32 12583062 }, %struct.rtl8xxxu_reg32val { i16 3804, i32 214 }, %struct.rtl8xxxu_reg32val { i16 3808, i32 214 }, %struct.rtl8xxxu_reg32val { i16 3820, i32 29360150 }, %struct.rtl8xxxu_reg32val { i16 3860, i32 3 }, %struct.rtl8xxxu_reg32val { i16 3916, i32 0 }, %struct.rtl8xxxu_reg32val { i16 3840, i32 768 }, %struct.rtl8xxxu_reg32val { i16 2080, i32 16777472 }, %struct.rtl8xxxu_reg32val { i16 2048, i32 -2096889856 }, %struct.rtl8xxxu_reg32val { i16 -1, i32 -1 }], [400 x i8] zeroinitializer }, align 32
@rtl8xxx_agc_8723bu_table = internal global { [132 x %struct.rtl8xxxu_reg32val], [256 x i8] } { [132 x %struct.rtl8xxxu_reg32val] [%struct.rtl8xxxu_reg32val { i16 3192, i32 -50331647 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -67043327 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -83755007 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -100466687 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -117178367 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -133890047 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -150601727 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -167313407 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -184025087 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -200736767 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -217448447 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -234160127 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -250871807 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -267583487 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -284295167 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -301006847 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -317718527 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -334430207 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -351141887 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -367853567 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -384565247 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -401276927 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -417988607 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -434700287 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -451411967 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -468123647 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -484835327 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1524957183 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1541668863 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1558380543 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1730019329 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1713307649 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1696595969 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1679884289 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1663172609 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1243807745 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1227096065 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1210384385 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1193672705 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1176961025 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1160249345 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1143537665 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1126825985 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1110114305 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 690749441 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 674037761 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 657326081 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 640614401 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 170917889 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 154206209 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 137494529 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 120782849 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 104071169 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 87359489 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 70647809 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 53936129 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 37224449 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 20512769 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 20578305 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 20643841 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 20709377 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 20774913 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 20840449 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 20905985 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -62914559 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -79626239 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -96337919 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -113049599 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -129761279 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -146472959 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -163184639 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -179896319 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -196607999 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -213319679 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -230031359 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -246743039 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -263454719 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -280166399 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -296878079 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -313589759 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -330301439 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -347013119 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -363724799 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -380436479 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -397148159 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -413859839 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -430571519 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -447283199 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -463994879 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -480706559 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1504051199 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1520762879 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1537474559 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 -1554186239 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1734213633 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1717501953 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1700790273 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1684078593 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1667366913 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1650655233 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1633943553 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1214578689 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1197867009 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1181155329 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1164443649 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1147731969 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1131020289 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 1114308609 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 678166529 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 661454849 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 644743169 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 628031489 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 611319809 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 158400513 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 141688833 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 124977153 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 108265473 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 91553793 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 74842113 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 58130433 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 41418753 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 24707073 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 24772609 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 24838145 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 24903681 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 24969217 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 25034753 }, %struct.rtl8xxxu_reg32val { i16 3192, i32 25100289 }, %struct.rtl8xxxu_reg32val { i16 3152, i32 1767191586 }, %struct.rtl8xxxu_reg32val { i16 3152, i32 1767191584 }, %struct.rtl8xxxu_reg32val { i16 2084, i32 3736068 }, %struct.rtl8xxxu_reg32val { i16 -1, i32 -1 }], [256 x i8] zeroinitializer }, align 32
@rtl8723bu_radioa_1t_init_table = internal global { [109 x %struct.rtl8xxxu_rfregval], [216 x i8] } { [109 x %struct.rtl8xxxu_rfregval] [%struct.rtl8xxxu_rfregval { i8 0, i32 65536 }, %struct.rtl8xxxu_rfregval { i8 -80, i32 917472 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -79, i32 24 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -78, i32 543744 }, %struct.rtl8xxxu_rfregval { i8 -75, i32 53964 }, %struct.rtl8xxxu_rfregval { i8 -74, i32 599466 }, %struct.rtl8xxxu_rfregval { i8 -73, i32 16 }, %struct.rtl8xxxu_rfregval { i8 -72, i32 36991 }, %struct.rtl8xxxu_rfregval { i8 92, i32 2 }, %struct.rtl8xxxu_rfregval { i8 124, i32 2 }, %struct.rtl8xxxu_rfregval { i8 126, i32 5 }, %struct.rtl8xxxu_rfregval { i8 -117, i32 457728 }, %struct.rtl8xxxu_rfregval { i8 -80, i32 1047024 }, %struct.rtl8xxxu_rfregval { i8 28, i32 473554 }, %struct.rtl8xxxu_rfregval { i8 30, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -33, i32 1920 }, %struct.rtl8xxxu_rfregval { i8 80, i32 422965 }, %struct.rtl8xxxu_rfregval { i8 81, i32 438350 }, %struct.rtl8xxxu_rfregval { i8 82, i32 2002 }, %struct.rtl8xxxu_rfregval { i8 83, i32 0 }, %struct.rtl8xxxu_rfregval { i8 84, i32 328704 }, %struct.rtl8xxxu_rfregval { i8 85, i32 262766 }, %struct.rtl8xxxu_rfregval { i8 -35, i32 76 }, %struct.rtl8xxxu_rfregval { i8 112, i32 422965 }, %struct.rtl8xxxu_rfregval { i8 113, i32 438350 }, %struct.rtl8xxxu_rfregval { i8 114, i32 2002 }, %struct.rtl8xxxu_rfregval { i8 115, i32 0 }, %struct.rtl8xxxu_rfregval { i8 116, i32 328704 }, %struct.rtl8xxxu_rfregval { i8 117, i32 262766 }, %struct.rtl8xxxu_rfregval { i8 -17, i32 256 }, %struct.rtl8xxxu_rfregval { i8 52, i32 44503 }, %struct.rtl8xxxu_rfregval { i8 53, i32 23552 }, %struct.rtl8xxxu_rfregval { i8 52, i32 40404 }, %struct.rtl8xxxu_rfregval { i8 53, i32 20480 }, %struct.rtl8xxxu_rfregval { i8 52, i32 36305 }, %struct.rtl8xxxu_rfregval { i8 53, i32 17408 }, %struct.rtl8xxxu_rfregval { i8 52, i32 32206 }, %struct.rtl8xxxu_rfregval { i8 53, i32 14336 }, %struct.rtl8xxxu_rfregval { i8 52, i32 27857 }, %struct.rtl8xxxu_rfregval { i8 53, i32 17408 }, %struct.rtl8xxxu_rfregval { i8 52, i32 23758 }, %struct.rtl8xxxu_rfregval { i8 53, i32 14336 }, %struct.rtl8xxxu_rfregval { i8 52, i32 18638 }, %struct.rtl8xxxu_rfregval { i8 53, i32 17408 }, %struct.rtl8xxxu_rfregval { i8 52, i32 13518 }, %struct.rtl8xxxu_rfregval { i8 53, i32 14336 }, %struct.rtl8xxxu_rfregval { i8 52, i32 9297 }, %struct.rtl8xxxu_rfregval { i8 53, i32 17408 }, %struct.rtl8xxxu_rfregval { i8 52, i32 5198 }, %struct.rtl8xxxu_rfregval { i8 53, i32 14336 }, %struct.rtl8xxxu_rfregval { i8 52, i32 81 }, %struct.rtl8xxxu_rfregval { i8 53, i32 17408 }, %struct.rtl8xxxu_rfregval { i8 -17, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -17, i32 256 }, %struct.rtl8xxxu_rfregval { i8 -19, i32 16 }, %struct.rtl8xxxu_rfregval { i8 68, i32 44503 }, %struct.rtl8xxxu_rfregval { i8 68, i32 40404 }, %struct.rtl8xxxu_rfregval { i8 68, i32 36305 }, %struct.rtl8xxxu_rfregval { i8 68, i32 32206 }, %struct.rtl8xxxu_rfregval { i8 68, i32 27841 }, %struct.rtl8xxxu_rfregval { i8 68, i32 23758 }, %struct.rtl8xxxu_rfregval { i8 68, i32 17617 }, %struct.rtl8xxxu_rfregval { i8 68, i32 13518 }, %struct.rtl8xxxu_rfregval { i8 68, i32 9297 }, %struct.rtl8xxxu_rfregval { i8 68, i32 5198 }, %struct.rtl8xxxu_rfregval { i8 68, i32 81 }, %struct.rtl8xxxu_rfregval { i8 -17, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -19, i32 0 }, %struct.rtl8xxxu_rfregval { i8 127, i32 131200 }, %struct.rtl8xxxu_rfregval { i8 -17, i32 8192 }, %struct.rtl8xxxu_rfregval { i8 59, i32 229615 }, %struct.rtl8xxxu_rfregval { i8 59, i32 197374 }, %struct.rtl8xxxu_rfregval { i8 59, i32 167142 }, %struct.rtl8xxxu_rfregval { i8 59, i32 131260 }, %struct.rtl8xxxu_rfregval { i8 59, i32 100517 }, %struct.rtl8xxxu_rfregval { i8 59, i32 69564 }, %struct.rtl8xxxu_rfregval { i8 59, i32 36721 }, %struct.rtl8xxxu_rfregval { i8 59, i32 2304 }, %struct.rtl8xxxu_rfregval { i8 -17, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -19, i32 1 }, %struct.rtl8xxxu_rfregval { i8 64, i32 229615 }, %struct.rtl8xxxu_rfregval { i8 64, i32 197374 }, %struct.rtl8xxxu_rfregval { i8 64, i32 167142 }, %struct.rtl8xxxu_rfregval { i8 64, i32 131260 }, %struct.rtl8xxxu_rfregval { i8 64, i32 100517 }, %struct.rtl8xxxu_rfregval { i8 64, i32 69564 }, %struct.rtl8xxxu_rfregval { i8 64, i32 36721 }, %struct.rtl8xxxu_rfregval { i8 64, i32 2304 }, %struct.rtl8xxxu_rfregval { i8 -19, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -126, i32 524288 }, %struct.rtl8xxxu_rfregval { i8 -125, i32 32768 }, %struct.rtl8xxxu_rfregval { i8 -124, i32 298368 }, %struct.rtl8xxxu_rfregval { i8 -123, i32 425984 }, %struct.rtl8xxxu_rfregval { i8 -94, i32 524288 }, %struct.rtl8xxxu_rfregval { i8 -93, i32 32768 }, %struct.rtl8xxxu_rfregval { i8 -92, i32 298368 }, %struct.rtl8xxxu_rfregval { i8 -91, i32 425984 }, %struct.rtl8xxxu_rfregval { i8 -19, i32 2 }, %struct.rtl8xxxu_rfregval { i8 -17, i32 2 }, %struct.rtl8xxxu_rfregval { i8 86, i32 50 }, %struct.rtl8xxxu_rfregval { i8 118, i32 50 }, %struct.rtl8xxxu_rfregval { i8 1, i32 1920 }, %struct.rtl8xxxu_rfregval { i8 -1, i32 -1 }], [216 x i8] zeroinitializer }, align 32
@rtl8723bu_phy_iq_calibrate.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 1, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rtl8xxxu\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtl8723bu_phy_iq_calibrate\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: candidate is %x\0A\00", [43 x i8] zeroinitializer }, align 32
@rtl8723bu_phy_iq_calibrate.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.2, ptr @.str.22, i8 1, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: e94 =%x e9c=%x ea4=%x eac=%x eb4=%x ebc=%x ec4=%x ecc=%x\0A\00", [34 x i8] zeroinitializer }, align 32
@rtl8xxxu_iqk_phy_iq_bb_reg = external dso_local constant [0 x i32], align 4
@rtl8723bu_phy_iq_calibrate.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.2, ptr @.str.23, i8 1, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: 8723BU 2T not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl8723bu_phy_iqcalibrate.adda_regs = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 2140, i32 3692, i32 3696, i32 3700, i32 3704, i32 3708, i32 3712, i32 3716, i32 3720, i32 3724, i32 3792, i32 3796, i32 3800, i32 3804, i32 3808, i32 3820], [32 x i8] zeroinitializer }, align 32
@rtl8723bu_phy_iqcalibrate.iqk_mac_regs = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1314, i32 1360, i32 1361, i32 64], [16 x i8] zeroinitializer }, align 32
@rtl8723bu_phy_iqcalibrate.iqk_bb_regs = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 3076, i32 3080, i32 2164, i32 2920, i32 2924, i32 2160, i32 2144, i32 2148, i32 2048], [60 x i8] zeroinitializer }, align 32
@rtl8723bu_phy_iqcalibrate.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 -12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtl8723bu_phy_iqcalibrate\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Path A TX IQK failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl8723bu_phy_iqcalibrate.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 -8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Path A RX IQK failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl8723bu_phy_iqcalibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.2, i32 997, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Path B not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@rtl8723bu_phy_iqcalibrate._entry_ptr = internal global ptr @rtl8723bu_phy_iqcalibrate._entry, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant [24 x i8] c"rtl8723b_mac_init_table\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 35, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"rtl8723bu_fops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1643, i32 25 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 451, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 452, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 458, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 462, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 474, i32 13 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 476, i32 13 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1243, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [27 x i8] c"rtl8723b_phy_1t_init_table\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 66, i32 33 }
@___asan_gen_.91 = private unnamed_addr constant [25 x i8] c"rtl8xxx_agc_8723bu_table\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 167, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant [31 x i8] c"rtl8723bu_radioa_1t_init_table\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 238, i32 33 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1168, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1169, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1205, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [10 x i8] c"adda_regs\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 885, i32 19 }
@___asan_gen_.115 = private unnamed_addr constant [13 x i8] c"iqk_mac_regs\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 895, i32 19 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"iqk_bb_regs\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 899, i32 19 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 976, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 993, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [58 x i8] c"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 997, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @rtl8723bu_active_to_emu._entry, ptr @rtl8723bu_active_to_emu._entry_ptr, ptr @rtl8723bu_parse_efuse._entry, ptr @rtl8723bu_parse_efuse._entry.11, ptr @rtl8723bu_parse_efuse._entry.5, ptr @rtl8723bu_parse_efuse._entry.8, ptr @rtl8723bu_parse_efuse._entry_ptr, ptr @rtl8723bu_parse_efuse._entry_ptr.10, ptr @rtl8723bu_parse_efuse._entry_ptr.13, ptr @rtl8723bu_parse_efuse._entry_ptr.7, ptr @rtl8723bu_phy_iqcalibrate._entry, ptr @rtl8723bu_phy_iqcalibrate._entry_ptr, ptr @rtl8723b_mac_init_table, ptr @rtl8723bu_fops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @rtl8723b_phy_1t_init_table, ptr @rtl8xxx_agc_8723bu_table, ptr @rtl8723bu_radioa_1t_init_table, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @rtl8723bu_phy_iqcalibrate.adda_regs, ptr @rtl8723bu_phy_iqcalibrate.iqk_mac_regs, ptr @rtl8723bu_phy_iqcalibrate.iqk_bb_regs, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723b_mac_init_table to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723bu_fops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723bu_parse_efuse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723bu_parse_efuse._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723bu_parse_efuse._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723bu_parse_efuse._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723bu_active_to_emu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723b_phy_1t_init_table to i32), i32 1552, i32 1952, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8xxx_agc_8723bu_table to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723bu_radioa_1t_init_table to i32), i32 872, i32 1088, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723bu_phy_iqcalibrate.adda_regs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723bu_phy_iqcalibrate.iqk_mac_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723bu_phy_iqcalibrate.iqk_bb_regs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723bu_phy_iqcalibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8723bu_parse_efuse(ptr noundef %priv) #0 align 64 {
entry:
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
  %mac_addr2 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 31
  %2 = ptrtoint ptr %mac_addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_addr2, align 4
  %4 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 31, i32 4
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
  %bf.shl = and i8 %bf.load, 15
  %ofdm_tx_power_diff = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 24
  %ht20_ofdm_1s_diff19 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %ht20_ofdm_1s_diff19 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load20 = load i8, ptr %ht20_ofdm_1s_diff19, align 1
  %bf.shl28 = shl i8 %bf.load20, 4
  %bf.set30 = or i8 %bf.shl28, %bf.shl
  %14 = ptrtoint ptr %ofdm_tx_power_diff to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %bf.set30, ptr %ofdm_tx_power_diff, align 1
  %15 = lshr i8 %bf.load, 4
  %ht20_tx_power_diff = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 25
  %16 = and i8 %bf.load20, -16
  %bf.set58 = or i8 %16, %15
  %17 = ptrtoint ptr %ht20_tx_power_diff to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %bf.set58, ptr %ht20_tx_power_diff, align 1
  %ht40_tx_power_diff = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 26
  %18 = ptrtoint ptr %ht40_tx_power_diff to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %ht40_tx_power_diff, align 1
  %arrayidx74 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 3, i32 0
  %19 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load2_noabort(i32 %19)
  %bf.load75 = load i16, ptr %arrayidx74, align 2
  %20 = lshr i16 %bf.load75, 8
  %arrayidx80 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 24, i32 1
  %21 = trunc i16 %20 to i8
  %22 = and i8 %21, 15
  %arrayidx91 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 3, i32 0
  %23 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load92 = load i16, ptr %arrayidx91, align 2
  %sh.diff = lshr i16 %bf.load92, 4
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %bf.shl100 = and i8 %tr.sh.diff, -16
  %bf.set102 = or i8 %bf.shl100, %22
  %24 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.set102, ptr %arrayidx80, align 1
  %arrayidx115 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 25, i32 1
  %25 = trunc i16 %bf.load75 to i8
  %26 = and i8 %25, 15
  %27 = trunc i16 %bf.load92 to i8
  %bf.shl135 = shl i8 %27, 4
  %bf.set137 = or i8 %bf.shl135, %26
  %28 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %bf.set137, ptr %arrayidx115, align 1
  %arrayidx150 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 26, i32 1
  %29 = lshr i8 %25, 4
  %30 = and i8 %27, -16
  %bf.set172 = or i8 %30, %29
  %31 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %bf.set172, ptr %arrayidx150, align 1
  %arrayidx74.1 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 3, i32 1
  %32 = ptrtoint ptr %arrayidx74.1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load75.1 = load i16, ptr %arrayidx74.1, align 2
  %33 = lshr i16 %bf.load75.1, 8
  %arrayidx80.1 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 24, i32 2
  %34 = trunc i16 %33 to i8
  %35 = and i8 %34, 15
  %arrayidx91.1 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 3, i32 1
  %36 = ptrtoint ptr %arrayidx91.1 to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load92.1 = load i16, ptr %arrayidx91.1, align 2
  %sh.diff.1 = lshr i16 %bf.load92.1, 4
  %tr.sh.diff.1 = trunc i16 %sh.diff.1 to i8
  %bf.shl100.1 = and i8 %tr.sh.diff.1, -16
  %bf.set102.1 = or i8 %bf.shl100.1, %35
  %37 = ptrtoint ptr %arrayidx80.1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %bf.set102.1, ptr %arrayidx80.1, align 1
  %arrayidx115.1 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 25, i32 2
  %38 = trunc i16 %bf.load75.1 to i8
  %39 = and i8 %38, 15
  %40 = trunc i16 %bf.load92.1 to i8
  %bf.shl135.1 = shl i8 %40, 4
  %bf.set137.1 = or i8 %bf.shl135.1, %39
  %41 = ptrtoint ptr %arrayidx115.1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %bf.set137.1, ptr %arrayidx115.1, align 1
  %arrayidx150.1 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 26, i32 2
  %42 = lshr i8 %38, 4
  %43 = and i8 %40, -16
  %bf.set172.1 = or i8 %43, %42
  %44 = ptrtoint ptr %arrayidx150.1 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %bf.set172.1, ptr %arrayidx150.1, align 1
  %arrayidx74.2 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 3, i32 2
  %45 = ptrtoint ptr %arrayidx74.2 to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load75.2 = load i16, ptr %arrayidx74.2, align 2
  %46 = lshr i16 %bf.load75.2, 8
  %arrayidx80.2 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 24, i32 3
  %47 = trunc i16 %46 to i8
  %48 = and i8 %47, 15
  %arrayidx91.2 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 3, i32 2
  %49 = ptrtoint ptr %arrayidx91.2 to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load92.2 = load i16, ptr %arrayidx91.2, align 2
  %sh.diff.2 = lshr i16 %bf.load92.2, 4
  %tr.sh.diff.2 = trunc i16 %sh.diff.2 to i8
  %bf.shl100.2 = and i8 %tr.sh.diff.2, -16
  %bf.set102.2 = or i8 %bf.shl100.2, %48
  %50 = ptrtoint ptr %arrayidx80.2 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %bf.set102.2, ptr %arrayidx80.2, align 1
  %arrayidx115.2 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 25, i32 3
  %51 = trunc i16 %bf.load75.2 to i8
  %52 = and i8 %51, 15
  %53 = trunc i16 %bf.load92.2 to i8
  %bf.shl135.2 = shl i8 %53, 4
  %bf.set137.2 = or i8 %bf.shl135.2, %52
  %54 = ptrtoint ptr %arrayidx115.2 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %bf.set137.2, ptr %arrayidx115.2, align 1
  %arrayidx150.2 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 26, i32 3
  %55 = lshr i8 %51, 4
  %56 = and i8 %53, -16
  %bf.set172.2 = or i8 %56, %55
  %57 = ptrtoint ptr %arrayidx150.2 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %bf.set172.2, ptr %arrayidx150.2, align 1
  %has_xtalk = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 28
  %58 = ptrtoint ptr %has_xtalk to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load176 = load i32, ptr %has_xtalk, align 4
  %bf.set178 = or i32 %bf.load176, 256
  store i32 %bf.set178, ptr %has_xtalk, align 4
  %xtal_k = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 7
  %59 = ptrtoint ptr %xtal_k to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %xtal_k, align 1
  %61 = and i8 %60, 63
  %xtalk = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 29
  %62 = ptrtoint ptr %xtalk to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %xtalk, align 4
  %udev = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %63 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %64, i32 0, i32 15
  %vendor_name = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 33
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %vendor_name) #7
  %65 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %udev, align 4
  %dev187 = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 15
  %device_name = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 35
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev187, ptr noundef nonnull @.str.6, ptr noundef %device_name) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rtl8xxxu_debug to i32))
  %67 = load i32, ptr @rtl8xxxu_debug, align 4
  %and189 = and i32 %67, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool.not = icmp eq i32 %and189, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then190

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then190:                                       ; preds = %if.end
  %68 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %udev, align 4
  %dev198 = getelementptr inbounds %struct.usb_device, ptr %69, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev198, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 512) #7
  br label %do.end205

do.end205:                                        ; preds = %do.end205.do.end205_crit_edge, %if.then190
  %i191.0272 = phi i32 [ 0, %if.then190 ], [ %add, %do.end205.do.end205_crit_edge ]
  %70 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %udev, align 4
  %dev207 = getelementptr inbounds %struct.usb_device, ptr %71, i32 0, i32 15
  %arrayidx208 = getelementptr i8, ptr %efuse_wifi, i32 %i191.0272
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev207, ptr noundef nonnull @.str.12, i32 noundef %i191.0272, ptr noundef %arrayidx208) #7
  %add = add nuw nsw i32 %i191.0272, 8
  %cmp200 = icmp ult i32 %i191.0272, 504
  br i1 %cmp200, label %do.end205.do.end205_crit_edge, label %do.end205.cleanup_crit_edge

do.end205.cleanup_crit_edge:                      ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end205.do.end205_crit_edge:                    ; preds = %do.end205
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end205

cleanup:                                          ; preds = %do.end205.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %do.end205.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8723bu_load_firmware(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_bluetooth = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 28
  %0 = ptrtoint ptr %enable_bluetooth to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %enable_bluetooth, align 4
  %1 = and i32 %bf.load, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %.str.15..str.14 = select i1 %tobool.not, ptr @.str.15, ptr @.str.14
  %call = tail call i32 @rtl8xxxu_load_firmware(ptr noundef %priv, ptr noundef nonnull %.str.15..str.14) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8723bu_power_on(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtl8xxxu_disabled_to_emu(ptr noundef %priv) #4
  %call.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 32) #4
  %0 = or i8 %call.i, 1
  %call2.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 32, i8 noundef zeroext %0) #4
  %call3.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 103) #4
  %1 = and i8 %call3.i, -17
  %call6.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 103, i8 noundef zeroext %1) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #4
  %call7.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 0) #4
  %3 = and i8 %call7.i, -33
  %call11.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 0, i8 noundef zeroext %3) #4
  %call12.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 4) #4
  %conv13.i = zext i8 %call12.i to i32
  %call15.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 4, i32 noundef %conv13.i) #4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %count.0159.i = phi i32 [ 500, %entry ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %call16.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 4) #4
  %and17.i = and i32 %call16.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end.i, label %if.end21.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #4
  %dec.i = add nsw i32 %count.0159.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end.i.exit_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end21.i:                                       ; preds = %for.body.i
  %call22.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 4) #4
  %or23.i = or i32 %call22.i, 65536
  %call24.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 4, i32 noundef %or23.i) #4
  %call25.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 4) #4
  %and26.i = and i32 %call25.i, -32769
  %call27.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 4, i32 noundef %and26.i) #4
  %call28.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 4) #4
  %and29.i = and i32 %call28.i, -6145
  %call30.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 4, i32 noundef %and29.i) #4
  %call31.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 4) #4
  %or32.i = or i32 %call31.i, 256
  %call33.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 4, i32 noundef %or32.i) #4
  br label %for.body36.i

for.body36.i:                                     ; preds = %if.end41.i.for.body36.i_crit_edge, %if.end21.i
  %count.1160.i = phi i32 [ 500, %if.end21.i ], [ %dec43.i, %if.end41.i.for.body36.i_crit_edge ]
  %call37.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 4) #4
  %and38.i = and i32 %call37.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %cmp.i = icmp eq i32 %and38.i, 0
  br i1 %cmp.i, label %if.end, label %if.end41.i

if.end41.i:                                       ; preds = %for.body36.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #4
  %dec43.i = add nsw i32 %count.1160.i, -1
  %tobool35.not.i = icmp eq i32 %dec43.i, 0
  br i1 %tobool35.not.i, label %if.end41.i.exit_crit_edge, label %if.end41.i.for.body36.i_crit_edge

if.end41.i.for.body36.i_crit_edge:                ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body36.i

if.end41.i.exit_crit_edge:                        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end:                                           ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #6
  %call48.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 16) #4
  %6 = or i8 %call48.i, 64
  %call52.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 16, i8 noundef zeroext %6) #4
  %call53.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 73) #4
  %7 = or i8 %call53.i, 2
  %call57.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 73, i8 noundef zeroext %7) #4
  %call58.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 99) #4
  %8 = or i8 %call58.i, 2
  %call62.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 99, i8 noundef zeroext %8) #4
  %call63.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 98) #4
  %9 = and i8 %call63.i, -3
  %call67.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 98, i8 noundef zeroext %9) #4
  %call68.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 88) #4
  %10 = or i8 %call68.i, 1
  %call72.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 88, i8 noundef zeroext %10) #4
  %call73.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 90) #4
  %11 = or i8 %call73.i, 2
  %call77.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 90, i8 noundef zeroext %11) #4
  %call78.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 104) #4
  %12 = or i8 %call78.i, 8
  %call82.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 104, i8 noundef zeroext %12) #4
  %call83.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 105) #4
  %13 = or i8 %call83.i, 64
  %call87.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 105, i8 noundef zeroext %13) #4
  %call1 = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 256) #4
  %14 = or i16 %call1, 1791
  %call3 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 256, i16 noundef zeroext %14) #4
  %call4 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 103, i8 noundef zeroext 32) #4
  %call5 = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 2) #4
  %15 = or i16 %call5, 3
  %call9 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 2, i16 noundef zeroext %15) #4
  %call10 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 1893, i8 noundef zeroext 24) #4
  %call11 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 1902, i8 noundef zeroext 4) #4
  %call12 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2376, i32 noundef 0) #4
  %call13 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext -504, i8 noundef zeroext 1) #4
  %call14 = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 56) #4
  %16 = or i16 %call14, 2048
  %call18 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 56, i16 noundef zeroext %16) #4
  %call19 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 76) #4
  %or20 = or i32 %call19, 8388608
  %call21 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 76, i32 noundef %or20) #4
  %call22 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 100) #4
  %17 = and i8 %call22, -2
  %call25 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 100, i8 noundef zeroext %17) #4
  br label %exit

exit:                                             ; preds = %if.end, %if.end41.i.exit_crit_edge, %if.end.i.exit_crit_edge
  %ret.1.i52 = phi i32 [ 0, %if.end ], [ -16, %if.end41.i.exit_crit_edge ], [ -16, %if.end.i.exit_crit_edge ]
  ret i32 %ret.1.i52
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8723bu_power_off(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl8xxxu_flush_fifo(ptr noundef %priv) #4
  %call1 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 1260) #4
  %0 = and i8 %call1, -3
  %call3 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 1260, i8 noundef zeroext %0) #4
  %call4 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 256, i8 noundef zeroext 0) #4
  %call5 = tail call i32 @rtl8xxxu_active_to_lps(ptr noundef %priv) #4
  %call6 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 128) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call6)
  %tobool.not = icmp sgt i8 %call6, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @rtl8xxxu_firmware_self_reset(ptr noundef %priv) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call9 = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 2) #4
  %1 = and i16 %call9, -1025
  %call13 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 2, i16 noundef zeroext %1) #4
  %call14 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 128, i8 noundef zeroext 0) #4
  %call.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 31, i8 noundef zeroext 0) #4
  %call1.i = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 72) #4
  %2 = and i16 %call1.i, -513
  %call3.i = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 72, i16 noundef zeroext %2) #4
  %call4.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 4) #4
  %or.i = or i32 %call4.i, 65536
  %call5.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 4, i32 noundef %or.i) #4
  %call6.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 5) #4
  %3 = or i8 %call6.i, 2
  %call10.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 5, i8 noundef zeroext %3) #4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %count.01.i = phi i32 [ 500, %if.end ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %call11.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 5) #4
  %4 = and i8 %call11.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.i = icmp eq i8 %4, 0
  br i1 %cmp.i, label %if.end17.i, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #4
  %dec.i = add nsw i32 %count.01.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.critedge.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

do.end.critedge.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %udev.i = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #7
  br label %rtl8723bu_active_to_emu.exit

if.end17.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call18.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 16) #4
  %8 = and i8 %call18.i, -65
  %call22.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 16, i8 noundef zeroext %8) #4
  %call23.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 0) #4
  %9 = or i8 %call23.i, 32
  %call27.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 0, i8 noundef zeroext %9) #4
  %call28.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 32) #4
  %10 = and i8 %call28.i, -2
  %call32.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 32, i8 noundef zeroext %10) #4
  br label %rtl8723bu_active_to_emu.exit

rtl8723bu_active_to_emu.exit:                     ; preds = %if.end17.i, %do.end.critedge.i
  %call16 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 5) #4
  %11 = or i8 %call16, 8
  %call19 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 5, i8 noundef zeroext %11) #4
  %call20 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 74) #4
  %12 = or i8 %call20, 1
  %call24 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 74, i8 noundef zeroext %12) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8723bu_reset_8051(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 28) #4
  %0 = and i8 %call, -3
  %call2 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 28, i8 noundef zeroext %0) #4
  %call3 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 29) #4
  %1 = and i8 %call3, -2
  %call7 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 29, i8 noundef zeroext %1) #4
  %call8 = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 2) #4
  %2 = and i16 %call8, -1025
  %call12 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 2, i16 noundef zeroext %2) #4
  %call13 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 28) #4
  %3 = and i8 %call13, -3
  %call17 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 28, i8 noundef zeroext %3) #4
  %call18 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 29) #4
  %4 = or i8 %call18, 1
  %call21 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 29, i8 noundef zeroext %4) #4
  %5 = or i16 %call8, 1024
  %call25 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 2, i16 noundef zeroext %5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_auto_llt_table(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8723bu_init_phy_bb(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 2) #4
  %0 = or i16 %call, 8195
  %call2 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 2, i16 noundef zeroext %0) #4
  %call3 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2376, i32 noundef 0) #4
  %call4 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 31, i8 noundef zeroext 7) #4
  %call5 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 2, i8 noundef zeroext -29) #4
  %call6 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 37, i8 noundef zeroext -128) #4
  %call7 = tail call i32 @rtl8xxxu_init_phy_regs(ptr noundef %priv, ptr noundef nonnull @rtl8723b_phy_1t_init_table) #4
  %call8 = tail call i32 @rtl8xxxu_init_phy_regs(ptr noundef %priv, ptr noundef nonnull @rtl8xxx_agc_8723bu_table) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8723bu_init_phy_rf(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl8xxxu_init_phy_rf(ptr noundef %priv, ptr noundef nonnull @rtl8723bu_radioa_1t_init_table, i32 noundef 0) #4
  %call1 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -80, i32 noundef 916448) #4
  %call2 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 24, i32 noundef 35841) #4
  tail call void @msleep(i32 noundef 200) #4
  %call3 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -80, i32 noundef 917472) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8723bu_phy_init_antenna_selection(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 100) #4
  %and = and i32 %call, -17825793
  %call1 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 100, i32 noundef %and) #4
  %call2 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 64) #4
  %and3 = and i32 %call2, -17
  %call4 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 64, i32 noundef %and3) #4
  %call5 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 64) #4
  %or = or i32 %call5, 8
  %call6 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 64, i32 noundef %or) #4
  %call7 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 76) #4
  %or8 = or i32 %call7, 16777216
  %call9 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 76, i32 noundef %or8) #4
  %call10 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 76) #4
  %and11 = and i32 %call10, -8388609
  %call12 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 76, i32 noundef %and11) #4
  %call13 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 2372) #4
  %or14 = or i32 %call13, 3
  %call15 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2372, i32 noundef %or14) #4
  %call16 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 2352) #4
  %and17 = and i32 %call16, -256
  %or18 = or i32 %and17, 119
  %call19 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2352, i32 noundef %or18) #4
  %call20 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 56) #4
  %or21 = or i32 %call20, 2048
  %call22 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 56, i32 noundef %or21) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8723bu_phy_iq_calibrate(ptr noundef %priv) #0 align 64 {
entry:
  %result = alloca [4 x [8 x i32]], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %udev = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %result) #4
  tail call void @rtl8xxxu_gen2_prepare_calibrate(ptr noundef %priv, i8 noundef zeroext 1) #4
  %2 = call ptr @memset(ptr %result, i32 0, i32 128)
  %call = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 1892) #4
  call fastcc void @rtl8723bu_phy_iqcalibrate(ptr noundef %priv, ptr noundef nonnull %result, i32 noundef 0)
  call fastcc void @rtl8723bu_phy_iqcalibrate(ptr noundef %priv, ptr noundef nonnull %result, i32 noundef 1)
  %call5.1 = call zeroext i1 @rtl8xxxu_gen2_simularity_compare(ptr noundef %priv, ptr noundef nonnull %result, i32 noundef 0, i32 noundef 1) #4
  br i1 %call5.1, label %entry.if.then57_crit_edge, label %for.inc31.1

entry.if.then57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then57

if.end15:                                         ; preds = %for.inc31.1
  %call17 = call zeroext i1 @rtl8xxxu_gen2_simularity_compare(ptr noundef %priv, ptr noundef nonnull %result, i32 noundef 1, i32 noundef 2) #4
  br i1 %call17, label %if.end15.if.then57_crit_edge, label %for.body23.preheader

if.end15.if.then57_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then57

for.body23.preheader:                             ; preds = %if.end15
  %arrayidx24 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 0
  %3 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx24, align 4
  %arrayidx24.1 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx24.1, align 4
  %add.1 = add i32 %6, %4
  %arrayidx24.2 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx24.2, align 4
  %add.2 = add i32 %8, %add.1
  %arrayidx24.3 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx24.3, align 4
  %add.3 = add i32 %10, %add.2
  %arrayidx24.4 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx24.4, align 4
  %add.4 = add i32 %12, %add.3
  %arrayidx24.5 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 5
  %13 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx24.5, align 4
  %add.5 = add i32 %14, %add.4
  %arrayidx24.6 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 6
  %15 = ptrtoint ptr %arrayidx24.6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx24.6, align 4
  %add.6 = add i32 %16, %add.5
  %arrayidx24.7 = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 7
  %17 = ptrtoint ptr %arrayidx24.7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx24.7, align 4
  %add.7 = sub i32 0, %add.6
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add.7)
  %tobool25.not = icmp eq i32 %18, %add.7
  br i1 %tobool25.not, label %if.end102.thread, label %for.body23.preheader.if.then57_crit_edge

for.body23.preheader.if.then57_crit_edge:         ; preds = %for.body23.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then57

for.inc31.1:                                      ; preds = %entry
  call fastcc void @rtl8723bu_phy_iqcalibrate(ptr noundef %priv, ptr noundef nonnull %result, i32 noundef 2)
  %call11 = call zeroext i1 @rtl8xxxu_gen2_simularity_compare(ptr noundef %priv, ptr noundef nonnull %result, i32 noundef 0, i32 noundef 2) #4
  br i1 %call11, label %for.inc31.1.if.then57_crit_edge, label %if.end15

for.inc31.1.if.then57_crit_edge:                  ; preds = %for.inc31.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then57

if.then57:                                        ; preds = %for.inc31.1.if.then57_crit_edge, %for.body23.preheader.if.then57_crit_edge, %if.end15.if.then57_crit_edge, %entry.if.then57_crit_edge
  %candidate.2258 = phi i32 [ 0, %for.inc31.1.if.then57_crit_edge ], [ 1, %if.end15.if.then57_crit_edge ], [ 3, %for.body23.preheader.if.then57_crit_edge ], [ 0, %entry.if.then57_crit_edge ]
  %arrayidx58 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %candidate.2258
  %19 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx58, align 4
  %rege94 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 38
  %21 = ptrtoint ptr %rege94 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rege94, align 4
  %arrayidx61 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %candidate.2258, i32 1
  %22 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx61, align 4
  %rege9c = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 39
  %24 = ptrtoint ptr %rege9c to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rege9c, align 4
  %arrayidx63 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %candidate.2258, i32 2
  %25 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx63, align 4
  %arrayidx65 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %candidate.2258, i32 3
  %27 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx65, align 4
  %arrayidx67 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %candidate.2258, i32 4
  %29 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx67, align 4
  %regeb4 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 40
  %31 = ptrtoint ptr %regeb4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %regeb4, align 4
  %arrayidx69 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %candidate.2258, i32 5
  %32 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx69, align 4
  %regebc = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 41
  %34 = ptrtoint ptr %regebc to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %regebc, align 4
  %arrayidx71 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %candidate.2258, i32 6
  %35 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx71, align 4
  %arrayidx73 = getelementptr [4 x [8 x i32]], ptr %result, i32 0, i32 %candidate.2258, i32 7
  %37 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx73, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8723bu_phy_iq_calibrate.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8723bu_phy_iq_calibrate, %if.then79)) #4
          to label %do.body81 [label %if.then79], !srcloc !77

if.then79:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8723bu_phy_iq_calibrate.__UNIQUE_ID_ddebug355, ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %candidate.2258) #4
  br label %do.body81

do.body81:                                        ; preds = %if.then79, %if.then57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8723bu_phy_iq_calibrate.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8723bu_phy_iq_calibrate, %if.then93)) #4
          to label %if.end102 [label %if.then93], !srcloc !77

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8723bu_phy_iq_calibrate.__UNIQUE_ID_ddebug356, ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, i32 noundef %20, i32 noundef %23, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %33, i32 noundef %36, i32 noundef %38) #4
  br label %if.end102

if.end102.thread:                                 ; preds = %for.body23.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx50.le = getelementptr inbounds [4 x [8 x i32]], ptr %result, i32 0, i32 3, i32 6
  %39 = ptrtoint ptr %arrayidx50.le to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx50.le, align 4
  %regeb498 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 40
  %41 = ptrtoint ptr %regeb498 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 256, ptr %regeb498, align 4
  %rege9499 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 38
  %42 = ptrtoint ptr %rege9499 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 256, ptr %rege9499, align 4
  %regebc100 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 41
  %43 = ptrtoint ptr %regebc100 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %regebc100, align 4
  %rege9c101 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 39
  %44 = ptrtoint ptr %rege9c101 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %rege9c101, align 4
  br label %if.end109

if.end102:                                        ; preds = %if.then93, %do.body81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %phi.cmp = icmp eq i32 %20, 0
  br i1 %phi.cmp, label %if.end102.if.end109_crit_edge, label %if.then105

if.end102.if.end109_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end109

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp108 = icmp eq i32 %26, 0
  call void @rtl8xxxu_fill_iqk_matrix_a(ptr noundef %priv, i1 noundef zeroext true, ptr noundef nonnull %result, i32 noundef %candidate.2258, i1 noundef zeroext %cmp108) #4
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %if.end102.if.end109_crit_edge, %if.end102.thread
  %cmp56259 = phi i1 [ false, %if.end102.thread ], [ true, %if.end102.if.end109_crit_edge ], [ true, %if.then105 ]
  %candidate.2257 = phi i32 [ -1, %if.end102.thread ], [ %candidate.2258, %if.end102.if.end109_crit_edge ], [ %candidate.2258, %if.then105 ]
  %reg_ec4.1242 = phi i32 [ %40, %if.end102.thread ], [ %36, %if.end102.if.end109_crit_edge ], [ %36, %if.then105 ]
  %reg_eb4.0241 = phi i32 [ 256, %if.end102.thread ], [ %30, %if.end102.if.end109_crit_edge ], [ %30, %if.then105 ]
  %tx_paths = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 37
  %45 = ptrtoint ptr %tx_paths to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tx_paths, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %cmp110 = icmp ult i8 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg_eb4.0241)
  %tobool113.not = icmp eq i32 %reg_eb4.0241, 0
  %or.cond = select i1 %cmp110, i1 true, i1 %tobool113.not
  br i1 %or.cond, label %if.end109.if.end119_crit_edge, label %if.then114

if.end109.if.end119_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end119

if.then114:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg_ec4.1242)
  %cmp117 = icmp eq i32 %reg_ec4.1242, 0
  call void @rtl8xxxu_fill_iqk_matrix_b(ptr noundef %priv, i1 noundef zeroext %cmp56259, ptr noundef nonnull %result, i32 noundef %candidate.2257, i1 noundef zeroext %cmp117) #4
  br label %if.end119

if.end119:                                        ; preds = %if.then114, %if.end109.if.end119_crit_edge
  %bb_recovery_backup = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 56
  call void @rtl8xxxu_save_regs(ptr noundef %priv, ptr noundef nonnull @rtl8xxxu_iqk_phy_iq_bb_reg, ptr noundef %bb_recovery_backup, i32 noundef 9) #4
  %call121 = call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 1892, i32 noundef %call) #4
  %call122 = call i32 @rtl8xxxu_read_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -17) #4
  %or = or i32 %call122, 524288
  %call123 = call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -17, i32 noundef %or) #4
  %call124 = call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 48, i32 noundef 98304) #4
  %call125 = call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 49, i32 noundef 31) #4
  %call126 = call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 50, i32 noundef 942455) #4
  %call127 = call i32 @rtl8xxxu_read_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -19) #4
  %or128 = or i32 %call127, 32
  %call129 = call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -19, i32 noundef %or128) #4
  %call130 = call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 67, i32 noundef 196797) #4
  %rf_paths = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 35
  %47 = ptrtoint ptr %rf_paths to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rf_paths, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp132 = icmp ugt i8 %48, 1
  br i1 %cmp132, label %do.body135, label %if.end119.if.end151_crit_edge

if.end119.if.end151_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end151

do.body135:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8723bu_phy_iq_calibrate.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8723bu_phy_iq_calibrate, %if.then147)) #4
          to label %if.end151 [label %if.then147], !srcloc !77

if.then147:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8723bu_phy_iq_calibrate.__UNIQUE_ID_ddebug357, ptr noundef %dev1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.20) #4
  br label %if.end151

if.end151:                                        ; preds = %if.then147, %do.body135, %if.end119.if.end151_crit_edge
  call void @rtl8xxxu_gen2_prepare_calibrate(ptr noundef %priv, i8 noundef zeroext 0) #4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %result) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen2_config_channel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_parse_rxdesc24(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8723bu_init_aggregation(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 268) #4
  %0 = and i8 %call, -5
  %call2 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 640) #4
  %and4 = and i32 %call2, 2147418352
  %call5 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 268, i8 noundef zeroext %0) #4
  %call6 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 640, i32 noundef %and4) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8723bu_init_statistics(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 2198, i16 noundef zeroext 10000) #4
  %call1 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 2194, i16 noundef zeroext -1) #4
  %call2 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2200, i32 noundef -174) #4
  %call3 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2204, i32 noundef -1) #4
  %call4 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3624) #4
  %or = or i32 %call4, 255
  %call5 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef %or) #4
  %call6 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 2192) #4
  %or7 = or i32 %call6, 1792
  %call8 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2192, i32 noundef %or7) #4
  %call9 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3084) #4
  %or10 = or i32 %call9, 128
  %call11 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3084, i32 noundef %or10) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8723b_enable_rf(ptr noundef %priv) #0 align 64 {
entry:
  %h2c.i = alloca %struct.h2c_cmd, align 8
  %h2c = alloca %struct.h2c_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %h2c) #4
  %call = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3696) #4
  %or = or i32 %call, 12582912
  %call1 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3696, i32 noundef %or) #4
  %call2 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 1936, i8 noundef zeroext 5) #4
  %call3 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 1912, i8 noundef zeroext 1) #4
  %call4 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 64) #4
  %0 = or i8 %call4, 32
  %call7 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 64, i8 noundef zeroext %0) #4
  %call8 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 1, i32 noundef 1920) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %h2c.i) #4
  %1 = ptrtoint ptr %h2c.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 7421946569752051712, ptr %h2c.i, align 8
  %call.i = call i32 @rtl8xxxu_gen2_h2c_cmd(ptr noundef %priv, ptr noundef nonnull %h2c.i, i32 noundef 5) #4
  %2 = ptrtoint ptr %h2c.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 7426450080191741952, ptr %h2c.i, align 8
  %call8.i = call i32 @rtl8xxxu_gen2_h2c_cmd(ptr noundef %priv, ptr noundef nonnull %h2c.i, i32 noundef 5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %h2c.i) #4
  %3 = ptrtoint ptr %h2c to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 7926335344172072960, ptr %h2c, align 8
  %call9 = call i32 @rtl8xxxu_gen2_h2c_cmd(ptr noundef %priv, ptr noundef nonnull %h2c, i32 noundef 2) #4
  %call10 = call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 1902, i8 noundef zeroext 12) #4
  %call11 = call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 103) #4
  %4 = or i8 %call11, 32
  %call15 = call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 103, i8 noundef zeroext %4) #4
  %call16 = call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 56) #4
  %or17 = or i32 %call16, 2048
  %call18 = call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 56, i32 noundef %or17) #4
  %call19 = call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 2420, i8 noundef zeroext -1) #4
  %call20 = call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 2372) #4
  %or21 = or i32 %call20, 3
  %call22 = call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2372, i32 noundef %or21) #4
  %call23 = call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 2352, i8 noundef zeroext 119) #4
  %call24 = call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 76) #4
  %and = and i32 %call24, -25165825
  %or25 = or i32 %and, 8388608
  %call26 = call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 76, i32 noundef %or25) #4
  %call27 = call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 100) #4
  %5 = and i8 %call27, -2
  %call31 = call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 100, i8 noundef zeroext %5) #4
  %6 = ptrtoint ptr %h2c to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 7278098472807432192, ptr %h2c, align 8
  %call33 = call i32 @rtl8xxxu_gen2_h2c_cmd(ptr noundef %priv, ptr noundef nonnull %h2c, i32 noundef 3) #4
  %call34 = call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2376, i32 noundef 128) #4
  call void @rtl8723bu_set_ps_tdma(ptr noundef %priv, i8 noundef zeroext 8, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %call35 = call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 1728, i32 noundef 1431655765) #4
  %call36 = call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 1732, i32 noundef 1431655765) #4
  %call37 = call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 1736, i32 noundef 16777215) #4
  %call38 = call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 1740, i8 noundef zeroext 3) #4
  %7 = ptrtoint ptr %h2c to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 6989868096655720448, ptr %h2c, align 8
  %call41 = call i32 @rtl8xxxu_gen2_h2c_cmd(ptr noundef %priv, ptr noundef nonnull %h2c, i32 noundef 2) #4
  %8 = ptrtoint ptr %h2c to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 7133701809754865664, ptr %h2c, align 8
  %call44 = call i32 @rtl8xxxu_gen2_h2c_cmd(ptr noundef %priv, ptr noundef nonnull %h2c, i32 noundef 2) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %h2c) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen2_disable_rf(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen2_usb_quirks(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8723b_set_tx_power(ptr noundef %priv, i32 noundef %channel, i1 noundef zeroext %ht40) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl8xxxu_gen2_channel_to_group(i32 noundef %channel) #4
  %arrayidx = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 16, i32 %call
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
  %arrayidx15 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 18, i32 %call
  %2 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx15, align 1
  %ofdm_tx_power_diff = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 24
  %4 = ptrtoint ptr %ofdm_tx_power_diff to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %ofdm_tx_power_diff, align 1
  %bf.ashr = ashr i8 %bf.load, 4
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
  %bf.ashr35.pn.in.in = select i1 %ht40, ptr %ht40_tx_power_diff, ptr %ht20_tx_power_diff
  %7 = ptrtoint ptr %bf.ashr35.pn.in.in to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.ashr35.pn.in = load i8, ptr %bf.ashr35.pn.in.in, align 1
  %bf.ashr35.pn = ashr i8 %bf.ashr35.pn.in, 4
  %mcsbase.0 = add i8 %bf.ashr35.pn, %6
  %conv48 = zext i8 %mcsbase.0 to i32
  %or57 = mul nuw i32 %conv48, 16843009
  %call58 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3600, i32 noundef %or57) #4
  %call59 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3604, i32 noundef %or57) #4
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_load_firmware(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_disabled_to_emu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtl8xxxu_read16(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_write16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_write8(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_write32(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_read32(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl8xxxu_read8(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_flush_fifo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_active_to_lps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_firmware_self_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_init_phy_regs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_init_phy_rf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_write_rfreg(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen2_prepare_calibrate(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8723bu_phy_iqcalibrate(ptr noundef %priv, ptr nocapture noundef writeonly %result, i32 noundef %t) unnamed_addr #0 align 64 {
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
  tail call void @rtl8xxxu_save_regs(ptr noundef %priv, ptr noundef nonnull @rtl8723bu_phy_iqcalibrate.adda_regs, ptr noundef %adda_backup, i32 noundef 16) #4
  %mac_backup = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 54
  tail call void @rtl8xxxu_save_mac_regs(ptr noundef %priv, ptr noundef nonnull @rtl8723bu_phy_iqcalibrate.iqk_mac_regs, ptr noundef %mac_backup) #4
  %bb_backup = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 55
  tail call void @rtl8xxxu_save_regs(ptr noundef %priv, ptr noundef nonnull @rtl8723bu_phy_iqcalibrate.iqk_bb_regs, ptr noundef %bb_backup, i32 noundef 9) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @rtl8xxxu_path_adda_on(ptr noundef %priv, ptr noundef nonnull @rtl8723bu_phy_iqcalibrate.adda_regs, i1 noundef zeroext true) #4
  %mac_backup8 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 54
  tail call void @rtl8xxxu_mac_calibration(ptr noundef %priv, ptr noundef nonnull @rtl8723bu_phy_iqcalibrate.iqk_mac_regs, ptr noundef %mac_backup8) #4
  %call10 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 2564) #4
  %or = or i32 %call10, 251658240
  %call11 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2564, i32 noundef %or) #4
  %call12 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3076, i32 noundef 60839424) #4
  %call13 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3080, i32 noundef 524516) #4
  %call14 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2164, i32 noundef 572538880) #4
  %call15 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3624) #4
  %and16 = and i32 %call15, 255
  %call17 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef %and16) #4
  %call18 = tail call i32 @rtl8xxxu_read_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -17) #4
  %or19 = or i32 %call18, 524288
  %call20 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -17, i32 noundef %or19) #4
  %call21 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 48, i32 noundef 196608) #4
  %call22 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 49, i32 noundef 31) #4
  %call23 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 50, i32 noundef 1015735) #4
  %call24 = tail call i32 @rtl8xxxu_read_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -19) #4
  %or25 = or i32 %call24, 32
  %call26 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -19, i32 noundef %or25) #4
  %call27 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 67, i32 noundef 397245) #4
  %rf_paths.i = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 35
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %cmp28 = phi i1 [ true, %if.end ], [ false, %for.inc.for.body_crit_edge ]
  %call.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 2376) #4
  %call1.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3624) #4
  %and.i = and i32 %call1.i, 255
  %call2.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef %and.i) #4
  %call3.i = tail call i32 @rtl8xxxu_read_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -17) #4
  %or.i = or i32 %call3.i, 524288
  %call4.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -17, i32 noundef %or.i) #4
  %call5.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 48, i32 noundef 131072) #4
  %call6.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 49, i32 noundef 63) #4
  %call7.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 50, i32 noundef 819079) #4
  %call8.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3648, i32 noundef 16808960) #4
  %call9.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3652, i32 noundef 16795648) #4
  %call10.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3632, i32 noundef 402689052) #4
  %call11.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3636, i32 noundef 939559964) #4
  %call12.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3664, i32 noundef 939559964) #4
  %call13.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3668, i32 noundef 939559964) #4
  %call14.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3640, i32 noundef -2112617494) #4
  %call15.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3644, i32 noundef 672202752) #4
  %call16.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3672, i32 noundef -2112815104) #4
  %call17.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3676, i32 noundef 672202752) #4
  %call18.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3660, i32 noundef 4598033) #4
  %call19.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3624) #4
  %and20.i = and i32 %call19.i, 255
  %or21.i = or i32 %and20.i, -2139095040
  %call22.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef %or21.i) #4
  %2 = ptrtoint ptr %rf_paths.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_paths.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp ugt i8 %3, 1
  %..i = select i1 %cmp.i, i32 0, i32 640
  %call25.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2376, i32 noundef %..i) #4
  %call26.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 1892, i32 noundef 2048) #4
  %call27.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -117440512) #4
  %call28.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -134217728) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #4
  %call29.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2376, i32 noundef %call.i) #4
  %call30.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3624) #4
  %and31.i = and i32 %call30.i, 255
  %call32.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef %and31.i) #4
  %call33.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3756) #4
  %call34.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3732) #4
  %call35.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3740) #4
  %and40.i = and i32 %call33.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i)
  %tobool41.not.i = icmp eq i32 %and40.i, 0
  br i1 %tobool41.not.i, label %rtl8723bu_iqk_path_a.exit, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

rtl8723bu_iqk_path_a.exit:                        ; preds = %for.body
  %5 = and i32 %call35.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %shr.i = lshr i32 %call35.i, 16
  %and36.i = and i32 %shr.i, 1023
  %sub.i = sub nuw nsw i32 1024, %and36.i
  %spec.select.i = select i1 %tobool.not.i, i32 %and36.i, i32 %sub.i
  %and42.i = and i32 %call34.i, 67043328
  %and46.i = and i32 %call35.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 4325376, i32 %and46.i)
  %cmp47.not.i = icmp ne i32 %and46.i, 4325376
  call void @__sanitizer_cov_trace_const_cmp4(i32 17825792, i32 %and42.i)
  %cmp51.i = icmp ult i32 %and42.i, 17825792
  %or.cond111.i = select i1 %cmp51.i, i1 %cmp47.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 15728640, i32 %and42.i)
  %cmp55.i = icmp ugt i32 %and42.i, 15728640
  %or.cond112.i = and i1 %cmp55.i, %or.cond111.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select.i)
  %cmp58.i = icmp ult i32 %spec.select.i, 15
  %or.cond113.i = select i1 %or.cond112.i, i1 %cmp58.i, i1 false
  br i1 %or.cond113.i, label %for.end.thread, label %rtl8723bu_iqk_path_a.exit.for.inc_crit_edge

rtl8723bu_iqk_path_a.exit.for.inc_crit_edge:      ; preds = %rtl8723bu_iqk_path_a.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.end.thread:                                   ; preds = %rtl8723bu_iqk_path_a.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call34 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3624) #4
  %and35 = and i32 %call34, 255
  %call36 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef %and35) #4
  %call37 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3732) #4
  %shr = lshr i32 %call37, 16
  %and38 = and i32 %shr, 1023
  %arrayidx = getelementptr [8 x i32], ptr %result, i32 %t
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and38, ptr %arrayidx, align 4
  %call40 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3740) #4
  %shr41 = lshr i32 %call40, 16
  %and42 = and i32 %shr41, 1023
  %arrayidx44 = getelementptr [8 x i32], ptr %result, i32 %t, i32 1
  %7 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and42, ptr %arrayidx44, align 4
  br label %for.body57

for.inc:                                          ; preds = %rtl8723bu_iqk_path_a.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  br i1 %cmp28, label %for.inc.for.body_crit_edge, label %do.body

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.body:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8723bu_phy_iqcalibrate.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8723bu_phy_iqcalibrate, %if.then51)) #4
          to label %for.body57 [label %if.then51], !srcloc !77

if.then51:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8723bu_phy_iqcalibrate.__UNIQUE_ID_ddebug353, ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24) #4
  br label %for.body57

for.body57:                                       ; preds = %for.inc73.for.body57_crit_edge, %if.then51, %do.body, %for.end.thread
  %cmp55 = phi i1 [ false, %for.inc73.for.body57_crit_edge ], [ true, %do.body ], [ true, %for.end.thread ], [ true, %if.then51 ]
  %call.i230 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 2376) #4
  %call1.i231 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3624) #4
  %and.i232 = and i32 %call1.i231, 255
  %call2.i233 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef %and.i232) #4
  %call3.i234 = tail call i32 @rtl8xxxu_read_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -17) #4
  %or.i235 = or i32 %call3.i234, 524288
  %call4.i236 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -17, i32 noundef %or.i235) #4
  %call5.i237 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 48, i32 noundef 196608) #4
  %call6.i238 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 49, i32 noundef 31) #4
  %call7.i239 = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 50, i32 noundef 1015735) #4
  %call8.i240 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3648, i32 noundef 16808960) #4
  %call9.i241 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3652, i32 noundef 16795648) #4
  %call10.i242 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3632, i32 noundef 402689052) #4
  %call11.i243 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3636, i32 noundef 939559964) #4
  %call12.i244 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3664, i32 noundef 939559964) #4
  %call13.i245 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3668, i32 noundef 939559964) #4
  %call14.i246 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3640, i32 noundef -2112483344) #4
  %call15.i247 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3644, i32 noundef 672202752) #4
  %call16.i248 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3672, i32 noundef -2112815104) #4
  %call17.i249 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3676, i32 noundef 672202752) #4
  %call18.i250 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3660, i32 noundef 4630801) #4
  %call19.i251 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3624) #4
  %and20.i252 = and i32 %call19.i251, 255
  %or21.i253 = or i32 %and20.i252, -2139095040
  %call22.i254 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef %or21.i253) #4
  %8 = ptrtoint ptr %rf_paths.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %rf_paths.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.i256 = icmp ugt i8 %9, 1
  %..i257 = select i1 %cmp.i256, i32 0, i32 640
  %call25.i258 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2376, i32 noundef %..i257) #4
  %call26.i259 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 1892, i32 noundef 2048) #4
  %call27.i260 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -117440512) #4
  %call28.i261 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -134217728) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #4
  %call29.i262 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2376, i32 noundef %call.i230) #4
  %call30.i263 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3624) #4
  %and31.i264 = and i32 %call30.i263, 255
  %call32.i265 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef %and31.i264) #4
  %call33.i266 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3756) #4
  %call34.i267 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3732) #4
  %call35.i268 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3740) #4
  %shr.i269 = lshr i32 %call35.i268, 16
  %and36.i270 = and i32 %shr.i269, 1023
  %11 = and i32 %call35.i268, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i271 = icmp eq i32 %11, 0
  %sub.i272 = sub nuw nsw i32 1024, %and36.i270
  %spec.select.i273 = select i1 %tobool.not.i271, i32 %and36.i270, i32 %sub.i272
  %and40.i274 = and i32 %call33.i266, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i274)
  %tobool41.not.i275 = icmp eq i32 %and40.i274, 0
  br i1 %tobool41.not.i275, label %land.lhs.true.i277, label %for.body57.for.inc73_crit_edge

for.body57.for.inc73_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc73

land.lhs.true.i277:                               ; preds = %for.body57
  %and42.i276 = and i32 %call34.i267, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 21102592, i32 %and42.i276)
  %cmp43.not.i = icmp eq i32 %and42.i276, 21102592
  br i1 %cmp43.not.i, label %land.lhs.true.i277.for.inc73_crit_edge, label %land.lhs.true45.i

land.lhs.true.i277.for.inc73_crit_edge:           ; preds = %land.lhs.true.i277
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc73

land.lhs.true45.i:                                ; preds = %land.lhs.true.i277
  %and46.i278 = and i32 %call35.i268, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 4325376, i32 %and46.i278)
  %cmp47.not.i279 = icmp ne i32 %and46.i278, 4325376
  call void @__sanitizer_cov_trace_const_cmp4(i32 17825792, i32 %and42.i276)
  %cmp51.i280 = icmp ult i32 %and42.i276, 17825792
  %or.cond.i = select i1 %cmp47.not.i279, i1 %cmp51.i280, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 15728640, i32 %and42.i276)
  %cmp55.i281 = icmp ugt i32 %and42.i276, 15728640
  %or.cond249.i = select i1 %or.cond.i, i1 %cmp55.i281, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select.i273)
  %cmp58.i282 = icmp ult i32 %spec.select.i273, 15
  %or.cond250.i = select i1 %or.cond249.i, i1 %cmp58.i282, i1 false
  br i1 %or.cond250.i, label %if.then60.i, label %land.lhs.true45.i.for.inc73_crit_edge

land.lhs.true45.i.for.inc73_crit_edge:            ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc73

if.then60.i:                                      ; preds = %land.lhs.true45.i
  %shr67.i = lshr exact i32 %and46.i278, 16
  %or65.i = or i32 %and42.i276, %shr67.i
  %or68.i = or i32 %or65.i, -2147451904
  %call69.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3648, i32 noundef %or68.i) #4
  %call70.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3624) #4
  %and71.i = and i32 %call70.i, 255
  %call72.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef %and71.i) #4
  %call73.i = tail call i32 @rtl8xxxu_read_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -17) #4
  %or74.i = or i32 %call73.i, 524288
  %call75.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -17, i32 noundef %or74.i) #4
  %call76.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 48, i32 noundef 196608) #4
  %call77.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 49, i32 noundef 31) #4
  %call78.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 50, i32 noundef 1015159) #4
  %call79.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -33, i32 noundef 3968) #4
  %call80.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext 85, i32 noundef 262687) #4
  %call81.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3652, i32 noundef 16795648) #4
  %call82.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3632, i32 noundef 939559964) #4
  %call83.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3636, i32 noundef 402689052) #4
  %call84.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3664, i32 noundef 939559964) #4
  %call85.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3668, i32 noundef 939559964) #4
  %call86.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3640, i32 noundef -2112815104) #4
  %call87.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3644, i32 noundef 672530463) #4
  %call88.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3672, i32 noundef -2112815104) #4
  %call89.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3676, i32 noundef 672202752) #4
  %call90.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3660, i32 noundef 4630737) #4
  %call91.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3624) #4
  %and92.i = and i32 %call91.i, 255
  %or93.i = or i32 %and92.i, -2139095040
  %call94.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef %or93.i) #4
  %12 = ptrtoint ptr %rf_paths.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rf_paths.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp97.i = icmp ugt i8 %13, 1
  %.258.i = select i1 %cmp97.i, i32 0, i32 640
  %call102.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2376, i32 noundef %.258.i) #4
  %call104.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 1892, i32 noundef 2048) #4
  %call105.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -117440512) #4
  %call106.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3656, i32 noundef -134217728) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #4
  %call107.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2376, i32 noundef %call.i230) #4
  %call108.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3624) #4
  %and109.i = and i32 %call108.i, 255
  %call110.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef %and109.i) #4
  %call111.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3756) #4
  %call112.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3748) #4
  %call113.i = tail call i32 @rtl8xxxu_write_rfreg(ptr noundef %priv, i32 noundef 0, i8 noundef zeroext -33, i32 noundef 1920) #4
  %and121.i = and i32 %call111.i, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121.i)
  %tobool122.not.i = icmp eq i32 %and121.i, 0
  br i1 %tobool122.not.i, label %land.lhs.true123.i, label %if.then60.i.for.inc73_crit_edge

if.then60.i.for.inc73_crit_edge:                  ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc73

land.lhs.true123.i:                               ; preds = %if.then60.i
  %15 = and i32 %call111.i, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool117.not.i = icmp eq i32 %15, 0
  %shr114.i = lshr i32 %call111.i, 16
  %and115.i = and i32 %shr114.i, 1023
  %sub119.i = sub nuw nsw i32 1024, %and115.i
  %spec.select251.i = select i1 %tobool117.not.i, i32 %and115.i, i32 %sub119.i
  %and124.i = and i32 %call112.i, 67043328
  %and128.i = and i32 %call111.i, 67043328
  call void @__sanitizer_cov_trace_const_cmp4(i32 3538944, i32 %and128.i)
  %cmp129.not.i = icmp ne i32 %and128.i, 3538944
  call void @__sanitizer_cov_trace_const_cmp4(i32 17825792, i32 %and124.i)
  %cmp133.i = icmp ult i32 %and124.i, 17825792
  %or.cond253.i = select i1 %cmp133.i, i1 %cmp129.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 15728640, i32 %and124.i)
  %cmp137.i = icmp ugt i32 %and124.i, 15728640
  %or.cond254.i = and i1 %cmp137.i, %or.cond253.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %spec.select251.i)
  %cmp140.i = icmp ult i32 %spec.select251.i, 15
  %or.cond255.i = select i1 %or.cond254.i, i1 %cmp140.i, i1 false
  br i1 %or.cond255.i, label %for.end75.thread, label %land.lhs.true123.i.for.inc73_crit_edge

land.lhs.true123.i.for.inc73_crit_edge:           ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc73

for.end75.thread:                                 ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #6
  %call62 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3748) #4
  %shr63 = lshr i32 %call62, 16
  %and64 = and i32 %shr63, 1023
  %arrayidx66 = getelementptr [8 x i32], ptr %result, i32 %t, i32 2
  %16 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and64, ptr %arrayidx66, align 4
  %call67 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3756) #4
  %shr68 = lshr i32 %call67, 16
  %and69 = and i32 %shr68, 1023
  %arrayidx71 = getelementptr [8 x i32], ptr %result, i32 %t, i32 3
  %17 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and69, ptr %arrayidx71, align 4
  br label %if.end94

for.inc73:                                        ; preds = %land.lhs.true123.i.for.inc73_crit_edge, %if.then60.i.for.inc73_crit_edge, %land.lhs.true45.i.for.inc73_crit_edge, %land.lhs.true.i277.for.inc73_crit_edge, %for.body57.for.inc73_crit_edge
  %tobool76.not = phi i1 [ true, %for.body57.for.inc73_crit_edge ], [ false, %if.then60.i.for.inc73_crit_edge ], [ true, %land.lhs.true45.i.for.inc73_crit_edge ], [ true, %land.lhs.true.i277.for.inc73_crit_edge ], [ false, %land.lhs.true123.i.for.inc73_crit_edge ]
  br i1 %cmp55, label %for.inc73.for.body57_crit_edge, label %for.end75

for.inc73.for.body57_crit_edge:                   ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body57

for.end75:                                        ; preds = %for.inc73
  br i1 %tobool76.not, label %do.body78, label %for.end75.if.end94_crit_edge

for.end75.if.end94_crit_edge:                     ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end94

do.body78:                                        ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rtl8723bu_phy_iqcalibrate.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rtl8723bu_phy_iqcalibrate, %if.then90)) #4
          to label %if.end94 [label %if.then90], !srcloc !77

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rtl8723bu_phy_iqcalibrate.__UNIQUE_ID_ddebug354, ptr noundef %dev1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24) #4
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %do.body78, %for.end75.if.end94_crit_edge, %for.end75.thread
  %tx_paths = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 37
  %18 = ptrtoint ptr %tx_paths to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tx_paths, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp96 = icmp ugt i8 %19, 1
  br i1 %cmp96, label %do.end101, label %if.end94.if.end102_crit_edge

if.end94.if.end102_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102

do.end101:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24) #7
  br label %if.end102

if.end102:                                        ; preds = %do.end101, %if.end94.if.end102_crit_edge
  %call103 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3624) #4
  %and104 = and i32 %call103, 255
  %call105 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3624, i32 noundef %and104) #4
  br i1 %cmp, label %if.end102.if.end136_crit_edge, label %if.then107

if.end102.if.end136_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end136

if.then107:                                       ; preds = %if.end102
  %adda_backup108 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 53
  tail call void @rtl8xxxu_restore_regs(ptr noundef %priv, ptr noundef nonnull @rtl8723bu_phy_iqcalibrate.adda_regs, ptr noundef %adda_backup108, i32 noundef 16) #4
  tail call void @rtl8xxxu_restore_mac_regs(ptr noundef %priv, ptr noundef nonnull @rtl8723bu_phy_iqcalibrate.iqk_mac_regs, ptr noundef %mac_backup8) #4
  %bb_backup112 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 55
  tail call void @rtl8xxxu_restore_regs(ptr noundef %priv, ptr noundef nonnull @rtl8723bu_phy_iqcalibrate.iqk_bb_regs, ptr noundef %bb_backup112, i32 noundef 9) #4
  %call114 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3152) #4
  %and115 = and i32 %call114, -256
  %or116 = or i32 %and115, 80
  %call117 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3152, i32 noundef %or116) #4
  %conv118 = and i32 %call, 255
  %or119 = or i32 %and115, %conv118
  %call120 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3152, i32 noundef %or119) #4
  %20 = ptrtoint ptr %tx_paths to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tx_paths, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp123 = icmp ugt i8 %21, 1
  br i1 %cmp123, label %if.then125, label %if.then107.if.end133_crit_edge

if.then107.if.end133_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end133

if.then125:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #6
  %call126 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 3160) #4
  %and127 = and i32 %call126, -256
  %or128 = or i32 %and127, 80
  %call129 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3160, i32 noundef %or128) #4
  %conv130 = and i32 %call2, 255
  %or131 = or i32 %and127, %conv130
  %call132 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3160, i32 noundef %or131) #4
  br label %if.end133

if.end133:                                        ; preds = %if.then125, %if.then107.if.end133_crit_edge
  %call134 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3632, i32 noundef 16813056) #4
  %call135 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 3636, i32 noundef 16813056) #4
  br label %if.end136

if.end136:                                        ; preds = %if.end133, %if.end102.if.end136_crit_edge
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
declare dso_local i32 @rtl8xxxu_read_rfreg(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_save_mac_regs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_path_adda_on(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_mac_calibration(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_restore_regs(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_restore_mac_regs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_gen2_h2c_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8723bu_set_ps_tdma(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_gen2_channel_to_group(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !28, !29, !30, !31, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !48, !49, !51, !53, !55, !57, !58, !59, !61, !62, !64, !65, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @rtl8723bu_fops, !1, !"rtl8723bu_fops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 1643, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 451, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rtl8723bu_parse_efuse._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @rtl8723bu_parse_efuse._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 452, i32 2}
!12 = !{ptr @rtl8723bu_parse_efuse._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @rtl8723bu_parse_efuse._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 458, i32 3}
!16 = !{ptr @rtl8723bu_parse_efuse._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rtl8723bu_parse_efuse._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 462, i32 4}
!20 = !{ptr @rtl8723bu_parse_efuse._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @rtl8723bu_parse_efuse._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 474, i32 13}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 476, i32 13}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 1243, i32 3}
!28 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rtl8723bu_active_to_emu._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @rtl8723bu_active_to_emu._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @rtl8723b_phy_1t_init_table, !33, !"rtl8723b_phy_1t_init_table", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 66, i32 33}
!34 = !{ptr @rtl8xxx_agc_8723bu_table, !35, !"rtl8xxx_agc_8723bu_table", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 167, i32 33}
!36 = !{ptr @rtl8723bu_radioa_1t_init_table, !37, !"rtl8723bu_radioa_1t_init_table", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 238, i32 33}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 1168, i32 3}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rtl8723bu_phy_iq_calibrate.__UNIQUE_ID_ddebug355, !39, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 1169, i32 3}
!45 = !{ptr @rtl8723bu_phy_iq_calibrate.__UNIQUE_ID_ddebug356, !44, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 1205, i32 3}
!48 = !{ptr @rtl8723bu_phy_iq_calibrate.__UNIQUE_ID_ddebug357, !47, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!49 = !{ptr @rtl8723bu_phy_iqcalibrate.adda_regs, !50, !"adda_regs", i1 false, i1 false}
!50 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 885, i32 19}
!51 = !{ptr @rtl8723bu_phy_iqcalibrate.iqk_mac_regs, !52, !"iqk_mac_regs", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 895, i32 19}
!53 = !{ptr @rtl8723bu_phy_iqcalibrate.iqk_bb_regs, !54, !"iqk_bb_regs", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 899, i32 19}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 976, i32 3}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rtl8723bu_phy_iqcalibrate.__UNIQUE_ID_ddebug353, !56, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 993, i32 3}
!61 = !{ptr @rtl8723bu_phy_iqcalibrate.__UNIQUE_ID_ddebug354, !60, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 997, i32 3}
!64 = !{ptr @rtl8723bu_phy_iqcalibrate._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @rtl8723bu_phy_iqcalibrate._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @rtl8723b_mac_init_table, !67, !"rtl8723b_mac_init_table", i1 false, i1 false}
!67 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723b.c", i32 35, i32 32}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 2148741531, i64 2148741536, i64 2148741549, i64 2148741593, i64 2148741627, i64 2148741648}
