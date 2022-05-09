; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-designware-slave.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-designware-slave.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+i2c_dw_configure_slave\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_dw_configure_slave\09\09\09\09"
module asm "\09.long\09__crc_i2c_dw_configure_slave\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_dw_configure_slave:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_dw_configure_slave\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_dw_configure_slave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+i2c_dw_probe_slave\22, \22a\22\09"
module asm "\09.weak\09__crc_i2c_dw_probe_slave\09\09\09\09"
module asm "\09.long\09__crc_i2c_dw_probe_slave\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_dw_probe_slave:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_dw_probe_slave\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_dw_probe_slave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dw_i2c_dev = type { ptr, ptr, ptr, ptr, ptr, %struct.completion, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.i2c_adapter, i32, i32, i32, i32, i32, i32, %struct.i2c_timings, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, ptr, ptr, i32, %struct.i2c_bus_recovery_info, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__kstrtab_i2c_dw_configure_slave = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_dw_configure_slave = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_dw_configure_slave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_dw_configure_slave to i32), ptr @__kstrtab_i2c_dw_configure_slave, ptr @__kstrtabns_i2c_dw_configure_slave }, section "___ksymtab_gpl+i2c_dw_configure_slave", align 4
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Synopsys DesignWare I2C Slave adapter\00", [58 x i8] zeroinitializer }, align 32
@i2c_dw_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr null, ptr null, ptr @i2c_dw_func, ptr @i2c_dw_reg_slave, ptr @i2c_dw_unreg_slave }, [36 x i8] zeroinitializer }, align 32
@i2c_dw_probe_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 282, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failure requesting irq %i: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c_dw_probe_slave\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/i2c/busses/i2c-designware-slave.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_dw_probe_slave._entry_ptr = internal global ptr @i2c_dw_probe_slave._entry, section ".printk_index", align 4
@i2c_dw_probe_slave._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failure adding adapter: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@i2c_dw_probe_slave._entry_ptr.8 = internal global ptr @i2c_dw_probe_slave._entry.6, section ".printk_index", align 4
@__kstrtab_i2c_dw_probe_slave = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_dw_probe_slave = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_dw_probe_slave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_dw_probe_slave to i32), ptr @__kstrtab_i2c_dw_probe_slave, ptr @__kstrtabns_i2c_dw_probe_slave }, section "___ksymtab_gpl+i2c_dw_probe_slave", align 4
@__UNIQUE_ID_author290 = internal constant [64 x i8] c"i2c_designware_core.author=Luis Oliveira <lolivei@synopsys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [74 x i8] c"i2c_designware_core.description=Synopsys DesignWare I2C bus slave adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [64 x i8] c"i2c_designware_core.file=drivers/i2c/busses/i2c-designware-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [35 x i8] c"i2c_designware_core.license=GPL v2\00", section ".modinfo", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@i2c_dw_irq_handler_slave.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 43, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c_designware_core\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i2c_dw_irq_handler_slave\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%#x STATUS SLAVE_ACTIVITY=%#x : RAW_INTR_STAT=%#x : INTR_STAT=%#x\0A\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 272, i32 4 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"i2c_dw_algo\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 227, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 281, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 288, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 87, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [45 x i8] c"../drivers/i2c/busses/i2c-designware-slave.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 171, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_i2c_dw_configure_slave, ptr @__ksymtab_i2c_dw_probe_slave, ptr @i2c_dw_probe_slave._entry, ptr @i2c_dw_probe_slave._entry.6, ptr @i2c_dw_probe_slave._entry_ptr, ptr @i2c_dw_probe_slave._entry_ptr.8, ptr @.str, ptr @i2c_dw_algo, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @init_completion.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_probe_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_probe_slave._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @i2c_dw_configure_slave(ptr nocapture noundef writeonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %functionality = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %functionality to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 259915809, ptr %functionality, align 8
  %slave_cfg = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 28
  %1 = ptrtoint ptr %slave_cfg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 672, ptr %slave_cfg, align 8
  %mode = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 49
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %mode, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @i2c_dw_probe_slave(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25
  %cmd_complete = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_complete, align 4
  %wait.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #5
  %init = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 47
  %1 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @i2c_dw_init_slave, ptr %init, align 8
  %disable = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 45
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @i2c_dw_disable, ptr %disable, align 8
  %disable_int = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 46
  %3 = ptrtoint ptr %disable_int to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @i2c_dw_disable_int, ptr %disable_int, align 4
  %call = tail call i32 @i2c_dw_init_regmap(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @i2c_dw_set_sda_hold(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @i2c_dw_set_fifo_size(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %4 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init, align 8
  %call10 = tail call i32 %5(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %name = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25, i32 12
  %6 = call ptr @memcpy(ptr %name, ptr @.str, i32 38)
  %retries = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25, i32 8
  %7 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %retries, align 8
  %algo = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25, i32 2
  %8 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @i2c_dw_algo, ptr %algo, align 8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %parent = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25, i32 9, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25, i32 9, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 23
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.dev_name.exit_crit_edge

if.end13.dev_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %if.end13.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %10, i32 noundef %14, ptr noundef nonnull @i2c_dw_isr_slave, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %if.end25, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 8
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.1, i32 noundef %22, i32 noundef %call.i) #8
  br label %cleanup

if.end25:                                         ; preds = %dev_name.exit
  %call26 = tail call i32 @i2c_add_numbered_adapter(ptr noundef %adapter) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %do.end31

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.7, i32 noundef %call26) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %if.end25.cleanup_crit_edge, %do.end, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ], [ %call26, %do.end31 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_dw_init_slave(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_dw_acquire_lock(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__i2c_dw_disable(ptr noundef %dev) #5
  %sda_hold_time = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 33
  %0 = ptrtoint ptr %sda_hold_time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sda_hold_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %map = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 124, i32 noundef %1) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %map.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 60, i32 noundef 0) #5
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 56, i32 noundef 0) #5
  %8 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i, align 4
  %slave_cfg.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 28
  %10 = ptrtoint ptr %slave_cfg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slave_cfg.i, align 8
  %call4.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 0, i32 noundef %11) #5
  %12 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i, align 4
  %call6.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 48, i32 noundef 741) #5
  tail call void @i2c_dw_release_lock(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_disable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_disable_int(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_init_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_set_sda_hold(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_set_fifo_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_dw_isr_slave(i32 noundef %this_irq, ptr noundef %dev_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @i2c_dw_irq_handler_slave(ptr noundef %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cmd_complete = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev_id, i32 0, i32 5
  tail call void @complete(ptr noundef %cmd_complete) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_acquire_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__i2c_dw_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_release_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_func(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_dw_reg_slave(ptr noundef %slave) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slave1 = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %slave to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %slave, align 8
  %8 = and i16 %7, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool2.not = icmp eq i16 %8, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #5
  %map.i = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i, align 4
  %call.i25 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 108, i32 noundef 0) #5
  %13 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 1
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr, align 2
  %conv7 = zext i16 %16 to i32
  %call8 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 8, i32 noundef %conv7) #5
  %17 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %slave, ptr %slave1, align 8
  %18 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map.i, align 4
  %call.i27 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 108, i32 noundef 1) #5
  %cmd_err = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %cmd_err, align 8
  %msg_write_idx = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 14
  %21 = ptrtoint ptr %msg_write_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %msg_write_idx, align 4
  %msg_read_idx = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 17
  %22 = ptrtoint ptr %msg_read_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %msg_read_idx, align 8
  %msg_err = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 20
  %23 = ptrtoint ptr %msg_err to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %msg_err, align 4
  %status = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 21
  %24 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %status, align 8
  %abort_source = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 22
  %25 = ptrtoint ptr %abort_source to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %abort_source, align 4
  %rx_outstanding = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 31
  %26 = ptrtoint ptr %rx_outstanding to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %rx_outstanding, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -16, %entry.cleanup_crit_edge ], [ -97, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_dw_unreg_slave(ptr nocapture noundef readonly %slave) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %disable_int = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %disable_int to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable_int, align 4
  tail call void %5(ptr noundef %3) #5
  %disable = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 45
  %6 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable, align 8
  tail call void %7(ptr noundef %3) #5
  %irq = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 23
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 8
  tail call void @synchronize_irq(i32 noundef %9) #5
  %slave1 = getelementptr inbounds %struct.dw_i2c_dev, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %slave1, align 8
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 5) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_dw_irq_handler_slave(ptr nocapture noundef %dev) unnamed_addr #1 align 64 {
entry:
  %stat.i = alloca i32, align 4
  %dummy.i = alloca i32, align 4
  %raw_stat = alloca i32, align 4
  %enabled = alloca i32, align 4
  %tmp = alloca i32, align 4
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_stat) #5
  %0 = ptrtoint ptr %raw_stat to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %raw_stat, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enabled) #5
  %1 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %enabled, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #5
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %val, align 1
  %map = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 108, ptr noundef nonnull %enabled) #5
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef 52, ptr noundef nonnull %raw_stat) #5
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call4 = call i32 @regmap_read(ptr noundef %9, i32 noundef 112, ptr noundef nonnull %tmp) #5
  %10 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp, align 4
  %12 = trunc i32 %11 to i8
  %13 = lshr i8 %12, 6
  %conv = and i8 %13, 1
  %14 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %16 = ptrtoint ptr %raw_stat to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %raw_stat, align 4
  %and5 = and i32 %17, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %slave = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 9
  %18 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slave, align 8
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %lor.lhs.false7.cleanup_crit_edge, label %if.end

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat.i) #5
  %20 = ptrtoint ptr %stat.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %stat.i, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #5
  %21 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %dummy.i, align 4, !annotation !44
  %22 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map, align 4
  %call.i = call i32 @regmap_read(ptr noundef %23, i32 noundef 44, ptr noundef nonnull %stat.i) #5
  %24 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stat.i, align 4
  %and.i = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %27, i32 noundef 84, ptr noundef nonnull %dummy.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %28 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stat.i, align 4
  %and3.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map, align 4
  %call7.i = call i32 @regmap_read(ptr noundef %31, i32 noundef 68, ptr noundef nonnull %dummy.i) #5
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %32 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %stat.i, align 4
  %and9.i = and i32 %33, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end14.i_crit_edge, label %if.then11.i

if.end8.i.if.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map, align 4
  %call13.i = call i32 @regmap_read(ptr noundef %35, i32 noundef 72, ptr noundef nonnull %dummy.i) #5
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end14.i_crit_edge
  %36 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %stat.i, align 4
  %and15.i = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end20.i_crit_edge, label %if.then17.i

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map, align 4
  %call19.i = call i32 @regmap_read(ptr noundef %39, i32 noundef 76, ptr noundef nonnull %dummy.i) #5
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end20.i_crit_edge
  %40 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stat.i, align 4
  %and21.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end26.i_crit_edge, label %if.then23.i

if.end20.i.if.end26.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %map, align 4
  %call25.i = call i32 @regmap_read(ptr noundef %43, i32 noundef 88, ptr noundef nonnull %dummy.i) #5
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end26.i_crit_edge
  %44 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stat.i, align 4
  %and27.i = and i32 %45, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end32.i_crit_edge, label %if.then29.i

if.end26.i.if.end32.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %map, align 4
  %call31.i = call i32 @regmap_read(ptr noundef %47, i32 noundef 92, ptr noundef nonnull %dummy.i) #5
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then29.i, %if.end26.i.if.end32.i_crit_edge
  %48 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %stat.i, align 4
  %and33.i = and i32 %49, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i.if.end38.i_crit_edge, label %if.then35.i

if.end32.i.if.end38.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map, align 4
  %call37.i = call i32 @regmap_read(ptr noundef %51, i32 noundef 96, ptr noundef nonnull %dummy.i) #5
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %if.end32.i.if.end38.i_crit_edge
  %52 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stat.i, align 4
  %and39.i = and i32 %53, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end38.i.if.end44.i_crit_edge, label %if.then41.i

if.end38.i.if.end44.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.i

if.then41.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %map, align 4
  %call43.i = call i32 @regmap_read(ptr noundef %55, i32 noundef 100, ptr noundef nonnull %dummy.i) #5
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then41.i, %if.end38.i.if.end44.i_crit_edge
  %56 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stat.i, align 4
  %and45.i = and i32 %57, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.end44.i.i2c_dw_read_clear_intrbits_slave.exit_crit_edge, label %if.then47.i

if.end44.i.i2c_dw_read_clear_intrbits_slave.exit_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_dw_read_clear_intrbits_slave.exit

if.then47.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %map, align 4
  %call49.i = call i32 @regmap_read(ptr noundef %59, i32 noundef 104, ptr noundef nonnull %dummy.i) #5
  br label %i2c_dw_read_clear_intrbits_slave.exit

i2c_dw_read_clear_intrbits_slave.exit:            ; preds = %if.then47.i, %if.end44.i.i2c_dw_read_clear_intrbits_slave.exit_crit_edge
  %60 = ptrtoint ptr %stat.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %stat.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_dw_irq_handler_slave.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_dw_irq_handler_slave, %do.end)) #5
          to label %if.then16 [label %do.end], !srcloc !45

if.then16:                                        ; preds = %i2c_dw_read_clear_intrbits_slave.exit
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 8
  %64 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %enabled, align 4
  %conv18 = zext i8 %conv to i32
  %66 = ptrtoint ptr %raw_stat to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %raw_stat, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2c_dw_irq_handler_slave.__UNIQUE_ID_ddebug289, ptr noundef %63, ptr noundef nonnull @.str.12, i32 noundef %65, i32 noundef %conv18, i32 noundef %67, i32 noundef %61) #5
  br label %do.end

do.end:                                           ; preds = %if.then16, %i2c_dw_read_clear_intrbits_slave.exit
  %and20 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.end.if.end37_crit_edge, label %if.then22

do.end.if.end37_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then22:                                        ; preds = %do.end
  %status = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 21
  %68 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp.not = icmp eq i32 %69, 1
  br i1 %cmp.not, label %if.then22.if.end28_crit_edge, label %if.then24

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %status, align 8
  %71 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %slave, align 8
  %slave_cb.i = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 8
  %73 = ptrtoint ptr %slave_cb.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %slave_cb.i, align 8
  %call.i102 = call i32 %74(ptr noundef %72, i32 noundef 1, ptr noundef nonnull %val) #5
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.then22.if.end28_crit_edge
  %75 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %map, align 4
  %call30 = call i32 @regmap_read(ptr noundef %76, i32 noundef 16, ptr noundef nonnull %tmp) #5
  %77 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tmp, align 4
  %conv31 = trunc i32 %78 to i8
  %79 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv31, ptr %val, align 1
  %80 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %slave, align 8
  %slave_cb.i103 = getelementptr inbounds %struct.i2c_client, ptr %81, i32 0, i32 8
  %82 = ptrtoint ptr %slave_cb.i103 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %slave_cb.i103, align 8
  %call.i104 = call i32 %83(ptr noundef %81, i32 noundef 3, ptr noundef nonnull %val) #5
  br label %if.end37

if.end37:                                         ; preds = %if.end28, %do.end.if.end37_crit_edge
  %and38 = and i32 %61, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool41.not = icmp eq i8 %conv, 0
  %or.cond = select i1 %tobool39.not, i1 true, i1 %tobool41.not
  br i1 %or.cond, label %if.end37.if.end55_crit_edge, label %if.then42

if.end37.if.end55_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then42:                                        ; preds = %if.end37
  %84 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %map, align 4
  %call44 = call i32 @regmap_read(ptr noundef %85, i32 noundef 80, ptr noundef nonnull %tmp) #5
  %status45 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 21
  %86 = ptrtoint ptr %status45 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 2, ptr %status45, align 8
  %87 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %slave, align 8
  %slave_cb.i105 = getelementptr inbounds %struct.i2c_client, ptr %88, i32 0, i32 8
  %89 = ptrtoint ptr %slave_cb.i105 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %slave_cb.i105, align 8
  %call.i106 = call i32 %90(ptr noundef %88, i32 noundef 0, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool48.not = icmp eq i32 %call.i106, 0
  br i1 %tobool48.not, label %if.then49, label %if.then42.if.end55_crit_edge

if.then42.if.end55_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then49:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %map, align 4
  %93 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %val, align 1
  %conv51 = zext i8 %94 to i32
  %call52 = call i32 @regmap_write(ptr noundef %92, i32 noundef 16, i32 noundef %conv51) #5
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %if.then42.if.end55_crit_edge, %if.end37.if.end55_crit_edge
  %and56 = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end66_crit_edge, label %if.then58

if.end55.if.end66_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then58:                                        ; preds = %if.end55
  %95 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %slave, align 8
  %slave_cb.i107 = getelementptr inbounds %struct.i2c_client, ptr %96, i32 0, i32 8
  %97 = ptrtoint ptr %slave_cb.i107 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %slave_cb.i107, align 8
  %call.i108 = call i32 %98(ptr noundef %96, i32 noundef 2, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %tobool61.not = icmp eq i32 %call.i108, 0
  br i1 %tobool61.not, label %if.then62, label %if.then58.if.end66_crit_edge

if.then58.if.end66_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then62:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %map, align 4
  %call64 = call i32 @regmap_read(ptr noundef %100, i32 noundef 88, ptr noundef nonnull %tmp) #5
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.then58.if.end66_crit_edge, %if.end55.if.end66_crit_edge
  %and67 = and i32 %61, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.cleanup_crit_edge, label %if.then69

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  %status70 = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 21
  %101 = ptrtoint ptr %status70 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %status70, align 8
  %102 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %slave, align 8
  %slave_cb.i109 = getelementptr inbounds %struct.i2c_client, ptr %103, i32 0, i32 8
  %104 = ptrtoint ptr %slave_cb.i109 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %slave_cb.i109, align 8
  %call.i110 = call i32 %105(ptr noundef %103, i32 noundef 4, ptr noundef nonnull %val) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %if.end66.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false7.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then69 ], [ 1, %if.end66.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enabled) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_stat) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !25, !27, !28, !30, !32, !33, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__ksymtab_i2c_dw_configure_slave, !1, !"__ksymtab_i2c_dw_configure_slave", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-designware-slave.c", i32 242, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/i2c/busses/i2c-designware-slave.c", i32 272, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/i2c/busses/i2c-designware-slave.c", i32 281, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @i2c_dw_probe_slave._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @i2c_dw_probe_slave._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-designware-slave.c", i32 288, i32 3}
!14 = !{ptr @i2c_dw_probe_slave._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @i2c_dw_probe_slave._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_i2c_dw_probe_slave, !17, !"__ksymtab_i2c_dw_probe_slave", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-designware-slave.c", i32 292, i32 1}
!18 = !{ptr @__UNIQUE_ID_author290, !19, !"__UNIQUE_ID_author290", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-designware-slave.c", i32 294, i32 1}
!20 = !{ptr @__UNIQUE_ID_description291, !21, !"__UNIQUE_ID_description291", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-designware-slave.c", i32 295, i32 1}
!22 = !{ptr @__UNIQUE_ID_file292, !23, !"__UNIQUE_ID_file292", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-designware-slave.c", i32 296, i32 1}
!24 = !{ptr @__UNIQUE_ID_license293, !23, !"__UNIQUE_ID_license293", i1 false, i1 false}
!25 = !{ptr @init_completion.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../include/linux/completion.h", i32 87, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @i2c_dw_algo, !29, !"i2c_dw_algo", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-designware-slave.c", i32 227, i32 35}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-designware-slave.c", i32 171, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @i2c_dw_irq_handler_slave.__UNIQUE_ID_ddebug289, !31, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"auto-init"}
!45 = !{i64 2148762266, i64 2148762271, i64 2148762284, i64 2148762328, i64 2148762362, i64 2148762383}
