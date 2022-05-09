; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723a.c_pt.bc'
source_filename = "../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rtl8xxxu_reg8val = type { i16, i8 }
%struct.rtl8xxxu_fileops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i32, i32, i32, i32, i16, i8, i8, ptr, i8, i8, i8, i8 }
%struct.rtl8xxxu_power_base = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.rtl8723au_efuse = type { i16, [14 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x %struct.rtl8723au_idx], [3 x %struct.rtl8723au_idx], [3 x %struct.rtl8723au_idx], [3 x %struct.rtl8723au_idx], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [130 x i8], i8, i8, i8, [12 x i8], [6 x i8], [2 x i8], [7 x i8], [2 x i8], [41 x i8] }
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
@rtl8723au_fops = dso_local global { %struct.rtl8xxxu_fileops, [36 x i8] } { %struct.rtl8xxxu_fileops { ptr @rtl8723au_parse_efuse, ptr @rtl8723au_load_firmware, ptr @rtl8723au_power_on, ptr @rtl8xxxu_power_off, ptr @rtl8xxxu_reset_8051, ptr @rtl8xxxu_init_llt_table, ptr @rtl8xxxu_gen1_init_phy_bb, ptr @rtl8723au_init_phy_rf, ptr null, ptr @rtl8xxxu_gen1_phy_iq_calibrate, ptr @rtl8xxxu_gen1_config_channel, ptr @rtl8xxxu_parse_rxdesc16, ptr @rtl8xxxu_gen1_init_aggregation, ptr null, ptr @rtl8xxxu_gen1_enable_rf, ptr @rtl8xxxu_gen1_disable_rf, ptr @rtl8xxxu_gen1_usb_quirks, ptr @rtl8xxxu_gen1_set_tx_power, ptr @rtl8xxxu_update_rate_mask, ptr @rtl8xxxu_gen1_report_connect, ptr @rtl8xxxu_fill_txdesc_v1, i32 1024, i32 16000, i8 32, i8 24, i8 0, i32 186328480, i32 198911392, i32 81470884, i32 186328484, i16 10239, i8 1, i8 1, ptr @rtl8xxxu_gen1_mac_init_table, i8 -8, i8 12, i8 2, i8 2 }, [36 x i8] zeroinitializer }, align 32
@rtl8723a_power_base = internal global { %struct.rtl8xxxu_power_base, [32 x i8] } { %struct.rtl8xxxu_power_base { i32 168561676, i32 33818120, i32 0, i32 0, i32 168561934, i32 33818120, i32 168561934, i32 33818120, i32 168561676, i32 33818120, i32 0, i32 0, i32 168561934, i32 33818120, i32 168561934, i32 33818120 }, [32 x i8] zeroinitializer }, align 32
@rtl8723au_parse_efuse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Vendor: %.7s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rtl8723au_parse_efuse\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723a.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl8723au_parse_efuse._entry_ptr = internal global ptr @rtl8723au_parse_efuse._entry, section ".printk_index", align 4
@rtl8723au_parse_efuse._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Product: %.41s\0A\00", [16 x i8] zeroinitializer }, align 32
@rtl8723au_parse_efuse._entry_ptr.7 = internal global ptr @rtl8723au_parse_efuse._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtlwifi/rtl8723aufw_A.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtlwifi/rtl8723aufw_B.bin\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rtlwifi/rtl8723aufw_B_NoBT.bin\00", [33 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rtl8723au_radioa_1t_init_table = internal global { [142 x %struct.rtl8xxxu_rfregval], [272 x i8] } { [142 x %struct.rtl8xxxu_rfregval] [%struct.rtl8xxxu_rfregval { i8 0, i32 196953 }, %struct.rtl8xxxu_rfregval { i8 1, i32 201348 }, %struct.rtl8xxxu_rfregval { i8 2, i32 622592 }, %struct.rtl8xxxu_rfregval { i8 3, i32 236643 }, %struct.rtl8xxxu_rfregval { i8 4, i32 135399 }, %struct.rtl8xxxu_rfregval { i8 9, i32 132175 }, %struct.rtl8xxxu_rfregval { i8 10, i32 107505 }, %struct.rtl8xxxu_rfregval { i8 11, i32 83847 }, %struct.rtl8xxxu_rfregval { i8 12, i32 562942 }, %struct.rtl8xxxu_rfregval { i8 13, i32 57388 }, %struct.rtl8xxxu_rfregval { i8 14, i32 236775 }, %struct.rtl8xxxu_rfregval { i8 15, i32 1105 }, %struct.rtl8xxxu_rfregval { i8 25, i32 0 }, %struct.rtl8xxxu_rfregval { i8 26, i32 197461 }, %struct.rtl8xxxu_rfregval { i8 27, i32 395776 }, %struct.rtl8xxxu_rfregval { i8 28, i32 1033080 }, %struct.rtl8xxxu_rfregval { i8 29, i32 660048 }, %struct.rtl8xxxu_rfregval { i8 30, i32 591 }, %struct.rtl8xxxu_rfregval { i8 31, i32 0 }, %struct.rtl8xxxu_rfregval { i8 32, i32 46612 }, %struct.rtl8xxxu_rfregval { i8 33, i32 442368 }, %struct.rtl8xxxu_rfregval { i8 34, i32 0 }, %struct.rtl8xxxu_rfregval { i8 35, i32 5464 }, %struct.rtl8xxxu_rfregval { i8 36, i32 96 }, %struct.rtl8xxxu_rfregval { i8 37, i32 1155 }, %struct.rtl8xxxu_rfregval { i8 38, i32 323584 }, %struct.rtl8xxxu_rfregval { i8 39, i32 968665 }, %struct.rtl8xxxu_rfregval { i8 40, i32 358192 }, %struct.rtl8xxxu_rfregval { i8 41, i32 18307 }, %struct.rtl8xxxu_rfregval { i8 42, i32 1 }, %struct.rtl8xxxu_rfregval { i8 43, i32 135988 }, %struct.rtl8xxxu_rfregval { i8 42, i32 0 }, %struct.rtl8xxxu_rfregval { i8 43, i32 84 }, %struct.rtl8xxxu_rfregval { i8 42, i32 1 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 340787 }, %struct.rtl8xxxu_rfregval { i8 44, i32 12 }, %struct.rtl8xxxu_rfregval { i8 42, i32 2 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 373555 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 3 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 406323 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 4 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 439091 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 5 }, %struct.rtl8xxxu_rfregval { i8 43, i32 2056 }, %struct.rtl8xxxu_rfregval { i8 43, i32 471859 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 6 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1801 }, %struct.rtl8xxxu_rfregval { i8 43, i32 373555 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 7 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1801 }, %struct.rtl8xxxu_rfregval { i8 43, i32 406323 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 8 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 308019 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 9 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 340787 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 10 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 373555 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 11 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 406323 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 12 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 439091 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 13 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1546 }, %struct.rtl8xxxu_rfregval { i8 43, i32 471859 }, %struct.rtl8xxxu_rfregval { i8 44, i32 13 }, %struct.rtl8xxxu_rfregval { i8 42, i32 14 }, %struct.rtl8xxxu_rfregval { i8 43, i32 1291 }, %struct.rtl8xxxu_rfregval { i8 43, i32 419430 }, %struct.rtl8xxxu_rfregval { i8 44, i32 26 }, %struct.rtl8xxxu_rfregval { i8 42, i32 917504 }, %struct.rtl8xxxu_rfregval { i8 16, i32 262159 }, %struct.rtl8xxxu_rfregval { i8 17, i32 930300 }, %struct.rtl8xxxu_rfregval { i8 16, i32 393231 }, %struct.rtl8xxxu_rfregval { i8 17, i32 1047032 }, %struct.rtl8xxxu_rfregval { i8 16, i32 131087 }, %struct.rtl8xxxu_rfregval { i8 17, i32 132089 }, %struct.rtl8xxxu_rfregval { i8 16, i32 196623 }, %struct.rtl8xxxu_rfregval { i8 17, i32 1045760 }, %struct.rtl8xxxu_rfregval { i8 16, i32 0 }, %struct.rtl8xxxu_rfregval { i8 17, i32 0 }, %struct.rtl8xxxu_rfregval { i8 16, i32 524303 }, %struct.rtl8xxxu_rfregval { i8 17, i32 258304 }, %struct.rtl8xxxu_rfregval { i8 16, i32 589839 }, %struct.rtl8xxxu_rfregval { i8 17, i32 143616 }, %struct.rtl8xxxu_rfregval { i8 18, i32 204800 }, %struct.rtl8xxxu_rfregval { i8 18, i32 462848 }, %struct.rtl8xxxu_rfregval { i8 18, i32 720896 }, %struct.rtl8xxxu_rfregval { i8 18, i32 1032192 }, %struct.rtl8xxxu_rfregval { i8 19, i32 165811 }, %struct.rtl8xxxu_rfregval { i8 19, i32 148663 }, %struct.rtl8xxxu_rfregval { i8 19, i32 132267 }, %struct.rtl8xxxu_rfregval { i8 19, i32 115871 }, %struct.rtl8xxxu_rfregval { i8 19, i32 99475 }, %struct.rtl8xxxu_rfregval { i8 19, i32 82587 }, %struct.rtl8xxxu_rfregval { i8 19, i32 66201 }, %struct.rtl8xxxu_rfregval { i8 19, i32 49820 }, %struct.rtl8xxxu_rfregval { i8 19, i32 33184 }, %struct.rtl8xxxu_rfregval { i8 19, i32 16556 }, %struct.rtl8xxxu_rfregval { i8 19, i32 32 }, %struct.rtl8xxxu_rfregval { i8 20, i32 103500 }, %struct.rtl8xxxu_rfregval { i8 20, i32 365636 }, %struct.rtl8xxxu_rfregval { i8 20, i32 627788 }, %struct.rtl8xxxu_rfregval { i8 20, i32 889924 }, %struct.rtl8xxxu_rfregval { i8 21, i32 62580 }, %struct.rtl8xxxu_rfregval { i8 21, i32 324727 }, %struct.rtl8xxxu_rfregval { i8 21, i32 586837 }, %struct.rtl8xxxu_rfregval { i8 21, i32 848981 }, %struct.rtl8xxxu_rfregval { i8 22, i32 825 }, %struct.rtl8xxxu_rfregval { i8 22, i32 262969 }, %struct.rtl8xxxu_rfregval { i8 22, i32 525113 }, %struct.rtl8xxxu_rfregval { i8 22, i32 787302 }, %struct.rtl8xxxu_rfregval { i8 0, i32 65881 }, %struct.rtl8xxxu_rfregval { i8 24, i32 62465 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 31, i32 3 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 -2, i32 0 }, %struct.rtl8xxxu_rfregval { i8 30, i32 583 }, %struct.rtl8xxxu_rfregval { i8 31, i32 0 }, %struct.rtl8xxxu_rfregval { i8 0, i32 196953 }, %struct.rtl8xxxu_rfregval { i8 -1, i32 -1 }], [272 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"rtl8723au_fops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 360, i32 25 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"rtl8723a_power_base\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 35, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 176, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 178, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 190, i32 13 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 194, i32 14 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 196, i32 14 }
@___asan_gen_.50 = private unnamed_addr constant [31 x i8] c"rtl8723au_radioa_1t_init_table\00", align 1
@___asan_gen_.51 = private constant [58 x i8] c"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723a.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 57, i32 33 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @rtl8723au_parse_efuse._entry, ptr @rtl8723au_parse_efuse._entry.5, ptr @rtl8723au_parse_efuse._entry_ptr, ptr @rtl8723au_parse_efuse._entry_ptr.7, ptr @rtl8723au_fops, ptr @rtl8723a_power_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @rtl8723au_radioa_1t_init_table], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723au_fops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723a_power_base to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723au_parse_efuse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723au_parse_efuse._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8723au_radioa_1t_init_table to i32), i32 1136, i32 1408, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8723au_parse_efuse(ptr noundef %priv) #0 align 64 {
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
  %mac_addr2 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 18
  %2 = ptrtoint ptr %mac_addr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_addr2, align 4
  %4 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 21
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 12, i32 4
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %add.ptr1.i, align 2
  %cck_tx_power_index_A = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 15
  %cck_tx_power_index_A5 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %cck_tx_power_index_A, ptr %cck_tx_power_index_A5, i32 3)
  %cck_tx_power_index_B = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 16
  %cck_tx_power_index_B8 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %cck_tx_power_index_B, ptr %cck_tx_power_index_B8, i32 3)
  %ht40_1s_tx_power_index_A = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 17
  %ht40_1s_tx_power_index_A11 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 1
  %10 = call ptr @memcpy(ptr %ht40_1s_tx_power_index_A, ptr %ht40_1s_tx_power_index_A11, i32 3)
  %ht40_1s_tx_power_index_B = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 18
  %ht40_1s_tx_power_index_B14 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 1, i32 3
  %11 = call ptr @memcpy(ptr %ht40_1s_tx_power_index_B, ptr %ht40_1s_tx_power_index_B14, i32 3)
  %ht20_tx_power_index_diff = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 20
  %ht20_tx_power_index_diff17 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 3
  %12 = call ptr @memcpy(ptr %ht20_tx_power_index_diff, ptr %ht20_tx_power_index_diff17, i32 3)
  %ofdm_tx_power_index_diff = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 21
  %ofdm_tx_power_index_diff20 = getelementptr inbounds %struct.rtl8723au_efuse, ptr %efuse_wifi, i32 0, i32 7
  %13 = call ptr @memcpy(ptr %ofdm_tx_power_index_diff, ptr %ofdm_tx_power_index_diff20, i32 3)
  %ht40_max_power_offset = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 22
  %ht40_max_power_offset23 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 4
  %14 = call ptr @memcpy(ptr %ht40_max_power_offset, ptr %ht40_max_power_offset23, i32 3)
  %ht20_max_power_offset = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 23
  %ht20_max_power_offset26 = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 4, i32 3
  %15 = call ptr @memcpy(ptr %ht20_max_power_offset, ptr %ht20_max_power_offset26, i32 3)
  %version = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 4, i32 14
  %16 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp30.not = icmp eq i8 %17, 0
  br i1 %cmp30.not, label %if.end.if.end36_crit_edge, label %if.then32

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %has_xtalk = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 28
  %18 = ptrtoint ptr %has_xtalk to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load = load i32, ptr %has_xtalk, align 4
  %bf.set = or i32 %bf.load, 256
  store i32 %bf.set, ptr %has_xtalk, align 4
  %xtal_k = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 2, i32 4, i32 17
  %19 = ptrtoint ptr %xtal_k to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %xtal_k, align 1
  %21 = and i8 %20, 63
  %xtalk = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 29
  %22 = ptrtoint ptr %xtalk to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %xtalk, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.end.if.end36_crit_edge
  %power_base = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 27
  %23 = ptrtoint ptr %power_base to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @rtl8723a_power_base, ptr %power_base, align 4
  %udev = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 1
  %24 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  %vendor_name = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 22, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef %vendor_name) #6
  %26 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %udev, align 4
  %dev42 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  %device_name = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 52, i32 0, i32 24, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev42, ptr noundef nonnull @.str.6, ptr noundef %device_name) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8723au_load_firmware(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_cut = getelementptr inbounds %struct.rtl8xxxu_priv, ptr %priv, i32 0, i32 28
  %0 = ptrtoint ptr %chip_cut to i32
  call void @__asan_load4_noabort(i32 %0)
  %bf.load = load i32, ptr %chip_cut, align 4
  %bf.lshr = lshr i32 %bf.load, 28
  %1 = zext i32 %bf.lshr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bf.lshr, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = and i32 %bf.load, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %.str.10..str.9 = select i1 %tobool.not, ptr @.str.10, ptr @.str.9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %fw_name.0 = phi ptr [ @.str.8, %entry.sw.epilog_crit_edge ], [ %.str.10..str.9, %sw.bb1 ]
  %call = tail call i32 @rtl8xxxu_load_firmware(ptr noundef %priv, ptr noundef nonnull %fw_name.0) #3
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtl8723au_power_on(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 28, i8 noundef zeroext 0) #3
  tail call void @rtl8xxxu_disabled_to_emu(ptr noundef %priv) #3
  %call.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 32) #3
  %0 = or i8 %call.i, 1
  %call2.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 32, i8 noundef zeroext %0) #3
  %call3.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 103) #3
  %1 = and i8 %call3.i, -17
  %call6.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 103, i8 noundef zeroext %1) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #3
  %call7.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 0) #3
  %3 = and i8 %call7.i, -33
  %call11.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 0, i8 noundef zeroext %3) #3
  %call12.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 5) #3
  %4 = and i8 %call12.i, -5
  %call16.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 5, i8 noundef zeroext %4) #3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %count.0107.i = phi i32 [ 500, %entry ], [ %dec.i, %if.end.i.for.body.i_crit_edge ]
  %call17.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 4) #3
  %and18.i = and i32 %call17.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end.i, label %if.end22.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #3
  %dec.i = add nsw i32 %count.0107.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

if.end.i.exit_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit

if.end22.i:                                       ; preds = %for.body.i
  %call23.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 6) #3
  %6 = or i8 %call23.i, 1
  %call27.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 6, i8 noundef zeroext %6) #3
  %call28.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 5) #3
  %7 = and i8 %call28.i, 127
  %call32.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 5, i8 noundef zeroext %7) #3
  %call33.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 5) #3
  %8 = and i8 %call33.i, -25
  %call37.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 5, i8 noundef zeroext %8) #3
  %call38.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 4) #3
  %or39.i = or i32 %call38.i, 256
  %call40.i = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 4, i32 noundef %or39.i) #3
  br label %for.body43.i

for.body43.i:                                     ; preds = %if.end48.i.for.body43.i_crit_edge, %if.end22.i
  %count.1108.i = phi i32 [ 500, %if.end22.i ], [ %dec50.i, %if.end48.i.for.body43.i_crit_edge ]
  %call44.i = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 4) #3
  %and45.i = and i32 %call44.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %cmp.i = icmp eq i32 %and45.i, 0
  br i1 %cmp.i, label %if.end, label %if.end48.i

if.end48.i:                                       ; preds = %for.body43.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 2147480) #3
  %dec50.i = add nsw i32 %count.1108.i, -1
  %tobool42.not.i = icmp eq i32 %dec50.i, 0
  br i1 %tobool42.not.i, label %if.end48.i.exit_crit_edge, label %if.end48.i.for.body43.i_crit_edge

if.end48.i.for.body43.i_crit_edge:                ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body43.i

if.end48.i.exit_crit_edge:                        ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %exit

if.end:                                           ; preds = %for.body43.i
  call void @__sanitizer_cov_trace_pc() #5
  %call55.i = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 78) #3
  %10 = and i8 %call55.i, 127
  %call62.i = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 78, i8 noundef zeroext %10) #3
  %call2 = tail call zeroext i8 @rtl8xxxu_read8(ptr noundef %priv, i16 noundef zeroext 6) #3
  %11 = or i8 %call2, 8
  %call4 = tail call i32 @rtl8xxxu_write8(ptr noundef %priv, i16 noundef zeroext 6, i8 noundef zeroext %11) #3
  %call5 = tail call zeroext i16 @rtl8xxxu_read16(ptr noundef %priv, i16 noundef zeroext 256) #3
  %12 = or i16 %call5, 1791
  %call9 = tail call i32 @rtl8xxxu_write16(ptr noundef %priv, i16 noundef zeroext 256, i16 noundef zeroext %12) #3
  %call10 = tail call i32 @rtl8xxxu_read32(ptr noundef %priv, i16 noundef zeroext 48) #3
  %and = and i32 %call10, -1879048193
  %or11 = or i32 %and, 1610612736
  %call12 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 48, i32 noundef %or11) #3
  br label %exit

exit:                                             ; preds = %if.end, %if.end48.i.exit_crit_edge, %if.end.i.exit_crit_edge
  %ret.1.i28 = phi i32 [ 0, %if.end ], [ -16, %if.end48.i.exit_crit_edge ], [ -16, %if.end.i.exit_crit_edge ]
  ret i32 %ret.1.i28
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
define internal i32 @rtl8723au_init_phy_rf(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtl8xxxu_init_phy_rf(ptr noundef %priv, ptr noundef nonnull @rtl8723au_radioa_1t_init_table, i32 noundef 0) #3
  %call1 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 36, i32 noundef 58818701) #3
  %call2 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 40, i32 noundef -251658365) #3
  %call3 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 40, i32 noundef -251658366) #3
  %call4 = tail call i32 @rtl8xxxu_write32(ptr noundef %priv, i16 noundef zeroext 40, i32 noundef -251658365) #3
  ret i32 %call
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
declare dso_local i32 @rtl8xxxu_write8(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtl8xxxu_disabled_to_emu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl8xxxu_read8(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

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

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @rtl8723au_fops, !1, !"rtl8723au_fops", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723a.c", i32 360, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723a.c", i32 176, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rtl8723au_parse_efuse._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @rtl8723au_parse_efuse._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723a.c", i32 178, i32 2}
!12 = !{ptr @rtl8723au_parse_efuse._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @rtl8723au_parse_efuse._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @rtl8723a_power_base, !15, !"rtl8723a_power_base", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723a.c", i32 35, i32 35}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723a.c", i32 190, i32 13}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723a.c", i32 194, i32 14}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723a.c", i32 196, i32 14}
!22 = !{ptr @rtl8723au_radioa_1t_init_table, !23, !"rtl8723au_radioa_1t_init_table", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/realtek/rtl8xxxu/rtl8xxxu_8723a.c", i32 57, i32 33}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
