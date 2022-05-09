; ModuleID = '/llk/IR_all_yes/drivers/cxl/core/mbox.c_pt.bc'
source_filename = "../drivers/cxl/core/mbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cxl_mbox_send_cmd\22, \22a\22\09"
module asm "\09.weak\09__crc_cxl_mbox_send_cmd\09\09\09\09"
module asm "\09.long\09__crc_cxl_mbox_send_cmd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxl_mbox_send_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22cxl_mbox_send_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_cxl_mbox_send_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cxl_enumerate_cmds\22, \22a\22\09"
module asm "\09.weak\09__crc_cxl_enumerate_cmds\09\09\09\09"
module asm "\09.long\09__crc_cxl_enumerate_cmds\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxl_enumerate_cmds:\09\09\09\09\09"
module asm "\09.asciz \09\22cxl_enumerate_cmds\22\09\09\09\09\09"
module asm "__kstrtabns_cxl_enumerate_cmds:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cxl_dev_state_identify\22, \22a\22\09"
module asm "\09.weak\09__crc_cxl_dev_state_identify\09\09\09\09"
module asm "\09.long\09__crc_cxl_dev_state_identify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxl_dev_state_identify:\09\09\09\09\09"
module asm "\09.asciz \09\22cxl_dev_state_identify\22\09\09\09\09\09"
module asm "__kstrtabns_cxl_dev_state_identify:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cxl_mem_create_range_info\22, \22a\22\09"
module asm "\09.weak\09__crc_cxl_mem_create_range_info\09\09\09\09"
module asm "\09.long\09__crc_cxl_mem_create_range_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxl_mem_create_range_info:\09\09\09\09\09"
module asm "\09.asciz \09\22cxl_mem_create_range_info\22\09\09\09\09\09"
module asm "__kstrtabns_cxl_mem_create_range_info:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cxl_dev_state_create\22, \22a\22\09"
module asm "\09.weak\09__crc_cxl_dev_state_create\09\09\09\09"
module asm "\09.long\09__crc_cxl_dev_state_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxl_dev_state_create:\09\09\09\09\09"
module asm "\09.asciz \09\22cxl_dev_state_create\22\09\09\09\09\09"
module asm "__kstrtabns_cxl_dev_state_create:\09\09\09\09\09"
module asm "\09.asciz \09\22CXL\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cxl_mem_command = type { %struct.cxl_command_info, i32, i32 }
%struct.cxl_command_info = type { i32, i32, i32, i32 }
%struct.uuid_t = type { [16 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.84 = type { ptr }
%struct.cxl_mbox_cmd = type { i16, ptr, ptr, i32, i32, i16 }
%struct.cxl_dev_state = type { ptr, %struct.cxl_regs, i32, i32, %struct.mutex, [16 x i8], [1 x i32], [1 x i32], %struct.range, %struct.range, i64, i64, i64, i64, i64, i64, i64, i64, ptr }
%struct.cxl_regs = type { %union.anon.71, %union.anon.73 }
%union.anon.71 = type { %struct.anon.72 }
%struct.anon.72 = type { ptr }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.range = type { i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.cxl_mem_query_commands = type { i32, i32, [0 x %struct.cxl_command_info] }
%struct.cxl_send_command = type { i32, i32, %union.anon.80, i32, %struct.anon.82, %struct.anon.83 }
%union.anon.80 = type { i32 }
%struct.anon.82 = type { i32, i32, i64 }
%struct.anon.83 = type { i32, i32, i64 }
%struct.cxl_memdev = type { %struct.device, %struct.cdev, ptr, i32 }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.anon.81 = type { i16, i16 }
%struct.cxl_mbox_get_log = type { %struct.uuid_t, i32, i32 }
%struct.cxl_mbox_get_supported_logs = type { i16, [6 x i8], [0 x %struct.cxl_gsl_entry] }
%struct.cxl_gsl_entry = type { %struct.uuid_t, i32 }
%struct.cxl_cel_entry = type { i16, i16 }
%struct.cxl_mbox_identify = type <{ [16 x i8], i64, i64, i64, i64, i16, i16, i16, i16, i32, [3 x i8], i16, i8, i8 }>
%struct.cxl_mbox_get_partition_info = type { i64, i64, i64, i64 }

@__kstrtab_cxl_mbox_send_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxl_mbox_send_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_cxl_mbox_send_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxl_mbox_send_cmd to i32), ptr @__kstrtab_cxl_mbox_send_cmd, ptr @__kstrtabns_cxl_mbox_send_cmd }, section "___ksymtab_gpl+cxl_mbox_send_cmd", align 4
@cxl_query_cmd.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cxl_core\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cxl_query_cmd\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/cxl/core/mbox.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Query IOCTL\0A\00", [19 x i8] zeroinitializer }, align 32
@cxl_mem_commands = internal global { [21 x %struct.cxl_mem_command], [104 x i8] } { [21 x %struct.cxl_mem_command] [%struct.cxl_mem_command zeroinitializer, %struct.cxl_mem_command { %struct.cxl_command_info { i32 1, i32 0, i32 0, i32 67 }, i32 16384, i32 1 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 2, i32 0, i32 -1, i32 -1 }, i32 0, i32 0 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 3, i32 0, i32 0, i32 -1 }, i32 1024, i32 1 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 4, i32 0, i32 0, i32 80 }, i32 512, i32 0 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 5, i32 0, i32 0, i32 32 }, i32 16640, i32 0 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 6, i32 0, i32 8, i32 -1 }, i32 16642, i32 0 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 7, i32 0, i32 0, i32 18 }, i32 16896, i32 0 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 8, i32 0, i32 24, i32 -1 }, i32 1025, i32 1 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 9, i32 0, i32 10, i32 0 }, i32 16641, i32 0 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 10, i32 0, i32 -1, i32 0 }, i32 16643, i32 0 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 11, i32 0, i32 0, i32 16 }, i32 16897, i32 0 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 12, i32 0, i32 12, i32 0 }, i32 16898, i32 0 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 13, i32 0, i32 0, i32 1 }, i32 16899, i32 0 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 14, i32 0, i32 1, i32 0 }, i32 16900, i32 0 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 15, i32 0, i32 16, i32 -1 }, i32 17152, i32 0 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 16, i32 0, i32 8, i32 0 }, i32 17153, i32 0 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 17, i32 0, i32 72, i32 0 }, i32 17154, i32 0 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 18, i32 0, i32 16, i32 4 }, i32 17155, i32 0 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 19, i32 0, i32 17, i32 0 }, i32 17156, i32 0 }, %struct.cxl_mem_command { %struct.cxl_command_info { i32 20, i32 0, i32 0, i32 -1 }, i32 17157, i32 0 }], [104 x i8] zeroinitializer }, align 32
@cxl_send_cmd.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cxl_send_cmd\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Send IOCTL\0A\00", [20 x i8] zeroinitializer }, align 32
@cxl_enumerate_cmds.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cxl_enumerate_cmds\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Found LOG type %pU of size %d\00", [34 x i8] zeroinitializer }, align 32
@log_uuid = internal constant { [2 x %struct.uuid_t], [32 x i8] } { [2 x %struct.uuid_t] [%struct.uuid_t { [16 x i8] c"\0D\A9\C0\B5\BFAKx\8Fy\96\B1b;?\17" }, %struct.uuid_t { [16 x i8] c"\0E\18\19\D9\11\A9@\0C\81\1F\D6\07\19@=\86" }], [32 x i8] zeroinitializer }, align 32
@__kstrtab_cxl_enumerate_cmds = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxl_enumerate_cmds = external dso_local constant [0 x i8], align 1
@__ksymtab_cxl_enumerate_cmds = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxl_enumerate_cmds to i32), ptr @__kstrtab_cxl_enumerate_cmds, ptr @__kstrtabns_cxl_enumerate_cmds }, section "___ksymtab_gpl+cxl_enumerate_cmds", align 4
@cxl_dev_state_identify.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxl_dev_state_identify\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [152 x i8], [40 x i8] } { [152 x i8] c"Identify Memory Device\0A     total_bytes = %#llx\0A     volatile_only_bytes = %#llx\0A     persistent_only_bytes = %#llx\0A     partition_align_bytes = %#llx\0A\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_cxl_dev_state_identify = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxl_dev_state_identify = external dso_local constant [0 x i8], align 1
@__ksymtab_cxl_dev_state_identify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxl_dev_state_identify to i32), ptr @__kstrtab_cxl_dev_state_identify, ptr @__kstrtabns_cxl_dev_state_identify }, section "___ksymtab_gpl+cxl_dev_state_identify", align 4
@cxl_mem_create_range_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 729, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to query partition information\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cxl_mem_create_range_info\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cxl_mem_create_range_info._entry_ptr = internal global ptr @cxl_mem_create_range_info._entry, section ".printk_index", align 4
@cxl_mem_create_range_info.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 -71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [160 x i8], [32 x i8] } { [160 x i8] c"Get Partition Info\0A     active_volatile_bytes = %#llx\0A     active_persistent_bytes = %#llx\0A     next_volatile_bytes = %#llx\0A     next_persistent_bytes = %#llx\0A\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_cxl_mem_create_range_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxl_mem_create_range_info = external dso_local constant [0 x i8], align 1
@__ksymtab_cxl_mem_create_range_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxl_mem_create_range_info to i32), ptr @__kstrtab_cxl_mem_create_range_info, ptr @__kstrtabns_cxl_mem_create_range_info }, section "___ksymtab_gpl+cxl_mem_create_range_info", align 4
@cxl_dev_state_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 759, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No memory available\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxl_dev_state_create\00", [43 x i8] zeroinitializer }, align 32
@cxl_dev_state_create._entry_ptr = internal global ptr @cxl_dev_state_create._entry, section ".printk_index", align 4
@cxl_dev_state_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&cxlds->mbox_mutex\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_cxl_dev_state_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxl_dev_state_create = external dso_local constant [0 x i8], align 1
@__ksymtab_cxl_dev_state_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxl_dev_state_create to i32), ptr @__kstrtab_cxl_dev_state_create, ptr @__kstrtabns_cxl_dev_state_create }, section "___ksymtab_gpl+cxl_dev_state_create", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cxl\00", [28 x i8] zeroinitializer }, align 32
@cxl_debugfs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mbox\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"raw_allow_all\00", [18 x i8] zeroinitializer }, align 32
@cxl_raw_allow_all = internal global { i8, [31 x i8] } zeroinitializer, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@handle_mailbox_cmd_from_user.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"handle_mailbox_cmd_from_user\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Submitting %s command for user\0A\09opcode: %x\0A\09size: %ub\0A\00", [41 x i8] zeroinitializer }, align 32
@cxl_command_names = internal constant { [22 x %struct.anon.84], [40 x i8] } { [22 x %struct.anon.84] [%struct.anon.84 { ptr @.str.29 }, %struct.anon.84 { ptr @.str.30 }, %struct.anon.84 { ptr @.str.31 }, %struct.anon.84 { ptr @.str.32 }, %struct.anon.84 { ptr @.str.33 }, %struct.anon.84 { ptr @.str.34 }, %struct.anon.84 { ptr @.str.35 }, %struct.anon.84 { ptr @.str.36 }, %struct.anon.84 { ptr @.str.37 }, %struct.anon.84 { ptr @.str.38 }, %struct.anon.84 { ptr @.str.39 }, %struct.anon.84 { ptr @.str.40 }, %struct.anon.84 { ptr @.str.41 }, %struct.anon.84 { ptr @.str.42 }, %struct.anon.84 { ptr @.str.43 }, %struct.anon.84 { ptr @.str.44 }, %struct.anon.84 { ptr @.str.45 }, %struct.anon.84 { ptr @.str.46 }, %struct.anon.84 { ptr @.str.47 }, %struct.anon.84 { ptr @.str.48 }, %struct.anon.84 { ptr @.str.49 }, %struct.anon.84 { ptr @.str.50 }], [40 x i8] zeroinitializer }, align 32
@handle_mailbox_cmd_from_user.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s %s: raw command path used\0A\00", [34 x i8] zeroinitializer }, align 32
@handle_mailbox_cmd_from_user.__already_done.27 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s %s: Invalid return size\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Invalid Command\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Identify Command\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Raw device command\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Get Supported Logs\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Get FW Info\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Get Partition Information\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Get Label Storage Area\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Get Health Info\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Get Log\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Set Partition Information\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Set Label Storage Area\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Get Alert Configuration\00", [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Set Alert Configuration\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Get Shutdown State\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Set Shutdown State\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Get Poison List\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Inject Poison\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Clear Poison\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Get Scan Media Capabilities\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Scan Media\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Get Scan Media Results\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid / last command\00", [41 x i8] zeroinitializer }, align 32
@cxl_walk_cel.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cxl_walk_cel\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Opcode 0x%04x unsupported by driver\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 514, i64 16641, i64 16643, i64 16900, i64 17156, i64 17157]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 329, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"cxl_mem_commands\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 44, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 454, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 594, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [9 x i8] c"log_uuid\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 562, i32 21 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 698, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 729, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 733, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 759, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 763, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 776, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant [12 x i8] c"cxl_debugfs\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 770, i32 23 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 777, i32 36 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 778, i32 22 }
@___asan_gen_.134 = private unnamed_addr constant [18 x i8] c"cxl_raw_allow_all\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 12, i32 13 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 230, i32 6 }
@___asan_gen_.141 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 214, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 174, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 408, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"cxl_command_names\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 53, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 415, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 428, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [32 x i8] c"../include/uapi/linux/cxl_mem.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 53, i32 55 }
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private constant [27 x i8] c"../drivers/cxl/core/mbox.c\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 528, i32 4 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__ksymtab_cxl_dev_state_create, ptr @__ksymtab_cxl_dev_state_identify, ptr @__ksymtab_cxl_enumerate_cmds, ptr @__ksymtab_cxl_mbox_send_cmd, ptr @__ksymtab_cxl_mem_create_range_info, ptr @cxl_dev_state_create._entry, ptr @cxl_dev_state_create._entry_ptr, ptr @cxl_mem_create_range_info._entry, ptr @cxl_mem_create_range_info._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cxl_mem_commands, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @log_uuid, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @cxl_dev_state_create.__key, ptr @.str.17, ptr @.str.18, ptr @cxl_debugfs, ptr @.str.19, ptr @.str.20, ptr @cxl_raw_allow_all, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @cxl_command_names, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_mem_commands to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @log_uuid to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_mem_create_range_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_dev_state_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_dev_state_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_debugfs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_raw_allow_all to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxl_command_names to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxl_mbox_send_cmd(ptr noundef %cxlds, i16 noundef zeroext %opcode, ptr noundef %in, i32 noundef %in_size, ptr noundef %out, i32 noundef %out_size) #0 align 64 {
entry:
  %mbox_cmd = alloca %struct.cxl_mbox_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @cxl_mem_find_command(i16 noundef zeroext %opcode)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mbox_cmd) #10
  %0 = call ptr @memset(ptr %mbox_cmd, i32 255, i32 24)
  %1 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %opcode, ptr %mbox_cmd, align 4
  %payload_in = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd, i32 0, i32 1
  %2 = ptrtoint ptr %payload_in to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %in, ptr %payload_in, align 4
  %payload_out = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd, i32 0, i32 2
  %3 = ptrtoint ptr %payload_out to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %out, ptr %payload_out, align 4
  %size_in = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd, i32 0, i32 3
  %4 = ptrtoint ptr %size_in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %in_size, ptr %size_in, align 4
  %size_out = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd, i32 0, i32 4
  %5 = ptrtoint ptr %size_out to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %out_size, ptr %size_out, align 4
  %return_code = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd, i32 0, i32 5
  %6 = ptrtoint ptr %return_code to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %return_code, align 4
  %payload_size = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 2
  %7 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %payload_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %out_size)
  %cmp = icmp ult i32 %8, %out_size
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbox_send = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 18
  %9 = ptrtoint ptr %mbox_send to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mbox_send, align 8
  %call2 = call i32 %10(ptr noundef %cxlds, ptr noundef nonnull %mbox_cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %11 = ptrtoint ptr %return_code to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %return_code, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp6.not = icmp eq i16 %12, 0
  br i1 %cmp6.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %size_out10 = getelementptr inbounds %struct.cxl_command_info, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %size_out10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size_out10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp11 = icmp sgt i32 %14, -1
  br i1 %cmp11, label %land.lhs.true, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end9
  %15 = ptrtoint ptr %size_out to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %out_size)
  %cmp14.not = icmp eq i32 %16, %out_size
  br i1 %cmp14.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17 ], [ -7, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -6, %if.end4.cleanup_crit_edge ], [ -5, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbox_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cxl_mem_find_command(i16 noundef zeroext %opcode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %opcode to i32
  %0 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %conv)
  %cmp2 = icmp eq i32 %0, %conv
  br i1 %cmp2, label %entry.cleanup_crit_edge, label %for.inc

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp2.1 = icmp eq i32 %1, %conv
  br i1 %cmp2.1, label %for.inc.cleanup_crit_edge, label %for.inc.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  %2 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp2.2 = icmp eq i32 %2, %conv
  br i1 %cmp2.2, label %for.inc.1.cleanup_crit_edge, label %for.inc.2

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.2:                                        ; preds = %for.inc.1
  %3 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp2.3 = icmp eq i32 %3, %conv
  br i1 %cmp2.3, label %for.inc.2.cleanup_crit_edge, label %for.inc.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.3:                                        ; preds = %for.inc.2
  %4 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp2.4 = icmp eq i32 %4, %conv
  br i1 %cmp2.4, label %for.inc.3.cleanup_crit_edge, label %for.inc.4

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.4:                                        ; preds = %for.inc.3
  %5 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 5, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp2.5 = icmp eq i32 %5, %conv
  br i1 %cmp2.5, label %for.inc.4.cleanup_crit_edge, label %for.inc.5

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.5:                                        ; preds = %for.inc.4
  %6 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 6, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp2.6 = icmp eq i32 %6, %conv
  br i1 %cmp2.6, label %for.inc.5.cleanup_crit_edge, label %for.inc.6

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.6:                                        ; preds = %for.inc.5
  %7 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 7, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp2.7 = icmp eq i32 %7, %conv
  br i1 %cmp2.7, label %for.inc.6.cleanup_crit_edge, label %for.inc.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.7:                                        ; preds = %for.inc.6
  %8 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 8, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp2.8 = icmp eq i32 %8, %conv
  br i1 %cmp2.8, label %for.inc.7.cleanup_crit_edge, label %for.inc.8

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.8:                                        ; preds = %for.inc.7
  %9 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 9, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv)
  %cmp2.9 = icmp eq i32 %9, %conv
  br i1 %cmp2.9, label %for.inc.8.cleanup_crit_edge, label %for.inc.9

for.inc.8.cleanup_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.9:                                        ; preds = %for.inc.8
  %10 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 10, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp2.10 = icmp eq i32 %10, %conv
  br i1 %cmp2.10, label %for.inc.9.cleanup_crit_edge, label %for.inc.10

for.inc.9.cleanup_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.10:                                       ; preds = %for.inc.9
  %11 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 11, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp2.11 = icmp eq i32 %11, %conv
  br i1 %cmp2.11, label %for.inc.10.cleanup_crit_edge, label %for.inc.11

for.inc.10.cleanup_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.11:                                       ; preds = %for.inc.10
  %12 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 12, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv)
  %cmp2.12 = icmp eq i32 %12, %conv
  br i1 %cmp2.12, label %for.inc.11.cleanup_crit_edge, label %for.inc.12

for.inc.11.cleanup_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.12:                                       ; preds = %for.inc.11
  %13 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 13, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp2.13 = icmp eq i32 %13, %conv
  br i1 %cmp2.13, label %for.inc.12.cleanup_crit_edge, label %for.inc.13

for.inc.12.cleanup_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.13:                                       ; preds = %for.inc.12
  %14 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 14, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv)
  %cmp2.14 = icmp eq i32 %14, %conv
  br i1 %cmp2.14, label %for.inc.13.cleanup_crit_edge, label %for.inc.14

for.inc.13.cleanup_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.14:                                       ; preds = %for.inc.13
  %15 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 15, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %conv)
  %cmp2.15 = icmp eq i32 %15, %conv
  br i1 %cmp2.15, label %for.inc.14.cleanup_crit_edge, label %for.inc.15

for.inc.14.cleanup_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.15:                                       ; preds = %for.inc.14
  %16 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 16, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv)
  %cmp2.16 = icmp eq i32 %16, %conv
  br i1 %cmp2.16, label %for.inc.15.cleanup_crit_edge, label %for.inc.16

for.inc.15.cleanup_crit_edge:                     ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.16:                                       ; preds = %for.inc.15
  %17 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 17, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv)
  %cmp2.17 = icmp eq i32 %17, %conv
  br i1 %cmp2.17, label %for.inc.16.cleanup_crit_edge, label %for.inc.17

for.inc.16.cleanup_crit_edge:                     ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.17:                                       ; preds = %for.inc.16
  %18 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 18, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp2.18 = icmp eq i32 %18, %conv
  br i1 %cmp2.18, label %for.inc.17.cleanup_crit_edge, label %for.inc.18

for.inc.17.cleanup_crit_edge:                     ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.18:                                       ; preds = %for.inc.17
  %19 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 19, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv)
  %cmp2.19 = icmp eq i32 %19, %conv
  br i1 %cmp2.19, label %for.inc.18.cleanup_crit_edge, label %for.inc.19

for.inc.18.cleanup_crit_edge:                     ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.19:                                       ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #12
  %20 = load i32, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 20, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv)
  %cmp2.20 = icmp eq i32 %20, %conv
  %spec.select = select i1 %cmp2.20, ptr getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 20), ptr null
  br label %cleanup

cleanup:                                          ; preds = %for.inc.19, %for.inc.18.cleanup_crit_edge, %for.inc.17.cleanup_crit_edge, %for.inc.16.cleanup_crit_edge, %for.inc.15.cleanup_crit_edge, %for.inc.14.cleanup_crit_edge, %for.inc.13.cleanup_crit_edge, %for.inc.12.cleanup_crit_edge, %for.inc.11.cleanup_crit_edge, %for.inc.10.cleanup_crit_edge, %for.inc.9.cleanup_crit_edge, %for.inc.8.cleanup_crit_edge, %for.inc.7.cleanup_crit_edge, %for.inc.6.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @cxl_mem_commands, %entry.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 1), %for.inc.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 2), %for.inc.1.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 3), %for.inc.2.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 4), %for.inc.3.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 5), %for.inc.4.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 6), %for.inc.5.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 7), %for.inc.6.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 8), %for.inc.7.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 9), %for.inc.8.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 10), %for.inc.9.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 11), %for.inc.10.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 12), %for.inc.11.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 13), %for.inc.12.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 14), %for.inc.13.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 15), %for.inc.14.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 16), %for.inc.15.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 17), %for.inc.16.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 18), %for.inc.17.cleanup_crit_edge ], [ getelementptr inbounds ([21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 19), %for.inc.18.cleanup_crit_edge ], [ %spec.select, %for.inc.19 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxl_query_cmd(ptr noundef %cxlmd, ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_query_cmd.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_query_cmd, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_query_cmd.__UNIQUE_ID_ddebug259, ptr noundef %cxlmd, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 331) #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !110) #10
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !121
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %q, i32 -1226833921) #10, !srcloc !124
  %asmresult = extractvalue { i32, i32 } %3, 0
  %asmresult7 = extractvalue { i32, i32 } %3, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool9.not = icmp eq i32 %asmresult, 0
  br i1 %tobool9.not, label %if.end11, label %do.end.cleanup36_crit_edge

do.end.cleanup36_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup36

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult7)
  %cmp = icmp eq i32 %asmresult7, 0
  br i1 %cmp, label %if.then12, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 336) #10
  %4 = tail call i32 @llvm.read_register.i32(metadata !110) #10
  %and.i.i.i46 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i46 to ptr
  %cpu_domain.i.i47 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i47) #7, !srcloc !121
  %and.i48 = and i32 %6, -13
  %or.i49 = or i32 %and.i48, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i49) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %7 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %q, i32 21, i32 -1226833921) #10, !srcloc !125
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  br label %cleanup36

for.cond:                                         ; preds = %copy_to_user.exit
  %incdec.ptr = getelementptr %struct.cxl_mem_command, ptr %cmd.062, i32 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %for.cond.cleanup36_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.cleanup36_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup36

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end11.for.body_crit_edge
  %cmd.062 = phi ptr [ %incdec.ptr, %for.cond.for.body_crit_edge ], [ @cxl_mem_commands, %if.end11.for.body_crit_edge ]
  %j.061 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end11.for.body_crit_edge ]
  %inc = add nuw nsw i32 %j.061, 1
  %arrayidx = getelementptr %struct.cxl_mem_query_commands, ptr %q, i32 0, i32 2, i32 %j.061
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %for.body.cleanup36_crit_edge, label %if.end.i.i

for.body.cleanup36_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup36

if.end.i.i:                                       ; preds = %for.body
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arrayidx, i32 16, i32 -1226833920) #13, !srcloc !126
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup36_crit_edge

if.end.i.i.cleanup36_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup36

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd.062, i32 noundef 16) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %arrayidx, ptr noundef %cmd.062, i32 noundef 16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool30.not = icmp ne i32 %call.i12.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %asmresult7)
  %cmp33 = icmp eq i32 %inc, %asmresult7
  %brmerge = select i1 %tobool30.not, i1 true, i1 %cmp33
  br i1 %brmerge, label %cleanup36.loopexit.split.loop.exit59, label %for.cond

cleanup36.loopexit.split.loop.exit59:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  %.mux.le = select i1 %tobool30.not, i32 -14, i32 0
  br label %cleanup36

cleanup36:                                        ; preds = %cleanup36.loopexit.split.loop.exit59, %if.end.i.i.cleanup36_crit_edge, %for.body.cleanup36_crit_edge, %for.cond.cleanup36_crit_edge, %if.then12, %do.end.cleanup36_crit_edge
  %retval.2 = phi i32 [ %7, %if.then12 ], [ -14, %do.end.cleanup36_crit_edge ], [ %.mux.le, %cleanup36.loopexit.split.loop.exit59 ], [ -14, %for.body.cleanup36_crit_edge ], [ -14, %if.end.i.i.cleanup36_crit_edge ], [ 0, %for.cond.cleanup36_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxl_send_cmd(ptr noundef %cxlmd, ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  %send = alloca %struct.cxl_send_command, align 8
  %c = alloca %struct.cxl_mem_command, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cxlds1 = getelementptr inbounds %struct.cxl_memdev, ptr %cxlmd, i32 0, i32 2
  %0 = ptrtoint ptr %cxlds1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cxlds1, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %send) #10
  %2 = call ptr @memset(ptr %send, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #10
  %3 = getelementptr inbounds %struct.cxl_command_info, ptr %c, i32 0, i32 1
  %4 = getelementptr inbounds %struct.cxl_command_info, ptr %c, i32 0, i32 2
  %5 = getelementptr inbounds %struct.cxl_command_info, ptr %c, i32 0, i32 3
  %6 = getelementptr inbounds %struct.cxl_mem_command, ptr %c, i32 0, i32 1
  %7 = getelementptr inbounds %struct.cxl_mem_command, ptr %c, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_send_cmd.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_send_cmd, %if.then)) #10
          to label %if.then.i [label %if.then], !srcloc !120

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_send_cmd.__UNIQUE_ID_ddebug261, ptr noundef %cxlmd, ptr noundef nonnull @.str.5) #10
  br label %if.then.i

if.then.i:                                        ; preds = %if.then, %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %s, i32 48, i32 -1226833920) #13
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !127

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %send, i32 noundef 48) #10
  %9 = call i32 @llvm.read_register.i32(metadata !110) #10
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !121
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %send, ptr noundef %s, i32 noundef 48) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #10, !srcloc !122
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end8, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !127

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 48, %if.then.i.if.then11.i.i_crit_edge ], [ 48, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 48, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %send, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end8:                                          ; preds = %if.end.i.i
  %13 = ptrtoint ptr %cxlds1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cxlds1, align 8
  %15 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %send, align 8
  %17 = add i32 %16, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20, i32 %17)
  %18 = icmp ult i32 %17, -20
  br i1 %18, label %if.end8.cleanup_crit_edge, label %if.end.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  %in.i = getelementptr inbounds %struct.cxl_send_command, ptr %send, i32 0, i32 4
  %19 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %in.i, align 8
  %payload_size.i = getelementptr inbounds %struct.cxl_dev_state, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %payload_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %payload_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp3.i = icmp ugt i32 %20, %22
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp7.i = icmp eq i32 %16, 2
  br i1 %cmp7.i, label %if.then8.i, label %if.end28.i

if.then8.i:                                       ; preds = %if.end5.i
  %out.i = getelementptr inbounds %struct.cxl_send_command, ptr %send, i32 0, i32 5
  %23 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %out.i, align 8
  %25 = getelementptr inbounds %struct.cxl_send_command, ptr %send, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 8
  %conv.i = zext i16 %27 to i32
  %rsvd.i = getelementptr inbounds %struct.anon.81, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %rsvd.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rsvd.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i = icmp ne i16 %29, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp21.i = icmp ugt i32 %24, %22
  %or.cond118.i = select i1 %tobool.not.i, i1 true, i1 %cmp21.i
  br i1 %or.cond118.i, label %if.then8.i.cleanup_crit_edge, label %if.end24.i

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24.i:                                       ; preds = %if.then8.i
  %call.i.i47 = call i32 @security_locked_down(i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47)
  %tobool.not.i.i = icmp eq i32 %call.i.i47, 0
  br i1 %tobool.not.i.i, label %if.end.i.i48, label %if.end24.i.cleanup_crit_edge

if.end24.i.cleanup_crit_edge:                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i48:                                     ; preds = %if.end24.i
  %30 = load i8, ptr @cxl_raw_allow_all, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool1.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool1.not.i.i, label %cxl_mem_raw_command_allowed.exit.i, label %if.end.i.i48.if.end27.i_crit_edge

if.end.i.i48.if.end27.i_crit_edge:                ; preds = %if.end.i.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

cxl_mem_raw_command_allowed.exit.i:               ; preds = %if.end.i.i48
  %.fr128.i = freeze i16 %27
  %31 = lshr i16 %.fr128.i, 8
  %.off.i.i.i = add nsw i16 %31, -68
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %.off.i.i.i)
  %switch.i.i.i = icmp ult i16 %.off.i.i.i, 3
  br i1 %switch.i.i.i, label %cxl_mem_raw_command_allowed.exit.i.cleanup_crit_edge, label %switch.early.test.i

cxl_mem_raw_command_allowed.exit.i.cleanup_crit_edge: ; preds = %cxl_mem_raw_command_allowed.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.i:                              ; preds = %cxl_mem_raw_command_allowed.exit.i
  %32 = zext i16 %.fr128.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i16 %.fr128.i, label %switch.early.test.i.if.end27.i_crit_edge [
    i16 17157, label %switch.early.test.i.cleanup_crit_edge
    i16 17156, label %switch.early.test.i.cleanup_crit_edge56
    i16 16900, label %switch.early.test.i.cleanup_crit_edge57
    i16 16643, label %switch.early.test.i.cleanup_crit_edge58
    i16 16641, label %switch.early.test.i.cleanup_crit_edge59
    i16 514, label %switch.early.test.i.cleanup_crit_edge60
  ]

switch.early.test.i.cleanup_crit_edge60:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.i.cleanup_crit_edge59:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.i.cleanup_crit_edge58:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.i.cleanup_crit_edge57:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.i.cleanup_crit_edge56:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.i.cleanup_crit_edge:            ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.early.test.i.if.end27.i_crit_edge:         ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

if.end27.i:                                       ; preds = %switch.early.test.i.if.end27.i_crit_edge, %if.end.i.i48.if.end27.i_crit_edge
  %33 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %c, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %3, align 4
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %20, ptr %4, align 4
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %24, ptr %5, align 4
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv.i, ptr %6, align 4
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %7, align 4
  br label %if.end13

if.end28.i:                                       ; preds = %if.end5.i
  %flags29.i = getelementptr inbounds %struct.cxl_send_command, ptr %send, i32 0, i32 1
  %39 = ptrtoint ptr %flags29.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %tobool30.not.i = icmp ult i32 %40, 2
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end28.i.cleanup_crit_edge

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end32.i:                                       ; preds = %if.end28.i
  %41 = getelementptr inbounds %struct.cxl_send_command, ptr %send, i32 0, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool33.not.i = icmp eq i32 %43, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end32.i.cleanup_crit_edge

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end35.i:                                       ; preds = %if.end32.i
  %rsvd37.i = getelementptr inbounds %struct.cxl_send_command, ptr %send, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %rsvd37.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rsvd37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool38.not.i = icmp eq i32 %45, 0
  br i1 %tobool38.not.i, label %lor.lhs.false39.i, label %if.end35.i.cleanup_crit_edge

if.end35.i.cleanup_crit_edge:                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false39.i:                                ; preds = %if.end35.i
  %out40.i = getelementptr inbounds %struct.cxl_send_command, ptr %send, i32 0, i32 5
  %rsvd41.i = getelementptr inbounds %struct.cxl_send_command, ptr %send, i32 0, i32 5, i32 1
  %46 = ptrtoint ptr %rsvd41.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rsvd41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool42.not.i = icmp eq i32 %47, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %lor.lhs.false39.i.cleanup_crit_edge

lor.lhs.false39.i.cleanup_crit_edge:              ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44.i:                                       ; preds = %lor.lhs.false39.i
  %arrayidx.i = getelementptr [21 x %struct.cxl_mem_command], ptr @cxl_mem_commands, i32 0, i32 %16
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %enabled_cmds.i = getelementptr inbounds %struct.cxl_dev_state, ptr %14, i32 0, i32 6
  %div3.i.i = lshr i32 %49, 5
  %arrayidx.i.i = getelementptr i32, ptr %enabled_cmds.i, i32 %div3.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %49, 31
  %52 = shl nuw i32 1, %and.i.i
  %53 = and i32 %52, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool49.not.i = icmp eq i32 %53, 0
  br i1 %tobool49.not.i, label %if.end44.i.cleanup_crit_edge, label %if.end51.i

if.end44.i.cleanup_crit_edge:                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end51.i:                                       ; preds = %if.end44.i
  %exclusive_cmds.i = getelementptr inbounds %struct.cxl_dev_state, ptr %14, i32 0, i32 7
  %arrayidx.i120.i = getelementptr i32, ptr %exclusive_cmds.i, i32 %div3.i.i
  %54 = ptrtoint ptr %arrayidx.i120.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %arrayidx.i120.i, align 4
  %56 = and i32 %55, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool55.not.i = icmp eq i32 %56, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.end51.i.cleanup_crit_edge

if.end51.i.cleanup_crit_edge:                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end57.i:                                       ; preds = %if.end51.i
  %size_in58.i = getelementptr inbounds %struct.cxl_command_info, ptr %arrayidx.i, i32 0, i32 2
  %57 = ptrtoint ptr %size_in58.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size_in58.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp59.i = icmp slt i32 %58, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %20)
  %cmp64.not.i = icmp eq i32 %58, %20
  %or.cond127.i = select i1 %cmp59.i, i1 true, i1 %cmp64.not.i
  br i1 %or.cond127.i, label %if.end67.i, label %if.end57.i.cleanup_crit_edge

if.end57.i.cleanup_crit_edge:                     ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end67.i:                                       ; preds = %if.end57.i
  %size_out68.i = getelementptr inbounds %struct.cxl_command_info, ptr %arrayidx.i, i32 0, i32 3
  %59 = ptrtoint ptr %size_out68.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %size_out68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %cmp69.i = icmp sgt i32 %60, -1
  br i1 %cmp69.i, label %land.lhs.true71.i, label %if.end67.i.if.end78.i_crit_edge

if.end67.i.if.end78.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78.i

land.lhs.true71.i:                                ; preds = %if.end67.i
  %61 = ptrtoint ptr %out40.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %out40.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %60)
  %cmp75.i = icmp slt i32 %62, %60
  br i1 %cmp75.i, label %land.lhs.true71.i.cleanup_crit_edge, label %land.lhs.true71.i.if.end78.i_crit_edge

land.lhs.true71.i.if.end78.i_crit_edge:           ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78.i

land.lhs.true71.i.cleanup_crit_edge:              ; preds = %land.lhs.true71.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end78.i:                                       ; preds = %land.lhs.true71.i.if.end78.i_crit_edge, %if.end67.i.if.end78.i_crit_edge
  %63 = call ptr @memcpy(ptr %c, ptr %arrayidx.i, i32 24)
  %64 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %20, ptr %4, align 4
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr = load i32, ptr %5, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end78.i, %if.end27.i
  %66 = phi i32 [ %.pr, %if.end78.i ], [ %24, %if.end27.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp = icmp slt i32 %66, 0
  br i1 %cmp, label %if.then14, label %if.end13.if.end17_crit_edge

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %payload_size = getelementptr inbounds %struct.cxl_dev_state, ptr %1, i32 0, i32 2
  %67 = ptrtoint ptr %payload_size to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %payload_size, align 4
  %69 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %5, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end13.if.end17_crit_edge
  %payload = getelementptr inbounds %struct.cxl_send_command, ptr %send, i32 0, i32 4, i32 2
  %70 = ptrtoint ptr %payload to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %payload, align 8
  %out = getelementptr inbounds %struct.cxl_send_command, ptr %send, i32 0, i32 5
  %payload18 = getelementptr inbounds %struct.cxl_send_command, ptr %send, i32 0, i32 5, i32 2
  %72 = ptrtoint ptr %payload18 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %payload18, align 8
  %retval20 = getelementptr inbounds %struct.cxl_send_command, ptr %send, i32 0, i32 3
  %call21 = call fastcc i32 @handle_mailbox_cmd_from_user(ptr noundef %1, ptr noundef nonnull %c, i64 noundef %71, i64 noundef %73, ptr noundef %out, ptr noundef %retval20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end8.i.i, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end17
  call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 174) #10
  %call.i.i41 = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i41, label %if.end8.i.i.cleanup_crit_edge, label %copy_to_user.exit

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i45 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %send, i32 noundef 48) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %s, ptr noundef nonnull %send, i32 noundef 48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool26.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool26.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end8.i.i.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %land.lhs.true71.i.cleanup_crit_edge, %if.end57.i.cleanup_crit_edge, %if.end51.i.cleanup_crit_edge, %if.end44.i.cleanup_crit_edge, %lor.lhs.false39.i.cleanup_crit_edge, %if.end35.i.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge, %if.end28.i.cleanup_crit_edge, %switch.early.test.i.cleanup_crit_edge, %switch.early.test.i.cleanup_crit_edge56, %switch.early.test.i.cleanup_crit_edge57, %switch.early.test.i.cleanup_crit_edge58, %switch.early.test.i.cleanup_crit_edge59, %switch.early.test.i.cleanup_crit_edge60, %cxl_mem_raw_command_allowed.exit.i.cleanup_crit_edge, %if.end24.i.cleanup_crit_edge, %if.then8.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call21, %if.end17.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -1, %switch.early.test.i.cleanup_crit_edge ], [ -1, %switch.early.test.i.cleanup_crit_edge56 ], [ -1, %switch.early.test.i.cleanup_crit_edge57 ], [ -1, %switch.early.test.i.cleanup_crit_edge58 ], [ -1, %switch.early.test.i.cleanup_crit_edge59 ], [ -1, %cxl_mem_raw_command_allowed.exit.i.cleanup_crit_edge ], [ -12, %if.end57.i.cleanup_crit_edge ], [ -1, %if.end24.i.cleanup_crit_edge ], [ -12, %land.lhs.true71.i.cleanup_crit_edge ], [ -16, %if.end51.i.cleanup_crit_edge ], [ -25, %if.end44.i.cleanup_crit_edge ], [ -22, %if.end35.i.cleanup_crit_edge ], [ -22, %lor.lhs.false39.i.cleanup_crit_edge ], [ -22, %if.end32.i.cleanup_crit_edge ], [ -22, %if.end28.i.cleanup_crit_edge ], [ -1, %switch.early.test.i.cleanup_crit_edge60 ], [ -22, %if.then8.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -25, %if.end8.cleanup_crit_edge ], [ -14, %if.end8.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %send) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @handle_mailbox_cmd_from_user(ptr noundef %cxlds, ptr nocapture noundef readonly %cmd, i64 noundef %in_payload, i64 noundef %out_payload, ptr nocapture noundef %size_out, ptr nocapture noundef writeonly %retval1) unnamed_addr #0 align 64 {
entry:
  %mbox_cmd = alloca %struct.cxl_mbox_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cxlds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cxlds, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mbox_cmd) #10
  %2 = call ptr @memset(ptr %mbox_cmd, i32 255, i32 24)
  %opcode3 = getelementptr inbounds %struct.cxl_mem_command, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %opcode3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %opcode3, align 4
  %conv = trunc i32 %4 to i16
  %5 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %mbox_cmd, align 4
  %payload_in = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd, i32 0, i32 1
  %6 = ptrtoint ptr %payload_in to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %payload_in, align 4
  %payload_out = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd, i32 0, i32 2
  %7 = ptrtoint ptr %payload_out to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %payload_out, align 4
  %size_in = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd, i32 0, i32 3
  %size_in4 = getelementptr inbounds %struct.cxl_command_info, ptr %cmd, i32 0, i32 2
  %8 = ptrtoint ptr %size_in4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size_in4, align 4
  %10 = ptrtoint ptr %size_in to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %size_in, align 4
  %size_out5 = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd, i32 0, i32 4
  %size_out7 = getelementptr inbounds %struct.cxl_command_info, ptr %cmd, i32 0, i32 3
  %11 = ptrtoint ptr %size_out7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size_out7, align 4
  %13 = ptrtoint ptr %size_out5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %size_out5, align 4
  %return_code = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd, i32 0, i32 5
  %14 = ptrtoint ptr %return_code to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %return_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then:                                          ; preds = %entry
  %call.i.i216 = tail call noalias ptr @kvmalloc_node(i32 noundef %12, i32 noundef 3520, i32 noundef -1) #14
  %15 = ptrtoint ptr %payload_out to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i216, ptr %payload_out, align 4
  %tobool14.not = icmp eq ptr %call.i.i216, null
  br i1 %tobool14.not, label %if.then.cleanup_crit_edge, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.then.if.end16_crit_edge, %entry.if.end16_crit_edge
  %16 = ptrtoint ptr %size_in4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size_in4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool19.not = icmp eq i32 %17, 0
  br i1 %tobool19.not, label %if.end16.do.body_crit_edge, label %if.then20

if.end16.do.body_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then20:                                        ; preds = %if.end16
  %conv23 = trunc i64 %in_payload to i32
  %18 = inttoptr i32 %conv23 to ptr
  %call26 = tail call ptr @vmemdup_user(ptr noundef %18, i32 noundef %17) #10
  %19 = ptrtoint ptr %payload_in to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call26, ptr %payload_in, align 4
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.then20.do.body_crit_edge

if.then20.do.body_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then30:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %payload_out to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %payload_out, align 4
  tail call void @kvfree(ptr noundef %21) #10
  %22 = ptrtoint ptr %payload_in to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %payload_in, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup

do.body:                                          ; preds = %if.then20.do.body_crit_edge, %if.end16.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_mailbox_cmd_from_user.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_mailbox_cmd_from_user, %if.then41)) #10
          to label %do.end [label %if.then41], !srcloc !120

if.then41:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd, align 4
  %arrayidx = getelementptr [22 x %struct.anon.84], ptr @cxl_command_names, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %29 = ptrtoint ptr %mbox_cmd to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %mbox_cmd, align 4
  %conv44 = zext i16 %30 to i32
  %31 = ptrtoint ptr %size_in4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size_in4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_mailbox_cmd_from_user.__UNIQUE_ID_ddebug260, ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef %28, i32 noundef %conv44, i32 noundef %32) #10
  br label %do.end

do.end:                                           ; preds = %if.then41, %do.body
  %33 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp50 = icmp eq i32 %34, 2
  br i1 %cmp50, label %land.rhs, label %do.end.if.end96_crit_edge

do.end.if.end96_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

land.rhs:                                         ; preds = %do.end
  %.b215 = load i1, ptr @handle_mailbox_cmd_from_user.__already_done, align 1
  br i1 %.b215, label %land.rhs.if.end96_crit_edge, label %if.then68, !prof !127

land.rhs.if.end96_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then68:                                        ; preds = %land.rhs
  store i1 true, ptr @handle_mailbox_cmd_from_user.__already_done, align 1
  %call81 = tail call ptr @dev_driver_string(ptr noundef %1) #10
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then68.dev_name.exit_crit_edge

if.then68.dev_name.exit_crit_edge:                ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then68.dev_name.exit_crit_edge
  %retval.0.i217 = phi ptr [ %38, %if.end.i ], [ %36, %if.then68.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 416, i32 noundef 9, ptr noundef nonnull @.str.26, ptr noundef %call81, ptr noundef %retval.0.i217) #10
  br label %if.end96

if.end96:                                         ; preds = %dev_name.exit, %land.rhs.if.end96_crit_edge, %do.end.if.end96_crit_edge
  %mbox_send = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 18
  %39 = ptrtoint ptr %mbox_send to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mbox_send, align 8
  %call104 = call i32 %40(ptr noundef %cxlds, ptr noundef nonnull %mbox_cmd) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end96.out_crit_edge

if.end96.out_crit_edge:                           ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end107:                                        ; preds = %if.end96
  %41 = ptrtoint ptr %size_out5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size_out5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool109.not = icmp eq i32 %42, 0
  br i1 %tobool109.not, label %if.end107.if.end183_crit_edge, label %if.then110

if.end107.if.end183_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183

if.then110:                                       ; preds = %if.end107
  %43 = ptrtoint ptr %size_out to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp113 = icmp ugt i32 %42, %44
  br i1 %cmp113, label %land.rhs122, label %if.then110.if.end162_crit_edge

if.then110.if.end162_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162

land.rhs122:                                      ; preds = %if.then110
  %.b213214 = load i1, ptr @handle_mailbox_cmd_from_user.__already_done.27, align 1
  br i1 %.b213214, label %land.rhs122.if.end162thread-pre-split_crit_edge, label %if.then133, !prof !127

land.rhs122.if.end162thread-pre-split_crit_edge:  ; preds = %land.rhs122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end162thread-pre-split

if.then133:                                       ; preds = %land.rhs122
  store i1 true, ptr @handle_mailbox_cmd_from_user.__already_done.27, align 1
  %call147 = call ptr @dev_driver_string(ptr noundef %1) #10
  %init_name.i218 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %init_name.i218 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i218, align 8
  %tobool.not.i219 = icmp eq ptr %46, null
  br i1 %tobool.not.i219, label %if.end.i220, label %if.then133.dev_name.exit222_crit_edge

if.then133.dev_name.exit222_crit_edge:            ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit222

if.end.i220:                                      ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  br label %dev_name.exit222

dev_name.exit222:                                 ; preds = %if.end.i220, %if.then133.dev_name.exit222_crit_edge
  %retval.0.i221 = phi ptr [ %48, %if.end.i220 ], [ %46, %if.then133.dev_name.exit222_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 429, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %call147, ptr noundef %retval.0.i221) #10
  br label %if.end162thread-pre-split

if.end162thread-pre-split:                        ; preds = %dev_name.exit222, %land.rhs122.if.end162thread-pre-split_crit_edge
  %49 = ptrtoint ptr %size_out5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load i32, ptr %size_out5, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.end162thread-pre-split, %if.then110.if.end162_crit_edge
  %50 = phi i32 [ %.pr, %if.end162thread-pre-split ], [ %42, %if.then110.if.end162_crit_edge ]
  %conv176 = trunc i64 %out_payload to i32
  %51 = inttoptr i32 %conv176 to ptr
  %52 = ptrtoint ptr %payload_out to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %payload_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp9.i.i = icmp slt i32 %50, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end162
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.out_crit_edge, label %if.then27.i.i, !prof !127

land.rhs16.i.i.out_crit_edge:                     ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %out

if.then.i.i.i:                                    ; preds = %if.end162
  call void @__check_object_size(ptr noundef %53, i32 noundef %50, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.23, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %54 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %51, i32 %50, i32 -1226833920) #13, !srcloc !126
  %asmresult.i.i = extractvalue { i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %53, i32 noundef %50) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %51, ptr noundef %53, i32 noundef %50) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %50, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %50, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool180.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool180.not, label %copy_to_user.exit.if.end183_crit_edge, label %copy_to_user.exit.out_crit_edge

copy_to_user.exit.out_crit_edge:                  ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

copy_to_user.exit.if.end183_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end183

if.end183:                                        ; preds = %copy_to_user.exit.if.end183_crit_edge, %if.end107.if.end183_crit_edge
  %55 = ptrtoint ptr %size_out5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size_out5, align 4
  %57 = ptrtoint ptr %size_out to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %size_out, align 4
  %58 = ptrtoint ptr %return_code to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %return_code, align 4
  %conv186 = zext i16 %59 to i32
  %60 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv186, ptr %retval1, align 4
  br label %out

out:                                              ; preds = %if.end183, %copy_to_user.exit.out_crit_edge, %if.then27.i.i, %land.rhs16.i.i.out_crit_edge, %if.end96.out_crit_edge
  %rc.0 = phi i32 [ %call104, %if.end96.out_crit_edge ], [ 0, %if.end183 ], [ -14, %copy_to_user.exit.out_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.out_crit_edge ]
  %61 = ptrtoint ptr %payload_in to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %payload_in, align 4
  call void @kvfree(ptr noundef %62) #10
  %63 = ptrtoint ptr %payload_out to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %payload_out, align 4
  call void @kvfree(ptr noundef %64) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then30, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %24, %if.then30 ], [ %rc.0, %out ], [ -12, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbox_cmd) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxl_enumerate_cmds(ptr noundef %cxlds) #0 align 64 {
entry:
  %mbox_cmd.i.i68 = alloca %struct.cxl_mbox_cmd, align 4
  %log.i = alloca %struct.cxl_mbox_get_log, align 1
  %mbox_cmd.i.i = alloca %struct.cxl_mbox_cmd, align 4
  %uuid = alloca %struct.uuid_t, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cxlds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cxlds, align 8
  %payload_size.i = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 2
  %2 = ptrtoint ptr %payload_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %payload_size.i, align 4
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %3, i32 noundef 3264, i32 noundef -1) #14
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i.i:                                       ; preds = %entry
  %4 = ptrtoint ptr %payload_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %payload_size.i, align 4
  %call.i14.i = tail call fastcc ptr @cxl_mem_find_command(i16 noundef zeroext 1024) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mbox_cmd.i.i) #10
  %6 = call ptr @memset(ptr %mbox_cmd.i.i, i32 255, i32 24)
  %7 = ptrtoint ptr %mbox_cmd.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1024, ptr %mbox_cmd.i.i, align 4
  %payload_in.i.i = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %payload_in.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %payload_in.i.i, align 4
  %payload_out.i.i = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %payload_out.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %payload_out.i.i, align 4
  %size_in.i.i = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %size_in.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %size_in.i.i, align 4
  %size_out.i.i = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %size_out.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %5, ptr %size_out.i.i, align 4
  %return_code.i.i = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %return_code.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %return_code.i.i, align 4
  %mbox_send.i.i = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 18
  %13 = ptrtoint ptr %mbox_send.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mbox_send.i.i, align 8
  %call2.i.i = call i32 %14(ptr noundef %cxlds, ptr noundef nonnull %mbox_cmd.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i, label %cxl_mbox_send_cmd.exit.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %15 = ptrtoint ptr %return_code.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %return_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp6.not.i.i = icmp eq i16 %16, 0
  br i1 %cmp6.not.i.i, label %if.end9.i.i, label %if.end4.i.i.cxl_mbox_send_cmd.exit.thread.i_crit_edge

if.end4.i.i.cxl_mbox_send_cmd.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_mbox_send_cmd.exit.thread.i

if.end9.i.i:                                      ; preds = %if.end4.i.i
  %size_out10.i.i = getelementptr inbounds %struct.cxl_command_info, ptr %call.i14.i, i32 0, i32 3
  %17 = ptrtoint ptr %size_out10.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %size_out10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %cmp11.i.i = icmp sgt i32 %18, -1
  br i1 %cmp11.i.i, label %land.lhs.true.i.i, label %if.end9.i.i.cxl_mbox_send_cmd.exit.thread18.i_crit_edge

if.end9.i.i.cxl_mbox_send_cmd.exit.thread18.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_mbox_send_cmd.exit.thread18.i

land.lhs.true.i.i:                                ; preds = %if.end9.i.i
  %19 = ptrtoint ptr %size_out.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size_out.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %5)
  %cmp14.not.i.i = icmp eq i32 %20, %5
  br i1 %cmp14.not.i.i, label %land.lhs.true.i.i.cxl_mbox_send_cmd.exit.thread18.i_crit_edge, label %land.lhs.true.i.i.cxl_mbox_send_cmd.exit.thread.i_crit_edge

land.lhs.true.i.i.cxl_mbox_send_cmd.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_mbox_send_cmd.exit.thread.i

land.lhs.true.i.i.cxl_mbox_send_cmd.exit.thread18.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_mbox_send_cmd.exit.thread18.i

cxl_mbox_send_cmd.exit.thread18.i:                ; preds = %land.lhs.true.i.i.cxl_mbox_send_cmd.exit.thread18.i_crit_edge, %if.end9.i.i.cxl_mbox_send_cmd.exit.thread18.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbox_cmd.i.i) #10
  br label %cxl_get_gsl.exit

cxl_mbox_send_cmd.exit.thread.i:                  ; preds = %land.lhs.true.i.i.cxl_mbox_send_cmd.exit.thread.i_crit_edge, %if.end4.i.i.cxl_mbox_send_cmd.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %land.lhs.true.i.i.cxl_mbox_send_cmd.exit.thread.i_crit_edge ], [ -6, %if.end4.i.i.cxl_mbox_send_cmd.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbox_cmd.i.i) #10
  br label %if.then4.i

cxl_mbox_send_cmd.exit.i:                         ; preds = %if.end.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbox_cmd.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %cxl_mbox_send_cmd.exit.i.if.then4.i_crit_edge, label %cxl_mbox_send_cmd.exit.i.cxl_get_gsl.exit_crit_edge

cxl_mbox_send_cmd.exit.i.cxl_get_gsl.exit_crit_edge: ; preds = %cxl_mbox_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_get_gsl.exit

cxl_mbox_send_cmd.exit.i.if.then4.i_crit_edge:    ; preds = %cxl_mbox_send_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4.i

if.then4.i:                                       ; preds = %cxl_mbox_send_cmd.exit.i.if.then4.i_crit_edge, %cxl_mbox_send_cmd.exit.thread.i
  %retval.0.i17.i = phi i32 [ %retval.0.i.ph.i, %cxl_mbox_send_cmd.exit.thread.i ], [ %call2.i.i, %cxl_mbox_send_cmd.exit.i.if.then4.i_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call.i.i) #10
  %21 = inttoptr i32 %retval.0.i17.i to ptr
  br label %cxl_get_gsl.exit

cxl_get_gsl.exit:                                 ; preds = %if.then4.i, %cxl_mbox_send_cmd.exit.i.cxl_get_gsl.exit_crit_edge, %cxl_mbox_send_cmd.exit.thread18.i
  %retval.0.i65 = phi ptr [ %21, %if.then4.i ], [ %call.i.i, %cxl_mbox_send_cmd.exit.i.cxl_get_gsl.exit_crit_edge ], [ %call.i.i, %cxl_mbox_send_cmd.exit.thread18.i ]
  %cmp.i66 = icmp ugt ptr %retval.0.i65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i66, label %cxl_get_gsl.exit.if.then_crit_edge, label %for.cond.preheader

cxl_get_gsl.exit.if.then_crit_edge:               ; preds = %cxl_get_gsl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.cond.preheader:                               ; preds = %cxl_get_gsl.exit
  %22 = ptrtoint ptr %retval.0.i65 to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %retval.0.i65, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp116.not = icmp eq i16 %23, 0
  br i1 %cmp116.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %24 = getelementptr inbounds %struct.cxl_mbox_get_log, ptr %log.i, i32 0, i32 1
  %25 = getelementptr inbounds %struct.cxl_mbox_get_log, ptr %log.i, i32 0, i32 2
  %payload_in.i.i70 = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i.i68, i32 0, i32 1
  %payload_out.i.i71 = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i.i68, i32 0, i32 2
  %size_in.i.i72 = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i.i68, i32 0, i32 3
  %size_out.i.i73 = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i.i68, i32 0, i32 4
  %return_code.i.i74 = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i.i68, i32 0, i32 5
  %enabled_cmds.i = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 6
  br label %for.body

if.then:                                          ; preds = %cxl_get_gsl.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i6597 = phi ptr [ %retval.0.i65, %cxl_get_gsl.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %26 = ptrtoint ptr %retval.0.i6597 to i32
  br label %cleanup37

for.body:                                         ; preds = %for.inc35.for.body_crit_edge, %for.body.lr.ph
  %rc.0118 = phi i32 [ -2, %for.body.lr.ph ], [ %rc.1.ph, %for.inc35.for.body_crit_edge ]
  %i.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc35.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cxl_mbox_get_supported_logs, ptr %retval.0.i65, i32 0, i32 2, i32 %i.0117
  %size6 = getelementptr %struct.cxl_mbox_get_supported_logs, ptr %retval.0.i65, i32 0, i32 2, i32 %i.0117, i32 1
  %27 = ptrtoint ptr %size6 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %size6, align 1
  %29 = call i32 @llvm.bswap.i32(i32 %28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uuid) #10
  %30 = call ptr @memset(ptr %uuid, i32 255, i32 16)
  %31 = call ptr @memcpy(ptr %uuid, ptr %arrayidx, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_enumerate_cmds.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_enumerate_cmds, %if.then13)) #10
          to label %do.end [label %if.then13], !srcloc !120

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_enumerate_cmds.__UNIQUE_ID_ddebug265, ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %uuid, i32 noundef %29) #10
  br label %do.end

do.end:                                           ; preds = %if.then13, %for.body
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %uuid, ptr noundef nonnull dereferenceable(16) @log_uuid, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.i67 = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.i67, label %if.end17, label %do.end.for.inc35_crit_edge

do.end.for.inc35_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc35

if.end17:                                         ; preds = %do.end
  %call.i = call noalias ptr @kvmalloc_node(i32 noundef %29, i32 noundef 3264, i32 noundef -1) #14
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not34.i = icmp eq i32 %28, 0
  br i1 %tobool.not34.i, label %if.end21.cxl_walk_cel.exit_crit_edge, label %if.end21.if.end.i.i79_crit_edge

if.end21.if.end.i.i79_crit_edge:                  ; preds = %if.end21
  br label %if.end.i.i79

if.end21.cxl_walk_cel.exit_crit_edge:             ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_walk_cel.exit

if.end.i.i79:                                     ; preds = %cleanup.i.if.end.i.i79_crit_edge, %if.end21.if.end.i.i79_crit_edge
  %offset.037.i = phi i32 [ %add.i, %cleanup.i.if.end.i.i79_crit_edge ], [ 0, %if.end21.if.end.i.i79_crit_edge ]
  %remaining.036.i = phi i32 [ %sub.i, %cleanup.i.if.end.i.i79_crit_edge ], [ %29, %if.end21.if.end.i.i79_crit_edge ]
  %out.addr.035.i = phi ptr [ %add.ptr.i, %cleanup.i.if.end.i.i79_crit_edge ], [ %call.i, %if.end21.if.end.i.i79_crit_edge ]
  %32 = ptrtoint ptr %payload_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %payload_size.i, align 4
  %34 = call i32 @llvm.umin.i32(i32 %remaining.036.i, i32 %33) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %log.i) #10
  %35 = call ptr @memcpy(ptr %log.i, ptr %uuid, i32 16)
  %36 = call i32 @llvm.bswap.i32(i32 %offset.037.i) #10
  %37 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %36, ptr %24, align 1
  %38 = call i32 @llvm.bswap.i32(i32 %34) #10
  %39 = ptrtoint ptr %25 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %25, align 1
  %call.i.i76 = call fastcc ptr @cxl_mem_find_command(i16 noundef zeroext 1025) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mbox_cmd.i.i68) #10
  %40 = call ptr @memset(ptr %mbox_cmd.i.i68, i32 255, i32 24)
  %41 = ptrtoint ptr %mbox_cmd.i.i68 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1025, ptr %mbox_cmd.i.i68, align 4
  %42 = ptrtoint ptr %payload_in.i.i70 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %log.i, ptr %payload_in.i.i70, align 4
  %43 = ptrtoint ptr %payload_out.i.i71 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %out.addr.035.i, ptr %payload_out.i.i71, align 4
  %44 = ptrtoint ptr %size_in.i.i72 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 24, ptr %size_in.i.i72, align 4
  %45 = ptrtoint ptr %size_out.i.i73 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %34, ptr %size_out.i.i73, align 4
  %46 = ptrtoint ptr %return_code.i.i74 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %return_code.i.i74, align 4
  %47 = ptrtoint ptr %mbox_send.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mbox_send.i.i, align 8
  %call2.i.i77 = call i32 %48(ptr noundef %cxlds, ptr noundef nonnull %mbox_cmd.i.i68) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i77)
  %tobool.not.i.i78 = icmp eq i32 %call2.i.i77, 0
  br i1 %tobool.not.i.i78, label %if.end4.i.i81, label %cxl_mbox_send_cmd.exit.i89

if.end4.i.i81:                                    ; preds = %if.end.i.i79
  %49 = ptrtoint ptr %return_code.i.i74 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %return_code.i.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %cmp6.not.i.i80 = icmp eq i16 %50, 0
  br i1 %cmp6.not.i.i80, label %if.end9.i.i84, label %if.end4.i.i81.cxl_mbox_send_cmd.exit.thread.i88_crit_edge

if.end4.i.i81.cxl_mbox_send_cmd.exit.thread.i88_crit_edge: ; preds = %if.end4.i.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_mbox_send_cmd.exit.thread.i88

if.end9.i.i84:                                    ; preds = %if.end4.i.i81
  %size_out10.i.i82 = getelementptr inbounds %struct.cxl_command_info, ptr %call.i.i76, i32 0, i32 3
  %51 = ptrtoint ptr %size_out10.i.i82 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %size_out10.i.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp11.i.i83 = icmp sgt i32 %52, -1
  br i1 %cmp11.i.i83, label %land.lhs.true.i.i86, label %if.end9.i.i84.cxl_mbox_send_cmd.exit.thread24.i_crit_edge

if.end9.i.i84.cxl_mbox_send_cmd.exit.thread24.i_crit_edge: ; preds = %if.end9.i.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_mbox_send_cmd.exit.thread24.i

land.lhs.true.i.i86:                              ; preds = %if.end9.i.i84
  %53 = ptrtoint ptr %size_out.i.i73 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size_out.i.i73, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %34)
  %cmp14.not.i.i85 = icmp eq i32 %54, %34
  br i1 %cmp14.not.i.i85, label %land.lhs.true.i.i86.cxl_mbox_send_cmd.exit.thread24.i_crit_edge, label %land.lhs.true.i.i86.cxl_mbox_send_cmd.exit.thread.i88_crit_edge

land.lhs.true.i.i86.cxl_mbox_send_cmd.exit.thread.i88_crit_edge: ; preds = %land.lhs.true.i.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_mbox_send_cmd.exit.thread.i88

land.lhs.true.i.i86.cxl_mbox_send_cmd.exit.thread24.i_crit_edge: ; preds = %land.lhs.true.i.i86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_mbox_send_cmd.exit.thread24.i

cxl_mbox_send_cmd.exit.thread24.i:                ; preds = %land.lhs.true.i.i86.cxl_mbox_send_cmd.exit.thread24.i_crit_edge, %if.end9.i.i84.cxl_mbox_send_cmd.exit.thread24.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbox_cmd.i.i68) #10
  br label %cleanup.i

cxl_mbox_send_cmd.exit.thread.i88:                ; preds = %land.lhs.true.i.i86.cxl_mbox_send_cmd.exit.thread.i88_crit_edge, %if.end4.i.i81.cxl_mbox_send_cmd.exit.thread.i88_crit_edge
  %retval.0.i.ph.i87 = phi i32 [ -5, %land.lhs.true.i.i86.cxl_mbox_send_cmd.exit.thread.i88_crit_edge ], [ -6, %if.end4.i.i81.cxl_mbox_send_cmd.exit.thread.i88_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbox_cmd.i.i68) #10
  br label %if.then24

cxl_mbox_send_cmd.exit.i89:                       ; preds = %if.end.i.i79
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbox_cmd.i.i68) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i77)
  %cmp3.i = icmp slt i32 %call2.i.i77, 0
  br i1 %cmp3.i, label %cxl_mbox_send_cmd.exit.i89.if.then24_crit_edge, label %cxl_mbox_send_cmd.exit.i89.cleanup.i_crit_edge

cxl_mbox_send_cmd.exit.i89.cleanup.i_crit_edge:   ; preds = %cxl_mbox_send_cmd.exit.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

cxl_mbox_send_cmd.exit.i89.if.then24_crit_edge:   ; preds = %cxl_mbox_send_cmd.exit.i89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

cleanup.i:                                        ; preds = %cxl_mbox_send_cmd.exit.i89.cleanup.i_crit_edge, %cxl_mbox_send_cmd.exit.thread24.i
  %add.ptr.i = getelementptr i8, ptr %out.addr.035.i, i32 %34
  %sub.i = sub i32 %remaining.036.i, %34
  %add.i = add i32 %34, %offset.037.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %log.i) #10
  %tobool.not.i90 = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i90, label %if.end25, label %cleanup.i.if.end.i.i79_crit_edge

cleanup.i.if.end.i.i79_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i79

if.then24:                                        ; preds = %cxl_mbox_send_cmd.exit.i89.if.then24_crit_edge, %cxl_mbox_send_cmd.exit.thread.i88
  %retval.1.ph.i = phi i32 [ %retval.0.i.ph.i87, %cxl_mbox_send_cmd.exit.thread.i88 ], [ %call2.i.i77, %cxl_mbox_send_cmd.exit.i89.if.then24_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %log.i) #10
  call void @kvfree(ptr noundef nonnull %call.i) #10
  br label %cleanup

if.end25:                                         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %cmp16.not.i = icmp ult i32 %29, 4
  br i1 %cmp16.not.i, label %if.end25.cxl_walk_cel.exit_crit_edge, label %for.body.lr.ph.i

if.end25.cxl_walk_cel.exit_crit_edge:             ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_walk_cel.exit

for.body.lr.ph.i:                                 ; preds = %if.end25
  %div14.i = lshr i32 %29, 2
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i93.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i93.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.cxl_cel_entry, ptr %call.i, i32 %i.017.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %arrayidx.i, align 1
  %57 = call i16 @llvm.bswap.i16(i16 %56) #10
  %call.i91 = call fastcc ptr @cxl_mem_find_command(i16 noundef zeroext %57) #10
  %tobool.not.i92 = icmp eq ptr %call.i91, null
  br i1 %tobool.not.i92, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_walk_cel.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_enumerate_cmds, %if.then6.i)) #10
          to label %cleanup.i93 [label %if.then6.i], !srcloc !120

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %cxlds to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cxlds, align 8
  %conv.i = zext i16 %57 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_walk_cel.__UNIQUE_ID_ddebug264, ptr noundef %59, ptr noundef nonnull @.str.52, i32 noundef %conv.i) #10
  br label %cleanup.i93

if.end7.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %call.i91 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %call.i91, align 4
  call void @_set_bit(i32 noundef %61, ptr noundef %enabled_cmds.i) #10
  br label %cleanup.i93

cleanup.i93:                                      ; preds = %if.end7.i, %if.then6.i, %do.body.i
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div14.i
  br i1 %exitcond.not.i, label %cleanup.i93.cxl_walk_cel.exit_crit_edge, label %cleanup.i93.for.body.i_crit_edge

cleanup.i93.for.body.i_crit_edge:                 ; preds = %cleanup.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup.i93.cxl_walk_cel.exit_crit_edge:          ; preds = %cleanup.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_walk_cel.exit

cxl_walk_cel.exit:                                ; preds = %cleanup.i93.cxl_walk_cel.exit_crit_edge, %if.end25.cxl_walk_cel.exit_crit_edge, %if.end21.cxl_walk_cel.exit_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i) #10
  br label %for.body29

for.body29:                                       ; preds = %for.inc.for.body29_crit_edge, %cxl_walk_cel.exit
  %cmd.0113 = phi ptr [ @cxl_mem_commands, %cxl_walk_cel.exit ], [ %incdec.ptr, %for.inc.for.body29_crit_edge ]
  %flags = getelementptr inbounds %struct.cxl_mem_command, ptr %cmd.0113, i32 0, i32 2
  %62 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags, align 4
  %and = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %for.body29.for.inc_crit_edge, label %if.then31

for.body29.for.inc_crit_edge:                     ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then31:                                        ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %cmd.0113 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cmd.0113, align 4
  call void @_set_bit(i32 noundef %65, ptr noundef %enabled_cmds.i) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then31, %for.body29.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.cxl_mem_command, ptr %cmd.0113, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @cxl_mem_commands to i32)
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 24
  %cmp27 = icmp ult i32 %sub.ptr.div, 21
  br i1 %cmp27, label %for.inc.for.body29_crit_edge, label %for.inc.for.inc35_crit_edge

for.inc.for.inc35_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc35

for.inc.for.body29_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29

cleanup:                                          ; preds = %if.then24, %if.end17.cleanup_crit_edge
  %rc.1 = phi i32 [ %retval.1.ph.i, %if.then24 ], [ -12, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uuid) #10
  br label %out

for.inc35:                                        ; preds = %for.inc.for.inc35_crit_edge, %do.end.for.inc35_crit_edge
  %rc.1.ph = phi i32 [ %rc.0118, %do.end.for.inc35_crit_edge ], [ 0, %for.inc.for.inc35_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uuid) #10
  %inc = add nuw nsw i32 %i.0117, 1
  %66 = ptrtoint ptr %retval.0.i65 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %retval.0.i65, align 1
  %68 = call i16 @llvm.bswap.i16(i16 %67)
  %conv = zext i16 %68 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc35.for.body_crit_edge, label %for.inc35.out_crit_edge

for.inc35.out_crit_edge:                          ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc35.for.body_crit_edge:                     ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

out:                                              ; preds = %for.inc35.out_crit_edge, %cleanup, %for.cond.preheader.out_crit_edge
  %rc.2 = phi i32 [ %rc.1, %cleanup ], [ -2, %for.cond.preheader.out_crit_edge ], [ %rc.1.ph, %for.inc35.out_crit_edge ]
  call void @kvfree(ptr noundef %retval.0.i65) #10
  br label %cleanup37

cleanup37:                                        ; preds = %out, %if.then
  %retval.0 = phi i32 [ %26, %if.then ], [ %rc.2, %out ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxl_dev_state_identify(ptr noundef %cxlds) #0 align 64 {
entry:
  %mbox_cmd.i = alloca %struct.cxl_mbox_cmd, align 4
  %id = alloca %struct.cxl_mbox_identify, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 67, ptr nonnull %id) #10
  %0 = call ptr @memset(ptr %id, i32 255, i32 67)
  %call.i = tail call fastcc ptr @cxl_mem_find_command(i16 noundef zeroext 16384) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mbox_cmd.i) #10
  %1 = call ptr @memset(ptr %mbox_cmd.i, i32 255, i32 24)
  %2 = ptrtoint ptr %mbox_cmd.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16384, ptr %mbox_cmd.i, align 4
  %payload_in.i = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i, i32 0, i32 1
  %3 = ptrtoint ptr %payload_in.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %payload_in.i, align 4
  %payload_out.i = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i, i32 0, i32 2
  %4 = ptrtoint ptr %payload_out.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %id, ptr %payload_out.i, align 4
  %size_in.i = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i, i32 0, i32 3
  %5 = ptrtoint ptr %size_in.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %size_in.i, align 4
  %size_out.i = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i, i32 0, i32 4
  %6 = ptrtoint ptr %size_out.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 67, ptr %size_out.i, align 4
  %return_code.i = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i, i32 0, i32 5
  %7 = ptrtoint ptr %return_code.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %return_code.i, align 4
  %payload_size.i = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 2
  %8 = ptrtoint ptr %payload_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %payload_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %9)
  %cmp.i = icmp ult i32 %9, 67
  br i1 %cmp.i, label %entry.cxl_mbox_send_cmd.exit.thread_crit_edge, label %if.end.i

entry.cxl_mbox_send_cmd.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_mbox_send_cmd.exit.thread

if.end.i:                                         ; preds = %entry
  %mbox_send.i = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 18
  %10 = ptrtoint ptr %mbox_send.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mbox_send.i, align 8
  %call2.i = call i32 %11(ptr noundef %cxlds, ptr noundef nonnull %mbox_cmd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %cxl_mbox_send_cmd.exit

if.end4.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %return_code.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %return_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp6.not.i = icmp eq i16 %13, 0
  br i1 %cmp6.not.i, label %if.end9.i, label %if.end4.i.cxl_mbox_send_cmd.exit.thread_crit_edge

if.end4.i.cxl_mbox_send_cmd.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_mbox_send_cmd.exit.thread

if.end9.i:                                        ; preds = %if.end4.i
  %size_out10.i = getelementptr inbounds %struct.cxl_command_info, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %size_out10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size_out10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp11.i = icmp sgt i32 %15, -1
  br i1 %cmp11.i, label %land.lhs.true.i, label %if.end9.i.cxl_mbox_send_cmd.exit.thread31_crit_edge

if.end9.i.cxl_mbox_send_cmd.exit.thread31_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_mbox_send_cmd.exit.thread31

land.lhs.true.i:                                  ; preds = %if.end9.i
  %16 = ptrtoint ptr %size_out.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size_out.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %17)
  %cmp14.not.i = icmp eq i32 %17, 67
  br i1 %cmp14.not.i, label %land.lhs.true.i.cxl_mbox_send_cmd.exit.thread31_crit_edge, label %land.lhs.true.i.cxl_mbox_send_cmd.exit.thread_crit_edge

land.lhs.true.i.cxl_mbox_send_cmd.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_mbox_send_cmd.exit.thread

land.lhs.true.i.cxl_mbox_send_cmd.exit.thread31_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxl_mbox_send_cmd.exit.thread31

cxl_mbox_send_cmd.exit.thread31:                  ; preds = %land.lhs.true.i.cxl_mbox_send_cmd.exit.thread31_crit_edge, %if.end9.i.cxl_mbox_send_cmd.exit.thread31_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbox_cmd.i) #10
  br label %if.end

cxl_mbox_send_cmd.exit.thread:                    ; preds = %land.lhs.true.i.cxl_mbox_send_cmd.exit.thread_crit_edge, %if.end4.i.cxl_mbox_send_cmd.exit.thread_crit_edge, %entry.cxl_mbox_send_cmd.exit.thread_crit_edge
  %retval.0.i28.ph = phi i32 [ -5, %land.lhs.true.i.cxl_mbox_send_cmd.exit.thread_crit_edge ], [ -6, %if.end4.i.cxl_mbox_send_cmd.exit.thread_crit_edge ], [ -7, %entry.cxl_mbox_send_cmd.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbox_cmd.i) #10
  br label %cleanup

cxl_mbox_send_cmd.exit:                           ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbox_cmd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %cxl_mbox_send_cmd.exit.cleanup_crit_edge, label %cxl_mbox_send_cmd.exit.if.end_crit_edge

cxl_mbox_send_cmd.exit.if.end_crit_edge:          ; preds = %cxl_mbox_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cxl_mbox_send_cmd.exit.cleanup_crit_edge:         ; preds = %cxl_mbox_send_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %cxl_mbox_send_cmd.exit.if.end_crit_edge, %cxl_mbox_send_cmd.exit.thread31
  %total_capacity = getelementptr inbounds %struct.cxl_mbox_identify, ptr %id, i32 0, i32 1
  %18 = ptrtoint ptr %total_capacity to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %total_capacity, align 1
  %20 = call i64 @llvm.bswap.i64(i64 %19)
  %mul = shl i64 %20, 28
  %total_bytes = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 10
  %21 = ptrtoint ptr %total_bytes to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %mul, ptr %total_bytes, align 8
  %volatile_capacity = getelementptr inbounds %struct.cxl_mbox_identify, ptr %id, i32 0, i32 2
  %22 = ptrtoint ptr %volatile_capacity to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %volatile_capacity, align 1
  %24 = call i64 @llvm.bswap.i64(i64 %23)
  %mul1 = shl i64 %24, 28
  %volatile_only_bytes = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 11
  %25 = ptrtoint ptr %volatile_only_bytes to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %mul1, ptr %volatile_only_bytes, align 8
  %persistent_capacity = getelementptr inbounds %struct.cxl_mbox_identify, ptr %id, i32 0, i32 3
  %26 = ptrtoint ptr %persistent_capacity to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %persistent_capacity, align 1
  %28 = call i64 @llvm.bswap.i64(i64 %27)
  %mul2 = shl i64 %28, 28
  %persistent_only_bytes = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 12
  %29 = ptrtoint ptr %persistent_only_bytes to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %mul2, ptr %persistent_only_bytes, align 8
  %partition_align = getelementptr inbounds %struct.cxl_mbox_identify, ptr %id, i32 0, i32 4
  %30 = ptrtoint ptr %partition_align to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %partition_align, align 1
  %32 = call i64 @llvm.bswap.i64(i64 %31)
  %mul3 = shl i64 %32, 28
  %partition_align_bytes = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 13
  %33 = ptrtoint ptr %partition_align_bytes to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %mul3, ptr %partition_align_bytes, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_dev_state_identify.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_dev_state_identify, %if.then7)) #10
          to label %do.end [label %if.then7], !srcloc !120

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %cxlds to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cxlds, align 8
  %36 = ptrtoint ptr %total_bytes to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %total_bytes, align 8
  %38 = ptrtoint ptr %volatile_only_bytes to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %volatile_only_bytes, align 8
  %40 = ptrtoint ptr %persistent_only_bytes to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %persistent_only_bytes, align 8
  %42 = ptrtoint ptr %partition_align_bytes to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %partition_align_bytes, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_dev_state_identify.__UNIQUE_ID_ddebug266, ptr noundef %35, ptr noundef nonnull @.str.9, i64 noundef %37, i64 noundef %39, i64 noundef %41, i64 noundef %43) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %lsa_size = getelementptr inbounds %struct.cxl_mbox_identify, ptr %id, i32 0, i32 9
  %44 = ptrtoint ptr %lsa_size to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %lsa_size, align 1
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %lsa_size13 = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 3
  %47 = ptrtoint ptr %lsa_size13 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %lsa_size13, align 8
  %firmware_version = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 5
  %48 = call ptr @memcpy(ptr %firmware_version, ptr %id, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cxl_mbox_send_cmd.exit.cleanup_crit_edge, %cxl_mbox_send_cmd.exit.thread
  %retval.0 = phi i32 [ 0, %do.end ], [ %call2.i, %cxl_mbox_send_cmd.exit.cleanup_crit_edge ], [ %retval.0.i28.ph, %cxl_mbox_send_cmd.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 67, ptr nonnull %id) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxl_mem_create_range_info(ptr noundef %cxlds) #0 align 64 {
entry:
  %mbox_cmd.i.i = alloca %struct.cxl_mbox_cmd, align 4
  %pi.i = alloca %struct.cxl_mbox_get_partition_info, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %partition_align_bytes = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 13
  %0 = ptrtoint ptr %partition_align_bytes to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %partition_align_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ram_range = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 9
  %2 = ptrtoint ptr %ram_range to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %ram_range, align 8
  %volatile_only_bytes = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 11
  %3 = ptrtoint ptr %volatile_only_bytes to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %volatile_only_bytes, align 8
  %sub = add i64 %4, -1
  %end = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %sub, ptr %end, align 8
  %pmem_range = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 8
  %6 = ptrtoint ptr %pmem_range to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %4, ptr %pmem_range, align 8
  %persistent_only_bytes = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 12
  %7 = ptrtoint ptr %persistent_only_bytes to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %persistent_only_bytes, align 8
  %sub5 = add i64 %sub, %8
  %end7 = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %end7 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %sub5, ptr %end7, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %pi.i) #10
  %10 = getelementptr inbounds %struct.cxl_mbox_get_partition_info, ptr %pi.i, i32 0, i32 1
  %11 = getelementptr inbounds %struct.cxl_mbox_get_partition_info, ptr %pi.i, i32 0, i32 2
  %12 = call ptr @memset(ptr %pi.i, i32 255, i32 32)
  %call.i.i = tail call fastcc ptr @cxl_mem_find_command(i16 noundef zeroext 16640) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mbox_cmd.i.i) #10
  %13 = call ptr @memset(ptr %mbox_cmd.i.i, i32 255, i32 24)
  %14 = ptrtoint ptr %mbox_cmd.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 16640, ptr %mbox_cmd.i.i, align 4
  %payload_in.i.i = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %payload_in.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %payload_in.i.i, align 4
  %payload_out.i.i = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %payload_out.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pi.i, ptr %payload_out.i.i, align 4
  %size_in.i.i = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %size_in.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %size_in.i.i, align 4
  %size_out.i.i = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %size_out.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 32, ptr %size_out.i.i, align 4
  %return_code.i.i = getelementptr inbounds %struct.cxl_mbox_cmd, ptr %mbox_cmd.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %return_code.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %return_code.i.i, align 4
  %payload_size.i.i = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 2
  %20 = ptrtoint ptr %payload_size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %payload_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %21)
  %cmp.i.i = icmp ult i32 %21, 32
  br i1 %cmp.i.i, label %if.end.do.end_crit_edge, label %if.end.i.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i.i:                                       ; preds = %if.end
  %mbox_send.i.i = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 18
  %22 = ptrtoint ptr %mbox_send.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mbox_send.i.i, align 8
  %call2.i.i = call i32 %23(ptr noundef %cxlds, ptr noundef nonnull %mbox_cmd.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i, label %if.end.i.i.do.end_crit_edge

if.end.i.i.do.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end4.i.i:                                      ; preds = %if.end.i.i
  %24 = ptrtoint ptr %return_code.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %return_code.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp6.not.i.i = icmp eq i16 %25, 0
  br i1 %cmp6.not.i.i, label %if.end9.i.i, label %if.end4.i.i.do.end_crit_edge

if.end4.i.i.do.end_crit_edge:                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end9.i.i:                                      ; preds = %if.end4.i.i
  %size_out10.i.i = getelementptr inbounds %struct.cxl_command_info, ptr %call.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %size_out10.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size_out10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp11.i.i = icmp sgt i32 %27, -1
  br i1 %cmp11.i.i, label %land.lhs.true.i.i, label %if.end9.i.i.do.body10_crit_edge

if.end9.i.i.do.body10_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

land.lhs.true.i.i:                                ; preds = %if.end9.i.i
  %28 = ptrtoint ptr %size_out.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size_out.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %29)
  %cmp14.not.i.i = icmp eq i32 %29, 32
  br i1 %cmp14.not.i.i, label %land.lhs.true.i.i.do.body10_crit_edge, label %land.lhs.true.i.i.do.end_crit_edge

land.lhs.true.i.i.do.end_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true.i.i.do.body10_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10

do.end:                                           ; preds = %land.lhs.true.i.i.do.end_crit_edge, %if.end4.i.i.do.end_crit_edge, %if.end.i.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %land.lhs.true.i.i.do.end_crit_edge ], [ -6, %if.end4.i.i.do.end_crit_edge ], [ %call2.i.i, %if.end.i.i.do.end_crit_edge ], [ -7, %if.end.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbox_cmd.i.i) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pi.i) #10
  %30 = ptrtoint ptr %cxlds to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cxlds, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.10) #16
  br label %cleanup

do.body10:                                        ; preds = %land.lhs.true.i.i.do.body10_crit_edge, %if.end9.i.i.do.body10_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mbox_cmd.i.i) #10
  %32 = ptrtoint ptr %pi.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %pi.i, align 8
  %34 = call i64 @llvm.bswap.i64(i64 %33) #10
  %mul.i = shl i64 %34, 28
  %active_volatile_bytes.i = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 14
  %35 = ptrtoint ptr %active_volatile_bytes.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %mul.i, ptr %active_volatile_bytes.i, align 8
  %36 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %10, align 8
  %38 = call i64 @llvm.bswap.i64(i64 %37) #10
  %mul1.i = shl i64 %38, 28
  %active_persistent_bytes.i = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 15
  %39 = ptrtoint ptr %active_persistent_bytes.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %mul1.i, ptr %active_persistent_bytes.i, align 8
  %40 = ptrtoint ptr %11 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %11, align 8
  %42 = call i64 @llvm.bswap.i64(i64 %41) #10
  %mul2.i = shl i64 %42, 28
  %next_volatile_bytes.i = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 16
  %43 = ptrtoint ptr %next_volatile_bytes.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %mul2.i, ptr %next_volatile_bytes.i, align 8
  %next_persistent_bytes.i = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 17
  %44 = ptrtoint ptr %next_persistent_bytes.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %mul2.i, ptr %next_persistent_bytes.i, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %pi.i) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxl_mem_create_range_info.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxl_mem_create_range_info, %if.then15)) #10
          to label %do.end19 [label %if.then15], !srcloc !120

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %cxlds to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cxlds, align 8
  %47 = ptrtoint ptr %active_volatile_bytes.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %active_volatile_bytes.i, align 8
  %49 = ptrtoint ptr %active_persistent_bytes.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %active_persistent_bytes.i, align 8
  %51 = ptrtoint ptr %next_volatile_bytes.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %next_volatile_bytes.i, align 8
  %53 = ptrtoint ptr %next_persistent_bytes.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %next_persistent_bytes.i, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxl_mem_create_range_info.__UNIQUE_ID_ddebug267, ptr noundef %46, ptr noundef nonnull @.str.14, i64 noundef %48, i64 noundef %50, i64 noundef %52, i64 noundef %54) #10
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %do.body10
  %ram_range20 = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 9
  %55 = ptrtoint ptr %ram_range20 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %ram_range20, align 8
  %56 = ptrtoint ptr %active_volatile_bytes.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %active_volatile_bytes.i, align 8
  %sub23 = add i64 %57, -1
  %end25 = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 9, i32 1
  %58 = ptrtoint ptr %end25 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %sub23, ptr %end25, align 8
  %pmem_range27 = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 8
  %59 = ptrtoint ptr %pmem_range27 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %57, ptr %pmem_range27, align 8
  %60 = ptrtoint ptr %active_persistent_bytes.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %active_persistent_bytes.i, align 8
  %sub32 = add i64 %sub23, %61
  %end34 = getelementptr inbounds %struct.cxl_dev_state, ptr %cxlds, i32 0, i32 8, i32 1
  %62 = ptrtoint ptr %end34 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %sub32, ptr %end34, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %do.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %retval.0.i.ph.i, %do.end ], [ 0, %do.end19 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cxl_dev_state_create(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 248, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #16
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mbox_mutex = getelementptr inbounds %struct.cxl_dev_state, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mbox_mutex, ptr noundef nonnull @.str.17, ptr noundef nonnull @cxl_dev_state_create.__key) #10
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %do.end
  %retval.0 = phi ptr [ %call.i, %do.body2 ], [ inttoptr (i32 -12 to ptr), %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cxl_mbox_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.18, ptr noundef null) #10
  store ptr %call, ptr @cxl_debugfs, align 4
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.19, ptr noundef %call) #10
  tail call void @debugfs_create_bool(ptr noundef nonnull @.str.20, i16 noundef zeroext 384, ptr noundef %call1, ptr noundef nonnull @cxl_raw_allow_all) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_bool(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxl_mbox_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cxl_debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_locked_down(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmemdup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !28, !29, !30, !31, !33, !34, !36, !38, !39, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !63, !65, !67, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !104, !106, !108, !109}
!llvm.named.register.sp = !{!110}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__ksymtab_cxl_mbox_send_cmd, !1, !"__ksymtab_cxl_mbox_send_cmd", i1 false, i1 false}
!1 = !{!"../drivers/cxl/core/mbox.c", i32 185, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/cxl/core/mbox.c", i32 329, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @cxl_query_cmd.__UNIQUE_ID_ddebug259, !3, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/cxl/core/mbox.c", i32 454, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @cxl_send_cmd.__UNIQUE_ID_ddebug261, !9, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/cxl/core/mbox.c", i32 594, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cxl_enumerate_cmds.__UNIQUE_ID_ddebug265, !13, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!16 = !{ptr @__ksymtab_cxl_enumerate_cmds, !17, !"__ksymtab_cxl_enumerate_cmds", i1 false, i1 false}
!17 = !{!"../drivers/cxl/core/mbox.c", i32 627, i32 1}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/cxl/core/mbox.c", i32 698, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cxl_dev_state_identify.__UNIQUE_ID_ddebug266, !19, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!22 = !{ptr @__ksymtab_cxl_dev_state_identify, !23, !"__ksymtab_cxl_dev_state_identify", i1 false, i1 false}
!23 = !{!"../drivers/cxl/core/mbox.c", i32 712, i32 1}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/cxl/core/mbox.c", i32 729, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cxl_mem_create_range_info._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @cxl_mem_create_range_info._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/cxl/core/mbox.c", i32 733, i32 2}
!33 = !{ptr @cxl_mem_create_range_info.__UNIQUE_ID_ddebug267, !32, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!34 = !{ptr @__ksymtab_cxl_mem_create_range_info, !35, !"__ksymtab_cxl_mem_create_range_info", i1 false, i1 false}
!35 = !{!"../drivers/cxl/core/mbox.c", i32 751, i32 1}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/cxl/core/mbox.c", i32 759, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cxl_dev_state_create._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @cxl_dev_state_create._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @cxl_dev_state_create.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/cxl/core/mbox.c", i32 763, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__ksymtab_cxl_dev_state_create, !45, !"__ksymtab_cxl_dev_state_create", i1 false, i1 false}
!45 = !{!"../drivers/cxl/core/mbox.c", i32 768, i32 1}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/cxl/core/mbox.c", i32 776, i32 35}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/cxl/core/mbox.c", i32 777, i32 36}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/cxl/core/mbox.c", i32 778, i32 22}
!52 = !{ptr @cxl_raw_allow_all, !53, !"cxl_raw_allow_all", i1 false, i1 false}
!53 = !{!"../drivers/cxl/core/mbox.c", i32 12, i32 13}
!54 = !{ptr @cxl_debugfs, !55, !"cxl_debugfs", i1 false, i1 false}
!55 = !{!"../drivers/cxl/core/mbox.c", i32 770, i32 23}
!56 = !{ptr @cxl_mem_commands, !57, !"cxl_mem_commands", i1 false, i1 false}
!57 = !{!"../drivers/cxl/core/mbox.c", i32 44, i32 31}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!65 = distinct !{null, !66, !"security_command_sets", i1 false, i1 false}
!66 = !{!"../drivers/cxl/core/mbox.c", i32 103, i32 11}
!67 = distinct !{null, !68, !"cxl_disabled_raw_commands", i1 false, i1 false}
!68 = !{!"../drivers/cxl/core/mbox.c", i32 88, i32 12}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/cxl/core/mbox.c", i32 408, i32 2}
!71 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @handle_mailbox_cmd_from_user.__UNIQUE_ID_ddebug260, !70, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../drivers/cxl/core/mbox.c", i32 415, i32 2}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../drivers/cxl/core/mbox.c", i32 428, i32 3}
!78 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../include/uapi/linux/cxl_mem.h", i32 53, i32 55}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.48, !80, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.49, !80, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.50, !80, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @cxl_command_names, !103, !"cxl_command_names", i1 false, i1 false}
!103 = !{!"../include/uapi/linux/cxl_mem.h", i32 53, i32 3}
!104 = !{ptr @log_uuid, !105, !"log_uuid", i1 false, i1 false}
!105 = !{!"../drivers/cxl/core/mbox.c", i32 562, i32 21}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/cxl/core/mbox.c", i32 528, i32 4}
!108 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @cxl_walk_cel.__UNIQUE_ID_ddebug264, !107, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!110 = !{!"sp"}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2148174882, i64 2148174887, i64 2148174900, i64 2148174944, i64 2148174978, i64 2148174999}
!121 = !{i64 4906290}
!122 = !{i64 4906487}
!123 = !{i64 2152391720}
!124 = !{i64 2154403729, i64 2154404009, i64 2154404343, i64 2154404677}
!125 = !{i64 2154414065, i64 2154414345, i64 2154414679, i64 2154415013}
!126 = !{i64 2152411416, i64 2152411441}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i8 0, i8 2}
