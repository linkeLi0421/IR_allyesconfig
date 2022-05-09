; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/intel_th/msu.c_pt.bc'
source_filename = "../drivers/hwtracing/intel_th/msu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+intel_th_msu_buffer_register\22, \22a\22\09"
module asm "\09.weak\09__crc_intel_th_msu_buffer_register\09\09\09\09"
module asm "\09.long\09__crc_intel_th_msu_buffer_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_intel_th_msu_buffer_register:\09\09\09\09\09"
module asm "\09.asciz \09\22intel_th_msu_buffer_register\22\09\09\09\09\09"
module asm "__kstrtabns_intel_th_msu_buffer_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+intel_th_msu_buffer_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_intel_th_msu_buffer_unregister\09\09\09\09"
module asm "\09.long\09__crc_intel_th_msu_buffer_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_intel_th_msu_buffer_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22intel_th_msu_buffer_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_intel_th_msu_buffer_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+intel_th_msc_window_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_intel_th_msc_window_unlock\09\09\09\09"
module asm "\09.long\09__crc_intel_th_msc_window_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_intel_th_msc_window_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22intel_th_msc_window_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_intel_th_msc_window_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.intel_th_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%union.anon.66 = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.msu_buffer_entry = type { %struct.list_head, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.msc = type { ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.list_head, %struct.sg_table, ptr, ptr, i32, i32, i8, ptr, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.mutex, %struct.list_head, i8, i8, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.msc_window = type { %struct.list_head, i32, i32, %struct.spinlock, i32, i32, ptr, %struct.sg_table, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.intel_th_device = type { %struct.device, ptr, ptr, i32, i32, i32, i8, %struct.intel_th_output, [0 x i8] }
%struct.intel_th_output = type { i32, i32, i32, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.intel_th = type { ptr, [10 x ptr], ptr, ptr, [3 x %struct.resource], ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.work_struct, ptr }
%struct.msu_buffer = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msc_block_desc = type { i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, [4 x i32] }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.msc_iter = type { %struct.list_head, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%union.anon.14 = type { i32 }

@msu_buffer_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @msu_buffer_mutex, i64 52), ptr getelementptr (i8, ptr @msu_buffer_mutex, i64 52) }, ptr @msu_buffer_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@msu_buffer_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @msu_buffer_list, ptr @msu_buffer_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_intel_th_msu_buffer_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_intel_th_msu_buffer_register = external dso_local constant [0 x i8], align 1
@__ksymtab_intel_th_msu_buffer_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @intel_th_msu_buffer_register to i32), ptr @__kstrtab_intel_th_msu_buffer_register, ptr @__kstrtabns_intel_th_msu_buffer_register }, section "___ksymtab_gpl+intel_th_msu_buffer_register", align 4
@__kstrtab_intel_th_msu_buffer_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_intel_th_msu_buffer_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_intel_th_msu_buffer_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @intel_th_msu_buffer_unregister to i32), ptr @__kstrtab_intel_th_msu_buffer_unregister, ptr @__kstrtabns_intel_th_msu_buffer_unregister }, section "___ksymtab_gpl+intel_th_msu_buffer_unregister", align 4
@__kstrtab_intel_th_msc_window_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_intel_th_msc_window_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_intel_th_msc_window_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @intel_th_msc_window_unlock to i32), ptr @__kstrtab_intel_th_msc_window_unlock, ptr @__kstrtabns_intel_th_msc_window_unlock }, section "___ksymtab_gpl+intel_th_msc_window_unlock", align 4
@__initcall__kmod_intel_th_msu__238_2194_intel_th_msc_driver_init6 = internal global ptr @intel_th_msc_driver_init, section ".initcall6.init", align 4
@intel_th_msc_driver = internal global { %struct.intel_th_driver, [56 x i8] } { %struct.intel_th_driver { %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @intel_th_msc_probe, ptr @intel_th_msc_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @intel_th_msc_interrupt, ptr @intel_th_msc_wait_empty, ptr @intel_th_msc_activate, ptr @intel_th_msc_deactivate, ptr @intel_th_msc_fops, ptr @msc_output_group, ptr null }, [56 x i8] zeroinitializer }, align 32
@__exitcall_intel_th_msc_driver_exit = internal global ptr @intel_th_msc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [58 x i8] c"intel_th_msu.file=drivers/hwtracing/intel_th/intel_th_msu\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [28 x i8] c"intel_th_msu.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [71 x i8] c"intel_th_msu.description=Intel(R) Trace Hub Memory Storage Unit driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [76 x i8] c"intel_th_msu.author=Alexander Shishkin <alexander.shishkin@linux.intel.com>\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"msu_buffer_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msu_buffer_mutex\00", [47 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/hwtracing/intel_th/msu.c\00", [63 x i8] zeroinitializer }, align 32
@msc_win_set_lockout._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.msc_win_set_lockout = private unnamed_addr constant [20 x i8] c"msc_win_set_lockout\00", align 1
@msc_win_set_lockout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.msc_win_set_lockout, ptr @.str.2, i32 748, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"expected lockout state %d, got %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msc_win_set_lockout._entry_ptr = internal global ptr @msc_win_set_lockout._entry, section ".printk_index", align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msc\00", [28 x i8] zeroinitializer }, align 32
@intel_th_msc_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @intel_th_msc_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @intel_th_msc_mmap, i32 0, ptr @intel_th_msc_open, ptr null, ptr @intel_th_msc_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@msc_output_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @msc_output_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@intel_th_msc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&msc->work)\00", [34 x i8] zeroinitializer }, align 32
@to_intel_th.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/hwtracing/intel_th/intel_th.h\00", [58 x i8] zeroinitializer }, align 32
@intel_th_msc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&msc->buf_mutex\00", [16 x i8] zeroinitializer }, align 32
@intel_th_msc_remove.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@intel_th_msc_wait_empty.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 1, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intel_th_msu\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"intel_th_msc_wait_empty\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"timeout waiting for MSC0 PLE\0A\00", [34 x i8] zeroinitializer }, align 32
@intel_th_msu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 686, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"MINTCTL ignores writes: no usable interrupts\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"intel_th_msu_init\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@intel_th_msu_init._entry_ptr = internal global ptr @intel_th_msu_init._entry, section ".printk_index", align 4
@msc_disable.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msc_disable\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MSCnMWP: %08x/%08lx, wrap: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@msc_disable.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 -42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MSCnNWSA: %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@msc_disable.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MSCnSTS: %08x\0A\00", [17 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@msc_mmap_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @msc_mmap_open, ptr @msc_mmap_close, ptr null, ptr null, ptr null, ptr @msc_mmap_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@msc_mmap_close.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@msc_output_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_wrap, ptr @dev_attr_mode, ptr @dev_attr_nr_pages, ptr @dev_attr_win_switch, ptr @dev_attr_stop_on_full, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_wrap = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @wrap_show, ptr @wrap_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mode_show, ptr @mode_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_nr_pages = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nr_pages_show, ptr @nr_pages_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_win_switch = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @win_switch_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_stop_on_full = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stop_on_full_show, ptr @stop_on_full_store }, [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wrap\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@msc_mode = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"single\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"multi\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ExI\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"debug\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr_pages\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%d%c\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsupported\0A\00", [19 x i8] zeroinitializer }, align 32
@msc_buffer_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@msc_buffer_win_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&win->lo_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"win_switch\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stop_on_full\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"msu_buffer_mutex\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"msu_buffer_list\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 170, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c"intel_th_msc_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2177, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 171, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 189, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 746, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2187, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"intel_th_msc_fops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1659, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"msc_output_group\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2114, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2151, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [41 x i8] c"../drivers/hwtracing/intel_th/intel_th.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 223, i32 6 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1689, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1681, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 686, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 840, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 857, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 861, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 230, i32 6 }
@___asan_gen_.141 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 214, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 174, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [13 x i8] c"msc_mmap_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1616, i32 42 }
@___asan_gen_.150 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1160, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"msc_output_attrs\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2105, i32 26 }
@___asan_gen_.155 = private unnamed_addr constant [14 x i8] c"dev_attr_wrap\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [14 x i8] c"dev_attr_mode\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [18 x i8] c"dev_attr_nr_pages\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [20 x i8] c"dev_attr_win_switch\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [22 x i8] c"dev_attr_stop_on_full\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1836, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1816, i32 35 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1950, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant [9 x i8] c"msc_mode\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1804, i32 27 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1861, i32 34 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1805, i32 22 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1806, i32 21 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1807, i32 20 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1808, i32 21 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2048, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1962, i32 37 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1966, i32 9 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1970, i32 37 }
@___asan_gen_.209 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1097, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2079, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.219 = private constant [36 x i8] c"../drivers/hwtracing/intel_th/msu.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 2103, i32 8 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_intel_th_msc_driver_exit, ptr @__initcall__kmod_intel_th_msu__238_2194_intel_th_msc_driver_init6, ptr @__ksymtab_intel_th_msc_window_unlock, ptr @__ksymtab_intel_th_msu_buffer_register, ptr @__ksymtab_intel_th_msu_buffer_unregister, ptr @intel_th_msc_driver_exit, ptr @intel_th_msu_init._entry, ptr @intel_th_msu_init._entry_ptr, ptr @msc_win_set_lockout._entry, ptr @msc_win_set_lockout._entry_ptr, ptr @msu_buffer_mutex, ptr @msu_buffer_list, ptr @intel_th_msc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @msc_win_set_lockout._rs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @intel_th_msc_fops, ptr @msc_output_group, ptr @intel_th_msc_probe.__key, ptr @.str.8, ptr @.str.9, ptr @intel_th_msc_init.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @msc_mmap_ops, ptr @.str.24, ptr @msc_output_attrs, ptr @dev_attr_wrap, ptr @dev_attr_mode, ptr @dev_attr_nr_pages, ptr @dev_attr_win_switch, ptr @dev_attr_stop_on_full, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @msc_mode, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @msc_buffer_win_alloc.__key, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msu_buffer_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msu_buffer_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_msc_driver to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc_win_set_lockout._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc_win_set_lockout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_msc_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc_output_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_msc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_msc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_th_msu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc_mmap_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc_output_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_wrap to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nr_pages to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_win_switch to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_stop_on_full to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msc_buffer_win_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @intel_th_msu_buffer_register(ptr noundef %mbuf, ptr noundef %owner) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @msu_buffer_mutex, i32 noundef 0) #12
  %1 = ptrtoint ptr %mbuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mbuf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %if.end.for.cond.i.preheader_crit_edge, label %land.rhs.i

if.end.for.cond.i.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

land.rhs.i:                                       ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @msu_buffer_mutex, i32 0, i32 5), i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.for.cond.i.preheader_crit_edge, !prof !140

land.rhs.i.for.cond.i.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 189, i32 noundef 9, ptr noundef null) #12
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %do.end.i, %land.rhs.i.for.cond.i.preheader_crit_edge, %if.end.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %mbe.0.in.i = phi ptr [ %mbe.0.i, %for.body.i.for.cond.i_crit_edge ], [ @msu_buffer_list, %for.cond.i.preheader ]
  %4 = ptrtoint ptr %mbe.0.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %mbe.0.i = load ptr, ptr %mbe.0.in.i, align 4
  %cmp26.not.i = icmp eq ptr %mbe.0.i, @msu_buffer_list
  br i1 %cmp26.not.i, label %for.cond.i.if.end4_crit_edge, label %for.body.i

for.cond.i.if.end4_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

for.body.i:                                       ; preds = %for.cond.i
  %mbuf.i = getelementptr inbounds %struct.msu_buffer_entry, ptr %mbe.0.i, i32 0, i32 1
  %5 = ptrtoint ptr %mbuf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mbuf.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call30.i = tail call i32 @strcmp(ptr noundef %8, ptr noundef %2) #16
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %__msu_buffer_entry_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

__msu_buffer_entry_find.exit:                     ; preds = %for.body.i
  %tobool2.not = icmp eq ptr %mbe.0.i, null
  br i1 %tobool2.not, label %__msu_buffer_entry_find.exit.if.end4_crit_edge, label %if.then3

__msu_buffer_entry_find.exit.if.end4_crit_edge:   ; preds = %__msu_buffer_entry_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %__msu_buffer_entry_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %unlock

if.end4:                                          ; preds = %__msu_buffer_entry_find.exit.if.end4_crit_edge, %for.cond.i.if.end4_crit_edge
  %mbuf5 = getelementptr inbounds %struct.msu_buffer_entry, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %mbuf5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mbuf, ptr %mbuf5, align 8
  %owner6 = getelementptr inbounds %struct.msu_buffer_entry, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %owner6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %owner, ptr %owner6, align 4
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @msu_buffer_list, i32 0, i32 1), align 4
  %call.i.i14 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %11, ptr noundef nonnull @msu_buffer_list) #12
  br i1 %call.i.i14, label %if.end.i.i, label %if.end4.unlock_crit_edge

if.end4.unlock_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @msu_buffer_list, i32 0, i32 1), align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @msu_buffer_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i, ptr %11, align 4
  br label %unlock

unlock:                                           ; preds = %if.end.i.i, %if.end4.unlock_crit_edge, %if.then3
  %ret.0 = phi i32 [ -17, %if.then3 ], [ 0, %if.end4.unlock_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @msu_buffer_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @intel_th_msu_buffer_unregister(ptr nocapture noundef readonly %mbuf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @msu_buffer_mutex, i32 noundef 0) #12
  %0 = ptrtoint ptr %mbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbuf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.for.cond.i.preheader_crit_edge, label %land.rhs.i

entry.for.cond.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

land.rhs.i:                                       ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @msu_buffer_mutex, i32 0, i32 5), i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.for.cond.i.preheader_crit_edge, !prof !140

land.rhs.i.for.cond.i.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 189, i32 noundef 9, ptr noundef null) #12
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %do.end.i, %land.rhs.i.for.cond.i.preheader_crit_edge, %entry.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %mbe.0.in.i = phi ptr [ %mbe.0.i, %for.body.i.for.cond.i_crit_edge ], [ @msu_buffer_list, %for.cond.i.preheader ]
  %3 = ptrtoint ptr %mbe.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %mbe.0.i = load ptr, ptr %mbe.0.in.i, align 4
  %cmp26.not.i = icmp eq ptr %mbe.0.i, @msu_buffer_list
  br i1 %cmp26.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %mbuf.i = getelementptr inbounds %struct.msu_buffer_entry, ptr %mbe.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %mbuf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mbuf.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call30.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef %1) #16
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %__msu_buffer_entry_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

__msu_buffer_entry_find.exit:                     ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mbe.0.i, null
  br i1 %tobool.not, label %__msu_buffer_entry_find.exit.if.end_crit_edge, label %if.then

__msu_buffer_entry_find.exit.if.end_crit_edge:    ; preds = %__msu_buffer_entry_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %__msu_buffer_entry_find.exit
  %call.i.i4 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %mbe.0.i) #12
  br i1 %call.i.i4, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %mbe.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %mbe.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mbe.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %14 = ptrtoint ptr %mbe.0.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %mbe.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %mbe.0.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %mbe.0.i) #12
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %__msu_buffer_entry_find.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @msu_buffer_mutex) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @intel_th_msc_window_unlock(ptr nocapture noundef readonly %dev, ptr noundef readnone %sgt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %sgt, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %win_list.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %win_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %win_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %win_list.i
  br i1 %cmp.i.not.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %win.032.i = phi ptr [ %win.0.i, %for.inc.i.for.body.i_crit_edge ], [ %3, %if.end.for.body.i_crit_edge ]
  %sgt4.i = getelementptr inbounds %struct.msc_window, ptr %win.032.i, i32 0, i32 8
  %4 = ptrtoint ptr %sgt4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sgt4.i, align 4
  %cmp5.i.not = icmp eq ptr %5, %sgt
  br i1 %cmp5.i.not, label %msc_find_window.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %6 = ptrtoint ptr %win.032.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %win.0.i = load ptr, ptr %win.032.i, align 4
  %cmp.not.i = icmp eq ptr %win.0.i, %win_list.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

msc_find_window.exit:                             ; preds = %for.body.i
  %tobool2.not = icmp eq ptr %win.032.i, null
  br i1 %tobool2.not, label %msc_find_window.exit.cleanup_crit_edge, label %if.end4

msc_find_window.exit.cleanup_crit_edge:           ; preds = %msc_find_window.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %msc_find_window.exit
  %call5 = tail call fastcc i32 @msc_win_set_lockout(ptr noundef nonnull %win.032.i, i32 noundef 2, i32 noundef 0)
  %switch_on_unlock = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %switch_on_unlock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %switch_on_unlock, align 4
  %cmp = icmp eq ptr %8, %win.032.i
  br i1 %cmp, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  %9 = ptrtoint ptr %switch_on_unlock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %switch_on_unlock, align 4
  %10 = ptrtoint ptr %win_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %win_list.i, align 4
  %cmp.i.not.i18 = icmp eq ptr %11, %win_list.i
  br i1 %cmp.i.not.i18, label %if.then6.cleanup_crit_edge, label %if.end.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %if.then6
  %cur_win.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %cur_win.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur_win.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %msc.i.i = getelementptr inbounds %struct.msc_window, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %msc.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msc.i.i, align 4
  %win_list.i.i = getelementptr inbounds %struct.msc, ptr %17, i32 0, i32 6
  %cmp.i28.i = icmp eq ptr %15, %win_list.i.i
  %spec.select.i19 = select i1 %cmp.i28.i, ptr %11, ptr %15
  store ptr %spec.select.i19, ptr %cur_win.i, align 4
  %sgt.i.i.i = getelementptr inbounds %struct.msc_window, ptr %spec.select.i19, i32 0, i32 8
  %18 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sgt.i.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %and.i.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %msc_win_base.exit.i, label %do.body2.i.i.i.i, !prof !141

do.body2.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

msc_win_base.exit.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i.i.i = and i32 %23, -4
  %24 = inttoptr i32 %and.i.i.i.i to ptr
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %24) #12
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 1
  %25 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %26
  %base.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 13
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i.i.i, ptr %base.i, align 4
  %28 = ptrtoint ptr %cur_win.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur_win.i, align 4
  %sgt.i.i29.i = getelementptr inbounds %struct.msc_window, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %sgt.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sgt.i.i29.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_address.i.i, align 4
  %base_addr.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 14
  %36 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %base_addr.i, align 4
  %thdev.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %thdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %thdev.i, align 4
  %call17.i = tail call i32 @intel_th_trace_switch(ptr noundef %38) #12
  br label %cleanup

cleanup:                                          ; preds = %msc_win_base.exit.i, %if.then6.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %msc_find_window.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msc_win_set_lockout(ptr noundef %win, i32 noundef %expect, i32 noundef %new) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %msc = getelementptr inbounds %struct.msc_window, ptr %win, i32 0, i32 6
  %0 = ptrtoint ptr %msc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msc, align 4
  %mbuf = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mbuf, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body1:                                         ; preds = %entry
  %lo_lock = getelementptr inbounds %struct.msc_window, ptr %win, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lo_lock) #12
  %lockout = getelementptr inbounds %struct.msc_window, ptr %win, i32 0, i32 2
  %4 = ptrtoint ptr %lockout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lockout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %expect)
  %cmp5.not = icmp eq i32 %5, %expect
  br i1 %cmp5.not, label %if.end8, label %if.then28

if.end8:                                          ; preds = %do.body1
  %6 = ptrtoint ptr %lockout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %new, ptr %lockout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %new)
  %cmp12 = icmp eq i32 %new, 2
  br i1 %cmp12, label %if.then14, label %land.lhs.true18

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %msc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msc, align 4
  %user_count = getelementptr inbounds %struct.msc, ptr %8, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %user_count, i32 1, i32 3, i32 1) #12
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_count, ptr %user_count, i32 1, ptr elementtype(i32) %user_count) #12, !srcloc !143
  br label %unlock.thread

land.lhs.true18:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %expect)
  %cmp19 = icmp eq i32 %expect, 2
  br i1 %cmp19, label %if.then21, label %land.lhs.true18.unlock.thread_crit_edge

land.lhs.true18.unlock.thread_crit_edge:          ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock.thread

if.then21:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %msc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msc, align 4
  %user_count23 = getelementptr inbounds %struct.msc, ptr %11, i32 0, i32 17
  %call.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count23, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %user_count23, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_count23, ptr %user_count23, i32 1, ptr elementtype(i32) %user_count23) #12, !srcloc !144
  br label %unlock.thread

unlock.thread:                                    ; preds = %if.then21, %land.lhs.true18.unlock.thread_crit_edge, %if.then14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lo_lock, i32 noundef %call2) #12
  br label %cleanup

if.then28:                                        ; preds = %do.body1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lo_lock, i32 noundef %call2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %expect)
  %cmp29 = icmp eq i32 %expect, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp32 = icmp eq i32 %5, 2
  %or.cond = select i1 %cmp29, i1 %cmp32, i1 false
  br i1 %or.cond, label %if.then28.cleanup_crit_edge, label %if.end35

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end35:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %expect)
  %cmp36 = icmp eq i32 %expect, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %new)
  %cmp39 = icmp eq i32 %5, %new
  %or.cond78 = select i1 %cmp36, i1 %cmp39, i1 false
  br i1 %or.cond78, label %if.end35.cleanup_crit_edge, label %do.body43

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body43:                                        ; preds = %if.end35
  %call44 = tail call i32 @___ratelimit(ptr noundef nonnull @msc_win_set_lockout._rs, ptr noundef nonnull @__func__.msc_win_set_lockout) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.body43.cleanup_crit_edge, label %do.end49

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %msc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msc, align 4
  %thdev = getelementptr inbounds %struct.msc, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %thdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %thdev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.4, i32 noundef %expect, i32 noundef %5) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %do.body43.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.then28.cleanup_crit_edge, %unlock.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -16, %if.then28.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ -22, %do.body43.cleanup_crit_edge ], [ -22, %do.end49 ], [ 0, %unlock.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msc_win_switch(ptr noundef %msc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %win_list = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 6
  %0 = ptrtoint ptr %win_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %win_list, align 4
  %cmp.i.not = icmp eq ptr %1, %win_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cur_win = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 8
  %2 = ptrtoint ptr %cur_win to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_win, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %msc.i = getelementptr inbounds %struct.msc_window, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %msc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msc.i, align 4
  %win_list.i = getelementptr inbounds %struct.msc, ptr %7, i32 0, i32 6
  %cmp.i28 = icmp eq ptr %5, %win_list.i
  %spec.select = select i1 %cmp.i28, ptr %1, ptr %5
  store ptr %spec.select, ptr %cur_win, align 4
  %sgt.i.i = getelementptr inbounds %struct.msc_window, ptr %spec.select, i32 0, i32 8
  %8 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sgt.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %and.i.i.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %msc_win_base.exit, label %do.body2.i.i.i, !prof !141

do.body2.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

msc_win_base.exit:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i.i = and i32 %13, -4
  %14 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %14) #12
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %16
  %base = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 13
  %17 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i.i, ptr %base, align 4
  %18 = ptrtoint ptr %cur_win to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur_win, align 4
  %sgt.i.i29 = getelementptr inbounds %struct.msc_window, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %sgt.i.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sgt.i.i29, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_address.i, align 4
  %base_addr = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 14
  %26 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %base_addr, align 4
  %thdev = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 2
  %27 = ptrtoint ptr %thdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %thdev, align 4
  %call17 = tail call i32 @intel_th_trace_switch(ptr noundef %28) #12
  br label %cleanup

cleanup:                                          ; preds = %msc_win_base.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %msc_win_base.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_msc_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @intel_th_driver_register(ptr noundef nonnull @intel_th_msc_driver) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @intel_th_msc_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @intel_th_driver_unregister(ptr noundef nonnull @intel_th_msc_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @intel_th_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intel_th_trace_switch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intel_th_driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_msc_probe(ptr noundef %thdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_resources.i = getelementptr inbounds %struct.intel_th_device, ptr %thdev, i32 0, i32 3
  %0 = ptrtoint ptr %num_resources.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_resources.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.not.i = icmp eq i32 %1, 0
  br i1 %cmp11.not.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %resource.i = getelementptr inbounds %struct.intel_th_device, ptr %thdev, i32 0, i32 2
  %2 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr %struct.resource, ptr %3, i32 %i.013.i, i32 3
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %and.i.i)
  %cmp1.i = icmp eq i32 %and.i.i, 512
  br i1 %cmp1.i, label %intel_th_device_get_resource.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

intel_th_device_get_resource.exit:                ; preds = %for.body.i
  %arrayidx.le.i = getelementptr %struct.resource, ptr %3, i32 %i.013.i
  %tobool.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool.not, label %intel_th_device_get_resource.exit.cleanup_crit_edge, label %if.end

intel_th_device_get_resource.exit.cleanup_crit_edge: ; preds = %intel_th_device_get_resource.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %intel_th_device_get_resource.exit
  %6 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.le.i, align 4
  %end.i = getelementptr %struct.resource, ptr %3, i32 %i.013.i, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %call3 = tail call ptr @devm_ioremap(ptr noundef %thdev, i32 noundef %7, i32 noundef %add.i) #12
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %thdev, i32 noundef 244, i32 noundef 3520) #12
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %num_resources.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_resources.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp11.not.i71 = icmp eq i32 %11, 0
  br i1 %cmp11.not.i71, label %if.end10.if.then13_crit_edge, label %for.body.lr.ph.i73

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

for.body.lr.ph.i73:                               ; preds = %if.end10
  %12 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resource.i, align 4
  br label %for.body.i79

for.body.i79:                                     ; preds = %for.inc.i86.for.body.i79_crit_edge, %for.body.lr.ph.i73
  %i.013.i74 = phi i32 [ 0, %for.body.lr.ph.i73 ], [ %inc.i84, %for.inc.i86.for.body.i79_crit_edge ]
  %num.addr.012.i75 = phi i32 [ 1, %for.body.lr.ph.i73 ], [ %num.addr.1.i83, %for.inc.i86.for.body.i79_crit_edge ]
  %flags.i.i76 = getelementptr %struct.resource, ptr %13, i32 %i.013.i74, i32 3
  %14 = ptrtoint ptr %flags.i.i76 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i.i76, align 4
  %and.i.i77 = and i32 %15, 7936
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and.i.i77)
  %cmp1.i78 = icmp eq i32 %and.i.i77, 1024
  br i1 %cmp1.i78, label %land.lhs.true.i82, label %for.body.i79.for.inc.i86_crit_edge

for.body.i79.for.inc.i86_crit_edge:               ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i86

land.lhs.true.i82:                                ; preds = %for.body.i79
  %dec.i80 = add i32 %num.addr.012.i75, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.addr.012.i75)
  %tobool.not.i81 = icmp eq i32 %num.addr.012.i75, 0
  br i1 %tobool.not.i81, label %intel_th_device_get_resource.exit90, label %land.lhs.true.i82.for.inc.i86_crit_edge

land.lhs.true.i82.for.inc.i86_crit_edge:          ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i86

for.inc.i86:                                      ; preds = %land.lhs.true.i82.for.inc.i86_crit_edge, %for.body.i79.for.inc.i86_crit_edge
  %num.addr.1.i83 = phi i32 [ %dec.i80, %land.lhs.true.i82.for.inc.i86_crit_edge ], [ %num.addr.012.i75, %for.body.i79.for.inc.i86_crit_edge ]
  %inc.i84 = add nuw i32 %i.013.i74, 1
  %exitcond.not.i85 = icmp eq i32 %inc.i84, %11
  br i1 %exitcond.not.i85, label %for.inc.i86.if.then13_crit_edge, label %for.inc.i86.for.body.i79_crit_edge

for.inc.i86.for.body.i79_crit_edge:               ; preds = %for.inc.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i79

for.inc.i86.if.then13_crit_edge:                  ; preds = %for.inc.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

intel_th_device_get_resource.exit90:              ; preds = %land.lhs.true.i82
  %arrayidx.le.i87 = getelementptr %struct.resource, ptr %13, i32 %i.013.i74
  %tobool12.not = icmp eq ptr %arrayidx.le.i87, null
  br i1 %tobool12.not, label %intel_th_device_get_resource.exit90.if.then13_crit_edge, label %intel_th_device_get_resource.exit90.if.end14_crit_edge

intel_th_device_get_resource.exit90.if.end14_crit_edge: ; preds = %intel_th_device_get_resource.exit90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

intel_th_device_get_resource.exit90.if.then13_crit_edge: ; preds = %intel_th_device_get_resource.exit90
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.then13:                                        ; preds = %intel_th_device_get_resource.exit90.if.then13_crit_edge, %for.inc.i86.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  %do_irq = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 22
  %16 = ptrtoint ptr %do_irq to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %do_irq, align 1
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %do_irq, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %intel_th_device_get_resource.exit90.if.end14_crit_edge
  %type.i = getelementptr inbounds %struct.intel_th_device, ptr %thdev, i32 0, i32 4
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp eq i32 %18, 1
  br i1 %cmp.i, label %if.then.i, label %if.end14.if.end.i_crit_edge

if.end14.if.end.i_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %parent1.i.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 1
  %19 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent1.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end14.if.end.i_crit_edge
  %thdev.addr.0.i = phi ptr [ %20, %if.then.i ], [ %thdev, %if.end14.if.end.i_crit_edge ]
  %tobool.not.i91 = icmp eq ptr %thdev.addr.0.i, null
  br i1 %tobool.not.i91, label %if.end.i.land.rhs.i_crit_edge, label %lor.rhs.i

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

lor.rhs.i:                                        ; preds = %if.end.i
  %type1.i = getelementptr inbounds %struct.intel_th_device, ptr %thdev.addr.0.i, i32 0, i32 4
  %21 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp2.i = icmp eq i32 %22, 1
  br i1 %cmp2.i, label %lor.rhs.i.land.rhs.i_crit_edge, label %if.end42.i

lor.rhs.i.land.rhs.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %lor.rhs.i.land.rhs.i_crit_edge, %if.end.i.land.rhs.i_crit_edge
  %.b50.i = load i1, ptr @to_intel_th.__already_done, align 1
  br i1 %.b50.i, label %land.rhs.i.to_intel_th.exit_crit_edge, label %if.then10.i, !prof !141

land.rhs.i.to_intel_th.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %to_intel_th.exit

if.then10.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @to_intel_th.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 223, i32 noundef 9, ptr noundef null) #12
  br label %to_intel_th.exit

if.end42.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %parent.i = getelementptr inbounds %struct.device, ptr %thdev.addr.0.i, i32 0, i32 1
  %23 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i, align 4
  br label %to_intel_th.exit

to_intel_th.exit:                                 ; preds = %if.end42.i, %if.then10.i, %land.rhs.i.to_intel_th.exit_crit_edge
  %retval.0.i92 = phi ptr [ %26, %if.end42.i ], [ null, %if.then10.i ], [ null, %land.rhs.i.to_intel_th.exit_crit_edge ]
  %drvdata = getelementptr inbounds %struct.intel_th, ptr %retval.0.i92, i32 0, i32 3
  %27 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %drvdata, align 4
  %tobool16.not = icmp eq ptr %28, null
  br i1 %tobool16.not, label %to_intel_th.exit.if.end26_crit_edge, label %cond.true

to_intel_th.exit.if.end26_crit_edge:              ; preds = %to_intel_th.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

cond.true:                                        ; preds = %to_intel_th.exit
  %29 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i94 = icmp eq i32 %30, 1
  br i1 %cmp.i94, label %if.then.i96, label %cond.true.if.end.i99_crit_edge

cond.true.if.end.i99_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i99

if.then.i96:                                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #14
  %parent1.i.i95 = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 1
  %31 = ptrtoint ptr %parent1.i.i95 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent1.i.i95, align 8
  br label %if.end.i99

if.end.i99:                                       ; preds = %if.then.i96, %cond.true.if.end.i99_crit_edge
  %thdev.addr.0.i97 = phi ptr [ %32, %if.then.i96 ], [ %thdev, %cond.true.if.end.i99_crit_edge ]
  %tobool.not.i98 = icmp eq ptr %thdev.addr.0.i97, null
  br i1 %tobool.not.i98, label %if.end.i99.land.rhs.i104_crit_edge, label %lor.rhs.i102

if.end.i99.land.rhs.i104_crit_edge:               ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i104

lor.rhs.i102:                                     ; preds = %if.end.i99
  %type1.i100 = getelementptr inbounds %struct.intel_th_device, ptr %thdev.addr.0.i97, i32 0, i32 4
  %33 = ptrtoint ptr %type1.i100 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type1.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp2.i101 = icmp eq i32 %34, 1
  br i1 %cmp2.i101, label %lor.rhs.i102.land.rhs.i104_crit_edge, label %if.end42.i108

lor.rhs.i102.land.rhs.i104_crit_edge:             ; preds = %lor.rhs.i102
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i104

land.rhs.i104:                                    ; preds = %lor.rhs.i102.land.rhs.i104_crit_edge, %if.end.i99.land.rhs.i104_crit_edge
  %.b50.i103 = load i1, ptr @to_intel_th.__already_done, align 1
  br i1 %.b50.i103, label %land.rhs.i104.to_intel_th.exit110_crit_edge, label %if.then10.i105, !prof !141

land.rhs.i104.to_intel_th.exit110_crit_edge:      ; preds = %land.rhs.i104
  call void @__sanitizer_cov_trace_pc() #14
  br label %to_intel_th.exit110

if.then10.i105:                                   ; preds = %land.rhs.i104
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @to_intel_th.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 223, i32 noundef 9, ptr noundef null) #12
  br label %to_intel_th.exit110

if.end42.i108:                                    ; preds = %lor.rhs.i102
  call void @__sanitizer_cov_trace_pc() #14
  %parent.i106 = getelementptr inbounds %struct.device, ptr %thdev.addr.0.i97, i32 0, i32 1
  %35 = ptrtoint ptr %parent.i106 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent.i106, align 8
  %driver_data.i.i107 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %driver_data.i.i107 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i107, align 4
  br label %to_intel_th.exit110

to_intel_th.exit110:                              ; preds = %if.end42.i108, %if.then10.i105, %land.rhs.i104.to_intel_th.exit110_crit_edge
  %retval.0.i109 = phi ptr [ %38, %if.end42.i108 ], [ null, %if.then10.i105 ], [ null, %land.rhs.i104.to_intel_th.exit110_crit_edge ]
  %drvdata18 = getelementptr inbounds %struct.intel_th, ptr %retval.0.i109, i32 0, i32 3
  %39 = ptrtoint ptr %drvdata18 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %drvdata18, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load19 = load i8, ptr %40, align 4
  %42 = and i8 %bf.load19, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool21.not = icmp eq i8 %42, 0
  br i1 %tobool21.not, label %to_intel_th.exit110.if.end26_crit_edge, label %if.then22

to_intel_th.exit110.if.end26_crit_edge:           ; preds = %to_intel_th.exit110
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then22:                                        ; preds = %to_intel_th.exit110
  call void @__sanitizer_cov_trace_pc() #14
  %multi_is_broken = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 22
  %43 = ptrtoint ptr %multi_is_broken to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load23 = load i8, ptr %multi_is_broken, align 1
  %bf.set25 = or i8 %bf.load23, 16
  store i8 %bf.set25, ptr %multi_is_broken, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %to_intel_th.exit110.if.end26_crit_edge, %to_intel_th.exit.if.end26_crit_edge
  %id = getelementptr inbounds %struct.intel_th_device, ptr %thdev, i32 0, i32 5
  %44 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id, align 8
  %index = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 25
  %46 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %index, align 4
  %thdev27 = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 2
  %47 = ptrtoint ptr %thdev27 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %thdev, ptr %thdev27, align 4
  %mul = shl i32 %45, 8
  %add.ptr = getelementptr i8, ptr %call3, i32 %mul
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr, ptr %call.i, align 4
  %msu_base = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 1
  %49 = ptrtoint ptr %msu_base to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call3, ptr %msu_base, align 4
  %work = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %50 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @intel_th_msc_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry32 = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 5, i32 1
  %51 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %entry32, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 5, i32 2
  %53 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @msc_work, ptr %func, align 4
  %user_count.i = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count.i, i32 noundef 4) #12
  %54 = ptrtoint ptr %user_count.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 -1, ptr %user_count.i, align 4
  %multi_is_broken.i = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 22
  %55 = ptrtoint ptr %multi_is_broken.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i = load i8, ptr %multi_is_broken.i, align 1
  %56 = lshr i8 %bf.load.i, 4
  %.lobit.i = and i8 %56, 1
  %57 = xor i8 %.lobit.i, 1
  %58 = zext i8 %57 to i32
  %mode.i = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 23
  %59 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %mode.i, align 4
  %buf_mutex.i = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %buf_mutex.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @intel_th_msc_init.__key) #12
  %win_list.i = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 6
  %60 = ptrtoint ptr %win_list.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %win_list.i, ptr %win_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 6, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %win_list.i, ptr %prev.i.i, align 4
  %iter_list.i = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 20
  %62 = ptrtoint ptr %iter_list.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %iter_list.i, ptr %iter_list.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 20, i32 1
  %63 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %iter_list.i, ptr %prev.i1.i, align 4
  %64 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %65, i32 256
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !145
  %67 = lshr i32 %66, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %and.i = and i32 %67, 7
  %burst_len.i = getelementptr inbounds %struct.msc, ptr %call.i, i32 0, i32 24
  %68 = ptrtoint ptr %burst_len.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and.i, ptr %burst_len.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %69 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %intel_th_device_get_resource.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -19, %intel_th_device_get_resource.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_th_msc_remove(ptr nocapture noundef readonly %thdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %buf_mutex.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex.i, i32 noundef 0) #12
  %enabled.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %enabled.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.intel_th_msc_deactivate.exit_crit_edge, label %if.then.i

entry.intel_th_msc_deactivate.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_th_msc_deactivate.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @msc_disable(ptr noundef %1) #12
  %user_count.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %user_count.i, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_count.i, ptr %user_count.i, i32 1, ptr elementtype(i32) %user_count.i) #12, !srcloc !144
  br label %intel_th_msc_deactivate.exit

intel_th_msc_deactivate.exit:                     ; preds = %if.then.i, %entry.intel_th_msc_deactivate.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %buf_mutex.i) #12
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex.i, i32 noundef 0) #12
  %call.i = tail call fastcc i32 @msc_buffer_unlocked_free_unless_used(ptr noundef %1) #12
  tail call void @mutex_unlock(ptr noundef %buf_mutex.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %intel_th_msc_deactivate.exit.if.end29_crit_edge, label %land.rhs

intel_th_msc_deactivate.exit.if.end29_crit_edge:  ; preds = %intel_th_msc_deactivate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %intel_th_msc_deactivate.exit
  %.b40 = load i1, ptr @intel_th_msc_remove.__already_done, align 1
  br i1 %.b40, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !141

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @intel_th_msc_remove.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 2174, i32 noundef 9, ptr noundef null) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %intel_th_msc_deactivate.exit.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_msc_interrupt(ptr nocapture noundef readonly %thdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %msu_base = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %msu_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msu_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !145
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %index = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool.not, i32 65536, i32 16777216
  %do_irq = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %do_irq to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %do_irq, align 1
  %9 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %mbuf = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %mbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mbuf, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %and = and i32 %cond, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %bf.load.lobit = lshr i8 %bf.load, 7
  %12 = zext i8 %bf.load.lobit to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %13 = ptrtoint ptr %msu_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msu_base, align 4
  %add.ptr13 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %15) #12, !srcloc !148
  %16 = ptrtoint ptr %do_irq to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load15 = load i8, ptr %do_irq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load15)
  %tobool18.not = icmp sgt i8 %bf.load15, -1
  br i1 %tobool18.not, label %if.end11.cleanup_crit_edge, label %if.end20

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %cur_win = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %cur_win to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur_win, align 4
  %tobool21.not = icmp eq ptr %18, null
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %msc.i.i = getelementptr inbounds %struct.msc_window, ptr %18, i32 0, i32 6
  %21 = ptrtoint ptr %msc.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msc.i.i, align 4
  %win_list.i.i = getelementptr inbounds %struct.msc, ptr %22, i32 0, i32 6
  %cmp.i.i = icmp eq ptr %20, %win_list.i.i
  %spec.select.i = select i1 %cmp.i.i, ptr %win_list.i.i, ptr %18
  %23 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %retval.0.i = load ptr, ptr %spec.select.i, align 4
  %tobool25.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool25.not, label %if.end23.cleanup_crit_edge, label %if.end27

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %call28 = tail call fastcc i32 @msc_win_set_lockout(ptr noundef nonnull %retval.0.i, i32 noundef 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end35, label %if.then30

if.then30:                                        ; preds = %if.end27
  %stop_on_full = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 21
  %24 = ptrtoint ptr %stop_on_full to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %stop_on_full, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool31.not = icmp eq i8 %25, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  %work = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %work) #12
  br label %cleanup

if.else:                                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  %switch_on_unlock = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %switch_on_unlock to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i, ptr %switch_on_unlock, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  %call36 = tail call fastcc i32 @msc_win_set_lockout(ptr noundef nonnull %18, i32 noundef 1, i32 noundef 2)
  %call37 = tail call fastcc i32 @msc_win_switch(ptr noundef %1)
  %28 = ptrtoint ptr %mbuf to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mbuf, align 4
  %tobool39.not = icmp eq ptr %29, null
  br i1 %tobool39.not, label %if.end35.cleanup_crit_edge, label %land.lhs.true

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end35
  %ready = getelementptr inbounds %struct.msu_buffer, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ready, align 4
  %tobool41.not = icmp eq ptr %31, null
  br i1 %tobool41.not, label %land.lhs.true.cleanup_crit_edge, label %if.then42

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %mbuf_priv = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %mbuf_priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mbuf_priv, align 4
  %sgt = getelementptr inbounds %struct.msc_window, ptr %18, i32 0, i32 8
  %34 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sgt, align 4
  %call45 = tail call fastcc i32 @msc_win_total_sz(ptr noundef nonnull %18)
  %call46 = tail call i32 %31(ptr noundef %33, ptr noundef %35, i32 noundef %call45) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %land.lhs.true.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.else, %if.then32, %if.end23.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then5, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.then5 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 1, %if.end20.cleanup_crit_edge ], [ 1, %if.end23.cleanup_crit_edge ], [ 1, %if.else ], [ 1, %if.then32 ], [ 1, %if.then42 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_th_msc_wait_empty(ptr nocapture noundef readonly %thdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %count.026 = phi i32 [ 10000, %entry ], [ %dec, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 260
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !150
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !151
  %dec = add i32 %count.026, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not.not, i1 %tobool1.not, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body
  br i1 %tobool.not, label %do.body10, label %for.end.if.end21_crit_edge

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

do.body10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @intel_th_msc_wait_empty.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@intel_th_msc_wait_empty, %if.then16)) #12
          to label %if.end21 [label %if.then16], !srcloc !152

if.then16:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %thdev17 = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %thdev17 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %thdev17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @intel_th_msc_wait_empty.__UNIQUE_ID_ddebug237, ptr noundef %6, ptr noundef nonnull @.str.13) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %do.body10, %for.end.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_msc_activate(ptr nocapture noundef readonly %thdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %user_count = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count, i32 noundef 4) #12
  %2 = ptrtoint ptr %user_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %user_count, align 4
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, %entry
  %c.0.i.i = phi i32 [ %3, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i)
  %cmp.i.i = icmp slt i32 %c.0.i.i, 0
  br i1 %cmp.i.i, label %do.body1.i.i.cleanup_crit_edge, label %do.cond3.i.i, !prof !140

do.body1.i.i.cleanup_crit_edge:                   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.cond3.i.i:                                     ; preds = %do.body1.i.i
  %add.i.i = add nuw i32 %c.0.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @llvm.prefetch.p0(ptr %user_count, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond3.i.i
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %user_count, ptr %user_count, i32 %c.0.i.i, i32 %add.i.i, ptr elementtype(i32) %user_count) #12, !srcloc !154
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %4, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !155
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %c.0.i.i
  br i1 %cmp.not.i.i.i, label %if.end, label %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, !prof !141

arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i.i

if.end:                                           ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  %buf_mutex = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #12
  %iter_list = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %iter_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %iter_list, align 4
  %cmp.i.not = icmp eq ptr %6, %iter_list
  br i1 %cmp.i.not, label %if.then3, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then3.if.end.i_crit_edge, label %land.rhs.i

if.then3.if.end.i_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then3
  %dep_map.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 19, i32 5
  %call.i.i19 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %cmp.not.i = icmp eq i32 %call.i.i19, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !140

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 765, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then3.if.end.i_crit_edge
  %mode.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 23
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp24.i = icmp ugt i32 %9, 1
  br i1 %cmp24.i, label %if.end.i.if.then8_crit_edge, label %if.end26.i

if.end.i.if.then8_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.end26.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp28.i = icmp eq i32 %9, 1
  br i1 %cmp28.i, label %if.then29.i, label %if.end26.i.if.end34.i_crit_edge

if.end26.i.if.end34.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

if.then29.i:                                      ; preds = %if.end26.i
  %cur_win.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %cur_win.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur_win.i, align 4
  %call30.i = tail call fastcc i32 @msc_win_set_lockout(ptr noundef %11, i32 noundef 0, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.then29.i.if.then8_crit_edge

if.then29.i.if.then8_crit_edge:                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then8

if.end33.i:                                       ; preds = %if.then29.i
  %win_list.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %win_list.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %win.023.i.i = load ptr, ptr %win_list.i.i, align 4
  %cmp.not24.i.i = icmp eq ptr %win.023.i.i, %win_list.i.i
  br i1 %cmp.not24.i.i, label %if.end33.i.if.end34.i_crit_edge, label %if.end33.i.for.body.i.i_crit_edge

if.end33.i.for.body.i.i_crit_edge:                ; preds = %if.end33.i
  br label %for.body.i.i

if.end33.i.if.end34.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

for.cond.loopexit.i.i:                            ; preds = %sg_virt.exit.i.i.for.cond.loopexit.i.i_crit_edge, %for.body.i.i.for.cond.loopexit.i.i_crit_edge
  %13 = ptrtoint ptr %win.025.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %win.0.i.i = load ptr, ptr %win.025.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %win.0.i.i, %win_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.loopexit.i.i.if.end34.i_crit_edge, label %for.cond.loopexit.i.i.for.body.i.i_crit_edge

for.cond.loopexit.i.i.for.body.i.i_crit_edge:     ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.cond.loopexit.i.i.if.end34.i_crit_edge:       ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34.i

for.body.i.i:                                     ; preds = %for.cond.loopexit.i.i.for.body.i.i_crit_edge, %if.end33.i.for.body.i.i_crit_edge
  %win.025.i.i = phi ptr [ %win.0.i.i, %for.cond.loopexit.i.i.for.body.i.i_crit_edge ], [ %win.023.i.i, %if.end33.i.for.body.i.i_crit_edge ]
  %nr_segs.i.i = getelementptr inbounds %struct.msc_window, ptr %win.025.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %nr_segs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_segs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp420.not.i.i = icmp eq i32 %15, 0
  br i1 %cmp420.not.i.i, label %for.body.i.i.for.cond.loopexit.i.i_crit_edge, label %for.body5.preheader.i.i

for.body.i.i.for.cond.loopexit.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i.i

for.body5.preheader.i.i:                          ; preds = %for.body.i.i
  %sgt.i.i = getelementptr inbounds %struct.msc_window, ptr %win.025.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sgt.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  br label %for.body5.i.i

for.body5.i.i:                                    ; preds = %sg_virt.exit.i.i.for.body5.i.i_crit_edge, %for.body5.preheader.i.i
  %sg.022.i.i = phi ptr [ %call6.i.i, %sg_virt.exit.i.i.for.body5.i.i_crit_edge ], [ %19, %for.body5.preheader.i.i ]
  %blk.021.i.i = phi i32 [ %inc.i.i, %sg_virt.exit.i.i.for.body5.i.i_crit_edge ], [ 0, %for.body5.preheader.i.i ]
  %20 = ptrtoint ptr %sg.022.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sg.022.i.i, align 4
  %and.i.i.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_virt.exit.i.i, label %do.body2.i.i.i.i, !prof !141

do.body2.i.i.i.i:                                 ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

sg_virt.exit.i.i:                                 ; preds = %for.body5.i.i
  %and.i.i.i.i = and i32 %21, -4
  %22 = inttoptr i32 %and.i.i.i.i to ptr
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %22) #12
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.022.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %24
  %hw_tag.i.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i.i, i32 0, i32 5
  %25 = call ptr @memset(ptr %hw_tag.i.i, i32 0, i32 32)
  %inc.i.i = add nuw i32 %blk.021.i.i, 1
  %call6.i.i = tail call ptr @sg_next(ptr noundef %sg.022.i.i) #12
  %26 = ptrtoint ptr %nr_segs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_segs.i.i, align 4
  %cmp4.i.i = icmp ult i32 %inc.i.i, %27
  br i1 %cmp4.i.i, label %sg_virt.exit.i.i.for.body5.i.i_crit_edge, label %sg_virt.exit.i.i.for.cond.loopexit.i.i_crit_edge

sg_virt.exit.i.i.for.cond.loopexit.i.i_crit_edge: ; preds = %sg_virt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i.i

sg_virt.exit.i.i.for.body5.i.i_crit_edge:         ; preds = %sg_virt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body5.i.i

if.end34.i:                                       ; preds = %for.cond.loopexit.i.i.if.end34.i_crit_edge, %if.end33.i.if.end34.i_crit_edge, %if.end26.i.if.end34.i_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 264
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !145
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %orig_addr.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 15
  %32 = ptrtoint ptr %orig_addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %orig_addr.i, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr37.i = getelementptr i8, ptr %34, i32 268
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #12, !srcloc !145
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %orig_sz.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %orig_sz.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %orig_sz.i, align 4
  %base_addr.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 14
  %38 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %base_addr.i, align 4
  %shr.i = lshr i32 %39, 12
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %add.ptr40.i = getelementptr i8, ptr %41, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @arm_heavy_mb() #12
  %42 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %42) #12, !srcloc !148
  %43 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp42.i = icmp eq i32 %44, 0
  br i1 %cmp42.i, label %if.then43.i, label %if.end34.i.if.end46.i_crit_edge

if.end34.i.if.end46.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i

if.then43.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  %nr_pages.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 10
  %45 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_pages.i, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %add.ptr45.i = getelementptr i8, ptr %48, i32 268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @arm_heavy_mb() #12
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 %49) #12, !srcloc !148
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then43.i, %if.end34.i.if.end46.i_crit_edge
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %add.ptr48.i = getelementptr i8, ptr %51, i32 256
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48.i) #12, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %53 = and i32 %52, -922746881
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #12
  %55 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mode.i, align 4
  %shl.i = shl i32 %56, 4
  %or.i = or i32 %shl.i, %54
  %burst_len.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 24
  %57 = ptrtoint ptr %burst_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %burst_len.i, align 4
  %shl54.i = shl i32 %58, 8
  %or52.i = or i32 %or.i, %shl54.i
  %wrap.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 22
  %59 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load.i = load i8, ptr %wrap.i, align 1
  %60 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool56.not.i = icmp eq i8 %60, 0
  %spec.select.v.i = select i1 %tobool56.not.i, i32 1, i32 3
  %spec.select.i = or i32 %or52.i, %spec.select.v.i
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %add.ptr61.i = getelementptr i8, ptr %62, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @arm_heavy_mb() #12
  %63 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.i, i32 %63) #12, !srcloc !148
  %64 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i.i = load i8, ptr %wrap.i, align 1
  %65 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i.i = icmp eq i8 %65, 0
  br i1 %tobool.not.i.i, label %if.end46.i.intel_th_msu_init.exit.i_crit_edge, label %if.end.i.i

if.end46.i.intel_th_msu_init.exit.i_crit_edge:    ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_th_msu_init.exit.i

if.end.i.i:                                       ; preds = %if.end46.i
  %mbuf.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 3
  %66 = ptrtoint ptr %mbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mbuf.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %67, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.intel_th_msu_init.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i.intel_th_msu_init.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_th_msu_init.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %msu_base.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 1
  %68 = ptrtoint ptr %msu_base.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %msu_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #12, !srcloc !145
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %index.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 25
  %72 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool4.not.i.i = icmp eq i32 %73, 0
  %cond.i.i = select i1 %tobool4.not.i.i, i32 65536, i32 16777216
  %or.i.i = or i32 %cond.i.i, %71
  %74 = ptrtoint ptr %msu_base.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %msu_base.i.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %75, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @arm_heavy_mb() #12
  %76 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 %76) #12, !srcloc !148
  %77 = ptrtoint ptr %msu_base.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %msu_base.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %78, i32 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #12, !srcloc !145
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %80)
  %cmp.not.i113.i = icmp eq i32 %or.i.i, %80
  br i1 %cmp.not.i113.i, label %if.end14.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %thdev.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 2
  %81 = ptrtoint ptr %thdev.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %thdev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %82, ptr noundef nonnull @.str.14) #17
  %83 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load12.i.i = load i8, ptr %wrap.i, align 1
  %bf.clear13.i.i = and i8 %bf.load12.i.i, -33
  store i8 %bf.clear13.i.i, ptr %wrap.i, align 1
  br label %intel_th_msu_init.exit.i

if.end14.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %msu_base.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %msu_base.i.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %85, i32 8
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i.i) #12, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %87 = ptrtoint ptr %msu_base.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %msu_base.i.i, align 4
  %add.ptr19.i.i = getelementptr i8, ptr %88, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i.i, i32 %86) #12, !srcloc !148
  br label %intel_th_msu_init.exit.i

intel_th_msu_init.exit.i:                         ; preds = %if.end14.i.i, %do.end.i.i, %if.end.i.i.intel_th_msu_init.exit.i_crit_edge, %if.end46.i.intel_th_msu_init.exit.i_crit_edge
  %89 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp64.i = icmp eq i32 %90, 1
  %thdev.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 2
  %91 = ptrtoint ptr %thdev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %thdev.i, align 4
  %multiblock.i = getelementptr inbounds %struct.intel_th_device, ptr %92, i32 0, i32 7, i32 3
  %frombool.i = zext i1 %cmp64.i to i8
  %93 = ptrtoint ptr %multiblock.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %frombool.i, ptr %multiblock.i, align 4
  %94 = load ptr, ptr %thdev.i, align 4
  %call66.i = tail call i32 @intel_th_trace_enable(ptr noundef %94) #12
  %95 = ptrtoint ptr %wrap.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load67.i = load i8, ptr %wrap.i, align 1
  %bf.set.i = or i8 %bf.load67.i, -128
  store i8 %bf.set.i, ptr %wrap.i, align 1
  %mbuf.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 3
  %96 = ptrtoint ptr %mbuf.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mbuf.i, align 4
  %tobool69.not.i = icmp eq ptr %97, null
  br i1 %tobool69.not.i, label %intel_th_msu_init.exit.i.if.end5.thread_crit_edge, label %land.lhs.true.i

intel_th_msu_init.exit.i.if.end5.thread_crit_edge: ; preds = %intel_th_msu_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.thread

land.lhs.true.i:                                  ; preds = %intel_th_msu_init.exit.i
  %activate.i = getelementptr inbounds %struct.msu_buffer, ptr %97, i32 0, i32 5
  %98 = ptrtoint ptr %activate.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %activate.i, align 4
  %tobool71.not.i = icmp eq ptr %99, null
  br i1 %tobool71.not.i, label %land.lhs.true.i.if.end5.thread_crit_edge, label %if.then72.i

land.lhs.true.i.if.end5.thread_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.thread

if.then72.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %mbuf_priv.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 4
  %100 = ptrtoint ptr %mbuf_priv.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mbuf_priv.i, align 4
  tail call void %99(ptr noundef %101) #12
  br label %if.end5.thread

if.end5.thread:                                   ; preds = %if.then72.i, %land.lhs.true.i.if.end5.thread_crit_edge, %intel_th_msu_init.exit.i.if.end5.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %buf_mutex) #12
  br label %cleanup

if.then8:                                         ; preds = %if.then29.i.if.then8_crit_edge, %if.end.i.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %ret.0 = phi i32 [ -16, %if.end.if.then8_crit_edge ], [ -22, %if.end.i.if.then8_crit_edge ], [ -16, %if.then29.i.if.then8_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %buf_mutex) #12
  %call.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %user_count, i32 1, i32 3, i32 1) #12
  %102 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_count, ptr %user_count, i32 1, ptr elementtype(i32) %user_count) #12, !srcloc !144
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.thread, %do.body1.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then8 ], [ 0, %if.end5.thread ], [ -19, %do.body1.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @intel_th_msc_deactivate(ptr nocapture noundef readonly %thdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %thdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %buf_mutex = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #12
  %enabled = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @msc_disable(ptr noundef %1)
  %user_count = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %user_count, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_count, ptr %user_count, i32 1, ptr elementtype(i32) %user_count) #12, !srcloc !144
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %buf_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msc_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %thdev = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %thdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %buf_mutex.i = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex.i, i32 noundef 0) #12
  %enabled.i = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %enabled.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.intel_th_msc_deactivate.exit_crit_edge, label %if.then.i

entry.intel_th_msc_deactivate.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_th_msc_deactivate.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @msc_disable(ptr noundef %3) #12
  %user_count.i = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %user_count.i, i32 1, i32 3, i32 1) #12
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_count.i, ptr %user_count.i, i32 1, ptr elementtype(i32) %user_count.i) #12, !srcloc !144
  br label %intel_th_msc_deactivate.exit

intel_th_msc_deactivate.exit:                     ; preds = %if.then.i, %entry.intel_th_msc_deactivate.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %buf_mutex.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msc_buffer_unlocked_free_unless_used(ptr noundef %msc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %user_count = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @llvm.prefetch.p0(ptr %user_count, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %entry
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %user_count, ptr %user_count, i32 0, i32 -1, ptr elementtype(i32) %user_count) #12, !srcloc !154
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %0, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %cmp = icmp sgt i32 %asmresult3.i.i.i, 0
  br i1 %cmp, label %atomic_cmpxchg.exit.if.end2_crit_edge, label %if.else

atomic_cmpxchg.exit.if.end2_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.else:                                          ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3.i.i.i)
  %tobool.not = icmp eq i32 %asmresult3.i.i.i, 0
  br i1 %tobool.not, label %if.then1, label %if.else.if.end2_crit_edge

if.else.if.end2_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then1:                                         ; preds = %if.else
  %mode.i = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 23
  %1 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mode.i, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.then1.if.end2_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then3.i
  ]

if.then1.if.end2_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then.i:                                        ; preds = %if.then1
  %thdev.i.i = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 2
  %4 = ptrtoint ptr %thdev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thdev.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i.i, align 8
  %parent1.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent1.i.i, align 8
  %single_sgt.i.i = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 7
  %10 = ptrtoint ptr %single_sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %single_sgt.i.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %11, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  tail call void @sg_free_table(ptr noundef %single_sgt.i.i) #12
  %nr_pages.i.i = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 10
  %12 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_pages.i.i, align 4
  %shl15.mask.i.i = and i32 %13, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl15.mask.i.i)
  %cmp16.not.i.i = icmp eq i32 %shl15.mask.i.i, 0
  br i1 %cmp16.not.i.i, label %if.then.i.msc_buffer_contig_free.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.msc_buffer_contig_free.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_buffer_contig_free.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %base.i.i = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 13
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %off.017.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %add5.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %off.017.i.i
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.i.i = add i32 %17, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr4.i.i = getelementptr %struct.page, ptr %14, i32 %shr.i.i
  %mapping.i.i = getelementptr %struct.page, ptr %14, i32 %shr.i.i, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %mapping.i.i, align 4
  tail call void @__free_pages(ptr noundef %add.ptr4.i.i, i32 noundef 0) #12
  %add5.i.i = add nuw i32 %off.017.i.i, 4096
  %19 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_pages.i.i, align 4
  %shl.i.i = shl i32 %20, 12
  %cmp.i.i = icmp ult i32 %add5.i.i, %shl.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.msc_buffer_contig_free.exit.i_crit_edge

for.body.i.i.msc_buffer_contig_free.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_buffer_contig_free.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

msc_buffer_contig_free.exit.i:                    ; preds = %for.body.i.i.msc_buffer_contig_free.exit.i_crit_edge, %if.then.i.msc_buffer_contig_free.exit.i_crit_edge
  %21 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %nr_pages.i.i, align 4
  br label %if.end2

if.then3.i:                                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @msc_buffer_multi_free(ptr noundef %msc) #12
  br label %if.end2

if.end2:                                          ; preds = %if.then3.i, %msc_buffer_contig_free.exit.i, %if.then1.if.end2_crit_edge, %if.else.if.end2_crit_edge, %atomic_cmpxchg.exit.if.end2_crit_edge
  %ret.0 = phi i32 [ 0, %if.else.if.end2_crit_edge ], [ -16, %atomic_cmpxchg.exit.if.end2_crit_edge ], [ 0, %if.then1.if.end2_crit_edge ], [ 0, %msc_buffer_contig_free.exit.i ], [ 0, %if.then3.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msc_buffer_multi_free(ptr noundef %msc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %win_list = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 6
  %0 = ptrtoint ptr %win_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %win_list, align 4
  %cmp.not18 = icmp eq ptr %1, %win_list
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %nr_pages.i = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 10
  %base.i = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 13
  %base_addr.i = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 14
  %mbuf.i = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 3
  %mbuf_priv.i = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %msc_buffer_win_free.exit.for.body_crit_edge, %for.body.lr.ph
  %win.019 = phi ptr [ %1, %for.body.lr.ph ], [ %iter.0, %msc_buffer_win_free.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %win.019 to i32
  call void @__asan_load4_noabort(i32 %2)
  %iter.0 = load ptr, ptr %win.019, align 4
  %nr_blocks.i = getelementptr inbounds %struct.msc_window, ptr %win.019, i32 0, i32 4
  %3 = ptrtoint ptr %nr_blocks.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_blocks.i, align 4
  %5 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_pages.i, align 4
  %sub.i = sub i32 %6, %4
  store i32 %sub.i, ptr %nr_pages.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %win.019) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.list_del.exit.i_crit_edge

for.body.list_del.exit.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %win.019, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %win.019 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %win.019, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %win.019 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %win.019, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %win.019, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %win_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %win_list, align 4
  %cmp.i.not.i = icmp eq ptr %16, %win_list
  br i1 %cmp.i.not.i, label %if.then.i, label %list_del.exit.i.if.end.i_crit_edge

list_del.exit.i.if.end.i_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %base.i, align 4
  %18 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %base_addr.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del.exit.i.if.end.i_crit_edge
  %19 = ptrtoint ptr %mbuf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mbuf.i, align 4
  %tobool2.not.i = icmp eq ptr %20, null
  br i1 %tobool2.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %free_window.i = getelementptr inbounds %struct.msu_buffer, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %free_window.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %free_window.i, align 4
  %tobool4.not.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then5.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %mbuf_priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mbuf_priv.i, align 4
  %sgt.i = getelementptr inbounds %struct.msc_window, ptr %win.019, i32 0, i32 8
  %25 = ptrtoint ptr %sgt.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sgt.i, align 4
  tail call void %22(ptr noundef %24, ptr noundef %26) #12
  br label %msc_buffer_win_free.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %sgt.i.i = getelementptr inbounds %struct.msc_window, ptr %win.019, i32 0, i32 8
  %nr_segs.i.i = getelementptr inbounds %struct.msc_window, ptr %win.019, i32 0, i32 5
  %27 = ptrtoint ptr %nr_segs.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_segs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp2.not.i.i = icmp eq i32 %28, 0
  br i1 %cmp2.not.i.i, label %if.else.i.__msc_buffer_win_free.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.else.i.__msc_buffer_win_free.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__msc_buffer_win_free.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.else.i
  %29 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sgt.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %msc1.i.i = getelementptr inbounds %struct.msc_window, ptr %win.019, i32 0, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %sg_virt.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %sg.04.i.i = phi ptr [ %32, %for.body.lr.ph.i.i ], [ %call4.i.i, %sg_virt.exit.i.i.for.body.i.i_crit_edge ]
  %i.03.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %sg_virt.exit.i.i.for.body.i.i_crit_edge ]
  %33 = ptrtoint ptr %sg.04.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sg.04.i.i, align 4
  %and.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_page.exit.i.i, label %do.body2.i.i.i, !prof !141

do.body2.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

sg_page.exit.i.i:                                 ; preds = %for.body.i.i
  %and.i.i.i = and i32 %34, -4
  %35 = inttoptr i32 %and.i.i.i to ptr
  %mapping.i.i = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %mapping.i.i, align 4
  %37 = ptrtoint ptr %sg.04.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sg.04.i.i, align 4
  %and.i.i.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_virt.exit.i.i, label %do.body2.i.i.i.i, !prof !141

do.body2.i.i.i.i:                                 ; preds = %sg_page.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

sg_virt.exit.i.i:                                 ; preds = %sg_page.exit.i.i
  %39 = ptrtoint ptr %msc1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %msc1.i.i, align 4
  %thdev.i.i = getelementptr inbounds %struct.msc, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %thdev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %thdev.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent.i.i, align 8
  %parent2.i.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %parent2.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent2.i.i, align 8
  %and.i.i1.i.i = and i32 %38, -4
  %47 = inttoptr i32 %and.i.i1.i.i to ptr
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %47) #12
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.04.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %49
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.04.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_address.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %46, i32 noundef 4096, ptr noundef %add.ptr.i.i.i, i32 noundef %51, i32 noundef 0) #12
  %inc.i.i = add nuw i32 %i.03.i.i, 1
  %call4.i.i = tail call ptr @sg_next(ptr noundef %sg.04.i.i) #12
  %52 = ptrtoint ptr %nr_segs.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_segs.i.i, align 4
  %cmp.i22.i = icmp ult i32 %inc.i.i, %53
  br i1 %cmp.i22.i, label %sg_virt.exit.i.i.for.body.i.i_crit_edge, label %sg_virt.exit.i.i.__msc_buffer_win_free.exit.i_crit_edge

sg_virt.exit.i.i.__msc_buffer_win_free.exit.i_crit_edge: ; preds = %sg_virt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__msc_buffer_win_free.exit.i

sg_virt.exit.i.i.for.body.i.i_crit_edge:          ; preds = %sg_virt.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

__msc_buffer_win_free.exit.i:                     ; preds = %sg_virt.exit.i.i.__msc_buffer_win_free.exit.i_crit_edge, %if.else.i.__msc_buffer_win_free.exit.i_crit_edge
  %54 = ptrtoint ptr %sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sgt.i.i, align 4
  tail call void @sg_free_table(ptr noundef %55) #12
  br label %msc_buffer_win_free.exit

msc_buffer_win_free.exit:                         ; preds = %__msc_buffer_win_free.exit.i, %if.then5.i
  tail call void @kfree(ptr noundef %win.019) #12
  %cmp.not = icmp eq ptr %iter.0, %win_list
  br i1 %cmp.not, label %msc_buffer_win_free.exit.for.end_crit_edge, label %msc_buffer_win_free.exit.for.body_crit_edge

msc_buffer_win_free.exit.for.body_crit_edge:      ; preds = %msc_buffer_win_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

msc_buffer_win_free.exit.for.end_crit_edge:       ; preds = %msc_buffer_win_free.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %msc_buffer_win_free.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @msc_win_total_sz(ptr nocapture noundef readonly %win) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_segs = getelementptr inbounds %struct.msc_window, ptr %win, i32 0, i32 5
  %0 = ptrtoint ptr %nr_segs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_segs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp30.not = icmp eq i32 %1, 0
  br i1 %cmp30.not, label %entry.cleanup7_crit_edge, label %for.body.preheader

entry.cleanup7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup7

for.body.preheader:                               ; preds = %entry
  %sgt = getelementptr inbounds %struct.msc_window, ptr %win, i32 0, i32 8
  %2 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sgt, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %size.033 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %blk.032 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.031 = phi ptr [ %call6, %for.inc.for.body_crit_edge ], [ %5, %for.body.preheader ]
  %6 = ptrtoint ptr %sg.031 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sg.031, align 4
  %and.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !141

do.body2.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

sg_virt.exit:                                     ; preds = %for.body
  %and.i.i = and i32 %7, -4
  %8 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %8) #12
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.031, i32 0, i32 1
  %9 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %10
  %hw_tag.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i, i32 0, i32 5
  %11 = ptrtoint ptr %hw_tag.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %hw_tag.i, align 1
  %and.i = and i32 %12, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %cleanup.thread

cleanup.thread:                                   ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #14
  %nr_blocks = getelementptr inbounds %struct.msc_window, ptr %win, i32 0, i32 4
  %13 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_blocks, align 4
  %shl = shl i32 %14, 12
  br label %cleanup7

if.end:                                           ; preds = %sg_virt.exit
  %valid_dw.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i, i32 0, i32 6
  %15 = ptrtoint ptr %valid_dw.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %valid_dw.i, align 1
  %mul.i = shl i32 %16, 2
  %add = add i32 %mul.i, %size.033
  %and.i18 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool.not.i19 = icmp eq i32 %and.i18, 0
  br i1 %tobool.not.i19, label %msc_block_last_written.exit, label %if.end.cleanup7_crit_edge

if.end.cleanup7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup7

msc_block_last_written.exit:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  %sub.i.i = add i32 %mul.i, -64
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %block_sz.i.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i, i32 0, i32 1
  %17 = ptrtoint ptr %block_sz.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %block_sz.i.i, align 1
  %mul.i4.i = shl i32 %18, 6
  %sub.i5.i = add i32 %mul.i4.i, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %sub.i5.i)
  %cmp.not.i.not = icmp eq i32 %retval.0.i.i, %sub.i5.i
  br i1 %cmp.not.i.not, label %for.inc, label %msc_block_last_written.exit.cleanup7_crit_edge

msc_block_last_written.exit.cleanup7_crit_edge:   ; preds = %msc_block_last_written.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup7

for.inc:                                          ; preds = %msc_block_last_written.exit
  %inc = add nuw i32 %blk.032, 1
  %call6 = tail call ptr @sg_next(ptr noundef %sg.031) #12
  %19 = ptrtoint ptr %nr_segs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_segs, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup7_crit_edge

for.inc.cleanup7_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup7

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

cleanup7:                                         ; preds = %for.inc.cleanup7_crit_edge, %msc_block_last_written.exit.cleanup7_crit_edge, %if.end.cleanup7_crit_edge, %cleanup.thread, %entry.cleanup7_crit_edge
  %retval.2 = phi i32 [ %shl, %cleanup.thread ], [ 0, %entry.cleanup7_crit_edge ], [ %add, %if.end.cleanup7_crit_edge ], [ %add, %for.inc.cleanup7_crit_edge ], [ %add, %msc_block_last_written.exit.cleanup7_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intel_th_trace_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msc_disable(ptr noundef %msc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_win = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 8
  %0 = ptrtoint ptr %cur_win to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_win, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 19, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !140

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 824, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %mode = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 23
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp24 = icmp eq i32 %4, 1
  br i1 %cmp24, label %if.then25, label %if.end.if.end27_crit_edge

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call fastcc i32 @msc_win_set_lockout(ptr noundef %1, i32 noundef 1, i32 noundef 2)
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end.if.end27_crit_edge
  %mbuf = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 3
  %5 = ptrtoint ptr %mbuf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mbuf, align 4
  %tobool28.not = icmp eq ptr %6, null
  br i1 %tobool28.not, label %if.end27.if.end34_crit_edge, label %land.lhs.true

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end27
  %deactivate = getelementptr inbounds %struct.msu_buffer, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %deactivate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %deactivate, align 4
  %tobool30.not = icmp eq ptr %8, null
  br i1 %tobool30.not, label %land.lhs.true.if.end34_crit_edge, label %if.then31

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %mbuf_priv = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 4
  %9 = ptrtoint ptr %mbuf_priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mbuf_priv, align 4
  tail call void %8(ptr noundef %10) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %land.lhs.true.if.end34_crit_edge, %if.end27.if.end34_crit_edge
  %do_irq.i = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 22
  %11 = ptrtoint ptr %do_irq.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %do_irq.i, align 1
  %12 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.end34.intel_th_msu_deinit.exit_crit_edge, label %if.end.i

if.end34.intel_th_msu_deinit.exit_crit_edge:      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %intel_th_msu_deinit.exit

if.end.i:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %msu_base.i = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 1
  %13 = ptrtoint ptr %msu_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %msu_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #12, !srcloc !145
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %index.i = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 25
  %17 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool1.not.i = icmp eq i32 %18, 0
  %cond.i = select i1 %tobool1.not.i, i32 -65537, i32 -16777217
  %and.i = and i32 %cond.i, %16
  %19 = ptrtoint ptr %msu_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %msu_base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @arm_heavy_mb() #12
  %21 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %21) #12, !srcloc !148
  br label %intel_th_msu_deinit.exit

intel_th_msu_deinit.exit:                         ; preds = %if.end.i, %if.end34.intel_th_msu_deinit.exit_crit_edge
  %thdev = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 2
  %22 = ptrtoint ptr %thdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %thdev, align 4
  %call35 = tail call i32 @intel_th_trace_disable(ptr noundef %23) #12
  %24 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp37 = icmp eq i32 %25, 0
  br i1 %cmp37, label %if.then38, label %intel_th_msu_deinit.exit.if.end67_crit_edge

intel_th_msu_deinit.exit.if.end67_crit_edge:      ; preds = %intel_th_msu_deinit.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then38:                                        ; preds = %intel_th_msu_deinit.exit
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %msc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %msc, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 260
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %single_wrap = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 12
  %29 = ptrtoint ptr %single_wrap to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load = load i8, ptr %single_wrap, align 4
  %sh.diff = lshr i32 %28, 18
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %single_wrap, align 4
  %30 = ptrtoint ptr %msc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %msc, align 4
  %add.ptr46 = getelementptr i8, ptr %31, i32 272
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #12, !srcloc !145
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %nr_pages = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 10
  %34 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_pages, align 4
  %shl = shl i32 %35, 12
  %sub = add i32 %shl, -1
  %and48 = and i32 %sub, %33
  %single_sz = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 11
  %36 = ptrtoint ptr %single_sz to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and48, ptr %single_sz, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msc_disable.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msc_disable, %if.then59)) #12
          to label %if.end67 [label %if.then59], !srcloc !152

if.then59:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %thdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %thdev, align 4
  %39 = ptrtoint ptr %single_sz to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %single_sz, align 4
  %41 = ptrtoint ptr %single_wrap to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load63 = load i8, ptr %single_wrap, align 4
  %bf.lshr = lshr i8 %bf.load63, 7
  %bf.cast = zext i8 %bf.lshr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msc_disable.__UNIQUE_ID_ddebug230, ptr noundef %38, ptr noundef nonnull @.str.18, i32 noundef %33, i32 noundef %40, i32 noundef %bf.cast) #12
  br label %if.end67

if.end67:                                         ; preds = %if.then59, %if.then38, %intel_th_msu_deinit.exit.if.end67_crit_edge
  %42 = ptrtoint ptr %msc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %msc, align 4
  %add.ptr69 = getelementptr i8, ptr %43, i32 256
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #12, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %45 = and i32 %44, -16777217
  %46 = ptrtoint ptr %msc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %msc, align 4
  %add.ptr73 = getelementptr i8, ptr %47, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %45) #12, !srcloc !148
  %48 = ptrtoint ptr %mbuf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mbuf, align 4
  %tobool75.not = icmp eq ptr %49, null
  br i1 %tobool75.not, label %if.end67.if.end85_crit_edge, label %land.lhs.true76

if.end67.if.end85_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

land.lhs.true76:                                  ; preds = %if.end67
  %ready = getelementptr inbounds %struct.msu_buffer, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %ready to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ready, align 4
  %tobool78.not = icmp eq ptr %51, null
  br i1 %tobool78.not, label %land.lhs.true76.if.end85_crit_edge, label %if.then79

land.lhs.true76.if.end85_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

if.then79:                                        ; preds = %land.lhs.true76
  %mbuf_priv82 = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 4
  %52 = ptrtoint ptr %mbuf_priv82 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mbuf_priv82, align 4
  %sgt = getelementptr inbounds %struct.msc_window, ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sgt, align 4
  %nr_segs.i = getelementptr inbounds %struct.msc_window, ptr %1, i32 0, i32 5
  %56 = ptrtoint ptr %nr_segs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr_segs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp30.not.i = icmp eq i32 %57, 0
  br i1 %cmp30.not.i, label %if.then79.msc_win_total_sz.exit_crit_edge, label %for.body.preheader.i

if.then79.msc_win_total_sz.exit_crit_edge:        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_win_total_sz.exit

for.body.preheader.i:                             ; preds = %if.then79
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %size.033.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %blk.032.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %sg.031.i = phi ptr [ %call6.i, %for.inc.i.for.body.i_crit_edge ], [ %59, %for.body.preheader.i ]
  %60 = ptrtoint ptr %sg.031.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sg.031.i, align 4
  %and.i.i.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !141

do.body2.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

sg_virt.exit.i:                                   ; preds = %for.body.i
  %and.i.i.i = and i32 %61, -4
  %62 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %62) #12
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.031.i, i32 0, i32 1
  %63 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %64
  %hw_tag.i.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i, i32 0, i32 5
  %65 = ptrtoint ptr %hw_tag.i.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %hw_tag.i.i, align 1
  %and.i.i = and i32 %66, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.end.i196, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %nr_blocks.i = getelementptr inbounds %struct.msc_window, ptr %1, i32 0, i32 4
  %67 = ptrtoint ptr %nr_blocks.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr_blocks.i, align 4
  %shl.i = shl i32 %68, 12
  br label %msc_win_total_sz.exit

if.end.i196:                                      ; preds = %sg_virt.exit.i
  %valid_dw.i.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i, i32 0, i32 6
  %69 = ptrtoint ptr %valid_dw.i.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load i32, ptr %valid_dw.i.i, align 1
  %mul.i.i = shl i32 %70, 2
  %add.i = add i32 %mul.i.i, %size.033.i
  %and.i18.i = and i32 %66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18.i)
  %tobool.not.i19.i = icmp eq i32 %and.i18.i, 0
  br i1 %tobool.not.i19.i, label %msc_block_last_written.exit.i, label %if.end.i196.msc_win_total_sz.exit_crit_edge

if.end.i196.msc_win_total_sz.exit_crit_edge:      ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_win_total_sz.exit

msc_block_last_written.exit.i:                    ; preds = %if.end.i196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i.i.i = icmp eq i32 %70, 0
  %sub.i.i.i = add i32 %mul.i.i, -64
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %block_sz.i.i.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %block_sz.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %72 = load i32, ptr %block_sz.i.i.i, align 1
  %mul.i4.i.i = shl i32 %72, 6
  %sub.i5.i.i = add i32 %mul.i4.i.i, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %sub.i5.i.i)
  %cmp.not.i.not.i = icmp eq i32 %retval.0.i.i.i, %sub.i5.i.i
  br i1 %cmp.not.i.not.i, label %for.inc.i, label %msc_block_last_written.exit.i.msc_win_total_sz.exit_crit_edge

msc_block_last_written.exit.i.msc_win_total_sz.exit_crit_edge: ; preds = %msc_block_last_written.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_win_total_sz.exit

for.inc.i:                                        ; preds = %msc_block_last_written.exit.i
  %inc.i = add nuw i32 %blk.032.i, 1
  %call6.i = tail call ptr @sg_next(ptr noundef %sg.031.i) #12
  %73 = ptrtoint ptr %nr_segs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nr_segs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %74
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.msc_win_total_sz.exit_crit_edge

for.inc.i.msc_win_total_sz.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_win_total_sz.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

msc_win_total_sz.exit:                            ; preds = %for.inc.i.msc_win_total_sz.exit_crit_edge, %msc_block_last_written.exit.i.msc_win_total_sz.exit_crit_edge, %if.end.i196.msc_win_total_sz.exit_crit_edge, %cleanup.thread.i, %if.then79.msc_win_total_sz.exit_crit_edge
  %retval.2.i = phi i32 [ %shl.i, %cleanup.thread.i ], [ 0, %if.then79.msc_win_total_sz.exit_crit_edge ], [ %add.i, %for.inc.i.msc_win_total_sz.exit_crit_edge ], [ %add.i, %msc_block_last_written.exit.i.msc_win_total_sz.exit_crit_edge ], [ %add.i, %if.end.i196.msc_win_total_sz.exit_crit_edge ]
  %call84 = tail call i32 %51(ptr noundef %53, ptr noundef %55, i32 noundef %retval.2.i) #12
  br label %if.end85

if.end85:                                         ; preds = %msc_win_total_sz.exit, %land.lhs.true76.if.end85_crit_edge, %if.end67.if.end85_crit_edge
  %75 = ptrtoint ptr %do_irq.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load86 = load i8, ptr %do_irq.i, align 1
  %bf.clear87 = and i8 %bf.load86, 127
  store i8 %bf.clear87, ptr %do_irq.i, align 1
  %orig_addr = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 15
  %76 = ptrtoint ptr %orig_addr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %orig_addr, align 4
  %78 = ptrtoint ptr %msc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %msc, align 4
  %add.ptr90 = getelementptr i8, ptr %79, i32 264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @arm_heavy_mb() #12
  %80 = tail call i32 @llvm.bswap.i32(i32 %77) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %80) #12, !srcloc !148
  %orig_sz = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 16
  %81 = ptrtoint ptr %orig_sz to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %orig_sz, align 4
  %83 = ptrtoint ptr %msc to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %msc, align 4
  %add.ptr92 = getelementptr i8, ptr %84, i32 268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @arm_heavy_mb() #12
  %85 = tail call i32 @llvm.bswap.i32(i32 %82) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %85) #12, !srcloc !148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msc_disable.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msc_disable, %if.then105)) #12
          to label %do.end113 [label %if.then105], !srcloc !152

if.then105:                                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  %86 = ptrtoint ptr %thdev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %thdev, align 4
  %88 = ptrtoint ptr %msc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %msc, align 4
  %add.ptr109 = getelementptr i8, ptr %89, i32 284
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr109) #12, !srcloc !145
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msc_disable.__UNIQUE_ID_ddebug231, ptr noundef %87, ptr noundef nonnull @.str.19, i32 noundef %91) #12
  br label %do.end113

do.end113:                                        ; preds = %if.then105, %if.end85
  %92 = ptrtoint ptr %msc to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %msc, align 4
  %add.ptr115 = getelementptr i8, ptr %93, i32 260
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #12, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msc_disable.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@msc_disable, %if.then129)) #12
          to label %do.end134 [label %if.then129], !srcloc !152

if.then129:                                       ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #14
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #12
  %96 = ptrtoint ptr %thdev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %thdev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msc_disable.__UNIQUE_ID_ddebug232, ptr noundef %97, ptr noundef nonnull @.str.20, i32 noundef %95) #12
  br label %do.end134

do.end134:                                        ; preds = %if.then129, %do.end113
  %98 = ptrtoint ptr %msc to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %msc, align 4
  %add.ptr136 = getelementptr i8, ptr %99, i32 8
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136) #12, !srcloc !145
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %index = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 25
  %102 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool138.not = icmp eq i32 %103, 0
  %cond = select i1 %tobool138.not, i32 65536, i32 16777216
  %and139 = and i32 %cond, %101
  %104 = ptrtoint ptr %msc to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %msc, align 4
  %add.ptr141 = getelementptr i8, ptr %105, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void @arm_heavy_mb() #12
  %106 = tail call i32 @llvm.bswap.i32(i32 %and139) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %106) #12, !srcloc !148
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intel_th_trace_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_msc_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %msc1 = getelementptr inbounds %struct.msc_iter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %msc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msc1, align 4
  %4 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ppos, align 8
  %user_count = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count, i32 noundef 4) #12
  %6 = ptrtoint ptr %user_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %user_count, align 4
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, %entry
  %c.0.i.i = phi i32 [ %7, %entry ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i)
  %cmp.i.i = icmp slt i32 %c.0.i.i, 0
  br i1 %cmp.i.i, label %do.body1.i.i.cleanup_crit_edge, label %do.cond3.i.i, !prof !140

do.body1.i.i.cleanup_crit_edge:                   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.cond3.i.i:                                     ; preds = %do.body1.i.i
  %add.i.i = add nuw i32 %c.0.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @llvm.prefetch.p0(ptr %user_count, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond3.i.i
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %user_count, ptr %user_count, i32 %c.0.i.i, i32 %add.i.i, ptr elementtype(i32) %user_count) #12, !srcloc !154
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !155
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %c.0.i.i
  br i1 %cmp.not.i.i.i, label %if.end, label %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, !prof !141

arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i.i

if.end:                                           ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  %mode = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 23
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %single_wrap = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 12
  %11 = ptrtoint ptr %single_wrap to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %single_wrap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then2, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %single_sz = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 11
  %12 = ptrtoint ptr %single_sz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %single_sz, align 4
  br label %if.end3

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %nr_pages = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_pages, align 4
  %shl = shl i32 %15, 12
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %size.0 = phi i32 [ %shl, %if.else ], [ %13, %if.then2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0)
  %tobool4.not = icmp eq i32 %size.0, 0
  br i1 %tobool4.not, label %if.end3.put_count_crit_edge, label %if.end6

if.end3.put_count_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_count

if.end6:                                          ; preds = %if.end3
  %conv = zext i32 %size.0 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv)
  %cmp7.not = icmp slt i64 %5, %conv
  br i1 %cmp7.not, label %if.end10, label %if.end6.put_count_crit_edge

if.end6.put_count_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_count

if.end10:                                         ; preds = %if.end6
  %conv11 = zext i32 %len to i64
  %add = add i64 %5, %conv11
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp13.not = icmp slt i64 %add, %conv
  %16 = trunc i64 %5 to i32
  %conv17 = sub i32 %size.0, %16
  %len.addr.0 = select i1 %cmp13.not, i32 %len, i32 %conv17
  %17 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %10, label %if.end10.put_count_crit_edge [
    i32 0, label %if.then22
    i32 1, label %if.then34
  ]

if.end10.put_count_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_count

if.then22:                                        ; preds = %if.end10
  %nr_pages.i = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 10
  %18 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_pages.i, align 4
  %shl.i = shl i32 %19, 12
  %single_wrap.i = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 12
  %20 = ptrtoint ptr %single_wrap.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %single_wrap.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end32.i, label %if.then.i

if.then.i:                                        ; preds = %if.then22
  %single_sz.i = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 11
  %21 = ptrtoint ptr %single_sz.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %single_sz.i, align 4
  %add.i = add i32 %22, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %add.i)
  %cmp.i = icmp ugt i32 %shl.i, %add.i
  br i1 %cmp.i, label %if.then2.i, label %if.then.i.if.end10.i_crit_edge

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then2.i:                                       ; preds = %if.then.i
  %sub.i = sub i32 %shl.i, %add.i
  %23 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %len.addr.0) #12
  %base.i = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 13
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp9.i.i.i = icmp slt i32 %23, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.then2.i
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.put_count_crit_edge, label %if.then27.i.i.i, !prof !141

land.rhs16.i.i.i.put_count_crit_edge:             ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_count

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %put_count

if.then.i.i.i.i:                                  ; preds = %if.then2.i
  tail call void @__check_object_size(ptr noundef %add.ptr.i, i32 noundef %23, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 174) #12
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %23, i32 -1226833920) #18, !srcloc !156
  %asmresult.i.i.i = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef %23) #12
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr.i, i32 noundef %23) #12
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %23, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %23, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool5.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool5.not.i, label %if.end.i, label %copy_to_user.exit.i.put_count_crit_edge

copy_to_user.exit.i.put_count_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_count

if.end.i:                                         ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr7.i = getelementptr i8, ptr %buf, i32 %23
  %sub8.i = sub i32 %len.addr.0, %23
  %add9.i = add i32 %23, %add.i
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i, %if.then.i.if.end10.i_crit_edge
  %rem.0.i = phi i32 [ %sub8.i, %if.end.i ], [ %len.addr.0, %if.then.i.if.end10.i_crit_edge ]
  %start.0.i = phi i32 [ %add9.i, %if.end.i ], [ %add.i, %if.then.i.if.end10.i_crit_edge ]
  %buf.addr.0.i = phi ptr [ %add.ptr7.i, %if.end.i ], [ %buf, %if.then.i.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.0.i)
  %tobool12.not.i = icmp eq i32 %rem.0.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.msc_single_to_user.exit_crit_edge, label %if.then13.i

if.end10.i.msc_single_to_user.exit_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_single_to_user.exit

if.then13.i:                                      ; preds = %if.end10.i
  %sub11.i = add i32 %shl.i, -1
  %and.i = and i32 %start.0.i, %sub11.i
  %27 = ptrtoint ptr %single_sz.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %single_sz.i, align 4
  %sub15.i = sub i32 %28, %and.i
  %29 = tail call i32 @llvm.umin.i32(i32 %rem.0.i, i32 %sub15.i) #12
  %base23.i = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 13
  %30 = ptrtoint ptr %base23.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base23.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %31, i32 %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp9.i.i84.i = icmp slt i32 %29, 0
  br i1 %cmp9.i.i84.i, label %land.rhs16.i.i87.i, label %if.then.i.i.i90.i

land.rhs16.i.i87.i:                               ; preds = %if.then13.i
  %.b1.i.i86.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i86.i, label %land.rhs16.i.i87.i.put_count_crit_edge, label %if.then27.i.i88.i, !prof !141

land.rhs16.i.i87.i.put_count_crit_edge:           ; preds = %land.rhs16.i.i87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_count

if.then27.i.i88.i:                                ; preds = %land.rhs16.i.i87.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %put_count

if.then.i.i.i90.i:                                ; preds = %if.then13.i
  tail call void @__check_object_size(ptr noundef %add.ptr24.i, i32 noundef %29, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 174) #12
  %call.i.i91.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i91.i, label %if.then.i.i.i90.i.copy_to_user.exit100.i_crit_edge, label %if.end.i.i95.i

if.then.i.i.i90.i.copy_to_user.exit100.i_crit_edge: ; preds = %if.then.i.i.i90.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit100.i

if.end.i.i95.i:                                   ; preds = %if.then.i.i.i90.i
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0.i, i32 %29, i32 -1226833920) #18, !srcloc !156
  %asmresult.i.i93.i = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i93.i)
  %cmp.i6.i94.i = icmp eq i32 %asmresult.i.i93.i, 0
  br i1 %cmp.i6.i94.i, label %if.then2.i.i98.i, label %if.end.i.i95.i.copy_to_user.exit100.i_crit_edge

if.end.i.i95.i.copy_to_user.exit100.i_crit_edge:  ; preds = %if.end.i.i95.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit100.i

if.then2.i.i98.i:                                 ; preds = %if.end.i.i95.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i96.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr24.i, i32 noundef %29) #12
  %call.i12.i.i97.i = tail call i32 @arm_copy_to_user(ptr noundef %buf.addr.0.i, ptr noundef %add.ptr24.i, i32 noundef %29) #12
  br label %copy_to_user.exit100.i

copy_to_user.exit100.i:                           ; preds = %if.then2.i.i98.i, %if.end.i.i95.i.copy_to_user.exit100.i_crit_edge, %if.then.i.i.i90.i.copy_to_user.exit100.i_crit_edge
  %n.addr.0.i99.i = phi i32 [ %29, %if.then.i.i.i90.i.copy_to_user.exit100.i_crit_edge ], [ %call.i12.i.i97.i, %if.then2.i.i98.i ], [ %29, %if.end.i.i95.i.copy_to_user.exit100.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i99.i)
  %tobool26.not.i = icmp eq i32 %n.addr.0.i99.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %copy_to_user.exit100.i.put_count_crit_edge

copy_to_user.exit100.i.put_count_crit_edge:       ; preds = %copy_to_user.exit100.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_count

if.end28.i:                                       ; preds = %copy_to_user.exit100.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub29.neg.i = sub i32 %29, %rem.0.i
  br label %msc_single_to_user.exit

if.end32.i:                                       ; preds = %if.then22
  %base33.i = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 13
  %33 = ptrtoint ptr %base33.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base33.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %34, i32 %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %cmp9.i.i107.i = icmp slt i32 %len.addr.0, 0
  br i1 %cmp9.i.i107.i, label %land.rhs16.i.i110.i, label %if.then.i.i.i113.i

land.rhs16.i.i110.i:                              ; preds = %if.end32.i
  %.b1.i.i109.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i109.i, label %land.rhs16.i.i110.i.put_count_crit_edge, label %if.then27.i.i111.i, !prof !141

land.rhs16.i.i110.i.put_count_crit_edge:          ; preds = %land.rhs16.i.i110.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_count

if.then27.i.i111.i:                               ; preds = %land.rhs16.i.i110.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %put_count

if.then.i.i.i113.i:                               ; preds = %if.end32.i
  tail call void @__check_object_size(ptr noundef %add.ptr34.i, i32 noundef %len.addr.0, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 174) #12
  %call.i.i114.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i114.i, label %if.then.i.i.i113.i.copy_to_user.exit123.i_crit_edge, label %if.end.i.i118.i

if.then.i.i.i113.i.copy_to_user.exit123.i_crit_edge: ; preds = %if.then.i.i.i113.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit123.i

if.end.i.i118.i:                                  ; preds = %if.then.i.i.i113.i
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %len.addr.0, i32 -1226833920) #18, !srcloc !156
  %asmresult.i.i116.i = extractvalue { i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i116.i)
  %cmp.i6.i117.i = icmp eq i32 %asmresult.i.i116.i, 0
  br i1 %cmp.i6.i117.i, label %if.then2.i.i121.i, label %if.end.i.i118.i.copy_to_user.exit123.i_crit_edge

if.end.i.i118.i.copy_to_user.exit123.i_crit_edge: ; preds = %if.end.i.i118.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit123.i

if.then2.i.i121.i:                                ; preds = %if.end.i.i118.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i119.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr34.i, i32 noundef %len.addr.0) #12
  %call.i12.i.i120.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr34.i, i32 noundef %len.addr.0) #12
  br label %copy_to_user.exit123.i

copy_to_user.exit123.i:                           ; preds = %if.then2.i.i121.i, %if.end.i.i118.i.copy_to_user.exit123.i_crit_edge, %if.then.i.i.i113.i.copy_to_user.exit123.i_crit_edge
  %n.addr.0.i122.i = phi i32 [ %len.addr.0, %if.then.i.i.i113.i.copy_to_user.exit123.i_crit_edge ], [ %call.i12.i.i120.i, %if.then2.i.i121.i ], [ %len.addr.0, %if.end.i.i118.i.copy_to_user.exit123.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i122.i)
  %tobool36.not.i = icmp eq i32 %n.addr.0.i122.i, 0
  br i1 %tobool36.not.i, label %copy_to_user.exit123.i.if.then26_crit_edge, label %copy_to_user.exit123.i.put_count_crit_edge

copy_to_user.exit123.i.put_count_crit_edge:       ; preds = %copy_to_user.exit123.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_count

copy_to_user.exit123.i.if.then26_crit_edge:       ; preds = %copy_to_user.exit123.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

msc_single_to_user.exit:                          ; preds = %if.end28.i, %if.end10.i.msc_single_to_user.exit_crit_edge
  %rem.1.neg.i = phi i32 [ %sub29.neg.i, %if.end28.i ], [ 0, %if.end10.i.msc_single_to_user.exit_crit_edge ]
  %sub31.i = add i32 %rem.1.neg.i, %len.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub31.i)
  %cmp24 = icmp sgt i32 %sub31.i, -1
  br i1 %cmp24, label %msc_single_to_user.exit.if.then26_crit_edge, label %msc_single_to_user.exit.put_count_crit_edge

msc_single_to_user.exit.put_count_crit_edge:      ; preds = %msc_single_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_count

msc_single_to_user.exit.if.then26_crit_edge:      ; preds = %msc_single_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

if.then26:                                        ; preds = %msc_single_to_user.exit.if.then26_crit_edge, %copy_to_user.exit123.i.if.then26_crit_edge
  %retval.0.i101 = phi i32 [ %sub31.i, %msc_single_to_user.exit.if.then26_crit_edge ], [ %len.addr.0, %copy_to_user.exit123.i.if.then26_crit_edge ]
  %conv27106 = zext i32 %retval.0.i101 to i64
  %36 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ppos, align 8
  %add28 = add i64 %37, %conv27106
  store i64 %add28, ptr %ppos, align 8
  br label %put_count

if.then34:                                        ; preds = %if.end10
  %eof.i = getelementptr inbounds %struct.msc_iter, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %eof.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %eof.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i77 = icmp eq i32 %39, 0
  br i1 %tobool.not.i77, label %if.end.i78, label %if.then34.if.then39_crit_edge

if.then34.if.then39_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

if.end.i78:                                       ; preds = %if.then34
  %40 = ptrtoint ptr %msc1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %msc1, align 4
  %start_win.i.i = getelementptr inbounds %struct.msc_iter, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %start_win.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %start_win.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i78.msc_iter_win_start.exit.i_crit_edge

if.end.i78.msc_iter_win_start.exit.i_crit_edge:   ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_iter_win_start.exit.i

if.end.i.i:                                       ; preds = %if.end.i78
  %win_list.i.i.i = getelementptr inbounds %struct.msc, ptr %41, i32 0, i32 6
  %44 = ptrtoint ptr %win_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %win_list.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %45, %win_list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %msc_oldest_window.exit.thread.i.i, label %if.end.i.i.i79

msc_oldest_window.exit.thread.i.i:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %start_win.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %start_win.i.i, align 4
  br label %if.then39

if.end.i.i.i79:                                   ; preds = %if.end.i.i
  %cur_win.i.i.i = getelementptr inbounds %struct.msc, ptr %41, i32 0, i32 8
  %47 = ptrtoint ptr %cur_win.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur_win.i.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %msc.i.i.i.i.i = getelementptr inbounds %struct.msc_window, ptr %48, i32 0, i32 6
  %51 = ptrtoint ptr %msc.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %msc.i.i.i.i.i, align 4
  %win_list.i.i.i.i.i = getelementptr inbounds %struct.msc, ptr %52, i32 0, i32 6
  %cmp.i.i.i.i.i = icmp eq ptr %50, %win_list.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i.i, ptr %win_list.i.i.i.i.i, ptr %48
  %53 = ptrtoint ptr %spec.select.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %retval.0.i.i.i.i = load ptr, ptr %spec.select.i.i.i.i, align 4
  %sgt.i.i.i = getelementptr inbounds %struct.msc_window, ptr %retval.0.i.i.i.i, i32 0, i32 8
  %54 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sgt.i.i.i, align 4
  %56 = ptrtoint ptr %win_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %win_list.i.i.i, align 4
  %cmp.i.not.i.i.i.i = icmp eq ptr %57, %win_list.i.i.i
  br i1 %cmp.i.not.i.i.i.i, label %if.end.i.i.i79.msc_oldest_window.exit.i.i_crit_edge, label %if.end.i.i.i79.for.body.i.i.i.i_crit_edge

if.end.i.i.i79.for.body.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i79
  br label %for.body.i.i.i.i

if.end.i.i.i79.msc_oldest_window.exit.i.i_crit_edge: ; preds = %if.end.i.i.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_oldest_window.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end.i.i.i79.for.body.i.i.i.i_crit_edge
  %win.032.i.i.i.i = phi ptr [ %win.0.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %57, %if.end.i.i.i79.for.body.i.i.i.i_crit_edge ]
  %found.031.i.i.i.i = phi i32 [ %spec.select.i11.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.end.i.i.i79.for.body.i.i.i.i_crit_edge ]
  %sgt4.i.i.i.i = getelementptr inbounds %struct.msc_window, ptr %win.032.i.i.i.i, i32 0, i32 8
  %58 = ptrtoint ptr %sgt4.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sgt4.i.i.i.i, align 4
  %cmp5.i.i.i.i = icmp eq ptr %59, %55
  %inc.i.i.i.i = zext i1 %cmp5.i.i.i.i to i32
  %spec.select.i11.i.i.i = add i32 %found.031.i.i.i.i, %inc.i.i.i.i
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %and.i.i.i.i.i.i.i.i = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i.i.i, label %msc_win_base.exit.i.i.i.i, label %do.body2.i.i.i.i.i.i.i, !prof !141

do.body2.i.i.i.i.i.i.i:                           ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

msc_win_base.exit.i.i.i.i:                        ; preds = %for.body.i.i.i.i
  %and.i.i.i.i.i.i.i = and i32 %63, -4
  %64 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %call1.i.i.i.i.i.i = tail call ptr @page_address(ptr noundef %64) #12
  %offset.i.i.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %61, i32 0, i32 1
  %65 = ptrtoint ptr %offset.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %call1.i.i.i.i.i.i, i32 %66
  %valid_dw.i.i.i.i.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i.i.i.i.i, i32 0, i32 6
  %67 = ptrtoint ptr %valid_dw.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 4)
  %68 = load i32, ptr %valid_dw.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i.i.i.i.i80 = icmp eq i32 %68, 0
  %mul.i.mask.i.i.i.i.i = and i32 %68, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %mul.i.mask.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %mul.i.mask.i.i.i.i.i, 16
  %retval.0.i.i.i.i.i = or i1 %tobool.not.i.i.i.i.i80, %tobool1.not.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i11.i.i.i)
  %tobool13.not.i.i.i.i = icmp eq i32 %spec.select.i11.i.i.i, 0
  %or.cond.i.i.i.i = select i1 %retval.0.i.i.i.i.i, i1 true, i1 %tobool13.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %for.inc.i.i.i.i, label %msc_find_window.exit.i.i.i

for.inc.i.i.i.i:                                  ; preds = %msc_win_base.exit.i.i.i.i
  %69 = ptrtoint ptr %win.032.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %win.0.i.i.i.i = load ptr, ptr %win.032.i.i.i.i, align 4
  %cmp.not.i.i.i.i = icmp eq ptr %win.0.i.i.i.i, %win_list.i.i.i
  br i1 %cmp.not.i.i.i.i, label %for.inc.i.i.i.i.msc_oldest_window.exitthread-pre-split.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.msc_oldest_window.exitthread-pre-split.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_oldest_window.exitthread-pre-split.i.i

msc_find_window.exit.i.i.i:                       ; preds = %msc_win_base.exit.i.i.i.i
  %tobool3.not.i.i.i = icmp eq ptr %win.032.i.i.i.i, null
  br i1 %tobool3.not.i.i.i, label %msc_find_window.exit.i.i.i.msc_oldest_window.exitthread-pre-split.i.i_crit_edge, label %msc_oldest_window.exit.thread15.i.i

msc_find_window.exit.i.i.i.msc_oldest_window.exitthread-pre-split.i.i_crit_edge: ; preds = %msc_find_window.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_oldest_window.exitthread-pre-split.i.i

msc_oldest_window.exit.thread15.i.i:              ; preds = %msc_find_window.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %start_win.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %win.032.i.i.i.i, ptr %start_win.i.i, align 4
  br label %if.end5.i.i

msc_oldest_window.exitthread-pre-split.i.i:       ; preds = %msc_find_window.exit.i.i.i.msc_oldest_window.exitthread-pre-split.i.i_crit_edge, %for.inc.i.i.i.i.msc_oldest_window.exitthread-pre-split.i.i_crit_edge
  %71 = ptrtoint ptr %win_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %.pr.i.i = load ptr, ptr %win_list.i.i.i, align 4
  br label %msc_oldest_window.exit.i.i

msc_oldest_window.exit.i.i:                       ; preds = %msc_oldest_window.exitthread-pre-split.i.i, %if.end.i.i.i79.msc_oldest_window.exit.i.i_crit_edge
  %72 = phi ptr [ %.pr.i.i, %msc_oldest_window.exitthread-pre-split.i.i ], [ %win_list.i.i.i, %if.end.i.i.i79.msc_oldest_window.exit.i.i_crit_edge ]
  %73 = ptrtoint ptr %start_win.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %start_win.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %72, null
  br i1 %tobool3.not.i.i, label %msc_oldest_window.exit.i.i.if.then39_crit_edge, label %msc_oldest_window.exit.i.i.if.end5.i.i_crit_edge

msc_oldest_window.exit.i.i.if.end5.i.i_crit_edge: ; preds = %msc_oldest_window.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i.i

msc_oldest_window.exit.i.i.if.then39_crit_edge:   ; preds = %msc_oldest_window.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

if.end5.i.i:                                      ; preds = %msc_oldest_window.exit.i.i.if.end5.i.i_crit_edge, %msc_oldest_window.exit.thread15.i.i
  %retval.0.i18.i.i = phi ptr [ %win.032.i.i.i.i, %msc_oldest_window.exit.thread15.i.i ], [ %72, %msc_oldest_window.exit.i.i.if.end5.i.i_crit_edge ]
  %win.i.i = getelementptr inbounds %struct.msc_iter, ptr %1, i32 0, i32 3
  %74 = ptrtoint ptr %win.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %retval.0.i18.i.i, ptr %win.i.i, align 4
  %start_block.i.i = getelementptr inbounds %struct.msc_iter, ptr %1, i32 0, i32 5
  %75 = ptrtoint ptr %start_block.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %start_block.i.i, align 4
  tail call fastcc void @msc_iter_block_start(ptr noundef %1) #12
  br label %msc_iter_win_start.exit.i

msc_iter_win_start.exit.i:                        ; preds = %if.end5.i.i, %if.end.i78.msc_iter_win_start.exit.i_crit_edge
  %block.i.i = getelementptr inbounds %struct.msc_iter, ptr %1, i32 0, i32 6
  %start_block.i = getelementptr inbounds %struct.msc_iter, ptr %1, i32 0, i32 5
  %wrap_count.i = getelementptr inbounds %struct.msc_iter, ptr %1, i32 0, i32 8
  %block_off.i = getelementptr inbounds %struct.msc_iter, ptr %1, i32 0, i32 7
  %offset.i = getelementptr inbounds %struct.msc_iter, ptr %1, i32 0, i32 4
  %win.i.i.i = getelementptr inbounds %struct.msc_iter, ptr %1, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %msc_iter_win_start.exit.i
  %u.sroa.5.0 = phi i32 [ 0, %msc_iter_win_start.exit.i ], [ %u.sroa.5.1, %cleanup.i.do.body.i_crit_edge ]
  %len.0.i = phi i32 [ %len.addr.0, %msc_iter_win_start.exit.i ], [ %len.1.i, %cleanup.i.do.body.i_crit_edge ]
  %76 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %block.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %and.i.i.i.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %msc_iter_bdesc.exit.i, label %do.body2.i.i.i.i, !prof !141

do.body2.i.i.i.i:                                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

msc_iter_bdesc.exit.i:                            ; preds = %do.body.i
  %and.i.i.i.i = and i32 %79, -4
  %80 = inttoptr i32 %and.i.i.i.i to ptr
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %80) #12
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %77, i32 0, i32 1
  %81 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %82
  %valid_dw.i.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i.i, i32 0, i32 6
  %83 = ptrtoint ptr %valid_dw.i.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %valid_dw.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i2.i = icmp eq i32 %84, 0
  %mul.i.i = shl i32 %84, 2
  %sub.i.i = add i32 %mul.i.i, -64
  %retval.0.i3.i = select i1 %tobool.not.i2.i, i32 0, i32 %sub.i.i
  %85 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %block.i.i, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %and.i.i.i.i5.i = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i5.i)
  %tobool.i.not.i.i.i6.i = icmp eq i32 %and.i.i.i.i5.i, 0
  br i1 %tobool.i.not.i.i.i6.i, label %msc_iter_bdesc.exit12.i, label %do.body2.i.i.i7.i, !prof !141

do.body2.i.i.i7.i:                                ; preds = %msc_iter_bdesc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

msc_iter_bdesc.exit12.i:                          ; preds = %msc_iter_bdesc.exit.i
  %and.i.i.i8.i = and i32 %88, -4
  %89 = inttoptr i32 %and.i.i.i8.i to ptr
  %call1.i.i9.i = tail call ptr @page_address(ptr noundef %89) #12
  %offset.i.i10.i = getelementptr inbounds %struct.scatterlist, ptr %86, i32 0, i32 1
  %90 = ptrtoint ptr %offset.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %offset.i.i10.i, align 4
  %add.ptr.i.i11.i = getelementptr i8, ptr %call1.i.i9.i, i32 64
  %add.ptr.i81 = getelementptr i8, ptr %add.ptr.i.i11.i, i32 %91
  %92 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %block.i.i, align 4
  %94 = ptrtoint ptr %start_block.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %start_block.i, align 4
  %cmp.i82 = icmp eq ptr %93, %95
  br i1 %cmp.i82, label %land.lhs.true.i, label %msc_iter_bdesc.exit12.i.if.end11.i_crit_edge

msc_iter_bdesc.exit12.i.if.end11.i_crit_edge:     ; preds = %msc_iter_bdesc.exit12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %msc_iter_bdesc.exit12.i
  %96 = ptrtoint ptr %wrap_count.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %wrap_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp8.i = icmp eq i32 %97, 2
  br i1 %cmp8.i, label %if.then9.i, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i83 = sub i32 4032, %retval.0.i3.i
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i81, i32 %retval.0.i3.i
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %land.lhs.true.i.if.end11.i_crit_edge, %msc_iter_bdesc.exit12.i.if.end11.i_crit_edge
  %src.0.i = phi ptr [ %add.ptr10.i, %if.then9.i ], [ %add.ptr.i81, %land.lhs.true.i.if.end11.i_crit_edge ], [ %add.ptr.i81, %msc_iter_bdesc.exit12.i.if.end11.i_crit_edge ]
  %tocopy.0.i = phi i32 [ %sub.i83, %if.then9.i ], [ %retval.0.i3.i, %land.lhs.true.i.if.end11.i_crit_edge ], [ %retval.0.i3.i, %msc_iter_bdesc.exit12.i.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tocopy.0.i)
  %tobool12.not.i84 = icmp eq i32 %tocopy.0.i, 0
  br i1 %tobool12.not.i84, label %if.end11.i.next_block.i_crit_edge, label %if.end14.i

if.end11.i.next_block.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_block.i

if.end14.i:                                       ; preds = %if.end11.i
  %98 = ptrtoint ptr %block_off.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %block_off.i, align 4
  %sub15.i85 = sub i32 %tocopy.0.i, %99
  %add.ptr17.i = getelementptr i8, ptr %src.0.i, i32 %99
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.i, i32 %sub15.i85)
  %cmp18.i = icmp ult i32 %len.0.i, %sub15.i85
  %100 = tail call i32 @llvm.umin.i32(i32 %len.0.i, i32 %sub15.i85) #12
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %u.sroa.5.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp9.i.i.i.i = icmp slt i32 %100, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end14.i
  %.b1.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.msc_win_to_user.exit.i_crit_edge, label %if.then27.i.i.i.i, !prof !141

land.rhs16.i.i.i.i.msc_win_to_user.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_win_to_user.exit.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %msc_win_to_user.exit.i

if.then.i.i.i.i.i:                                ; preds = %if.end14.i
  tail call void @__check_object_size(ptr noundef %add.ptr17.i, i32 noundef %100, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 174) #12
  %call.i.i.i.i87 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i.i87, label %if.then.i.i.i.i.i.msc_win_to_user.exit.i_crit_edge, label %if.end.i.i.i.i

if.then.i.i.i.i.i.msc_win_to_user.exit.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_win_to_user.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i.i
  %101 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr.i.i, i32 %100, i32 -1226833920) #18, !srcloc !156
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %101, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.then2.i.i.i.i, label %if.end.i.i.i.i.msc_win_to_user.exit.i_crit_edge

if.end.i.i.i.i.msc_win_to_user.exit.i_crit_edge:  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_win_to_user.exit.i

if.then2.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr17.i, i32 noundef %100) #12
  %call.i12.i.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr.i.i, ptr noundef %add.ptr17.i, i32 noundef %100) #12
  br label %msc_win_to_user.exit.i

msc_win_to_user.exit.i:                           ; preds = %if.then2.i.i.i.i, %if.end.i.i.i.i.msc_win_to_user.exit.i_crit_edge, %if.then.i.i.i.i.i.msc_win_to_user.exit.i_crit_edge, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.msc_win_to_user.exit.i_crit_edge
  %n.addr.0.i.i.i = phi i32 [ %100, %if.then.i.i.i.i.i.msc_win_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i.i, %if.then2.i.i.i.i ], [ %100, %if.end.i.i.i.i.msc_win_to_user.exit.i_crit_edge ], [ %100, %if.then27.i.i.i.i ], [ %100, %land.rhs16.i.i.i.i.msc_win_to_user.exit.i_crit_edge ]
  %sub.i14.i = sub i32 %100, %n.addr.0.i.i.i
  %add.i.i89 = add i32 %sub.i14.i, %u.sroa.5.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i.i)
  %tobool22.not.i = icmp ne i32 %n.addr.0.i.i.i, 0
  %narrow.i = select i1 %tobool22.not.i, i1 true, i1 %cmp18.i
  %sub26.i = sub i32 %len.0.i, %sub.i14.i
  %102 = ptrtoint ptr %block_off.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %block_off.i, align 4
  %add.i90 = add i32 %103, %sub.i14.i
  store i32 %add.i90, ptr %block_off.i, align 4
  %104 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %offset.i, align 4
  %add28.i = add i32 %105, %sub.i14.i
  store i32 %add28.i, ptr %offset.i, align 4
  br i1 %narrow.i, label %msc_win_to_user.exit.i.msc_buffer_iterate.exit_crit_edge, label %msc_win_to_user.exit.i.next_block.i_crit_edge

msc_win_to_user.exit.i.next_block.i_crit_edge:    ; preds = %msc_win_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %next_block.i

msc_win_to_user.exit.i.msc_buffer_iterate.exit_crit_edge: ; preds = %msc_win_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_buffer_iterate.exit

next_block.i:                                     ; preds = %msc_win_to_user.exit.i.next_block.i_crit_edge, %if.end11.i.next_block.i_crit_edge
  %u.sroa.5.1 = phi i32 [ %u.sroa.5.0, %if.end11.i.next_block.i_crit_edge ], [ %add.i.i89, %msc_win_to_user.exit.i.next_block.i_crit_edge ]
  %len.1.i = phi i32 [ %len.0.i, %if.end11.i.next_block.i_crit_edge ], [ %sub26.i, %msc_win_to_user.exit.i.next_block.i_crit_edge ]
  %106 = ptrtoint ptr %block_off.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %block_off.i, align 4
  %107 = ptrtoint ptr %wrap_count.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %wrap_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool.not.i15.i = icmp eq i32 %108, 0
  %109 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %block.i.i, align 4
  br i1 %tobool.not.i15.i, label %land.lhs.true8.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %next_block.i
  %111 = ptrtoint ptr %start_block.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %start_block.i, align 4
  %cmp.i.i91 = icmp eq ptr %110, %112
  br i1 %cmp.i.i91, label %if.then.i.i92, label %land.lhs.true.i.i.if.end13.i.i_crit_edge

land.lhs.true.i.i.if.end13.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.then.i.i92:                                    ; preds = %land.lhs.true.i.i
  %dec.i.i = add i32 %108, -1
  %113 = ptrtoint ptr %wrap_count.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %dec.i.i, ptr %wrap_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool3.not.i18.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool3.not.i18.i, label %if.then4.i.i, label %if.then.i.i92.if.end13.i.i_crit_edge

if.then.i.i92.if.end13.i.i_crit_edge:             ; preds = %if.then.i.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i92
  %114 = ptrtoint ptr %win.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %win.i.i.i, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %msc.i.i.i.i19.i = getelementptr inbounds %struct.msc_window, ptr %115, i32 0, i32 6
  %118 = ptrtoint ptr %msc.i.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %msc.i.i.i.i19.i, align 4
  %win_list.i.i.i.i20.i = getelementptr inbounds %struct.msc, ptr %119, i32 0, i32 6
  %cmp.i.i.i.i21.i = icmp eq ptr %117, %win_list.i.i.i.i20.i
  %spec.select.i.i.i22.i = select i1 %cmp.i.i.i.i21.i, ptr %win_list.i.i.i.i20.i, ptr %115
  %120 = ptrtoint ptr %spec.select.i.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %retval.0.i.i.i23.i = load ptr, ptr %spec.select.i.i.i22.i, align 4
  store ptr %retval.0.i.i.i23.i, ptr %win.i.i.i, align 4
  %121 = ptrtoint ptr %start_block.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %start_block.i, align 4
  %122 = ptrtoint ptr %start_win.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %start_win.i.i, align 4
  %cmp.i.i.i93 = icmp eq ptr %retval.0.i.i.i23.i, %123
  br i1 %cmp.i.i.i93, label %if.then4.i.i.do.end.sink.split.i_crit_edge, label %if.then4.i.i.cleanup.sink.split.i_crit_edge

if.then4.i.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then4.i.i.do.end.sink.split.i_crit_edge:       ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.sink.split.i

land.lhs.true8.i.i:                               ; preds = %next_block.i
  %124 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %110, align 4
  %and.i.i.i.i.i.i = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %msc_iter_bdesc.exit.i.i, label %do.body2.i.i.i.i.i, !prof !141

do.body2.i.i.i.i.i:                               ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

msc_iter_bdesc.exit.i.i:                          ; preds = %land.lhs.true8.i.i
  %and.i.i.i.i28.i = and i32 %125, -4
  %126 = inttoptr i32 %and.i.i.i.i28.i to ptr
  %call1.i.i.i.i = tail call ptr @page_address(ptr noundef %126) #12
  %offset.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %110, i32 0, i32 1
  %127 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %offset.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call1.i.i.i.i, i32 %128
  %hw_tag.i.i.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i.i.i, i32 0, i32 5
  %129 = ptrtoint ptr %hw_tag.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %130 = load i32, ptr %hw_tag.i.i.i, align 1
  %and.i.i.i = and i32 %130, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %msc_block_last_written.exit.i.i, label %msc_iter_bdesc.exit.i.i.if.then11.i.i_crit_edge

msc_iter_bdesc.exit.i.i.if.then11.i.i_crit_edge:  ; preds = %msc_iter_bdesc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

msc_block_last_written.exit.i.i:                  ; preds = %msc_iter_bdesc.exit.i.i
  %valid_dw.i.i.i.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i.i.i, i32 0, i32 6
  %131 = ptrtoint ptr %valid_dw.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %131, i32 4)
  %132 = load i32, ptr %valid_dw.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i.i.i.i = icmp eq i32 %132, 0
  %mul.i.i.i.i = shl i32 %132, 2
  %sub.i.i.i.i = add i32 %mul.i.i.i.i, -64
  %retval.0.i.i50.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %sub.i.i.i.i
  %block_sz.i.i.i.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %133 = ptrtoint ptr %block_sz.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %133, i32 4)
  %134 = load i32, ptr %block_sz.i.i.i.i, align 1
  %mul.i4.i.i.i = shl i32 %134, 6
  %sub.i5.i.i.i = add i32 %mul.i4.i.i.i, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i50.i.i, i32 %sub.i5.i.i.i)
  %cmp.not.i.not.i.i = icmp eq i32 %retval.0.i.i50.i.i, %sub.i5.i.i.i
  br i1 %cmp.not.i.not.i.i, label %msc_block_last_written.exit.i.i.if.end13.i.i_crit_edge, label %msc_block_last_written.exit.i.i.if.then11.i.i_crit_edge

msc_block_last_written.exit.i.i.if.then11.i.i_crit_edge: ; preds = %msc_block_last_written.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

msc_block_last_written.exit.i.i.if.end13.i.i_crit_edge: ; preds = %msc_block_last_written.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

if.then11.i.i:                                    ; preds = %msc_block_last_written.exit.i.i.if.then11.i.i_crit_edge, %msc_iter_bdesc.exit.i.i.if.then11.i.i_crit_edge
  %135 = ptrtoint ptr %win.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %win.i.i.i, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %msc.i.i.i53.i.i = getelementptr inbounds %struct.msc_window, ptr %136, i32 0, i32 6
  %139 = ptrtoint ptr %msc.i.i.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %msc.i.i.i53.i.i, align 4
  %win_list.i.i.i54.i.i = getelementptr inbounds %struct.msc, ptr %140, i32 0, i32 6
  %cmp.i.i.i55.i.i = icmp eq ptr %138, %win_list.i.i.i54.i.i
  %spec.select.i.i56.i.i = select i1 %cmp.i.i.i55.i.i, ptr %win_list.i.i.i54.i.i, ptr %136
  %141 = ptrtoint ptr %spec.select.i.i56.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %retval.0.i.i57.i.i = load ptr, ptr %spec.select.i.i56.i.i, align 4
  store ptr %retval.0.i.i57.i.i, ptr %win.i.i.i, align 4
  %142 = ptrtoint ptr %start_block.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %start_block.i, align 4
  %143 = ptrtoint ptr %start_win.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %start_win.i.i, align 4
  %cmp.i60.i.i = icmp eq ptr %retval.0.i.i57.i.i, %144
  br i1 %cmp.i60.i.i, label %if.then11.i.i.do.end.sink.split.i_crit_edge, label %if.then11.i.i.cleanup.sink.split.i_crit_edge

if.then11.i.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then11.i.i.do.end.sink.split.i_crit_edge:      ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.sink.split.i

if.end13.i.i:                                     ; preds = %msc_block_last_written.exit.i.i.if.end13.i.i_crit_edge, %if.then.i.i92.if.end13.i.i_crit_edge, %land.lhs.true.i.i.if.end13.i.i_crit_edge
  %145 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %block.i.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %146, align 4
  %and.i67.i.i = and i32 %148, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i67.i.i, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.then16.i.i

if.then16.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %149 = ptrtoint ptr %win.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %win.i.i.i, align 4
  %sgt.i.i30.i = getelementptr inbounds %struct.msc_window, ptr %150, i32 0, i32 8
  %151 = ptrtoint ptr %sgt.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %sgt.i.i30.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 4
  br label %if.end22.i.i

if.else.i.i:                                      ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call20.i.i = tail call ptr @sg_next(ptr noundef %146) #12
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.else.i.i, %if.then16.i.i
  %storemerge.i.i = phi ptr [ %call20.i.i, %if.else.i.i ], [ %154, %if.then16.i.i ]
  %155 = ptrtoint ptr %block.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %storemerge.i.i, ptr %block.i.i, align 4
  %156 = ptrtoint ptr %wrap_count.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %wrap_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool24.not.i.i = icmp eq i32 %157, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true25.i.i, label %if.end22.i.i.cleanup.i_crit_edge

if.end22.i.i.cleanup.i_crit_edge:                 ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

land.lhs.true25.i.i:                              ; preds = %if.end22.i.i
  %158 = ptrtoint ptr %start_block.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %start_block.i, align 4
  %cmp28.i.i = icmp eq ptr %storemerge.i.i, %159
  br i1 %cmp28.i.i, label %if.then29.i.i, label %land.lhs.true25.i.i.cleanup.i_crit_edge

land.lhs.true25.i.i.cleanup.i_crit_edge:          ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.i

if.then29.i.i:                                    ; preds = %land.lhs.true25.i.i
  %160 = ptrtoint ptr %win.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %win.i.i.i, align 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 4
  %msc.i.i.i69.i.i = getelementptr inbounds %struct.msc_window, ptr %161, i32 0, i32 6
  %164 = ptrtoint ptr %msc.i.i.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %msc.i.i.i69.i.i, align 4
  %win_list.i.i.i70.i.i = getelementptr inbounds %struct.msc, ptr %165, i32 0, i32 6
  %cmp.i.i.i71.i.i = icmp eq ptr %163, %win_list.i.i.i70.i.i
  %spec.select.i.i72.i.i = select i1 %cmp.i.i.i71.i.i, ptr %win_list.i.i.i70.i.i, ptr %161
  %166 = ptrtoint ptr %spec.select.i.i72.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %retval.0.i.i73.i.i = load ptr, ptr %spec.select.i.i72.i.i, align 4
  store ptr %retval.0.i.i73.i.i, ptr %win.i.i.i, align 4
  %167 = ptrtoint ptr %start_block.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %start_block.i, align 4
  %168 = ptrtoint ptr %start_win.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %start_win.i.i, align 4
  %cmp.i76.i.i = icmp eq ptr %retval.0.i.i73.i.i, %169
  br i1 %cmp.i76.i.i, label %if.then29.i.i.do.end.sink.split.i_crit_edge, label %if.then29.i.i.cleanup.sink.split.i_crit_edge

if.then29.i.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split.i

if.then29.i.i.do.end.sink.split.i_crit_edge:      ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.then29.i.i.cleanup.sink.split.i_crit_edge, %if.then11.i.i.cleanup.sink.split.i_crit_edge, %if.then4.i.i.cleanup.sink.split.i_crit_edge
  tail call fastcc void @msc_iter_block_start(ptr noundef %1) #12
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.sink.split.i, %land.lhs.true25.i.i.cleanup.i_crit_edge, %if.end22.i.i.cleanup.i_crit_edge
  %tobool40.not.i = icmp eq i32 %len.1.i, 0
  br i1 %tobool40.not.i, label %cleanup.i.msc_buffer_iterate.exit_crit_edge, label %cleanup.i.do.body.i_crit_edge

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

cleanup.i.msc_buffer_iterate.exit_crit_edge:      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_buffer_iterate.exit

do.end.sink.split.i:                              ; preds = %if.then29.i.i.do.end.sink.split.i_crit_edge, %if.then11.i.i.do.end.sink.split.i_crit_edge, %if.then4.i.i.do.end.sink.split.i_crit_edge
  %170 = ptrtoint ptr %eof.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %eof.i, align 4
  %inc.i78.i.i = add i32 %171, 1
  store i32 %inc.i78.i.i, ptr %eof.i, align 4
  br label %msc_buffer_iterate.exit

msc_buffer_iterate.exit:                          ; preds = %do.end.sink.split.i, %cleanup.i.msc_buffer_iterate.exit_crit_edge, %msc_win_to_user.exit.i.msc_buffer_iterate.exit_crit_edge
  %len.241.i = phi i32 [ %len.1.i, %do.end.sink.split.i ], [ 0, %cleanup.i.msc_buffer_iterate.exit_crit_edge ], [ %sub26.i, %msc_win_to_user.exit.i.msc_buffer_iterate.exit_crit_edge ]
  %sub41.i = sub i32 %len.addr.0, %len.241.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub41.i)
  %cmp37 = icmp sgt i32 %sub41.i, -1
  br i1 %cmp37, label %msc_buffer_iterate.exit.if.then39_crit_edge, label %msc_buffer_iterate.exit.put_count_crit_edge

msc_buffer_iterate.exit.put_count_crit_edge:      ; preds = %msc_buffer_iterate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_count

msc_buffer_iterate.exit.if.then39_crit_edge:      ; preds = %msc_buffer_iterate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then39

if.then39:                                        ; preds = %msc_buffer_iterate.exit.if.then39_crit_edge, %msc_oldest_window.exit.i.i.if.then39_crit_edge, %msc_oldest_window.exit.thread.i.i, %if.then34.if.then39_crit_edge
  %retval.0.i94105 = phi i32 [ %sub41.i, %msc_buffer_iterate.exit.if.then39_crit_edge ], [ 0, %if.then34.if.then39_crit_edge ], [ 0, %msc_oldest_window.exit.i.i.if.then39_crit_edge ], [ 0, %msc_oldest_window.exit.thread.i.i ]
  %offset40 = getelementptr inbounds %struct.msc_iter, ptr %1, i32 0, i32 4
  %172 = ptrtoint ptr %offset40 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %offset40, align 4
  %conv41 = zext i32 %173 to i64
  %174 = ptrtoint ptr %ppos to i32
  call void @__asan_store8_noabort(i32 %174)
  store i64 %conv41, ptr %ppos, align 8
  br label %put_count

put_count:                                        ; preds = %if.then39, %msc_buffer_iterate.exit.put_count_crit_edge, %if.then26, %msc_single_to_user.exit.put_count_crit_edge, %copy_to_user.exit123.i.put_count_crit_edge, %if.then27.i.i111.i, %land.rhs16.i.i110.i.put_count_crit_edge, %copy_to_user.exit100.i.put_count_crit_edge, %if.then27.i.i88.i, %land.rhs16.i.i87.i.put_count_crit_edge, %copy_to_user.exit.i.put_count_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.put_count_crit_edge, %if.end10.put_count_crit_edge, %if.end6.put_count_crit_edge, %if.end3.put_count_crit_edge
  %ret.0 = phi i32 [ 0, %if.end6.put_count_crit_edge ], [ %retval.0.i101, %if.then26 ], [ %sub31.i, %msc_single_to_user.exit.put_count_crit_edge ], [ 0, %if.end3.put_count_crit_edge ], [ -22, %if.end10.put_count_crit_edge ], [ %retval.0.i94105, %if.then39 ], [ %sub41.i, %msc_buffer_iterate.exit.put_count_crit_edge ], [ -14, %copy_to_user.exit.i.put_count_crit_edge ], [ -14, %copy_to_user.exit100.i.put_count_crit_edge ], [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.put_count_crit_edge ], [ -14, %if.then27.i.i88.i ], [ -14, %land.rhs16.i.i87.i.put_count_crit_edge ], [ -14, %if.then27.i.i111.i ], [ -14, %land.rhs16.i.i110.i.put_count_crit_edge ], [ -14, %copy_to_user.exit123.i.put_count_crit_edge ]
  %call.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %user_count, i32 1, i32 3, i32 1) #12
  %175 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_count, ptr %user_count, i32 1, ptr elementtype(i32) %user_count) #12, !srcloc !144
  br label %cleanup

cleanup:                                          ; preds = %put_count, %do.body1.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %put_count ], [ 0, %do.body1.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_msc_mmap(ptr nocapture noundef readnone %file, ptr nocapture noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %0 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_end, align 4
  %2 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vma, align 4
  %sub = sub i32 %1, %3
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %4 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %msc1 = getelementptr inbounds %struct.msc_iter, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %msc1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msc1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %tobool.not = icmp ne i32 %1, %3
  %and = and i32 %sub, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 %tobool2.not, i1 false
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %10 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %user_count = getelementptr inbounds %struct.msc, ptr %9, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count, i32 noundef 4) #12
  %12 = ptrtoint ptr %user_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %user_count, align 4
  br label %do.body1.i.i

do.body1.i.i:                                     ; preds = %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, %if.end5
  %c.0.i.i = phi i32 [ %13, %if.end5 ], [ %asmresult3.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i)
  %cmp.i.i = icmp slt i32 %c.0.i.i, 0
  br i1 %cmp.i.i, label %do.body1.i.i.cleanup_crit_edge, label %do.cond3.i.i, !prof !140

do.body1.i.i.cleanup_crit_edge:                   ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.cond3.i.i:                                     ; preds = %do.body1.i.i
  %add.i.i = add nuw i32 %c.0.i.i, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !153
  tail call void @llvm.prefetch.p0(ptr %user_count, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %do.cond3.i.i
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %user_count, ptr %user_count, i32 %c.0.i.i, i32 %add.i.i, ptr elementtype(i32) %user_count) #12, !srcloc !154
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i:                   ; preds = %do.body.i.i.i.i.i
  %asmresult3.i.i.i.i.i = extractvalue { i32, i32 } %14, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !155
  %cmp.not.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i, %c.0.i.i
  br i1 %cmp.not.i.i.i, label %if.end7, label %arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge, !prof !141

arch_atomic_cmpxchg.exit.i.i.i.do.body1.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1.i.i

if.end7:                                          ; preds = %arch_atomic_cmpxchg.exit.i.i.i
  %mode = getelementptr inbounds %struct.msc, ptr %9, i32 0, i32 23
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %switch = icmp ult i32 %16, 2
  br i1 %switch, label %if.end11, label %if.end7.if.then16_crit_edge

if.end7.if.then16_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

if.end11:                                         ; preds = %if.end7
  %shr = lshr i32 %sub, 12
  %nr_pages = getelementptr inbounds %struct.msc, ptr %9, i32 0, i32 10
  %17 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %18)
  %cmp12.not = icmp eq i32 %shr, %18
  br i1 %cmp12.not, label %out, label %if.end11.if.then16_crit_edge

if.end11.if.then16_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then16

out:                                              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %mmap_count = getelementptr inbounds %struct.msc, ptr %9, i32 0, i32 18
  %call.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mmap_count, i32 noundef 4) #12
  %19 = ptrtoint ptr %mmap_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 1, ptr %mmap_count, align 4
  br label %if.end18

if.then16:                                        ; preds = %if.end11.if.then16_crit_edge, %if.end7.if.then16_crit_edge
  %call.i.i41 = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %user_count, i32 1, i32 3, i32 1) #12
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_count, ptr %user_count, i32 1, ptr elementtype(i32) %user_count) #12, !srcloc !144
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %out
  %ret.045 = phi i32 [ -22, %if.then16 ], [ 0, %out ]
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %21 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %vm_page_prot, align 4
  %and19 = and i32 %22, -61
  store i32 %and19, ptr %vm_page_prot, align 4
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %23 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %vm_flags, align 4
  %or21 = or i32 %24, 393216
  store i32 %or21, ptr %vm_flags, align 4
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %25 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @msc_mmap_ops, ptr %vm_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.body1.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.045, %if.end18 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %do.body1.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_msc_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call zeroext i1 @capable(i32 noundef 17) #12
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 44) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.if.then4_crit_edge, label %if.end.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  %buf_mutex.i = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex.i, i32 noundef 0) #12
  %enabled.i = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 22
  %5 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %enabled.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool2.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool2.not.i, label %if.end5.i, label %msc_iter_install.exit.thread18

msc_iter_install.exit.thread18:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  tail call void @mutex_unlock(ptr noundef %buf_mutex.i) #12
  br label %if.then4

if.end5.i:                                        ; preds = %if.end.i
  %msc6.i = getelementptr inbounds %struct.msc_iter, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %msc6.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %msc6.i, align 8
  %iter_list.i = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 20
  %prev.i.i = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 20, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %8, ptr noundef %iter_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end5.i.msc_iter_install.exit_crit_edge

if.end5.i.msc_iter_install.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_iter_install.exit

if.end.i.i.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %iter_list.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i.i, ptr %8, align 4
  br label %msc_iter_install.exit

msc_iter_install.exit:                            ; preds = %if.end.i.i.i, %if.end5.i.msc_iter_install.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %buf_mutex.i) #12
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %msc_iter_install.exit.if.then4_crit_edge, label %if.end6

msc_iter_install.exit.if.then4_crit_edge:         ; preds = %msc_iter_install.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then4

if.then4:                                         ; preds = %msc_iter_install.exit.if.then4_crit_edge, %msc_iter_install.exit.thread18, %if.end.if.then4_crit_edge
  %retval.0.i17 = phi ptr [ %call7.i.i.i, %msc_iter_install.exit.if.then4_crit_edge ], [ inttoptr (i32 -16 to ptr), %msc_iter_install.exit.thread18 ], [ inttoptr (i32 -12 to ptr), %if.end.if.then4_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i17 to i32
  br label %cleanup

if.end6:                                          ; preds = %msc_iter_install.exit
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i.i, ptr %private_data, align 4
  %call8 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then4 ], [ %call8, %if.end6 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_th_msc_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %msc1 = getelementptr inbounds %struct.msc_iter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %msc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msc1, align 4
  %buf_mutex.i = getelementptr inbounds %struct.msc, ptr %3, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex.i, i32 noundef 0) #12
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.msc_iter_remove.exit_crit_edge

entry.msc_iter_remove.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_iter_remove.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %msc_iter_remove.exit

msc_iter_remove.exit:                             ; preds = %if.end.i.i.i, %entry.msc_iter_remove.exit_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %buf_mutex.i) #12
  tail call void @kfree(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msc_iter_block_start(ptr nocapture noundef %iter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %start_block = getelementptr inbounds %struct.msc_iter, ptr %iter, i32 0, i32 5
  %0 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %start_block, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end:                                           ; preds = %entry
  %win = getelementptr inbounds %struct.msc_iter, ptr %iter, i32 0, i32 3
  %2 = ptrtoint ptr %win to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %win, align 4
  %sgt.i.i.i = getelementptr inbounds %struct.msc_window, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sgt.i.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and.i.i.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %msc_win_base.exit.i, label %do.body2.i.i.i.i, !prof !141

do.body2.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

msc_win_base.exit.i:                              ; preds = %if.end
  %and.i.i.i.i = and i32 %9, -4
  %10 = inttoptr i32 %and.i.i.i.i to ptr
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %10) #12
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %12
  %hw_tag.i.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %hw_tag.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %hw_tag.i.i, align 1
  %and.i.i = and i32 %14, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %msc_win_base.exit.i.cleanup10.sink.split.i_crit_edge, label %if.end.i

msc_win_base.exit.i.cleanup10.sink.split.i_crit_edge: ; preds = %msc_win_base.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup10.sink.split.i

if.end.i:                                         ; preds = %msc_win_base.exit.i
  %nr_segs.i = getelementptr inbounds %struct.msc_window, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %nr_segs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_segs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp31.not.i = icmp eq i32 %16, 0
  br i1 %cmp31.not.i, label %if.end.i.cleanup10.sink.split.i_crit_edge, label %for.body.preheader.i

if.end.i.cleanup10.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup10.sink.split.i

for.body.preheader.i:                             ; preds = %if.end.i
  %17 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sgt.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %blk.033.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %sg.032.i = phi ptr [ %call8.i, %for.inc.i.for.body.i_crit_edge ], [ %20, %for.body.preheader.i ]
  %21 = ptrtoint ptr %sg.032.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sg.032.i, align 4
  %and.i.i.i20.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i20.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i20.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_virt.exit.i, label %do.body2.i.i.i, !prof !141

do.body2.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

sg_virt.exit.i:                                   ; preds = %for.body.i
  %and.i.i.i = and i32 %22, -4
  %23 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %23) #12
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.032.i, i32 0, i32 1
  %24 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %25
  %hw_tag.i21.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %hw_tag.i21.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %hw_tag.i21.i, align 1
  %and.i22.i = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22.i)
  %tobool.not.i23.i = icmp eq i32 %and.i22.i, 0
  br i1 %tobool.not.i23.i, label %msc_block_last_written.exit.i, label %sg_virt.exit.i.msc_win_oldest_sg.exit_crit_edge

sg_virt.exit.i.msc_win_oldest_sg.exit_crit_edge:  ; preds = %sg_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_win_oldest_sg.exit

msc_block_last_written.exit.i:                    ; preds = %sg_virt.exit.i
  %valid_dw.i.i.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %valid_dw.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %valid_dw.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i = icmp eq i32 %29, 0
  %mul.i.i.i = shl i32 %29, 2
  %sub.i.i.i = add i32 %mul.i.i.i, -64
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %block_sz.i.i.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %block_sz.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load i32, ptr %block_sz.i.i.i, align 1
  %mul.i4.i.i = shl i32 %31, 6
  %sub.i5.i.i = add i32 %mul.i4.i.i, -64
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %sub.i5.i.i)
  %cmp.not.i.not.i = icmp eq i32 %retval.0.i.i.i, %sub.i5.i.i
  br i1 %cmp.not.i.not.i, label %for.inc.i, label %msc_block_last_written.exit.i.msc_win_oldest_sg.exit_crit_edge

msc_block_last_written.exit.i.msc_win_oldest_sg.exit_crit_edge: ; preds = %msc_block_last_written.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_win_oldest_sg.exit

for.inc.i:                                        ; preds = %msc_block_last_written.exit.i
  %inc.i = add nuw i32 %blk.033.i, 1
  %call8.i = tail call ptr @sg_next(ptr noundef %sg.032.i) #12
  %32 = ptrtoint ptr %nr_segs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_segs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %33
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup10.sink.split.i_crit_edge

for.inc.i.cleanup10.sink.split.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup10.sink.split.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

cleanup10.sink.split.i:                           ; preds = %for.inc.i.cleanup10.sink.split.i_crit_edge, %if.end.i.cleanup10.sink.split.i_crit_edge, %msc_win_base.exit.i.cleanup10.sink.split.i_crit_edge
  %34 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sgt.i.i.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  br label %msc_win_oldest_sg.exit

msc_win_oldest_sg.exit:                           ; preds = %cleanup10.sink.split.i, %msc_block_last_written.exit.i.msc_win_oldest_sg.exit_crit_edge, %sg_virt.exit.i.msc_win_oldest_sg.exit_crit_edge
  %retval.2.i = phi ptr [ %37, %cleanup10.sink.split.i ], [ %sg.032.i, %msc_block_last_written.exit.i.msc_win_oldest_sg.exit_crit_edge ], [ %sg.032.i, %sg_virt.exit.i.msc_win_oldest_sg.exit_crit_edge ]
  %38 = ptrtoint ptr %start_block to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %retval.2.i, ptr %start_block, align 4
  %block = getelementptr inbounds %struct.msc_iter, ptr %iter, i32 0, i32 6
  %39 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %retval.2.i, ptr %block, align 4
  %wrap_count = getelementptr inbounds %struct.msc_iter, ptr %iter, i32 0, i32 8
  %40 = ptrtoint ptr %wrap_count to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %wrap_count, align 4
  %41 = ptrtoint ptr %retval.2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %retval.2.i, align 4
  %and.i.i.i.i15 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i15)
  %tobool.i.not.i.i.i16 = icmp eq i32 %and.i.i.i.i15, 0
  br i1 %tobool.i.not.i.i.i16, label %msc_iter_bdesc.exit, label %do.body2.i.i.i17, !prof !141

do.body2.i.i.i17:                                 ; preds = %msc_win_oldest_sg.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

msc_iter_bdesc.exit:                              ; preds = %msc_win_oldest_sg.exit
  %and.i.i.i18 = and i32 %42, -4
  %43 = inttoptr i32 %and.i.i.i18 to ptr
  %call1.i.i19 = tail call ptr @page_address(ptr noundef %43) #12
  %offset.i.i20 = getelementptr inbounds %struct.scatterlist, ptr %retval.2.i, i32 0, i32 1
  %44 = ptrtoint ptr %offset.i.i20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset.i.i20, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %call1.i.i19, i32 %45
  %hw_tag.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i21, i32 0, i32 5
  %46 = ptrtoint ptr %hw_tag.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %hw_tag.i, align 1
  %and.i = and i32 %47, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i.not, label %msc_iter_bdesc.exit.if.end7_crit_edge, label %if.then5

msc_iter_bdesc.exit.if.end7_crit_edge:            ; preds = %msc_iter_bdesc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %msc_iter_bdesc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %wrap_count to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %wrap_count, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %msc_iter_bdesc.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msc_mmap_open(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %msc1 = getelementptr inbounds %struct.msc_iter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %msc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msc1, align 4
  %mmap_count = getelementptr inbounds %struct.msc, ptr %5, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mmap_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %mmap_count, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mmap_count, ptr %mmap_count, i32 1, ptr elementtype(i32) %mmap_count) #12, !srcloc !143
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msc_mmap_close(ptr nocapture noundef readonly %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %msc1 = getelementptr inbounds %struct.msc_iter, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %msc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msc1, align 4
  %mmap_count = getelementptr inbounds %struct.msc, ptr %5, i32 0, i32 18
  %buf_mutex = getelementptr inbounds %struct.msc, ptr %5, i32 0, i32 19
  %call = tail call i32 @atomic_dec_and_mutex_lock(ptr noundef %mmap_count, ptr noundef %buf_mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup50_crit_edge, label %for.cond.preheader

entry.cleanup50_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup50

for.cond.preheader:                               ; preds = %entry
  %nr_pages = getelementptr inbounds %struct.msc, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp68.not = icmp eq i32 %7, 0
  br i1 %cmp68.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %pg.069 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call2 = tail call fastcc ptr @msc_buffer_get_page(ptr noundef %5, i32 noundef %pg.069)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %land.rhs, label %if.end44

land.rhs:                                         ; preds = %for.body
  %.b66 = load i1, ptr @msc_mmap_close.__already_done, align 1
  br i1 %.b66, label %land.rhs.cleanup_crit_edge, label %if.then12, !prof !141

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @msc_mmap_close.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1588, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end44:                                         ; preds = %for.body
  %mapping = getelementptr inbounds %struct.page, ptr %call2, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mapping, align 4
  %tobool45.not = icmp eq ptr %9, null
  br i1 %tobool45.not, label %if.end44.cleanup_crit_edge, label %if.then46

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %mapping, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end44.cleanup_crit_edge, %if.then12, %land.rhs.cleanup_crit_edge
  %inc = add nuw i32 %pg.069, 1
  %11 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_pages, align 4
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %user_count = getelementptr inbounds %struct.msc, ptr %5, i32 0, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %user_count, i32 1, i32 3, i32 1) #12
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_count, ptr %user_count, i32 1, ptr elementtype(i32) %user_count) #12, !srcloc !144
  tail call void @mutex_unlock(ptr noundef %buf_mutex) #12
  br label %cleanup50

cleanup50:                                        ; preds = %for.end, %entry.cleanup50_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msc_mmap_fault(ptr nocapture noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_file, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %msc1 = getelementptr inbounds %struct.msc_iter, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %msc1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msc1, align 4
  %pgoff = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 2
  %8 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pgoff, align 4
  %call = tail call fastcc ptr @msc_buffer_get_page(ptr noundef %7, i32 noundef %9)
  %page = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %10 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %page, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !141

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %13, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %14, %if.end.i.i ]
  %15 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %15, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %16 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %17, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !140

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.24) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #12, !srcloc !157
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !143
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@msc_mmap_fault, %if.then.i.i.i.i)) #12
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !152

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__page_ref_mod(ptr noundef %15, i32 noundef 1) #12
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %19 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vmf, align 4
  %vm_file5 = getelementptr inbounds %struct.vm_area_struct, ptr %20, i32 0, i32 14
  %21 = ptrtoint ptr %vm_file5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vm_file5, align 4
  %f_mapping = getelementptr inbounds %struct.file, ptr %22, i32 0, i32 18
  %23 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %f_mapping, align 4
  %25 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %page, align 4
  %mapping = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %mapping, align 4
  %28 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pgoff, align 4
  %30 = load ptr, ptr %page, align 4
  %index = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1, i32 0, i32 2
  %31 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %29, ptr %index, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_page.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_page.exit ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @msc_buffer_get_page(ptr noundef readonly %msc, i32 noundef %pgoff) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 23
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %nr_pages.i = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 10
  %2 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %pgoff)
  %cmp.not.i = icmp ugt i32 %3, %pgoff
  br i1 %cmp.not.i, label %if.end.i, label %if.then.cleanup29_crit_edge

if.then.cleanup29_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %base.i = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 13
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %shl.i = shl i32 %pgoff, 12
  %add.ptr.i = getelementptr i8, ptr %6, i32 %shl.i
  %7 = ptrtoint ptr %add.ptr.i to i32
  %sub.i = add i32 %7, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr2.i = getelementptr %struct.page, ptr %4, i32 %shr.i
  br label %cleanup29

if.end:                                           ; preds = %entry
  %win_list = getelementptr inbounds %struct.msc, ptr %msc, i32 0, i32 6
  %8 = ptrtoint ptr %win_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %win.054 = load ptr, ptr %win_list, align 4
  %cmp3.not55 = icmp eq ptr %win.054, %win_list
  br i1 %cmp3.not55, label %if.end.cleanup29_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %win.056 = phi ptr [ %win.0, %for.inc.for.body_crit_edge ], [ %win.054, %if.end.for.body_crit_edge ]
  %pgoff4 = getelementptr inbounds %struct.msc_window, ptr %win.056, i32 0, i32 1
  %9 = ptrtoint ptr %pgoff4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pgoff4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %pgoff)
  %cmp5.not = icmp ugt i32 %10, %pgoff
  br i1 %cmp5.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %nr_blocks = getelementptr inbounds %struct.msc_window, ptr %win.056, i32 0, i32 4
  %11 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_blocks, align 4
  %add = add i32 %12, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %pgoff)
  %cmp7 = icmp ugt i32 %add, %pgoff
  br i1 %cmp7, label %found, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %win.056 to i32
  call void @__asan_load4_noabort(i32 %13)
  %win.0 = load ptr, ptr %win.056, align 4
  %cmp3.not = icmp eq ptr %win.0, %win_list
  br i1 %cmp3.not, label %for.inc.cleanup29_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup29_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

found:                                            ; preds = %land.lhs.true
  %nr_segs = getelementptr inbounds %struct.msc_window, ptr %win.056, i32 0, i32 5
  %14 = ptrtoint ptr %nr_segs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_segs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1761.not = icmp eq i32 %15, 0
  br i1 %cmp1761.not, label %found.cleanup29_crit_edge, label %for.body18.preheader

found.cleanup29_crit_edge:                        ; preds = %found
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

for.body18.preheader:                             ; preds = %found
  %sgt = getelementptr inbounds %struct.msc_window, ptr %win.056, i32 0, i32 8
  %16 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sgt, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %sub = sub i32 %pgoff, %10
  br label %for.body18

for.body18:                                       ; preds = %for.inc26.for.body18_crit_edge, %for.body18.preheader
  %pgoff.addr.064 = phi i32 [ %sub24, %for.inc26.for.body18_crit_edge ], [ %sub, %for.body18.preheader ]
  %sg.063 = phi ptr [ %call27, %for.inc26.for.body18_crit_edge ], [ %19, %for.body18.preheader ]
  %blk.062 = phi i32 [ %inc, %for.inc26.for.body18_crit_edge ], [ 0, %for.body18.preheader ]
  %20 = ptrtoint ptr %sg.063 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sg.063, align 4
  %and.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !141

do.body2.i:                                       ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

sg_page.exit:                                     ; preds = %for.body18
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.063, i32 0, i32 2
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length, align 4
  %shr = lshr i32 %23, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %pgoff.addr.064, i32 %shr)
  %cmp20 = icmp ult i32 %pgoff.addr.064, %shr
  br i1 %cmp20, label %cleanup29.loopexit.split.loop.exit, label %for.inc26

for.inc26:                                        ; preds = %sg_page.exit
  %sub24 = sub i32 %pgoff.addr.064, %shr
  %inc = add nuw i32 %blk.062, 1
  %call27 = tail call ptr @sg_next(ptr noundef %sg.063) #12
  %24 = ptrtoint ptr %nr_segs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_segs, align 4
  %cmp17 = icmp ult i32 %inc, %25
  br i1 %cmp17, label %for.inc26.for.body18_crit_edge, label %for.inc26.cleanup29_crit_edge

for.inc26.cleanup29_crit_edge:                    ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

for.inc26.for.body18_crit_edge:                   ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18

cleanup29.loopexit.split.loop.exit:               ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.le = and i32 %21, -4
  %26 = inttoptr i32 %and.i.le to ptr
  %add.ptr22.le = getelementptr %struct.page, ptr %26, i32 %pgoff.addr.064
  br label %cleanup29

cleanup29:                                        ; preds = %cleanup29.loopexit.split.loop.exit, %for.inc26.cleanup29_crit_edge, %found.cleanup29_crit_edge, %for.inc.cleanup29_crit_edge, %if.end.cleanup29_crit_edge, %if.end.i, %if.then.cleanup29_crit_edge
  %retval.2 = phi ptr [ %add.ptr2.i, %if.end.i ], [ null, %if.then.cleanup29_crit_edge ], [ %add.ptr22.le, %cleanup29.loopexit.split.loop.exit ], [ null, %found.cleanup29_crit_edge ], [ null, %if.end.cleanup29_crit_edge ], [ null, %for.inc26.cleanup29_crit_edge ], [ null, %for.inc.cleanup29_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wrap_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wrap = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %wrap to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %wrap, align 1
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.26, i32 noundef %bf.cast) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wrap_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !158
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  %wrap = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %wrap to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %wrap, align 1
  %bf.shl = select i1 %tobool2.not, i8 0, i8 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %wrap, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode1 = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode1, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @msc_mode, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %buf_mutex = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #12
  %mbuf = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %mbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mbuf, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mode.0 = phi ptr [ %9, %if.then ], [ %5, %entry.if.end_crit_edge ]
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.28, ptr noundef %mode.0) #12
  tail call void @mutex_unlock(ptr noundef %buf_mutex) #12
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #12
  %call1 = tail call zeroext i1 @capable(i32 noundef 17) #12
  br i1 %call1, label %if.end, label %entry.cleanup54_crit_edge

entry.cleanup54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup54

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @memchr(ptr noundef %buf, i32 noundef 10, i32 noundef %size) #19
  %tobool.not = icmp eq ptr %call2, null
  %sub.ptr.lhs.cast = ptrtoint ptr %call2 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %len.0 = select i1 %tobool.not, i32 %size, i32 %sub.ptr.sub
  %call5 = tail call ptr @kstrndup(ptr noundef %buf, i32 noundef %len.0, i32 noundef 3264) #12
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup54_crit_edge, label %if.end8

if.end.cleanup54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup54

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @match_string(ptr noundef nonnull @msc_mode, i32 noundef 4, ptr noundef nonnull %call5) #12
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call9, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp = icmp sgt i32 %call9, -1
  br i1 %cmp, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call5) #12
  br label %found

if.end11:                                         ; preds = %if.end8
  %do_irq = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 22
  %3 = ptrtoint ptr %do_irq to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %do_irq, align 1
  %4 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool12.not = icmp eq i8 %4, 0
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call5) #12
  br label %cleanup54

if.end14:                                         ; preds = %if.end11
  tail call void @mutex_lock_nested(ptr noundef nonnull @msu_buffer_mutex, i32 noundef 0) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.end14.for.cond.i.i.preheader_crit_edge, label %land.rhs.i.i

if.end14.for.cond.i.i.preheader_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.preheader

land.rhs.i.i:                                     ; preds = %if.end14
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @msu_buffer_mutex, i32 0, i32 5), i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.for.cond.i.i.preheader_crit_edge, !prof !140

land.rhs.i.i.for.cond.i.i.preheader_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i.preheader

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 189, i32 noundef 9, ptr noundef null) #12
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %do.end.i.i, %land.rhs.i.i.for.cond.i.i.preheader_crit_edge, %if.end14.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %mbe.0.in.i.i = phi ptr [ %mbe.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @msu_buffer_list, %for.cond.i.i.preheader ]
  %6 = ptrtoint ptr %mbe.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %mbe.0.i.i = load ptr, ptr %mbe.0.in.i.i, align 4
  %cmp26.not.i.i = icmp eq ptr %mbe.0.i.i, @msu_buffer_list
  br i1 %cmp26.not.i.i, label %for.cond.i.i.msu_buffer_get.exit.thread_crit_edge, label %for.body.i.i

for.cond.i.i.msu_buffer_get.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msu_buffer_get.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i
  %mbuf.i.i = getelementptr inbounds %struct.msu_buffer_entry, ptr %mbe.0.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %mbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mbuf.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call30.i.i = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull %call5) #16
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %__msu_buffer_entry_find.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.i

__msu_buffer_entry_find.exit.i:                   ; preds = %for.body.i.i
  %mbuf.i.i.le = getelementptr inbounds %struct.msu_buffer_entry, ptr %mbe.0.i.i, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %mbe.0.i.i, null
  br i1 %tobool.not.i, label %__msu_buffer_entry_find.exit.i.msu_buffer_get.exit.thread_crit_edge, label %land.lhs.true.i

__msu_buffer_entry_find.exit.i.msu_buffer_get.exit.thread_crit_edge: ; preds = %__msu_buffer_entry_find.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msu_buffer_get.exit.thread

land.lhs.true.i:                                  ; preds = %__msu_buffer_entry_find.exit.i
  %owner.i = getelementptr inbounds %struct.msu_buffer_entry, ptr %mbe.0.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %owner.i, align 4
  %call1.i = tail call zeroext i1 @try_module_get(ptr noundef %12) #12
  br i1 %call1.i, label %msu_buffer_get.exit, label %land.lhs.true.i.msu_buffer_get.exit.thread_crit_edge

land.lhs.true.i.msu_buffer_get.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msu_buffer_get.exit.thread

msu_buffer_get.exit.thread:                       ; preds = %land.lhs.true.i.msu_buffer_get.exit.thread_crit_edge, %__msu_buffer_entry_find.exit.i.msu_buffer_get.exit.thread_crit_edge, %for.cond.i.i.msu_buffer_get.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @msu_buffer_mutex) #12
  tail call void @kfree(ptr noundef nonnull %call5) #12
  br label %cleanup54

msu_buffer_get.exit:                              ; preds = %land.lhs.true.i
  tail call void @mutex_unlock(ptr noundef nonnull @msu_buffer_mutex) #12
  %13 = ptrtoint ptr %mbuf.i.i.le to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mbuf.i.i.le, align 4
  tail call void @kfree(ptr noundef nonnull %call5) #12
  %tobool16.not = icmp eq ptr %14, null
  br i1 %tobool16.not, label %msu_buffer_get.exit.cleanup54_crit_edge, label %foundthread-pre-split

msu_buffer_get.exit.cleanup54_crit_edge:          ; preds = %msu_buffer_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup54

foundthread-pre-split:                            ; preds = %msu_buffer_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %i, align 4
  br label %found

found:                                            ; preds = %foundthread-pre-split, %if.then10
  %16 = phi i32 [ %.pr, %foundthread-pre-split ], [ %call9, %if.then10 ]
  %mbuf.0 = phi ptr [ %14, %foundthread-pre-split ], [ null, %if.then10 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp19 = icmp eq i32 %16, 1
  br i1 %cmp19, label %land.lhs.true, label %found.if.end26_crit_edge

found.if.end26_crit_edge:                         ; preds = %found
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

land.lhs.true:                                    ; preds = %found
  %multi_is_broken = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 22
  %17 = ptrtoint ptr %multi_is_broken to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load20 = load i8, ptr %multi_is_broken, align 1
  %18 = and i8 %bf.load20, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool24.not = icmp eq i8 %18, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end26_crit_edge, label %land.lhs.true.cleanup54_crit_edge

land.lhs.true.cleanup54_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup54

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true.if.end26_crit_edge, %found.if.end26_crit_edge
  %buf_mutex = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #12
  %tobool27.not = icmp eq ptr %mbuf.0, null
  br i1 %tobool27.not, label %if.end32, label %land.lhs.true28

land.lhs.true28:                                  ; preds = %if.end26
  %mbuf29 = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %mbuf29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mbuf29, align 4
  %cmp30 = icmp eq ptr %mbuf.0, %20
  br i1 %cmp30, label %if.then31, label %if.end32.thread

if.then31:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @msu_buffer_put(ptr noundef nonnull %mbuf.0)
  br label %if.end51.thread

if.end32:                                         ; preds = %if.end26
  %call33 = tail call fastcc i32 @msc_buffer_unlocked_free_unless_used(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.else, label %if.end51

if.end32.thread:                                  ; preds = %land.lhs.true28
  %call33110 = tail call fastcc i32 @msc_buffer_unlocked_free_unless_used(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33110)
  %tobool34.not111 = icmp eq i32 %call33110, 0
  br i1 %tobool34.not111, label %if.then38, label %if.end32.thread.if.then50_crit_edge

if.end32.thread.if.then50_crit_edge:              ; preds = %if.end32.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50

if.then38:                                        ; preds = %if.end32.thread
  %assign = getelementptr inbounds %struct.msu_buffer, ptr %mbuf.0, i32 0, i32 1
  %21 = ptrtoint ptr %assign to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %assign, align 4
  %call39 = call ptr %22(ptr noundef %dev, ptr noundef nonnull %i) #12
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.then38.if.then50_crit_edge, label %if.end42

if.then38.if.then50_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50

if.end42:                                         ; preds = %if.then38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %23 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i94 = icmp eq i32 %23, 0
  br i1 %tobool.not.i94, label %if.end42.if.end.i_crit_edge, label %land.rhs.i

if.end42.if.end.i_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end42
  %dep_map.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 19, i32 5
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !140

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1840, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.end42.if.end.i_crit_edge
  %24 = ptrtoint ptr %mbuf29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mbuf29, align 4
  %tobool24.not.i = icmp eq ptr %25, null
  br i1 %tobool24.not.i, label %if.end.i.cleanup.thread_crit_edge, label %if.end26.i

if.end.i.cleanup.thread_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end26.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %unassign.i = getelementptr inbounds %struct.msu_buffer, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %unassign.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %unassign.i, align 4
  %mbuf_priv.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %mbuf_priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mbuf_priv.i, align 4
  call void %27(ptr noundef %29) #12
  %30 = ptrtoint ptr %mbuf29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mbuf29, align 4
  call fastcc void @msu_buffer_put(ptr noundef %31) #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end26.i, %if.end.i.cleanup.thread_crit_edge
  %mbuf_priv43 = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %mbuf_priv43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call39, ptr %mbuf_priv43, align 4
  %33 = ptrtoint ptr %mbuf29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %mbuf.0, ptr %mbuf29, align 4
  br label %if.end45

if.else:                                          ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %34 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i95 = icmp eq i32 %34, 0
  br i1 %tobool.not.i95, label %if.else.if.end.i103_crit_edge, label %land.rhs.i99

if.else.if.end.i103_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i103

land.rhs.i99:                                     ; preds = %if.else
  %dep_map.i96 = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 19, i32 5
  %call.i.i97 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i96, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i97)
  %cmp.not.i98 = icmp eq i32 %call.i.i97, 0
  br i1 %cmp.not.i98, label %do.end.i100, label %land.rhs.i99.if.end.i103_crit_edge, !prof !140

land.rhs.i99.if.end.i103_crit_edge:               ; preds = %land.rhs.i99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i103

do.end.i100:                                      ; preds = %land.rhs.i99
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1840, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i103

if.end.i103:                                      ; preds = %do.end.i100, %land.rhs.i99.if.end.i103_crit_edge, %if.else.if.end.i103_crit_edge
  %mbuf.i101 = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %mbuf.i101 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mbuf.i101, align 4
  %tobool24.not.i102 = icmp eq ptr %36, null
  br i1 %tobool24.not.i102, label %if.end.i103.if.end45_crit_edge, label %if.end26.i106

if.end.i103.if.end45_crit_edge:                   ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.end26.i106:                                    ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #14
  %unassign.i104 = getelementptr inbounds %struct.msu_buffer, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %unassign.i104 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %unassign.i104, align 4
  %mbuf_priv.i105 = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 4
  %39 = ptrtoint ptr %mbuf_priv.i105 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mbuf_priv.i105, align 4
  tail call void %38(ptr noundef %40) #12
  %41 = ptrtoint ptr %mbuf.i101 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mbuf.i101, align 4
  tail call fastcc void @msu_buffer_put(ptr noundef %42) #12
  %43 = ptrtoint ptr %mbuf_priv.i105 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %mbuf_priv.i105, align 4
  %44 = ptrtoint ptr %mbuf.i101 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %mbuf.i101, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end26.i106, %if.end.i103.if.end45_crit_edge, %cleanup.thread
  %45 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i, align 4
  %mode46 = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 23
  %47 = ptrtoint ptr %mode46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %mode46, align 4
  br label %if.end51.thread

if.end51.thread:                                  ; preds = %if.end45, %if.then31
  call void @mutex_unlock(ptr noundef %buf_mutex) #12
  br label %cleanup54

if.then50:                                        ; preds = %if.then38.if.then50_crit_edge, %if.end32.thread.if.then50_crit_edge
  %ret.2.ph = phi i32 [ -12, %if.then38.if.then50_crit_edge ], [ %call33110, %if.end32.thread.if.then50_crit_edge ]
  call fastcc void @msu_buffer_put(ptr noundef nonnull %mbuf.0)
  call void @mutex_unlock(ptr noundef %buf_mutex) #12
  br label %cleanup54

if.end51:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  call void @mutex_unlock(ptr noundef %buf_mutex) #12
  br label %cleanup54

cleanup54:                                        ; preds = %if.end51, %if.then50, %if.end51.thread, %land.lhs.true.cleanup54_crit_edge, %msu_buffer_get.exit.cleanup54_crit_edge, %msu_buffer_get.exit.thread, %if.then13, %if.end.cleanup54_crit_edge, %entry.cleanup54_crit_edge
  %retval.0 = phi i32 [ -22, %if.then13 ], [ -1, %entry.cleanup54_crit_edge ], [ -12, %if.end.cleanup54_crit_edge ], [ -22, %msu_buffer_get.exit.cleanup54_crit_edge ], [ -95, %land.lhs.true.cleanup54_crit_edge ], [ -22, %msu_buffer_get.exit.thread ], [ %size, %if.end51.thread ], [ %call33, %if.end51 ], [ %ret.2.ph, %if.then50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msu_buffer_put(ptr nocapture noundef readonly %mbuf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @msu_buffer_mutex, i32 noundef 0) #12
  %0 = ptrtoint ptr %mbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbuf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %entry.for.cond.i.preheader_crit_edge, label %land.rhs.i

entry.for.cond.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

land.rhs.i:                                       ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @msu_buffer_mutex, i32 0, i32 5), i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.for.cond.i.preheader_crit_edge, !prof !140

land.rhs.i.for.cond.i.preheader_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i.preheader

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 189, i32 noundef 9, ptr noundef null) #12
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %do.end.i, %land.rhs.i.for.cond.i.preheader_crit_edge, %entry.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %mbe.0.in.i = phi ptr [ %mbe.0.i, %for.body.i.for.cond.i_crit_edge ], [ @msu_buffer_list, %for.cond.i.preheader ]
  %3 = ptrtoint ptr %mbe.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %mbe.0.i = load ptr, ptr %mbe.0.in.i, align 4
  %cmp26.not.i = icmp eq ptr %mbe.0.i, @msu_buffer_list
  br i1 %cmp26.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %mbuf.i = getelementptr inbounds %struct.msu_buffer_entry, ptr %mbe.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %mbuf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mbuf.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call30.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef %1) #16
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %__msu_buffer_entry_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

__msu_buffer_entry_find.exit:                     ; preds = %for.body.i
  %tobool.not = icmp eq ptr %mbe.0.i, null
  br i1 %tobool.not, label %__msu_buffer_entry_find.exit.if.end_crit_edge, label %if.then

__msu_buffer_entry_find.exit.if.end_crit_edge:    ; preds = %__msu_buffer_entry_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %__msu_buffer_entry_find.exit
  call void @__sanitizer_cov_trace_pc() #14
  %owner = getelementptr inbounds %struct.msu_buffer_entry, ptr %mbe.0.i, i32 0, i32 2
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %9) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %__msu_buffer_entry_find.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @msu_buffer_mutex) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_pages_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %buf_mutex = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #12
  %mode = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %3, label %if.else16 [
    i32 0, label %if.then
    i32 1, label %if.then4
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %nr_pages = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_pages, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.34, i32 noundef %6) #12
  br label %if.end18

if.then4:                                         ; preds = %entry
  %win_list = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %win_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %win.034 = load ptr, ptr %win_list, align 4
  %cmp7.not35 = icmp eq ptr %win.034, %win_list
  br i1 %cmp7.not35, label %if.then4.if.end18_crit_edge, label %if.then4.for.body_crit_edge

if.then4.for.body_crit_edge:                      ; preds = %if.then4
  br label %for.body

if.then4.if.end18_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then4.for.body_crit_edge
  %win.037 = phi ptr [ %win.0, %for.body.for.body_crit_edge ], [ %win.034, %if.then4.for.body_crit_edge ]
  %count.036 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.then4.for.body_crit_edge ]
  %add.ptr8 = getelementptr i8, ptr %buf, i32 %count.036
  %sub = sub i32 4096, %count.036
  %nr_blocks = getelementptr inbounds %struct.msc_window, ptr %win.037, i32 0, i32 4
  %8 = ptrtoint ptr %nr_blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_blocks, align 4
  %10 = ptrtoint ptr %win.037 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %win.037, align 4
  %msc.i = getelementptr inbounds %struct.msc_window, ptr %win.037, i32 0, i32 6
  %12 = ptrtoint ptr %msc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msc.i, align 4
  %win_list.i = getelementptr inbounds %struct.msc, ptr %13, i32 0, i32 6
  %cmp.i = icmp eq ptr %11, %win_list.i
  %cond = select i1 %cmp.i, i32 10, i32 44
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr8, i32 noundef %sub, ptr noundef nonnull @.str.35, i32 noundef %9, i32 noundef %cond) #12
  %add = add i32 %call10, %count.036
  %14 = ptrtoint ptr %win.037 to i32
  call void @__asan_load4_noabort(i32 %14)
  %win.0 = load ptr, ptr %win.037, align 4
  %cmp7.not = icmp eq ptr %win.0, %win_list
  br i1 %cmp7.not, label %for.body.if.end18_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.else16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.36) #12
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %for.body.if.end18_crit_edge, %if.then4.if.end18_crit_edge, %if.then
  %count.1 = phi i32 [ %call1, %if.then ], [ %call17, %if.else16 ], [ 0, %if.then4.if.end18_crit_edge ], [ %add, %for.body.if.end18_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %buf_mutex) #12
  ret i32 %count.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_pages_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !158
  %call1 = tail call zeroext i1 @capable(i32 noundef 17) #12
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf_mutex.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %buf_mutex.i, i32 noundef 0) #12
  %call.i = tail call fastcc i32 @msc_buffer_unlocked_free_unless_used(ptr noundef %1) #12
  tail call void @mutex_unlock(ptr noundef %buf_mutex.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @memchr(ptr noundef %buf, i32 noundef 10, i32 noundef %size) #19
  %tobool6.not = icmp eq ptr %call5, null
  %sub.ptr.lhs.cast = ptrtoint ptr %call5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %len.0 = select i1 %tobool6.not, i32 %size, i32 %sub.ptr.sub
  %mode = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 23
  br label %do.body

do.body:                                          ; preds = %if.end32.do.body_crit_edge, %if.end4
  %win.0 = phi ptr [ null, %if.end4 ], [ %call5.i, %if.end32.do.body_crit_edge ]
  %len.1 = phi i32 [ %len.0, %if.end4 ], [ %sub36, %if.end32.do.body_crit_edge ]
  %p.0 = phi ptr [ %buf, %if.end4 ], [ %add.ptr, %if.end32.do.body_crit_edge ]
  %nr_wins.0 = phi i32 [ 0, %if.end4 ], [ %inc160, %if.end32.do.body_crit_edge ]
  %call9 = call ptr @memchr(ptr noundef %p.0, i32 noundef 44, i32 noundef %len.1) #19
  %tobool10.not = icmp eq ptr %call9, null
  %sub.ptr.lhs.cast11 = ptrtoint ptr %call9 to i32
  %sub.ptr.rhs.cast12 = ptrtoint ptr %p.0 to i32
  %sub.ptr.sub13 = sub i32 %sub.ptr.lhs.cast11, %sub.ptr.rhs.cast12
  %cond = select i1 %tobool10.not, i32 %len.1, i32 %sub.ptr.sub13
  %call14 = call ptr @kstrndup(ptr noundef %p.0, i32 noundef %cond, i32 noundef 3264) #12
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.body.free_win.thread_crit_edge, label %if.end17

do.body.free_win.thread_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_win.thread

if.end17:                                         ; preds = %do.body
  %call.i89 = call i32 @_kstrtoul(ptr noundef nonnull %call14, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @kfree(ptr noundef nonnull %call14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool19.not = icmp eq i32 %call.i89, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %if.end17.free_win.thread_crit_edge

if.end17.free_win.thread_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_win.thread

lor.lhs.false:                                    ; preds = %if.end17
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool20.not = icmp eq i32 %4, 0
  br i1 %tobool20.not, label %free_win.thread97, label %if.end22

free_win.thread97:                                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef %win.0) #12
  br label %185

if.end22:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_wins.0)
  %tobool23.not = icmp eq i32 %nr_wins.0, 0
  br i1 %tobool23.not, label %if.end22.krealloc_array.exit_crit_edge, label %land.lhs.true

if.end22.krealloc_array.exit_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %krealloc_array.exit

land.lhs.true:                                    ; preds = %if.end22
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.lhs.true.free_win.thread_crit_edge, label %if.end25

land.lhs.true.free_win.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_win.thread

if.end25:                                         ; preds = %land.lhs.true
  %inc = add nuw nsw i32 %nr_wins.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741823, i32 %nr_wins.0)
  %exitcond = icmp eq i32 %nr_wins.0, 1073741823
  br i1 %exitcond, label %if.end25.if.then28_crit_edge, label %if.end25.krealloc_array.exit_crit_edge, !prof !140

if.end25.krealloc_array.exit_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %krealloc_array.exit

if.end25.if.then28_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

krealloc_array.exit:                              ; preds = %if.end25.krealloc_array.exit_crit_edge, %if.end22.krealloc_array.exit_crit_edge
  %inc160 = phi i32 [ %inc, %if.end25.krealloc_array.exit_crit_edge ], [ 1, %if.end22.krealloc_array.exit_crit_edge ]
  %7 = shl i32 %inc160, 2
  %call5.i = call noalias ptr @krealloc(ptr noundef %win.0, i32 noundef %7, i32 noundef 3264) #20
  %tobool27.not = icmp eq ptr %call5.i, null
  br i1 %tobool27.not, label %krealloc_array.exit.if.then28_crit_edge, label %if.end29

krealloc_array.exit.if.then28_crit_edge:          ; preds = %krealloc_array.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then28

if.then28:                                        ; preds = %krealloc_array.exit.if.then28_crit_edge, %if.end25.if.then28_crit_edge
  call void @kfree(ptr noundef %win.0) #12
  br label %cleanup

if.end29:                                         ; preds = %krealloc_array.exit
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %arrayidx = getelementptr i32, ptr %call5.i, i32 %nr_wins.0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx, align 4
  br i1 %tobool10.not, label %if.end29.do.end_crit_edge, label %if.end32

if.end29.do.end_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.end32:                                         ; preds = %if.end29
  %11 = xor i32 %sub.ptr.lhs.cast11, -1
  %add.neg = add i32 %len.1, %sub.ptr.rhs.cast12
  %sub36 = add i32 %add.neg, %11
  %add.ptr = getelementptr i8, ptr %call9, i32 1
  %tobool37.not = icmp eq i32 %sub36, 0
  br i1 %tobool37.not, label %if.end32.do.end_crit_edge, label %if.end32.do.body_crit_edge

if.end32.do.body_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end32.do.end_crit_edge:                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %if.end32.do.end_crit_edge, %if.end29.do.end_crit_edge
  call void @mutex_lock_nested(ptr noundef %buf_mutex.i, i32 noundef 0) #12
  %user_count.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 17
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %user_count.i, i32 noundef 4) #12
  %12 = ptrtoint ptr %user_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %user_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.not.i = icmp eq i32 %13, -1
  br i1 %cmp.not.i, label %if.end.i90, label %do.end.free_win_crit_edge

do.end.free_win_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_win

if.end.i90:                                       ; preds = %do.end
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %15, label %if.end.i90.free_win_crit_edge [
    i32 0, label %if.then2.i
    i32 1, label %for.body.lr.ph.i.i
  ]

if.end.i90.free_win_crit_edge:                    ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_win

if.then2.i:                                       ; preds = %if.end.i90
  br i1 %tobool23.not, label %if.end5.i, label %if.then2.i.free_win_crit_edge

if.then2.i.free_win_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_win

if.end5.i:                                        ; preds = %if.then2.i
  %17 = ptrtoint ptr %call5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call5.i, align 4
  %shl.i = shl i32 %18, 12
  %shr.i.i = and i32 %18, 1048575
  %dec.i.i.i = add i32 %shl.i, -1
  %shr.i.i.i = lshr i32 %dec.i.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %dec.i.i.i)
  %tobool.not.i.i.i79.i = icmp eq i32 %dec.i.i.i, 4095
  %19 = call i32 @llvm.ctlz.i32(i32 %shr.i.i.i, i1 true) #12, !range !159
  %sub.i.i.i.i = sub nuw nsw i32 32, %19
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i79.i, i32 0, i32 %sub.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %tobool.not.i.i = icmp eq i32 %shl.i, 0
  br i1 %tobool.not.i.i, label %if.end5.i.if.then14.i_crit_edge, label %if.end.i.i

if.end5.i.if.then14.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14.i

if.end.i.i:                                       ; preds = %if.end5.i
  %single_sgt.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 7
  %call1.i.i = call i32 @sg_alloc_table(ptr noundef %single_sgt.i.i, i32 noundef 1, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.free_win_crit_edge

if.end.i.i.free_win_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_win

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call38.i.i.i.i.i = call ptr @__alloc_pages(i32 noundef 3524, i32 noundef %cond.i.i.i.i, i32 noundef 0, ptr noundef null) #12
  %tobool6.not.i.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool6.not.i.i, label %if.end4.i.i.err_free_sgt.i.i_crit_edge, label %if.end8.i.i

if.end4.i.i.err_free_sgt.i.i_crit_edge:           ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free_sgt.i.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  call void @split_page(ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef %cond.i.i.i.i) #12
  %20 = ptrtoint ptr %single_sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %single_sgt.i.i, align 4
  %call10.i.i = call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i.i) #12
  %22 = ptrtoint ptr %call10.i.i to i32
  %cmp.i44.i.i = icmp ugt ptr %call10.i.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i44.i.i, label %land.lhs.true.i.i.i, label %if.end8.i.i.do.body5.i.i.i_crit_edge, !prof !141

if.end8.i.i.do.body5.i.i.i_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %23 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i.i = icmp ugt ptr %23, %call10.i.i
  br i1 %cmp1.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge, !prof !141

land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %sub.i45.i.i = add i32 %22, 1073741824
  %shr.i46.i.i = lshr i32 %sub.i45.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %24 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i47.i.i = add i32 %24, %shr.i46.i.i
  %call.i.i80.i = call i32 @pfn_valid(i32 noundef %add.i47.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80.i)
  %tobool.i.i.i = icmp eq i32 %call.i.i80.i, 0
  br i1 %tobool.i.i.i, label %land.rhs.i.i.i.do.body5.i.i.i_crit_edge, label %do.end8.i.i.i, !prof !140

land.rhs.i.i.i.do.body5.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i.i

do.body5.i.i.i:                                   ; preds = %land.rhs.i.i.i.do.body5.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.body5.i.i.i_crit_edge, %if.end8.i.i.do.body5.i.i.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !160
  unreachable

do.end8.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %25 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %25, i32 %shr.i46.i.i
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %21, align 4
  %28 = ptrtoint ptr %add.ptr.i.i.i to i32
  %and2.i.i.i.i.i = and i32 %28, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and2.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body11.i.i.i.i.i, label %do.body5.i.i.i.i.i, !prof !141

do.body5.i.i.i.i.i:                               ; preds = %do.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !161
  unreachable

do.body11.i.i.i.i.i:                              ; preds = %do.end8.i.i.i
  %and.i.i.i.i.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %sg_set_buf.exit.i.i, label %do.body19.i.i.i.i.i, !prof !141

do.body19.i.i.i.i.i:                              ; preds = %do.body11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !162
  unreachable

sg_set_buf.exit.i.i:                              ; preds = %do.body11.i.i.i.i.i
  %and.i.i.i = and i32 %22, 4095
  %and.i.i.i.i.i = and i32 %27, 3
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, %28
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or.i.i.i.i.i, ptr %21, align 4
  %offset1.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 1
  %30 = ptrtoint ptr %offset1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and.i.i.i, ptr %offset1.i.i.i.i, align 4
  %length.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %21, i32 0, i32 2
  %31 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shl.i, ptr %length.i.i.i.i, align 4
  %thdev.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %thdev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %thdev.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent.i.i, align 8
  %parent11.i.i = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %parent11.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent11.i.i, align 8
  %38 = ptrtoint ptr %single_sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %single_sgt.i.i, align 4
  %call14.i.i = call i32 @dma_map_sg_attrs(ptr noundef %37, ptr noundef %39, i32 noundef 1, i32 noundef 2, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %cmp.i.i = icmp slt i32 %call14.i.i, 0
  br i1 %cmp.i.i, label %err_free_pages.i.i, label %if.end16.i.i

if.end16.i.i:                                     ; preds = %sg_set_buf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %nr_pages17.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 10
  %40 = ptrtoint ptr %nr_pages17.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shr.i.i, ptr %nr_pages17.i.i, align 4
  %call18.i.i = call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i.i) #12
  %base.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 13
  %41 = ptrtoint ptr %base.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call18.i.i, ptr %base.i.i, align 4
  %42 = ptrtoint ptr %single_sgt.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %single_sgt.i.i, align 4
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_address.i.i, align 4
  %base_addr.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 14
  %46 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %base_addr.i.i, align 4
  br label %if.then14.i

err_free_pages.i.i:                               ; preds = %sg_set_buf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef %cond.i.i.i.i) #12
  br label %err_free_sgt.i.i

err_free_sgt.i.i:                                 ; preds = %err_free_pages.i.i, %if.end4.i.i.err_free_sgt.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call14.i.i, %err_free_pages.i.i ], [ -12, %if.end4.i.i.err_free_sgt.i.i_crit_edge ]
  call void @sg_free_table(ptr noundef %single_sgt.i.i) #12
  br label %free_win

for.body.lr.ph.i.i:                               ; preds = %if.end.i90
  %win_list.i.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 6
  %prev10.i.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 6, i32 1
  %mbuf.i.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 3
  %mbuf_priv.i.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 4
  %base.i.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 13
  %base_addr.i.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 14
  %cur_win.i.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 8
  %nr_pages.i.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.045.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %call5.i, i32 %i.045.i.i
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i.i81.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i.i81.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i82.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.end.i.i82.i:                                   ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 88) #15
  %tobool1.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool1.not.i.i.i, label %if.end.i.i82.i.if.then.i.i_crit_edge, label %if.end3.i.i83.i

if.end.i.i82.i.if.then.i.i_crit_edge:             ; preds = %if.end.i.i82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end3.i.i83.i:                                  ; preds = %if.end.i.i82.i
  %msc4.i.i.i = getelementptr inbounds %struct.msc_window, ptr %call7.i.i.i.i.i, i32 0, i32 6
  %50 = ptrtoint ptr %msc4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %1, ptr %msc4.i.i.i, align 4
  %_sgt.i.i.i = getelementptr inbounds %struct.msc_window, ptr %call7.i.i.i.i.i, i32 0, i32 7
  %sgt.i.i.i = getelementptr inbounds %struct.msc_window, ptr %call7.i.i.i.i.i, i32 0, i32 8
  %51 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %_sgt.i.i.i, ptr %sgt.i.i.i, align 4
  %lockout.i.i.i = getelementptr inbounds %struct.msc_window, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %52 = ptrtoint ptr %lockout.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %lockout.i.i.i, align 4
  %lo_lock.i.i.i = getelementptr inbounds %struct.msc_window, ptr %call7.i.i.i.i.i, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lo_lock.i.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @msc_buffer_win_alloc.__key, i16 noundef signext 3) #12
  %53 = ptrtoint ptr %win_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %win_list.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %54, %win_list.i.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end3.i.i83.i.if.end13.i.i.i_crit_edge, label %if.then8.i.i.i

if.end3.i.i83.i.if.end13.i.i.i_crit_edge:         ; preds = %if.end3.i.i83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i.i

if.then8.i.i.i:                                   ; preds = %if.end3.i.i83.i
  call void @__sanitizer_cov_trace_pc() #14
  %55 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev10.i.i.i, align 4
  %pgoff.i.i.i = getelementptr inbounds %struct.msc_window, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %pgoff.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pgoff.i.i.i, align 4
  %nr_blocks11.i.i.i = getelementptr inbounds %struct.msc_window, ptr %56, i32 0, i32 4
  %59 = ptrtoint ptr %nr_blocks11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr_blocks11.i.i.i, align 4
  %add.i.i84.i = add i32 %60, %58
  %pgoff12.i.i.i = getelementptr inbounds %struct.msc_window, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %pgoff12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add.i.i84.i, ptr %pgoff12.i.i.i, align 8
  br label %if.end13.i.i.i

if.end13.i.i.i:                                   ; preds = %if.then8.i.i.i, %if.end3.i.i83.i.if.end13.i.i.i_crit_edge
  %62 = ptrtoint ptr %mbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mbuf.i.i.i, align 4
  %tobool14.not.i.i.i = icmp eq ptr %63, null
  br i1 %tobool14.not.i.i.i, label %if.end13.i.i.i.if.else.i.i.i_crit_edge, label %land.lhs.true.i.i85.i

if.end13.i.i.i.if.else.i.i.i_crit_edge:           ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i.i

land.lhs.true.i.i85.i:                            ; preds = %if.end13.i.i.i
  %alloc_window.i.i.i = getelementptr inbounds %struct.msu_buffer, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %alloc_window.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %alloc_window.i.i.i, align 4
  %tobool16.not.i.i.i = icmp eq ptr %65, null
  br i1 %tobool16.not.i.i.i, label %land.lhs.true.i.i85.i.if.else.i.i.i_crit_edge, label %if.then17.i.i.i

land.lhs.true.i.i85.i.if.else.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i85.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i.i

if.then17.i.i.i:                                  ; preds = %land.lhs.true.i.i85.i
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %mbuf_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mbuf_priv.i.i.i, align 4
  %shl.i.i.i = shl i32 %48, 12
  %call21.i.i.i = call i32 %65(ptr noundef %67, ptr noundef %sgt.i.i.i, i32 noundef %shl.i.i.i) #12
  br label %if.end23.i.i.i

if.else.i.i.i:                                    ; preds = %land.lhs.true.i.i85.i.if.else.i.i.i_crit_edge, %if.end13.i.i.i.if.else.i.i.i_crit_edge
  %68 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sgt.i.i.i, align 4
  %call.i.i.i.i = call i32 @sg_alloc_table(ptr noundef %69, i32 noundef %48, i32 noundef 3264) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i86.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i86.i, label %for.body.lr.ph.i.i.i.i, label %if.else.i.i.i.msc_buffer_win_alloc.exit.thread19.i.i_crit_edge

if.else.i.i.i.msc_buffer_win_alloc.exit.thread19.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_buffer_win_alloc.exit.thread19.i.i

for.body.lr.ph.i.i.i.i:                           ; preds = %if.else.i.i.i
  %70 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sgt.i.i.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %sg_set_buf.exit.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.lr.ph.i.i.i.i
  %i.057.i.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i.i ], [ %inc.i.i.i.i, %sg_set_buf.exit.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %sg_ptr.056.i.i.i.i = phi ptr [ %73, %for.body.lr.ph.i.i.i.i ], [ %call7.i.i.i.i, %sg_set_buf.exit.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %74 = ptrtoint ptr %msc4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %msc4.i.i.i, align 4
  %thdev.i.i.i.i = getelementptr inbounds %struct.msc, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %thdev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %thdev.i.i.i.i, align 4
  %parent.i.i.i.i = getelementptr inbounds %struct.device, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %parent.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %parent.i.i.i.i, align 8
  %parent2.i.i.i.i = getelementptr inbounds %struct.device, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %parent2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %parent2.i.i.i.i, align 8
  %dma_address.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_ptr.056.i.i.i.i, i32 0, i32 3
  %call.i.i.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %81, i32 noundef 4096, ptr noundef %dma_address.i.i.i.i, i32 noundef 3264, i32 noundef 0) #12
  %tobool4.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool4.not.i.i.i.i, label %err_nomem.i.i.i.i, label %if.end6.i.i.i.i

if.end6.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %82 = ptrtoint ptr %call.i.i.i.i.i to i32
  %cmp.i.i.i.i.i = icmp ugt ptr %call.i.i.i.i.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %if.end6.i.i.i.i.do.body5.i.i.i.i87.i_crit_edge, !prof !141

if.end6.i.i.i.i.do.body5.i.i.i.i87.i_crit_edge:   ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i.i.i87.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end6.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %83 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i.i.i.i = icmp ugt ptr %83, %call.i.i.i.i.i
  br i1 %cmp1.i.i.i.i.i, label %land.rhs.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.do.body5.i.i.i.i87.i_crit_edge, !prof !141

land.lhs.true.i.i.i.i.i.do.body5.i.i.i.i87.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i.i.i87.i

land.rhs.i.i.i.i.i:                               ; preds = %land.lhs.true.i.i.i.i.i
  %sub.i.i.i.i.i = add i32 %82, 1073741824
  %shr.i.i.i.i.i = lshr i32 %sub.i.i.i.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %84 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i.i.i.i = add i32 %84, %shr.i.i.i.i.i
  %call.i45.i.i.i.i = call i32 @pfn_valid(i32 noundef %add.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i.i.i.i)
  %tobool.i.i.i.i.i = icmp eq i32 %call.i45.i.i.i.i, 0
  br i1 %tobool.i.i.i.i.i, label %land.rhs.i.i.i.i.i.do.body5.i.i.i.i87.i_crit_edge, label %do.end8.i.i.i.i.i, !prof !140

land.rhs.i.i.i.i.i.do.body5.i.i.i.i87.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i.i.i87.i

do.body5.i.i.i.i87.i:                             ; preds = %land.rhs.i.i.i.i.i.do.body5.i.i.i.i87.i_crit_edge, %land.lhs.true.i.i.i.i.i.do.body5.i.i.i.i87.i_crit_edge, %if.end6.i.i.i.i.do.body5.i.i.i.i87.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !160
  unreachable

do.end8.i.i.i.i.i:                                ; preds = %land.rhs.i.i.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %85 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i.i.i.i = getelementptr %struct.page, ptr %85, i32 %shr.i.i.i.i.i
  %86 = ptrtoint ptr %sg_ptr.056.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %sg_ptr.056.i.i.i.i, align 4
  %88 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  %and2.i.i.i.i.i.i.i = and i32 %88, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %and2.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %do.body11.i.i.i.i.i.i.i, label %do.body5.i.i.i.i.i.i.i, !prof !141

do.body5.i.i.i.i.i.i.i:                           ; preds = %do.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !161
  unreachable

do.body11.i.i.i.i.i.i.i:                          ; preds = %do.end8.i.i.i.i.i
  %and.i.i.i.i.i.i.i.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i.i.i, label %sg_set_buf.exit.i.i.i.i, label %do.body19.i.i.i.i.i.i.i, !prof !141

do.body19.i.i.i.i.i.i.i:                          ; preds = %do.body11.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !162
  unreachable

sg_set_buf.exit.i.i.i.i:                          ; preds = %do.body11.i.i.i.i.i.i.i
  %and.i.i.i.i88.i = and i32 %82, 4095
  %and.i.i.i.i.i.i.i = and i32 %87, 3
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, %88
  %89 = ptrtoint ptr %sg_ptr.056.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %or.i.i.i.i.i.i.i, ptr %sg_ptr.056.i.i.i.i, align 4
  %offset1.i.i.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_ptr.056.i.i.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %offset1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and.i.i.i.i88.i, ptr %offset1.i.i.i.i.i.i, align 4
  %length.i.i.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_ptr.056.i.i.i.i, i32 0, i32 2
  %91 = ptrtoint ptr %length.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 4096, ptr %length.i.i.i.i.i.i, align 4
  %inc.i.i.i.i = add nuw i32 %i.057.i.i.i.i, 1
  %call7.i.i.i.i = call ptr @sg_next(ptr noundef %sg_ptr.056.i.i.i.i) #12
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %48
  br i1 %exitcond.not.i.i.i.i, label %sg_set_buf.exit.i.i.i.i.if.end23.i.i.i_crit_edge, label %sg_set_buf.exit.i.i.i.i.for.body.i.i.i.i_crit_edge

sg_set_buf.exit.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %sg_set_buf.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i.i

sg_set_buf.exit.i.i.i.i.if.end23.i.i.i_crit_edge: ; preds = %sg_set_buf.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i.i.i

err_nomem.i.i.i.i:                                ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.057.i.i.i.i)
  %cmp1158.i.i.i.i = icmp sgt i32 %i.057.i.i.i.i, 0
  br i1 %cmp1158.i.i.i.i, label %for.body12.preheader.i.i.i.i, label %err_nomem.i.i.i.i.for.end23.i.i.i.i_crit_edge

err_nomem.i.i.i.i.for.end23.i.i.i.i_crit_edge:    ; preds = %err_nomem.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end23.i.i.i.i

for.body12.preheader.i.i.i.i:                     ; preds = %err_nomem.i.i.i.i
  %92 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sgt.i.i.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  br label %for.body12.i.i.i.i

for.body12.i.i.i.i:                               ; preds = %sg_virt.exit.i.i.i.i.for.body12.i.i.i.i_crit_edge, %for.body12.preheader.i.i.i.i
  %ret.060.i.i.i.i = phi i32 [ %inc21.i.i.i.i, %sg_virt.exit.i.i.i.i.for.body12.i.i.i.i_crit_edge ], [ 0, %for.body12.preheader.i.i.i.i ]
  %sg_ptr.159.i.i.i.i = phi ptr [ %call22.i.i.i.i, %sg_virt.exit.i.i.i.i.for.body12.i.i.i.i_crit_edge ], [ %95, %for.body12.preheader.i.i.i.i ]
  %96 = ptrtoint ptr %sg_ptr.159.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sg_ptr.159.i.i.i.i, align 4
  %and.i.i.i46.i.i.i.i = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i46.i.i.i.i)
  %tobool.i.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i46.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i.i, label %sg_virt.exit.i.i.i.i, label %do.body2.i.i.i.i.i.i, !prof !141

do.body2.i.i.i.i.i.i:                             ; preds = %for.body12.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

sg_virt.exit.i.i.i.i:                             ; preds = %for.body12.i.i.i.i
  %98 = ptrtoint ptr %msc4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %msc4.i.i.i, align 4
  %thdev14.i.i.i.i = getelementptr inbounds %struct.msc, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %thdev14.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %thdev14.i.i.i.i, align 4
  %parent16.i.i.i.i = getelementptr inbounds %struct.device, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %parent16.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %parent16.i.i.i.i, align 8
  %parent17.i.i.i.i = getelementptr inbounds %struct.device, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %parent17.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %parent17.i.i.i.i, align 8
  %and.i.i.i.i.i89.i = and i32 %97, -4
  %106 = inttoptr i32 %and.i.i.i.i.i89.i to ptr
  %call1.i.i.i.i.i = call ptr @page_address(ptr noundef %106) #12
  %offset.i.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_ptr.159.i.i.i.i, i32 0, i32 1
  %107 = ptrtoint ptr %offset.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %offset.i.i.i.i.i, align 4
  %add.ptr.i47.i.i.i.i = getelementptr i8, ptr %call1.i.i.i.i.i, i32 %108
  %dma_address19.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg_ptr.159.i.i.i.i, i32 0, i32 3
  %109 = ptrtoint ptr %dma_address19.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dma_address19.i.i.i.i, align 4
  call void @dma_free_attrs(ptr noundef %105, i32 noundef 4096, ptr noundef %add.ptr.i47.i.i.i.i, i32 noundef %110, i32 noundef 0) #12
  %inc21.i.i.i.i = add nuw nsw i32 %ret.060.i.i.i.i, 1
  %call22.i.i.i.i = call ptr @sg_next(ptr noundef %sg_ptr.159.i.i.i.i) #12
  %exitcond65.not.i.i.i.i = icmp eq i32 %inc21.i.i.i.i, %i.057.i.i.i.i
  br i1 %exitcond65.not.i.i.i.i, label %sg_virt.exit.i.i.i.i.for.end23.i.i.i.i_crit_edge, label %sg_virt.exit.i.i.i.i.for.body12.i.i.i.i_crit_edge

sg_virt.exit.i.i.i.i.for.body12.i.i.i.i_crit_edge: ; preds = %sg_virt.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body12.i.i.i.i

sg_virt.exit.i.i.i.i.for.end23.i.i.i.i_crit_edge: ; preds = %sg_virt.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end23.i.i.i.i

for.end23.i.i.i.i:                                ; preds = %sg_virt.exit.i.i.i.i.for.end23.i.i.i.i_crit_edge, %err_nomem.i.i.i.i.for.end23.i.i.i.i_crit_edge
  %111 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sgt.i.i.i, align 4
  call void @sg_free_table(ptr noundef %112) #12
  br label %msc_buffer_win_alloc.exit.thread19.i.i

if.end23.i.i.i:                                   ; preds = %sg_set_buf.exit.i.i.i.i.if.end23.i.i.i_crit_edge, %if.then17.i.i.i
  %ret.0.i.i.i = phi i32 [ %call21.i.i.i, %if.then17.i.i.i ], [ %48, %sg_set_buf.exit.i.i.i.i.if.end23.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.i.i.i)
  %cmp.i.i90.i = icmp slt i32 %ret.0.i.i.i, 1
  br i1 %cmp.i.i90.i, label %msc_buffer_win_alloc.exit.i.i, label %if.end25.i.i.i

if.end25.i.i.i:                                   ; preds = %if.end23.i.i.i
  %nr_segs.i.i.i = getelementptr inbounds %struct.msc_window, ptr %call7.i.i.i.i.i, i32 0, i32 5
  %113 = ptrtoint ptr %nr_segs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %ret.0.i.i.i, ptr %nr_segs.i.i.i, align 8
  %nr_blocks26.i.i.i = getelementptr inbounds %struct.msc_window, ptr %call7.i.i.i.i.i, i32 0, i32 4
  %114 = ptrtoint ptr %nr_blocks26.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %48, ptr %nr_blocks26.i.i.i, align 4
  %115 = ptrtoint ptr %win_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile ptr, ptr %win_list.i.i.i, align 4
  %cmp.i73.not.i.i.i = icmp eq ptr %116, %win_list.i.i.i
  br i1 %cmp.i73.not.i.i.i, label %if.then30.i.i.i, label %if.end25.i.i.i.if.end33.i.i.i_crit_edge

if.end25.i.i.i.if.end33.i.i.i_crit_edge:          ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33.i.i.i

if.then30.i.i.i:                                  ; preds = %if.end25.i.i.i
  %117 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %sgt.i.i.i, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  %and.i.i.i.i75.i.i.i = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i75.i.i.i)
  %tobool.i.not.i.i.i76.i.i.i = icmp eq i32 %and.i.i.i.i75.i.i.i, 0
  br i1 %tobool.i.not.i.i.i76.i.i.i, label %msc_win_base.exit.i.i.i, label %do.body2.i.i.i77.i.i.i, !prof !141

do.body2.i.i.i77.i.i.i:                           ; preds = %if.then30.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

msc_win_base.exit.i.i.i:                          ; preds = %if.then30.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i.i78.i.i.i = and i32 %122, -4
  %123 = inttoptr i32 %and.i.i.i78.i.i.i to ptr
  %call1.i.i79.i.i.i = call ptr @page_address(ptr noundef %123) #12
  %offset.i.i80.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %120, i32 0, i32 1
  %124 = ptrtoint ptr %offset.i.i80.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %offset.i.i80.i.i.i, align 4
  %add.ptr.i.i81.i.i.i = getelementptr i8, ptr %call1.i.i79.i.i.i, i32 %125
  %126 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %add.ptr.i.i81.i.i.i, ptr %base.i.i.i, align 4
  %127 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %sgt.i.i.i, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 4
  %dma_address.i84.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %dma_address.i84.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dma_address.i84.i.i.i, align 4
  %133 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %base_addr.i.i.i, align 4
  %134 = ptrtoint ptr %cur_win.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call7.i.i.i.i.i, ptr %cur_win.i.i.i, align 4
  br label %if.end33.i.i.i

if.end33.i.i.i:                                   ; preds = %msc_win_base.exit.i.i.i, %if.end25.i.i.i.if.end33.i.i.i_crit_edge
  %135 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %prev10.i.i.i, align 4
  %call.i.i85.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i.i, ptr noundef %136, ptr noundef %win_list.i.i.i) #12
  br i1 %call.i.i85.i.i.i, label %if.end.i.i.i.i.i, label %if.end33.i.i.i.list_add_tail.exit.i.i.i_crit_edge

if.end33.i.i.i.list_add_tail.exit.i.i.i_crit_edge: ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %137 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call7.i.i.i.i.i, ptr %prev10.i.i.i, align 4
  %138 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %win_list.i.i.i, ptr %call7.i.i.i.i.i, align 8
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %139 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %prev3.i.i.i.i.i, align 4
  %140 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %call7.i.i.i.i.i, ptr %136, align 4
  br label %list_add_tail.exit.i.i.i

list_add_tail.exit.i.i.i:                         ; preds = %if.end.i.i.i.i.i, %if.end33.i.i.i.list_add_tail.exit.i.i.i_crit_edge
  %141 = ptrtoint ptr %nr_pages.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %nr_pages.i.i.i, align 4
  %add36.i.i.i = add i32 %142, %48
  store i32 %add36.i.i.i, ptr %nr_pages.i.i.i, align 4
  br label %for.inc.i.i

msc_buffer_win_alloc.exit.thread19.i.i:           ; preds = %for.end23.i.i.i.i, %if.else.i.i.i.msc_buffer_win_alloc.exit.thread19.i.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #12
  br label %if.then.i.i

msc_buffer_win_alloc.exit.i.i:                    ; preds = %if.end23.i.i.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i.i)
  %tobool.not.i91.i = icmp eq i32 %ret.0.i.i.i, 0
  br i1 %tobool.not.i91.i, label %msc_buffer_win_alloc.exit.i.i.for.inc.i.i_crit_edge, label %msc_buffer_win_alloc.exit.i.i.if.then.i.i_crit_edge

msc_buffer_win_alloc.exit.i.i.if.then.i.i_crit_edge: ; preds = %msc_buffer_win_alloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

msc_buffer_win_alloc.exit.i.i.for.inc.i.i_crit_edge: ; preds = %msc_buffer_win_alloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %msc_buffer_win_alloc.exit.i.i.if.then.i.i_crit_edge, %msc_buffer_win_alloc.exit.thread19.i.i, %if.end.i.i82.i.if.then.i.i_crit_edge
  %retval.0.i17.i.i = phi i32 [ -12, %msc_buffer_win_alloc.exit.thread19.i.i ], [ -12, %if.end.i.i82.i.if.then.i.i_crit_edge ], [ %ret.0.i.i.i, %msc_buffer_win_alloc.exit.i.i.if.then.i.i_crit_edge ]
  call fastcc void @msc_buffer_multi_free(ptr noundef %1) #12
  br label %free_win

for.inc.i.i:                                      ; preds = %msc_buffer_win_alloc.exit.i.i.for.inc.i.i_crit_edge, %list_add_tail.exit.i.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.045.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %i.045.i.i, %nr_wins.0
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %win_list.i7.i.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 6
  %143 = ptrtoint ptr %win_list.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %win.067.i.i.i = load ptr, ptr %win_list.i7.i.i, align 4
  %cmp.not68.i.i.i = icmp eq ptr %win.067.i.i.i, %win_list.i7.i.i
  br i1 %cmp.not68.i.i.i, label %for.end.i.i.msc_buffer_relink.exit.i.i_crit_edge, label %for.end.i.i.for.body.i.i.i_crit_edge

for.end.i.i.for.body.i.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %for.body.i.i.i

for.end.i.i.msc_buffer_relink.exit.i.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_buffer_relink.exit.i.i

for.cond.loopexit.i.i.i:                          ; preds = %if.end27.i.i.i.for.cond.loopexit.i.i.i_crit_edge, %for.body.i.i.i.for.cond.loopexit.i.i.i_crit_edge
  %144 = ptrtoint ptr %win.069.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %win.0.i.i.i = load ptr, ptr %win.069.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %win.0.i.i.i, %win_list.i7.i.i
  br i1 %cmp.not.i.i.i, label %for.cond.loopexit.i.i.i.msc_buffer_relink.exit.i.i_crit_edge, label %for.cond.loopexit.i.i.i.for.body.i.i.i_crit_edge

for.cond.loopexit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %for.cond.loopexit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.cond.loopexit.i.i.i.msc_buffer_relink.exit.i.i_crit_edge: ; preds = %for.cond.loopexit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %msc_buffer_relink.exit.i.i

for.body.i.i.i:                                   ; preds = %for.cond.loopexit.i.i.i.for.body.i.i.i_crit_edge, %for.end.i.i.for.body.i.i.i_crit_edge
  %win.069.i.i.i = phi ptr [ %win.0.i.i.i, %for.cond.loopexit.i.i.i.for.body.i.i.i_crit_edge ], [ %win.067.i.i.i, %for.end.i.i.for.body.i.i.i_crit_edge ]
  %sgt.i8.i.i = getelementptr inbounds %struct.msc_window, ptr %win.069.i.i.i, i32 0, i32 8
  %nr_segs.i9.i.i = getelementptr inbounds %struct.msc_window, ptr %win.069.i.i.i, i32 0, i32 5
  %145 = ptrtoint ptr %nr_segs.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %nr_segs.i9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp1462.not.i.i.i = icmp eq i32 %146, 0
  br i1 %cmp1462.not.i.i.i, label %for.body.i.i.i.for.cond.loopexit.i.i.i_crit_edge, label %for.body15.lr.ph.i.i.i

for.body.i.i.i.for.cond.loopexit.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i.i.i

for.body15.lr.ph.i.i.i:                           ; preds = %for.body.i.i.i
  %147 = ptrtoint ptr %sgt.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %sgt.i8.i.i, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %148, align 4
  %151 = ptrtoint ptr %win.069.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %win.069.i.i.i, align 4
  %msc.i.i.i.i = getelementptr inbounds %struct.msc_window, ptr %win.069.i.i.i, i32 0, i32 6
  %153 = ptrtoint ptr %msc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %msc.i.i.i.i, align 4
  %win_list.i.i.i.i = getelementptr inbounds %struct.msc, ptr %154, i32 0, i32 6
  %cmp.i.i.i.i = icmp eq ptr %152, %win_list.i.i.i.i
  %win_list.win.0.i.i.i = select i1 %cmp.i.i.i.i, ptr %win_list.i7.i.i, ptr %win.069.i.i.i
  %155 = ptrtoint ptr %win_list.win.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %next_win.0.i.i.i = load ptr, ptr %win_list.win.0.i.i.i, align 4
  %..i.i.i = select i1 %cmp.i.i.i.i, i32 2, i32 0
  %sgt.i.i.i.i.i.i = getelementptr inbounds %struct.msc_window, ptr %next_win.0.i.i.i, i32 0, i32 8
  br label %for.body15.i.i.i

for.body15.i.i.i:                                 ; preds = %if.end27.i.i.i.for.body15.i.i.i_crit_edge, %for.body15.lr.ph.i.i.i
  %sg.065.i.i.i = phi ptr [ %150, %for.body15.lr.ph.i.i.i ], [ %call29.i.i.i, %if.end27.i.i.i.for.body15.i.i.i_crit_edge ]
  %blk.064.i.i.i = phi i32 [ 0, %for.body15.lr.ph.i.i.i ], [ %inc.i.i.i, %if.end27.i.i.i.for.body15.i.i.i_crit_edge ]
  %sw_tag.163.i.i.i = phi i32 [ %..i.i.i, %for.body15.lr.ph.i.i.i ], [ %sw_tag.2.i.i.i, %if.end27.i.i.i.for.body15.i.i.i_crit_edge ]
  %156 = ptrtoint ptr %sg.065.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %sg.065.i.i.i, align 4
  %and.i.i.i.i10.i.i = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i10.i.i)
  %tobool.i.not.i.i.i.i92.i = icmp eq i32 %and.i.i.i.i10.i.i, 0
  br i1 %tobool.i.not.i.i.i.i92.i, label %sg_virt.exit.i.i.i, label %do.body2.i.i.i.i.i, !prof !141

do.body2.i.i.i.i.i:                               ; preds = %for.body15.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

sg_virt.exit.i.i.i:                               ; preds = %for.body15.i.i.i
  %and.i.i.i11.i.i = and i32 %157, -4
  %158 = inttoptr i32 %and.i.i.i11.i.i to ptr
  %call1.i.i.i.i = call ptr @page_address(ptr noundef %158) #12
  %offset.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.065.i.i.i, i32 0, i32 1
  %159 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %offset.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call1.i.i.i.i, i32 %160
  %161 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 64)
  %162 = ptrtoint ptr %sgt.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %sgt.i.i.i.i.i.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %163, align 4
  %dma_address.i.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %165, i32 0, i32 3
  %166 = ptrtoint ptr %dma_address.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %dma_address.i.i.i.i.i, align 4
  %shr.i.i.i.i = lshr i32 %167, 12
  %next_win18.i.i.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %168 = ptrtoint ptr %next_win18.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %168, i32 4)
  store i32 %shr.i.i.i.i, ptr %next_win18.i.i.i, align 1
  %169 = ptrtoint ptr %nr_segs.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %nr_segs.i9.i.i, align 4
  %sub.i.i93.i = add i32 %170, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %blk.064.i.i.i, i32 %sub.i.i93.i)
  %cmp20.i.i.i = icmp eq i32 %blk.064.i.i.i, %sub.i.i93.i
  br i1 %cmp20.i.i.i, label %if.then21.i.i.i, label %if.else24.i.i.i

if.then21.i.i.i:                                  ; preds = %sg_virt.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %or22.i.i.i = or i32 %sw_tag.163.i.i.i, 1
  %171 = ptrtoint ptr %sgt.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %sgt.i8.i.i, align 4
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  br label %if.end27.i.i.i

if.else24.i.i.i:                                  ; preds = %sg_virt.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call25.i.i.i = call ptr @sg_next(ptr noundef %sg.065.i.i.i) #12
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.else24.i.i.i, %if.then21.i.i.i
  %.pn.i.i.i = phi ptr [ %174, %if.then21.i.i.i ], [ %call25.i.i.i, %if.else24.i.i.i ]
  %sw_tag.2.i.i.i = phi i32 [ %or22.i.i.i, %if.then21.i.i.i ], [ %sw_tag.163.i.i.i, %if.else24.i.i.i ]
  %shr.sink.in.in.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %.pn.i.i.i, i32 0, i32 3
  %175 = ptrtoint ptr %shr.sink.in.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %shr.sink.in.i.i.i = load i32, ptr %shr.sink.in.in.i.i.i, align 4
  %shr.sink.i.i.i = lshr i32 %shr.sink.in.i.i.i, 12
  %176 = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i.i.i, i32 0, i32 2
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_storeN_noabort(i32 %177, i32 4)
  store i32 %shr.sink.i.i.i, ptr %176, align 1
  %178 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %178, i32 4)
  store i32 %sw_tag.2.i.i.i, ptr %add.ptr.i.i.i.i, align 1
  %length.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %sg.065.i.i.i, i32 0, i32 2
  %179 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %length.i.i.i, align 4
  %div58.i.i.i = lshr i32 %180, 6
  %block_sz.i.i.i = getelementptr inbounds %struct.msc_block_desc, ptr %add.ptr.i.i.i.i, i32 0, i32 1
  %181 = ptrtoint ptr %block_sz.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 %div58.i.i.i, ptr %block_sz.i.i.i, align 1
  %inc.i.i.i = add nuw i32 %blk.064.i.i.i, 1
  %call29.i.i.i = call ptr @sg_next(ptr noundef %sg.065.i.i.i) #12
  %182 = ptrtoint ptr %nr_segs.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %nr_segs.i9.i.i, align 4
  %cmp14.i.i.i = icmp ult i32 %inc.i.i.i, %183
  br i1 %cmp14.i.i.i, label %if.end27.i.i.i.for.body15.i.i.i_crit_edge, label %if.end27.i.i.i.for.cond.loopexit.i.i.i_crit_edge

if.end27.i.i.i.for.cond.loopexit.i.i.i_crit_edge: ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.loopexit.i.i.i

if.end27.i.i.i.for.body15.i.i.i_crit_edge:        ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15.i.i.i

msc_buffer_relink.exit.i.i:                       ; preds = %for.cond.loopexit.i.i.i.msc_buffer_relink.exit.i.i_crit_edge, %for.end.i.i.msc_buffer_relink.exit.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !163
  call void @arm_heavy_mb() #12
  br label %if.then14.i

if.then14.i:                                      ; preds = %msc_buffer_relink.exit.i.i, %if.end16.i.i, %if.end5.i.if.then14.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !164
  %call.i.i78.i = call zeroext i1 @__kasan_check_write(ptr noundef %user_count.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !153
  call void @llvm.prefetch.p0(ptr %user_count.i, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then14.i
  %184 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %user_count.i, ptr %user_count.i, i32 -1, i32 0, ptr elementtype(i32) %user_count.i) #12, !srcloc !154
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %184, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %atomic_cmpxchg.exit.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

atomic_cmpxchg.exit.i:                            ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %184, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %asmresult3.i.i.i.i)
  %cmp20.not.i = icmp eq i32 %asmresult3.i.i.i.i, -1
  br i1 %cmp20.not.i, label %atomic_cmpxchg.exit.i.free_win_crit_edge, label %land.rhs.i

atomic_cmpxchg.exit.i.free_win_crit_edge:         ; preds = %atomic_cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_win

land.rhs.i:                                       ; preds = %atomic_cmpxchg.exit.i
  %.b76.i = load i1, ptr @msc_buffer_alloc.__already_done, align 1
  br i1 %.b76.i, label %land.rhs.i.free_win_crit_edge, label %if.then28.i, !prof !141

land.rhs.i.free_win_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %free_win

if.then28.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @msc_buffer_alloc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1325, i32 noundef 9, ptr noundef null) #12
  br label %free_win

free_win.thread:                                  ; preds = %land.lhs.true.free_win.thread_crit_edge, %if.end17.free_win.thread_crit_edge, %do.body.free_win.thread_crit_edge
  %ret.0.ph = phi i32 [ -22, %land.lhs.true.free_win.thread_crit_edge ], [ -12, %do.body.free_win.thread_crit_edge ], [ %call.i89, %if.end17.free_win.thread_crit_edge ]
  call void @kfree(ptr noundef %win.0) #12
  br label %cleanup

free_win:                                         ; preds = %if.then28.i, %land.rhs.i.free_win_crit_edge, %atomic_cmpxchg.exit.i.free_win_crit_edge, %if.then.i.i, %err_free_sgt.i.i, %if.end.i.i.free_win_crit_edge, %if.then2.i.free_win_crit_edge, %if.end.i90.free_win_crit_edge, %do.end.free_win_crit_edge
  %retval.0.i91 = phi i32 [ -16, %do.end.free_win_crit_edge ], [ -22, %if.then2.i.free_win_crit_edge ], [ -22, %if.then28.i ], [ 0, %atomic_cmpxchg.exit.i.free_win_crit_edge ], [ -22, %land.rhs.i.free_win_crit_edge ], [ -22, %if.end.i90.free_win_crit_edge ], [ %call1.i.i, %if.end.i.i.free_win_crit_edge ], [ %ret.0.i.i, %err_free_sgt.i.i ], [ %retval.0.i17.i.i, %if.then.i.i ]
  call void @mutex_unlock(ptr noundef %buf_mutex.i) #12
  call void @kfree(ptr noundef nonnull %call5.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i91)
  %tobool40.not = icmp eq i32 %retval.0.i91, 0
  br i1 %tobool40.not, label %free_win._crit_edge, label %free_win.cleanup_crit_edge

free_win.cleanup_crit_edge:                       ; preds = %free_win
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

free_win._crit_edge:                              ; preds = %free_win
  call void @__sanitizer_cov_trace_pc() #14
  br label %185

185:                                              ; preds = %free_win._crit_edge, %free_win.thread97
  br label %cleanup

cleanup:                                          ; preds = %185, %free_win.cleanup_crit_edge, %free_win.thread, %if.then28, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then28 ], [ -1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %size, %185 ], [ %retval.0.i91, %free_win.cleanup_crit_edge ], [ %ret.0.ph, %free_win.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @split_page(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @win_switch_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #12
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !158
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not = icmp eq i32 %4, 1
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %buf_mutex = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 19
  call void @mutex_lock_nested(ptr noundef %buf_mutex, i32 noundef 0) #12
  %mode = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp4 = icmp eq i32 %6, 1
  br i1 %cmp4, label %land.lhs.true, label %if.end3.cleanup.sink.split_crit_edge

if.end3.cleanup.sink.split_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

land.lhs.true:                                    ; preds = %if.end3
  %mbuf = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %mbuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mbuf, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.then6:                                         ; preds = %land.lhs.true
  %win_list.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %win_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %win_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %win_list.i
  br i1 %cmp.i.not.i, label %if.then6.cleanup.sink.split_crit_edge, label %if.end.i

if.then6.cleanup.sink.split_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then6
  %cur_win.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %cur_win.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur_win.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %msc.i.i = getelementptr inbounds %struct.msc_window, ptr %12, i32 0, i32 6
  %15 = ptrtoint ptr %msc.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %msc.i.i, align 4
  %win_list.i.i = getelementptr inbounds %struct.msc, ptr %16, i32 0, i32 6
  %cmp.i28.i = icmp eq ptr %14, %win_list.i.i
  %spec.select.i = select i1 %cmp.i28.i, ptr %10, ptr %14
  store ptr %spec.select.i, ptr %cur_win.i, align 4
  %sgt.i.i.i = getelementptr inbounds %struct.msc_window, ptr %spec.select.i, i32 0, i32 8
  %17 = ptrtoint ptr %sgt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sgt.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %and.i.i.i.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %23, label %do.body2.i.i.i.i, !prof !141

do.body2.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #12, !srcloc !142
  unreachable

23:                                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i.i.i = and i32 %22, -4
  %24 = inttoptr i32 %and.i.i.i.i to ptr
  %call1.i.i.i = call ptr @page_address(ptr noundef %24) #12
  %offset.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %26
  %base.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 13
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i.i.i, ptr %base.i, align 4
  %28 = ptrtoint ptr %cur_win.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cur_win.i, align 4
  %sgt.i.i29.i = getelementptr inbounds %struct.msc_window, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %sgt.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sgt.i.i29.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %dma_address.i.i = getelementptr inbounds %struct.scatterlist, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %dma_address.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_address.i.i, align 4
  %base_addr.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 14
  %36 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %base_addr.i, align 4
  %thdev.i = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %thdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %thdev.i, align 4
  %call17.i = call i32 @intel_th_trace_switch(ptr noundef %38) #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %23, %if.then6.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge, %if.end3.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %size, %23 ], [ -22, %land.lhs.true.cleanup.sink.split_crit_edge ], [ -22, %if.end3.cleanup.sink.split_crit_edge ], [ -22, %if.then6.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %buf_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stop_on_full_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %stop_on_full = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %stop_on_full to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stop_on_full, align 4, !range !149
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stop_on_full_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %stop_on_full = getelementptr inbounds %struct.msc, ptr %1, i32 0, i32 21
  %call1 = tail call i32 @kstrtobool(ptr noundef %buf, ptr noundef %stop_on_full) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %size.call1 = select i1 %tobool.not, i32 %size, i32 %call1
  ret i32 %size.call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind readnone }
attributes #19 = { nobuiltin }
attributes #20 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !33, !35, !37, !39, !40, !42, !43, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !93, !95, !96, !98, !100, !102, !104, !106, !108, !110, !111, !113, !115, !117, !119, !121, !123, !124, !126, !127, !129}
!llvm.named.register.sp = !{!130}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__ksymtab_intel_th_msu_buffer_register, !1, !"__ksymtab_intel_th_msu_buffer_register", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 249, i32 1}
!2 = !{ptr @__ksymtab_intel_th_msu_buffer_unregister, !3, !"__ksymtab_intel_th_msu_buffer_unregister", i1 false, i1 false}
!3 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 263, i32 1}
!4 = !{ptr @__ksymtab_intel_th_msc_window_unlock, !5, !"__ksymtab_intel_th_msc_window_unlock", i1 false, i1 false}
!5 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1745, i32 1}
!6 = !{ptr @__initcall__kmod_intel_th_msu__238_2194_intel_th_msc_driver_init6, !7, !"__initcall__kmod_intel_th_msu__238_2194_intel_th_msc_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 2192, i32 1}
!8 = !{ptr @__exitcall_intel_th_msc_driver_exit, !7, !"__exitcall_intel_th_msc_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_file239, !10, !"__UNIQUE_ID_file239", i1 false, i1 false}
!10 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 2196, i32 1}
!11 = !{ptr @__UNIQUE_ID_license240, !10, !"__UNIQUE_ID_license240", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_description241, !13, !"__UNIQUE_ID_description241", i1 false, i1 false}
!13 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 2197, i32 1}
!14 = !{ptr @__UNIQUE_ID_author242, !15, !"__UNIQUE_ID_author242", i1 false, i1 false}
!15 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 2198, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 171, i32 8}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @msu_buffer_mutex, !17, !"msu_buffer_mutex", i1 false, i1 false}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 189, i32 2}
!22 = !{ptr @msu_buffer_list, !23, !"msu_buffer_list", i1 false, i1 false}
!23 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 170, i32 8}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 746, i32 3}
!26 = !{ptr @msc_win_set_lockout._rs, !25, !"_rs", i1 false, i1 false}
!27 = !{ptr @__func__.msc_win_set_lockout, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @msc_win_set_lockout._entry, !25, !"_entry", i1 false, i1 false}
!32 = !{ptr @msc_win_set_lockout._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 2187, i32 11}
!35 = !{ptr @intel_th_msc_driver, !36, !"intel_th_msc_driver", i1 false, i1 false}
!36 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 2177, i32 31}
!37 = !{ptr @intel_th_msc_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 2151, i32 2}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../drivers/hwtracing/intel_th/intel_th.h", i32 223, i32 6}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @intel_th_msc_init.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1689, i32 2}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 2174, i32 2}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1681, i32 3}
!50 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @intel_th_msc_wait_empty.__UNIQUE_ID_ddebug237, !49, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 686, i32 3}
!55 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @intel_th_msu_init._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @intel_th_msu_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 840, i32 3}
!61 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @msc_disable.__UNIQUE_ID_ddebug230, !60, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 857, i32 2}
!65 = !{ptr @msc_disable.__UNIQUE_ID_ddebug231, !64, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 861, i32 2}
!68 = !{ptr @msc_disable.__UNIQUE_ID_ddebug232, !67, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!69 = !{ptr @intel_th_msc_fops, !70, !"intel_th_msc_fops", i1 false, i1 false}
!70 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1659, i32 37}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!73 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!78 = !{ptr @msc_mmap_ops, !79, !"msc_mmap_ops", i1 false, i1 false}
!79 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1616, i32 42}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1588, i32 7}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!84 = !{ptr @msc_output_group, !85, !"msc_output_group", i1 false, i1 false}
!85 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 2114, i32 37}
!86 = !{ptr @msc_output_attrs, !87, !"msc_output_attrs", i1 false, i1 false}
!87 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 2105, i32 26}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1836, i32 8}
!90 = !{ptr @dev_attr_wrap, !89, !"dev_attr_wrap", i1 false, i1 false}
!91 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1816, i32 35}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1950, i32 8}
!95 = !{ptr @dev_attr_mode, !94, !"dev_attr_mode", i1 false, i1 false}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1861, i32 34}
!98 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1805, i32 22}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1806, i32 21}
!102 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1807, i32 20}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1808, i32 21}
!106 = !{ptr @msc_mode, !107, !"msc_mode", i1 false, i1 false}
!107 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1804, i32 27}
!108 = !{ptr @.str.33, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 2048, i32 8}
!110 = !{ptr @dev_attr_nr_pages, !109, !"dev_attr_nr_pages", i1 false, i1 false}
!111 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1962, i32 37}
!113 = !{ptr @.str.35, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1966, i32 9}
!115 = !{ptr @.str.36, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1970, i32 37}
!117 = distinct !{null, !118, !"__already_done", i1 false, i1 false}
!118 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1325, i32 7}
!119 = distinct !{null, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!121 = !{ptr @msc_buffer_win_alloc.__key, !122, !"__key", i1 false, i1 false}
!122 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 1097, i32 2}
!123 = !{ptr @.str.38, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.39, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 2079, i32 8}
!126 = !{ptr @dev_attr_win_switch, !125, !"dev_attr_win_switch", i1 false, i1 false}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwtracing/intel_th/msu.c", i32 2103, i32 8}
!129 = !{ptr @dev_attr_stop_on_full, !128, !"dev_attr_stop_on_full", i1 false, i1 false}
!130 = !{!"sp"}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!"branch_weights", i32 1, i32 2000}
!141 = !{!"branch_weights", i32 2000, i32 1}
!142 = !{i64 2153874425, i64 2153874917, i64 2153874462, i64 2153874518, i64 2153874552, i64 2153874576, i64 2153874617, i64 2153874638, i64 2153874666, i64 2153874700}
!143 = !{i64 2148387886, i64 2148387912, i64 2148387941, i64 2148387975, i64 2148388006, i64 2148388029}
!144 = !{i64 2148390351, i64 2148390377, i64 2148390406, i64 2148390440, i64 2148390471, i64 2148390494}
!145 = !{i64 6272792}
!146 = !{i64 2153813141}
!147 = !{i64 2153814496}
!148 = !{i64 6272374}
!149 = !{i8 0, i8 2}
!150 = !{i64 2153984152}
!151 = !{i64 2153983994}
!152 = !{i64 2149001263, i64 2149001268, i64 2149001281, i64 2149001325, i64 2149001359, i64 2149001380}
!153 = !{i64 2148489733}
!154 = !{i64 872419, i64 872443, i64 872464, i64 872481, i64 872498}
!155 = !{i64 2148489959}
!156 = !{i64 2152349162, i64 2152349187}
!157 = !{i64 2153636230, i64 2153636714, i64 2153636267, i64 2153636323, i64 2153636357, i64 2153636381, i64 2153636422, i64 2153636443, i64 2153636471, i64 2153636505}
!158 = !{!"auto-init"}
!159 = !{i32 0, i32 33}
!160 = !{i64 2153877186, i64 2153877678, i64 2153877223, i64 2153877279, i64 2153877313, i64 2153877337, i64 2153877378, i64 2153877399, i64 2153877427, i64 2153877461}
!161 = !{i64 2153870867, i64 2153871359, i64 2153870904, i64 2153870960, i64 2153870994, i64 2153871018, i64 2153871059, i64 2153871080, i64 2153871108, i64 2153871142}
!162 = !{i64 2153872477, i64 2153872969, i64 2153872514, i64 2153872570, i64 2153872604, i64 2153872628, i64 2153872669, i64 2153872690, i64 2153872718, i64 2153872752}
!163 = !{i64 2153969743}
!164 = !{i64 2153974772}
