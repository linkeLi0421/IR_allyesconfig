; ModuleID = '/llk/IR_all_yes/drivers/spmi/spmi-mtk-pmif.c_pt.bc'
source_filename = "../drivers/spmi/spmi-mtk-pmif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pmif_data = type { ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pmif = type { ptr, ptr, %struct.ch_reg, [3 x %struct.clk_bulk_data], i32, ptr }
%struct.ch_reg = type { i32, i32, i32, i32, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.spmi_controller = type { %struct.device, i32, ptr, ptr, ptr }

@__initcall__kmod_spmi_mtk_pmif__170_538_mtk_spmi_driver_init6 = internal global ptr @mtk_spmi_driver_init, section ".initcall6.init", align 4
@mtk_spmi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_spmi_probe, ptr @mtk_spmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_spmi_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_spmi_driver_exit = internal global ptr @mtk_spmi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [70 x i8] c"spmi_mtk_pmif.author=Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [47 x i8] c"spmi_mtk_pmif.description=MediaTek SPMI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [46 x i8] c"spmi_mtk_pmif.file=drivers/spmi/spmi-mtk-pmif\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [26 x i8] c"spmi_mtk_pmif.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spmi-mtk\00", [23 x i8] zeroinitializer }, align 32
@mtk_spmi_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6873-spmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt6873_pmif_arb }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8195-spmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8195_pmif_arb }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mtk_spmi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 448, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot get drv_data\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_spmi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/spmi/spmi-mtk-pmif.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_spmi_probe._entry_ptr = internal global ptr @mtk_spmi_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pmif\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spmimst\00", [24 x i8] zeroinitializer }, align 32
@pmif_clock_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16], [20 x i8] zeroinitializer }, align 32
@mtk_spmi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get clocks: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_spmi_probe._entry_ptr.10 = internal global ptr @mtk_spmi_probe._entry.8, section ".printk_index", align 4
@mtk_spmi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 476, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable clocks: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_spmi_probe._entry_ptr.13 = internal global ptr @mtk_spmi_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmif_sys_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmif_tmr_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spmimst_clk_mux\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pmif_arb_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"timeout, err = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pmif_arb_cmd\00", [19 x i8] zeroinitializer }, align 32
@pmif_arb_cmd._entry_ptr = internal global ptr @pmif_arb_cmd._entry, section ".printk_index", align 4
@pmif_spmi_read_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 320, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"exceed the max slv id\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pmif_spmi_read_cmd\00", [45 x i8] zeroinitializer }, align 32
@pmif_spmi_read_cmd._entry_ptr = internal global ptr @pmif_spmi_read_cmd._entry, section ".printk_index", align 4
@pmif_spmi_read_cmd._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"pmif supports 1..4 bytes per trans, but:%zu requested\00", [42 x i8] zeroinitializer }, align 32
@pmif_spmi_read_cmd._entry_ptr.23 = internal global ptr @pmif_spmi_read_cmd._entry.21, section ".printk_index", align 4
@pmif_spmi_read_cmd._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 346, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to wait for SWINF_IDLE\0A\00", [33 x i8] zeroinitializer }, align 32
@pmif_spmi_read_cmd._entry_ptr.26 = internal global ptr @pmif_spmi_read_cmd._entry.24, section ".printk_index", align 4
@pmif_spmi_read_cmd._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.3, i32 362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to wait for SWINF_WFVLDCLR\0A\00", [61 x i8] zeroinitializer }, align 32
@pmif_spmi_read_cmd._entry_ptr.29 = internal global ptr @pmif_spmi_read_cmd._entry.27, section ".printk_index", align 4
@pmif_spmi_write_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.30, ptr @.str.3, i32 382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pmif_spmi_write_cmd\00", [44 x i8] zeroinitializer }, align 32
@pmif_spmi_write_cmd._entry_ptr = internal global ptr @pmif_spmi_write_cmd._entry, section ".printk_index", align 4
@pmif_spmi_write_cmd._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.30, ptr @.str.3, i32 406, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pmif_spmi_write_cmd._entry_ptr.32 = internal global ptr @pmif_spmi_write_cmd._entry.31, section ".printk_index", align 4
@mt6873_pmif_arb = internal constant { %struct.pmif_data, [20 x i8] } { %struct.pmif_data { ptr @mt6873_regs, ptr @mt6873_spmi_regs, i32 2 }, [20 x i8] zeroinitializer }, align 32
@mt8195_pmif_arb = internal constant { %struct.pmif_data, [20 x i8] } { %struct.pmif_data { ptr @mt8195_regs, ptr @mt8195_spmi_regs, i32 2 }, [20 x i8] zeroinitializer }, align 32
@mt6873_regs = internal constant { [45 x i32], [44 x i8] } { [45 x i32] [i32 0, i32 36, i32 336, i32 948, i32 992, i32 1024, i32 1048, i32 1056, i32 1060, i32 1064, i32 1072, i32 1076, i32 1080, i32 1088, i32 1092, i32 1096, i32 1104, i32 1108, i32 1112, i32 1120, i32 1124, i32 1132, i32 1136, i32 1140, i32 1144, i32 3112, i32 3076, i32 3092, i32 3072, i32 3108, i32 3176, i32 3140, i32 3156, i32 3136, i32 3172, i32 3240, i32 3204, i32 3220, i32 3200, i32 3236, i32 3304, i32 3268, i32 3284, i32 3264, i32 3300], [44 x i8] zeroinitializer }, align 32
@mt6873_spmi_regs = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 64, i32 68, i32 72, i32 76, i32 80, i32 84, i32 252], [48 x i8] zeroinitializer }, align 32
@mt8195_regs = internal constant { [45 x i32], [44 x i8] } { [45 x i32] [i32 0, i32 36, i32 336, i32 952, i32 996, i32 1032, i32 1056, i32 1064, i32 1068, i32 1072, i32 1080, i32 1084, i32 1088, i32 1096, i32 1100, i32 1104, i32 1112, i32 1116, i32 1120, i32 1128, i32 1132, i32 1140, i32 1144, i32 1148, i32 1152, i32 2088, i32 2052, i32 2068, i32 2048, i32 2084, i32 2152, i32 2116, i32 2132, i32 2112, i32 2148, i32 2216, i32 2180, i32 2196, i32 2176, i32 2212, i32 2280, i32 2244, i32 2260, i32 2240, i32 2276], [44 x i8] zeroinitializer }, align 32
@mt8195_spmi_regs = internal constant { [19 x i32], [52 x i8] } { [19 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 64, i32 68, i32 72, i32 76, i32 80, i32 84, i32 252, i32 20, i32 32, i32 36, i32 40, i32 44, i32 92, i32 248], [52 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"mtk_spmi_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 530, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 532, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"mtk_spmi_match_table\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 517, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 448, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 452, i32 58 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 458, i32 66 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"pmif_clock_names\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 55, i32 27 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 470, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 476, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 56, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 56, i32 17 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 56, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 305, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 320, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 325, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 346, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 362, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 382, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 406, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [16 x i8] c"mt6873_pmif_arb\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 421, i32 31 }
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"mt8195_pmif_arb\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 427, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant [12 x i8] c"mt6873_regs\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 107, i32 18 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"mt6873_spmi_regs\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 227, i32 18 }
@___asan_gen_.147 = private unnamed_addr constant [12 x i8] c"mt8195_regs\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 155, i32 18 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"mt8195_spmi_regs\00", align 1
@___asan_gen_.151 = private constant [32 x i8] c"../drivers/spmi/spmi-mtk-pmif.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 242, i32 18 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_mtk_spmi_driver_exit, ptr @__initcall__kmod_spmi_mtk_pmif__170_538_mtk_spmi_driver_init6, ptr @mtk_spmi_driver_exit, ptr @mtk_spmi_probe._entry, ptr @mtk_spmi_probe._entry.11, ptr @mtk_spmi_probe._entry.8, ptr @mtk_spmi_probe._entry_ptr, ptr @mtk_spmi_probe._entry_ptr.10, ptr @mtk_spmi_probe._entry_ptr.13, ptr @pmif_arb_cmd._entry, ptr @pmif_arb_cmd._entry_ptr, ptr @pmif_spmi_read_cmd._entry, ptr @pmif_spmi_read_cmd._entry.21, ptr @pmif_spmi_read_cmd._entry.24, ptr @pmif_spmi_read_cmd._entry.27, ptr @pmif_spmi_read_cmd._entry_ptr, ptr @pmif_spmi_read_cmd._entry_ptr.23, ptr @pmif_spmi_read_cmd._entry_ptr.26, ptr @pmif_spmi_read_cmd._entry_ptr.29, ptr @pmif_spmi_write_cmd._entry, ptr @pmif_spmi_write_cmd._entry.31, ptr @pmif_spmi_write_cmd._entry_ptr, ptr @pmif_spmi_write_cmd._entry_ptr.32, ptr @mtk_spmi_driver, ptr @.str, ptr @mtk_spmi_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @pmif_clock_names, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @mt6873_pmif_arb, ptr @mt8195_pmif_arb, ptr @mt6873_regs, ptr @mt6873_spmi_regs, ptr @mt8195_regs, ptr @mt8195_spmi_regs], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spmi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spmi_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spmi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmif_clock_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spmi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_spmi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmif_arb_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmif_spmi_read_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmif_spmi_read_cmd._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmif_spmi_read_cmd._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmif_spmi_read_cmd._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmif_spmi_write_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmif_spmi_write_cmd._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6873_pmif_arb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_pmif_arb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6873_regs to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6873_spmi_regs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_regs to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8195_spmi_regs to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spmi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_spmi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_spmi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_spmi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spmi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @spmi_controller_alloc(ptr noundef %dev, i32 noundef 60) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @device_get_match_data(ptr noundef %dev) #6
  %data = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %data, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %spmi_controller_put.exit

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.6) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %1, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call9 to i32
  br label %spmi_controller_put.exit

if.end15:                                         ; preds = %if.end8
  %call16 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.7) #6
  %spmimst_base = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %spmimst_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call16, ptr %spmimst_base, align 4
  %cmp.i116 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i116, label %if.then19, label %for.body.preheader

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call16 to i32
  br label %spmi_controller_put.exit

for.body.preheader:                               ; preds = %if.end15
  %nclks = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %nclks to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %nclks, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0124 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [3 x ptr], ptr @pmif_clock_names, i32 0, i32 %i.0124
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %arrayidx24 = getelementptr %struct.pmif, ptr %1, i32 0, i32 3, i32 %i.0124
  %10 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %arrayidx24, align 4
  %inc = add nuw i32 %i.0124, 1
  %11 = ptrtoint ptr %nclks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nclks, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %clks27 = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 3
  %call28 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev, i32 noundef %12, ptr noundef %clks27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call28) #9
  br label %spmi_controller_put.exit

if.end35:                                         ; preds = %for.end
  %13 = ptrtoint ptr %nclks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nclks, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %14, ptr noundef %clks27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end35.do.end44_crit_edge

if.end35.do.end44_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

if.end.i:                                         ; preds = %if.end35
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %14, ptr noundef %clks27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end46, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_bulk_unprepare(i32 noundef %14, ptr noundef %clks27) #6
  br label %do.end44

do.end44:                                         ; preds = %if.then3.i, %if.end35.do.end44_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end35.do.end44_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i.ph) #9
  br label %spmi_controller_put.exit

if.end46:                                         ; preds = %if.end.i
  %cmd = getelementptr inbounds %struct.spmi_controller, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @pmif_arb_cmd, ptr %cmd, align 4
  %read_cmd = getelementptr inbounds %struct.spmi_controller, ptr %call, i32 0, i32 3
  %16 = ptrtoint ptr %read_cmd to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @pmif_spmi_read_cmd, ptr %read_cmd, align 8
  %write_cmd = getelementptr inbounds %struct.spmi_controller, ptr %call, i32 0, i32 4
  %17 = ptrtoint ptr %write_cmd to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @pmif_spmi_write_cmd, ptr %write_cmd, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %soc_chan = getelementptr inbounds %struct.pmif_data, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %soc_chan to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %soc_chan, align 4
  %mul = mul i32 %21, 5
  %add = add i32 %mul, 25
  %chan = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %chan, align 4
  %add48 = add i32 %mul, 26
  %wdata = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %wdata to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add48, ptr %wdata, align 4
  %add50 = add i32 %mul, 27
  %rdata = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %rdata to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add50, ptr %rdata, align 4
  %add52 = add i32 %mul, 28
  %ch_send = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %ch_send to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add52, ptr %ch_send, align 4
  %add54 = add i32 %mul, 29
  %ch_rdy = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %ch_rdy to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add54, ptr %ch_rdy, align 4
  %driver_data.i.i117 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i117 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %driver_data.i.i117, align 4
  %call56 = tail call i32 @spmi_controller_add(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end46.cleanup_crit_edge, label %err_domain_remove

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_domain_remove:                                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %nclks to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nclks, align 4
  tail call void @clk_bulk_disable(i32 noundef %29, ptr noundef %clks27) #6
  tail call void @clk_bulk_unprepare(i32 noundef %29, ptr noundef %clks27) #6
  br label %spmi_controller_put.exit

spmi_controller_put.exit:                         ; preds = %err_domain_remove, %do.end44, %do.end33, %if.then19, %if.then12, %if.then6
  %err.0 = phi i32 [ %4, %if.then12 ], [ %6, %if.then19 ], [ %call28, %do.end33 ], [ %retval.0.i.ph, %do.end44 ], [ %call56, %err_domain_remove ], [ -22, %if.then6 ]
  tail call void @put_device(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %spmi_controller_put.exit, %if.end46.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %spmi_controller_put.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_spmi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i5, align 4
  %nclks = getelementptr inbounds %struct.pmif, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %nclks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nclks, align 4
  %clks = getelementptr inbounds %struct.pmif, ptr %3, i32 0, i32 3
  tail call void @clk_bulk_disable(i32 noundef %5, ptr noundef %clks) #6
  tail call void @clk_bulk_unprepare(i32 noundef %5, ptr noundef %clks) #6
  tail call void @spmi_controller_remove(ptr noundef %1) #6
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.spmi_controller_put.exit_crit_edge, label %if.then.i

entry.spmi_controller_put.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spmi_controller_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef nonnull %1) #6
  br label %spmi_controller_put.exit

spmi_controller_put.exit:                         ; preds = %if.then.i, %entry.spmi_controller_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spmi_controller_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmif_arb_cmd(ptr noundef %ctrl, i8 noundef zeroext %opc, i8 noundef zeroext %sid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i8 %opc, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %0)
  %1 = icmp ult i8 %0, -4
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %opc to i32
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %sub = shl nuw nsw i32 %conv, 4
  %shl = add nsw i32 %sub, -256
  %conv6 = zext i8 %sid to i32
  %or = or i32 %shl, %conv6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %spmimst_base.i = getelementptr inbounds %struct.pmif, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %spmimst_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spmimst_base.i, align 4
  %data.i = getelementptr inbounds %struct.pmif, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %spmimst_regs.i = getelementptr inbounds %struct.pmif_data, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %spmimst_regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spmimst_regs.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #6, !srcloc !95
  %call7 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call7, 10000000
  %13 = ptrtoint ptr %spmimst_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spmimst_base.i, align 4
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %spmimst_regs66 = getelementptr inbounds %struct.pmif_data, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %spmimst_regs66 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spmimst_regs66, align 4
  %arrayidx67 = getelementptr i32, ptr %18, i32 2
  %19 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx67, align 4
  %add.ptr68 = getelementptr i8, ptr %14, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #6, !srcloc !96
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %and69 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %cmp11.not70 = icmp eq i32 %and69, 0
  br i1 %cmp11.not70, label %if.end.land.lhs.true_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call15 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %if.then19, label %cond.false

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %spmimst_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %spmimst_base.i, align 4
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %spmimst_regs24 = getelementptr inbounds %struct.pmif_data, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %spmimst_regs24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spmimst_regs24, align 4
  %arrayidx25 = getelementptr i32, ptr %28, i32 2
  %29 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx25, align 4
  %add.ptr26 = getelementptr i8, ptr %24, i32 %30
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #6, !srcloc !96
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #6
  %34 = ptrtoint ptr %spmimst_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spmimst_base.i, align 4
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %spmimst_regs = getelementptr inbounds %struct.pmif_data, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %spmimst_regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %spmimst_regs, align 4
  %arrayidx = getelementptr i32, ptr %39, i32 2
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %35, i32 %41
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !96
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %and = and i32 %43, 1
  %cmp11.not = icmp eq i32 %and, 0
  br i1 %cmp11.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then19, %if.end.for.end_crit_edge
  %rdata.0 = phi i32 [ %32, %if.then19 ], [ %22, %if.end.for.end_crit_edge ], [ %43, %cond.false.for.end_crit_edge ]
  %and40 = and i32 %rdata.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %cmp41.not = icmp eq i32 %and40, 0
  br i1 %cmp41.not, label %do.end, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.17, i32 noundef -110) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -110, %do.end ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmif_spmi_read_cmd(ptr noundef %ctrl, i8 noundef zeroext %opc, i8 noundef zeroext %sid, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %buf, i32 noundef %len) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data)
  %conv = zext i8 %sid to i32
  %and = and i32 %conv, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp = icmp ugt i32 %len, 4
  br i1 %cmp, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.22, i32 noundef %len) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %opc)
  %2 = icmp sgt i8 %opc, 95
  br i1 %2, label %if.end7.if.end32_crit_edge, label %if.else

if.end7.if.end32_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.else:                                          ; preds = %if.end7
  %3 = and i8 %opc, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %3)
  %4 = icmp eq i8 %3, 32
  %5 = and i8 %opc, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %5)
  %6 = icmp eq i8 %5, 56
  %or.cond = or i1 %4, %6
  br i1 %or.cond, label %if.else.if.end32_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.end32:                                         ; preds = %if.else.if.end32_crit_edge, %if.end7.if.end32_crit_edge
  %opc.addr.0 = phi i32 [ 1073741824, %if.end7.if.end32_crit_edge ], [ -1073741824, %if.else.if.end32_crit_edge ]
  %chan = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 2
  %call33 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call33, 10000000
  %data35 = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %9 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data35, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chan, align 4
  %arrayidx240 = getelementptr i32, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx240, align 4
  %add.ptr241 = getelementptr i8, ptr %8, i32 %16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr241) #6, !srcloc !96
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %19 = and i32 %18, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp39242 = icmp eq i32 %19, 0
  br i1 %cmp39242, label %if.end32.for.end_crit_edge, label %land.lhs.true44.preheader

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true44.preheader:                        ; preds = %if.end32
  %call45262 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call45262, i64 %add.i)
  %cmp3.i263 = icmp sgt i64 %call45262, %add.i
  br i1 %cmp3.i263, label %land.lhs.true44.preheader.if.then49_crit_edge, label %land.lhs.true44.preheader.cond.false_crit_edge

land.lhs.true44.preheader.cond.false_crit_edge:   ; preds = %land.lhs.true44.preheader
  br label %cond.false

land.lhs.true44.preheader.if.then49_crit_edge:    ; preds = %land.lhs.true44.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

land.lhs.true44:                                  ; preds = %cond.false
  %call45 = tail call i64 @ktime_get() #6
  %cmp3.i = icmp sgt i64 %call45, %add.i
  br i1 %cmp3.i, label %land.lhs.true44.if.then49_crit_edge, label %land.lhs.true44.cond.false_crit_edge

land.lhs.true44.cond.false_crit_edge:             ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true44.if.then49_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then49

if.then49:                                        ; preds = %land.lhs.true44.if.then49_crit_edge, %land.lhs.true44.preheader.if.then49_crit_edge
  %.lcssa259 = phi i32 [ %18, %land.lhs.true44.preheader.if.then49_crit_edge ], [ %45, %land.lhs.true44.if.then49_crit_edge ]
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.lcssa259, ptr %data, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data35, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chan, align 4
  %arrayidx56 = getelementptr i32, ptr %26, i32 %28
  %29 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx56, align 4
  %add.ptr57 = getelementptr i8, ptr %22, i32 %30
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #6, !srcloc !96
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true44.cond.false_crit_edge, %land.lhs.true44.preheader.cond.false_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 2147480) #6
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %36 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data35, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %40 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chan, align 4
  %arrayidx = getelementptr i32, ptr %39, i32 %41
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %35, i32 %43
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !96
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %46 = and i32 %45, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp39 = icmp eq i32 %46, 0
  br i1 %cmp39, label %cond.false.for.end_crit_edge, label %land.lhs.true44

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then49, %if.end32.for.end_crit_edge
  %storemerge255 = phi i32 [ %32, %if.then49 ], [ %18, %if.end32.for.end_crit_edge ], [ %45, %cond.false.for.end_crit_edge ]
  %47 = and i32 %storemerge255, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp73 = icmp eq i32 %47, 0
  br i1 %cmp73, label %if.end85, label %if.then77

if.then77:                                        ; preds = %for.end
  %48 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chan, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %52 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data35, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %arrayidx.i.i = getelementptr i32, ptr %55, i32 %49
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 %57
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %59 = and i32 %58, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %59)
  %cmp.i220 = icmp eq i32 %59, 201326592
  br i1 %cmp.i220, label %if.then79, label %if.then77.do.end83_crit_edge

if.then77.do.end83_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end83

if.then79:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  %ch_rdy = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 2, i32 4
  %60 = ptrtoint ptr %ch_rdy to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ch_rdy, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %64 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data35, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %arrayidx.i = getelementptr i32, ptr %67, i32 %61
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %63, i32 %69
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !95
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %if.then77.do.end83_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.25) #9
  br label %cleanup

if.end85:                                         ; preds = %for.end
  %shl88 = shl nuw i32 %conv, 24
  %sub = shl i32 %len, 16
  %shl89 = add i32 %sub, -65536
  %conv91 = zext i16 %addr to i32
  %or = or i32 %shl88, %conv91
  %or90 = or i32 %or, %shl89
  %or92 = or i32 %or90, %opc.addr.0
  %ch_send = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 2, i32 3
  %70 = ptrtoint ptr %ch_send to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ch_send, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %72 = tail call i32 @llvm.bswap.i32(i32 %or92) #6
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %75 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data35, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %arrayidx.i222 = getelementptr i32, ptr %78, i32 %71
  %79 = ptrtoint ptr %arrayidx.i222 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i222, align 4
  %add.ptr.i223 = getelementptr i8, ptr %74, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i223, i32 %72) #6, !srcloc !95
  %call96 = tail call i64 @ktime_get() #6
  %add.i224 = add i64 %call96, 10000000
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %83 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data35, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %87 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %chan, align 4
  %arrayidx105245 = getelementptr i32, ptr %86, i32 %88
  %89 = ptrtoint ptr %arrayidx105245 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx105245, align 4
  %add.ptr106246 = getelementptr i8, ptr %82, i32 %90
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106246) #6, !srcloc !96
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %93 = and i32 %92, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %93)
  %cmp112247 = icmp eq i32 %93, 12
  br i1 %cmp112247, label %if.end85.for.end147_crit_edge, label %if.end85.land.lhs.true117_crit_edge

if.end85.land.lhs.true117_crit_edge:              ; preds = %if.end85
  br label %land.lhs.true117

if.end85.for.end147_crit_edge:                    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end147

land.lhs.true117:                                 ; preds = %cond.false141.land.lhs.true117_crit_edge, %if.end85.land.lhs.true117_crit_edge
  %call118 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call118, i64 %add.i224)
  %cmp3.i226 = icmp sgt i64 %call118, %add.i224
  br i1 %cmp3.i226, label %if.then122, label %cond.false141

if.then122:                                       ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  %96 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data35, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %100 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %chan, align 4
  %arrayidx129 = getelementptr i32, ptr %99, i32 %101
  %102 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx129, align 4
  %add.ptr130 = getelementptr i8, ptr %95, i32 %103
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #6, !srcloc !96
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  br label %for.end147

cond.false141:                                    ; preds = %land.lhs.true117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 2147480) #6
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 4
  %109 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data35, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %113 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %chan, align 4
  %arrayidx105 = getelementptr i32, ptr %112, i32 %114
  %115 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx105, align 4
  %add.ptr106 = getelementptr i8, ptr %108, i32 %116
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106) #6, !srcloc !96
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %119 = and i32 %118, 14
  %cmp112 = icmp eq i32 %119, 12
  br i1 %cmp112, label %cond.false141.for.end147_crit_edge, label %cond.false141.land.lhs.true117_crit_edge

cond.false141.land.lhs.true117_crit_edge:         ; preds = %cond.false141
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true117

cond.false141.for.end147_crit_edge:               ; preds = %cond.false141
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end147

for.end147:                                       ; preds = %cond.false141.for.end147_crit_edge, %if.then122, %if.end85.for.end147_crit_edge
  %storemerge = phi i32 [ %105, %if.then122 ], [ %92, %if.end85.for.end147_crit_edge ], [ %118, %cond.false141.for.end147_crit_edge ]
  %120 = and i32 %storemerge, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %120)
  %cmp151 = icmp eq i32 %120, 12
  br i1 %cmp151, label %if.end161, label %do.end159

do.end159:                                        ; preds = %for.end147
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end161:                                        ; preds = %for.end147
  call void @__sanitizer_cov_trace_pc() #8
  %rdata = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 2, i32 2
  %121 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %rdata, align 4
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  %125 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %data35, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %arrayidx.i230 = getelementptr i32, ptr %128, i32 %122
  %129 = ptrtoint ptr %arrayidx.i230 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.i230, align 4
  %add.ptr.i231 = getelementptr i8, ptr %124, i32 %130
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i231) #6, !srcloc !96
  %132 = tail call i32 @llvm.bswap.i32(i32 %131) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %133 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %data, align 4
  %134 = call ptr @memcpy(ptr %buf, ptr %data, i32 %len)
  %ch_rdy163 = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 2, i32 4
  %135 = ptrtoint ptr %ch_rdy163 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %ch_rdy163, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %137 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %1, align 4
  %139 = ptrtoint ptr %data35 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %data35, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %arrayidx.i233 = getelementptr i32, ptr %142, i32 %136
  %143 = ptrtoint ptr %arrayidx.i233 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i233, align 4
  %add.ptr.i234 = getelementptr i8, ptr %138, i32 %144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i234, i32 16777216) #6, !srcloc !95
  br label %cleanup

cleanup:                                          ; preds = %if.end161, %do.end159, %do.end83, %if.else.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end5 ], [ -110, %do.end83 ], [ -110, %do.end159 ], [ 0, %if.end161 ], [ -22, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmif_spmi_write_cmd(ptr noundef %ctrl, i8 noundef zeroext %opc, i8 noundef zeroext %sid, i16 noundef zeroext %addr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp = icmp ugt i32 %len, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.22, i32 noundef %len) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = and i8 %opc, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %2)
  %3 = icmp eq i8 %2, 64
  br i1 %3, label %if.end.if.end26_crit_edge, label %if.else

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %opc)
  %cmp8 = icmp ult i8 %opc, 16
  %4 = and i8 %opc, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %4)
  %5 = icmp eq i8 %4, 48
  %or.cond = or i1 %cmp8, %5
  br i1 %or.cond, label %if.else.if.end26_crit_edge, label %if.else18

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %opc)
  %cmp20 = icmp slt i8 %opc, 0
  br i1 %cmp20, label %if.else18.if.end26_crit_edge, label %if.else18.cleanup_crit_edge

if.else18.cleanup_crit_edge:                      ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else18.if.end26_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.end26:                                         ; preds = %if.else18.if.end26_crit_edge, %if.else.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %opc.addr.0 = phi i32 [ 1610612736, %if.end.if.end26_crit_edge ], [ -536870912, %if.else.if.end26_crit_edge ], [ 536870912, %if.else18.if.end26_crit_edge ]
  %chan = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 2
  %call27 = tail call i64 @ktime_get() #6
  %add.i = add i64 %call27, 10000000
  %data29 = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data29, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan, align 4
  %arrayidx134 = getelementptr i32, ptr %11, i32 %13
  %14 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx134, align 4
  %add.ptr135 = getelementptr i8, ptr %7, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135) #6, !srcloc !96
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %18 = and i32 %17, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp32136 = icmp eq i32 %18, 0
  br i1 %cmp32136, label %if.end26.for.end_crit_edge, label %if.end26.land.lhs.true36_crit_edge

if.end26.land.lhs.true36_crit_edge:               ; preds = %if.end26
  br label %land.lhs.true36

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true36:                                  ; preds = %cond.false.land.lhs.true36_crit_edge, %if.end26.land.lhs.true36_crit_edge
  %call37 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call37, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call37, %add.i
  br i1 %cmp3.i, label %if.then41, label %cond.false

if.then41:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data29, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chan, align 4
  %arrayidx48 = getelementptr i32, ptr %24, i32 %26
  %27 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx48, align 4
  %add.ptr49 = getelementptr i8, ptr %20, i32 %28
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #6, !srcloc !96
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 2147480) #6
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %34 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data29, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %38 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chan, align 4
  %arrayidx = getelementptr i32, ptr %37, i32 %39
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 %41
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !96
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  %44 = and i32 %43, 14
  %cmp32 = icmp eq i32 %44, 0
  br i1 %cmp32, label %cond.false.for.end_crit_edge, label %cond.false.land.lhs.true36_crit_edge

cond.false.land.lhs.true36_crit_edge:             ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true36

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then41, %if.end26.for.end_crit_edge
  %storemerge = phi i32 [ %30, %if.then41 ], [ %17, %if.end26.for.end_crit_edge ], [ %43, %cond.false.for.end_crit_edge ]
  %45 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %storemerge, ptr %data, align 4
  %46 = and i32 %storemerge, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp65 = icmp eq i32 %46, 0
  br i1 %cmp65, label %if.end77, label %if.then69

if.then69:                                        ; preds = %for.end
  %47 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chan, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %51 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data29, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %arrayidx.i.i = getelementptr i32, ptr %54, i32 %48
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 %56
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  %58 = and i32 %57, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %58)
  %cmp.i122 = icmp eq i32 %58, 201326592
  br i1 %cmp.i122, label %if.then71, label %if.then69.do.end75_crit_edge

if.then69.do.end75_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end75

if.then71:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  %ch_rdy = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 2, i32 4
  %59 = ptrtoint ptr %ch_rdy to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ch_rdy, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %63 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %data29, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %arrayidx.i = getelementptr i32, ptr %66, i32 %60
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %62, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !95
  br label %do.end75

do.end75:                                         ; preds = %if.then71, %if.then69.do.end75_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.25) #9
  br label %cleanup

if.end77:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %69 = call ptr @memcpy(ptr %data, ptr %buf, i32 %len)
  %70 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %70)
  %data.0.data.0.data.0.96 = load i32, ptr %data, align 4
  %wdata = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %wdata to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %wdata, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %73 = tail call i32 @llvm.bswap.i32(i32 %data.0.data.0.data.0.96) #6
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %76 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data29, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %arrayidx.i124 = getelementptr i32, ptr %79, i32 %72
  %80 = ptrtoint ptr %arrayidx.i124 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i124, align 4
  %add.ptr.i125 = getelementptr i8, ptr %75, i32 %81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %73) #6, !srcloc !95
  %conv79 = zext i8 %sid to i32
  %shl80 = shl nuw i32 %conv79, 24
  %sub = shl i32 %len, 16
  %shl82 = add i32 %sub, -65536
  %conv84 = zext i16 %addr to i32
  %or81 = or i32 %shl80, %conv84
  %or83 = or i32 %or81, %shl82
  %or85 = or i32 %or83, %opc.addr.0
  %ch_send = getelementptr inbounds %struct.pmif, ptr %1, i32 0, i32 2, i32 3
  %82 = ptrtoint ptr %ch_send to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ch_send, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %84 = tail call i32 @llvm.bswap.i32(i32 %or85) #6
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %87 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data29, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %arrayidx.i127 = getelementptr i32, ptr %90, i32 %83
  %91 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i127, align 4
  %add.ptr.i128 = getelementptr i8, ptr %86, i32 %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %84) #6, !srcloc !95
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %do.end75, %if.else18.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -110, %do.end75 ], [ 0, %if.end77 ], [ -22, %if.else18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_controller_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spmi_controller_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !75, !77, !79, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_spmi_mtk_pmif__170_538_mtk_spmi_driver_init6, !1, !"__initcall__kmod_spmi_mtk_pmif__170_538_mtk_spmi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 538, i32 1}
!2 = !{ptr @__exitcall_mtk_spmi_driver_exit, !1, !"__exitcall_mtk_spmi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 540, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 541, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 542, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 532, i32 11}
!12 = !{ptr @mtk_spmi_driver, !13, !"mtk_spmi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 530, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 448, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mtk_spmi_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mtk_spmi_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 452, i32 58}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 458, i32 66}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 470, i32 3}
!28 = !{ptr @mtk_spmi_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mtk_spmi_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 476, i32 3}
!32 = !{ptr @mtk_spmi_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mtk_spmi_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 56, i32 2}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 56, i32 17}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 56, i32 32}
!40 = !{ptr @pmif_clock_names, !41, !"pmif_clock_names", i1 false, i1 false}
!41 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 55, i32 27}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 305, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pmif_arb_cmd._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @pmif_arb_cmd._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 320, i32 3}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pmif_spmi_read_cmd._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @pmif_spmi_read_cmd._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 325, i32 3}
!54 = !{ptr @pmif_spmi_read_cmd._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @pmif_spmi_read_cmd._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 346, i32 3}
!58 = !{ptr @pmif_spmi_read_cmd._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @pmif_spmi_read_cmd._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 362, i32 3}
!62 = !{ptr @pmif_spmi_read_cmd._entry.27, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @pmif_spmi_read_cmd._entry_ptr.29, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 382, i32 3}
!66 = !{ptr @pmif_spmi_write_cmd._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @pmif_spmi_write_cmd._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @pmif_spmi_write_cmd._entry.31, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 406, i32 3}
!70 = !{ptr @pmif_spmi_write_cmd._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @mtk_spmi_match_table, !72, !"mtk_spmi_match_table", i1 false, i1 false}
!72 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 517, i32 34}
!73 = !{ptr @mt6873_pmif_arb, !74, !"mt6873_pmif_arb", i1 false, i1 false}
!74 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 421, i32 31}
!75 = !{ptr @mt6873_regs, !76, !"mt6873_regs", i1 false, i1 false}
!76 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 107, i32 18}
!77 = !{ptr @mt6873_spmi_regs, !78, !"mt6873_spmi_regs", i1 false, i1 false}
!78 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 227, i32 18}
!79 = !{ptr @mt8195_pmif_arb, !80, !"mt8195_pmif_arb", i1 false, i1 false}
!80 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 427, i32 31}
!81 = !{ptr @mt8195_regs, !82, !"mt8195_regs", i1 false, i1 false}
!82 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 155, i32 18}
!83 = !{ptr @mt8195_spmi_regs, !84, !"mt8195_spmi_regs", i1 false, i1 false}
!84 = !{!"../drivers/spmi/spmi-mtk-pmif.c", i32 242, i32 18}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 2152519683}
!95 = !{i64 3088721}
!96 = !{i64 3089139}
!97 = !{i64 2152522230}
!98 = !{i64 2152522884}
!99 = !{i64 2152530748}
!100 = !{i64 2152531342}
!101 = !{i64 2152519019}
!102 = !{i64 2152519248}
!103 = !{i64 2152535841}
!104 = !{i64 2152536435}
!105 = !{i64 2152542847}
!106 = !{i64 2152543441}
