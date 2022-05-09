; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/cpr.c_pt.bc'
source_filename = "../drivers/soc/qcom/cpr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpr_acc_desc = type { ptr, ptr }
%struct.cpr_desc = type { i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.cpr_fuses, i8, i8 }
%struct.cpr_fuses = type { i32, i32, ptr }
%struct.acc_desc = type { i32, i32, ptr, ptr, i32 }
%struct.fuse_corner_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.reg_sequence = type { i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.cpr_drv = type { i32, i32, %struct.generic_pm_domain, ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.generic_pm_domain = type { %struct.device, %struct.dev_pm_domain, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i8, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.raw_notifier_head, ptr, ptr, ptr, %struct.gpd_dev_ops, i64, i64, i8, i8, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i64, i64, ptr, %union.anon.84 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.gpd_dev_ops = type { ptr, ptr }
%union.anon.84 = type { %struct.mutex }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.cpr_fuse = type { ptr, ptr, ptr, ptr }
%struct.fuse_corner = type { i32, i32, i32, i32, i32, ptr, i32, i32, i8 }
%struct.corner = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.corner_data = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.81 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_cpr__329_1750_cpr_driver_init6 = internal global ptr @cpr_driver_init, section ".initcall6.init", align 4
@cpr_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cpr_probe, ptr @cpr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpr_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cpr_driver_exit = internal global ptr @cpr_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description330 = internal constant [50 x i8] c"cpr.description=Core Power Reduction (CPR) driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file331 = internal constant [30 x i8] c"cpr.file=drivers/soc/qcom/cpr\00", section ".modinfo", align 1
@__UNIQUE_ID_license332 = internal constant [19 x i8] c"cpr.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom-cpr\00", [23 x i8] zeroinitializer }, align 32
@cpr_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,qcs404-cpr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @qcs404_cpr_acc_desc }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"acc-syscon\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdd-apc\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpr_fuse_revision\00", [46 x i8] zeroinitializer }, align 32
@cpr_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&drv->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpr\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cpr_ring_osc%d\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cpr_init_voltage%d\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cpr_quotient%d\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cpr_quotient_offset%d\00", [42 x i8] zeroinitializer }, align 32
@cpr_fuse_corner_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 933, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"min uV: %d (fuse corner: %d) not supported by regulator\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpr_fuse_corner_init\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/soc/qcom/cpr.c\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpr_fuse_corner_init._entry_ptr = internal global ptr @cpr_fuse_corner_init._entry, section ".printk_index", align 4
@cpr_fuse_corner_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.12, i32 943, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"max uV: %d (fuse corner: %d) not supported by regulator\0A\00", [39 x i8] zeroinitializer }, align 32
@cpr_fuse_corner_init._entry_ptr.17 = internal global ptr @cpr_fuse_corner_init._entry.15, section ".printk_index", align 4
@cpr_fuse_corner_init.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.11, ptr @.str.12, ptr @.str.18, i8 0, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"fuse corner %d: [%d %d %d] RO%hhu quot %d squot %d\0A\00", [44 x i8] zeroinitializer }, align 32
@cpr_irq_handler.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.12, ptr @.str.20, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpr_irq_handler\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IRQ_STATUS = %#02x\0A\00", [44 x i8] zeroinitializer }, align 32
@cpr_irq_handler.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.12, ptr @.str.21, i8 0, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CPR is disabled\0A\00", [47 x i8] zeroinitializer }, align 32
@cpr_irq_handler.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.12, ptr @.str.22, i8 0, i8 -104, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CPR measurement is not ready\0A\00", [34 x i8] zeroinitializer }, align 32
@cpr_irq_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cpr_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.12, i32 613, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Interrupt broken? RBCPR_CTL = %#02x\0A\00", [59 x i8] zeroinitializer }, align 32
@cpr_irq_handler._entry_ptr = internal global ptr @cpr_irq_handler._entry, section ".printk_index", align 4
@cpr_irq_handler.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.12, ptr @.str.25, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"IRQ occurred for Mid Flag\0A\00", [37 x i8] zeroinitializer }, align 32
@cpr_irq_handler.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.19, ptr @.str.12, ptr @.str.26, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IRQ occurred for unknown flag (%#08x)\0A\00", [57 x i8] zeroinitializer }, align 32
@cpr_scale.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.27, ptr @.str.12, ptr @.str.28, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cpr_scale\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"UP: -> new_uV: %d last_uV: %d perf state: %u\0A\00", [50 x i8] zeroinitializer }, align 32
@cpr_scale.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.27, ptr @.str.12, ptr @.str.29, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"DOWN: -> new_uV: %d last_uV: %d perf state: %u\0A\00", [48 x i8] zeroinitializer }, align 32
@cpr_scale_voltage._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.23, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cpr_scale_voltage = private unnamed_addr constant [18 x i8] c"cpr_scale_voltage\00", align 1
@cpr_scale_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @__func__.cpr_scale_voltage, ptr @.str.12, i32 445, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set apc voltage %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cpr_scale_voltage._entry_ptr = internal global ptr @cpr_scale_voltage._entry, section ".printk_index", align 4
@cpr_corner_restore.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.31, ptr @.str.12, ptr @.str.32, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cpr_corner_restore\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"gcnt = %#08x, ctl = %#08x, irq = %#08x\0A\00", [56 x i8] zeroinitializer }, align 32
@cpr_set_performance_state.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.33, ptr @.str.12, ptr @.str.34, i8 0, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cpr_set_performance_state\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: setting perf state: %u (prev state: %u)\0A\00", [51 x i8] zeroinitializer }, align 32
@cpr_pd_attach_dev.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.35, ptr @.str.12, ptr @.str.36, i8 1, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpr_pd_attach_dev\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"attach callback for: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@cpr_pd_attach_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.12, i32 1482, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not get cpu clk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cpr_pd_attach_dev._entry_ptr = internal global ptr @cpr_pd_attach_dev._entry, section ".printk_index", align 4
@cpr_pd_attach_dev.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.35, ptr @.str.12, ptr @.str.38, i8 1, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"using cpu clk from: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@cpr_pd_attach_dev._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.12, i32 1500, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not get OPP count\0A\00", [39 x i8] zeroinitializer }, align 32
@cpr_pd_attach_dev._entry_ptr.41 = internal global ptr @cpr_pd_attach_dev._entry.39, section ".printk_index", align 4
@cpr_pd_attach_dev._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.12, i32 1506, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"need at least 2 OPPs to use CPR\0A\00", [63 x i8] zeroinitializer }, align 32
@cpr_pd_attach_dev._entry_ptr.44 = internal global ptr @cpr_pd_attach_dev._entry.42, section ".printk_index", align 4
@cpr_pd_attach_dev._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.12, i32 1549, ptr @.str.47, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"driver initialized with %u OPPs\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cpr_pd_attach_dev._entry_ptr.48 = internal global ptr @cpr_pd_attach_dev._entry.45, section ".printk_index", align 4
@cpr_corner_init.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.49, ptr @.str.12, ptr @.str.50, i8 1, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpr_corner_init\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"freq: %lu level: %u fuse level: %u\0A\00", [60 x i8] zeroinitializer }, align 32
@cpr_corner_init.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.49, ptr @.str.12, ptr @.str.51, i8 1, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"corner %d: [%d %d %d] quot %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom,opp-fuse-level\00", [44 x i8] zeroinitializer }, align 32
@cpr_get_fuse_corner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.12, i32 1034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: missing 'qcom,opp-fuse-level' property\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpr_get_fuse_corner\00", [44 x i8] zeroinitializer }, align 32
@cpr_get_fuse_corner._entry_ptr = internal global ptr @cpr_get_fuse_corner._entry, section ".printk_index", align 4
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"required-opps\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"opp-hz\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@cpr_init_parameters.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.58, ptr @.str.12, ptr @.str.59, i8 1, i8 67, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpr_init_parameters\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"up threshold = %u, down threshold = %u\0A\00", [56 x i8] zeroinitializer }, align 32
@cpr_config.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.60, ptr @.str.12, ptr @.str.61, i8 0, i8 -78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpr_config\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Timer count: %#0x (for %d us)\0A\00", [33 x i8] zeroinitializer }, align 32
@cpr_find_initial_corner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.12, i32 1307, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot get rate from NULL clk\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cpr_find_initial_corner\00", [40 x i8] zeroinitializer }, align 32
@cpr_find_initial_corner._entry_ptr = internal global ptr @cpr_find_initial_corner._entry, section ".printk_index", align 4
@cpr_find_initial_corner._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.12, i32 1338, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"boot up corner not found\0A\00", [38 x i8] zeroinitializer }, align 32
@cpr_find_initial_corner._entry_ptr.66 = internal global ptr @cpr_find_initial_corner._entry.64, section ".printk_index", align 4
@cpr_find_initial_corner.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.63, ptr @.str.12, ptr @.str.67, i8 1, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"boot up perf state: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom_cpr\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"debug_info\00", [21 x i8] zeroinitializer }, align 32
@cpr_debug_info_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @cpr_debug_info_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"corner, current_volt = %d uV\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rbcpr_gcnt_target (%u) = %#02X\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rbcpr_ctl = %#02X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rbcpr_irq_status = %#02X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rbcpr_result_0 = %#02X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  [step_dn = %u\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c", step_up = %u\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c", error_steps = %u\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c", error = %u\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c", error_lt_0 = %u\00", [46 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c", busy = %u]\0A\00", [18 x i8] zeroinitializer }, align 32
@qcs404_cpr_acc_desc = internal constant { %struct.cpr_acc_desc, [24 x i8] } { %struct.cpr_acc_desc { ptr @qcs404_cpr_desc, ptr @qcs404_acc_desc }, [24 x i8] zeroinitializer }, align 32
@qcs404_cpr_desc = internal constant { %struct.cpr_desc, [60 x i8] } { %struct.cpr_desc { i32 3, i32 50, ptr @.compoundliteral, i32 5000, i32 0, i32 2, i32 1, i32 3, i32 15, i32 1, i32 1, i32 1, i32 0, %struct.cpr_fuses { i32 8000, i32 6, ptr @.compoundliteral.81 }, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@qcs404_acc_desc = internal constant { %struct.acc_desc, [44 x i8] } { %struct.acc_desc { i32 0, i32 0, ptr @.compoundliteral.82, ptr @.compoundliteral.83, i32 2 }, [44 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 25, i32 25, i32 25], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { [3 x %struct.fuse_corner_data], [40 x i8] } { [3 x %struct.fuse_corner_data] [%struct.fuse_corner_data { i32 1224000, i32 1224000, i32 1048000, i32 0, i32 0, i32 0, i32 1, i32 0, i32 5, i32 0 }, %struct.fuse_corner_data { i32 1288000, i32 1288000, i32 1048000, i32 2000, i32 1400, i32 0, i32 1, i32 -20, i32 5, i32 0 }, %struct.fuse_corner_data { i32 1352000, i32 1384000, i32 1088000, i32 2000, i32 1400, i32 0, i32 1, i32 0, i32 5, i32 0 }], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { [2 x %struct.reg_sequence], [40 x i8] } { [2 x %struct.reg_sequence] [%struct.reg_sequence { i32 45368, i32 255, i32 0 }, %struct.reg_sequence { i32 45360, i32 21845, i32 0 }], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { [6 x %struct.reg_sequence], [56 x i8] } { [6 x %struct.reg_sequence] [%struct.reg_sequence { i32 45344, i32 17043520, i32 0 }, %struct.reg_sequence { i32 45348, i32 65, i32 0 }, %struct.reg_sequence { i32 45344, i32 0, i32 0 }, %struct.reg_sequence { i32 45348, i32 0, i32 0 }, %struct.reg_sequence { i32 45344, i32 0, i32 0 }, %struct.reg_sequence { i32 45348, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.84 = private unnamed_addr constant [11 x i8] c"cpr_driver\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1742, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1746, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"cpr_match_table\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1736, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1641, i32 38 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1658, i32 41 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1669, i32 45 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1685, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1690, i32 6 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1242, i32 22 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1247, i32 22 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1253, i32 22 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1258, i32 22 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 931, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 941, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 947, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 602, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 605, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 608, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 611, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 630, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 632, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 517, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 554, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 444, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 389, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 755, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1457, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1482, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1487, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1500, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1506, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1548, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1128, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1219, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1032, i32 31 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1033, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1061, i32 45 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1065, i32 34 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1278, i32 26 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1293, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 714, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1307, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1338, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1342, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1609, i32 36 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1611, i32 22 }
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c"cpr_debug_info_fops\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1605, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1568, i32 16 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1573, i32 16 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1576, i32 16 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1579, i32 16 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1582, i32 16 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1586, i32 16 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1588, i32 16 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1592, i32 16 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1595, i32 16 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1598, i32 16 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1601, i32 16 }
@___asan_gen_.348 = private unnamed_addr constant [20 x i8] c"qcs404_cpr_acc_desc\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1423, i32 34 }
@___asan_gen_.351 = private unnamed_addr constant [16 x i8] c"qcs404_cpr_desc\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1347, i32 30 }
@___asan_gen_.354 = private unnamed_addr constant [16 x i8] c"qcs404_acc_desc\00", align 1
@___asan_gen_.355 = private constant [26 x i8] c"../drivers/soc/qcom/cpr.c\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1407, i32 30 }
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_description330, ptr @__UNIQUE_ID_file331, ptr @__UNIQUE_ID_license332, ptr @__exitcall_cpr_driver_exit, ptr @__initcall__kmod_cpr__329_1750_cpr_driver_init6, ptr @cpr_driver_exit, ptr @cpr_find_initial_corner._entry, ptr @cpr_find_initial_corner._entry.64, ptr @cpr_find_initial_corner._entry_ptr, ptr @cpr_find_initial_corner._entry_ptr.66, ptr @cpr_fuse_corner_init._entry, ptr @cpr_fuse_corner_init._entry.15, ptr @cpr_fuse_corner_init._entry_ptr, ptr @cpr_fuse_corner_init._entry_ptr.17, ptr @cpr_get_fuse_corner._entry, ptr @cpr_get_fuse_corner._entry_ptr, ptr @cpr_irq_handler._entry, ptr @cpr_irq_handler._entry_ptr, ptr @cpr_pd_attach_dev._entry, ptr @cpr_pd_attach_dev._entry.39, ptr @cpr_pd_attach_dev._entry.42, ptr @cpr_pd_attach_dev._entry.45, ptr @cpr_pd_attach_dev._entry_ptr, ptr @cpr_pd_attach_dev._entry_ptr.41, ptr @cpr_pd_attach_dev._entry_ptr.44, ptr @cpr_pd_attach_dev._entry_ptr.48, ptr @cpr_scale_voltage._entry, ptr @cpr_scale_voltage._entry_ptr, ptr @cpr_driver, ptr @.str, ptr @cpr_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cpr_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @cpr_irq_handler._rs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @cpr_scale_voltage._rs, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @cpr_debug_info_fops, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @qcs404_cpr_acc_desc, ptr @qcs404_cpr_desc, ptr @qcs404_acc_desc, ptr @.compoundliteral, ptr @.compoundliteral.81, ptr @.compoundliteral.82, ptr @.compoundliteral.83], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_fuse_corner_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_fuse_corner_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_irq_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_scale_voltage._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_scale_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_pd_attach_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_pd_attach_dev._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_pd_attach_dev._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_pd_attach_dev._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_get_fuse_corner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_find_initial_corner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_find_initial_corner._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpr_debug_info_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_cpr_acc_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_cpr_desc to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcs404_acc_desc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpr_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpr_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cpr_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpr_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpr_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %cpr_rev = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpr_rev) #7
  %0 = ptrtoint ptr %cpr_rev to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cpr_rev, align 4
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %acc_desc = getelementptr inbounds %struct.cpr_acc_desc, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %acc_desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %acc_desc, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1520, i32 noundef 3520) #7
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %dev9, align 8
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %desc = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %desc, align 4
  %9 = ptrtoint ptr %acc_desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %acc_desc, align 4
  %acc_desc12 = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 17
  %11 = ptrtoint ptr %acc_desc12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %acc_desc12, align 8
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %7, align 4
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 36) #7
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !198

devm_kcalloc.exit.thread:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %fuse_corners169 = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 14
  %16 = ptrtoint ptr %fuse_corners169 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %fuse_corners169, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end8
  %17 = extractvalue { i32, i1 } %14, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %17, i32 noundef 3520) #7
  %fuse_corners = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 14
  %18 = ptrtoint ptr %fuse_corners to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i.i, ptr %fuse_corners, align 4
  %tobool16.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool16.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end18

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %devm_kcalloc.exit
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %21 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i164 = call i32 @__of_parse_phandle_with_args(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool.not.i = icmp eq i32 %call.i164, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %if.end18
  %22 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool20.not = icmp eq ptr %23, null
  br i1 %tobool20.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end22

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %of_parse_phandle.exit
  %call23 = call ptr @syscon_node_to_regmap(ptr noundef nonnull %23) #7
  %tcsr = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 10
  %24 = ptrtoint ptr %tcsr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call23, ptr %tcsr, align 4
  call void @of_node_put(ptr noundef nonnull %23) #7
  %25 = ptrtoint ptr %tcsr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tcsr, align 4
  %cmp.i = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end22
  %call30 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 6
  %28 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call30, ptr %base, align 4
  %cmp.i165 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end29
  %call37 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp = icmp slt i32 %call37, 0
  br i1 %cmp, label %if.end36.cleanup_crit_edge, label %if.end39

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end36
  %call40 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #7
  %vdd_apc = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 8
  %30 = ptrtoint ptr %vdd_apc to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call40, ptr %vdd_apc, align 4
  %cmp.i166 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call40 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end39
  %call47 = call i32 @nvmem_cell_read_variable_le_u32(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull %cpr_rev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %call51 = call fastcc ptr @cpr_get_fuses(ptr noundef nonnull %call.i)
  %cpr_fuses = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 18
  %32 = ptrtoint ptr %cpr_fuses to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call51, ptr %cpr_fuses, align 4
  %cmp.i167 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call51 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.end50
  %call58 = call fastcc i32 @cpr_populate_ring_osc_idx(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %call62 = call fastcc i32 @cpr_fuse_corner_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %do.body, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end61
  %lock = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @cpr_probe.__key) #7
  %call66 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call37, ptr noundef null, ptr noundef nonnull @cpr_irq_handler, i32 noundef 8193, ptr noundef nonnull @.str.5, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end69:                                         ; preds = %do.body
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  %full_name = getelementptr inbounds %struct.device_node, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %full_name, align 4
  %call71 = call ptr @devm_kstrdup_const(ptr noundef %dev1, ptr noundef %37, i32 noundef 3264) #7
  %pd = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 2
  %name = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 2, i32 10
  %38 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call71, ptr %name, align 8
  %tobool74.not = icmp eq ptr %call71, null
  br i1 %tobool74.not, label %if.end69.cleanup_crit_edge, label %if.end76

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end76:                                         ; preds = %if.end69
  %power_off = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 2, i32 18
  %39 = ptrtoint ptr %power_off to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @cpr_power_off, ptr %power_off, align 8
  %power_on = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 2, i32 19
  %40 = ptrtoint ptr %power_on to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @cpr_power_on, ptr %power_on, align 4
  %set_performance_state = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 2, i32 23
  %41 = ptrtoint ptr %set_performance_state to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @cpr_set_performance_state, ptr %set_performance_state, align 4
  %opp_to_performance_state = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 2, i32 22
  %42 = ptrtoint ptr %opp_to_performance_state to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @cpr_get_performance_state, ptr %opp_to_performance_state, align 8
  %attach_dev = getelementptr inbounds %struct.cpr_drv, ptr %call.i, i32 0, i32 2, i32 30
  %43 = ptrtoint ptr %attach_dev to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @cpr_pd_attach_dev, ptr %attach_dev, align 4
  %call83 = call i32 @pm_genpd_init(ptr noundef %pd, ptr noundef null, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end86:                                         ; preds = %if.end76
  %44 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %of_node, align 8
  %call89 = call i32 @of_genpd_add_provider_simple(ptr noundef %45, ptr noundef %pd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end92:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call fastcc void @cpr_debugfs_init(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.end86.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.then54, %if.end46.cleanup_crit_edge, %if.then43, %if.end36.cleanup_crit_edge, %if.then33, %if.then26, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.then26 ], [ %29, %if.then33 ], [ %31, %if.then43 ], [ %33, %if.then54 ], [ 0, %if.end92 ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -19, %of_parse_phandle.exit.cleanup_crit_edge ], [ -22, %if.end36.cleanup_crit_edge ], [ %call47, %if.end46.cleanup_crit_edge ], [ %call58, %if.end57.cleanup_crit_edge ], [ %call62, %if.end61.cleanup_crit_edge ], [ %call66, %do.body.cleanup_crit_edge ], [ -22, %if.end69.cleanup_crit_edge ], [ %call83, %if.end76.cleanup_crit_edge ], [ %call89, %if.end86.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -19, %of_parse_phandle.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpr_rev) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpr_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %loop_disabled.i = getelementptr inbounds %struct.cpr_drv, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %loop_disabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %loop_disabled.i, align 8, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i.i = getelementptr inbounds %struct.cpr_drv, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #7, !srcloc !200
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %7, i32 144
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i) #7, !srcloc !201
  %9 = and i32 %8, -1610612737
  %10 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %11, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 %9) #7, !srcloc !200
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 76
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !201
  %15 = and i32 %14, -251658241
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %17, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %15) #7, !srcloc !200
  %18 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %19, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i, i32 2130706432) #7, !srcloc !200
  %20 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %21, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 16777216) #7, !srcloc !200
  %22 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %23, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 16777216) #7, !srcloc !200
  %24 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %25, i32 144
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16.i) #7, !srcloc !201
  %27 = and i32 %26, -16777217
  %28 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr3.i.i18.i = getelementptr i8, ptr %29, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i18.i, i32 %27) #7, !srcloc !200
  %30 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %31, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8, i32 0) #7, !srcloc !200
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  tail call void @of_genpd_del_provider(ptr noundef %33) #7
  %pd = getelementptr inbounds %struct.cpr_drv, ptr %1, i32 0, i32 2
  %call2 = tail call i32 @pm_genpd_remove(ptr noundef %pd) #7
  %debugfs = getelementptr inbounds %struct.cpr_drv, ptr %1, i32 0, i32 19
  %34 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %debugfs, align 8
  tail call void @debugfs_remove(ptr noundef %35) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmem_cell_read_variable_le_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cpr_get_fuses(ptr nocapture noundef readonly %drv) unnamed_addr #2 align 64 {
entry:
  %tbuf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 16
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %dev = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 16) #7
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %entry.cleanup53_crit_edge, label %devm_kcalloc.exit, !prof !198

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup53

devm_kcalloc.exit:                                ; preds = %entry
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %8 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef %8, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup53_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup53_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup53

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp89.not = icmp eq i32 %10, 0
  br i1 %cmp89.not, label %for.cond.preheader.cleanup53_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup53_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup53

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.090 = phi i32 [ %add, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tbuf) #7
  %add = add nuw i32 %i.090, 1
  %11 = call ptr @memset(ptr %tbuf, i32 255, i32 32)
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %add)
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %call7 = call noalias ptr @devm_kstrdup(ptr noundef %13, ptr noundef nonnull %tbuf, i32 noundef 3264) #7
  %arrayidx = getelementptr %struct.cpr_fuse, ptr %call5.i.i, i32 %i.090
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7, ptr %arrayidx, align 4
  %tobool10.not = icmp eq ptr %call7, null
  br i1 %tobool10.not, label %if.then11, label %if.end13

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tbuf) #7
  br label %cleanup53

if.end13:                                         ; preds = %for.body
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %add)
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %call19 = call noalias ptr @devm_kstrdup(ptr noundef %16, ptr noundef nonnull %tbuf, i32 noundef 3264) #7
  %init_voltage = getelementptr %struct.cpr_fuse, ptr %call5.i.i, i32 %i.090, i32 1
  %17 = ptrtoint ptr %init_voltage to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call19, ptr %init_voltage, align 4
  %tobool23.not = icmp eq ptr %call19, null
  br i1 %tobool23.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tbuf) #7
  br label %cleanup53

if.end26:                                         ; preds = %if.end13
  %call29 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %add)
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %call32 = call noalias ptr @devm_kstrdup(ptr noundef %19, ptr noundef nonnull %tbuf, i32 noundef 3264) #7
  %quotient = getelementptr %struct.cpr_fuse, ptr %call5.i.i, i32 %i.090, i32 2
  %20 = ptrtoint ptr %quotient to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call32, ptr %quotient, align 4
  %tobool36.not = icmp eq ptr %call32, null
  br i1 %tobool36.not, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tbuf) #7
  br label %cleanup53

if.end39:                                         ; preds = %if.end26
  %call42 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tbuf, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %add)
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %call45 = call noalias ptr @devm_kstrdup(ptr noundef %22, ptr noundef nonnull %tbuf, i32 noundef 3264) #7
  %quotient_offset = getelementptr %struct.cpr_fuse, ptr %call5.i.i, i32 %i.090, i32 3
  %23 = ptrtoint ptr %quotient_offset to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call45, ptr %quotient_offset, align 4
  %tobool49.not = icmp eq ptr %call45, null
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tbuf) #7
  br i1 %tobool49.not, label %if.end39.cleanup53_crit_edge, label %cleanup

if.end39.cleanup53_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup53

cleanup:                                          ; preds = %if.end39
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %add, %25
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.cleanup53_crit_edge

cleanup.cleanup53_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup53

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup53:                                        ; preds = %cleanup.cleanup53_crit_edge, %if.end39.cleanup53_crit_edge, %if.then37, %if.then24, %if.then11, %for.cond.preheader.cleanup53_crit_edge, %devm_kcalloc.exit.cleanup53_crit_edge, %entry.cleanup53_crit_edge
  %retval.2 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then37 ], [ inttoptr (i32 -12 to ptr), %if.then24 ], [ inttoptr (i32 -12 to ptr), %if.then11 ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.cleanup53_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup53_crit_edge ], [ %call5.i.i, %for.cond.preheader.cleanup53_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end39.cleanup53_crit_edge ], [ %call5.i.i, %cleanup.cleanup53_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpr_populate_ring_osc_idx(ptr nocapture noundef readonly %drv) unnamed_addr #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fuse_corners = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 14
  %0 = ptrtoint ptr %fuse_corners to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fuse_corners, align 4
  %desc = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 16
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.ptr = getelementptr %struct.fuse_corner, ptr %1, i32 %5
  %cpr_fuses = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 18
  %6 = ptrtoint ptr %cpr_fuses to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpr_fuses, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %data, align 4, !annotation !202
  %dev = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 3
  %cmp14 = icmp ult ptr %1, %add.ptr
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %fuses.016 = phi ptr [ %incdec.ptr1, %if.end.for.body_crit_edge ], [ %7, %entry.for.body_crit_edge ]
  %fuse.015 = phi ptr [ %incdec.ptr, %if.end.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %11 = ptrtoint ptr %fuses.016 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fuses.016, align 4
  %call = call i32 @nvmem_cell_read_variable_le_u32(ptr noundef %10, ptr noundef %12, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  %conv = trunc i32 %14 to i8
  %ring_osc_idx = getelementptr inbounds %struct.fuse_corner, ptr %fuse.015, i32 0, i32 8
  %15 = ptrtoint ptr %ring_osc_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %ring_osc_idx, align 4
  %incdec.ptr = getelementptr %struct.fuse_corner, ptr %fuse.015, i32 1
  %incdec.ptr1 = getelementptr %struct.cpr_fuse, ptr %fuses.016, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpr_fuse_corner_init(ptr nocapture noundef readonly %drv) unnamed_addr #2 align 64 {
entry:
  %bits.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 16
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %cpr_fuses = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 18
  %2 = ptrtoint ptr %cpr_fuses to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpr_fuses, align 4
  %acc_desc2 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 17
  %4 = ptrtoint ptr %acc_desc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %acc_desc2, align 8
  %settings = getelementptr inbounds %struct.acc_desc, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %settings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %settings, align 4
  %vdd_apc = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 8
  %8 = ptrtoint ptr %vdd_apc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdd_apc, align 4
  %call = tail call i32 @regulator_get_linear_step(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fuse_corners = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 14
  %10 = ptrtoint ptr %fuse_corners to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fuse_corners, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %sub = add i32 %13, -1
  %arrayidx = getelementptr %struct.fuse_corner, ptr %11, i32 %sub
  %cmp.not239 = icmp ugt ptr %11, %arrayidx
  br i1 %cmp.not239, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %fuse_corner_data = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 13, i32 2
  %14 = ptrtoint ptr %fuse_corner_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fuse_corner_data, align 4
  %sub4 = add i32 %call, -1
  %dev.i = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 3
  %cpr_fuses.i = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 13
  %init_voltage_width.i = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 13, i32 1
  %max_uV34 = getelementptr %struct.fuse_corner, ptr %11, i32 %sub, i32 1
  %uV35 = getelementptr %struct.fuse_corner, ptr %11, i32 %sub, i32 2
  %step_quot = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 2
  %num_regs_per_fuse = getelementptr inbounds %struct.acc_desc, ptr %5, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end47.for.body_crit_edge, %for.body.lr.ph
  %fuses.0244 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr58, %if.end47.for.body_crit_edge ]
  %fdata.0242 = phi ptr [ %15, %for.body.lr.ph ], [ %incdec.ptr59, %if.end47.for.body_crit_edge ]
  %fuse.0241 = phi ptr [ %11, %for.body.lr.ph ], [ %incdec.ptr, %if.end47.for.body_crit_edge ]
  %accs.0240 = phi ptr [ %7, %for.body.lr.ph ], [ %add.ptr, %if.end47.for.body_crit_edge ]
  %min_uV = getelementptr inbounds %struct.fuse_corner_data, ptr %fdata.0242, i32 0, i32 2
  %16 = ptrtoint ptr %min_uV to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %min_uV, align 4
  %add = add i32 %17, %sub4
  %18 = urem i32 %add, %call
  %mul = sub i32 %add, %18
  store i32 %mul, ptr %min_uV, align 4
  %max_uV = getelementptr inbounds %struct.fuse_corner_data, ptr %fdata.0242, i32 0, i32 1
  %19 = ptrtoint ptr %max_uV to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_uV, align 4
  %add9 = add i32 %20, %sub4
  %21 = urem i32 %add9, %call
  %mul11 = sub i32 %add9, %21
  store i32 %mul11, ptr %max_uV, align 4
  %init_voltage = getelementptr inbounds %struct.cpr_fuse, ptr %fuses.0244, i32 0, i32 1
  %22 = ptrtoint ptr %init_voltage to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_voltage, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits.i) #7
  %24 = ptrtoint ptr %bits.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %bits.i, align 4
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 8
  %call.i = call i32 @nvmem_cell_read_variable_le_u32(ptr noundef %26, ptr noundef %23, ptr noundef nonnull %bits.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.cpr_read_fuse_uV.exit_crit_edge

for.body.cpr_read_fuse_uV.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpr_read_fuse_uV.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bits.i, align 4
  %29 = ptrtoint ptr %init_voltage_width.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %init_voltage_width.i, align 4
  %sub.i = add i32 %30, -1
  %shl.i = shl nuw i32 1, %sub.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %28, %neg.i
  %and5.i = and i32 %shl.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %sub8.i = sub i32 0, %and.i
  %spec.select.i = select i1 %tobool6.not.i, i32 %and.i, i32 %sub8.i
  %31 = ptrtoint ptr %cpr_fuses.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpr_fuses.i, align 4
  %33 = ptrtoint ptr %fdata.0242 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fdata.0242, align 4
  %mul.i = mul i32 %spec.select.i, %32
  %add11.i = add i32 %34, %sub4
  %sub12.i = add i32 %add11.i, %mul.i
  %35 = srem i32 %sub12.i, %call
  %mul13.i = sub i32 %sub12.i, %35
  br label %cpr_read_fuse_uV.exit

cpr_read_fuse_uV.exit:                            ; preds = %if.end.i, %for.body.cpr_read_fuse_uV.exit_crit_edge
  %retval.0.i231 = phi i32 [ %mul13.i, %if.end.i ], [ %call.i, %for.body.cpr_read_fuse_uV.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i231)
  %cmp14 = icmp slt i32 %retval.0.i231, 0
  br i1 %cmp14, label %cpr_read_fuse_uV.exit.cleanup_crit_edge, label %if.end16

cpr_read_fuse_uV.exit.cleanup_crit_edge:          ; preds = %cpr_read_fuse_uV.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %cpr_read_fuse_uV.exit
  %36 = ptrtoint ptr %min_uV to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %min_uV, align 4
  %38 = ptrtoint ptr %fuse.0241 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %fuse.0241, align 4
  %39 = ptrtoint ptr %max_uV to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_uV, align 4
  %max_uV20 = getelementptr inbounds %struct.fuse_corner, ptr %fuse.0241, i32 0, i32 1
  %41 = ptrtoint ptr %max_uV20 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %max_uV20, align 4
  %42 = call i32 @llvm.smax.i32(i32 %retval.0.i231, i32 %37)
  %43 = call i32 @llvm.smin.i32(i32 %42, i32 %40)
  %uV31 = getelementptr inbounds %struct.fuse_corner, ptr %fuse.0241, i32 0, i32 2
  %44 = ptrtoint ptr %uV31 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %uV31, align 4
  %cmp32 = icmp eq ptr %fuse.0241, %arrayidx
  br i1 %cmp32, label %if.then33, label %if.end16.if.end43_crit_edge

if.end16.if.end43_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then33:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %max_uV34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_uV34, align 4
  %47 = ptrtoint ptr %uV35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %uV35, align 4
  %49 = call i32 @llvm.smax.i32(i32 %46, i32 %48)
  %50 = ptrtoint ptr %max_uV34 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %max_uV34, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then33, %if.end16.if.end43_crit_edge
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 8
  %quotient = getelementptr inbounds %struct.cpr_fuse, ptr %fuses.0244, i32 0, i32 2
  %53 = ptrtoint ptr %quotient to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %quotient, align 4
  %quot = getelementptr inbounds %struct.fuse_corner, ptr %fuse.0241, i32 0, i32 3
  %call44 = call i32 @nvmem_cell_read_variable_le_u32(ptr noundef %52, ptr noundef %54, ptr noundef %quot) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %quot_scale = getelementptr inbounds %struct.fuse_corner_data, ptr %fdata.0242, i32 0, i32 6
  %55 = ptrtoint ptr %quot_scale to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %quot_scale, align 4
  %57 = ptrtoint ptr %quot to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %quot, align 4
  %mul49 = mul i32 %58, %56
  store i32 %mul49, ptr %quot, align 4
  %quot_offset = getelementptr inbounds %struct.fuse_corner_data, ptr %fdata.0242, i32 0, i32 5
  %59 = ptrtoint ptr %quot_offset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %quot_offset, align 4
  %add51 = add i32 %60, %mul49
  store i32 %add51, ptr %quot, align 4
  %quot_adjust = getelementptr inbounds %struct.fuse_corner_data, ptr %fdata.0242, i32 0, i32 7
  %61 = ptrtoint ptr %quot_adjust to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %quot_adjust, align 4
  %add53 = add i32 %62, %add51
  store i32 %add53, ptr %quot, align 4
  %63 = ptrtoint ptr %step_quot to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %step_quot, align 4
  %ring_osc_idx = getelementptr inbounds %struct.fuse_corner, ptr %fuse.0241, i32 0, i32 8
  %65 = ptrtoint ptr %ring_osc_idx to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ring_osc_idx, align 4
  %idxprom = zext i8 %66 to i32
  %arrayidx54 = getelementptr i32, ptr %64, i32 %idxprom
  %67 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx54, align 4
  %step_quot55 = getelementptr inbounds %struct.fuse_corner, ptr %fuse.0241, i32 0, i32 4
  %69 = ptrtoint ptr %step_quot55 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %step_quot55, align 4
  %accs56 = getelementptr inbounds %struct.fuse_corner, ptr %fuse.0241, i32 0, i32 5
  %70 = ptrtoint ptr %accs56 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %accs.0240, ptr %accs56, align 4
  %71 = ptrtoint ptr %num_regs_per_fuse to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_regs_per_fuse, align 4
  %num_accs = getelementptr inbounds %struct.fuse_corner, ptr %fuse.0241, i32 0, i32 6
  %73 = ptrtoint ptr %num_accs to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %num_accs, align 4
  %74 = load i32, ptr %num_regs_per_fuse, align 4
  %add.ptr = getelementptr %struct.reg_sequence, ptr %accs.0240, i32 %74
  %incdec.ptr = getelementptr %struct.fuse_corner, ptr %fuse.0241, i32 1
  %incdec.ptr58 = getelementptr %struct.cpr_fuse, ptr %fuses.0244, i32 1
  %incdec.ptr59 = getelementptr %struct.fuse_corner_data, ptr %fdata.0242, i32 1
  %cmp.not = icmp ugt ptr %incdec.ptr, %arrayidx
  br i1 %cmp.not, label %if.end47.for.end_crit_edge, label %if.end47.for.body_crit_edge

if.end47.for.body_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end47.for.end_crit_edge, %if.end.for.end_crit_edge
  %75 = ptrtoint ptr %fuse_corners to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %fuse_corners, align 4
  %cmp62.not245 = icmp ugt ptr %76, %arrayidx
  br i1 %cmp62.not245, label %for.end.cleanup_crit_edge, label %for.body63.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body63.lr.ph:                                 ; preds = %for.end
  %dev106 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 3
  br label %for.body63

for.body63:                                       ; preds = %for.inc116.for.body63_crit_edge, %for.body63.lr.ph
  %i.1248 = phi i32 [ 0, %for.body63.lr.ph ], [ %inc118, %for.inc116.for.body63_crit_edge ]
  %fuse.1246 = phi ptr [ %76, %for.body63.lr.ph ], [ %incdec.ptr117, %for.inc116.for.body63_crit_edge ]
  %uV64 = getelementptr inbounds %struct.fuse_corner, ptr %fuse.1246, i32 0, i32 2
  %77 = ptrtoint ptr %uV64 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %uV64, align 4
  %max_uV65 = getelementptr inbounds %struct.fuse_corner, ptr %fuse.1246, i32 0, i32 1
  %79 = ptrtoint ptr %max_uV65 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_uV65, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp66 = icmp sgt i32 %78, %80
  br i1 %cmp66, label %for.body63.if.end77.sink.split_crit_edge, label %if.else

for.body63.if.end77.sink.split_crit_edge:         ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.sink.split

if.else:                                          ; preds = %for.body63
  %81 = ptrtoint ptr %fuse.1246 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %fuse.1246, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %82)
  %cmp72 = icmp slt i32 %78, %82
  br i1 %cmp72, label %if.else.if.end77.sink.split_crit_edge, label %if.else.if.end77_crit_edge

if.else.if.end77_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.else.if.end77.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.sink.split

if.end77.sink.split:                              ; preds = %if.else.if.end77.sink.split_crit_edge, %for.body63.if.end77.sink.split_crit_edge
  %.sink = phi i32 [ %80, %for.body63.if.end77.sink.split_crit_edge ], [ %82, %if.else.if.end77.sink.split_crit_edge ]
  %83 = ptrtoint ptr %uV64 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %.sink, ptr %uV64, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end77.sink.split, %if.else.if.end77_crit_edge
  %84 = ptrtoint ptr %vdd_apc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vdd_apc, align 4
  %86 = ptrtoint ptr %fuse.1246 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %fuse.1246, align 4
  %call81 = call i32 @regulator_is_supported_voltage(ptr noundef %85, i32 noundef %87, i32 noundef %87) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end77.cleanup.sink.split_crit_edge, label %if.end86

if.end77.cleanup.sink.split_crit_edge:            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end86:                                         ; preds = %if.end77
  %88 = ptrtoint ptr %vdd_apc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vdd_apc, align 4
  %90 = ptrtoint ptr %max_uV65 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_uV65, align 4
  %call90 = call i32 @regulator_is_supported_voltage(ptr noundef %89, i32 noundef %91, i32 noundef %91) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end86.cleanup.sink.split_crit_edge, label %do.body99

if.end86.cleanup.sink.split_crit_edge:            ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body99:                                        ; preds = %if.end86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_fuse_corner_init.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_fuse_corner_init, %if.then105)) #7
          to label %for.inc116 [label %if.then105], !srcloc !203

if.then105:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev106, align 8
  %94 = ptrtoint ptr %fuse.1246 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fuse.1246, align 4
  %96 = ptrtoint ptr %uV64 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %uV64, align 4
  %98 = ptrtoint ptr %max_uV65 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %max_uV65, align 4
  %ring_osc_idx110 = getelementptr inbounds %struct.fuse_corner, ptr %fuse.1246, i32 0, i32 8
  %100 = ptrtoint ptr %ring_osc_idx110 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ring_osc_idx110, align 4
  %conv = zext i8 %101 to i32
  %quot111 = getelementptr inbounds %struct.fuse_corner, ptr %fuse.1246, i32 0, i32 3
  %102 = ptrtoint ptr %quot111 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %quot111, align 4
  %step_quot112 = getelementptr inbounds %struct.fuse_corner, ptr %fuse.1246, i32 0, i32 4
  %104 = ptrtoint ptr %step_quot112 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %step_quot112, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_fuse_corner_init.__UNIQUE_ID_ddebug312, ptr noundef %93, ptr noundef nonnull @.str.18, i32 noundef %i.1248, i32 noundef %95, i32 noundef %97, i32 noundef %99, i32 noundef %conv, i32 noundef %103, i32 noundef %105) #7
  br label %for.inc116

for.inc116:                                       ; preds = %if.then105, %do.body99
  %incdec.ptr117 = getelementptr %struct.fuse_corner, ptr %fuse.1246, i32 1
  %inc118 = add i32 %i.1248, 1
  %cmp62.not = icmp ugt ptr %incdec.ptr117, %arrayidx
  br i1 %cmp62.not, label %for.inc116.cleanup_crit_edge, label %for.inc116.for.body63_crit_edge

for.inc116.for.body63_crit_edge:                  ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body63

for.inc116.cleanup_crit_edge:                     ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end86.cleanup.sink.split_crit_edge, %if.end77.cleanup.sink.split_crit_edge
  %max_uV65.sink = phi ptr [ %fuse.1246, %if.end77.cleanup.sink.split_crit_edge ], [ %max_uV65, %if.end86.cleanup.sink.split_crit_edge ]
  %.str.16.sink = phi ptr [ @.str.10, %if.end77.cleanup.sink.split_crit_edge ], [ @.str.16, %if.end86.cleanup.sink.split_crit_edge ]
  %106 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev106, align 8
  %108 = ptrtoint ptr %max_uV65.sink to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %max_uV65.sink, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull %.str.16.sink, i32 noundef %109, i32 noundef %i.1248) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc116.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %cpr_read_fuse_uV.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ 0, %for.inc116.cleanup_crit_edge ], [ %call44, %if.end43.cleanup_crit_edge ], [ %retval.0.i231, %cpr_read_fuse_uV.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpr_irq_handler(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.cpr_drv, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %lock = getelementptr inbounds %struct.cpr_drv, ptr %dev, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %base.i = getelementptr inbounds %struct.cpr_drv, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 276
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !201
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %flags = getelementptr inbounds %struct.cpr_drv, ptr %dev, i32 0, i32 13
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i171 = getelementptr i8, ptr %9, i32 276
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i171) #7, !srcloc !201
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %val.0 = phi i32 [ %11, %if.then ], [ %5, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_irq_handler.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_irq_handler, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !203

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.cpr_drv, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev8, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_irq_handler.__UNIQUE_ID_ddebug299, ptr noundef %13, ptr noundef nonnull @.str.20, i32 noundef %val.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 144
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !201
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.not, label %do.body12, label %if.else

do.body12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_irq_handler.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_irq_handler, %if.then24)) #7
          to label %if.end128 [label %if.then24], !srcloc !203

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %dev25 = getelementptr inbounds %struct.cpr_drv, ptr %dev, i32 0, i32 3
  %18 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev25, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_irq_handler.__UNIQUE_ID_ddebug300, ptr noundef %19, ptr noundef nonnull @.str.21) #7
  br label %if.end128

if.else:                                          ; preds = %do.end
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i173 = getelementptr i8, ptr %21, i32 160
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i173) #7, !srcloc !201
  %23 = and i32 %22, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i174.not = icmp eq i32 %23, 0
  br i1 %tobool.i174.not, label %if.else.if.else49_crit_edge, label %land.lhs.true

if.else.if.else49_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else49

land.lhs.true:                                    ; preds = %if.else
  %clamp_timer_interval = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %clamp_timer_interval to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clamp_timer_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool30.not = icmp eq i32 %25, 0
  br i1 %tobool30.not, label %do.body32, label %land.lhs.true.if.else49_crit_edge

land.lhs.true.if.else49_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else49

do.body32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_irq_handler.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_irq_handler, %if.then44)) #7
          to label %if.end128 [label %if.then44], !srcloc !203

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %dev45 = getelementptr inbounds %struct.cpr_drv, ptr %dev, i32 0, i32 3
  %26 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev45, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_irq_handler.__UNIQUE_ID_ddebug301, ptr noundef %27, ptr noundef nonnull @.str.22) #7
  br label %if.end128

if.else49:                                        ; preds = %land.lhs.true.if.else49_crit_edge, %if.else.if.else49_crit_edge
  %loop_disabled.i = getelementptr inbounds %struct.cpr_drv, ptr %dev, i32 0, i32 11
  %28 = ptrtoint ptr %loop_disabled.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %loop_disabled.i, align 8, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.else64, label %if.then51

if.then51:                                        ; preds = %if.else49
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i176 = getelementptr i8, ptr %31, i32 144
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i176) #7, !srcloc !201
  %call54 = tail call i32 @___ratelimit(ptr noundef nonnull @cpr_irq_handler._rs, ptr noundef nonnull @.str.19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then51.if.end128_crit_edge, label %do.end59

if.then51.if.end128_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

do.end59:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  %dev60 = getelementptr inbounds %struct.cpr_drv, ptr %dev, i32 0, i32 3
  %34 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev60, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.24, i32 noundef %33) #10
  br label %if.end128

if.else64:                                        ; preds = %if.else49
  %and65 = and i32 %val.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else69, label %if.then67

if.then67:                                        ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cpr_scale(ptr noundef %dev, i32 noundef 2)
  br label %if.end125

if.else69:                                        ; preds = %if.else64
  %and70 = and i32 %val.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.else74, label %if.then72

if.then72:                                        ; preds = %if.else69
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cpr_scale(ptr noundef %dev, i32 noundef 1)
  br label %if.end125

if.else74:                                        ; preds = %if.else69
  %and75 = and i32 %val.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.else78, label %if.then77

if.then77:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %37, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 2130706432) #7, !srcloc !200
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i177 = getelementptr i8, ptr %39, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i177, i32 16777216) #7, !srcloc !200
  br label %if.end125

if.else78:                                        ; preds = %if.else74
  %and79 = and i32 %val.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.else82, label %if.then81

if.then81:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i179 = getelementptr i8, ptr %41, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i179, i32 2130706432) #7, !srcloc !200
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i180 = getelementptr i8, ptr %43, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i180, i32 16777216) #7, !srcloc !200
  br label %if.end125

if.else82:                                        ; preds = %if.else78
  %and83 = and i32 %val.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %do.body104, label %do.body86

do.body86:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_irq_handler.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_irq_handler, %if.then98)) #7
          to label %if.end125 [label %if.then98], !srcloc !203

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  %dev99 = getelementptr inbounds %struct.cpr_drv, ptr %dev, i32 0, i32 3
  %44 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev99, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_irq_handler.__UNIQUE_ID_ddebug302, ptr noundef %45, ptr noundef nonnull @.str.25) #7
  br label %if.end125

do.body104:                                       ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_irq_handler.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_irq_handler, %if.then116)) #7
          to label %if.end125 [label %if.then116], !srcloc !203

if.then116:                                       ; preds = %do.body104
  call void @__sanitizer_cov_trace_pc() #9
  %dev117 = getelementptr inbounds %struct.cpr_drv, ptr %dev, i32 0, i32 3
  %46 = ptrtoint ptr %dev117 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev117, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_irq_handler.__UNIQUE_ID_ddebug303, ptr noundef %47, ptr noundef nonnull @.str.26, i32 noundef %val.0) #7
  br label %if.end125

if.end125:                                        ; preds = %if.then116, %do.body104, %if.then98, %do.body86, %if.then81, %if.then77, %if.then72, %if.then67
  %corner = getelementptr inbounds %struct.cpr_drv, ptr %dev, i32 0, i32 7
  %48 = ptrtoint ptr %corner to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %corner, align 8
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i182 = getelementptr i8, ptr %51, i32 144
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i182) #7, !srcloc !201
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #7
  %save_ctl.i = getelementptr inbounds %struct.corner, ptr %49, i32 0, i32 5
  %54 = ptrtoint ptr %save_ctl.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %save_ctl.i, align 4
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %56, i32 256
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #7, !srcloc !201
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #7
  %save_irq.i = getelementptr inbounds %struct.corner, ptr %49, i32 0, i32 6
  %59 = ptrtoint ptr %save_irq.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %save_irq.i, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.end125, %do.end59, %if.then51.if.end128_crit_edge, %if.then44, %do.body32, %if.then24, %do.body12
  %ret.0 = phi i32 [ 1, %if.end125 ], [ 1, %if.then44 ], [ 0, %if.then24 ], [ 0, %do.end59 ], [ 0, %if.then51.if.end128_crit_edge ], [ 0, %do.body12 ], [ 1, %do.body32 ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kstrdup_const(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpr_power_off(ptr noundef %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr i8, ptr %domain, i32 1360
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %loop_disabled.i.i = getelementptr i8, ptr %domain, i32 1472
  %0 = ptrtoint ptr %loop_disabled.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %loop_disabled.i.i, align 8, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %if.then.i, label %entry.cpr_disable.exit_crit_edge

entry.cpr_disable.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpr_disable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i.i.i = getelementptr i8, ptr %domain, i32 1452
  %2 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %3, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 0) #7, !srcloc !200
  %4 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i8.i.i = getelementptr i8, ptr %5, i32 144
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i.i) #7, !srcloc !201
  %7 = and i32 %6, -1610612737
  %8 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr3.i.i.i.i = getelementptr i8, ptr %9, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i.i, i32 %7) #7, !srcloc !200
  %10 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 76
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !201
  %13 = and i32 %12, -251658241
  %14 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %15, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 %13) #7, !srcloc !200
  %16 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i10.i.i = getelementptr i8, ptr %17, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i.i, i32 2130706432) #7, !srcloc !200
  %18 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %19, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 16777216) #7, !srcloc !200
  %20 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i14.i.i = getelementptr i8, ptr %21, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i.i, i32 16777216) #7, !srcloc !200
  %22 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i16.i.i = getelementptr i8, ptr %23, i32 144
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16.i.i) #7, !srcloc !201
  %25 = and i32 %24, -16777217
  %26 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr3.i.i18.i.i = getelementptr i8, ptr %27, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i18.i.i, i32 %25) #7, !srcloc !200
  %28 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %29, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8.i, i32 2130706432) #7, !srcloc !200
  br label %cpr_disable.exit

cpr_disable.exit:                                 ; preds = %if.then.i, %entry.cpr_disable.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  %vdd_apc.i = getelementptr i8, ptr %domain, i32 1460
  %30 = ptrtoint ptr %vdd_apc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vdd_apc.i, align 4
  %call2.i = tail call i32 @regulator_disable(ptr noundef %31) #7
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpr_power_on(ptr noundef %domain) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %domain, i32 -8
  %vdd_apc.i = getelementptr i8, ptr %domain, i32 1460
  %0 = ptrtoint ptr %vdd_apc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd_apc.i, align 4
  %call.i = tail call i32 @regulator_enable(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cpr_enable.exit_crit_edge

entry.cpr_enable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpr_enable.exit

if.end.i:                                         ; preds = %entry
  %lock.i = getelementptr i8, ptr %domain, i32 1360
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %loop_disabled.i.i = getelementptr i8, ptr %domain, i32 1472
  %2 = ptrtoint ptr %loop_disabled.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %loop_disabled.i.i, align 8, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %corner.i = getelementptr i8, ptr %domain, i32 1456
  %4 = ptrtoint ptr %corner.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %corner.i, align 8
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end6.i_crit_edge, label %if.then3.i

land.lhs.true.i.if.end6.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  %base.i.i.i = getelementptr i8, ptr %domain, i32 1452
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 2130706432) #7, !srcloc !200
  %8 = ptrtoint ptr %corner.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %corner.i, align 8
  tail call fastcc void @cpr_corner_restore(ptr noundef %add.ptr, ptr noundef %9) #7
  %10 = ptrtoint ptr %corner.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %corner.i, align 8
  %desc1.i.i = getelementptr i8, ptr %domain, i32 1492
  %12 = ptrtoint ptr %desc1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc1.i.i, align 4
  %timer_cons_up.i.i = getelementptr inbounds %struct.cpr_desc, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %timer_cons_up.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timer_cons_up.i.i, align 4
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i19.i = getelementptr i8, ptr %17, i32 76
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i19.i) #7, !srcloc !201
  %19 = and i32 %18, -251658241
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  %and1.i.i.i = and i32 %15, 15
  %or.i.i.i = or i32 %20, %and1.i.i.i
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #7
  %22 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %23, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 %21) #7, !srcloc !200
  %save_ctl.i.i = getelementptr inbounds %struct.corner, ptr %11, i32 0, i32 5
  %24 = ptrtoint ptr %save_ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %save_ctl.i.i, align 4
  %26 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i15.i.i = getelementptr i8, ptr %27, i32 144
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i.i) #7, !srcloc !201
  %29 = and i32 %28, -1610612737
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  %and1.i17.i.i = and i32 %25, 96
  %or.i18.i.i = or i32 %30, %and1.i17.i.i
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i18.i.i) #7
  %32 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr3.i19.i.i = getelementptr i8, ptr %33, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i19.i.i, i32 %31) #7, !srcloc !200
  %save_irq.i.i = getelementptr inbounds %struct.corner, ptr %11, i32 0, i32 6
  %34 = ptrtoint ptr %save_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %save_irq.i.i, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  %37 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %38, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %36) #7, !srcloc !200
  %39 = ptrtoint ptr %loop_disabled.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %loop_disabled.i.i, align 8, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i.i.i = icmp eq i8 %40, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i, label %if.then3.i.if.else.i.i_crit_edge

if.then3.i.if.else.i.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.then3.i
  %max_uV.i.i = getelementptr inbounds %struct.corner, ptr %11, i32 0, i32 1
  %41 = ptrtoint ptr %max_uV.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_uV.i.i, align 4
  %43 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp.i.i = icmp sgt i32 %42, %44
  br i1 %cmp.i.i, label %land.lhs.true.i.i.cpr_ctl_enable.exit.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true.i.i.cpr_ctl_enable.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpr_ctl_enable.exit.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.then3.i.if.else.i.i_crit_edge
  br label %cpr_ctl_enable.exit.i

cpr_ctl_enable.exit.i:                            ; preds = %if.else.i.i, %land.lhs.true.i.i.cpr_ctl_enable.exit.i_crit_edge
  %val.0.i.i = phi i32 [ 0, %if.else.i.i ], [ 1, %land.lhs.true.i.i.cpr_ctl_enable.exit.i_crit_edge ]
  %45 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i21.i.i = getelementptr i8, ptr %46, i32 144
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21.i.i) #7, !srcloc !201
  %48 = and i32 %47, -16777217
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  %or.i.i.i.i = or i32 %49, %val.0.i.i
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #7
  %51 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr3.i.i.i.i = getelementptr i8, ptr %52, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i.i, i32 %50) #7, !srcloc !200
  br label %if.end6.i

if.end6.i:                                        ; preds = %cpr_ctl_enable.exit.i, %land.lhs.true.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %cpr_enable.exit

cpr_enable.exit:                                  ; preds = %if.end6.i, %entry.cpr_enable.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpr_set_performance_state(ptr noundef %domain, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %domain, i32 -8
  %lock = getelementptr i8, ptr %domain, i32 1360
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_set_performance_state.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_set_performance_state, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !203

if.then:                                          ; preds = %entry
  %dev = getelementptr i8, ptr %domain, i32 1352
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %corner.i = getelementptr i8, ptr %domain, i32 1456
  %2 = ptrtoint ptr %corner.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %corner.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.cpr_get_cur_perf_state.exit_crit_edge, label %cond.true.i

if.then.cpr_get_cur_perf_state.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpr_get_cur_perf_state.exit

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %corners.i = getelementptr i8, ptr %domain, i32 1488
  %4 = ptrtoint ptr %corners.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %corners.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %add.i = add nsw i32 %sub.ptr.div.i, 1
  br label %cpr_get_cur_perf_state.exit

cpr_get_cur_perf_state.exit:                      ; preds = %cond.true.i, %if.then.cpr_get_cur_perf_state.exit_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.true.i ], [ 0, %if.then.cpr_get_cur_perf_state.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_set_performance_state.__UNIQUE_ID_ddebug305, ptr noundef %1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %state, i32 noundef %cond.i) #7
  br label %do.end

do.end:                                           ; preds = %cpr_get_cur_perf_state.exit, %entry
  %corners = getelementptr i8, ptr %domain, i32 1488
  %6 = ptrtoint ptr %corners to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %corners, align 8
  %add.ptr5 = getelementptr %struct.corner, ptr %7, i32 %state
  %add.ptr6 = getelementptr %struct.corner, ptr %add.ptr5, i32 -1
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 8
  %sub = add i32 %9, -1
  %arrayidx = getelementptr %struct.corner, ptr %7, i32 %sub
  %cmp = icmp ugt ptr %add.ptr6, %arrayidx
  %cmp9 = icmp ult ptr %add.ptr6, %7
  %or.cond = or i1 %cmp9, %cmp
  br i1 %or.cond, label %do.end.unlock_crit_edge, label %if.end11

do.end.unlock_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end11:                                         ; preds = %do.end
  %corner12 = getelementptr i8, ptr %domain, i32 1456
  %10 = ptrtoint ptr %corner12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %corner12, align 8
  %cmp13 = icmp ugt ptr %11, %add.ptr6
  %cmp16 = icmp ult ptr %11, %add.ptr6
  %. = select i1 %cmp16, i32 2, i32 0
  %dir.0 = select i1 %cmp13, i32 1, i32 %.
  %loop_disabled.i = getelementptr i8, ptr %domain, i32 1472
  %12 = ptrtoint ptr %loop_disabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %loop_disabled.i, align 8, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i72 = icmp eq i8 %13, 0
  %last_uV = getelementptr inbounds %struct.corner, ptr %add.ptr6, i32 0, i32 3
  %uV = getelementptr inbounds %struct.corner, ptr %add.ptr6, i32 0, i32 2
  %new_uV.0.in = select i1 %tobool.not.i72, ptr %last_uV, ptr %uV
  %14 = ptrtoint ptr %new_uV.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %new_uV.0 = load i32, ptr %new_uV.0.in, align 4
  br i1 %tobool.not.i72, label %if.then26, label %if.end11.if.end27_crit_edge

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then26:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i.i = getelementptr i8, ptr %domain, i32 1452
  %15 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %16, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #7, !srcloc !200
  %17 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %18, i32 144
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i8.i) #7, !srcloc !201
  %20 = and i32 %19, -1610612737
  %21 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %22, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 %20) #7, !srcloc !200
  %23 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 76
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !201
  %26 = and i32 %25, -251658241
  %27 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %28, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %26) #7, !srcloc !200
  %29 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i10.i = getelementptr i8, ptr %30, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i10.i, i32 2130706432) #7, !srcloc !200
  %31 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %32, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 16777216) #7, !srcloc !200
  %33 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %34, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 16777216) #7, !srcloc !200
  %35 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %36, i32 144
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16.i) #7, !srcloc !201
  %38 = and i32 %37, -16777217
  %39 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr3.i.i18.i = getelementptr i8, ptr %40, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i18.i, i32 %38) #7, !srcloc !200
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end11.if.end27_crit_edge
  %call28 = tail call fastcc i32 @cpr_scale_voltage(ptr noundef %add.ptr, ptr noundef %add.ptr6, i32 noundef %new_uV.0, i32 noundef %dir.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end27.unlock_crit_edge

if.end27.unlock_crit_edge:                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end31:                                         ; preds = %if.end27
  %41 = ptrtoint ptr %loop_disabled.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %loop_disabled.i, align 8, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i76 = icmp eq i8 %42, 0
  br i1 %tobool.not.i76, label %if.then33, label %if.end31.if.end38_crit_edge

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then33:                                        ; preds = %if.end31
  %base.i.i = getelementptr i8, ptr %domain, i32 1452
  %43 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %44, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i77, i32 2130706432) #7, !srcloc !200
  %45 = ptrtoint ptr %corner12 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %corner12, align 8
  %cmp35.not = icmp eq ptr %46, %add.ptr6
  br i1 %cmp35.not, label %if.then33.if.end37_crit_edge, label %if.then36

if.then33.if.end37_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then36:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @cpr_corner_restore(ptr noundef %add.ptr, ptr noundef %add.ptr6)
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.then33.if.end37_crit_edge
  %desc1.i = getelementptr i8, ptr %domain, i32 1492
  %47 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc1.i, align 4
  %timer_cons_up.i = getelementptr inbounds %struct.cpr_desc, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %timer_cons_up.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %timer_cons_up.i, align 4
  %51 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i79 = getelementptr i8, ptr %52, i32 76
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i79) #7, !srcloc !201
  %54 = and i32 %53, -251658241
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  %and1.i.i = and i32 %50, 15
  %or.i.i = or i32 %55, %and1.i.i
  %56 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %57 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i.i80 = getelementptr i8, ptr %58, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i80, i32 %56) #7, !srcloc !200
  %save_ctl.i = getelementptr inbounds %struct.corner, ptr %add.ptr6, i32 0, i32 5
  %59 = ptrtoint ptr %save_ctl.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %save_ctl.i, align 4
  %61 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %62, i32 144
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #7, !srcloc !201
  %64 = and i32 %63, -1610612737
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #7
  %and1.i17.i = and i32 %60, 96
  %or.i18.i = or i32 %65, %and1.i17.i
  %66 = tail call i32 @llvm.bswap.i32(i32 %or.i18.i) #7
  %67 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i19.i = getelementptr i8, ptr %68, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i19.i, i32 %66) #7, !srcloc !200
  %save_irq.i = getelementptr inbounds %struct.corner, ptr %add.ptr6, i32 0, i32 6
  %69 = ptrtoint ptr %save_irq.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %save_irq.i, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #7
  %72 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i.i81 = getelementptr i8, ptr %73, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i81, i32 %71) #7, !srcloc !200
  %74 = ptrtoint ptr %loop_disabled.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %loop_disabled.i, align 8, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i.i = icmp eq i8 %75, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i, label %if.end37.if.else.i_crit_edge

if.end37.if.else.i_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end37
  %max_uV.i = getelementptr inbounds %struct.corner, ptr %add.ptr6, i32 0, i32 1
  %76 = ptrtoint ptr %max_uV.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %max_uV.i, align 4
  %78 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp.i = icmp sgt i32 %77, %79
  br i1 %cmp.i, label %land.lhs.true.i.cpr_ctl_enable.exit_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i.cpr_ctl_enable.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpr_ctl_enable.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end37.if.else.i_crit_edge
  br label %cpr_ctl_enable.exit

cpr_ctl_enable.exit:                              ; preds = %if.else.i, %land.lhs.true.i.cpr_ctl_enable.exit_crit_edge
  %val.0.i = phi i32 [ 0, %if.else.i ], [ 1, %land.lhs.true.i.cpr_ctl_enable.exit_crit_edge ]
  %80 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i21.i = getelementptr i8, ptr %81, i32 144
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i21.i) #7, !srcloc !201
  %83 = and i32 %82, -16777217
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #7
  %or.i.i.i = or i32 %84, %val.0.i
  %85 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #7
  %86 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i.i, align 4
  %add.ptr3.i.i.i82 = getelementptr i8, ptr %87, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i82, i32 %85) #7, !srcloc !200
  br label %if.end38

if.end38:                                         ; preds = %cpr_ctl_enable.exit, %if.end31.if.end38_crit_edge
  %88 = ptrtoint ptr %corner12 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %add.ptr6, ptr %corner12, align 8
  br label %unlock

unlock:                                           ; preds = %if.end38, %if.end27.unlock_crit_edge, %do.end.unlock_crit_edge
  %ret.0 = phi i32 [ %call28, %if.end27.unlock_crit_edge ], [ 0, %if.end38 ], [ -22, %do.end.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpr_get_performance_state(ptr nocapture noundef readnone %genpd, ptr noundef %opp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dev_pm_opp_get_level(ptr noundef %opp) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpr_pd_attach_dev(ptr noundef %domain, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %domain, i32 -8
  %acc_desc1 = getelementptr i8, ptr %domain, i32 1496
  %0 = ptrtoint ptr %acc_desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acc_desc1, align 8
  %lock = getelementptr i8, ptr %domain, i32 1360
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_pd_attach_dev.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_pd_attach_dev, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !203

if.then:                                          ; preds = %entry
  %dev5 = getelementptr i8, ptr %domain, i32 1352
  %2 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev5, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i150 = phi ptr [ %7, %if.end.i ], [ %5, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_pd_attach_dev.__UNIQUE_ID_ddebug327, ptr noundef %3, ptr noundef nonnull @.str.36, ptr noundef %retval.0.i150) #7
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry
  %attached_cpu_dev = getelementptr i8, ptr %domain, i32 1356
  %8 = ptrtoint ptr %attached_cpu_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attached_cpu_dev, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end9, label %do.end.unlock_crit_edge

do.end.unlock_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end9:                                          ; preds = %do.end
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %cpu_clk = getelementptr i8, ptr %domain, i32 1464
  %10 = ptrtoint ptr %cpu_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10, ptr %cpu_clk, align 8
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end22

if.then13:                                        ; preds = %if.end9
  %cmp.not = icmp eq ptr %call10, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then13.unlock_crit_edge, label %do.end19

if.then13.unlock_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

do.end19:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call10 to i32
  %dev20 = getelementptr i8, ptr %domain, i32 1352
  %12 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.37, i32 noundef %11) #10
  br label %unlock

if.end22:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %attached_cpu_dev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %attached_cpu_dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_pd_attach_dev.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_pd_attach_dev, %if.then36)) #7
          to label %do.end42 [label %if.then36], !srcloc !203

if.then36:                                        ; preds = %if.end22
  %dev37 = getelementptr i8, ptr %domain, i32 1352
  %15 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev37, align 8
  %17 = ptrtoint ptr %attached_cpu_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %attached_cpu_dev, align 4
  %init_name.i151 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %init_name.i151 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i151, align 8
  %tobool.not.i152 = icmp eq ptr %20, null
  br i1 %tobool.not.i152, label %if.end.i153, label %if.then36.dev_name.exit155_crit_edge

if.then36.dev_name.exit155_crit_edge:             ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit155

if.end.i153:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  br label %dev_name.exit155

dev_name.exit155:                                 ; preds = %if.end.i153, %if.then36.dev_name.exit155_crit_edge
  %retval.0.i154 = phi ptr [ %22, %if.end.i153 ], [ %20, %if.then36.dev_name.exit155_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_pd_attach_dev.__UNIQUE_ID_ddebug328, ptr noundef %16, ptr noundef nonnull @.str.38, ptr noundef %retval.0.i154) #7
  br label %do.end42

do.end42:                                         ; preds = %dev_name.exit155, %if.end22
  %call44 = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef %domain) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end49, label %if.end51

do.end49:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #9
  %dev50 = getelementptr i8, ptr %domain, i32 1352
  %23 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev50, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.40) #10
  br label %unlock

if.end51:                                         ; preds = %do.end42
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call44, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call44)
  %cmp53 = icmp ult i32 %call44, 2
  %dev58 = getelementptr i8, ptr %domain, i32 1352
  br i1 %cmp53, label %do.end57, label %if.end59

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev58, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.43) #10
  br label %unlock

if.end59:                                         ; preds = %if.end51
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call44, i32 36) #7
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !198

devm_kcalloc.exit.thread:                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %corners159 = getelementptr i8, ptr %domain, i32 1488
  %30 = ptrtoint ptr %corners159 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %corners159, align 8
  br label %unlock

devm_kcalloc.exit:                                ; preds = %if.end59
  %31 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev58, align 8
  %33 = extractvalue { i32, i1 } %28, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %32, i32 noundef %33, i32 noundef 3520) #7
  %corners = getelementptr i8, ptr %domain, i32 1488
  %34 = ptrtoint ptr %corners to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call5.i.i, ptr %corners, align 8
  %tobool64.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool64.not, label %devm_kcalloc.exit.unlock_crit_edge, label %if.end66

devm_kcalloc.exit.unlock_crit_edge:               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end66:                                         ; preds = %devm_kcalloc.exit
  %call67 = tail call fastcc i32 @cpr_corner_init(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end66.unlock_crit_edge

if.end66.unlock_crit_edge:                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end70:                                         ; preds = %if.end66
  %loop_disabled.i = getelementptr i8, ptr %domain, i32 1472
  %35 = ptrtoint ptr %loop_disabled.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %loop_disabled.i, align 8
  %call71 = tail call fastcc i32 @cpr_init_parameters(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end70.unlock_crit_edge

if.end70.unlock_crit_edge:                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end74:                                         ; preds = %if.end70
  tail call fastcc void @cpr_config(ptr noundef %add.ptr)
  %call79 = tail call fastcc i32 @cpr_find_initial_corner(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end74.unlock_crit_edge

if.end74.unlock_crit_edge:                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end82:                                         ; preds = %if.end74
  %config = getelementptr inbounds %struct.acc_desc, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config, align 4
  %tobool83.not = icmp eq ptr %37, null
  br i1 %tobool83.not, label %if.end82.if.end87_crit_edge, label %if.then84

if.end82.if.end87_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %tcsr = getelementptr i8, ptr %domain, i32 1468
  %38 = ptrtoint ptr %tcsr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tcsr, align 4
  %num_regs_per_fuse = getelementptr inbounds %struct.acc_desc, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %num_regs_per_fuse to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_regs_per_fuse, align 4
  %call86 = tail call i32 @regmap_multi_reg_write(ptr noundef %39, ptr noundef nonnull %37, i32 noundef %41) #7
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end82.if.end87_crit_edge
  %enable_mask = getelementptr inbounds %struct.acc_desc, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %enable_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool88.not = icmp eq i32 %43, 0
  br i1 %tobool88.not, label %if.end87.do.end97_crit_edge, label %if.then89

if.end87.do.end97_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end97

if.then89:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %tcsr90 = getelementptr i8, ptr %domain, i32 1468
  %44 = ptrtoint ptr %tcsr90 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tcsr90, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef %47, i32 noundef %43, i32 noundef %43, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %do.end97

do.end97:                                         ; preds = %if.then89, %if.end87.do.end97_crit_edge
  %48 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev58, align 8
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.46, i32 noundef %51) #10
  br label %unlock

unlock:                                           ; preds = %do.end97, %if.end74.unlock_crit_edge, %if.end70.unlock_crit_edge, %if.end66.unlock_crit_edge, %devm_kcalloc.exit.unlock_crit_edge, %devm_kcalloc.exit.thread, %do.end57, %do.end49, %do.end19, %if.then13.unlock_crit_edge, %do.end.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %do.end.unlock_crit_edge ], [ %11, %do.end19 ], [ -517, %if.then13.unlock_crit_edge ], [ %call44, %do.end49 ], [ -22, %do.end57 ], [ %call67, %if.end66.unlock_crit_edge ], [ %call71, %if.end70.unlock_crit_edge ], [ %call79, %if.end74.unlock_crit_edge ], [ 0, %do.end97 ], [ -12, %devm_kcalloc.exit.unlock_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpr_debugfs_init(ptr noundef %drv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.68, ptr noundef null) #7
  %debugfs = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 19
  %0 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %debugfs, align 8
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.69, i16 noundef zeroext 292, ptr noundef %call, ptr noundef %drv, ptr noundef nonnull @cpr_debug_info_fops) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_linear_step(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_supported_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpr_scale(ptr noundef readonly %drv, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 16
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %vdd_apc = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 8
  %2 = ptrtoint ptr %vdd_apc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd_apc, align 4
  %call = tail call i32 @regulator_get_linear_step(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  %corner5 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 7
  %4 = ptrtoint ptr %corner5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %corner5, align 8
  %base.i = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 6
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 160
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !201
  %9 = lshr i32 %8, 26
  %and = and i32 %9, 15
  %last_uV7 = getelementptr inbounds %struct.corner, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %last_uV7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_uV7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp8 = icmp eq i32 %dir, 2
  %clamp_timer_interval = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %clamp_timer_interval to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clamp_timer_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp eq i32 %13, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end4
  br i1 %tobool10.not, label %if.then9.if.end16_crit_edge, label %land.lhs.true11

if.then9.if.end16_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true11:                                  ; preds = %if.then9
  %up_threshold = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %up_threshold to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %up_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %15)
  %cmp12 = icmp ult i32 %and, %15
  br i1 %cmp12, label %if.then13, label %land.lhs.true11.if.end16_crit_edge

land.lhs.true11.if.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  %vdd_apc_step_up_limit = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %vdd_apc_step_up_limit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vdd_apc_step_up_limit, align 4
  %18 = tail call i32 @llvm.umax.i32(i32 %15, i32 %17)
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.lhs.true11.if.end16_crit_edge, %if.then9.if.end16_crit_edge
  %error_steps.0 = phi i32 [ %18, %if.then13 ], [ %and, %land.lhs.true11.if.end16_crit_edge ], [ %and, %if.then9.if.end16_crit_edge ]
  %max_uV = getelementptr inbounds %struct.corner, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %max_uV to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_uV, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %20)
  %cmp17.not = icmp slt i32 %11, %20
  br i1 %cmp17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 2130706432) #7, !srcloc !200
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #7, !srcloc !200
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %26, i32 144
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6) #7, !srcloc !201
  %28 = or i32 %27, 15
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %30, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %28) #7, !srcloc !200
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i8 = getelementptr i8, ptr %32, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i8, i32 67108864) #7, !srcloc !200
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %vdd_apc_step_up_limit20 = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 10
  %33 = ptrtoint ptr %vdd_apc_step_up_limit20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vdd_apc_step_up_limit20, align 4
  %35 = tail call i32 @llvm.umin.i32(i32 %error_steps.0, i32 %34)
  %mul = mul i32 %35, %call
  %add = add i32 %mul, %11
  %36 = tail call i32 @llvm.smin.i32(i32 %add, i32 %20)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_scale.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_scale, %if.then37)) #7
          to label %if.end87 [label %if.then37], !srcloc !203

if.then37:                                        ; preds = %if.end19
  %dev = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 3
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %39 = ptrtoint ptr %corner5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %corner5, align 8
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.then37.cpr_get_cur_perf_state.exit_crit_edge, label %cond.true.i

if.then37.cpr_get_cur_perf_state.exit_crit_edge:  ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpr_get_cur_perf_state.exit

cond.true.i:                                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %corners.i = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 15
  %41 = ptrtoint ptr %corners.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %corners.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  %add.i = add nsw i32 %sub.ptr.div.i, 1
  br label %cpr_get_cur_perf_state.exit

cpr_get_cur_perf_state.exit:                      ; preds = %cond.true.i, %if.then37.cpr_get_cur_perf_state.exit_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.true.i ], [ 0, %if.then37.cpr_get_cur_perf_state.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_scale.__UNIQUE_ID_ddebug293, ptr noundef %38, ptr noundef nonnull @.str.28, i32 noundef %36, i32 noundef %11, i32 noundef %cond.i) #7
  br label %if.end87

if.else:                                          ; preds = %if.end4
  br i1 %tobool10.not, label %if.else.if.end52_crit_edge, label %land.lhs.true42

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

land.lhs.true42:                                  ; preds = %if.else
  %down_threshold = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 7
  %43 = ptrtoint ptr %down_threshold to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %down_threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %44)
  %cmp43 = icmp ult i32 %and, %44
  br i1 %cmp43, label %if.then44, label %land.lhs.true42.if.end52_crit_edge

land.lhs.true42.if.end52_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #9
  %vdd_apc_step_down_limit = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 11
  %45 = ptrtoint ptr %vdd_apc_step_down_limit to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vdd_apc_step_down_limit, align 4
  %47 = tail call i32 @llvm.umax.i32(i32 %44, i32 %46)
  br label %if.end52

if.end52:                                         ; preds = %if.then44, %land.lhs.true42.if.end52_crit_edge, %if.else.if.end52_crit_edge
  %error_steps.2 = phi i32 [ %47, %if.then44 ], [ %and, %land.lhs.true42.if.end52_crit_edge ], [ %and, %if.else.if.end52_crit_edge ]
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %49)
  %cmp53.not = icmp sgt i32 %11, %49
  br i1 %cmp53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i10 = getelementptr i8, ptr %51, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i10, i32 2130706432) #7, !srcloc !200
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i11 = getelementptr i8, ptr %53, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i11, i32 16777216) #7, !srcloc !200
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %55, i32 144
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #7, !srcloc !201
  %57 = or i32 %56, 1073741824
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr3.i.i16 = getelementptr i8, ptr %59, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i16, i32 %57) #7, !srcloc !200
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %61, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18, i32 268435456) #7, !srcloc !200
  br label %cleanup

if.end55:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %vdd_apc_step_down_limit56 = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 11
  %62 = ptrtoint ptr %vdd_apc_step_down_limit56 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %vdd_apc_step_down_limit56, align 4
  %64 = tail call i32 @llvm.umin.i32(i32 %error_steps.2, i32 %63)
  %mul61 = mul i32 %64, %call
  %sub = sub i32 %11, %mul61
  %65 = tail call i32 @llvm.smax.i32(i32 %sub, i32 %49)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_scale.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_scale, %if.then81)) #7
          to label %if.end87 [label %if.then81], !srcloc !203

if.then81:                                        ; preds = %if.end55
  %dev82 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 3
  %66 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev82, align 8
  %68 = ptrtoint ptr %corner5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %corner5, align 8
  %tobool.not.i20 = icmp eq ptr %69, null
  br i1 %tobool.not.i20, label %if.then81.cpr_get_cur_perf_state.exit29_crit_edge, label %cond.true.i27

if.then81.cpr_get_cur_perf_state.exit29_crit_edge: ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpr_get_cur_perf_state.exit29

cond.true.i27:                                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  %corners.i21 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 15
  %70 = ptrtoint ptr %corners.i21 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %corners.i21, align 8
  %sub.ptr.lhs.cast.i22 = ptrtoint ptr %69 to i32
  %sub.ptr.rhs.cast.i23 = ptrtoint ptr %71 to i32
  %sub.ptr.sub.i24 = sub i32 %sub.ptr.lhs.cast.i22, %sub.ptr.rhs.cast.i23
  %sub.ptr.div.i25 = sdiv exact i32 %sub.ptr.sub.i24, 36
  %add.i26 = add nsw i32 %sub.ptr.div.i25, 1
  br label %cpr_get_cur_perf_state.exit29

cpr_get_cur_perf_state.exit29:                    ; preds = %cond.true.i27, %if.then81.cpr_get_cur_perf_state.exit29_crit_edge
  %cond.i28 = phi i32 [ %add.i26, %cond.true.i27 ], [ 0, %if.then81.cpr_get_cur_perf_state.exit29_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_scale.__UNIQUE_ID_ddebug298, ptr noundef %67, ptr noundef nonnull @.str.29, i32 noundef %65, i32 noundef %11, i32 noundef %cond.i28) #7
  br label %if.end87

if.end87:                                         ; preds = %cpr_get_cur_perf_state.exit29, %if.end55, %cpr_get_cur_perf_state.exit, %if.end19
  %new_uV.0 = phi i32 [ %36, %cpr_get_cur_perf_state.exit ], [ %65, %cpr_get_cur_perf_state.exit29 ], [ %36, %if.end19 ], [ %65, %if.end55 ]
  %call88 = tail call fastcc i32 @cpr_scale_voltage(ptr noundef %drv, ptr noundef %5, i32 noundef %new_uV.0, i32 noundef %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.then90

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i31 = getelementptr i8, ptr %73, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i31, i32 2130706432) #7, !srcloc !200
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %75, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32, i32 16777216) #7, !srcloc !200
  br label %cleanup

if.end91:                                         ; preds = %if.end87
  %76 = ptrtoint ptr %corner5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %corner5, align 8
  %last_uV93 = getelementptr inbounds %struct.corner, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %last_uV93 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %new_uV.0, ptr %last_uV93, align 4
  br i1 %cmp8, label %if.end91.if.end100_crit_edge, label %if.else96

if.end91.if.end100_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end100

if.else96:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %up_threshold98 = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 6
  %79 = ptrtoint ptr %up_threshold98 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %up_threshold98, align 4
  %shl99 = shl i32 %80, 24
  br label %if.end100

if.end100:                                        ; preds = %if.else96, %if.end91.if.end100_crit_edge
  %reg_mask.0 = phi i32 [ 251658240, %if.else96 ], [ 64, %if.end91.if.end100_crit_edge ]
  %val.0 = phi i32 [ %shl99, %if.else96 ], [ 0, %if.end91.if.end100_crit_edge ]
  %81 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %82, i32 144
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34) #7, !srcloc !201
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #7
  %neg.i.i = xor i32 %reg_mask.0, -1
  %and.i.i35 = and i32 %84, %neg.i.i
  %and1.i.i = and i32 %val.0, %reg_mask.0
  %or.i.i36 = or i32 %and.i.i35, %and1.i.i
  %85 = tail call i32 @llvm.bswap.i32(i32 %or.i.i36) #7
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %add.ptr3.i.i37 = getelementptr i8, ptr %87, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i37, i32 %85) #7, !srcloc !200
  %88 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %89, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39, i32 335544320) #7, !srcloc !200
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i41 = getelementptr i8, ptr %91, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i41, i32 2130706432) #7, !srcloc !200
  %92 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %93, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i42, i32 16777216) #7, !srcloc !200
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %if.then90, %if.then54, %if.then18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpr_scale_voltage(ptr nocapture noundef readonly %drv, ptr nocapture noundef readonly %corner, i32 noundef %new_uV, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fuse_corner1 = getelementptr inbounds %struct.corner, ptr %corner, i32 0, i32 8
  %0 = ptrtoint ptr %fuse_corner1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fuse_corner1, align 4
  %corner.i = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 7
  %2 = ptrtoint ptr %corner.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %corner.i, align 8
  %fuse_corner1.i = getelementptr inbounds %struct.corner, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %fuse_corner1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fuse_corner1.i, align 4
  %tcsr.i = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 10
  %6 = ptrtoint ptr %tcsr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tcsr.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp.i = icmp ne i32 %dir, 1
  %or.cond.not.i = or i1 %cmp.i, %tobool.not.i
  %cmp.i.i = icmp eq ptr %5, %1
  %or.cond1.i = select i1 %or.cond.not.i, i1 true, i1 %cmp.i.i
  br i1 %or.cond1.i, label %entry.cpr_pre_voltage.exit_crit_edge, label %if.end.i.i

entry.cpr_pre_voltage.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpr_pre_voltage.exit

if.end.i.i:                                       ; preds = %entry
  %cmp1.i.i = icmp ult ptr %5, %1
  br i1 %cmp1.i.i, label %for.cond.preheader.i.i, label %for.cond5.preheader.i.i

for.cond5.preheader.i.i:                          ; preds = %if.end.i.i
  %f.addr.132.i.i = getelementptr %struct.fuse_corner, ptr %5, i32 -1
  %cmp6.not33.i.i = icmp ult ptr %f.addr.132.i.i, %1
  br i1 %cmp6.not33.i.i, label %for.cond5.preheader.i.i.cpr_pre_voltage.exit_crit_edge, label %for.cond5.preheader.i.i.for.body7.i.i_crit_edge

for.cond5.preheader.i.i.for.body7.i.i_crit_edge:  ; preds = %for.cond5.preheader.i.i
  br label %for.body7.i.i

for.cond5.preheader.i.i.cpr_pre_voltage.exit_crit_edge: ; preds = %for.cond5.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpr_pre_voltage.exit

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %f.addr.036.i.i = getelementptr %struct.fuse_corner, ptr %5, i32 1
  %cmp3.not37.i.i = icmp ugt ptr %f.addr.036.i.i, %1
  br i1 %cmp3.not37.i.i, label %for.cond.preheader.i.i.cpr_pre_voltage.exit_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.cpr_pre_voltage.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpr_pre_voltage.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %f.addr.039.i.i = phi ptr [ %f.addr.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %f.addr.036.i.i, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %f.pn3038.i.i = phi ptr [ %f.addr.039.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %5, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %accs.i.i = getelementptr %struct.fuse_corner, ptr %f.pn3038.i.i, i32 1, i32 5
  %8 = ptrtoint ptr %accs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %accs.i.i, align 4
  %num_accs.i.i = getelementptr %struct.fuse_corner, ptr %f.pn3038.i.i, i32 1, i32 6
  %10 = ptrtoint ptr %num_accs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_accs.i.i, align 4
  %call.i.i = tail call i32 @regmap_multi_reg_write(ptr noundef %7, ptr noundef %9, i32 noundef %11) #7
  %f.addr.0.i.i = getelementptr %struct.fuse_corner, ptr %f.addr.039.i.i, i32 1
  %cmp3.not.i.i = icmp ugt ptr %f.addr.0.i.i, %1
  br i1 %cmp3.not.i.i, label %for.body.i.i.cpr_pre_voltage.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.cpr_pre_voltage.exit_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpr_pre_voltage.exit

for.body7.i.i:                                    ; preds = %for.body7.i.i.for.body7.i.i_crit_edge, %for.cond5.preheader.i.i.for.body7.i.i_crit_edge
  %f.addr.135.i.i = phi ptr [ %f.addr.1.i.i, %for.body7.i.i.for.body7.i.i_crit_edge ], [ %f.addr.132.i.i, %for.cond5.preheader.i.i.for.body7.i.i_crit_edge ]
  %f.pn34.i.i = phi ptr [ %f.addr.135.i.i, %for.body7.i.i.for.body7.i.i_crit_edge ], [ %5, %for.cond5.preheader.i.i.for.body7.i.i_crit_edge ]
  %accs8.i.i = getelementptr %struct.fuse_corner, ptr %f.pn34.i.i, i32 -1, i32 5
  %12 = ptrtoint ptr %accs8.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %accs8.i.i, align 4
  %num_accs9.i.i = getelementptr %struct.fuse_corner, ptr %f.pn34.i.i, i32 -1, i32 6
  %14 = ptrtoint ptr %num_accs9.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_accs9.i.i, align 4
  %call10.i.i = tail call i32 @regmap_multi_reg_write(ptr noundef %7, ptr noundef %13, i32 noundef %15) #7
  %f.addr.1.i.i = getelementptr %struct.fuse_corner, ptr %f.addr.135.i.i, i32 -1
  %cmp6.not.i.i = icmp ult ptr %f.addr.1.i.i, %1
  br i1 %cmp6.not.i.i, label %for.body7.i.i.cpr_pre_voltage.exit_crit_edge, label %for.body7.i.i.for.body7.i.i_crit_edge

for.body7.i.i.for.body7.i.i_crit_edge:            ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.i.i

for.body7.i.i.cpr_pre_voltage.exit_crit_edge:     ; preds = %for.body7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpr_pre_voltage.exit

cpr_pre_voltage.exit:                             ; preds = %for.body7.i.i.cpr_pre_voltage.exit_crit_edge, %for.body.i.i.cpr_pre_voltage.exit_crit_edge, %for.cond.preheader.i.i.cpr_pre_voltage.exit_crit_edge, %for.cond5.preheader.i.i.cpr_pre_voltage.exit_crit_edge, %entry.cpr_pre_voltage.exit_crit_edge
  %vdd_apc = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 8
  %16 = ptrtoint ptr %vdd_apc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vdd_apc, align 4
  %call2 = tail call i32 @regulator_set_voltage(ptr noundef %17, i32 noundef %new_uV, i32 noundef %new_uV) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end12, label %do.body

do.body:                                          ; preds = %cpr_pre_voltage.exit
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @cpr_scale_voltage._rs, ptr noundef nonnull @__func__.cpr_scale_voltage) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 3
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.30, i32 noundef %new_uV) #10
  br label %cleanup

if.end12:                                         ; preds = %cpr_pre_voltage.exit
  %20 = ptrtoint ptr %corner.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %corner.i, align 8
  %fuse_corner1.i31 = getelementptr inbounds %struct.corner, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %fuse_corner1.i31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fuse_corner1.i31, align 4
  %24 = ptrtoint ptr %tcsr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tcsr.i, align 4
  %tobool.not.i33 = icmp eq ptr %25, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp.i34 = icmp ne i32 %dir, 2
  %or.cond.not.i35 = or i1 %cmp.i34, %tobool.not.i33
  %cmp.i.i36 = icmp eq ptr %23, %1
  %or.cond1.i37 = select i1 %or.cond.not.i35, i1 true, i1 %cmp.i.i36
  br i1 %or.cond1.i37, label %if.end12.cleanup_crit_edge, label %if.end.i.i39

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i39:                                     ; preds = %if.end12
  %cmp1.i.i38 = icmp ult ptr %23, %1
  br i1 %cmp1.i.i38, label %for.cond.preheader.i.i45, label %for.cond5.preheader.i.i42

for.cond5.preheader.i.i42:                        ; preds = %if.end.i.i39
  %f.addr.132.i.i40 = getelementptr %struct.fuse_corner, ptr %23, i32 -1
  %cmp6.not33.i.i41 = icmp ult ptr %f.addr.132.i.i40, %1
  br i1 %cmp6.not33.i.i41, label %for.cond5.preheader.i.i42.cleanup_crit_edge, label %for.cond5.preheader.i.i42.for.body7.i.i61_crit_edge

for.cond5.preheader.i.i42.for.body7.i.i61_crit_edge: ; preds = %for.cond5.preheader.i.i42
  br label %for.body7.i.i61

for.cond5.preheader.i.i42.cleanup_crit_edge:      ; preds = %for.cond5.preheader.i.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i.i45:                         ; preds = %if.end.i.i39
  %f.addr.036.i.i43 = getelementptr %struct.fuse_corner, ptr %23, i32 1
  %cmp3.not37.i.i44 = icmp ugt ptr %f.addr.036.i.i43, %1
  br i1 %cmp3.not37.i.i44, label %for.cond.preheader.i.i45.cleanup_crit_edge, label %for.cond.preheader.i.i45.for.body.i.i53_crit_edge

for.cond.preheader.i.i45.for.body.i.i53_crit_edge: ; preds = %for.cond.preheader.i.i45
  br label %for.body.i.i53

for.cond.preheader.i.i45.cleanup_crit_edge:       ; preds = %for.cond.preheader.i.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i.i53:                                   ; preds = %for.body.i.i53.for.body.i.i53_crit_edge, %for.cond.preheader.i.i45.for.body.i.i53_crit_edge
  %f.addr.039.i.i46 = phi ptr [ %f.addr.0.i.i51, %for.body.i.i53.for.body.i.i53_crit_edge ], [ %f.addr.036.i.i43, %for.cond.preheader.i.i45.for.body.i.i53_crit_edge ]
  %f.pn3038.i.i47 = phi ptr [ %f.addr.039.i.i46, %for.body.i.i53.for.body.i.i53_crit_edge ], [ %23, %for.cond.preheader.i.i45.for.body.i.i53_crit_edge ]
  %accs.i.i48 = getelementptr %struct.fuse_corner, ptr %f.pn3038.i.i47, i32 1, i32 5
  %26 = ptrtoint ptr %accs.i.i48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %accs.i.i48, align 4
  %num_accs.i.i49 = getelementptr %struct.fuse_corner, ptr %f.pn3038.i.i47, i32 1, i32 6
  %28 = ptrtoint ptr %num_accs.i.i49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_accs.i.i49, align 4
  %call.i.i50 = tail call i32 @regmap_multi_reg_write(ptr noundef %25, ptr noundef %27, i32 noundef %29) #7
  %f.addr.0.i.i51 = getelementptr %struct.fuse_corner, ptr %f.addr.039.i.i46, i32 1
  %cmp3.not.i.i52 = icmp ugt ptr %f.addr.0.i.i51, %1
  br i1 %cmp3.not.i.i52, label %for.body.i.i53.cleanup_crit_edge, label %for.body.i.i53.for.body.i.i53_crit_edge

for.body.i.i53.for.body.i.i53_crit_edge:          ; preds = %for.body.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i53

for.body.i.i53.cleanup_crit_edge:                 ; preds = %for.body.i.i53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body7.i.i61:                                  ; preds = %for.body7.i.i61.for.body7.i.i61_crit_edge, %for.cond5.preheader.i.i42.for.body7.i.i61_crit_edge
  %f.addr.135.i.i54 = phi ptr [ %f.addr.1.i.i59, %for.body7.i.i61.for.body7.i.i61_crit_edge ], [ %f.addr.132.i.i40, %for.cond5.preheader.i.i42.for.body7.i.i61_crit_edge ]
  %f.pn34.i.i55 = phi ptr [ %f.addr.135.i.i54, %for.body7.i.i61.for.body7.i.i61_crit_edge ], [ %23, %for.cond5.preheader.i.i42.for.body7.i.i61_crit_edge ]
  %accs8.i.i56 = getelementptr %struct.fuse_corner, ptr %f.pn34.i.i55, i32 -1, i32 5
  %30 = ptrtoint ptr %accs8.i.i56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %accs8.i.i56, align 4
  %num_accs9.i.i57 = getelementptr %struct.fuse_corner, ptr %f.pn34.i.i55, i32 -1, i32 6
  %32 = ptrtoint ptr %num_accs9.i.i57 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_accs9.i.i57, align 4
  %call10.i.i58 = tail call i32 @regmap_multi_reg_write(ptr noundef %25, ptr noundef %31, i32 noundef %33) #7
  %f.addr.1.i.i59 = getelementptr %struct.fuse_corner, ptr %f.addr.135.i.i54, i32 -1
  %cmp6.not.i.i60 = icmp ult ptr %f.addr.1.i.i59, %1
  br i1 %cmp6.not.i.i60, label %for.body7.i.i61.cleanup_crit_edge, label %for.body7.i.i61.for.body7.i.i61_crit_edge

for.body7.i.i61.for.body7.i.i61_crit_edge:        ; preds = %for.body7.i.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body7.i.i61

for.body7.i.i61.cleanup_crit_edge:                ; preds = %for.body7.i.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body7.i.i61.cleanup_crit_edge, %for.body.i.i53.cleanup_crit_edge, %for.cond.preheader.i.i45.cleanup_crit_edge, %for.cond5.preheader.i.i42.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call2, %do.body.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %for.cond5.preheader.i.i42.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.i45.cleanup_crit_edge ], [ 0, %for.body.i.i53.cleanup_crit_edge ], [ 0, %for.body7.i.i61.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpr_corner_restore(ptr nocapture noundef readonly %drv, ptr nocapture noundef readonly %corner) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fuse_corner = getelementptr inbounds %struct.corner, ptr %corner, i32 0, i32 8
  %0 = ptrtoint ptr %fuse_corner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fuse_corner, align 4
  %desc1 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 16
  %2 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc1, align 4
  %ring_osc_idx = getelementptr inbounds %struct.fuse_corner, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ring_osc_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ring_osc_idx, align 4
  %gcnt2 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 12
  %6 = ptrtoint ptr %gcnt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gcnt2, align 4
  %quot = getelementptr inbounds %struct.fuse_corner, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %quot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quot, align 4
  %quot_adjust = getelementptr inbounds %struct.corner, ptr %corner, i32 0, i32 4
  %10 = ptrtoint ptr %quot_adjust to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quot_adjust, align 4
  %sub = sub i32 %9, %11
  %idle_clocks = getelementptr inbounds %struct.cpr_desc, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %idle_clocks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idle_clocks, align 4
  %shl = shl i32 %13, 8
  %step_quot3 = getelementptr inbounds %struct.fuse_corner, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %step_quot3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %step_quot3, align 4
  %and = and i32 %15, 255
  %or4 = or i32 %and, %shl
  %16 = tail call i32 @llvm.bswap.i32(i32 %or4) #7
  %base.i = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 6
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #7, !srcloc !200
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %20, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 0) #7, !srcloc !200
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i30.1 = getelementptr i8, ptr %22, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.1, i32 0) #7, !srcloc !200
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr.i30.2 = getelementptr i8, ptr %24, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.2, i32 0) #7, !srcloc !200
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i30.3 = getelementptr i8, ptr %26, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.3, i32 0) #7, !srcloc !200
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i30.4 = getelementptr i8, ptr %28, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.4, i32 0) #7, !srcloc !200
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 4
  %add.ptr.i30.5 = getelementptr i8, ptr %30, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.5, i32 0) #7, !srcloc !200
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr.i30.6 = getelementptr i8, ptr %32, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.6, i32 0) #7, !srcloc !200
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %add.ptr.i30.7 = getelementptr i8, ptr %34, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.7, i32 0) #7, !srcloc !200
  %conv = zext i8 %5 to i32
  %or = or i32 %sub, %7
  %mul6 = shl nuw nsw i32 %conv, 2
  %add7 = add nuw nsw i32 %mul6, 96
  %35 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %37, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %35) #7, !srcloc !200
  %save_ctl = getelementptr inbounds %struct.corner, ptr %corner, i32 0, i32 5
  %38 = ptrtoint ptr %save_ctl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %save_ctl, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %42, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %40) #7, !srcloc !200
  %save_irq = getelementptr inbounds %struct.corner, ptr %corner, i32 0, i32 6
  %43 = ptrtoint ptr %save_irq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %save_irq, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %45) #7, !srcloc !200
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_corner_restore.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_corner_restore, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !203

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 3
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_corner_restore.__UNIQUE_ID_ddebug288, ptr noundef %49, ptr noundef nonnull @.str.32, i32 noundef %or, i32 noundef %39, i32 noundef %44) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_level(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpr_corner_init(ptr noundef %drv) unnamed_addr #2 align 64 {
entry:
  %quot_diff.i = alloca i32, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %rate.i = alloca i64, align 8
  %fuse_corner.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 16
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %cpr_fuses = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 18
  %2 = ptrtoint ptr %cpr_fuses to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpr_fuses, align 4
  %vdd_apc = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 8
  %4 = ptrtoint ptr %vdd_apc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd_apc, align 4
  %call = tail call i32 @regulator_get_linear_step(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %corners = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 15
  %6 = ptrtoint ptr %corners to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %corners, align 8
  %8 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %drv, align 8
  %sub = add i32 %9, -1
  %arrayidx = getelementptr %struct.corner, ptr %7, i32 %sub
  %dev = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 3
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 8) #7
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %if.end.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !198

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %14 = extractvalue { i32, i1 } %10, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef %14, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool4.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %15 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %drv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not323 = icmp eq i32 %16, 0
  br i1 %cmp.not323, label %for.cond.preheader.for.cond41.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.cond41.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond41.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pd = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 2
  %attached_cpu_dev = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 4
  %fuse_corners = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 14
  br label %for.body

for.cond41.preheader:                             ; preds = %if.end40.for.cond41.preheader_crit_edge, %for.cond.preheader.for.cond41.preheader_crit_edge
  %cmp42.not325 = icmp ugt ptr %7, %arrayidx
  br i1 %cmp42.not325, label %for.cond41.preheader.cleanup_crit_edge, label %for.body43.lr.ph

for.cond41.preheader.cleanup_crit_edge:           ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body43.lr.ph:                                 ; preds = %for.cond41.preheader
  %fuse_corner_data = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 13, i32 2
  %fuse_corners49 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 14
  %sub212.i = add i32 %call, -1
  %reduce_to_corner_uV = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 15
  %reduce_to_fuse_uV = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 14
  br label %for.body43

for.body:                                         ; preds = %if.end40.for.body_crit_edge, %for.body.lr.ph
  %level.0324 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %if.end40.for.body_crit_edge ]
  %call9 = call ptr @dev_pm_opp_find_level_exact(ptr noundef %pd, i32 noundef %level.0324) #7
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.cleanup_crit_edge, label %if.end12

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fuse_corner.i) #7
  %17 = ptrtoint ptr %fuse_corner.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %fuse_corner.i, align 4
  %call.i = call ptr @dev_pm_opp_get_of_node(ptr noundef %call9) #7
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %call.i, ptr noundef nonnull @.str.52, ptr noundef nonnull %fuse_corner.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end12.cpr_get_fuse_corner.exit_crit_edge, label %do.end.i

if.end12.cpr_get_fuse_corner.exit_crit_edge:      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpr_get_fuse_corner.exit

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #10
  br label %cpr_get_fuse_corner.exit

cpr_get_fuse_corner.exit:                         ; preds = %do.end.i, %if.end12.cpr_get_fuse_corner.exit_crit_edge
  call void @of_node_put(ptr noundef %call.i) #7
  %18 = ptrtoint ptr %fuse_corner.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fuse_corner.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fuse_corner.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool14.not = icmp eq i32 %19, 0
  br i1 %tobool14.not, label %cpr_get_fuse_corner.exit.cleanup.sink.split_crit_edge, label %if.end16

cpr_get_fuse_corner.exit.cleanup.sink.split_crit_edge: ; preds = %cpr_get_fuse_corner.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end16:                                         ; preds = %cpr_get_fuse_corner.exit
  %sub17 = add i32 %19, -1
  %20 = ptrtoint ptr %attached_cpu_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %attached_cpu_dev, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rate.i) #7
  %22 = ptrtoint ptr %rate.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %rate.i, align 8
  %call.i284 = call ptr @dev_pm_opp_of_get_opp_desc_node(ptr noundef %21) #7
  %tobool.not.i285 = icmp eq ptr %call.i284, null
  br i1 %tobool.not.i285, label %cpr_get_opp_hz_for_req.exit.thread, label %if.end.i

cpr_get_opp_hz_for_req.exit.thread:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rate.i) #7
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end16
  %call1.i = call ptr @dev_pm_opp_get_of_node(ptr noundef %call9) #7
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.cpr_get_opp_hz_for_req.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  br label %do.body.i

if.end.i.cpr_get_opp_hz_for_req.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpr_get_opp_hz_for_req.exit

do.body.i:                                        ; preds = %of_parse_phandle.exit.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %child_np.0.i = phi ptr [ %call5.i, %of_parse_phandle.exit.i.do.body.i_crit_edge ], [ null, %if.end.i.do.body.i_crit_edge ]
  %child_req_np.0.i = phi ptr [ %retval.0.i.i287, %of_parse_phandle.exit.i.do.body.i_crit_edge ], [ null, %if.end.i.do.body.i_crit_edge ]
  call void @of_node_put(ptr noundef %child_req_np.0.i) #7
  %call5.i = call ptr @of_get_next_available_child(ptr noundef nonnull %call.i284, ptr noundef %child_np.0.i) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %23 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %call5.i, ptr noundef nonnull @.str.55, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i286, label %do.body.i.of_parse_phandle.exit.i_crit_edge

do.body.i.of_parse_phandle.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_parse_phandle.exit.i

if.end.i.i286:                                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %args.i.i, align 4
  br label %of_parse_phandle.exit.i

of_parse_phandle.exit.i:                          ; preds = %if.end.i.i286, %do.body.i.of_parse_phandle.exit.i_crit_edge
  %retval.0.i.i287 = phi ptr [ %25, %if.end.i.i286 ], [ null, %do.body.i.of_parse_phandle.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool7.not.i = icmp eq ptr %call5.i, null
  %cmp.not.i = icmp eq ptr %retval.0.i.i287, %call1.i
  %or.cond.i = select i1 %tobool7.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %do.end.i288, label %of_parse_phandle.exit.i.do.body.i_crit_edge

of_parse_phandle.exit.i.do.body.i_crit_edge:      ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end.i288:                                      ; preds = %of_parse_phandle.exit.i
  %tobool7.not.not.i = xor i1 %tobool7.not.i, true
  %or.cond30.i = select i1 %tobool7.not.not.i, i1 %cmp.not.i, i1 false
  br i1 %or.cond30.i, label %if.then10.i, label %do.end.i288.if.end12.i_crit_edge

do.end.i288.if.end12.i_crit_edge:                 ; preds = %do.end.i288
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then10.i:                                      ; preds = %do.end.i288
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = call i32 @of_property_read_u64(ptr noundef nonnull %call5.i, ptr noundef nonnull @.str.56, ptr noundef nonnull %rate.i) #7
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %do.end.i288.if.end12.i_crit_edge
  call void @of_node_put(ptr noundef %retval.0.i.i287) #7
  call void @of_node_put(ptr noundef %call5.i) #7
  call void @of_node_put(ptr noundef nonnull %call1.i) #7
  br label %cpr_get_opp_hz_for_req.exit

cpr_get_opp_hz_for_req.exit:                      ; preds = %if.end12.i, %if.end.i.cpr_get_opp_hz_for_req.exit_crit_edge
  call void @of_node_put(ptr noundef nonnull %call.i284) #7
  %26 = ptrtoint ptr %rate.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rate.i, align 8
  %conv.i = trunc i64 %27 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rate.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool19.not = icmp eq i32 %conv.i, 0
  br i1 %tobool19.not, label %cpr_get_opp_hz_for_req.exit.cleanup.sink.split_crit_edge, label %if.end21

cpr_get_opp_hz_for_req.exit.cleanup.sink.split_crit_edge: ; preds = %cpr_get_opp_hz_for_req.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end21:                                         ; preds = %cpr_get_opp_hz_for_req.exit
  %sub22 = add i32 %level.0324, -1
  %arrayidx23 = getelementptr %struct.corner_data, ptr %call5.i.i, i32 %sub22
  %28 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub17, ptr %arrayidx23, align 4
  %freq26 = getelementptr %struct.corner_data, ptr %call5.i.i, i32 %sub22, i32 1
  %29 = ptrtoint ptr %freq26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv.i, ptr %freq26, align 4
  %30 = ptrtoint ptr %fuse_corners to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fuse_corners, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_corner_init.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_corner_init, %if.then32)) #7
          to label %do.end [label %if.then32], !srcloc !203

if.then32:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  %call34 = call i32 @dev_pm_opp_get_level(ptr noundef %call9) #7
  %sub35 = add i32 %call34, -1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_corner_init.__UNIQUE_ID_ddebug317, ptr noundef %33, ptr noundef nonnull @.str.50, i32 noundef %conv.i, i32 noundef %sub35, i32 noundef %sub17) #7
  br label %do.end

do.end:                                           ; preds = %if.then32, %if.end21
  %max_freq = getelementptr %struct.fuse_corner, ptr %31, i32 %sub17, i32 7
  %34 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv.i)
  %cmp37 = icmp ult i32 %35, %conv.i
  br i1 %cmp37, label %if.then38, label %do.end.if.end40_crit_edge

do.end.if.end40_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then38:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %max_freq to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv.i, ptr %max_freq, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %do.end.if.end40_crit_edge
  call void @dev_pm_opp_put(ptr noundef %call9) #7
  %inc = add i32 %level.0324, 1
  %37 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %drv, align 8
  %cmp.not = icmp ugt i32 %inc, %38
  br i1 %cmp.not, label %if.end40.for.cond41.preheader_crit_edge, label %if.end40.for.body_crit_edge

if.end40.for.body_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end40.for.cond41.preheader_crit_edge:          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond41.preheader

for.body43:                                       ; preds = %for.inc152.for.body43_crit_edge, %for.body43.lr.ph
  %i.0331 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc153, %for.inc152.for.body43_crit_edge ]
  %scaling.0330 = phi i32 [ 0, %for.body43.lr.ph ], [ %scaling.1315, %for.inc152.for.body43_crit_edge ]
  %apply_scaling.0.off0329 = phi i1 [ false, %for.body43.lr.ph ], [ %apply_scaling.1.off0312, %for.inc152.for.body43_crit_edge ]
  %corner.0326 = phi ptr [ %7, %for.body43.lr.ph ], [ %incdec.ptr, %for.inc152.for.body43_crit_edge ]
  %arrayidx44 = getelementptr %struct.corner_data, ptr %call5.i.i, i32 %i.0331
  %39 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx44, align 4
  %41 = ptrtoint ptr %fuse_corner_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fuse_corner_data, align 4
  %quotient_offset = getelementptr %struct.cpr_fuse, ptr %3, i32 %40, i32 3
  %43 = ptrtoint ptr %quotient_offset to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %quotient_offset, align 4
  %45 = ptrtoint ptr %fuse_corners49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fuse_corners49, align 4
  %arrayidx50 = getelementptr %struct.fuse_corner, ptr %46, i32 %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool51.not = icmp eq i32 %40, 0
  %sub54 = add i32 %40, -1
  %arrayidx55 = getelementptr %struct.fuse_corner, ptr %46, i32 %sub54
  %fuse_corner57 = getelementptr inbounds %struct.corner, ptr %corner.0326, i32 0, i32 8
  %47 = ptrtoint ptr %fuse_corner57 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx50, ptr %fuse_corner57, align 4
  %freq59 = getelementptr %struct.corner_data, ptr %call5.i.i, i32 %i.0331, i32 1
  %48 = ptrtoint ptr %freq59 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %freq59, align 4
  %freq60 = getelementptr inbounds %struct.corner, ptr %corner.0326, i32 0, i32 7
  %50 = ptrtoint ptr %freq60 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %freq60, align 4
  %uV = getelementptr %struct.fuse_corner, ptr %46, i32 %40, i32 2
  %51 = ptrtoint ptr %uV to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %uV, align 4
  %uV61 = getelementptr inbounds %struct.corner, ptr %corner.0326, i32 0, i32 2
  %53 = ptrtoint ptr %uV61 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %uV61, align 4
  %tobool62.not317 = icmp eq ptr %arrayidx55, null
  %tobool62.not = select i1 %tobool51.not, i1 true, i1 %tobool62.not317
  br i1 %tobool62.not, label %for.body43.if.end79_crit_edge, label %land.lhs.true

for.body43.if.end79_crit_edge:                    ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

land.lhs.true:                                    ; preds = %for.body43
  %sub63 = add i32 %i.0331, -1
  %freq65 = getelementptr %struct.corner_data, ptr %call5.i.i, i32 %sub63, i32 1
  %54 = ptrtoint ptr %freq65 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %freq65, align 4
  %max_freq66 = getelementptr %struct.fuse_corner, ptr %46, i32 %sub54, i32 7
  %56 = ptrtoint ptr %max_freq66 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_freq66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp67 = icmp eq i32 %55, %57
  br i1 %cmp67, label %if.then68, label %land.lhs.true.if.end79_crit_edge

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then68:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %quot_diff.i) #7
  %58 = ptrtoint ptr %quot_diff.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %quot_diff.i, align 4
  %tobool.not.i291 = icmp eq ptr %44, null
  br i1 %tobool.not.i291, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then68
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 8
  %call.i292 = call i32 @nvmem_cell_read_variable_le_u32(ptr noundef %60, ptr noundef nonnull %44, ptr noundef nonnull %quot_diff.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i292)
  %tobool1.not.i = icmp eq i32 %call.i292, 0
  br i1 %tobool1.not.i, label %if.end.i293, label %if.then.i.cpr_calculate_scaling.exit_crit_edge

if.then.i.cpr_calculate_scaling.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpr_calculate_scaling.exit

if.end.i293:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %quot_offset_scale.i = getelementptr %struct.fuse_corner_data, ptr %42, i32 %40, i32 8
  %61 = ptrtoint ptr %quot_offset_scale.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %quot_offset_scale.i, align 4
  %63 = ptrtoint ptr %quot_diff.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %quot_diff.i, align 4
  %mul.i = mul i32 %64, %62
  %quot_offset_adjust.i = getelementptr %struct.fuse_corner_data, ptr %42, i32 %40, i32 9
  %65 = ptrtoint ptr %quot_offset_adjust.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %quot_offset_adjust.i, align 4
  %add.i = add i32 %66, %mul.i
  br label %if.end4.i

if.else.i:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  %quot.i = getelementptr %struct.fuse_corner, ptr %46, i32 %40, i32 3
  %67 = ptrtoint ptr %quot.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %quot.i, align 4
  %quot3.i = getelementptr %struct.fuse_corner, ptr %arrayidx50, i32 -1, i32 3
  %69 = ptrtoint ptr %quot3.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %quot3.i, align 4
  %sub.i = sub i32 %68, %70
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.else.i, %if.end.i293
  %storemerge.i = phi i32 [ %sub.i, %if.else.i ], [ %add.i, %if.end.i293 ]
  %max_freq.i = getelementptr %struct.fuse_corner, ptr %46, i32 %40, i32 7
  %71 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_freq.i, align 4
  %max_freq5.i = getelementptr %struct.fuse_corner, ptr %arrayidx50, i32 -1, i32 7
  %73 = ptrtoint ptr %max_freq5.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_freq5.i, align 4
  %sub6.i = sub i32 %72, %74
  %div.i = udiv i32 %sub6.i, 1000000
  %mul7.i = mul i32 %storemerge.i, 1000
  %div8.i = udiv i32 %mul7.i, %div.i
  %max_quot_scale.i = getelementptr %struct.fuse_corner_data, ptr %42, i32 %40, i32 4
  %75 = ptrtoint ptr %max_quot_scale.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %max_quot_scale.i, align 4
  %77 = call i32 @llvm.smin.i32(i32 %div8.i, i32 %76) #7
  br label %cpr_calculate_scaling.exit

cpr_calculate_scaling.exit:                       ; preds = %if.end4.i, %if.then.i.cpr_calculate_scaling.exit_crit_edge
  %retval.0.i294 = phi i32 [ %77, %if.end4.i ], [ %call.i292, %if.then.i.cpr_calculate_scaling.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %quot_diff.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i294)
  %cmp70 = icmp slt i32 %retval.0.i294, 0
  br i1 %cmp70, label %cpr_calculate_scaling.exit.cleanup_crit_edge, label %cpr_calculate_scaling.exit.if.then81_crit_edge

cpr_calculate_scaling.exit.if.then81_crit_edge:   ; preds = %cpr_calculate_scaling.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then81

cpr_calculate_scaling.exit.cleanup_crit_edge:     ; preds = %cpr_calculate_scaling.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end79:                                         ; preds = %land.lhs.true.if.end79_crit_edge, %for.body43.if.end79_crit_edge
  %max_freq75 = getelementptr %struct.fuse_corner, ptr %46, i32 %40, i32 7
  %78 = ptrtoint ptr %max_freq75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_freq75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %79)
  %cmp76 = icmp ne i32 %49, %79
  %spec.select = and i1 %apply_scaling.0.off0329, %cmp76
  br i1 %spec.select, label %if.end79.if.then81_crit_edge, label %if.end79.if.end88_crit_edge

if.end79.if.end88_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.end79.if.then81_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then81

if.then81:                                        ; preds = %if.end79.if.then81_crit_edge, %cpr_calculate_scaling.exit.if.then81_crit_edge
  %scaling.1314 = phi i32 [ %scaling.0330, %if.end79.if.then81_crit_edge ], [ %retval.0.i294, %cpr_calculate_scaling.exit.if.then81_crit_edge ]
  %max_freq82 = getelementptr %struct.fuse_corner, ptr %46, i32 %40, i32 7
  %80 = ptrtoint ptr %max_freq82 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max_freq82, align 4
  %82 = ptrtoint ptr %freq60 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %freq60, align 4
  %sub84 = sub i32 %81, %83
  %div = udiv i32 %sub84, 1000000
  %mul = mul i32 %div, %scaling.1314
  %div85 = udiv i32 %mul, 1000
  %quot_adjust = getelementptr inbounds %struct.corner, ptr %corner.0326, i32 0, i32 4
  %84 = ptrtoint ptr %quot_adjust to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %div85, ptr %quot_adjust, align 4
  %85 = ptrtoint ptr %fuse_corner57 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %fuse_corner57, align 4
  %max_freq.i296 = getelementptr inbounds %struct.fuse_corner, ptr %86, i32 0, i32 7
  %87 = ptrtoint ptr %max_freq.i296 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_freq.i296, align 4
  %max_freq1.i = getelementptr %struct.fuse_corner, ptr %86, i32 -1, i32 7
  %89 = ptrtoint ptr %max_freq1.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %max_freq1.i, align 4
  %uV2.i = getelementptr inbounds %struct.fuse_corner, ptr %86, i32 0, i32 2
  %91 = ptrtoint ptr %uV2.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %uV2.i, align 4
  %uV3.i = getelementptr %struct.fuse_corner, ptr %86, i32 -1, i32 2
  %93 = ptrtoint ptr %uV3.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %uV3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %90)
  %cmp.not.i298 = icmp ugt i32 %88, %90
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %94)
  %cmp5.not.i = icmp sgt i32 %92, %94
  %or.cond.i299 = select i1 %cmp.not.i298, i1 %cmp5.not.i, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %88, i32 %83)
  %cmp8.not.i = icmp ugt i32 %88, %83
  %or.cond330.i = select i1 %or.cond.i299, i1 %cmp8.not.i, i1 false
  br i1 %or.cond330.i, label %if.end199.i, label %if.then.i300

if.then.i300:                                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  %95 = ptrtoint ptr %uV61 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %uV61, align 4
  br label %cpr_interpolate.exit

if.end199.i:                                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i297 = sub i32 %88, %83
  %sub10.i = sub i32 %92, %94
  %mul.i301 = mul i32 %sub10.i, %sub.i297
  %sub11.i = sub i32 %88, %90
  %div172.i.i.i = udiv i32 %mul.i301, %sub11.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  %max_volt_scale.i = getelementptr %struct.fuse_corner_data, ptr %42, i32 %40, i32 3
  %97 = ptrtoint ptr %max_volt_scale.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %max_volt_scale.i, align 4
  %mul12.i = mul i32 %98, %sub.i297
  %conv13.i = zext i32 %mul12.i to i64
  %99 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv13.i) #11, !srcloc !204
  %100 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv13.i, i64 %99, i32 0) #11, !srcloc !205
  %asmresult10.i.i = extractvalue { i64, i32 } %100, 0
  %div179327.i = lshr i64 %asmresult10.i.i, 18
  %101 = call i64 @llvm.umin.i64(i64 %conv173.i.i.i, i64 %div179327.i) #7
  %cond208.off0.i = trunc i64 %101 to i32
  %conv210.i = sub i32 %92, %cond208.off0.i
  %add213.i = add i32 %sub212.i, %conv210.i
  %102 = srem i32 %add213.i, %call
  %mul215.i = sub i32 %add213.i, %102
  br label %cpr_interpolate.exit

cpr_interpolate.exit:                             ; preds = %if.end199.i, %if.then.i300
  %retval.0.i304 = phi i32 [ %96, %if.then.i300 ], [ %mul215.i, %if.end199.i ]
  %103 = ptrtoint ptr %uV61 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %retval.0.i304, ptr %uV61, align 4
  br label %if.end88

if.end88:                                         ; preds = %cpr_interpolate.exit, %if.end79.if.end88_crit_edge
  %scaling.1315 = phi i32 [ %scaling.1314, %cpr_interpolate.exit ], [ %scaling.0330, %if.end79.if.end88_crit_edge ]
  %apply_scaling.1.off0312 = phi i1 [ true, %cpr_interpolate.exit ], [ false, %if.end79.if.end88_crit_edge ]
  %max_uV = getelementptr %struct.fuse_corner, ptr %46, i32 %40, i32 1
  %104 = ptrtoint ptr %max_uV to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %max_uV, align 4
  %max_uV89 = getelementptr inbounds %struct.corner, ptr %corner.0326, i32 0, i32 1
  %106 = ptrtoint ptr %max_uV89 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %max_uV89, align 4
  %107 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx50, align 4
  %109 = ptrtoint ptr %corner.0326 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %corner.0326, align 4
  %110 = ptrtoint ptr %uV61 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %uV61, align 4
  %112 = call i32 @llvm.smax.i32(i32 %111, i32 %108)
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %105)
  %cmp97 = icmp sge i32 %112, %105
  %113 = call i32 @llvm.smin.i32(i32 %112, i32 %105)
  %114 = ptrtoint ptr %uV61 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %uV61, align 4
  %last_uV = getelementptr inbounds %struct.corner, ptr %corner.0326, i32 0, i32 3
  %115 = ptrtoint ptr %last_uV to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %113, ptr %last_uV, align 4
  %116 = ptrtoint ptr %reduce_to_corner_uV to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %reduce_to_corner_uV, align 1, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool104.not = icmp eq i8 %117, 0
  %brmerge = select i1 %tobool104.not, i1 true, i1 %cmp97
  br i1 %brmerge, label %if.else112, label %if.end88.do.body130.sink.split_crit_edge

if.end88.do.body130.sink.split_crit_edge:         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body130.sink.split

if.else112:                                       ; preds = %if.end88
  %118 = ptrtoint ptr %reduce_to_fuse_uV to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %reduce_to_fuse_uV, align 4, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool113.not = icmp eq i8 %119, 0
  br i1 %tobool113.not, label %if.else112.do.body130_crit_edge, label %land.lhs.true114

if.else112.do.body130_crit_edge:                  ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body130

land.lhs.true114:                                 ; preds = %if.else112
  %120 = ptrtoint ptr %uV to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %uV, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %105)
  %cmp117 = icmp slt i32 %121, %105
  br i1 %cmp117, label %if.then118, label %land.lhs.true114.do.body130_crit_edge

land.lhs.true114.do.body130_crit_edge:            ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body130

if.then118:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #9
  %122 = call i32 @llvm.smax.i32(i32 %108, i32 %121)
  br label %do.body130.sink.split

do.body130.sink.split:                            ; preds = %if.then118, %if.end88.do.body130.sink.split_crit_edge
  %.sink = phi i32 [ %122, %if.then118 ], [ %113, %if.end88.do.body130.sink.split_crit_edge ]
  %123 = ptrtoint ptr %max_uV89 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %.sink, ptr %max_uV89, align 4
  br label %do.body130

do.body130:                                       ; preds = %do.body130.sink.split, %land.lhs.true114.do.body130_crit_edge, %if.else112.do.body130_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_corner_init.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_corner_init, %if.then142)) #7
          to label %for.inc152 [label %if.then142], !srcloc !203

if.then142:                                       ; preds = %do.body130
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev, align 8
  %126 = ptrtoint ptr %corner.0326 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %corner.0326, align 4
  %128 = ptrtoint ptr %uV61 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %uV61, align 4
  %130 = ptrtoint ptr %max_uV89 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %max_uV89, align 4
  %quot = getelementptr %struct.fuse_corner, ptr %46, i32 %40, i32 3
  %132 = ptrtoint ptr %quot to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %quot, align 4
  %quot_adjust147 = getelementptr inbounds %struct.corner, ptr %corner.0326, i32 0, i32 4
  %134 = ptrtoint ptr %quot_adjust147 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %quot_adjust147, align 4
  %sub148 = sub i32 %133, %135
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_corner_init.__UNIQUE_ID_ddebug324, ptr noundef %125, ptr noundef nonnull @.str.51, i32 noundef %i.0331, i32 noundef %127, i32 noundef %129, i32 noundef %131, i32 noundef %sub148) #7
  br label %for.inc152

for.inc152:                                       ; preds = %if.then142, %do.body130
  %incdec.ptr = getelementptr %struct.corner, ptr %corner.0326, i32 1
  %inc153 = add i32 %i.0331, 1
  %cmp42.not = icmp ugt ptr %incdec.ptr, %arrayidx
  br i1 %cmp42.not, label %for.inc152.cleanup_crit_edge, label %for.inc152.for.body43_crit_edge

for.inc152.for.body43_crit_edge:                  ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body43

for.inc152.cleanup_crit_edge:                     ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %cpr_get_opp_hz_for_req.exit.cleanup.sink.split_crit_edge, %cpr_get_opp_hz_for_req.exit.thread, %cpr_get_fuse_corner.exit.cleanup.sink.split_crit_edge
  call void @dev_pm_opp_put(ptr noundef %call9) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc152.cleanup_crit_edge, %cpr_calculate_scaling.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond41.preheader.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.cond41.preheader.cleanup_crit_edge ], [ -22, %cleanup.sink.split ], [ %retval.0.i294, %cpr_calculate_scaling.exit.cleanup_crit_edge ], [ 0, %for.inc152.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpr_init_parameters(ptr nocapture noundef %drv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 16
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %dev = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %call = tail call ptr @clk_get(ptr noundef %3, ptr noundef nonnull @.str.57) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @clk_get_rate(ptr noundef %call) #7
  %div = udiv i32 %call4, 1000
  %ref_clk_khz = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 1
  %5 = ptrtoint ptr %ref_clk_khz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %ref_clk_khz, align 4
  tail call void @clk_put(ptr noundef %call) #7
  %timer_cons_up = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %timer_cons_up to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timer_cons_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %7)
  %cmp = icmp ugt i32 %7, 15
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %timer_cons_down = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %timer_cons_down to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timer_cons_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %9)
  %cmp5 = icmp ugt i32 %9, 15
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %up_threshold = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %up_threshold to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %up_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp7 = icmp ugt i32 %11, 15
  br i1 %cmp7, label %lor.lhs.false6.cleanup_crit_edge, label %lor.lhs.false8

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false6
  %down_threshold = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %down_threshold to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %down_threshold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %13)
  %cmp9 = icmp ugt i32 %13, 15
  br i1 %cmp9, label %lor.lhs.false8.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %idle_clocks = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %idle_clocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idle_clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %15)
  %cmp11 = icmp ugt i32 %15, 15
  br i1 %cmp11, label %lor.lhs.false10.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %clamp_timer_interval = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %clamp_timer_interval to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clamp_timer_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %17)
  %cmp13 = icmp ugt i32 %17, 255
  br i1 %cmp13, label %lor.lhs.false12.cleanup_crit_edge, label %do.body

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_init_parameters.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_init_parameters, %if.then19)) #7
          to label %cleanup [label %if.then19], !srcloc !203

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %20 = ptrtoint ptr %up_threshold to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %up_threshold, align 4
  %22 = ptrtoint ptr %down_threshold to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %down_threshold, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_init_parameters.__UNIQUE_ID_ddebug325, ptr noundef %19, ptr noundef nonnull @.str.59, i32 noundef %21, i32 noundef %23) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %do.body, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ -22, %lor.lhs.false12.cleanup_crit_edge ], [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpr_config(ptr nocapture noundef %drv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 16
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %base.i = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 6
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !200
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %5, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 0) #7, !srcloc !200
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %7, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 -1072758784) #7, !srcloc !200
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %9, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 536870912) #7, !srcloc !200
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %11, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 0) #7, !srcloc !200
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i8.1 = getelementptr i8, ptr %13, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.1, i32 0) #7, !srcloc !200
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i8.2 = getelementptr i8, ptr %15, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.2, i32 0) #7, !srcloc !200
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i8.3 = getelementptr i8, ptr %17, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.3, i32 0) #7, !srcloc !200
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i8.4 = getelementptr i8, ptr %19, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.4, i32 0) #7, !srcloc !200
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i8.5 = getelementptr i8, ptr %21, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.5, i32 0) #7, !srcloc !200
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i8.6 = getelementptr i8, ptr %23, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.6, i32 0) #7, !srcloc !200
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i8.7 = getelementptr i8, ptr %25, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.7, i32 0) #7, !srcloc !200
  %ref_clk_khz = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 1
  %26 = ptrtoint ptr %ref_clk_khz to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ref_clk_khz, align 4
  %gcnt_us = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %gcnt_us to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gcnt_us, align 4
  %mul2 = mul i32 %29, %27
  %div = udiv i32 %mul2, 1000
  %and = shl i32 %div, 12
  %shl = and i32 %and, 4190208
  %gcnt3 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 12
  %30 = ptrtoint ptr %gcnt3 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shl, ptr %gcnt3, align 4
  %timer_delay_us = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %timer_delay_us to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %timer_delay_us, align 4
  %mul5 = mul i32 %32, %27
  %div6 = udiv i32 %mul5, 1000
  %33 = tail call i32 @llvm.bswap.i32(i32 %div6) #7
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %35, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %33) #7, !srcloc !200
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_config.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_config, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !203

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 3
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  %38 = ptrtoint ptr %timer_delay_us to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %timer_delay_us, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_config.__UNIQUE_ID_ddebug304, ptr noundef %37, ptr noundef nonnull @.str.61, i32 noundef %div6, i32 noundef %39) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %timer_cons_down = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %timer_cons_down to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %timer_cons_down, align 4
  %shl10 = shl i32 %41, 4
  %timer_cons_up = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %timer_cons_up to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %timer_cons_up, align 4
  %or12 = or i32 %shl10, %43
  %clamp_timer_interval = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 12
  %44 = ptrtoint ptr %clamp_timer_interval to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %clamp_timer_interval, align 4
  %shl13 = shl i32 %45, 8
  %or14 = or i32 %or12, %shl13
  %46 = tail call i32 @llvm.bswap.i32(i32 %or14) #7
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %48, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %46) #7, !srcloc !200
  %up_threshold = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %up_threshold to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %up_threshold, align 4
  %shl15 = shl i32 %50, 24
  %down_threshold = getelementptr inbounds %struct.cpr_desc, ptr %1, i32 0, i32 7
  %51 = ptrtoint ptr %down_threshold to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %down_threshold, align 4
  %shl16 = shl i32 %52, 28
  %or17 = or i32 %shl15, %shl16
  %or19 = or i32 %or17, 1064
  %53 = tail call i32 @llvm.bswap.i32(i32 %or19) #7
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %55, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %53) #7, !srcloc !200
  %56 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %drv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp2118.not = icmp eq i32 %57, 0
  br i1 %cmp2118.not, label %do.end.for.end25_crit_edge, label %for.body22.lr.ph

do.end.for.end25_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end25

for.body22.lr.ph:                                 ; preds = %do.end
  %corners = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 15
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.body22.lr.ph
  %i.119 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc24, %for.body22.for.body22_crit_edge ]
  %58 = ptrtoint ptr %corners to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %corners, align 8
  %save_ctl = getelementptr %struct.corner, ptr %59, i32 %i.119, i32 5
  %60 = ptrtoint ptr %save_ctl to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or19, ptr %save_ctl, align 4
  %save_irq = getelementptr %struct.corner, ptr %59, i32 %i.119, i32 6
  %61 = ptrtoint ptr %save_irq to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 20, ptr %save_irq, align 4
  %inc24 = add nuw i32 %i.119, 1
  %62 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %drv, align 8
  %cmp21 = icmp ult i32 %inc24, %63
  br i1 %cmp21, label %for.body22.for.body22_crit_edge, label %for.body22.for.end25_crit_edge

for.body22.for.end25_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end25

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body22

for.end25:                                        ; preds = %for.body22.for.end25_crit_edge, %do.end.for.end25_crit_edge
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %65, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 335544320) #7, !srcloc !200
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #7, !srcloc !201
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp27 = icmp ult i32 %69, 3
  br i1 %cmp27, label %if.then28, label %for.end25.if.end30_crit_edge

for.end25.if.end30_crit_edge:                     ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 13
  %70 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags, align 8
  %or29 = or i32 %71, 1
  store i32 %or29, ptr %flags, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %for.end25.if.end30_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpr_find_initial_corner(ptr nocapture noundef %drv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cpu_clk = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 9
  %0 = ptrtoint ptr %cpu_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu_clk, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.62) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %corners = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 15
  %4 = ptrtoint ptr %corners to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %corners, align 8
  %6 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %drv, align 8
  %sub = add i32 %7, -1
  %arrayidx = getelementptr %struct.corner, ptr %5, i32 %sub
  %call = tail call i32 @clk_get_rate(ptr noundef nonnull %1) #7
  %8 = ptrtoint ptr %corners to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %corners, align 8
  %cmp.not59 = icmp ugt ptr %9, %arrayidx
  br i1 %cmp.not59, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %corner13 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %iter.060 = phi ptr [ %9, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %freq = getelementptr inbounds %struct.corner, ptr %iter.060, i32 0, i32 7
  %10 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %call)
  %cmp3 = icmp ugt i32 %11, %call
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %if.end5

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end5:                                          ; preds = %for.body
  %inc = add i32 %i.062, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %call)
  %cmp7 = icmp eq i32 %11, %call
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %corner13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %iter.060, ptr %corner13, align 8
  br label %for.end

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %call)
  %cmp11 = icmp ult i32 %11, %call
  br i1 %cmp11, label %if.then12, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %corner13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %iter.060, ptr %corner13, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %if.end9.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.corner, ptr %iter.060, i32 1
  %cmp.not = icmp ugt ptr %incdec.ptr, %arrayidx
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then8, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.1 = phi i32 [ %inc, %if.then8 ], [ 0, %if.end.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ], [ %i.062, %for.body.for.end_crit_edge ]
  %corner15 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 7
  %14 = ptrtoint ptr %corner15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %corner15, align 8
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %do.end20, label %do.body23

do.end20:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev21 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 3
  %16 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.65) #10
  br label %cleanup

do.body23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpr_find_initial_corner.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpr_find_initial_corner, %if.then28)) #7
          to label %cleanup [label %if.then28], !srcloc !203

if.then28:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %dev29 = getelementptr inbounds %struct.cpr_drv, ptr %drv, i32 0, i32 3
  %18 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev29, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpr_find_initial_corner.__UNIQUE_ID_ddebug326, ptr noundef %19, ptr noundef nonnull @.str.67, i32 noundef %i.1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %do.body23, %do.end20, %do.end
  %retval.0 = phi i32 [ -22, %do.end20 ], [ -22, %do.end ], [ 0, %if.then28 ], [ 0, %do.body23 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_level_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_get_of_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_of_get_opp_desc_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u64(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpr_debug_info_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @cpr_debug_info_show, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpr_debug_info_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %corner1 = getelementptr inbounds %struct.cpr_drv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %corner1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %corner1, align 8
  %fuse_corner2 = getelementptr inbounds %struct.corner, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %fuse_corner2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fuse_corner2, align 4
  %last_uV = getelementptr inbounds %struct.corner, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %last_uV to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_uV, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.70, i32 noundef %7) #7
  %ring_osc_idx = getelementptr inbounds %struct.fuse_corner, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %ring_osc_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ring_osc_idx, align 4
  %conv = zext i8 %9 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 96
  %base.i = getelementptr inbounds %struct.cpr_drv, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !201
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.71, i32 noundef %conv, i32 noundef %13) #7
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i39 = getelementptr i8, ptr %15, i32 144
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i39) #7, !srcloc !201
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72, i32 noundef %17) #7
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %19, i32 276
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #7, !srcloc !201
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73, i32 noundef %21) #7
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %23, i32 160
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #7, !srcloc !201
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.74, i32 noundef %25) #7
  %and = and i32 %25, 1
  %shr = lshr i32 %25, 1
  %and6 = and i32 %shr, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.75, i32 noundef %and) #7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.76, i32 noundef %and6) #7
  %shr7 = lshr i32 %25, 2
  %and8 = and i32 %shr7, 15
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.77, i32 noundef %and8) #7
  %shr9 = lshr i32 %25, 6
  %and10 = and i32 %shr9, 4095
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.78, i32 noundef %and10) #7
  %shr11 = lshr i32 %25, 18
  %and12 = and i32 %shr11, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, i32 noundef %and12) #7
  %shr13 = lshr i32 %25, 19
  %and14 = and i32 %shr13, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.80, i32 noundef %and14) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_genpd_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_genpd_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !48, !49, !50, !52, !53, !55, !56, !58, !59, !60, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !122, !124, !125, !126, !127, !129, !131, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !152, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @__initcall__kmod_cpr__329_1750_cpr_driver_init6, !1, !"__initcall__kmod_cpr__329_1750_cpr_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/cpr.c", i32 1750, i32 1}
!2 = !{ptr @__exitcall_cpr_driver_exit, !1, !"__exitcall_cpr_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description330, !4, !"__UNIQUE_ID_description330", i1 false, i1 false}
!4 = !{!"../drivers/soc/qcom/cpr.c", i32 1752, i32 1}
!5 = !{ptr @__UNIQUE_ID_file331, !6, !"__UNIQUE_ID_file331", i1 false, i1 false}
!6 = !{!"../drivers/soc/qcom/cpr.c", i32 1753, i32 1}
!7 = !{ptr @__UNIQUE_ID_license332, !6, !"__UNIQUE_ID_license332", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/soc/qcom/cpr.c", i32 1746, i32 11}
!10 = !{ptr @cpr_driver, !11, !"cpr_driver", i1 false, i1 false}
!11 = !{!"../drivers/soc/qcom/cpr.c", i32 1742, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/qcom/cpr.c", i32 1641, i32 38}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/qcom/cpr.c", i32 1658, i32 41}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/qcom/cpr.c", i32 1669, i32 45}
!18 = !{ptr @cpr_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/soc/qcom/cpr.c", i32 1685, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/soc/qcom/cpr.c", i32 1690, i32 6}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/soc/qcom/cpr.c", i32 1242, i32 22}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/qcom/cpr.c", i32 1247, i32 22}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/soc/qcom/cpr.c", i32 1253, i32 22}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soc/qcom/cpr.c", i32 1258, i32 22}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/soc/qcom/cpr.c", i32 931, i32 4}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cpr_fuse_corner_init._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @cpr_fuse_corner_init._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/soc/qcom/cpr.c", i32 941, i32 4}
!41 = !{ptr @cpr_fuse_corner_init._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cpr_fuse_corner_init._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/soc/qcom/cpr.c", i32 947, i32 3}
!45 = !{ptr @cpr_fuse_corner_init.__UNIQUE_ID_ddebug312, !44, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/qcom/cpr.c", i32 602, i32 2}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @cpr_irq_handler.__UNIQUE_ID_ddebug299, !47, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/qcom/cpr.c", i32 605, i32 3}
!52 = !{ptr @cpr_irq_handler.__UNIQUE_ID_ddebug300, !51, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/soc/qcom/cpr.c", i32 608, i32 3}
!55 = !{ptr @cpr_irq_handler.__UNIQUE_ID_ddebug301, !54, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/soc/qcom/cpr.c", i32 611, i32 3}
!58 = !{ptr @cpr_irq_handler._rs, !57, !"_rs", i1 false, i1 false}
!59 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @cpr_irq_handler._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @cpr_irq_handler._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/soc/qcom/cpr.c", i32 630, i32 4}
!64 = !{ptr @cpr_irq_handler.__UNIQUE_ID_ddebug302, !63, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/soc/qcom/cpr.c", i32 632, i32 4}
!67 = !{ptr @cpr_irq_handler.__UNIQUE_ID_ddebug303, !66, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/soc/qcom/cpr.c", i32 517, i32 3}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cpr_scale.__UNIQUE_ID_ddebug293, !69, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/soc/qcom/cpr.c", i32 554, i32 3}
!74 = !{ptr @cpr_scale.__UNIQUE_ID_ddebug298, !73, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!75 = !{ptr @cpr_scale_voltage._rs, !76, !"_rs", i1 false, i1 false}
!76 = !{!"../drivers/soc/qcom/cpr.c", i32 444, i32 3}
!77 = !{ptr @__func__.cpr_scale_voltage, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @cpr_scale_voltage._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @cpr_scale_voltage._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/soc/qcom/cpr.c", i32 389, i32 2}
!83 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @cpr_corner_restore.__UNIQUE_ID_ddebug288, !82, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!85 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/soc/qcom/cpr.c", i32 755, i32 2}
!87 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @cpr_set_performance_state.__UNIQUE_ID_ddebug305, !86, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/soc/qcom/cpr.c", i32 1457, i32 2}
!91 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @cpr_pd_attach_dev.__UNIQUE_ID_ddebug327, !90, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/soc/qcom/cpr.c", i32 1482, i32 4}
!95 = !{ptr @cpr_pd_attach_dev._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @cpr_pd_attach_dev._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/soc/qcom/cpr.c", i32 1487, i32 2}
!99 = !{ptr @cpr_pd_attach_dev.__UNIQUE_ID_ddebug328, !98, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/soc/qcom/cpr.c", i32 1500, i32 3}
!102 = !{ptr @cpr_pd_attach_dev._entry.39, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @cpr_pd_attach_dev._entry_ptr.41, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/soc/qcom/cpr.c", i32 1506, i32 3}
!106 = !{ptr @cpr_pd_attach_dev._entry.42, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @cpr_pd_attach_dev._entry_ptr.44, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/soc/qcom/cpr.c", i32 1548, i32 2}
!110 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @cpr_pd_attach_dev._entry.45, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @cpr_pd_attach_dev._entry_ptr.48, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/soc/qcom/cpr.c", i32 1128, i32 3}
!115 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @cpr_corner_init.__UNIQUE_ID_ddebug317, !114, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/soc/qcom/cpr.c", i32 1219, i32 3}
!119 = !{ptr @cpr_corner_init.__UNIQUE_ID_ddebug324, !118, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/soc/qcom/cpr.c", i32 1032, i32 31}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/soc/qcom/cpr.c", i32 1033, i32 3}
!124 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @cpr_get_fuse_corner._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @cpr_get_fuse_corner._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/soc/qcom/cpr.c", i32 1061, i32 45}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/soc/qcom/cpr.c", i32 1065, i32 34}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/soc/qcom/cpr.c", i32 1278, i32 26}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/soc/qcom/cpr.c", i32 1293, i32 2}
!135 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @cpr_init_parameters.__UNIQUE_ID_ddebug325, !134, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/soc/qcom/cpr.c", i32 714, i32 2}
!139 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @cpr_config.__UNIQUE_ID_ddebug304, !138, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/soc/qcom/cpr.c", i32 1307, i32 3}
!143 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @cpr_find_initial_corner._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @cpr_find_initial_corner._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/soc/qcom/cpr.c", i32 1338, i32 3}
!148 = !{ptr @cpr_find_initial_corner._entry.64, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @cpr_find_initial_corner._entry_ptr.66, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/soc/qcom/cpr.c", i32 1342, i32 2}
!152 = !{ptr @cpr_find_initial_corner.__UNIQUE_ID_ddebug326, !151, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/soc/qcom/cpr.c", i32 1609, i32 36}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/soc/qcom/cpr.c", i32 1611, i32 22}
!157 = !{ptr @cpr_debug_info_fops, !158, !"cpr_debug_info_fops", i1 false, i1 false}
!158 = !{!"../drivers/soc/qcom/cpr.c", i32 1605, i32 1}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/soc/qcom/cpr.c", i32 1568, i32 16}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/soc/qcom/cpr.c", i32 1573, i32 16}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/soc/qcom/cpr.c", i32 1576, i32 16}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/soc/qcom/cpr.c", i32 1579, i32 16}
!167 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/soc/qcom/cpr.c", i32 1582, i32 16}
!169 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/soc/qcom/cpr.c", i32 1586, i32 16}
!171 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/soc/qcom/cpr.c", i32 1588, i32 16}
!173 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/soc/qcom/cpr.c", i32 1592, i32 16}
!175 = !{ptr @.str.78, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/soc/qcom/cpr.c", i32 1595, i32 16}
!177 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/soc/qcom/cpr.c", i32 1598, i32 16}
!179 = !{ptr @.str.80, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/soc/qcom/cpr.c", i32 1601, i32 16}
!181 = !{ptr @cpr_match_table, !182, !"cpr_match_table", i1 false, i1 false}
!182 = !{!"../drivers/soc/qcom/cpr.c", i32 1736, i32 34}
!183 = !{ptr @qcs404_cpr_acc_desc, !184, !"qcs404_cpr_acc_desc", i1 false, i1 false}
!184 = !{!"../drivers/soc/qcom/cpr.c", i32 1423, i32 34}
!185 = !{ptr @qcs404_cpr_desc, !186, !"qcs404_cpr_desc", i1 false, i1 false}
!186 = !{!"../drivers/soc/qcom/cpr.c", i32 1347, i32 30}
!187 = !{ptr @qcs404_acc_desc, !188, !"qcs404_acc_desc", i1 false, i1 false}
!188 = !{!"../drivers/soc/qcom/cpr.c", i32 1407, i32 30}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{!"branch_weights", i32 1, i32 2000}
!199 = !{i8 0, i8 2}
!200 = !{i64 5348484}
!201 = !{i64 5348902}
!202 = !{!"auto-init"}
!203 = !{i64 2148996187, i64 2148996192, i64 2148996205, i64 2148996249, i64 2148996283, i64 2148996304}
!204 = !{i64 743403, i64 743430}
!205 = !{i64 744098, i64 744125, i64 744158, i64 744179, i64 744206, i64 744232}
