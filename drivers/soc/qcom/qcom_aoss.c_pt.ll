; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/qcom_aoss.c_pt.bc'
source_filename = "../drivers/soc/qcom/qcom_aoss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+qmp_send\22, \22a\22\09"
module asm "\09.weak\09__crc_qmp_send\09\09\09\09"
module asm "\09.long\09__crc_qmp_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qmp_send:\09\09\09\09\09"
module asm "\09.asciz \09\22qmp_send\22\09\09\09\09\09"
module asm "__kstrtabns_qmp_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qmp_get\22, \22a\22\09"
module asm "\09.weak\09__crc_qmp_get\09\09\09\09"
module asm "\09.long\09__crc_qmp_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qmp_get:\09\09\09\09\09"
module asm "\09.asciz \09\22qmp_get\22\09\09\09\09\09"
module asm "__kstrtabns_qmp_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+qmp_put\22, \22a\22\09"
module asm "\09.weak\09__crc_qmp_put\09\09\09\09"
module asm "\09.long\09__crc_qmp_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qmp_put:\09\09\09\09\09"
module asm "\09.asciz \09\22qmp_put\22\09\09\09\09\09"
module asm "__kstrtabns_qmp_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.qmp = type { ptr, ptr, %struct.mbox_client, ptr, i32, i32, %struct.wait_queue_head, %struct.mutex, %struct.clk_hw, ptr }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.qmp_cooling_device = type { ptr, ptr, ptr, i8 }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/soc/qcom/qcom_aoss.c\00", [35 x i8] zeroinitializer }, align 32
@qmp_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 245, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ucore did not ack channel\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qmp_send\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qmp_send._entry_ptr = internal global ptr @qmp_send._entry, section ".printk_index", align 4
@__kstrtab_qmp_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_qmp_send = external dso_local constant [0 x i8], align 1
@__ksymtab_qmp_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qmp_send to i32), ptr @__kstrtab_qmp_send, ptr @__kstrtabns_qmp_send }, section "___ksymtab+qmp_send", align 4
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom,qmp\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_qmp_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_qmp_get = external dso_local constant [0 x i8], align 1
@__ksymtab_qmp_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qmp_get to i32), ptr @__kstrtab_qmp_get, ptr @__kstrtabns_qmp_get }, section "___ksymtab+qmp_get", align 4
@__kstrtab_qmp_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_qmp_put = external dso_local constant [0 x i8], align 1
@__ksymtab_qmp_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qmp_put to i32), ptr @__kstrtab_qmp_put, ptr @__kstrtabns_qmp_put }, section "___ksymtab+qmp_put", align 4
@__initcall__kmod_qcom_aoss__187_565_qmp_driver_init6 = internal global ptr @qmp_driver_init, section ".initcall6.init", align 4
@qmp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qmp_probe, ptr @qmp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @qmp_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_qmp_driver_exit = internal global ptr @qmp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description188 = internal constant [47 x i8] c"qcom_aoss.description=Qualcomm AOSS QMP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [42 x i8] c"qcom_aoss.file=drivers/soc/qcom/qcom_aoss\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [25 x i8] c"qcom_aoss.license=GPL v2\00", section ".modinfo", align 1
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom_aoss_qmp\00", [18 x i8] zeroinitializer }, align 32
@qmp_dt_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7180-aoss-qmp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-aoss-qmp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sdm845-aoss-qmp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8150-aoss-qmp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-aoss-qmp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8350-aoss-qmp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,aoss-qmp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@qmp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&qmp->event\00", [20 x i8] zeroinitializer }, align 32
@qmp_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&qmp->tx_lock\00", [18 x i8] zeroinitializer }, align 32
@qmp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 495, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to acquire ipc mailbox\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qmp_probe\00", [22 x i8] zeroinitializer }, align 32
@qmp_probe._entry_ptr = internal global ptr @qmp_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aoss-qmp\00", [23 x i8] zeroinitializer }, align 32
@qmp_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str, i32 503, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to request interrupt\0A\00", [35 x i8] zeroinitializer }, align 32
@qmp_probe._entry_ptr.15 = internal global ptr @qmp_probe._entry.13, section ".printk_index", align 4
@qmp_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str, i32 517, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to register aoss cooling devices\0A\00", [55 x i8] zeroinitializer }, align 32
@qmp_probe._entry_ptr.18 = internal global ptr @qmp_probe._entry.16, section ".printk_index", align 4
@qmp_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 119, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"QMP magic doesn't match\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qmp_open\00", [23 x i8] zeroinitializer }, align 32
@qmp_open._entry_ptr = internal global ptr @qmp_open._entry, section ".printk_index", align 4
@qmp_open._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str, i32 125, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported QMP version %d\0A\00", [36 x i8] zeroinitializer }, align 32
@qmp_open._entry_ptr.23 = internal global ptr @qmp_open._entry.21, section ".printk_index", align 4
@qmp_open._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str, i32 132, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid mailbox size\0A\00", [42 x i8] zeroinitializer }, align 32
@qmp_open._entry_ptr.26 = internal global ptr @qmp_open._entry.24, section ".printk_index", align 4
@qmp_open._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str, i32 147, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ucore didn't ack link\0A\00", [41 x i8] zeroinitializer }, align 32
@qmp_open._entry_ptr.29 = internal global ptr @qmp_open._entry.27, section ".printk_index", align 4
@qmp_open._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str, i32 157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ucore didn't open channel\0A\00", [37 x i8] zeroinitializer }, align 32
@qmp_open._entry_ptr.32 = internal global ptr @qmp_open._entry.30, section ".printk_index", align 4
@qmp_open._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.20, ptr @.str, i32 168, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ucore didn't ack channel\0A\00", [38 x i8] zeroinitializer }, align 32
@qmp_open._entry_ptr.35 = internal global ptr @qmp_open._entry.33, section ".printk_index", align 4
@qmp_qdss_clk_add.qdss_init = internal constant { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.36, ptr @qmp_qdss_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"qdss\00", [27 x i8] zeroinitializer }, align 32
@qmp_qdss_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @qmp_qdss_clk_prepare, ptr @qmp_qdss_clk_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@qmp_qdss_clk_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str, i32 292, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register qdss clock\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qmp_qdss_clk_add\00", [47 x i8] zeroinitializer }, align 32
@qmp_qdss_clk_add._entry_ptr = internal global ptr @qmp_qdss_clk_add._entry, section ".printk_index", align 4
@qmp_qdss_clk_add._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str, i32 299, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to register of clk hw provider\0A\00", [57 x i8] zeroinitializer }, align 32
@qmp_qdss_clk_add._entry_ptr.41 = internal global ptr @qmp_qdss_clk_add._entry.39, section ".printk_index", align 4
@qmp_qdss_clk_prepare.buf = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"{class: clock, res: qdss, val: 1}\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@qmp_qdss_clk_unprepare.buf = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"{class: clock, res: qdss, val: 0}\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"#cooling-cells\00", [17 x i8] zeroinitializer }, align 32
@qmp_cooling_device_ops = internal constant { %struct.thermal_cooling_device_ops, [40 x i8] } { %struct.thermal_cooling_device_ops { ptr @qmp_cdev_get_max_state, ptr @qmp_cdev_get_cur_state, ptr @qmp_cdev_set_cur_state, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@qmp_cooling_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str, i32 377, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to register %s cooling device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qmp_cooling_device_add\00", [41 x i8] zeroinitializer }, align 32
@qmp_cooling_device_add._entry_ptr = internal global ptr @qmp_cooling_device_add._entry, section ".printk_index", align 4
@.str.45 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"{class: volt_flr, event:zero_temp, res:%s, value:%s}\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 222, i32 6 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 245, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 443, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant [11 x i8] c"qmp_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 556, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 558, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"qmp_dt_match\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 544, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 484, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 485, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 495, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 501, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 503, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 517, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 119, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 125, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 132, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 147, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 157, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 168, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [10 x i8] c"qdss_init\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 283, i32 36 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 285, i32 11 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"qmp_qdss_clk_ops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 276, i32 29 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 292, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 299, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 262, i32 20 }
@___asan_gen_.180 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 270, i32 20 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 398, i32 32 }
@___asan_gen_.186 = private unnamed_addr constant [23 x i8] c"qmp_cooling_device_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 355, i32 48 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 376, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 343, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 345, i32 17 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.205 = private constant [32 x i8] c"../drivers/soc/qcom/qcom_aoss.c\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 345, i32 24 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__exitcall_qmp_driver_exit, ptr @__initcall__kmod_qcom_aoss__187_565_qmp_driver_init6, ptr @__ksymtab_qmp_get, ptr @__ksymtab_qmp_put, ptr @__ksymtab_qmp_send, ptr @qmp_cooling_device_add._entry, ptr @qmp_cooling_device_add._entry_ptr, ptr @qmp_driver_exit, ptr @qmp_open._entry, ptr @qmp_open._entry.21, ptr @qmp_open._entry.24, ptr @qmp_open._entry.27, ptr @qmp_open._entry.30, ptr @qmp_open._entry.33, ptr @qmp_open._entry_ptr, ptr @qmp_open._entry_ptr.23, ptr @qmp_open._entry_ptr.26, ptr @qmp_open._entry_ptr.29, ptr @qmp_open._entry_ptr.32, ptr @qmp_open._entry_ptr.35, ptr @qmp_probe._entry, ptr @qmp_probe._entry.13, ptr @qmp_probe._entry.16, ptr @qmp_probe._entry_ptr, ptr @qmp_probe._entry_ptr.15, ptr @qmp_probe._entry_ptr.18, ptr @qmp_qdss_clk_add._entry, ptr @qmp_qdss_clk_add._entry.39, ptr @qmp_qdss_clk_add._entry_ptr, ptr @qmp_qdss_clk_add._entry_ptr.41, ptr @qmp_send._entry, ptr @qmp_send._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @qmp_driver, ptr @.str.6, ptr @qmp_dt_match, ptr @qmp_probe.__key, ptr @.str.7, ptr @qmp_probe.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @qmp_qdss_clk_add.qdss_init, ptr @.str.36, ptr @qmp_qdss_clk_ops, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @qmp_qdss_clk_prepare.buf, ptr @qmp_qdss_clk_unprepare.buf, ptr @.str.42, ptr @qmp_cooling_device_ops, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_dt_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_open._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_open._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_open._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_open._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_open._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_qdss_clk_add.qdss_init to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_qdss_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_qdss_clk_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_qdss_clk_add._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_qdss_clk_prepare.buf to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_qdss_clk_unprepare.buf to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_cooling_device_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qmp_cooling_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qmp_send(ptr noundef %qmp, ptr noundef %data, i32 noundef %len) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %qmp, null
  %cmp.i = icmp ugt ptr %qmp, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  %tobool.not = icmp eq ptr %data, null
  %spec.select = or i1 %spec.select.i, %tobool.not
  br i1 %spec.select, label %do.end, label %if.end23, !prof !122

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 222, i32 noundef 9, ptr noundef null) #9
  br label %cleanup166

if.end23:                                         ; preds = %entry
  %add = add i32 %len, 4
  %size = getelementptr inbounds %struct.qmp, ptr %qmp, i32 0, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp = icmp ugt i32 %add, %1
  br i1 %cmp, label %do.end40, label %if.end56, !prof !122

do.end40:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 225, i32 noundef 9, ptr noundef null) #9
  br label %cleanup166

if.end56:                                         ; preds = %if.end23
  %rem = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool58.not = icmp eq i32 %rem, 0
  br i1 %tobool58.not, label %if.end90, label %do.end74, !prof !123

do.end74:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 228, i32 noundef 9, ptr noundef null) #9
  br label %cleanup166

if.end90:                                         ; preds = %if.end56
  %tx_lock = getelementptr inbounds %struct.qmp, ptr %qmp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %tx_lock, i32 noundef 0) #9
  %2 = ptrtoint ptr %qmp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qmp, align 4
  %offset = getelementptr inbounds %struct.qmp, ptr %qmp, i32 0, i32 4
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %5
  %add.ptr91 = getelementptr i8, ptr %add.ptr, i32 4
  %div201 = lshr i32 %len, 2
  tail call void @__iowrite32_copy(ptr noundef %add.ptr91, ptr noundef nonnull %data, i32 noundef %div201) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @arm_heavy_mb() #9
  %6 = tail call i32 @llvm.bswap.i32(i32 %len)
  %7 = ptrtoint ptr %qmp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qmp, align 4
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %add.ptr97 = getelementptr i8, ptr %8, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %6) #9, !srcloc !125
  %11 = ptrtoint ptr %qmp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qmp, align 4
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %add.ptr100 = getelementptr i8, ptr %12, i32 %14
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  %mbox_chan.i = getelementptr inbounds %struct.qmp, ptr %qmp, i32 0, i32 3
  %16 = ptrtoint ptr %mbox_chan.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mbox_chan.i, align 4
  %call.i = tail call i32 @mbox_send_message(ptr noundef %17, ptr noundef null) #9
  %18 = ptrtoint ptr %mbox_chan.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mbox_chan.i, align 4
  tail call void @mbox_client_txdone(ptr noundef %19, i32 noundef 0) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 243) #9
  %20 = ptrtoint ptr %qmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qmp, align 4
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %23
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i202 = icmp eq i32 %24, 0
  br i1 %cmp.i202, label %if.end90.if.end164_crit_edge, label %if.then123

if.end90.if.end164_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

if.then123:                                       ; preds = %if.end90
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %25 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %event = getelementptr inbounds %struct.qmp, ptr %qmp, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then123
  %__ret124.0 = phi i32 [ 100, %if.then123 ], [ %call148, %cleanup ]
  %call125 = call i32 @prepare_to_wait_event(ptr noundef %event, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %26 = ptrtoint ptr %qmp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qmp, align 4
  %28 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset, align 4
  %add.ptr.i204 = getelementptr i8, ptr %27, i32 %29
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i204) #9, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i205 = icmp eq i32 %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret124.0)
  %tobool131.not = icmp eq i32 %__ret124.0, 0
  %31 = select i1 %cmp.i205, i1 %tobool131.not, i1 false
  %__ret124.1 = select i1 %31, i32 1, i32 %__ret124.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret124.1)
  %tobool137.not = icmp eq i32 %__ret124.1, 0
  %32 = select i1 %cmp.i205, i1 true, i1 %tobool137.not
  br i1 %32, label %if.end151, label %if.end144

if.end144:                                        ; preds = %for.cond
  %tobool145.not = icmp eq i32 %call125, 0
  br i1 %tobool145.not, label %cleanup, label %if.end151.thread215

if.end151.thread215:                              ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end164

cleanup:                                          ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  %call148 = call i32 @schedule_timeout(i32 noundef %__ret124.1) #9
  br label %for.cond

if.end151:                                        ; preds = %for.cond
  call void @finish_wait(ptr noundef %event, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br i1 %tobool137.not, label %do.end157, label %if.end151.if.end164_crit_edge

if.end151.if.end164_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end164

do.end157:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.qmp, ptr %qmp, i32 0, i32 1
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.1) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %qmp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %qmp, align 4
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset, align 4
  %add.ptr163 = getelementptr i8, ptr %36, i32 %38
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 0) #9, !srcloc !125
  br label %if.end164

if.end164:                                        ; preds = %do.end157, %if.end151.if.end164_crit_edge, %if.end151.thread215, %if.end90.if.end164_crit_edge
  %ret.0 = phi i32 [ -110, %do.end157 ], [ 0, %if.end151.if.end164_crit_edge ], [ 0, %if.end151.thread215 ], [ 0, %if.end90.if.end164_crit_edge ]
  call void @mutex_unlock(ptr noundef %tx_lock) #9
  br label %cleanup166

cleanup166:                                       ; preds = %if.end164, %do.end74, %do.end40, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end40 ], [ -22, %do.end74 ], [ %ret.0, %if.end164 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iowrite32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qmp_get(ptr noundef readonly %dev) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #9
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %if.end
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end7

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %of_parse_phandle.exit
  %call8 = call ptr @of_find_device_by_node(ptr noundef nonnull %4) #9
  call void @of_node_put(ptr noundef nonnull %4) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call8, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %tobool14.not = icmp eq ptr %6, null
  %spec.select = select i1 %tobool14.not, ptr inttoptr (i32 -517 to ptr), ptr %6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7.cleanup_crit_edge, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %of_parse_phandle.exit.thread ], [ inttoptr (i32 -19 to ptr), %of_parse_phandle.exit.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end7.cleanup_crit_edge ], [ %spec.select, %if.end12 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qmp_put(ptr noundef readonly %qmp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %qmp, null
  %cmp.i = icmp ugt ptr %qmp, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.qmp, ptr %qmp, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @put_device(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qmp_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @qmp_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qmp_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @qmp_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_client_txdone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmp_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry124.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry194.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 208, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.qmp, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %event = getelementptr inbounds %struct.qmp, ptr %call.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %event, ptr noundef nonnull @.str.7, ptr noundef nonnull @qmp_probe.__key) #9
  %tx_lock = getelementptr inbounds %struct.qmp, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %tx_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @qmp_probe.__key.8) #9
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call6, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %mbox_client = getelementptr inbounds %struct.qmp, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %mbox_client to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %mbox_client, align 4
  %knows_txdone = getelementptr inbounds %struct.qmp, ptr %call.i, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %knows_txdone to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %knows_txdone, align 4
  %call17 = tail call ptr @mbox_request_channel(ptr noundef %mbox_client, i32 noundef 0) #9
  %mbox_chan = getelementptr inbounds %struct.qmp, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call17, ptr %mbox_chan, align 4
  %cmp.i88 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %do.end23, label %if.end27

do.end23:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  %6 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mbox_chan, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end12
  %call28 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %call.i89 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call28, ptr noundef nonnull @qmp_intr, ptr noundef null, i32 noundef 8192, ptr noundef nonnull @.str.12, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp = icmp slt i32 %call.i89, 0
  br i1 %cmp, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #12
  br label %err_free_mbox

if.end36:                                         ; preds = %if.end27
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 1279869261, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 1279869261
  br i1 %cmp.i.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.19) #12
  br label %err_free_mbox

if.end.i:                                         ; preds = %if.end36
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 16777216
  br i1 %cmp.not.i, label %if.end8.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  %18 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.22, i32 noundef %17) #12
  br label %err_free_mbox

if.end8.i:                                        ; preds = %if.end.i
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %21, i32 56
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #9, !srcloc !126
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !132
  %offset.i = getelementptr inbounds %struct.qmp, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %offset.i, align 4
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %26, i32 52
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #9, !srcloc !126
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %size.i = getelementptr inbounds %struct.qmp, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %do.end27.i, label %if.end29.i

do.end27.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.25) #12
  br label %err_free_mbox

if.end29.i:                                       ; preds = %if.end8.i
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %33, i32 12
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %36, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 %34) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %38, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 -65536) #9, !srcloc !125
  %39 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mbox_chan, align 4
  %call.i.i = tail call i32 @mbox_send_message(ptr noundef %40, ptr noundef null) #9
  %41 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mbox_chan, align 4
  tail call void @mbox_client_txdone(ptr noundef %42, i32 noundef 0) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 145) #9
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 40
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %45)
  %cmp.i316.i = icmp eq i32 %45, -65536
  br i1 %cmp.i316.i, label %if.end29.i.do.body95.i_crit_edge, label %if.then62.i

if.end29.i.do.body95.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body95.i

if.then62.i:                                      ; preds = %if.end29.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %46 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #9
  %call64351.i = call i32 @prepare_to_wait_event(ptr noundef %event, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %add.ptr.i317352.i = getelementptr i8, ptr %48, i32 40
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i317352.i) #9, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %49)
  %cmp.i318353.i = icmp eq i32 %49, -65536
  br i1 %cmp.i318353.i, label %if.end86.thread.i, label %if.then62.i.cleanup.i_crit_edge

if.then62.i.cleanup.i_crit_edge:                  ; preds = %if.then62.i
  br label %cleanup.i

if.end86.thread.i:                                ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %event, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br label %do.body95.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then62.i.cleanup.i_crit_edge
  %__ret63.1354.i = phi i32 [ %__ret63.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 100, %if.then62.i.cleanup.i_crit_edge ]
  %call83.i = call i32 @schedule_timeout(i32 noundef %__ret63.1354.i) #9
  %call64.i = call i32 @prepare_to_wait_event(ptr noundef %event, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #9
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call.i, align 4
  %add.ptr.i317.i = getelementptr i8, ptr %51, i32 40
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i317.i) #9, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %52)
  %cmp.i318.i = icmp eq i32 %52, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool70.not.i = icmp eq i32 %call83.i, 0
  %53 = select i1 %cmp.i318.i, i1 %tobool70.not.i, i1 false
  %__ret63.1.i = select i1 %53, i32 1, i32 %call83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret63.1.i)
  %tobool76.not.i = icmp eq i32 %__ret63.1.i, 0
  %54 = select i1 %cmp.i318.i, i1 true, i1 %tobool76.not.i
  br i1 %54, label %if.end86.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end86.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %event, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br i1 %tobool76.not.i, label %do.end92.i, label %if.end86.i.do.body95.i_crit_edge

if.end86.i.do.body95.i_crit_edge:                 ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body95.i

do.end92.i:                                       ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.28) #12
  br label %do.body240.i

do.body95.i:                                      ; preds = %if.end86.i.do.body95.i_crit_edge, %if.end86.thread.i, %if.end29.i.do.body95.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  %add.ptr99.i = getelementptr i8, ptr %58, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.i, i32 -65536) #9, !srcloc !125
  %59 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mbox_chan, align 4
  %call.i320.i = call i32 @mbox_send_message(ptr noundef %60, ptr noundef null) #9
  %61 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mbox_chan, align 4
  call void @mbox_client_txdone(ptr noundef %62, i32 noundef 0) #9
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 155) #9
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %add.ptr.i321.i = getelementptr i8, ptr %64, i32 20
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i321.i) #9, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %65)
  %cmp.i322.i = icmp eq i32 %65, -65536
  br i1 %cmp.i322.i, label %do.body95.i.do.body165.i_crit_edge, label %if.then123.i

do.body95.i.do.body165.i_crit_edge:               ; preds = %do.body95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body165.i

if.then123.i:                                     ; preds = %do.body95.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry124.i) #9
  %66 = call ptr @memset(ptr %__wq_entry124.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry124.i, i32 noundef 0) #9
  %call129356.i = call i32 @prepare_to_wait_event(ptr noundef %event, ptr noundef nonnull %__wq_entry124.i, i32 noundef 2) #9
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i, align 4
  %add.ptr.i323357.i = getelementptr i8, ptr %68, i32 20
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i323357.i) #9, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %69)
  %cmp.i324358.i = icmp eq i32 %69, -65536
  br i1 %cmp.i324358.i, label %if.end156.thread.i, label %if.then123.i.cleanup149.i_crit_edge

if.then123.i.cleanup149.i_crit_edge:              ; preds = %if.then123.i
  br label %cleanup149.i

if.end156.thread.i:                               ; preds = %if.then123.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %event, ptr noundef nonnull %__wq_entry124.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry124.i) #9
  br label %do.body165.i

cleanup149.i:                                     ; preds = %cleanup149.i.cleanup149.i_crit_edge, %if.then123.i.cleanup149.i_crit_edge
  %__ret125.1359.i = phi i32 [ %__ret125.1.i, %cleanup149.i.cleanup149.i_crit_edge ], [ 100, %if.then123.i.cleanup149.i_crit_edge ]
  %call148.i = call i32 @schedule_timeout(i32 noundef %__ret125.1359.i) #9
  %call129.i = call i32 @prepare_to_wait_event(ptr noundef %event, ptr noundef nonnull %__wq_entry124.i, i32 noundef 2) #9
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 4
  %add.ptr.i323.i = getelementptr i8, ptr %71, i32 20
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i323.i) #9, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %72)
  %cmp.i324.i = icmp eq i32 %72, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148.i)
  %tobool135.not.i = icmp eq i32 %call148.i, 0
  %73 = select i1 %cmp.i324.i, i1 %tobool135.not.i, i1 false
  %__ret125.1.i = select i1 %73, i32 1, i32 %call148.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret125.1.i)
  %tobool141.not.i = icmp eq i32 %__ret125.1.i, 0
  %74 = select i1 %cmp.i324.i, i1 true, i1 %tobool141.not.i
  br i1 %74, label %if.end156.i, label %cleanup149.i.cleanup149.i_crit_edge

cleanup149.i.cleanup149.i_crit_edge:              ; preds = %cleanup149.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup149.i

if.end156.i:                                      ; preds = %cleanup149.i
  call void @finish_wait(ptr noundef %event, ptr noundef nonnull %__wq_entry124.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry124.i) #9
  br i1 %tobool141.not.i, label %if.end156.i.do.body235.i_crit_edge, label %if.end156.i.do.body165.i_crit_edge

if.end156.i.do.body165.i_crit_edge:               ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body165.i

if.end156.i.do.body235.i_crit_edge:               ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body235.i

do.body165.i:                                     ; preds = %if.end156.i.do.body165.i_crit_edge, %if.end156.thread.i, %do.body95.i.do.body165.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  call void @arm_heavy_mb() #9
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 4
  %add.ptr169.i = getelementptr i8, ptr %76, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169.i, i32 -65536) #9, !srcloc !125
  %77 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mbox_chan, align 4
  %call.i326.i = call i32 @mbox_send_message(ptr noundef %78, ptr noundef null) #9
  %79 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mbox_chan, align 4
  call void @mbox_client_txdone(ptr noundef %80, i32 noundef 0) #9
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 166) #9
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call.i, align 4
  %add.ptr.i327.i = getelementptr i8, ptr %82, i32 48
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i327.i) #9, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %83)
  %cmp.i328.i = icmp eq i32 %83, -65536
  br i1 %cmp.i328.i, label %do.body165.i.if.end40_crit_edge, label %if.then193.i

do.body165.i.if.end40_crit_edge:                  ; preds = %do.body165.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then193.i:                                     ; preds = %do.body165.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry194.i) #9
  %84 = call ptr @memset(ptr %__wq_entry194.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry194.i, i32 noundef 0) #9
  %call199362.i = call i32 @prepare_to_wait_event(ptr noundef %event, ptr noundef nonnull %__wq_entry194.i, i32 noundef 2) #9
  %85 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call.i, align 4
  %add.ptr.i329363.i = getelementptr i8, ptr %86, i32 48
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i329363.i) #9, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %87)
  %cmp.i330364.i = icmp eq i32 %87, -65536
  br i1 %cmp.i330364.i, label %if.end226.thread.i, label %if.then193.i.cleanup219.i_crit_edge

if.then193.i.cleanup219.i_crit_edge:              ; preds = %if.then193.i
  br label %cleanup219.i

if.end226.thread.i:                               ; preds = %if.then193.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %event, ptr noundef nonnull %__wq_entry194.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry194.i) #9
  br label %if.end40

cleanup219.i:                                     ; preds = %cleanup219.i.cleanup219.i_crit_edge, %if.then193.i.cleanup219.i_crit_edge
  %__ret195.1365.i = phi i32 [ %__ret195.1.i, %cleanup219.i.cleanup219.i_crit_edge ], [ 100, %if.then193.i.cleanup219.i_crit_edge ]
  %call218.i = call i32 @schedule_timeout(i32 noundef %__ret195.1365.i) #9
  %call199.i = call i32 @prepare_to_wait_event(ptr noundef %event, ptr noundef nonnull %__wq_entry194.i, i32 noundef 2) #9
  %88 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call.i, align 4
  %add.ptr.i329.i = getelementptr i8, ptr %89, i32 48
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i329.i) #9, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %90)
  %cmp.i330.i = icmp eq i32 %90, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218.i)
  %tobool205.not.i = icmp eq i32 %call218.i, 0
  %91 = select i1 %cmp.i330.i, i1 %tobool205.not.i, i1 false
  %__ret195.1.i = select i1 %91, i32 1, i32 %call218.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret195.1.i)
  %tobool211.not.i = icmp eq i32 %__ret195.1.i, 0
  %92 = select i1 %cmp.i330.i, i1 true, i1 %tobool211.not.i
  br i1 %92, label %if.end226.i, label %cleanup219.i.cleanup219.i_crit_edge

cleanup219.i.cleanup219.i_crit_edge:              ; preds = %cleanup219.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup219.i

if.end226.i:                                      ; preds = %cleanup219.i
  call void @finish_wait(ptr noundef %event, ptr noundef nonnull %__wq_entry194.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry194.i) #9
  br i1 %tobool211.not.i, label %if.end226.i.do.body235.i_crit_edge, label %if.end226.i.if.end40_crit_edge

if.end226.i.if.end40_crit_edge:                   ; preds = %if.end226.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end226.i.do.body235.i_crit_edge:               ; preds = %if.end226.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body235.i

do.body235.i:                                     ; preds = %if.end226.i.do.body235.i_crit_edge, %if.end156.i.do.body235.i_crit_edge
  %.str.31.sink.i = phi ptr [ @.str.31, %if.end156.i.do.body235.i_crit_edge ], [ @.str.34, %if.end226.i.do.body235.i_crit_edge ]
  %93 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull %.str.31.sink.i) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  call void @arm_heavy_mb() #9
  %95 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call.i, align 4
  %add.ptr239.i = getelementptr i8, ptr %96, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr239.i, i32 65535) #9, !srcloc !125
  br label %do.body240.i

do.body240.i:                                     ; preds = %do.body235.i, %do.end92.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  call void @arm_heavy_mb() #9
  %97 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %call.i, align 4
  %add.ptr244.i = getelementptr i8, ptr %98, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr244.i, i32 65535) #9, !srcloc !125
  %99 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mbox_chan, align 4
  %call.i332.i = call i32 @mbox_send_message(ptr noundef %100, ptr noundef null) #9
  %101 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mbox_chan, align 4
  call void @mbox_client_txdone(ptr noundef %102, i32 noundef 0) #9
  br label %err_free_mbox

if.end40:                                         ; preds = %if.end226.i.if.end40_crit_edge, %if.end226.thread.i, %do.body165.i.if.end40_crit_edge
  %qdss_clk.i = getelementptr inbounds %struct.qmp, ptr %call.i, i32 0, i32 8
  %init.i = getelementptr inbounds %struct.qmp, ptr %call.i, i32 0, i32 8, i32 2
  %103 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @qmp_qdss_clk_add.qdss_init, ptr %init.i, align 4
  %104 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev2, align 4
  %call.i91 = call i32 @clk_hw_register(ptr noundef %105, ptr noundef %qdss_clk.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %cmp.i92 = icmp slt i32 %call.i91, 0
  %106 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev2, align 4
  br i1 %cmp.i92, label %do.end.i93, label %if.end.i94

do.end.i93:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.37) #12
  br label %err_close_qmp

if.end.i94:                                       ; preds = %if.end40
  %of_node.i = getelementptr inbounds %struct.device, ptr %107, i32 0, i32 27
  %108 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %of_node.i, align 8
  %call5.i = call i32 @of_clk_add_hw_provider(ptr noundef %109, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %qdss_clk.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end10.i, label %qmp_qdss_clk_add.exit

do.end10.i:                                       ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.40) #12
  call void @clk_hw_unregister(ptr noundef %qdss_clk.i) #9
  br label %err_close_qmp

qmp_qdss_clk_add.exit:                            ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool42.not = icmp eq i32 %call5.i, 0
  br i1 %tobool42.not, label %if.end44, label %qmp_qdss_clk_add.exit.err_close_qmp_crit_edge

qmp_qdss_clk_add.exit.err_close_qmp_crit_edge:    ; preds = %qmp_qdss_clk_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_close_qmp

if.end44:                                         ; preds = %qmp_qdss_clk_add.exit
  %112 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev2, align 4
  %of_node.i98 = getelementptr inbounds %struct.device, ptr %113, i32 0, i32 27
  %114 = ptrtoint ptr %of_node.i98 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %of_node.i98, align 8
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %113, i32 noundef 32, i32 noundef 3520) #9
  %cooling_devs.i = getelementptr inbounds %struct.qmp, ptr %call.i, i32 0, i32 9
  %116 = ptrtoint ptr %cooling_devs.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call5.i.i.i, ptr %cooling_devs.i, align 4
  %tobool.not.i99 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i99, label %if.end44.do.end50_crit_edge, label %if.end.i100

if.end44.do.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

if.end.i100:                                      ; preds = %if.end44
  %call3.i = call ptr @of_get_next_available_child(ptr noundef %115, ptr noundef null) #9
  %cmp.not46.i = icmp eq ptr %call3.i, null
  br i1 %cmp.not46.i, label %if.end52.critedge, label %if.end.i100.for.body.i_crit_edge

if.end.i100.for.body.i_crit_edge:                 ; preds = %if.end.i100
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i100.for.body.i_crit_edge
  %count.049.i = phi i32 [ %count.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i100.for.body.i_crit_edge ]
  %child.047.i = phi ptr [ %call13.i, %for.inc.i.for.body.i_crit_edge ], [ %call3.i, %if.end.i100.for.body.i_crit_edge ]
  %call4.i = call ptr @of_find_property(ptr noundef nonnull %child.047.i, ptr noundef nonnull @.str.42, ptr noundef null) #9
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i
  %117 = ptrtoint ptr %cooling_devs.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %cooling_devs.i, align 4
  %inc.i = add i32 %count.049.i, 1
  %arrayidx.i = getelementptr %struct.qmp_cooling_device, ptr %118, i32 %count.049.i
  %119 = ptrtoint ptr %child.047.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %child.047.i, align 4
  %qmp1.i.i = getelementptr %struct.qmp_cooling_device, ptr %118, i32 %count.049.i, i32 1
  %121 = ptrtoint ptr %qmp1.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i, ptr %qmp1.i.i, align 4
  %state.i.i = getelementptr %struct.qmp_cooling_device, ptr %118, i32 %count.049.i, i32 3
  %122 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %state.i.i, align 4
  %name2.i.i = getelementptr %struct.qmp_cooling_device, ptr %118, i32 %count.049.i, i32 2
  %123 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %120, ptr %name2.i.i, align 4
  %124 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev2, align 4
  %call.i.i101 = call ptr @devm_thermal_of_cooling_device_register(ptr noundef %125, ptr noundef nonnull %child.047.i, ptr noundef %120, ptr noundef %arrayidx.i, ptr noundef nonnull @qmp_cooling_device_ops) #9
  %126 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call.i.i101, ptr %arrayidx.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i.i101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end.i.i, label %if.end7.i.qmp_cooling_device_add.exit.i_crit_edge

if.end7.i.qmp_cooling_device_add.exit.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %qmp_cooling_device_add.exit.i

do.end.i.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %127 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.43, ptr noundef %120) #12
  %129 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.pr.i = load ptr, ptr %arrayidx.i, align 4
  br label %qmp_cooling_device_add.exit.i

qmp_cooling_device_add.exit.i:                    ; preds = %do.end.i.i, %if.end7.i.qmp_cooling_device_add.exit.i_crit_edge
  %130 = phi ptr [ %call.i.i101, %if.end7.i.qmp_cooling_device_add.exit.i_crit_edge ], [ %.pr.i, %do.end.i.i ]
  %cmp.i.i.i.not.i = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.not.i, label %while.cond.preheader.i, label %qmp_cooling_device_add.exit.i.for.inc.i_crit_edge

qmp_cooling_device_add.exit.i.for.inc.i_crit_edge: ; preds = %qmp_cooling_device_add.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

while.cond.preheader.i:                           ; preds = %qmp_cooling_device_add.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %count.049.i)
  %cmp1951.i = icmp sgt i32 %count.049.i, -1
  br i1 %cmp1951.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.do.end50.sink.split_crit_edge

while.cond.preheader.i.do.end50.sink.split_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50.sink.split

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

for.inc.i:                                        ; preds = %qmp_cooling_device_add.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %count.1.i = phi i32 [ %inc.i, %qmp_cooling_device_add.exit.i.for.inc.i_crit_edge ], [ %count.049.i, %for.body.i.for.inc.i_crit_edge ]
  %call13.i = call ptr @of_get_next_available_child(ptr noundef %115, ptr noundef nonnull %child.047.i) #9
  %cmp.not.i102 = icmp eq ptr %call13.i, null
  br i1 %cmp.not.i102, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i)
  %tobool14.not.i = icmp eq i32 %count.1.i, 0
  br i1 %tobool14.not.i, label %if.end52.critedge118, label %for.end.i.if.end52_crit_edge

for.end.i.if.end52_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dec52.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %count.049.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %131 = ptrtoint ptr %cooling_devs.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cooling_devs.i, align 4
  %arrayidx21.i = getelementptr %struct.qmp_cooling_device, ptr %132, i32 %dec52.i
  %133 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx21.i, align 4
  call void @thermal_cooling_device_unregister(ptr noundef %134) #9
  %dec.i = add nsw i32 %dec52.i, -1
  %cmp19.not.i = icmp eq i32 %dec52.i, 0
  br i1 %cmp19.not.i, label %while.body.i.do.end50.sink.split_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.do.end50.sink.split_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50.sink.split

do.end50.sink.split:                              ; preds = %while.body.i.do.end50.sink.split_crit_edge, %while.cond.preheader.i.do.end50.sink.split_crit_edge
  %135 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev2, align 4
  %137 = ptrtoint ptr %cooling_devs.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %cooling_devs.i, align 4
  call void @devm_kfree(ptr noundef %136, ptr noundef %138) #9
  br label %do.end50

do.end50:                                         ; preds = %do.end50.sink.split, %if.end44.do.end50_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #12
  br label %if.end52

if.end52.critedge:                                ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev2, align 4
  %141 = ptrtoint ptr %cooling_devs.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cooling_devs.i, align 4
  call void @devm_kfree(ptr noundef %140, ptr noundef %142) #9
  br label %if.end52

if.end52.critedge118:                             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %143 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev2, align 4
  %145 = ptrtoint ptr %cooling_devs.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cooling_devs.i, align 4
  call void @devm_kfree(ptr noundef %144, ptr noundef %146) #9
  br label %if.end52

if.end52:                                         ; preds = %if.end52.critedge118, %if.end52.critedge, %do.end50, %for.end.i.if.end52_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %147 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_close_qmp:                                    ; preds = %qmp_qdss_clk_add.exit.err_close_qmp_crit_edge, %do.end10.i, %do.end.i93
  %retval.0.i95112 = phi i32 [ %call5.i, %qmp_qdss_clk_add.exit.err_close_qmp_crit_edge ], [ %call5.i, %do.end10.i ], [ %call.i91, %do.end.i93 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  call void @arm_heavy_mb() #9
  %148 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %call.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %149, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 65535) #9, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  call void @arm_heavy_mb() #9
  %150 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %call.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %151, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 65535) #9, !srcloc !125
  %152 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mbox_chan, align 4
  %call.i.i107 = call i32 @mbox_send_message(ptr noundef %153, ptr noundef null) #9
  %154 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mbox_chan, align 4
  call void @mbox_client_txdone(ptr noundef %155, i32 noundef 0) #9
  br label %err_free_mbox

err_free_mbox:                                    ; preds = %err_close_qmp, %do.body240.i, %do.end27.i, %do.end6.i, %do.end.i, %do.end34
  %ret.0 = phi i32 [ %call.i89, %do.end34 ], [ %retval.0.i95112, %err_close_qmp ], [ -22, %do.end.i ], [ -22, %do.end27.i ], [ -110, %do.body240.i ], [ -22, %do.end6.i ]
  %156 = ptrtoint ptr %mbox_chan to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mbox_chan, align 4
  call void @mbox_free_channel(ptr noundef %157) #9
  br label %cleanup

cleanup:                                          ; preds = %err_free_mbox, %if.end52, %do.end23, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then9 ], [ %8, %do.end23 ], [ %ret.0, %err_free_mbox ], [ 0, %if.end52 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmp_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev.i = getelementptr inbounds %struct.qmp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  tail call void @of_clk_del_provider(ptr noundef %5) #9
  %qdss_clk.i = getelementptr inbounds %struct.qmp, ptr %1, i32 0, i32 8
  tail call void @clk_hw_unregister(ptr noundef %qdss_clk.i) #9
  %cooling_devs.i = getelementptr inbounds %struct.qmp, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %cooling_devs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cooling_devs.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @thermal_cooling_device_unregister(ptr noundef %9) #9
  %10 = ptrtoint ptr %cooling_devs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cooling_devs.i, align 4
  %arrayidx.1.i = getelementptr %struct.qmp_cooling_device, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @thermal_cooling_device_unregister(ptr noundef %13) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65535) #9, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr4.i = getelementptr i8, ptr %17, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 65535) #9, !srcloc !125
  %mbox_chan.i.i = getelementptr inbounds %struct.qmp, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %mbox_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mbox_chan.i.i, align 4
  %call.i.i = tail call i32 @mbox_send_message(ptr noundef %19, ptr noundef null) #9
  %20 = ptrtoint ptr %mbox_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mbox_chan.i.i, align 4
  tail call void @mbox_client_txdone(ptr noundef %21, i32 noundef 0) #9
  %22 = ptrtoint ptr %mbox_chan.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mbox_chan.i.i, align 4
  tail call void @mbox_free_channel(ptr noundef %23) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmp_intr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr inbounds %struct.qmp, ptr %data, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %event, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmp_qdss_clk_prepare(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -192
  %call = tail call i32 @qmp_send(ptr noundef %add.ptr, ptr noundef nonnull @qmp_qdss_clk_prepare.buf, i32 noundef 64)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qmp_qdss_clk_unprepare(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -192
  %call = tail call i32 @qmp_send(ptr noundef %add.ptr, ptr noundef nonnull @qmp_qdss_clk_unprepare.buf, i32 noundef 64)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cooling_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @qmp_cdev_get_max_state(ptr nocapture noundef readnone %cdev, ptr nocapture noundef writeonly %state) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %state, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @qmp_cdev_get_cur_state(ptr nocapture noundef readonly %cdev, ptr nocapture noundef writeonly %state) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  %state1 = getelementptr inbounds %struct.qmp_cooling_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state1, align 4, !range !146
  %4 = zext i8 %3 to i32
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %state, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qmp_cdev_set_cur_state(ptr nocapture noundef readonly %cdev, i32 noundef %state) #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %devdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devdata, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 0, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool = icmp ne i32 %state, 0
  %frombool = zext i1 %tobool to i8
  %state2 = getelementptr inbounds %struct.qmp_cooling_device, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %state2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state2, align 4, !range !146
  %5 = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %state)
  %cmp = icmp eq i32 %5, %state
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.qmp_cooling_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %cond = select i1 %tobool, ptr @.str.46, ptr @.str.47
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull @.str.45, ptr noundef %7, ptr noundef nonnull %cond)
  %qmp = getelementptr inbounds %struct.qmp_cooling_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %qmp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qmp, align 4
  %call8 = call i32 @qmp_send(ptr noundef %9, ptr noundef nonnull %buf, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %state2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %state2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then10 ], [ %call8, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !15, !17, !19, !20, !22, !24, !25, !27, !29, !31, !32, !34, !35, !37, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !92, !94, !96, !98, !99, !100, !101, !103, !105, !107, !109, !111}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 222, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 245, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @qmp_send._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @qmp_send._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__ksymtab_qmp_send, !10, !"__ksymtab_qmp_send", i1 false, i1 false}
!10 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 258, i32 1}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 443, i32 38}
!13 = !{ptr @__ksymtab_qmp_get, !14, !"__ksymtab_qmp_get", i1 false, i1 false}
!14 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 456, i32 1}
!15 = !{ptr @__ksymtab_qmp_put, !16, !"__ksymtab_qmp_put", i1 false, i1 false}
!16 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 471, i32 1}
!17 = !{ptr @__initcall__kmod_qcom_aoss__187_565_qmp_driver_init6, !18, !"__initcall__kmod_qcom_aoss__187_565_qmp_driver_init6", i1 false, i1 false}
!18 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 565, i32 1}
!19 = !{ptr @__exitcall_qmp_driver_exit, !18, !"__exitcall_qmp_driver_exit", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_description188, !21, !"__UNIQUE_ID_description188", i1 false, i1 false}
!21 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 567, i32 1}
!22 = !{ptr @__UNIQUE_ID_file189, !23, !"__UNIQUE_ID_file189", i1 false, i1 false}
!23 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 568, i32 1}
!24 = !{ptr @__UNIQUE_ID_license190, !23, !"__UNIQUE_ID_license190", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 558, i32 12}
!27 = !{ptr @qmp_driver, !28, !"qmp_driver", i1 false, i1 false}
!28 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 556, i32 31}
!29 = !{ptr @qmp_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 484, i32 2}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @qmp_probe.__key.8, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 485, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 495, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @qmp_probe._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @qmp_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 501, i32 11}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 503, i32 3}
!44 = !{ptr @qmp_probe._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @qmp_probe._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 517, i32 3}
!48 = !{ptr @qmp_probe._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @qmp_probe._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 119, i32 3}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @qmp_open._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @qmp_open._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 125, i32 3}
!57 = !{ptr @qmp_open._entry.21, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @qmp_open._entry_ptr.23, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 132, i32 3}
!61 = !{ptr @qmp_open._entry.24, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @qmp_open._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 147, i32 3}
!65 = !{ptr @qmp_open._entry.27, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @qmp_open._entry_ptr.29, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 157, i32 3}
!69 = !{ptr @qmp_open._entry.30, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @qmp_open._entry_ptr.32, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 168, i32 3}
!73 = !{ptr @qmp_open._entry.33, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @qmp_open._entry_ptr.35, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 285, i32 11}
!77 = !{ptr @qmp_qdss_clk_add.qdss_init, !78, !"qdss_init", i1 false, i1 false}
!78 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 283, i32 36}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 292, i32 3}
!81 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @qmp_qdss_clk_add._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @qmp_qdss_clk_add._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 299, i32 3}
!86 = !{ptr @qmp_qdss_clk_add._entry.39, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @qmp_qdss_clk_add._entry_ptr.41, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @qmp_qdss_clk_ops, !89, !"qmp_qdss_clk_ops", i1 false, i1 false}
!89 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 276, i32 29}
!90 = !{ptr @qmp_qdss_clk_prepare.buf, !91, !"buf", i1 false, i1 false}
!91 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 262, i32 20}
!92 = !{ptr @qmp_qdss_clk_unprepare.buf, !93, !"buf", i1 false, i1 false}
!93 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 270, i32 20}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 398, i32 32}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 376, i32 3}
!98 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @qmp_cooling_device_add._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @qmp_cooling_device_add._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = distinct !{null, !102, !"qmp_cdev_max_state", i1 false, i1 false}
!102 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 47, i32 13}
!103 = !{ptr @qmp_cooling_device_ops, !104, !"qmp_cooling_device_ops", i1 false, i1 false}
!104 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 355, i32 48}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 343, i32 4}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 345, i32 17}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 345, i32 24}
!111 = !{ptr @qmp_dt_match, !112, !"qmp_dt_match", i1 false, i1 false}
!112 = !{!"../drivers/soc/qcom/qcom_aoss.c", i32 544, i32 34}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"branch_weights", i32 1, i32 2000}
!123 = !{!"branch_weights", i32 2000, i32 1}
!124 = !{i64 2153256888}
!125 = !{i64 4641408}
!126 = !{i64 4641826}
!127 = !{i64 2153257589}
!128 = !{i64 2153255066}
!129 = !{i64 2153261357}
!130 = !{i64 2153213487}
!131 = !{i64 2153219126}
!132 = !{i64 2153221262}
!133 = !{i64 2153221757}
!134 = !{i64 2153223824}
!135 = !{i64 2153224044}
!136 = !{i64 2153225407}
!137 = !{i64 2153213993}
!138 = !{i64 2153235151}
!139 = !{i64 2153216349}
!140 = !{i64 2153240906}
!141 = !{i64 2153215171}
!142 = !{i64 2153246682}
!143 = !{i64 2153248918}
!144 = !{i64 2153251158}
!145 = !{i64 2153253394}
!146 = !{i8 0, i8 2}
