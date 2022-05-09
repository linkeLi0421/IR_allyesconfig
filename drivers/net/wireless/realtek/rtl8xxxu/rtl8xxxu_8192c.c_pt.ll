; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtl8xxxu_reg8val = type { i16, i8 }
%struct.rtl8xxxu_fileops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i32, i32, i32, i32, i16, i8, i8, ptr, i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtl8xxxu_power_base = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rtl8xxxu_rfregval = type { i8, i32 }
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
%struct.atomic_t = type { i32 }
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

@rtl8xxxu_gen1_mac_init_table = external dso_local global [0 x %struct.rtl8xxxu_reg8val], align 2
@rtl8192cu_fops = dso_local global { %struct.rtl8xxxu_fileops, [36 x i8] } { %struct.rtl8xxxu_fileops { ptr @rtl8192cu_parse_efuse, ptr @rtl8192cu_load_firmware, ptr @rtl8192cu_power_on, ptr @rtl8xxxu_power_off, ptr @rtl8xxxu_reset_8051, ptr @rtl8xxxu_init_llt_table, ptr @rtl8xxxu_gen1_init_phy_bb, ptr @rtl8192cu_init_phy_rf, ptr null, ptr @rtl8xxxu_gen1_phy_iq_calibrate, ptr @rtl8xxxu_gen1_config_channel, ptr @rtl8xxxu_parse_rxdesc16, ptr @rtl8xxxu_gen1_init_aggregation, ptr null, ptr @rtl8xxxu_gen1_enable_rf, ptr @rtl8xxxu_gen1_disable_rf, ptr @rtl8xxxu_gen1_usb_quirks, ptr @rtl8xxxu_gen1_set_tx_power, ptr @rtl8xxxu_update_rate_mask, ptr @rtl8xxxu_gen1_report_connect, ptr @rtl8xxxu_fill_txdesc_v1, i32 128, i32 16000, i8 32, i8 24, i8 0, i32 186328480, i32 198911392, i32 81470884, i32 186328484, i16 10239, i8 1, i8 1, ptr @rtl8xxxu_gen1_mac_init_table, i8 -8, i8 12, i8 2, i8 2 }, [36 x i8] zeroinitializer }, align 32
@rtl8192cu_parse_efuse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 388, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Vendor: %.7s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl8192cu_parse_efuse\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl8192cu_parse_efuse._entry_ptr = internal global ptr @rtl8192cu_parse_efuse._entry, section ".printk_index", align 4
@rtl8192cu_parse_efuse._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 390, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Product: %.20s\0A\00", [16 x i8] zeroinitializer }, align 32
@rtl8192cu_parse_efuse._entry_ptr.7 = internal global ptr @rtl8192cu_parse_efuse._entry.5, section ".printk_index", align 4
@rtl8192c_power_base = internal global { %struct.rtl8xxxu_power_base, [32 x i8] } { %struct.rtl8xxxu_power_base { i32 118033420, i32 16909317, i32 0, i32 0, i32 185338894, i32 16975110, i32 185339150, i32 16975113, i32 118033420, i32 16909317, i32 0, i32 0, i32 185339150, i32 16975113, i32 185339150, i32 16975113 }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"8188RU\00", [25 x i8] zeroinitializer }, align 32
@rtl8188r_power_base = internal global { %struct.rtl8xxxu_power_base, [32 x i8] } { %struct.rtl8xxxu_power_base { i32 101189640, i32 263174, i32 0, i32 0, i32 67503624, i32 131588, i32 67503624, i32 131588, i32 101189640, i32 263174, i32 0, i32 0, i32 67503624, i32 131588, i32 67503624, i32 131588 }, [32 x i8] zeroinitializer }, align 32
@rtl8xxxu_debug = external dso_local local_unnamed_addr global i32, align 4
@rtl8192cu_parse_efuse._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 407, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: dumping efuse (0x%02zx bytes):\0A\00", [60 x i8] zeroinitializer }, align 32
@rtl8192cu_parse_efuse._entry_ptr.11 = internal global ptr @rtl8192cu_parse_efuse._entry.9, section ".printk_index", align 4
@rtl8192cu_parse_efuse._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 409, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%02x: %8ph\0A\00", [20 x i8] zeroinitializer }, align 32
@rtl8192cu_parse_efuse._entry_ptr.14 = internal global ptr @rtl8192cu_parse_efuse._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtlwifi/rtl8192cufw_TMSC.bin\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtlwifi/rtl8192cufw_B.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtlwifi/rtl8192cufw_A.bin\00", [38 x i8] zeroinitializer }, align 32
@rtl8192cu_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: Poll failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtl8192cu_power_on\00", [45 x i8] zeroinitializer }, align 32
@rtl8192cu_power_on._entry_ptr = internal global ptr @rtl8192cu_power_on._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl8192cu_power_on._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: Enabling LDOV12D (%02x)\0A\00", [33 x i8] zeroinitializer }, align 32
@rtl8192cu_power_on._entry_ptr.22 = internal global ptr @rtl8192cu_power_on._entry.20, section ".printk_index", align 4
@rtl8192cu_power_on._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: FSMCO_MAC_ENABLE poll failed\0A\00", [60 x i8] zeroinitializer }, align 32
@rtl8192cu_power_on._entry_ptr.25 = internal global ptr @rtl8192cu_power_on._entry.23, section ".printk_index", align 4
@rtl8192cu_power_on._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: APSD_CTRL poll failed\0A\00", [35 x i8] zeroinitializer }, align 32
@rtl8192cu_power_on._entry_ptr.28 = internal global ptr @rtl8192cu_power_on._entry.26, section ".printk_index", align 4
@rtl8188ru_radioa_1t_highpa_table = internal global { [142 x %struct.rtl8xxxu_rfregval], [272 x i8] } { [142 x %struct.rtl8xxxu_rfregval] [%struct.rtl8xxxu_rfregval { i8 0, i32 196953 }, %struct.rtl8xxxu_rfregval { i8 1, i32 201348 }, %struct.rtl8xxxu_rfregval { i8 2, i32 622592 }, %struct.rtl8xxxu_rfregval { i8 3, i32 101475 }, %struct.rtl8xxxu_rfregval { i8 4, i32 135399 }, %struct.rtl8xxxu_rfregval { i8 9, i32 132175 }, %struct.rtl8xxxu_rfregval { i8 10, i32 110000 }, %struct.rtl8xxxu_rfregval { i8 11, i32 346215 }, %struct.rtl8xxxu_rfregval { i8 12, i32 563502 }, %struct.rtl8xxxu_rfregval { i8 13, i32 58665 }, %struct.rtl8xxxu_rfregval { i8 14, i32 236775 }, %struct.rtl8xxxu_rfregval { i8 15, i32 1105 }, %struct.rtl8xxxu_rfregval { i8 25, i32 0 }, %struct.rtl8xxxu_rfregval { i8 26, i32 597 }, %struct.rtl8xxxu_rfregval { i8 27, i32 395776 }, %struct.rtl8xxxu_rfregval { i8 28, i32 1033080 }, %struct.rtl8xxxu_rfregval { i8 29, i32 660048 }, %struct.rtl8xxxu_rfregval { i8 30, i32 279647 }, %struct.rtl8xxxu_rfregval { i8 31, i32 524289 }, %struct.rtl8xxxu_rfregval { i8 32, i32 46612 }, %struct.rtl8xxxu_rfregval { i8 33, i32 442368 }, %struct.rtl8xxxu_rfregval { i8 34, i32 2108 }, %struct.rtl8xxxu_rfregval { i8 35, i32 5464 }, %struct.rtl8xxxu_rfregval { i8 36, i32 96 }, %struct.rtl8xxxu_rfregval { i8 37, i32 1155 }, %struct.rtl8xxxu_rfregval { i8 38, i32 323584 }, %struct.rtl8xxxu_rfregval { i8 39, i32 968665 }, %struct.rtl8xxxu_rfregval { i8 40, i32 620480 }, %struct.rtl8xxxu_rfregval { i8 41, i32 18307 }, %struct.rtl8xxxu_rfregval { i8 42, i32 1 }, %struct.rtl8xxxu_rfregval { i8 43, i32 135988 }, %struct.rtl8xxxu_rfregval { i8 42, i32 0 }, %struct.rtl8xxxu_rfregval { i8 43, i32 84 }, %struct.rtl8xxxu_rfregval { i8 42, i32 1 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 340787 }, %struct.rtl8xxxu_rfregval { i8 44, i32 12 }, %struct.rtl8xxxu_rfregval { i8 42, i32 2 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 373555 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 3 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 406323 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 4 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 439091 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 5 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 471859 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 6 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1801 }, %struct.rtl8xxxu_rfregval { i8 43, i32 373555 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 7 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1801 }, %struct.rtl8xxxu_rfregval { i8 43, i32 406323 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 8 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 308019 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 9 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 340787 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 10 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 373555 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 11 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 406323 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 12 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 439091 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 13 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 471859 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 14 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1291 }, %struct.rtl8xxxu_rfregval { i8 43, i32 419430 }, %struct.rtl8xxxu_rfregval { i8 44, i32 26 }, %struct.rtl8xxxu_rfregval { i8 42, i32 917504 }, %struct.rtl8xxxu_rfregval { i8 16, i32 262159 }, %struct.rtl8xxxu_rfregval { i8 17, i32 930300 }, %struct.rtl8xxxu_rfregval { i8 16, i32 393231 }, %struct.rtl8xxxu_rfregval { i8 17, i32 1047032 }, %struct.rtl8xxxu_rfregval { i8 16, i32 131087 }, %struct.rtl8xxxu_rfregval { i8 17, i32 132089 }, %struct.rtl8xxxu_rfregval { i8 16, i32 196623 }, %struct.rtl8xxxu_rfregval { i8 17, i32 1045760 }, %struct.rtl8xxxu_rfregval { i8 16, i32 0 }, %struct.rtl8xxxu_rfregval { i8 17, i32 0 }, %struct.rtl8xxxu_rfregval { i8 16, i32 524303 }, %struct.rtl8xxxu_rfregval { i8 17, i32 258304 }, %struct.rtl8xxxu_rfregval { i8 16, i32 589839 }, %struct.rtl8xxxu_rfregval { i8 17, i32 143616 }, %struct.rtl8xxxu_rfregval { i8 18, i32 884736 }, %struct.rtl8xxxu_rfregval { i8 18, i32 589824 }, %struct.rtl8xxxu_rfregval { i8 18, i32 331776 }, %struct.rtl8xxxu_rfregval { i8 18, i32 73728 }, %struct.rtl8xxxu_rfregval { i8 19, i32 167860 }, %struct.rtl8xxxu_rfregval { i8 19, i32 151464 }, %struct.rtl8xxxu_rfregval { i8 19, i32 133028 }, %struct.rtl8xxxu_rfregval { i8 19, i32 115632 }, %struct.rtl8xxxu_rfregval { i8 19, i32 99236 }, %struct.rtl8xxxu_rfregval { i8 19, i32 82840 }, %struct.rtl8xxxu_rfregval { i8 19, i32 65956 }, %struct.rtl8xxxu_rfregval { i8 19, i32 49560 }, %struct.rtl8xxxu_rfregval { i8 19, i32 32932 }, %struct.rtl8xxxu_rfregval { i8 19, i32 16536 }, %struct.rtl8xxxu_rfregval { i8 19, i32 0 }, %struct.rtl8xxxu_rfregval { i8 20, i32 103500 }, %struct.rtl8xxxu_rfregval { i8 20, i32 365636 }, %struct.rtl8xxxu_rfregval { i8 20, i32 627788 }, %struct.rtl8xxxu_rfregval { i8 20, i32 889924 }, %struct.rtl8xxxu_rfregval { i8 21, i32 62469 }, %struct.rtl8xxxu_rfregval { i8 21, i32 324613 }, %struct.rtl8xxxu_rfregval { i8 21, i32 586757 }, %struct.rtl8xxxu_rfregval { i8 21, i32 848901 }, %struct.rtl8xxxu_rfregval { i8 22, i32 918320 }, %struct.rtl8xxxu_rfregval { i8 22, i32 656176 }, %struct.rtl8xxxu_rfregval { i8 22, i32 394032 }, %struct.rtl8xxxu_rfregval { i8 22, i32 131888 }, %struct.rtl8xxxu_rfregval { i8 0, i32 65881 }, %struct.rtl8xxxu_rfregval { i8 24, i32 62465 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 31, i32 524291 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 30, i32 279639 }, %struct.rtl8xxxu_rfregval { i8 31, i32 524288 }, %struct.rtl8xxxu_rfregval { i8 0, i32 196953 }, %struct.rtl8xxxu_rfregval { i8 -1, i32 -1 }], [272 x i8] zeroinitializer }, align 32
@rtl8192cu_radioa_1t_init_table = internal global { [142 x %struct.rtl8xxxu_rfregval], [272 x i8] } { [142 x %struct.rtl8xxxu_rfregval] [%struct.rtl8xxxu_rfregval { i8 0, i32 196953 }, %struct.rtl8xxxu_rfregval { i8 1, i32 201348 }, %struct.rtl8xxxu_rfregval { i8 2, i32 622592 }, %struct.rtl8xxxu_rfregval { i8 3, i32 101475 }, %struct.rtl8xxxu_rfregval { i8 4, i32 135399 }, %struct.rtl8xxxu_rfregval { i8 9, i32 132175 }, %struct.rtl8xxxu_rfregval { i8 10, i32 110001 }, %struct.rtl8xxxu_rfregval { i8 11, i32 346215 }, %struct.rtl8xxxu_rfregval { i8 12, i32 563502 }, %struct.rtl8xxxu_rfregval { i8 13, i32 58668 }, %struct.rtl8xxxu_rfregval { i8 14, i32 236775 }, %struct.rtl8xxxu_rfregval { i8 15, i32 1105 }, %struct.rtl8xxxu_rfregval { i8 25, i32 0 }, %struct.rtl8xxxu_rfregval { i8 26, i32 66133 }, %struct.rtl8xxxu_rfregval { i8 27, i32 395776 }, %struct.rtl8xxxu_rfregval { i8 28, i32 1033080 }, %struct.rtl8xxxu_rfregval { i8 29, i32 660048 }, %struct.rtl8xxxu_rfregval { i8 30, i32 279647 }, %struct.rtl8xxxu_rfregval { i8 31, i32 524289 }, %struct.rtl8xxxu_rfregval { i8 32, i32 46612 }, %struct.rtl8xxxu_rfregval { i8 33, i32 442368 }, %struct.rtl8xxxu_rfregval { i8 34, i32 0 }, %struct.rtl8xxxu_rfregval { i8 35, i32 5464 }, %struct.rtl8xxxu_rfregval { i8 36, i32 96 }, %struct.rtl8xxxu_rfregval { i8 37, i32 1155 }, %struct.rtl8xxxu_rfregval { i8 38, i32 323584 }, %struct.rtl8xxxu_rfregval { i8 39, i32 968665 }, %struct.rtl8xxxu_rfregval { i8 40, i32 358336 }, %struct.rtl8xxxu_rfregval { i8 41, i32 18307 }, %struct.rtl8xxxu_rfregval { i8 42, i32 1 }, %struct.rtl8xxxu_rfregval { i8 43, i32 135988 }, %struct.rtl8xxxu_rfregval { i8 42, i32 0 }, %struct.rtl8xxxu_rfregval { i8 43, i32 84 }, %struct.rtl8xxxu_rfregval { i8 42, i32 1 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 340787 }, %struct.rtl8xxxu_rfregval { i8 44, i32 12 }, %struct.rtl8xxxu_rfregval { i8 42, i32 2 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 373555 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 3 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 406323 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 4 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 439091 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 5 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 471859 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 6 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1801 }, %struct.rtl8xxxu_rfregval { i8 43, i32 373555 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 7 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1801 }, %struct.rtl8xxxu_rfregval { i8 43, i32 406323 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 8 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 308019 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 9 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 340787 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 10 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 373555 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 11 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 406323 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 12 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 439091 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 13 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 471859 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 14 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1291 }, %struct.rtl8xxxu_rfregval { i8 43, i32 419430 }, %struct.rtl8xxxu_rfregval { i8 44, i32 26 }, %struct.rtl8xxxu_rfregval { i8 42, i32 917504 }, %struct.rtl8xxxu_rfregval { i8 16, i32 262159 }, %struct.rtl8xxxu_rfregval { i8 17, i32 930300 }, %struct.rtl8xxxu_rfregval { i8 16, i32 393231 }, %struct.rtl8xxxu_rfregval { i8 17, i32 1047032 }, %struct.rtl8xxxu_rfregval { i8 16, i32 131087 }, %struct.rtl8xxxu_rfregval { i8 17, i32 132089 }, %struct.rtl8xxxu_rfregval { i8 16, i32 196623 }, %struct.rtl8xxxu_rfregval { i8 17, i32 1045760 }, %struct.rtl8xxxu_rfregval { i8 16, i32 0 }, %struct.rtl8xxxu_rfregval { i8 17, i32 0 }, %struct.rtl8xxxu_rfregval { i8 16, i32 524303 }, %struct.rtl8xxxu_rfregval { i8 17, i32 258304 }, %struct.rtl8xxxu_rfregval { i8 16, i32 589839 }, %struct.rtl8xxxu_rfregval { i8 17, i32 143616 }, %struct.rtl8xxxu_rfregval { i8 18, i32 204800 }, %struct.rtl8xxxu_rfregval { i8 18, i32 462848 }, %struct.rtl8xxxu_rfregval { i8 18, i32 720896 }, %struct.rtl8xxxu_rfregval { i8 18, i32 1032192 }, %struct.rtl8xxxu_rfregval { i8 19, i32 165811 }, %struct.rtl8xxxu_rfregval { i8 19, i32 148663 }, %struct.rtl8xxxu_rfregval { i8 19, i32 132267 }, %struct.rtl8xxxu_rfregval { i8 19, i32 115871 }, %struct.rtl8xxxu_rfregval { i8 19, i32 99475 }, %struct.rtl8xxxu_rfregval { i8 19, i32 82587 }, %struct.rtl8xxxu_rfregval { i8 19, i32 66201 }, %struct.rtl8xxxu_rfregval { i8 19, i32 49820 }, %struct.rtl8xxxu_rfregval { i8 19, i32 33184 }, %struct.rtl8xxxu_rfregval { i8 19, i32 16556 }, %struct.rtl8xxxu_rfregval { i8 19, i32 32 }, %struct.rtl8xxxu_rfregval { i8 20, i32 103500 }, %struct.rtl8xxxu_rfregval { i8 20, i32 365636 }, %struct.rtl8xxxu_rfregval { i8 20, i32 627788 }, %struct.rtl8xxxu_rfregval { i8 20, i32 889924 }, %struct.rtl8xxxu_rfregval { i8 21, i32 62469 }, %struct.rtl8xxxu_rfregval { i8 21, i32 324613 }, %struct.rtl8xxxu_rfregval { i8 21, i32 586757 }, %struct.rtl8xxxu_rfregval { i8 21, i32 848901 }, %struct.rtl8xxxu_rfregval { i8 22, i32 918320 }, %struct.rtl8xxxu_rfregval { i8 22, i32 656176 }, %struct.rtl8xxxu_rfregval { i8 22, i32 394032 }, %struct.rtl8xxxu_rfregval { i8 22, i32 131888 }, %struct.rtl8xxxu_rfregval { i8 0, i32 65881 }, %struct.rtl8xxxu_rfregval { i8 24, i32 62465 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 31, i32 524291 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 30, i32 279639 }, %struct.rtl8xxxu_rfregval { i8 31, i32 524288 }, %struct.rtl8xxxu_rfregval { i8 0, i32 196953 }, %struct.rtl8xxxu_rfregval { i8 -1, i32 -1 }], [272 x i8] zeroinitializer }, align 32
@rtl8192cu_radioa_2t_init_table = internal global { [142 x %struct.rtl8xxxu_rfregval], [272 x i8] } { [142 x %struct.rtl8xxxu_rfregval] [%struct.rtl8xxxu_rfregval { i8 0, i32 196953 }, %struct.rtl8xxxu_rfregval { i8 1, i32 201348 }, %struct.rtl8xxxu_rfregval { i8 2, i32 622592 }, %struct.rtl8xxxu_rfregval { i8 3, i32 101475 }, %struct.rtl8xxxu_rfregval { i8 4, i32 135399 }, %struct.rtl8xxxu_rfregval { i8 9, i32 132175 }, %struct.rtl8xxxu_rfregval { i8 10, i32 110001 }, %struct.rtl8xxxu_rfregval { i8 11, i32 346215 }, %struct.rtl8xxxu_rfregval { i8 12, i32 563502 }, %struct.rtl8xxxu_rfregval { i8 13, i32 58668 }, %struct.rtl8xxxu_rfregval { i8 14, i32 236775 }, %struct.rtl8xxxu_rfregval { i8 15, i32 1105 }, %struct.rtl8xxxu_rfregval { i8 25, i32 0 }, %struct.rtl8xxxu_rfregval { i8 26, i32 66133 }, %struct.rtl8xxxu_rfregval { i8 27, i32 395776 }, %struct.rtl8xxxu_rfregval { i8 28, i32 1033080 }, %struct.rtl8xxxu_rfregval { i8 29, i32 660048 }, %struct.rtl8xxxu_rfregval { i8 30, i32 279647 }, %struct.rtl8xxxu_rfregval { i8 31, i32 524289 }, %struct.rtl8xxxu_rfregval { i8 32, i32 46612 }, %struct.rtl8xxxu_rfregval { i8 33, i32 442368 }, %struct.rtl8xxxu_rfregval { i8 34, i32 0 }, %struct.rtl8xxxu_rfregval { i8 35, i32 5464 }, %struct.rtl8xxxu_rfregval { i8 36, i32 96 }, %struct.rtl8xxxu_rfregval { i8 37, i32 1155 }, %struct.rtl8xxxu_rfregval { i8 38, i32 323584 }, %struct.rtl8xxxu_rfregval { i8 39, i32 968665 }, %struct.rtl8xxxu_rfregval { i8 40, i32 358336 }, %struct.rtl8xxxu_rfregval { i8 41, i32 18307 }, %struct.rtl8xxxu_rfregval { i8 42, i32 1 }, %struct.rtl8xxxu_rfregval { i8 43, i32 135988 }, %struct.rtl8xxxu_rfregval { i8 42, i32 0 }, %struct.rtl8xxxu_rfregval { i8 43, i32 84 }, %struct.rtl8xxxu_rfregval { i8 42, i32 1 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 340787 }, %struct.rtl8xxxu_rfregval { i8 44, i32 12 }, %struct.rtl8xxxu_rfregval { i8 42, i32 2 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 373555 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 3 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 406323 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 4 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 439091 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 5 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 471859 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 6 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1801 }, %struct.rtl8xxxu_rfregval { i8 43, i32 373555 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 7 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1801 }, %struct.rtl8xxxu_rfregval { i8 43, i32 406323 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 8 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 308019 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 9 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 340787 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 10 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 373555 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 11 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 406323 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 12 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 439091 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 13 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 471859 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 14 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1291 }, %struct.rtl8xxxu_rfregval { i8 43, i32 419430 }, %struct.rtl8xxxu_rfregval { i8 44, i32 26 }, %struct.rtl8xxxu_rfregval { i8 42, i32 917504 }, %struct.rtl8xxxu_rfregval { i8 16, i32 262159 }, %struct.rtl8xxxu_rfregval { i8 17, i32 930300 }, %struct.rtl8xxxu_rfregval { i8 16, i32 393231 }, %struct.rtl8xxxu_rfregval { i8 17, i32 1047032 }, %struct.rtl8xxxu_rfregval { i8 16, i32 131087 }, %struct.rtl8xxxu_rfregval { i8 17, i32 132089 }, %struct.rtl8xxxu_rfregval { i8 16, i32 196623 }, %struct.rtl8xxxu_rfregval { i8 17, i32 1045760 }, %struct.rtl8xxxu_rfregval { i8 16, i32 0 }, %struct.rtl8xxxu_rfregval { i8 17, i32 0 }, %struct.rtl8xxxu_rfregval { i8 16, i32 524303 }, %struct.rtl8xxxu_rfregval { i8 17, i32 258304 }, %struct.rtl8xxxu_rfregval { i8 16, i32 589839 }, %struct.rtl8xxxu_rfregval { i8 17, i32 143616 }, %struct.rtl8xxxu_rfregval { i8 18, i32 204800 }, %struct.rtl8xxxu_rfregval { i8 18, i32 462848 }, %struct.rtl8xxxu_rfregval { i8 18, i32 720896 }, %struct.rtl8xxxu_rfregval { i8 18, i32 1032192 }, %struct.rtl8xxxu_rfregval { i8 19, i32 165811 }, %struct.rtl8xxxu_rfregval { i8 19, i32 148663 }, %struct.rtl8xxxu_rfregval { i8 19, i32 132267 }, %struct.rtl8xxxu_rfregval { i8 19, i32 115871 }, %struct.rtl8xxxu_rfregval { i8 19, i32 99475 }, %struct.rtl8xxxu_rfregval { i8 19, i32 82587 }, %struct.rtl8xxxu_rfregval { i8 19, i32 66201 }, %struct.rtl8xxxu_rfregval { i8 19, i32 49820 }, %struct.rtl8xxxu_rfregval { i8 19, i32 33184 }, %struct.rtl8xxxu_rfregval { i8 19, i32 16556 }, %struct.rtl8xxxu_rfregval { i8 19, i32 32 }, %struct.rtl8xxxu_rfregval { i8 20, i32 103500 }, %struct.rtl8xxxu_rfregval { i8 20, i32 365636 }, %struct.rtl8xxxu_rfregval { i8 20, i32 627788 }, %struct.rtl8xxxu_rfregval { i8 20, i32 889924 }, %struct.rtl8xxxu_rfregval { i8 21, i32 62500 }, %struct.rtl8xxxu_rfregval { i8 21, i32 324644 }, %struct.rtl8xxxu_rfregval { i8 21, i32 586788 }, %struct.rtl8xxxu_rfregval { i8 21, i32 848932 }, %struct.rtl8xxxu_rfregval { i8 22, i32 918320 }, %struct.rtl8xxxu_rfregval { i8 22, i32 656176 }, %struct.rtl8xxxu_rfregval { i8 22, i32 394032 }, %struct.rtl8xxxu_rfregval { i8 22, i32 131888 }, %struct.rtl8xxxu_rfregval { i8 0, i32 65881 }, %struct.rtl8xxxu_rfregval { i8 24, i32 62465 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 31, i32 524291 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 30, i32 279639 }, %struct.rtl8xxxu_rfregval { i8 31, i32 524288 }, %struct.rtl8xxxu_rfregval { i8 0, i32 196953 }, %struct.rtl8xxxu_rfregval { i8 -1, i32 -1 }], [272 x i8] zeroinitializer }, align 32
@rtl8192cu_radiob_2t_init_table = internal global { [40 x %struct.rtl8xxxu_rfregval], [64 x i8] } { [40 x %struct.rtl8xxxu_rfregval] [%struct.rtl8xxxu_rfregval { i8 0, i32 196953 }, %struct.rtl8xxxu_rfregval { i8 1, i32 201348 }, %struct.rtl8xxxu_rfregval { i8 2, i32 622592 }, %struct.rtl8xxxu_rfregval { i8 3, i32 101475 }, %struct.rtl8xxxu_rfregval { i8 4, i32 135399 }, %struct.rtl8xxxu_rfregval { i8 9, i32 132175 }, %struct.rtl8xxxu_rfregval { i8 10, i32 110001 }, %struct.rtl8xxxu_rfregval { i8 11, i32 346215 }, %struct.rtl8xxxu_rfregval { i8 12, i32 563502 }, %struct.rtl8xxxu_rfregval { i8 13, i32 58668 }, %struct.rtl8xxxu_rfregval { i8 14, i32 236775 }, %struct.rtl8xxxu_rfregval { i8 15, i32 1105 }, %struct.rtl8xxxu_rfregval { i8 18, i32 204800 }, %struct.rtl8xxxu_rfregval { i8 18, i32 462848 }, %struct.rtl8xxxu_rfregval { i8 18, i32 720896 }, %struct.rtl8xxxu_rfregval { i8 18, i32 1032192 }, %struct.rtl8xxxu_rfregval { i8 19, i32 165807 }, %struct.rtl8xxxu_rfregval { i8 19, i32 148663 }, %struct.rtl8xxxu_rfregval { i8 19, i32 132267 }, %struct.rtl8xxxu_rfregval { i8 19, i32 115871 }, %struct.rtl8xxxu_rfregval { i8 19, i32 99475 }, %struct.rtl8xxxu_rfregval { i8 19, i32 82583 }, %struct.rtl8xxxu_rfregval { i8 19, i32 66197 }, %struct.rtl8xxxu_rfregval { i8 19, i32 49816 }, %struct.rtl8xxxu_rfregval { i8 19, i32 33180 }, %struct.rtl8xxxu_rfregval { i8 19, i32 16552 }, %struct.rtl8xxxu_rfregval { i8 19, i32 28 }, %struct.rtl8xxxu_rfregval { i8 20, i32 103500 }, %struct.rtl8xxxu_rfregval { i8 20, i32 365636 }, %struct.rtl8xxxu_rfregval { i8 20, i32 627788 }, %struct.rtl8xxxu_rfregval { i8 20, i32 889924 }, %struct.rtl8xxxu_rfregval { i8 21, i32 62500 }, %struct.rtl8xxxu_rfregval { i8 21, i32 324644 }, %struct.rtl8xxxu_rfregval { i8 21, i32 586788 }, %struct.rtl8xxxu_rfregval { i8 21, i32 848932 }, %struct.rtl8xxxu_rfregval { i8 22, i32 918320 }, %struct.rtl8xxxu_rfregval { i8 22, i32 656176 }, %struct.rtl8xxxu_rfregval { i8 22, i32 394032 }, %struct.rtl8xxxu_rfregval { i8 22, i32 131888 }, %struct.rtl8xxxu_rfregval { i8 -1, i32 -1 }], [64 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"rtl8192cu_fops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 543, i32 25 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 387, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 389, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"rtl8192c_power_base\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 36, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 395, i32 28 }
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"rtl8188r_power_base\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 58, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 405, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 409, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 335, i32 13 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 337, i32 13 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 339, i32 13 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 452, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 465, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 489, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 517, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [33 x i8] c"rtl8188ru_radioa_1t_highpa_table\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 254, i32 33 }
@___asan_gen_.116 = private unnamed_addr constant [31 x i8] c"rtl8192cu_radioa_1t_init_table\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 179, i32 33 }
@___asan_gen_.119 = private unnamed_addr constant [31 x i8] c"rtl8192cu_radioa_2t_init_table\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 80, i32 33 }
@___asan_gen_.122 = private unnamed_addr constant [31 x i8] c"rtl8192cu_radiob_2t_init_table\00", align 1
@___asan_gen_.123 = private constant [58 x i8] c"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 155, i32 33 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @rtl8192cu_parse_efuse._entry, ptr @rtl8192cu_parse_efuse._entry.12, ptr @rtl8192cu_parse_efuse._entry.5, ptr @rtl8192cu_parse_efuse._entry.9, ptr @rtl8192cu_parse_efuse._entry_ptr, ptr @rtl8192cu_parse_efuse._entry_ptr.11, ptr @rtl8192cu_parse_efuse._entry_ptr.14, ptr @rtl8192cu_parse_efuse._entry_ptr.7, ptr @rtl8192cu_power_on._entry, ptr @rtl8192cu_power_on._entry.20, ptr @rtl8192cu_power_on._entry.23, ptr @rtl8192cu_power_on._entry.26, ptr @rtl8192cu_power_on._entry_ptr, ptr @rtl8192cu_power_on._entry_ptr.22, ptr @rtl8192cu_power_on._entry_ptr.25, ptr @rtl8192cu_power_on._entry_ptr.28, ptr @rtl8192cu_fops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @rtl8192c_power_base, ptr @.str.8, ptr @rtl8188r_power_base, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @rtl8188ru_radioa_1t_highpa_table, ptr @rtl8192cu_radioa_1t_init_table, ptr @rtl8192cu_radioa_2t_init_table, ptr @rtl8192cu_radiob_2t_init_table], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192cu_fops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192cu_parse_efuse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192cu_parse_efuse._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192c_power_base to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188r_power_base to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192cu_parse_efuse._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192cu_parse_efuse._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192cu_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192cu_power_on._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192cu_power_on._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192cu_power_on._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8188ru_radioa_1t_highpa_table to i32), i32 1136, i32 1408, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192cu_radioa_1t_init_table to i32), i32 1136, i32 1408, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192cu_radioa_2t_init_table to i32), i32 1136, i32 1408, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8192cu_radiob_2t_init_table to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8192cu_parse_efuse(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %efuse_wifi = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52
  %0 = ptrtoint ptr %efuse_wifi to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %efuse_wifi, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10625, i16 %1)
  %cmp.not = icmp eq i16 %1, 10625
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_addr = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 12
  %mac_addr2 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %mac_addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_addr2, align 4
  %4 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 12, i32 4
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %add.ptr1.i, align 2
  %cck_tx_power_index_A = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 15
  %cck_tx_power_index_A5 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 4, i32 14
  %8 = call ptr @memcpy(ptr %cck_tx_power_index_A, ptr %cck_tx_power_index_A5, i32 3)
  %cck_tx_power_index_B = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 16
  %cck_tx_power_index_B8 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 4, i32 17
  %9 = call ptr @memcpy(ptr %cck_tx_power_index_B, ptr %cck_tx_power_index_B8, i32 3)
  %ht40_1s_tx_power_index_A = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 17
  %ht40_1s_tx_power_index_A11 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 4, i32 20
  %10 = call ptr @memcpy(ptr %ht40_1s_tx_power_index_A, ptr %ht40_1s_tx_power_index_A11, i32 3)
  %ht40_1s_tx_power_index_B = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 18
  %ht40_1s_tx_power_index_B14 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 4, i32 23
  %11 = call ptr @memcpy(ptr %ht40_1s_tx_power_index_B, ptr %ht40_1s_tx_power_index_B14, i32 3)
  %ht40_2s_tx_power_index_diff = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 19
  %ht40_2s_tx_power_index_diff17 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 4, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %ht40_2s_tx_power_index_diff, ptr %ht40_2s_tx_power_index_diff17, i32 3)
  %ht20_tx_power_index_diff = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 20
  %ht20_tx_power_index_diff20 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 4, i32 0, i32 5
  %13 = call ptr @memcpy(ptr %ht20_tx_power_index_diff, ptr %ht20_tx_power_index_diff20, i32 3)
  %ofdm_tx_power_index_diff = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 21
  %ofdm_tx_power_index_diff23 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 4, i32 1, i32 2
  %14 = call ptr @memcpy(ptr %ofdm_tx_power_index_diff, ptr %ofdm_tx_power_index_diff23, i32 3)
  %ht40_max_power_offset = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 22
  %ht40_max_power_offset26 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 4, i32 2
  %15 = call ptr @memcpy(ptr %ht40_max_power_offset, ptr %ht40_max_power_offset26, i32 3)
  %ht20_max_power_offset = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 23
  %ht20_max_power_offset29 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 4, i32 3, i32 1
  %16 = call ptr @memcpy(ptr %ht20_max_power_offset, ptr %ht20_max_power_offset29, i32 3)
  %udev = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %17 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %18, i32 0, i32 15
  %vendor_name = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 3, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %vendor_name) #6
  %19 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udev, align 4
  %dev36 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  %device_name = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 4, i32 6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev36, ptr noundef nonnull @.str.6, ptr noundef %device_name) #6
  %power_base = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 27
  %21 = ptrtoint ptr %power_base to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @rtl8192c_power_base, ptr %power_base, align 4
  %rf_regulatory = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 4, i32 4, i32 3
  %22 = ptrtoint ptr %rf_regulatory to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %rf_regulatory, align 1
  %24 = and i8 %23, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %if.end.if.end45_crit_edge, label %if.then39

if.end.if.end45_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end45

if.then39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %chip_name = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 13
  %25 = call ptr @memcpy(ptr %chip_name, ptr @.str.8, i32 7)
  %rtl_chip = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 57
  %26 = ptrtoint ptr %rtl_chip to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 530569, ptr %rtl_chip, align 4
  %hi_pa = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 28
  %27 = ptrtoint ptr %hi_pa to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load = load i32, ptr %hi_pa, align 4
  %bf.set = or i32 %bf.load, 262144
  store i32 %bf.set, ptr %hi_pa, align 4
  %no_pape = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 58
  %28 = ptrtoint ptr %no_pape to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load41 = load i8, ptr %no_pape, align 4
  %bf.set43 = or i8 %bf.load41, 64
  store i8 %bf.set43, ptr %no_pape, align 4
  %29 = ptrtoint ptr %power_base to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @rtl8188r_power_base, ptr %power_base, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then39, %if.end.if.end45_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rtl8xxxu_debug to i32))
  %30 = load i32, ptr @rtl8xxxu_debug, align 4
  %and46 = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %if.then48

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  %31 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %udev, align 4
  %dev55 = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev55, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 128) #6
  %33 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %udev, align 4
  %dev62 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62, ptr noundef nonnull @.str.13, i32 noundef 0, ptr noundef %efuse_wifi) #6
  %35 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %udev, align 4
  %dev62.1 = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 15
  %arrayidx.1 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 1, i32 6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.1, ptr noundef nonnull @.str.13, i32 noundef 8, ptr noundef %arrayidx.1) #6
  %37 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udev, align 4
  %dev62.2 = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  %arrayidx.2 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.2, ptr noundef nonnull @.str.13, i32 noundef 16, ptr noundef %arrayidx.2) #6
  %39 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %udev, align 4
  %dev62.3 = getelementptr inbounds %struct.usb_device, ptr %40, i32 0, i32 15
  %arrayidx.3 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 1, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.3, ptr noundef nonnull @.str.13, i32 noundef 24, ptr noundef %arrayidx.3) #6
  %41 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %udev, align 4
  %dev62.4 = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 15
  %arrayidx.4 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 3, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.4, ptr noundef nonnull @.str.13, i32 noundef 32, ptr noundef %arrayidx.4) #6
  %43 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %udev, align 4
  %dev62.5 = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 15
  %arrayidx.5 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 4, i32 6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.5, ptr noundef nonnull @.str.13, i32 noundef 40, ptr noundef %arrayidx.5) #6
  %45 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %udev, align 4
  %dev62.6 = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 15
  %arrayidx.6 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 4, i32 14
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.6, ptr noundef nonnull @.str.13, i32 noundef 48, ptr noundef %arrayidx.6) #6
  %47 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %udev, align 4
  %dev62.7 = getelementptr inbounds %struct.usb_device, ptr %48, i32 0, i32 15
  %arrayidx.7 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 4, i32 22
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.7, ptr noundef nonnull @.str.13, i32 noundef 56, ptr noundef %arrayidx.7) #6
  %49 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %udev, align 4
  %dev62.8 = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 15
  %arrayidx.8 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.8, ptr noundef nonnull @.str.13, i32 noundef 64, ptr noundef %arrayidx.8) #6
  %51 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %udev, align 4
  %dev62.9 = getelementptr inbounds %struct.usb_device, ptr %52, i32 0, i32 15
  %arrayidx.9 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 3, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.9, ptr noundef nonnull @.str.13, i32 noundef 72, ptr noundef %arrayidx.9) #6
  %53 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %udev, align 4
  %dev62.10 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 15
  %arrayidx.10 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 4, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.10, ptr noundef nonnull @.str.13, i32 noundef 80, ptr noundef %arrayidx.10) #6
  %55 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %udev, align 4
  %dev62.11 = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 15
  %arrayidx.11 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 4, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.11, ptr noundef nonnull @.str.13, i32 noundef 88, ptr noundef %arrayidx.11) #6
  %57 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %udev, align 4
  %dev62.12 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 15
  %arrayidx.12 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 3, i32 4, i32 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.12, ptr noundef nonnull @.str.13, i32 noundef 96, ptr noundef %arrayidx.12) #6
  %59 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %udev, align 4
  %dev62.13 = getelementptr inbounds %struct.usb_device, ptr %60, i32 0, i32 15
  %arrayidx.13 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 4, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.13, ptr noundef nonnull @.str.13, i32 noundef 104, ptr noundef %arrayidx.13) #6
  %61 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %udev, align 4
  %dev62.14 = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 15
  %arrayidx.14 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 4, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.14, ptr noundef nonnull @.str.13, i32 noundef 112, ptr noundef %arrayidx.14) #6
  %63 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %udev, align 4
  %dev62.15 = getelementptr inbounds %struct.usb_device, ptr %64, i32 0, i32 15
  %arrayidx.15 = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 4, i32 4, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev62.15, ptr noundef nonnull @.str.13, i32 noundef 120, ptr noundef %arrayidx.15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end45.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ], [ 0, %if.then48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8192cu_load_firmware(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor_umc = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 28
  %0 = ptrtoint ptr %vendor_umc to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %vendor_umc, align 4
  %1 = and i32 %bf.load, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.else

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %bf.load)
  %tobool3.not = icmp ult i32 %bf.load, 268435456
  br i1 %tobool3.not, label %lor.lhs.false, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %rtl_chip = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 57
  %2 = ptrtoint ptr %rtl_chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rtl_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 530732, i32 %3)
  %cmp = icmp eq i32 %3, 530732
  %spec.select = select i1 %cmp, ptr @.str.16, ptr @.str.17
  br label %if.end6

if.end6:                                          ; preds = %lor.lhs.false, %if.else.if.end6_crit_edge, %entry.if.end6_crit_edge
  %fw_name.0 = phi ptr [ @.str.15, %entry.if.end6_crit_edge ], [ @.str.16, %if.else.if.end6_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %call = tail call i32 @rtl8xxxu_load_firmware(ptr noundef %priv, ptr noundef nonnull %fw_name.0) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8192cu_power_on(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.cond:                                         ; preds = %for.body
  %dec = add nsw i32 %i.0145, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end.critedge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.0145 = phi i32 [ 100, %entry ], [ %dec, %for.cond.for.body_crit_edge ]
  %call = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 4) #3
  %0 = and i8 %call, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %for.cond, label %if.end5

do.end.critedge:                                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #6
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %call6 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 28, i8 noundef zeroext 0) #3
  %call7 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 17, i8 noundef zeroext 43) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 21474800) #3
  %call8 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 33) #3
  %conv9 = zext i8 %call8 to i32
  %and10 = and i32 %conv9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %do.end15, label %if.end5.if.end27_crit_edge

if.end5.if.end27_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27

do.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef %conv9) #6
  %or = or i8 %call8, 1
  %call21 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 33, i8 noundef zeroext %or) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 21474800) #3
  %call22 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 0) #3
  %3 = and i8 %call22, -2
  %call26 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 0, i8 noundef zeroext %3) #3
  br label %if.end27

if.end27:                                         ; preds = %do.end15, %if.end5.if.end27_crit_edge
  %call28 = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 4) #3
  %4 = or i16 %call28, 256
  %call32 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 4, i16 noundef zeroext %4) #3
  br label %for.body35

for.cond33:                                       ; preds = %for.body35
  %dec43 = add nsw i32 %i.1146, -1
  %tobool34.not = icmp eq i32 %dec43, 0
  br i1 %tobool34.not, label %do.end49.critedge, label %for.cond33.for.body35_crit_edge

for.cond33.for.body35_crit_edge:                  ; preds = %for.cond33
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body35

for.body35:                                       ; preds = %for.cond33.for.body35_crit_edge, %if.end27
  %i.1146 = phi i32 [ 1000, %if.end27 ], [ %dec43, %for.cond33.for.body35_crit_edge ]
  %call36 = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 4) #3
  %5 = and i16 %call36, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool39.not = icmp eq i16 %5, 0
  br i1 %tobool39.not, label %if.end52, label %for.cond33

do.end49.critedge:                                ; preds = %for.cond33
  call void @__sanitizer_cov_trace_pc() #5
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.19) #6
  br label %cleanup

if.end52:                                         ; preds = %for.body35
  %call53 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 4, i16 noundef zeroext 2066) #3
  %call54 = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 0) #3
  %6 = and i16 %call54, -513
  %call58 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 0, i16 noundef zeroext %6) #3
  %call59 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 1536) #3
  %7 = and i8 %call59, -65
  %call63 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 1536, i8 noundef zeroext %7) #3
  br label %for.body66

for.cond64:                                       ; preds = %for.body66
  %dec74 = add nsw i32 %i.2147, -1
  %tobool65.not = icmp eq i32 %dec74, 0
  br i1 %tobool65.not, label %do.end80.critedge, label %for.cond64.for.body66_crit_edge

for.cond64.for.body66_crit_edge:                  ; preds = %for.cond64
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body66

for.body66:                                       ; preds = %for.cond64.for.body66_crit_edge, %if.end52
  %i.2147 = phi i32 [ 200, %if.end52 ], [ %dec74, %for.cond64.for.body66_crit_edge ]
  %call67 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 1536) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call67)
  %tobool70.not = icmp sgt i8 %call67, -1
  br i1 %tobool70.not, label %if.end83, label %for.cond64

do.end80.critedge:                                ; preds = %for.cond64
  call void @__sanitizer_cov_trace_pc() #5
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.19) #6
  br label %cleanup

if.end83:                                         ; preds = %for.body66
  %call84 = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 256) #3
  %8 = or i16 %call84, 255
  %call88 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 256, i16 noundef zeroext %8) #3
  %call89 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext -496, i8 noundef zeroext 25) #3
  %rtl_chip = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 57
  %9 = ptrtoint ptr %rtl_chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rtl_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 530569, i32 %10)
  %cmp = icmp eq i32 %10, 530569
  br i1 %cmp, label %if.then91, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then91:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #5
  %call92 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 2172) #3
  %and93 = and i32 %call92, -3
  %call94 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 2172, i32 noundef %and93) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %if.end83.cleanup_crit_edge, %do.end80.critedge, %do.end49.critedge, %do.end.critedge
  %retval.0 = phi i32 [ -16, %do.end80.critedge ], [ -16, %do.end49.critedge ], [ -19, %do.end.critedge ], [ 0, %if.then91 ], [ 0, %if.end83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_power_off(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_reset_8051(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_init_llt_table(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen1_init_phy_bb(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8192cu_init_phy_rf(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rtl_chip = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 57
  %0 = ptrtoint ptr %rtl_chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rtl_chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 530569, i32 %1)
  %cmp = icmp eq i32 %1, 530569
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @rtl8xxxu_init_phy_rf(ptr noundef %priv, ptr noundef nonnull @rtl8188ru_radioa_1t_highpa_table, i32 noundef 0) #3
  br label %exit

if.else:                                          ; preds = %entry
  %rf_paths = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 35
  %2 = ptrtoint ptr %rf_paths to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rf_paths, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp1 = icmp eq i8 %3, 1
  br i1 %cmp1, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = tail call i32 @rtl8xxxu_init_phy_rf(ptr noundef %priv, ptr noundef nonnull @rtl8192cu_radioa_1t_init_table, i32 noundef 0) #3
  br label %exit

if.else5:                                         ; preds = %if.else
  %call6 = tail call i32 @rtl8xxxu_init_phy_rf(ptr noundef %priv, ptr noundef nonnull @rtl8192cu_radioa_2t_init_table, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %if.else5.exit_crit_edge

if.else5.exit_crit_edge:                          ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit

if.end:                                           ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #5
  %call8 = tail call i32 @rtl8xxxu_init_phy_rf(ptr noundef %priv, ptr noundef nonnull @rtl8192cu_radiob_2t_init_table, i32 noundef 1) #3
  br label %exit

exit:                                             ; preds = %if.end, %if.else5.exit_crit_edge, %if.then3, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %call4, %if.then3 ], [ %call6, %if.else5.exit_crit_edge ], [ %call8, %if.end ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen1_phy_iq_calibrate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen1_config_channel(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_parse_rxdesc16(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen1_init_aggregation(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen1_enable_rf(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen1_disable_rf(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen1_usb_quirks(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen1_set_tx_power(ptr noundef, i32 noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_update_rate_mask(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_gen1_report_connect(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_fill_txdesc_v1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_load_firmware(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl8xxxu_read8(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_write8(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtl8xxxu_read16(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_write16(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_read32(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_write32(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtl8xxxu_init_phy_rf(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @rtl8192cu_fops, !1, !"rtl8192cu_fops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 543, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 387, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rtl8192cu_parse_efuse._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @rtl8192cu_parse_efuse._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 389, i32 2}
!12 = !{ptr @rtl8192cu_parse_efuse._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @rtl8192cu_parse_efuse._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 395, i32 28}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 405, i32 3}
!18 = !{ptr @rtl8192cu_parse_efuse._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rtl8192cu_parse_efuse._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 409, i32 4}
!22 = !{ptr @rtl8192cu_parse_efuse._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @rtl8192cu_parse_efuse._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @rtl8192c_power_base, !25, !"rtl8192c_power_base", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 36, i32 35}
!26 = !{ptr @rtl8188r_power_base, !27, !"rtl8188r_power_base", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 58, i32 35}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 335, i32 13}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 337, i32 13}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 339, i32 13}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 452, i32 3}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @rtl8192cu_power_on._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @rtl8192cu_power_on._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 465, i32 3}
!41 = !{ptr @rtl8192cu_power_on._entry.20, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @rtl8192cu_power_on._entry_ptr.22, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 489, i32 3}
!45 = !{ptr @rtl8192cu_power_on._entry.23, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rtl8192cu_power_on._entry_ptr.25, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 517, i32 3}
!49 = !{ptr @rtl8192cu_power_on._entry.26, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @rtl8192cu_power_on._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @rtl8188ru_radioa_1t_highpa_table, !52, !"rtl8188ru_radioa_1t_highpa_table", i1 false, i1 false}
!52 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 254, i32 33}
!53 = !{ptr @rtl8192cu_radioa_1t_init_table, !54, !"rtl8192cu_radioa_1t_init_table", i1 false, i1 false}
!54 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 179, i32 33}
!55 = !{ptr @rtl8192cu_radioa_2t_init_table, !56, !"rtl8192cu_radioa_2t_init_table", i1 false, i1 false}
!56 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 80, i32 33}
!57 = !{ptr @rtl8192cu_radiob_2t_init_table, !58, !"rtl8192cu_radiob_2t_init_table", i1 false, i1 false}
!58 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8192c.c", i32 155, i32 33}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
