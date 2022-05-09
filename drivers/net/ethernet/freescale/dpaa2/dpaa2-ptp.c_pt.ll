; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsl_mc_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_mc_device_id = type { i16, [16 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_mc_device = type { %struct.device, i64, i16, i32, i16, ptr, %struct.fsl_mc_obj_desc, ptr, ptr, ptr, ptr, ptr }
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
%struct.fsl_mc_obj_desc = type { [16 x i8], i32, i16, i16, i16, i8, i8, i32, [16 x i8], i16 }
%struct.ptp_qoriq = type { ptr, %struct.ptp_qoriq_registers, %struct.spinlock, ptr, %struct.ptp_clock_info, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.ptp_qoriq_registers = type { ptr, ptr, ptr, ptr }
%struct.ptp_clock_event = type { i32, i32, %union.anon.78 }
%union.anon.78 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.ptp_clock_request = type { i32, %union.anon.75 }
%union.anon.75 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.76, %struct.ptp_clock_time, i32, i32, %union.anon.77 }
%union.anon.76 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.77 = type { %struct.ptp_clock_time }

@__initcall__kmod_fsl_dpaa2_ptp__275_257_dpaa2_ptp_drv_init6 = internal global ptr @dpaa2_ptp_drv_init, section ".initcall6.init", align 4
@dpaa2_ptp_drv = internal global { %struct.fsl_mc_driver, [60 x i8] } { %struct.fsl_mc_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @dpaa2_ptp_match_id_table, ptr @dpaa2_ptp_probe, ptr @dpaa2_ptp_remove, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__exitcall_dpaa2_ptp_drv_exit = internal global ptr @dpaa2_ptp_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file276 = internal constant [70 x i8] c"fsl_dpaa2_ptp.file=drivers/net/ethernet/freescale/dpaa2/fsl-dpaa2-ptp\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [29 x i8] c"fsl_dpaa2_ptp.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description278 = internal constant [49 x i8] c"fsl_dpaa2_ptp.description=DPAA2 PTP Clock Driver\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl_dpaa2_ptp\00", [18 x i8] zeroinitializer }, align 32
@dpaa2_ptp_match_id_table = internal constant { [2 x %struct.fsl_mc_device_id], [60 x i8] } { [2 x %struct.fsl_mc_device_id] [%struct.fsl_mc_device_id { i16 6487, [16 x i8] c"dprtc\00\00\00\00\00\00\00\00\00\00\00" }, %struct.fsl_mc_device_id zeroinitializer], [60 x i8] zeroinitializer }, align 32
@dpaa2_ptp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 146, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fsl_mc_portal_allocate err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dpaa2_ptp_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dpaa2_ptp_probe._entry_ptr = internal global ptr @dpaa2_ptp_probe._entry, section ".printk_index", align 4
@dpaa2_ptp_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 153, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dprtc_open err %d\0A\00", [45 x i8] zeroinitializer }, align 32
@dpaa2_ptp_probe._entry_ptr.8 = internal global ptr @dpaa2_ptp_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,dpaa2-ptp\00", [18 x i8] zeroinitializer }, align 32
@dpaa2_ptp_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MC irqs allocation failed\0A\00", [37 x i8] zeroinitializer }, align 32
@dpaa2_ptp_probe._entry_ptr.12 = internal global ptr @dpaa2_ptp_probe._entry.10, section ".printk_index", align 4
@dpaa2_ptp_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 186, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"devm_request_threaded_irq(): %d\0A\00", [63 x i8] zeroinitializer }, align 32
@dpaa2_ptp_probe._entry_ptr.15 = internal global ptr @dpaa2_ptp_probe._entry.13, section ".printk_index", align 4
@dpaa2_ptp_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dprtc_set_irq_enable(): %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dpaa2_ptp_probe._entry_ptr.18 = internal global ptr @dpaa2_ptp_probe._entry.16, section ".printk_index", align 4
@dpaa2_ptp_caps = internal constant { %struct.ptp_clock_info, [52 x i8] } { %struct.ptp_clock_info { ptr null, [32 x i8] c"DPAA2 PTP Clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 512000, i32 2, i32 2, i32 3, i32 0, i32 1, ptr null, ptr @ptp_qoriq_adjfine, ptr null, ptr null, ptr @ptp_qoriq_adjtime, ptr @ptp_qoriq_gettime, ptr null, ptr null, ptr @ptp_qoriq_settime, ptr @dpaa2_ptp_enable, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@dpaa2_phc_index = external dso_local local_unnamed_addr global i32, align 4
@dpaa2_ptp = external dso_local local_unnamed_addr global ptr, align 4
@dpaa2_ptp_irq_handler_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dprtc_get_irq_status err %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dpaa2_ptp_irq_handler_thread\00", [35 x i8] zeroinitializer }, align 32
@dpaa2_ptp_irq_handler_thread._entry_ptr = internal global ptr @dpaa2_ptp_irq_handler_thread._entry, section ".printk_index", align 4
@dpaa2_ptp_irq_handler_thread._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dprtc_clear_irq_status err %d\0A\00", [33 x i8] zeroinitializer }, align 32
@dpaa2_ptp_irq_handler_thread._entry_ptr.23 = internal global ptr @dpaa2_ptp_irq_handler_thread._entry.21, section ".printk_index", align 4
@dpaa2_ptp_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 54, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dprtc_get_irq_mask(): %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dpaa2_ptp_enable\00", [47 x i8] zeroinitializer }, align 32
@dpaa2_ptp_enable._entry_ptr = internal global ptr @dpaa2_ptp_enable._entry, section ".printk_index", align 4
@dpaa2_ptp_enable._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 66, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dprtc_set_irq_mask(): %d\0A\00", [38 x i8] zeroinitializer }, align 32
@dpaa2_ptp_enable._entry_ptr.28 = internal global ptr @dpaa2_ptp_enable._entry.26, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"dpaa2_ptp_drv\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 247, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 249, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [25 x i8] c"dpaa2_ptp_match_id_table\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 238, i32 38 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 146, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 153, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 159, i32 45 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 175, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 186, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 193, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [15 x i8] c"dpaa2_ptp_caps\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 73, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 104, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 122, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 54, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [52 x i8] c"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 66, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_description278, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_license277, ptr @__exitcall_dpaa2_ptp_drv_exit, ptr @__initcall__kmod_fsl_dpaa2_ptp__275_257_dpaa2_ptp_drv_init6, ptr @dpaa2_ptp_drv_exit, ptr @dpaa2_ptp_enable._entry, ptr @dpaa2_ptp_enable._entry.26, ptr @dpaa2_ptp_enable._entry_ptr, ptr @dpaa2_ptp_enable._entry_ptr.28, ptr @dpaa2_ptp_irq_handler_thread._entry, ptr @dpaa2_ptp_irq_handler_thread._entry.21, ptr @dpaa2_ptp_irq_handler_thread._entry_ptr, ptr @dpaa2_ptp_irq_handler_thread._entry_ptr.23, ptr @dpaa2_ptp_probe._entry, ptr @dpaa2_ptp_probe._entry.10, ptr @dpaa2_ptp_probe._entry.13, ptr @dpaa2_ptp_probe._entry.16, ptr @dpaa2_ptp_probe._entry.6, ptr @dpaa2_ptp_probe._entry_ptr, ptr @dpaa2_ptp_probe._entry_ptr.12, ptr @dpaa2_ptp_probe._entry_ptr.15, ptr @dpaa2_ptp_probe._entry_ptr.18, ptr @dpaa2_ptp_probe._entry_ptr.8, ptr @dpaa2_ptp_drv, ptr @.str, ptr @dpaa2_ptp_match_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @dpaa2_ptp_caps, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_ptp_drv to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_ptp_match_id_table to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_ptp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_ptp_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_ptp_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_ptp_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_ptp_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_ptp_caps to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_ptp_irq_handler_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_ptp_irq_handler_thread._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_ptp_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpaa2_ptp_enable._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_ptp_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__fsl_mc_driver_register(ptr noundef nonnull @dpaa2_ptp_drv, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dpaa2_ptp_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fsl_mc_driver_unregister(ptr noundef nonnull @dpaa2_ptp_drv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsl_mc_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_ptp_probe(ptr noundef %mc_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %mc_dev, i32 noundef 236, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mc_io = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 5
  %call2 = tail call i32 @fsl_mc_portal_allocate(ptr noundef %mc_dev, i16 noundef zeroext 0, ptr noundef %mc_io) #5
  %0 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %do.end [
    i32 0, label %if.end7
    i32 -6, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.1, i32 noundef %call2) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %1 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mc_io, align 4
  %id = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 8
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 4
  %call9 = tail call i32 @dprtc_open(ptr noundef %2, i32 noundef 0, i32 noundef %4, ptr noundef %mc_handle) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end15, label %do.end14

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.7, i32 noundef %call9) #8
  br label %err_free_mcp

if.end15:                                         ; preds = %if.end7
  %dev16 = getelementptr inbounds %struct.ptp_qoriq, ptr %call.i, i32 0, i32 7
  %5 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mc_dev, ptr %dev16, align 4
  %call17 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9) #5
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end15.err_close_crit_edge, label %if.end20

if.end15.err_close_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_close

if.end20:                                         ; preds = %if.end15
  %of_node = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call17, ptr %of_node, align 8
  %call21 = tail call ptr @of_iomap(ptr noundef nonnull %call17, i32 noundef 0) #5
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end20.err_close_crit_edge, label %if.end24

if.end20.err_close_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_close

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @fsl_mc_allocate_irqs(ptr noundef %mc_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end31, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.11) #8
  br label %err_unmap

if.end31:                                         ; preds = %if.end24
  %irqs = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 8
  %7 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irqs, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %irq = getelementptr inbounds %struct.ptp_qoriq, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end31.dev_name.exit_crit_edge

if.end31.dev_name.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %mc_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mc_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end31.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.end.i ], [ %15, %if.end31.dev_name.exit_crit_edge ]
  %call34 = tail call i32 @request_threaded_irq(i32 noundef %12, ptr noundef null, ptr noundef nonnull @dpaa2_ptp_irq_handler_thread, i32 noundef 24576, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %if.end40

do.end39:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.14, i32 noundef %call34) #8
  br label %err_free_mc_irq

if.end40:                                         ; preds = %dev_name.exit
  %18 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mc_io, align 4
  %20 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mc_handle, align 8
  %call43 = tail call i32 @dprtc_set_irq_enable(ptr noundef %19, i32 noundef 0, i16 noundef zeroext %21, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end48, label %if.end49

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.17, i32 noundef %call43) #8
  br label %err_free_threaded_irq

if.end49:                                         ; preds = %if.end40
  %call50 = tail call i32 @ptp_qoriq_init(ptr noundef nonnull %call.i, ptr noundef nonnull %call21, ptr noundef nonnull @dpaa2_ptp_caps) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.err_free_threaded_irq_crit_edge

if.end49.err_free_threaded_irq_crit_edge:         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_threaded_irq

if.end53:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %phc_index = getelementptr inbounds %struct.ptp_qoriq, ptr %call.i, i32 0, i32 11
  %22 = ptrtoint ptr %phc_index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %phc_index, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @dpaa2_phc_index to i32))
  store i32 %23, ptr @dpaa2_phc_index, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @dpaa2_ptp to i32))
  store ptr %call.i, ptr @dpaa2_ptp, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 8
  %24 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

err_free_threaded_irq:                            ; preds = %if.end49.err_free_threaded_irq_crit_edge, %do.end48
  %err.0 = phi i32 [ %call43, %do.end48 ], [ %call50, %if.end49.err_free_threaded_irq_crit_edge ]
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  %call55 = tail call ptr @free_irq(i32 noundef %26, ptr noundef nonnull %call.i) #5
  br label %err_free_mc_irq

err_free_mc_irq:                                  ; preds = %err_free_threaded_irq, %do.end39
  %err.1 = phi i32 [ %call34, %do.end39 ], [ %err.0, %err_free_threaded_irq ]
  tail call void @fsl_mc_free_irqs(ptr noundef %mc_dev) #5
  br label %err_unmap

err_unmap:                                        ; preds = %err_free_mc_irq, %do.end30
  %err.2 = phi i32 [ %call25, %do.end30 ], [ %err.1, %err_free_mc_irq ]
  tail call void @iounmap(ptr noundef nonnull %call21) #5
  br label %err_close

err_close:                                        ; preds = %err_unmap, %if.end20.err_close_crit_edge, %if.end15.err_close_crit_edge
  %err.3 = phi i32 [ %err.2, %err_unmap ], [ -19, %if.end15.err_close_crit_edge ], [ -12, %if.end20.err_close_crit_edge ]
  %27 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mc_io, align 4
  %29 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mc_handle, align 8
  %call58 = tail call i32 @dprtc_close(ptr noundef %28, i32 noundef 0, i16 noundef zeroext %30) #5
  br label %err_free_mcp

err_free_mcp:                                     ; preds = %err_close, %do.end14
  %err.4 = phi i32 [ %call9, %do.end14 ], [ %err.3, %err_close ]
  %31 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mc_io, align 4
  tail call void @fsl_mc_portal_free(ptr noundef %32) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free_mcp, %if.end53, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %do.end ], [ %err.4, %err_free_mcp ], [ -517, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_ptp_remove(ptr noundef %mc_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @dpaa2_phc_index to i32))
  store i32 -1, ptr @dpaa2_phc_index, align 4
  tail call void @ptp_qoriq_free(ptr noundef %1) #5
  tail call void @fsl_mc_free_irqs(ptr noundef %mc_dev) #5
  %mc_io = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 5
  %2 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_io, align 4
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %mc_dev, i32 0, i32 4
  %4 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mc_handle, align 8
  %call2 = tail call i32 @dprtc_close(ptr noundef %3, i32 noundef 0, i16 noundef zeroext %5) #5
  %6 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mc_io, align 4
  tail call void @fsl_mc_portal_free(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_portal_allocate(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprtc_open(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_allocate_irqs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_ptp_irq_handler_thread(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  %event = alloca %struct.ptp_clock_event, align 8
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %event) #5
  %0 = call ptr @memset(ptr %event, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %status, align 4
  %dev1 = getelementptr inbounds %struct.ptp_qoriq, ptr %priv, i32 0, i32 7
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %mc_io = getelementptr inbounds %struct.fsl_mc_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_io, align 4
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mc_handle, align 8
  %call = call i32 @dprtc_get_irq_status(ptr noundef %5, i32 noundef 0, i16 noundef zeroext %7, i8 noundef zeroext 0, ptr noundef nonnull %status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end, !prof !69

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  %and = and i32 %9, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %event, align 8
  %clock = getelementptr inbounds %struct.ptp_qoriq, ptr %priv, i32 0, i32 3
  %11 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clock, align 4
  call void @ptp_clock_event(ptr noundef %12, ptr noundef nonnull %event) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %and7 = and i32 %14, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %if.then9

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = call i32 @extts_clean_up(ptr noundef %priv, i32 noundef 0, i1 noundef zeroext true) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end6.if.end11_crit_edge
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  %and12 = and i32 %16, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.then14

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = call i32 @extts_clean_up(ptr noundef %priv, i32 noundef 1, i1 noundef zeroext true) #5
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end11.if.end16_crit_edge
  %17 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mc_io, align 4
  %19 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %mc_handle, align 8
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  %call19 = call i32 @dprtc_clear_irq_status(ptr noundef %18, i32 noundef 0, i16 noundef zeroext %20, i8 noundef zeroext 0, i32 noundef %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end16.cleanup_crit_edge, label %do.end30, !prof !69

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end30:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %call19) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end16.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end30 ], [ 1, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %event) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprtc_set_irq_enable(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_qoriq_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_free_irqs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprtc_close(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_portal_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprtc_get_irq_status(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extts_clean_up(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprtc_clear_irq_status(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_qoriq_adjfine(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_qoriq_adjtime(ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_qoriq_gettime(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_qoriq_settime(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpaa2_ptp_enable(ptr noundef %ptp, ptr nocapture noundef readonly %rq, i32 noundef %on) #2 align 64 {
entry:
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #5
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mask, align 4
  %dev1 = getelementptr i8, ptr %ptp, i32 116
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 4
  %3 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rq, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %entry.sw.epilog10_crit_edge
  ]

entry.sw.epilog10_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %6 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %8, label %sw.bb.cleanup_crit_edge [
    i32 0, label %sw.bb.sw.epilog_crit_edge
    i32 1, label %sw.bb6
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb.sw.epilog_crit_edge
  %bit.0 = phi i32 [ 4194304, %sw.bb6 ], [ 8388608, %sw.bb.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %sw.epilog.sw.epilog10_crit_edge, label %if.then

sw.epilog.sw.epilog10_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog10

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @extts_clean_up(ptr noundef %add.ptr, i32 noundef %8, i1 noundef zeroext false) #5
  br label %sw.epilog10

sw.epilog10:                                      ; preds = %if.then, %sw.epilog.sw.epilog10_crit_edge, %entry.sw.epilog10_crit_edge
  %bit.1 = phi i32 [ %bit.0, %if.then ], [ %bit.0, %sw.epilog.sw.epilog10_crit_edge ], [ 134217728, %entry.sw.epilog10_crit_edge ]
  %mc_io = getelementptr inbounds %struct.fsl_mc_device, ptr %2, i32 0, i32 5
  %10 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mc_io, align 4
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mc_handle, align 8
  %call11 = call i32 @dprtc_get_irq_mask(ptr noundef %11, i32 noundef 0, i16 noundef zeroext %13, i8 noundef zeroext 0, ptr noundef nonnull %mask) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %do.end, label %if.end13

do.end:                                           ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.24, i32 noundef %call11) #8
  br label %cleanup

if.end13:                                         ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool14.not = icmp eq i32 %on, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask, align 4
  %or = or i32 %15, %bit.1
  br label %if.end16

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i32 %bit.1, -1
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask, align 4
  %and = and i32 %17, %neg
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %storemerge = phi i32 [ %and, %if.else ], [ %or, %if.then15 ]
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %storemerge, ptr %mask, align 4
  %19 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mc_io, align 4
  %21 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mc_handle, align 8
  %call19 = call i32 @dprtc_set_irq_mask(ptr noundef %20, i32 noundef 0, i16 noundef zeroext %22, i8 noundef zeroext 0, i32 noundef %storemerge) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end24, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.27, i32 noundef %call19) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.end16.cleanup_crit_edge, %do.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end ], [ %call19, %do.end24 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprtc_get_irq_mask(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprtc_set_irq_mask(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_qoriq_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_fsl_dpaa2_ptp__275_257_dpaa2_ptp_drv_init6, !1, !"__initcall__kmod_fsl_dpaa2_ptp__275_257_dpaa2_ptp_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 257, i32 1}
!2 = !{ptr @__exitcall_dpaa2_ptp_drv_exit, !1, !"__exitcall_dpaa2_ptp_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file276, !4, !"__UNIQUE_ID_file276", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 259, i32 1}
!5 = !{ptr @__UNIQUE_ID_license277, !4, !"__UNIQUE_ID_license277", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description278, !7, !"__UNIQUE_ID_description278", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 260, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 249, i32 11}
!10 = !{ptr @dpaa2_ptp_drv, !11, !"dpaa2_ptp_drv", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 247, i32 29}
!12 = !{ptr @dpaa2_ptp_match_id_table, !13, !"dpaa2_ptp_match_id_table", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 238, i32 38}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 146, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dpaa2_ptp_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @dpaa2_ptp_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 153, i32 3}
!24 = !{ptr @dpaa2_ptp_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @dpaa2_ptp_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 159, i32 45}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 175, i32 3}
!30 = !{ptr @dpaa2_ptp_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dpaa2_ptp_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 186, i32 3}
!34 = !{ptr @dpaa2_ptp_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dpaa2_ptp_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 193, i32 3}
!38 = !{ptr @dpaa2_ptp_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @dpaa2_ptp_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 104, i32 3}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @dpaa2_ptp_irq_handler_thread._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @dpaa2_ptp_irq_handler_thread._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 122, i32 3}
!47 = !{ptr @dpaa2_ptp_irq_handler_thread._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @dpaa2_ptp_irq_handler_thread._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @dpaa2_ptp_caps, !50, !"dpaa2_ptp_caps", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 73, i32 36}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 54, i32 3}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @dpaa2_ptp_enable._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @dpaa2_ptp_enable._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/freescale/dpaa2/dpaa2-ptp.c", i32 66, i32 3}
!58 = !{ptr @dpaa2_ptp_enable._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @dpaa2_ptp_enable._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 2000, i32 1}
