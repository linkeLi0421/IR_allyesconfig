; ModuleID = '/llk/IR_all_yes/drivers/soundwire/bus_type.c_pt.bc'
source_filename = "../drivers/soundwire/bus_type.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sdw_bus_type\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_bus_type\09\09\09\09"
module asm "\09.long\09__crc_sdw_bus_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__sdw_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc___sdw_register_driver\09\09\09\09"
module asm "\09.long\09__crc___sdw_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___sdw_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__sdw_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns___sdw_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sdw_unregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_sdw_unregister_driver\09\09\09\09"
module asm "\09.long\09__crc_sdw_unregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sdw_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22sdw_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_sdw_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sdw_slave_id = type { i16, i16, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.sdw_device_id = type { i16, i16, i8, i8, i32 }
%struct.sdw_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sdw_bus = type { ptr, ptr, i32, i32, %struct.list_head, [1 x i32], %struct.mutex, %struct.mutex, ptr, ptr, ptr, %struct.sdw_bus_params, %struct.sdw_master_prop, %struct.list_head, ptr, %struct.sdw_defer, i32, i32, i8, i32 }
%struct.sdw_bus_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sdw_master_prop = type { i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i8, i32, i32, i8, i64 }
%struct.sdw_defer = type { i32, %struct.completion, ptr }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sdw:m%04Xp%04Xv%02Xc%02X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MODALIAS=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"soundwire\00", [22 x i8] zeroinitializer }, align 32
@sdw_bus_type = dso_local global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sdw_bus_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_sdw_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_bus_type to i32), ptr @__kstrtab_sdw_bus_type, ptr @__kstrtabns_sdw_bus_type }, section "___ksymtab_gpl+sdw_bus_type", align 4
@__sdw_register_driver._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 190, ptr null, ptr null }, align 1
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013driver %s didn't provide SDW probe routine\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__sdw_register_driver\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/soundwire/bus_type.c\00", [35 x i8] zeroinitializer }, align 32
@__sdw_register_driver._entry_ptr = internal global ptr @__sdw_register_driver._entry, section ".printk_index", align 4
@__kstrtab___sdw_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___sdw_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___sdw_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__sdw_register_driver to i32), ptr @__kstrtab___sdw_register_driver, ptr @__kstrtabns___sdw_register_driver }, section "___ksymtab_gpl+__sdw_register_driver", align 4
@__kstrtab_sdw_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_sdw_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_sdw_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sdw_unregister_driver to i32), ptr @__kstrtab_sdw_unregister_driver, ptr @__kstrtabns_sdw_unregister_driver }, section "___ksymtab_gpl+sdw_unregister_driver", align 4
@__initcall__kmod_soundwire_bus__173_229_sdw_bus_init2 = internal global ptr @sdw_bus_init, section ".initcall2.init", align 4
@__exitcall_sdw_bus_exit = internal global ptr @sdw_bus_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description174 = internal constant [40 x i8] c"soundwire_bus.description=SoundWire bus\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [51 x i8] c"soundwire_bus.file=drivers/soundwire/soundwire-bus\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [29 x i8] c"soundwire_bus.license=GPL v2\00", section ".modinfo", align 1
@sdw_slave_type = external dso_local global %struct.device_type, align 4
@sdw_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 115, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Probe of %s failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sdw_drv_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sdw_drv_probe._entry_ptr = internal global ptr @sdw_drv_probe._entry, section ".printk_index", align 4
@sdw_drv_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.5, i32 127, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Slave sysfs init failed:%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sdw_drv_probe._entry_ptr.13 = internal global ptr @sdw_drv_probe._entry.10, section ".printk_index", align 4
@sdw_drv_probe.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.7, ptr @.str.5, ptr @.str.15, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"soundwire_bus\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"probe complete\0A\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 56, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 68, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 75, i32 10 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"sdw_bus_type\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 74, i32 17 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 190, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 115, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 127, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [32 x i8] c"../drivers/soundwire/bus_type.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 144, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_sdw_bus_exit, ptr @__initcall__kmod_soundwire_bus__173_229_sdw_bus_init2, ptr @__ksymtab___sdw_register_driver, ptr @__ksymtab_sdw_bus_type, ptr @__ksymtab_sdw_unregister_driver, ptr @__sdw_register_driver._entry, ptr @__sdw_register_driver._entry_ptr, ptr @sdw_bus_exit, ptr @sdw_drv_probe._entry, ptr @sdw_drv_probe._entry.10, ptr @sdw_drv_probe._entry_ptr, ptr @sdw_drv_probe._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sdw_bus_type, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdw_drv_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_slave_modalias(ptr nocapture noundef readonly %slave, ptr nocapture noundef writeonly %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %slave to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %slave, align 8
  %conv = zext i16 %1 to i32
  %part_id = getelementptr inbounds %struct.sdw_slave_id, ptr %slave, i32 0, i32 1
  %2 = ptrtoint ptr %part_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %part_id, align 2
  %conv2 = zext i16 %3 to i32
  %sdw_version = getelementptr inbounds %struct.sdw_slave_id, ptr %slave, i32 0, i32 4
  %4 = ptrtoint ptr %sdw_version to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %sdw_version, align 2
  %bf.lshr = lshr i8 %bf.load, 4
  %conv4 = zext i8 %bf.lshr to i32
  %class_id = getelementptr inbounds %struct.sdw_slave_id, ptr %slave, i32 0, i32 2
  %5 = ptrtoint ptr %class_id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %class_id, align 4
  %conv6 = zext i8 %6 to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %size, ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sdw_slave_uevent(ptr nocapture noundef readonly %dev, ptr noundef %env) local_unnamed_addr #2 align 64 {
entry:
  %modalias = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %modalias) #9
  %0 = call ptr @memset(ptr %modalias, i32 255, i32 32)
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %add.ptr, align 8
  %conv.i = zext i16 %2 to i32
  %part_id.i = getelementptr i8, ptr %dev, i32 -6
  %3 = ptrtoint ptr %part_id.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %part_id.i, align 2
  %conv2.i = zext i16 %4 to i32
  %sdw_version.i = getelementptr i8, ptr %dev, i32 -2
  %5 = ptrtoint ptr %sdw_version.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %sdw_version.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %conv4.i = zext i8 %bf.lshr.i to i32
  %class_id.i = getelementptr i8, ptr %dev, i32 -4
  %6 = ptrtoint ptr %class_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %class_id.i, align 4
  %conv6.i = zext i8 %7 to i32
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %modalias, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %conv.i, i32 noundef %conv2.i, i32 noundef %conv4.i, i32 noundef %conv6.i) #9
  %call2 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.1, ptr noundef nonnull %modalias) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %. = select i1 %tobool.not, i32 0, i32 -12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %modalias) #9
  ret i32 %.
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @sdw_bus_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %ddrv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i.not = icmp eq ptr %1, @sdw_slave_type
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %id_table.i = getelementptr i8, ptr %ddrv, i32 -8
  %2 = ptrtoint ptr %id_table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_table.i, align 4
  %class_id27.i = getelementptr i8, ptr %dev, i32 -4
  %tobool.not46.i = icmp eq ptr %3, null
  br i1 %tobool.not46.i, label %if.then.sdw_get_device_id.exit_crit_edge, label %land.rhs.lr.ph.i

if.then.sdw_get_device_id.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdw_get_device_id.exit

land.rhs.lr.ph.i:                                 ; preds = %if.then
  %part_id.i = getelementptr i8, ptr %dev, i32 -6
  %sdw_version17.i = getelementptr i8, ptr %dev, i32 -2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %id.047.i = phi ptr [ %3, %land.rhs.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.land.rhs.i_crit_edge ]
  %4 = ptrtoint ptr %id.047.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id.047.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool1.not.i = icmp eq i16 %5, 0
  br i1 %tobool1.not.i, label %land.rhs.i.sdw_get_device_id.exit_crit_edge, label %for.body.i

land.rhs.i.sdw_get_device_id.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdw_get_device_id.exit

for.body.i:                                       ; preds = %land.rhs.i
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %5)
  %cmp.i8 = icmp eq i16 %7, %5
  br i1 %cmp.i8, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %8 = ptrtoint ptr %part_id.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %part_id.i, align 2
  %part_id10.i = getelementptr inbounds %struct.sdw_device_id, ptr %id.047.i, i32 0, i32 1
  %10 = ptrtoint ptr %part_id10.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %part_id10.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp12.i = icmp eq i16 %9, %11
  br i1 %cmp12.i, label %land.lhs.true14.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %sdw_version.i = getelementptr inbounds %struct.sdw_device_id, ptr %id.047.i, i32 0, i32 2
  %12 = ptrtoint ptr %sdw_version.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sdw_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not.i = icmp eq i8 %13, 0
  br i1 %tobool15.not.i, label %land.lhs.true14.i.land.lhs.true23.i_crit_edge, label %lor.lhs.false.i

land.lhs.true14.i.land.lhs.true23.i_crit_edge:    ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true23.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true14.i
  %14 = ptrtoint ptr %sdw_version17.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %sdw_version17.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr.i, i8 %13)
  %cmp21.i = icmp eq i8 %bf.lshr.i, %13
  br i1 %cmp21.i, label %lor.lhs.false.i.land.lhs.true23.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i.land.lhs.true23.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true23.i

land.lhs.true23.i:                                ; preds = %lor.lhs.false.i.land.lhs.true23.i_crit_edge, %land.lhs.true14.i.land.lhs.true23.i_crit_edge
  %class_id.i = getelementptr inbounds %struct.sdw_device_id, ptr %id.047.i, i32 0, i32 3
  %15 = ptrtoint ptr %class_id.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %class_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool24.not.i = icmp eq i8 %16, 0
  br i1 %tobool24.not.i, label %land.lhs.true23.i.sdw_get_device_id.exit_crit_edge, label %lor.lhs.false25.i

land.lhs.true23.i.sdw_get_device_id.exit_crit_edge: ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdw_get_device_id.exit

lor.lhs.false25.i:                                ; preds = %land.lhs.true23.i
  %17 = ptrtoint ptr %class_id27.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %class_id27.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %16)
  %cmp31.i = icmp eq i8 %18, %16
  br i1 %cmp31.i, label %lor.lhs.false25.i.sdw_get_device_id.exit_crit_edge, label %lor.lhs.false25.i.for.inc.i_crit_edge

lor.lhs.false25.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false25.i.sdw_get_device_id.exit_crit_edge: ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdw_get_device_id.exit

for.inc.i:                                        ; preds = %lor.lhs.false25.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.sdw_device_id, ptr %id.047.i, i32 1
  %tobool.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool.not.i, label %for.inc.i.sdw_get_device_id.exit_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.inc.i.sdw_get_device_id.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sdw_get_device_id.exit

sdw_get_device_id.exit:                           ; preds = %for.inc.i.sdw_get_device_id.exit_crit_edge, %lor.lhs.false25.i.sdw_get_device_id.exit_crit_edge, %land.lhs.true23.i.sdw_get_device_id.exit_crit_edge, %land.rhs.i.sdw_get_device_id.exit_crit_edge, %if.then.sdw_get_device_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then.sdw_get_device_id.exit_crit_edge ], [ %id.047.i, %lor.lhs.false25.i.sdw_get_device_id.exit_crit_edge ], [ %id.047.i, %land.lhs.true23.i.sdw_get_device_id.exit_crit_edge ], [ null, %for.inc.i.sdw_get_device_id.exit_crit_edge ], [ null, %land.rhs.i.sdw_get_device_id.exit_crit_edge ]
  %tobool5 = icmp ne ptr %retval.0.i, null
  %lnot.ext = zext i1 %tobool5 to i32
  br label %if.end

if.end:                                           ; preds = %sdw_get_device_id.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %lnot.ext, %sdw_get_device_id.exit ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__sdw_register_driver(ptr noundef %drv, ptr noundef %owner) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.sdw_driver, ptr %drv, i32 0, i32 6
  %bus = getelementptr inbounds %struct.sdw_driver, ptr %drv, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @sdw_bus_type, ptr %bus, align 4
  %probe = getelementptr inbounds %struct.sdw_driver, ptr %drv, i32 0, i32 1
  %1 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %probe, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then3, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver, align 4
  br label %do.end

do.end:                                           ; preds = %if.then3, %if.then.do.end_crit_edge
  %name.0 = phi ptr [ %4, %if.then.do.end_crit_edge ], [ %6, %if.then3 ]
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %name.0) #12
  br label %cleanup

if.end6:                                          ; preds = %entry
  %owner8 = getelementptr inbounds %struct.sdw_driver, ptr %drv, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %owner8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %owner, ptr %owner8, align 4
  %probe10 = getelementptr inbounds %struct.sdw_driver, ptr %drv, i32 0, i32 6, i32 8
  %8 = ptrtoint ptr %probe10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sdw_drv_probe, ptr %probe10, align 4
  %remove = getelementptr inbounds %struct.sdw_driver, ptr %drv, i32 0, i32 2
  %9 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remove, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.end6.if.end15_crit_edge, label %if.then12

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %remove14 = getelementptr inbounds %struct.sdw_driver, ptr %drv, i32 0, i32 6, i32 10
  %11 = ptrtoint ptr %remove14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sdw_drv_remove, ptr %remove14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end6.if.end15_crit_edge
  %shutdown = getelementptr inbounds %struct.sdw_driver, ptr %drv, i32 0, i32 3
  %12 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shutdown, align 4
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %if.end15.if.end20_crit_edge, label %if.then17

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %shutdown19 = getelementptr inbounds %struct.sdw_driver, ptr %drv, i32 0, i32 6, i32 11
  %14 = ptrtoint ptr %shutdown19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @sdw_drv_shutdown, ptr %shutdown19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  %call22 = tail call i32 @driver_register(ptr noundef %driver) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end
  %retval.0 = phi i32 [ %call22, %if.end20 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdw_drv_probe(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -24
  %fwnode = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 28
  %2 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwnode, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %id_table.i = getelementptr i8, ptr %1, i32 -8
  %6 = ptrtoint ptr %id_table.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %id_table.i, align 4
  %class_id27.i = getelementptr i8, ptr %dev, i32 -4
  %tobool.not46.i = icmp eq ptr %7, null
  br i1 %tobool.not46.i, label %if.end6.cleanup_crit_edge, label %land.rhs.lr.ph.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs.lr.ph.i:                                 ; preds = %if.end6
  %part_id.i = getelementptr i8, ptr %dev, i32 -6
  %sdw_version17.i = getelementptr i8, ptr %dev, i32 -2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %id.047.i = phi ptr [ %7, %land.rhs.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.land.rhs.i_crit_edge ]
  %8 = ptrtoint ptr %id.047.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %id.047.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool1.not.i = icmp eq i16 %9, 0
  br i1 %tobool1.not.i, label %land.rhs.i.cleanup_crit_edge, label %for.body.i

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %land.rhs.i
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %9)
  %cmp.i = icmp eq i16 %11, %9
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %12 = ptrtoint ptr %part_id.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %part_id.i, align 2
  %part_id10.i = getelementptr inbounds %struct.sdw_device_id, ptr %id.047.i, i32 0, i32 1
  %14 = ptrtoint ptr %part_id10.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %part_id10.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp12.i = icmp eq i16 %13, %15
  br i1 %cmp12.i, label %land.lhs.true14.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true14.i:                                ; preds = %land.lhs.true.i
  %sdw_version.i = getelementptr inbounds %struct.sdw_device_id, ptr %id.047.i, i32 0, i32 2
  %16 = ptrtoint ptr %sdw_version.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %sdw_version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not.i = icmp eq i8 %17, 0
  br i1 %tobool15.not.i, label %land.lhs.true14.i.land.lhs.true23.i_crit_edge, label %lor.lhs.false.i

land.lhs.true14.i.land.lhs.true23.i_crit_edge:    ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true23.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true14.i
  %18 = ptrtoint ptr %sdw_version17.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %sdw_version17.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.lshr.i, i8 %17)
  %cmp21.i = icmp eq i8 %bf.lshr.i, %17
  br i1 %cmp21.i, label %lor.lhs.false.i.land.lhs.true23.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i.land.lhs.true23.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true23.i

land.lhs.true23.i:                                ; preds = %lor.lhs.false.i.land.lhs.true23.i_crit_edge, %land.lhs.true14.i.land.lhs.true23.i_crit_edge
  %class_id.i = getelementptr inbounds %struct.sdw_device_id, ptr %id.047.i, i32 0, i32 3
  %19 = ptrtoint ptr %class_id.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %class_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool24.not.i = icmp eq i8 %20, 0
  br i1 %tobool24.not.i, label %land.lhs.true23.i.if.end9_crit_edge, label %lor.lhs.false25.i

land.lhs.true23.i.if.end9_crit_edge:              ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

lor.lhs.false25.i:                                ; preds = %land.lhs.true23.i
  %21 = ptrtoint ptr %class_id27.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %class_id27.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %20)
  %cmp31.i = icmp eq i8 %22, %20
  br i1 %cmp31.i, label %lor.lhs.false25.i.if.end9_crit_edge, label %lor.lhs.false25.i.for.inc.i_crit_edge

lor.lhs.false25.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false25.i.if.end9_crit_edge:              ; preds = %lor.lhs.false25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

for.inc.i:                                        ; preds = %lor.lhs.false25.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.sdw_device_id, ptr %id.047.i, i32 1
  %tobool.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false25.i.if.end9_crit_edge, %land.lhs.true23.i.if.end9_crit_edge
  %ops = getelementptr i8, ptr %1, i32 -4
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %ops10 = getelementptr i8, ptr %dev, i32 936
  %25 = ptrtoint ptr %ops10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %ops10, align 8
  %call11 = tail call i32 @dev_pm_domain_attach(ptr noundef %dev, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %probe = getelementptr i8, ptr %1, i32 -20
  %26 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %probe, align 4
  %call15 = tail call i32 %27(ptr noundef %add.ptr, ptr noundef nonnull %id.047.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end24, label %if.then17

if.then17:                                        ; preds = %if.end14
  %28 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr3, align 4
  %tobool19.not = icmp eq ptr %29, null
  br i1 %tobool19.not, label %if.then20, label %if.then17.do.end_crit_edge

if.then17.do.end_crit_edge:                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  br label %do.end

do.end:                                           ; preds = %if.then20, %if.then17.do.end_crit_edge
  %name.0 = phi ptr [ %29, %if.then17.do.end_crit_edge ], [ %31, %if.then20 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %name.0, i32 noundef %call15) #12
  tail call void @dev_pm_domain_detach(ptr noundef %dev, i1 noundef zeroext false) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %32 = ptrtoint ptr %ops10 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops10, align 8
  %tobool26.not = icmp eq ptr %33, null
  br i1 %tobool26.not, label %if.end24.if.end33_crit_edge, label %land.lhs.true

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end24
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool28.not = icmp eq ptr %35, null
  br i1 %tobool28.not, label %land.lhs.true.if.end33_crit_edge, label %if.then29

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 %35(ptr noundef %add.ptr) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %land.lhs.true.if.end33_crit_edge, %if.end24.if.end33_crit_edge
  %call34 = tail call i32 @sdw_slave_sysfs_init(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %do.end38, label %if.end33.if.end39_crit_edge

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call34) #12
  br label %if.end39

if.end39:                                         ; preds = %do.end38, %if.end33.if.end39_crit_edge
  %clk_stop_timeout = getelementptr i8, ptr %dev, i32 948
  %36 = ptrtoint ptr %clk_stop_timeout to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %clk_stop_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp40 = icmp eq i32 %37, 0
  br i1 %cmp40, label %if.then41, label %if.end39.if.end44_crit_edge

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %clk_stop_timeout to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 300, ptr %clk_stop_timeout, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end39.if.end44_crit_edge
  %bus = getelementptr i8, ptr %dev, i32 932
  %39 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bus, align 4
  %clk_stop_timeout45 = getelementptr inbounds %struct.sdw_bus, ptr %40, i32 0, i32 16
  %41 = ptrtoint ptr %clk_stop_timeout45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %clk_stop_timeout45, align 4
  %43 = ptrtoint ptr %clk_stop_timeout to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %clk_stop_timeout, align 4
  %45 = tail call i32 @llvm.umax.i32(i32 %42, i32 %44)
  %46 = ptrtoint ptr %clk_stop_timeout45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %clk_stop_timeout45, align 4
  %probed = getelementptr i8, ptr %dev, i32 1924
  %47 = ptrtoint ptr %probed to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %probed, align 4
  %probe_complete = getelementptr i8, ptr %dev, i32 1928
  tail call void @complete(ptr noundef %probe_complete) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sdw_drv_probe.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sdw_drv_probe, %if.then58)) #9
          to label %cleanup [label %if.then58], !srcloc !54

if.then58:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sdw_drv_probe.__UNIQUE_ID_ddebug172, ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.end44, %do.end, %if.end9.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ], [ 0, %if.then58 ], [ 0, %if.end44 ], [ -19, %if.end6.cleanup_crit_edge ], [ -19, %land.rhs.i.cleanup_crit_edge ], [ -19, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sdw_drv_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %remove = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %call = tail call i32 %3(ptr noundef %add.ptr) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @dev_pm_domain_detach(ptr noundef %dev, i1 noundef zeroext false) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sdw_drv_shutdown(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %shutdown = getelementptr i8, ptr %1, i32 -12
  %2 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shutdown, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  tail call void %3(ptr noundef %add.ptr) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sdw_unregister_driver(ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.sdw_driver, ptr %drv, i32 0, i32 6
  tail call void @driver_unregister(ptr noundef %driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sdw_bus_exit() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sdw_debugfs_exit() #9
  tail call void @bus_unregister(ptr noundef nonnull @sdw_bus_type) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdw_debugfs_exit() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sdw_bus_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sdw_debugfs_init() #9
  %call = tail call i32 @bus_register(ptr noundef nonnull @sdw_bus_type) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_domain_attach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sdw_slave_sysfs_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sdw_debugfs_init() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !29, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/soundwire/bus_type.c", i32 56, i32 29}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soundwire/bus_type.c", i32 68, i32 26}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soundwire/bus_type.c", i32 75, i32 10}
!6 = !{ptr @sdw_bus_type, !7, !"sdw_bus_type", i1 false, i1 false}
!7 = !{!"../drivers/soundwire/bus_type.c", i32 74, i32 17}
!8 = !{ptr @__ksymtab_sdw_bus_type, !9, !"__ksymtab_sdw_bus_type", i1 false, i1 false}
!9 = !{!"../drivers/soundwire/bus_type.c", i32 78, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soundwire/bus_type.c", i32 190, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__sdw_register_driver._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @__sdw_register_driver._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab___sdw_register_driver, !17, !"__ksymtab___sdw_register_driver", i1 false, i1 false}
!17 = !{!"../drivers/soundwire/bus_type.c", i32 205, i32 1}
!18 = !{ptr @__ksymtab_sdw_unregister_driver, !19, !"__ksymtab_sdw_unregister_driver", i1 false, i1 false}
!19 = !{!"../drivers/soundwire/bus_type.c", i32 215, i32 1}
!20 = !{ptr @__initcall__kmod_soundwire_bus__173_229_sdw_bus_init2, !21, !"__initcall__kmod_soundwire_bus__173_229_sdw_bus_init2", i1 false, i1 false}
!21 = !{!"../drivers/soundwire/bus_type.c", i32 229, i32 1}
!22 = !{ptr @__exitcall_sdw_bus_exit, !23, !"__exitcall_sdw_bus_exit", i1 false, i1 false}
!23 = !{!"../drivers/soundwire/bus_type.c", i32 230, i32 1}
!24 = !{ptr @__UNIQUE_ID_description174, !25, !"__UNIQUE_ID_description174", i1 false, i1 false}
!25 = !{!"../drivers/soundwire/bus_type.c", i32 232, i32 1}
!26 = !{ptr @__UNIQUE_ID_file175, !27, !"__UNIQUE_ID_file175", i1 false, i1 false}
!27 = !{!"../drivers/soundwire/bus_type.c", i32 233, i32 1}
!28 = !{ptr @__UNIQUE_ID_license176, !27, !"__UNIQUE_ID_license176", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soundwire/bus_type.c", i32 115, i32 3}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sdw_drv_probe._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @sdw_drv_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/soundwire/bus_type.c", i32 127, i32 3}
!38 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sdw_drv_probe._entry.10, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @sdw_drv_probe._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soundwire/bus_type.c", i32 144, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @sdw_drv_probe.__UNIQUE_ID_ddebug172, !42, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2148956754, i64 2148956759, i64 2148956772, i64 2148956816, i64 2148956850, i64 2148956871}
