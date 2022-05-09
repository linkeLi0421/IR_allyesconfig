; ModuleID = '/llk/IR_all_yes/drivers/fsi/fsi-sbefifo.c_pt.bc'
source_filename = "../drivers/fsi/fsi-sbefifo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sbefifo_parse_status\22, \22a\22\09"
module asm "\09.weak\09__crc_sbefifo_parse_status\09\09\09\09"
module asm "\09.long\09__crc_sbefifo_parse_status\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbefifo_parse_status:\09\09\09\09\09"
module asm "\09.asciz \09\22sbefifo_parse_status\22\09\09\09\09\09"
module asm "__kstrtabns_sbefifo_parse_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sbefifo_submit\22, \22a\22\09"
module asm "\09.weak\09__crc_sbefifo_submit\09\09\09\09"
module asm "\09.long\09__crc_sbefifo_submit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sbefifo_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22sbefifo_submit\22\09\09\09\09\09"
module asm "__kstrtabns_sbefifo_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fsi_driver = type { %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.fsi_device_id = type { i8, i8 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.59, %union.anon.60 }
%union.anon.59 = type { ptr }
%union.anon.60 = type { i64 }
%struct.kvec = type { ptr, i32 }
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
%struct.sbefifo = type { i32, ptr, %struct.device, %struct.cdev, %struct.mutex, i8, i8, i8, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.fsi_device = type { %struct.device, i8, i8, i8, ptr, i32, i32 }
%struct.iovec = type { ptr, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.sbefifo_user = type { ptr, %struct.mutex, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@sbefifo_parse_status.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsi_sbefifo\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sbefifo_parse_status\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/fsi/fsi-sbefifo.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sbefifo: cmd %04x, response too small: %zd\0A\00", [52 x i8] zeroinitializer }, align 32
@sbefifo_parse_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 229, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"SBE cmd %02x:%02x status offset out of range: %d/%zd\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sbefifo_parse_status._entry_ptr = internal global ptr @sbefifo_parse_status._entry, section ".printk_index", align 4
@sbefifo_parse_status._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 236, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"SBE cmd %02x:%02x, status signature invalid: 0x%08x 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@sbefifo_parse_status._entry_ptr.9 = internal global ptr @sbefifo_parse_status._entry.7, section ".printk_index", align 4
@sbefifo_parse_status._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 242, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SBE error cmd %02x:%02x status=%04x:%04x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sbefifo_parse_status._entry_ptr.13 = internal global ptr @sbefifo_parse_status._entry.10, section ".printk_index", align 4
@__kstrtab_sbefifo_parse_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbefifo_parse_status = external dso_local constant [0 x i8], align 1
@__ksymtab_sbefifo_parse_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbefifo_parse_status to i32), ptr @__kstrtab_sbefifo_parse_status, ptr @__kstrtabns_sbefifo_parse_status }, section "___ksymtab_gpl+sbefifo_parse_status", align 4
@sbefifo_submit.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_sbefifo_submit = external dso_local constant [0 x i8], align 1
@__kstrtabns_sbefifo_submit = external dso_local constant [0 x i8], align 1
@__ksymtab_sbefifo_submit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sbefifo_submit to i32), ptr @__kstrtab_sbefifo_submit, ptr @__kstrtabns_sbefifo_submit }, section "___ksymtab_gpl+sbefifo_submit", align 4
@__initcall__kmod_fsi_sbefifo__238_1083_sbefifo_init6 = internal global ptr @sbefifo_init, section ".initcall6.init", align 4
@__exitcall_sbefifo_exit = internal global ptr @sbefifo_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file239 = internal constant [41 x i8] c"fsi_sbefifo.file=drivers/fsi/fsi-sbefifo\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [24 x i8] c"fsi_sbefifo.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [61 x i8] c"fsi_sbefifo.author=Brad Bishop <bradleyb@fuzziesquirrel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [60 x i8] c"fsi_sbefifo.author=Eddie James <eajames@linux.vnet.ibm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [52 x i8] c"fsi_sbefifo.author=Andrew Jeffery <andrew@aj.id.au>\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [69 x i8] c"fsi_sbefifo.author=Benjamin Herrenschmidt <benh@kernel.crashing.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [77 x i8] c"fsi_sbefifo.description=Linux device interface to the POWER Self Boot Engine\00", section ".modinfo", align 1
@sbefifo_ffdc_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sbefifo_ffdc_mutex, i64 52), ptr getelementptr (i8, ptr @sbefifo_ffdc_mutex, i64 52) }, ptr @sbefifo_ffdc_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sbefifo_ffdc_mutex.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sbefifo_ffdc_mutex\00", [45 x i8] zeroinitializer }, align 32
@__sbefifo_dump_ffdc.ffdc_line = internal global [60 x i8] zeroinitializer, align 1
@__sbefifo_dump_ffdc._entry = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 160, ptr @.str.5, ptr @.str.6 }, align 1
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SBE invalid FFDC package size %zd\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__sbefifo_dump_ffdc\00", [44 x i8] zeroinitializer }, align 32
@__sbefifo_dump_ffdc._entry_ptr = internal global ptr @__sbefifo_dump_ffdc._entry, section ".printk_index", align 4
@__sbefifo_dump_ffdc._entry.18 = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 169, ptr @.str.5, ptr @.str.6 }, align 1
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"SBE invalid FFDC package signature %08x %08x %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@__sbefifo_dump_ffdc._entry_ptr.20 = internal global ptr @__sbefifo_dump_ffdc._entry.18, section ".printk_index", align 4
@__sbefifo_dump_ffdc._entry.21 = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 175, ptr @.str.5, ptr @.str.6 }, align 1
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"SBE FFDC package len %d words but only %zd remaining\0A\00", [42 x i8] zeroinitializer }, align 32
@__sbefifo_dump_ffdc._entry_ptr.23 = internal global ptr @__sbefifo_dump_ffdc._entry.21, section ".printk_index", align 4
@__sbefifo_dump_ffdc._entry.24 = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.2, i32 181, ptr @.str.12, ptr @.str.6 }, align 1
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"+---- SBE FFDC package %d for async err -----+\0A\00", [48 x i8] zeroinitializer }, align 32
@__sbefifo_dump_ffdc._entry_ptr.26 = internal global ptr @__sbefifo_dump_ffdc._entry.24, section ".printk_index", align 4
@__sbefifo_dump_ffdc._entry.27 = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.2, i32 184, ptr @.str.12, ptr @.str.6 }, align 1
@.str.28 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"+---- SBE FFDC package %d for cmd %02x:%02x -----+\0A\00", [44 x i8] zeroinitializer }, align 32
@__sbefifo_dump_ffdc._entry_ptr.29 = internal global ptr @__sbefifo_dump_ffdc._entry.27, section ".printk_index", align 4
@__sbefifo_dump_ffdc._entry.30 = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.17, ptr @.str.2, i32 186, ptr @.str.12, ptr @.str.6 }, align 1
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"| Response code: %08x                   |\0A\00", [53 x i8] zeroinitializer }, align 32
@__sbefifo_dump_ffdc._entry_ptr.32 = internal global ptr @__sbefifo_dump_ffdc._entry.30, section ".printk_index", align 4
@__sbefifo_dump_ffdc._entry.33 = internal constant %struct.pi_entry { ptr @.str.34, ptr @.str.17, ptr @.str.2, i32 187, ptr @.str.12, ptr @.str.6 }, align 1
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"|-------------------------------------------|\0A\00", [49 x i8] zeroinitializer }, align 32
@__sbefifo_dump_ffdc._entry_ptr.35 = internal global ptr @__sbefifo_dump_ffdc._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"| %04x:\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %08x\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"         \00", [22 x i8] zeroinitializer }, align 32
@__sbefifo_dump_ffdc._entry.39 = internal constant %struct.pi_entry { ptr @.str.40, ptr @.str.17, ptr @.str.2, i32 200, ptr @.str.12, ptr @.str.6 }, align 1
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s |\0A\00", [26 x i8] zeroinitializer }, align 32
@__sbefifo_dump_ffdc._entry_ptr.41 = internal global ptr @__sbefifo_dump_ffdc._entry.39, section ".printk_index", align 4
@__sbefifo_dump_ffdc._entry.42 = internal constant %struct.pi_entry { ptr @.str.43, ptr @.str.17, ptr @.str.2, i32 203, ptr @.str.12, ptr @.str.6 }, align 1
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"+-------------------------------------------+\0A\00", [49 x i8] zeroinitializer }, align 32
@__sbefifo_dump_ffdc._entry_ptr.44 = internal global ptr @__sbefifo_dump_ffdc._entry.42, section ".printk_index", align 4
@sbefifo_cleanup_hw.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sbefifo_cleanup_hw\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SBE state=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@sbefifo_cleanup_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 395, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Cleanup: Reading UP status failed, rc=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@sbefifo_cleanup_hw._entry_ptr = internal global ptr @sbefifo_cleanup_hw._entry, section ".printk_index", align 4
@sbefifo_cleanup_hw._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.45, ptr @.str.2, i32 404, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Cleanup: Reading DOWN status failed, rc=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@sbefifo_cleanup_hw._entry_ptr.50 = internal global ptr @sbefifo_cleanup_hw._entry.48, section ".printk_index", align 4
@sbefifo_cleanup_hw._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.45, ptr @.str.2, i32 413, ptr @.str.53, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Cleanup: FIFO reset request set, resetting\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sbefifo_cleanup_hw._entry_ptr.54 = internal global ptr @sbefifo_cleanup_hw._entry.51, section ".printk_index", align 4
@sbefifo_cleanup_hw._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str.2, i32 417, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cleanup: Reset reg write failed, rc=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@sbefifo_cleanup_hw._entry_ptr.57 = internal global ptr @sbefifo_cleanup_hw._entry.55, section ".printk_index", align 4
@sbefifo_cleanup_hw._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.45, ptr @.str.2, i32 436, ptr @.str.53, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Cleanup: FIFO not clean (up=0x%08x down=0x%08x)\0A\00", [47 x i8] zeroinitializer }, align 32
@sbefifo_cleanup_hw._entry_ptr.60 = internal global ptr @sbefifo_cleanup_hw._entry.58, section ".printk_index", align 4
@sbefifo_collect_async_ffdc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 650, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to allocate SBE FFDC buffer\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sbefifo_collect_async_ffdc\00", [37 x i8] zeroinitializer }, align 32
@sbefifo_collect_async_ffdc._entry_ptr = internal global ptr @sbefifo_collect_async_ffdc._entry, section ".printk_index", align 4
@sbefifo_collect_async_ffdc._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 660, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error %d retrieving SBE FFDC\0A\00", [34 x i8] zeroinitializer }, align 32
@sbefifo_collect_async_ffdc._entry_ptr.65 = internal global ptr @sbefifo_collect_async_ffdc._entry.63, section ".printk_index", align 4
@sbefifo_collect_async_ffdc._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 668, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Error %d decoding SBE FFDC\0A\00", [36 x i8] zeroinitializer }, align 32
@sbefifo_collect_async_ffdc._entry_ptr.68 = internal global ptr @sbefifo_collect_async_ffdc._entry.66, section ".printk_index", align 4
@sbefifo_send_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 518, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"FSI error %d writing UP FIFO\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sbefifo_send_command\00", [43 x i8] zeroinitializer }, align 32
@sbefifo_send_command._entry_ptr = internal global ptr @sbefifo_send_command._entry, section ".printk_index", align 4
@sbefifo_send_command._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.2, i32 536, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FSI error %d writing EOT\0A\00", [38 x i8] zeroinitializer }, align 32
@sbefifo_send_command._entry_ptr.73 = internal global ptr @sbefifo_send_command._entry.71, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sbefifo_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 462, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"FSI error %d reading status register\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sbefifo_wait\00", [19 x i8] zeroinitializer }, align 32
@sbefifo_wait._entry_ptr = internal global ptr @sbefifo_wait._entry, section ".printk_index", align 4
@sbefifo_wait._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 466, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Parity error in DOWN FIFO\0A\00", [37 x i8] zeroinitializer }, align 32
@sbefifo_wait._entry_ptr.78 = internal global ptr @sbefifo_wait._entry.76, section ".printk_index", align 4
@dev_attr_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @timeout_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@sbefifo_wait._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 476, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s FIFO Timeout ! status=%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@sbefifo_wait._entry_ptr.81 = internal global ptr @sbefifo_wait._entry.79, section ".printk_index", align 4
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UP\00", [29 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DOWN\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"timeout\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@sbefifo_read_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 584, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"FIFO read hit EOT with still %zd data\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sbefifo_read_response\00", [42 x i8] zeroinitializer }, align 32
@sbefifo_read_response._entry_ptr = internal global ptr @sbefifo_read_response._entry, section ".printk_index", align 4
@sbefifo_read_response._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 598, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FSI error %d ack'ing EOT\0A\00", [38 x i8] zeroinitializer }, align 32
@sbefifo_read_response._entry_ptr.90 = internal global ptr @sbefifo_read_response._entry.88, section ".printk_index", align 4
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@sbefifo_request_reset.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.94, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sbefifo_request_reset\00", [42 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Requesting FIFO reset\0A\00", [41 x i8] zeroinitializer }, align 32
@sbefifo_request_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 349, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Sending reset request failed, rc=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@sbefifo_request_reset._entry_ptr = internal global ptr @sbefifo_request_reset._entry, section ".printk_index", align 4
@sbefifo_request_reset._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.93, ptr @.str.2, i32 359, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to read UP fifo status during reset , rc=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@sbefifo_request_reset._entry_ptr.98 = internal global ptr @sbefifo_request_reset._entry.96, section ".printk_index", align 4
@sbefifo_request_reset.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.2, ptr @.str.99, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FIFO reset done\0A\00", [47 x i8] zeroinitializer }, align 32
@sbefifo_request_reset._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.93, ptr @.str.2, i32 371, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FIFO reset timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@sbefifo_request_reset._entry_ptr.102 = internal global ptr @sbefifo_request_reset._entry.100, section ".printk_index", align 4
@sbefifo_drv = internal global { %struct.fsi_driver, [48 x i8] } { %struct.fsi_driver { %struct.device_driver { ptr @.str.103, ptr @fsi_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @sbefifo_probe, ptr null, ptr @sbefifo_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sbefifo_ids }, [48 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sbefifo\00", [24 x i8] zeroinitializer }, align 32
@fsi_bus_type = external dso_local global %struct.bus_type, align 4
@sbefifo_ids = internal constant { [2 x %struct.fsi_device_id], [28 x i8] } { [2 x %struct.fsi_device_id] [%struct.fsi_device_id { i8 34, i8 0 }, %struct.fsi_device_id zeroinitializer], [28 x i8] zeroinitializer }, align 32
@sbefifo_probe.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.2, ptr @.str.105, i8 0, i8 -17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sbefifo_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Found sbefifo device\0A\00", [42 x i8] zeroinitializer }, align 32
@sbefifo_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sbefifo->lock\00", [17 x i8] zeroinitializer }, align 32
@sbefifo_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.104, ptr @.str.2, i32 982, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Initial HW cleanup failed, will retry later\0A\00", [51 x i8] zeroinitializer }, align 32
@sbefifo_probe._entry_ptr = internal global ptr @sbefifo_probe._entry, section ".printk_index", align 4
@fsi_cdev_type = external dso_local constant %struct.device_type, align 4
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sbefifo%d\00", [22 x i8] zeroinitializer }, align 32
@sbefifo_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @sbefifo_user_read, ptr @sbefifo_user_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sbefifo_user_open, ptr null, ptr @sbefifo_user_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sbefifo_probe._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.104, ptr @.str.2, i32 1000, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error %d creating char device %s\0A\00", [62 x i8] zeroinitializer }, align 32
@sbefifo_probe._entry_ptr.111 = internal global ptr @sbefifo_probe._entry.109, section ".printk_index", align 4
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-dev%d\00", [23 x i8] zeroinitializer }, align 32
@sbefifo_probe._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.104, ptr @.str.2, i32 1011, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to create child %s dev\0A\00", [33 x i8] zeroinitializer }, align 32
@sbefifo_probe._entry_ptr.115 = internal global ptr @sbefifo_probe._entry.113, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@sbefifo_user_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&user->file_lock\00", [47 x i8] zeroinitializer }, align 32
@sbefifo_remove.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.2, ptr @.str.119, i8 1, i8 3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sbefifo_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Removing sbefifo device...\0A\00", [36 x i8] zeroinitializer }, align 32
@switch.table.sbefifo_cleanup_hw = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -108, i32 -108, i32 -108, i32 -108, i32 -108, i32 -16, i32 -108, i32 -108, i32 -108], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967221]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967188]
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 222, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 228, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 235, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 241, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [19 x i8] c"sbefifo_ffdc_mutex\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 138, i32 8 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 160, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 168, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 174, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 180, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 183, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 186, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 187, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 191, i32 21 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 193, i32 20 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 197, i32 22 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 200, i32 5 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 203, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 385, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 395, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 404, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 413, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 417, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 435, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 650, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 660, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 668, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 518, i32 5 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 536, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 462, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 466, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"dev_attr_timeout\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 476, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 147, i32 8 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 145, i32 25 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 582, i32 6 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 598, i32 6 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 230, i32 6 }
@___asan_gen_.338 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 214, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 341, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 349, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 358, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 364, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 371, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [12 x i8] c"sbefifo_drv\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1063, i32 26 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1066, i32 11 }
@___asan_gen_.373 = private unnamed_addr constant [12 x i8] c"sbefifo_ids\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1055, i32 35 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 959, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 974, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 982, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 995, i32 30 }
@___asan_gen_.397 = private unnamed_addr constant [13 x i8] c"sbefifo_fops\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 930, i32 37 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 999, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1006, i32 44 }
@___asan_gen_.409 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1010, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.416, i32 156, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 797, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.428 = private constant [29 x i8] c"../drivers/fsi/fsi-sbefifo.c\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.428, i32 1039, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [32 x i8] c"switch.table.sbefifo_cleanup_hw\00", align 1
@llvm.compiler.used = appending global [157 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_sbefifo_exit, ptr @__initcall__kmod_fsi_sbefifo__238_1083_sbefifo_init6, ptr @__ksymtab_sbefifo_parse_status, ptr @__ksymtab_sbefifo_submit, ptr @__sbefifo_dump_ffdc._entry, ptr @__sbefifo_dump_ffdc._entry.18, ptr @__sbefifo_dump_ffdc._entry.21, ptr @__sbefifo_dump_ffdc._entry.24, ptr @__sbefifo_dump_ffdc._entry.27, ptr @__sbefifo_dump_ffdc._entry.30, ptr @__sbefifo_dump_ffdc._entry.33, ptr @__sbefifo_dump_ffdc._entry.39, ptr @__sbefifo_dump_ffdc._entry.42, ptr @__sbefifo_dump_ffdc._entry_ptr, ptr @__sbefifo_dump_ffdc._entry_ptr.20, ptr @__sbefifo_dump_ffdc._entry_ptr.23, ptr @__sbefifo_dump_ffdc._entry_ptr.26, ptr @__sbefifo_dump_ffdc._entry_ptr.29, ptr @__sbefifo_dump_ffdc._entry_ptr.32, ptr @__sbefifo_dump_ffdc._entry_ptr.35, ptr @__sbefifo_dump_ffdc._entry_ptr.41, ptr @__sbefifo_dump_ffdc._entry_ptr.44, ptr @sbefifo_cleanup_hw._entry, ptr @sbefifo_cleanup_hw._entry.48, ptr @sbefifo_cleanup_hw._entry.51, ptr @sbefifo_cleanup_hw._entry.55, ptr @sbefifo_cleanup_hw._entry.58, ptr @sbefifo_cleanup_hw._entry_ptr, ptr @sbefifo_cleanup_hw._entry_ptr.50, ptr @sbefifo_cleanup_hw._entry_ptr.54, ptr @sbefifo_cleanup_hw._entry_ptr.57, ptr @sbefifo_cleanup_hw._entry_ptr.60, ptr @sbefifo_collect_async_ffdc._entry, ptr @sbefifo_collect_async_ffdc._entry.63, ptr @sbefifo_collect_async_ffdc._entry.66, ptr @sbefifo_collect_async_ffdc._entry_ptr, ptr @sbefifo_collect_async_ffdc._entry_ptr.65, ptr @sbefifo_collect_async_ffdc._entry_ptr.68, ptr @sbefifo_parse_status._entry, ptr @sbefifo_parse_status._entry.10, ptr @sbefifo_parse_status._entry.7, ptr @sbefifo_parse_status._entry_ptr, ptr @sbefifo_parse_status._entry_ptr.13, ptr @sbefifo_parse_status._entry_ptr.9, ptr @sbefifo_probe._entry, ptr @sbefifo_probe._entry.109, ptr @sbefifo_probe._entry.113, ptr @sbefifo_probe._entry_ptr, ptr @sbefifo_probe._entry_ptr.111, ptr @sbefifo_probe._entry_ptr.115, ptr @sbefifo_read_response._entry, ptr @sbefifo_read_response._entry.88, ptr @sbefifo_read_response._entry_ptr, ptr @sbefifo_read_response._entry_ptr.90, ptr @sbefifo_request_reset._entry, ptr @sbefifo_request_reset._entry.100, ptr @sbefifo_request_reset._entry.96, ptr @sbefifo_request_reset._entry_ptr, ptr @sbefifo_request_reset._entry_ptr.102, ptr @sbefifo_request_reset._entry_ptr.98, ptr @sbefifo_send_command._entry, ptr @sbefifo_send_command._entry.71, ptr @sbefifo_send_command._entry_ptr, ptr @sbefifo_send_command._entry_ptr.73, ptr @sbefifo_wait._entry, ptr @sbefifo_wait._entry.76, ptr @sbefifo_wait._entry.79, ptr @sbefifo_wait._entry_ptr, ptr @sbefifo_wait._entry_ptr.78, ptr @sbefifo_wait._entry_ptr.81, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @sbefifo_ffdc_mutex, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @dev_attr_timeout, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @sbefifo_drv, ptr @.str.103, ptr @sbefifo_ids, ptr @.str.104, ptr @.str.105, ptr @sbefifo_probe.__key, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @sbefifo_fops, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @sbefifo_user_open.__key, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @switch.table.sbefifo_cleanup_hw], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_parse_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_parse_status._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_parse_status._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_ffdc_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_cleanup_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_cleanup_hw._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_cleanup_hw._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_cleanup_hw._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_cleanup_hw._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_collect_async_ffdc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_collect_async_ffdc._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_collect_async_ffdc._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_send_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_send_command._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_wait._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_wait._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_read_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_read_response._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_request_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_request_reset._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_request_reset._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_drv to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_ids to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_probe._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_probe._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbefifo_user_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sbefifo_cleanup_hw to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sbefifo_parse_status(ptr noundef %dev, i16 noundef zeroext %cmd, ptr nocapture noundef readonly %response, i32 noundef %resp_len, ptr noundef writeonly %data_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %resp_len)
  %cmp = icmp ult i32 %resp_len, 3
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbefifo_parse_status.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbefifo_parse_status, %if.then3)) #9
          to label %cleanup [label %if.then3], !srcloc !243

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %cmd to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbefifo_parse_status.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %resp_len) #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  %sub = add i32 %resp_len, -1
  %arrayidx = getelementptr i32, ptr %response, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %resp_len)
  %cmp5 = icmp ugt i32 %1, %resp_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp7 = icmp ult i32 %1, 3
  %or.cond = or i1 %cmp5, %cmp7
  br i1 %or.cond, label %do.end12, label %if.end15

do.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %conv13 = zext i16 %cmd to i32
  %2 = lshr i32 %conv13, 8
  %and = and i32 %conv13, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %2, i32 noundef %and, i32 noundef %1, i32 noundef %resp_len) #12
  br label %cleanup

if.end15:                                         ; preds = %if.end4
  %sub16 = sub i32 %resp_len, %1
  %arrayidx17 = getelementptr i32, ptr %response, i32 %sub16
  %3 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx17, align 4
  %add = add i32 %sub16, 1
  %arrayidx19 = getelementptr i32, ptr %response, i32 %add
  %5 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx19, align 4
  %shr20.mask = and i32 %4, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1059192832, i32 %shr20.mask)
  %cmp21.not = icmp eq i32 %shr20.mask, -1059192832
  br i1 %cmp21.not, label %lor.lhs.false23, label %if.end15.do.end31_crit_edge

if.end15.do.end31_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = zext i16 %cmd to i32
  br label %do.end31

lor.lhs.false23:                                  ; preds = %if.end15
  %and24 = and i32 %4, 65535
  %conv25 = zext i16 %cmd to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and24, i32 %conv25)
  %cmp26.not = icmp eq i32 %and24, %conv25
  br i1 %cmp26.not, label %if.end36, label %lor.lhs.false23.do.end31_crit_edge

lor.lhs.false23.do.end31_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end31

do.end31:                                         ; preds = %lor.lhs.false23.do.end31_crit_edge, %if.end15.do.end31_crit_edge
  %conv32.pre-phi = phi i32 [ %.pre, %if.end15.do.end31_crit_edge ], [ %conv25, %lor.lhs.false23.do.end31_crit_edge ]
  %7 = lshr i32 %conv32.pre-phi, 8
  %and35 = and i32 %conv32.pre-phi, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %7, i32 noundef %and35, i32 noundef %4, i32 noundef %6) #12
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp37.not = icmp eq i32 %6, 0
  br i1 %cmp37.not, label %if.end36.if.end56_crit_edge, label %if.then39

if.end36.if.end56_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then39:                                        ; preds = %if.end36
  %sub40 = add i32 %1, -3
  %8 = lshr i32 %and24, 8
  %and47 = and i32 %4, 255
  %shr48 = lshr i32 %6, 16
  %and49 = and i32 %6, 65535
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %8, i32 noundef %and47, i32 noundef %shr48, i32 noundef %and49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub40)
  %tobool50.not = icmp eq i32 %sub40, 0
  br i1 %tobool50.not, label %if.then39.if.end56_crit_edge, label %if.then51

if.then39.if.end56_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then51:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %add53 = add i32 %sub16, 2
  %arrayidx54 = getelementptr i32, ptr %response, i32 %add53
  tail call fastcc void @sbefifo_dump_ffdc(ptr noundef %dev, ptr noundef %arrayidx54, i32 noundef %sub40, i1 noundef zeroext false)
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.then39.if.end56_crit_edge, %if.end36.if.end56_crit_edge
  %tobool57.not = icmp eq ptr %data_len, null
  br i1 %tobool57.not, label %if.end56.cleanup_crit_edge, label %if.then58

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub16, ptr %data_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then58, %if.end56.cleanup_crit_edge, %do.end31, %do.end12, %if.then3, %do.body
  %retval.0 = phi i32 [ -6, %do.end12 ], [ -6, %do.end31 ], [ -6, %if.then3 ], [ %6, %if.then58 ], [ %6, %if.end56.cleanup_crit_edge ], [ -6, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sbefifo_dump_ffdc(ptr noundef %dev, ptr nocapture noundef readonly %ffdc, i32 noundef %ffdc_sz, i1 noundef zeroext %internal) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @sbefifo_ffdc_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ffdc_sz)
  %tobool.not138.i = icmp eq i32 %ffdc_sz, 0
  br i1 %tobool.not138.i, label %entry.__sbefifo_dump_ffdc.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.__sbefifo_dump_ffdc.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sbefifo_dump_ffdc.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %p.0142.i = phi ptr [ %p.1.lcssa.i, %cleanup.i.while.body.i_crit_edge ], [ @__sbefifo_dump_ffdc.ffdc_line, %entry.while.body.i_crit_edge ]
  %pack.0141.i = phi i32 [ %pack.1.i, %cleanup.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %ffdc.addr.0140.i = phi ptr [ %ffdc.addr.1.lcssa.i, %cleanup.i.while.body.i_crit_edge ], [ %ffdc, %entry.while.body.i_crit_edge ]
  %ffdc_sz.addr.0139.i = phi i32 [ %ffdc_sz.addr.1.lcssa.i, %cleanup.i.while.body.i_crit_edge ], [ %ffdc_sz, %entry.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ffdc_sz.addr.0139.i)
  %cmp.i = icmp ult i32 %ffdc_sz.addr.0139.i, 3
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %ffdc_sz.addr.0139.i) #12
  br label %__sbefifo_dump_ffdc.exit

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr i32, ptr %ffdc.addr.0140.i, i32 1
  %0 = ptrtoint ptr %ffdc.addr.0140.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ffdc.addr.0140.i, align 4
  %incdec.ptr1.i = getelementptr i32, ptr %ffdc.addr.0140.i, i32 2
  %2 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %incdec.ptr.i, align 4
  %incdec.ptr2.i = getelementptr i32, ptr %ffdc.addr.0140.i, i32 3
  %4 = ptrtoint ptr %incdec.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %incdec.ptr1.i, align 4
  %sub.i = add i32 %ffdc_sz.addr.0139.i, -3
  %shr.mask.i = and i32 %1, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2359296, i32 %shr.mask.i)
  %cmp3.not.i = icmp eq i32 %shr.mask.i, -2359296
  br i1 %cmp3.not.i, label %if.end8.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %1, i32 noundef %3, i32 noundef %5) #12
  br label %__sbefifo_dump_ffdc.exit

if.end8.i:                                        ; preds = %if.end.i
  %and.i = and i32 %1, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %sub.i)
  %cmp9.i = icmp ugt i32 %and.i, %sub.i
  br i1 %cmp9.i, label %do.end13.i, label %if.end14.i

do.end13.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %and.i, i32 noundef %sub.i) #12
  br label %__sbefifo_dump_ffdc.exit

if.end14.i:                                       ; preds = %if.end8.i
  br i1 %internal, label %do.end19.i, label %do.end22.i

do.end19.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %pack.0141.i) #12
  br label %do.end30.i

do.end22.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr24.i = lshr i32 %3, 8
  %and25.i = and i32 %shr24.i, 255
  %and26.i = and i32 %3, 255
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %pack.0141.i, i32 noundef %and25.i, i32 noundef %and26.i) #12
  br label %do.end30.i

do.end30.i:                                       ; preds = %do.end22.i, %do.end19.i
  %pack.1.i = add i32 %pack.0141.i, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %5) #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp34130.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp34130.not.i, label %do.end30.i.cleanup.i_crit_edge, label %for.body.lr.ph.i

do.end30.i.cleanup.i_crit_edge:                   ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

for.body.lr.ph.i:                                 ; preds = %do.end30.i
  %sub44.i = add nsw i32 %and.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0134.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc58.i, %for.inc.i.for.body.i_crit_edge ]
  %p.1133.i = phi ptr [ %p.0142.i, %for.body.lr.ph.i ], [ %p.4.i, %for.inc.i.for.body.i_crit_edge ]
  %ffdc.addr.1132.i = phi ptr [ %incdec.ptr2.i, %for.body.lr.ph.i ], [ %incdec.ptr39.i, %for.inc.i.for.body.i_crit_edge ]
  %ffdc_sz.addr.1131.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %dec.i, %for.inc.i.for.body.i_crit_edge ]
  %and35.i = and i32 %i.0134.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %cmp36.i = icmp eq i32 %and35.i, 0
  br i1 %cmp36.i, label %if.then37.i, label %for.body.i.if.end38.i_crit_edge

for.body.i.if.end38.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38.i

if.then37.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl.i = shl i32 %i.0134.i, 4
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @__sbefifo_dump_ffdc.ffdc_line, ptr noundef nonnull @.str.36, i32 noundef %shl.i) #9
  %add.ptr.i = getelementptr i8, ptr @__sbefifo_dump_ffdc.ffdc_line, i32 %call.i
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then37.i, %for.body.i.if.end38.i_crit_edge
  %p.2.i = phi ptr [ %add.ptr.i, %if.then37.i ], [ %p.1133.i, %for.body.i.if.end38.i_crit_edge ]
  %incdec.ptr39.i = getelementptr i32, ptr %ffdc.addr.1132.i, i32 1
  %6 = ptrtoint ptr %ffdc.addr.1132.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ffdc.addr.1132.i, align 4
  %call40.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %p.2.i, ptr noundef nonnull @.str.37, i32 noundef %7) #9
  %add.ptr41.i = getelementptr i8, ptr %p.2.i, i32 %call40.i
  %dec.i = add i32 %ffdc_sz.addr.1131.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and35.i)
  %cmp43.i = icmp eq i32 %and35.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0134.i, i32 %sub44.i)
  %cmp45.i = icmp eq i32 %i.0134.i, %sub44.i
  %or.cond.i = select i1 %cmp43.i, i1 true, i1 %cmp45.i
  br i1 %or.cond.i, label %while.cond47.preheader.i, label %if.end38.i.for.inc.i_crit_edge

if.end38.i.for.inc.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

while.cond47.preheader.i:                         ; preds = %if.end38.i
  br i1 %cmp43.i, label %while.cond47.preheader.i.do.end56.i_crit_edge, label %while.cond47.preheader.i.while.body50.i_crit_edge

while.cond47.preheader.i.while.body50.i_crit_edge: ; preds = %while.cond47.preheader.i
  br label %while.body50.i

while.cond47.preheader.i.do.end56.i_crit_edge:    ; preds = %while.cond47.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56.i

while.body50.i:                                   ; preds = %while.body50.i.while.body50.i_crit_edge, %while.cond47.preheader.i.while.body50.i_crit_edge
  %i.1128.i = phi i32 [ %inc53.i, %while.body50.i.while.body50.i_crit_edge ], [ %i.0134.i, %while.cond47.preheader.i.while.body50.i_crit_edge ]
  %p.3127.i = phi ptr [ %add.ptr52.i, %while.body50.i.while.body50.i_crit_edge ], [ %add.ptr41.i, %while.cond47.preheader.i.while.body50.i_crit_edge ]
  %8 = call ptr @memcpy(ptr %p.3127.i, ptr @.str.38, i32 10)
  %add.ptr52.i = getelementptr i8, ptr %p.3127.i, i32 9
  %inc53.i = add i32 %i.1128.i, 1
  %and48.i = and i32 %inc53.i, 3
  %cmp49.not.i = icmp eq i32 %and48.i, 3
  br i1 %cmp49.not.i, label %while.body50.i.do.end56.i_crit_edge, label %while.body50.i.while.body50.i_crit_edge

while.body50.i.while.body50.i_crit_edge:          ; preds = %while.body50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body50.i

while.body50.i.do.end56.i_crit_edge:              ; preds = %while.body50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56.i

do.end56.i:                                       ; preds = %while.body50.i.do.end56.i_crit_edge, %while.cond47.preheader.i.do.end56.i_crit_edge
  %p.3.lcssa.i = phi ptr [ %add.ptr41.i, %while.cond47.preheader.i.do.end56.i_crit_edge ], [ %add.ptr52.i, %while.body50.i.do.end56.i_crit_edge ]
  %i.1.lcssa.i = phi i32 [ %i.0134.i, %while.cond47.preheader.i.do.end56.i_crit_edge ], [ %inc53.i, %while.body50.i.do.end56.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef nonnull @__sbefifo_dump_ffdc.ffdc_line) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end56.i, %if.end38.i.for.inc.i_crit_edge
  %p.4.i = phi ptr [ %p.3.lcssa.i, %do.end56.i ], [ %add.ptr41.i, %if.end38.i.for.inc.i_crit_edge ]
  %i.2.i = phi i32 [ %i.1.lcssa.i, %do.end56.i ], [ %i.0134.i, %if.end38.i.for.inc.i_crit_edge ]
  %inc58.i = add i32 %i.2.i, 1
  %cmp34.i = icmp ult i32 %inc58.i, %and.i
  br i1 %cmp34.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup.i_crit_edge

for.inc.i.cleanup.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cleanup.i:                                        ; preds = %for.inc.i.cleanup.i_crit_edge, %do.end30.i.cleanup.i_crit_edge
  %ffdc_sz.addr.1.lcssa.i = phi i32 [ %sub.i, %do.end30.i.cleanup.i_crit_edge ], [ %dec.i, %for.inc.i.cleanup.i_crit_edge ]
  %ffdc.addr.1.lcssa.i = phi ptr [ %incdec.ptr2.i, %do.end30.i.cleanup.i_crit_edge ], [ %incdec.ptr39.i, %for.inc.i.cleanup.i_crit_edge ]
  %p.1.lcssa.i = phi ptr [ %p.0142.i, %do.end30.i.cleanup.i_crit_edge ], [ %p.4.i, %for.inc.i.cleanup.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.43) #12
  %tobool.not.i = icmp eq i32 %ffdc_sz.addr.1.lcssa.i, 0
  br i1 %tobool.not.i, label %cleanup.i.__sbefifo_dump_ffdc.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

cleanup.i.__sbefifo_dump_ffdc.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__sbefifo_dump_ffdc.exit

__sbefifo_dump_ffdc.exit:                         ; preds = %cleanup.i.__sbefifo_dump_ffdc.exit_crit_edge, %do.end13.i, %do.end7.i, %do.end.i, %entry.__sbefifo_dump_ffdc.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @sbefifo_ffdc_mutex) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sbefifo_submit(ptr noundef readonly %dev, ptr noundef readonly %command, i32 noundef %cmd_len, ptr noundef %response, ptr noundef %resp_len) #0 align 64 {
entry:
  %resp_iter = alloca %struct.iov_iter, align 8
  %resp_iov = alloca %struct.kvec, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %resp_iter) #9
  %0 = call ptr @memset(ptr %resp_iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp_iov) #9
  %1 = getelementptr inbounds %struct.kvec, ptr %resp_iov, i32 0, i32 1
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1396852038, i32 %5)
  %cmp.not = icmp eq i32 %5, 1396852038
  br i1 %cmp.not, label %if.end43, label %land.rhs

land.rhs:                                         ; preds = %if.end3
  %.b78 = load i1, ptr @sbefifo_submit.__already_done, align 1
  br i1 %.b78, label %land.rhs.cleanup_crit_edge, label %if.then11, !prof !244

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then11:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sbefifo_submit.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 743, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end43:                                         ; preds = %if.end3
  %tobool44.not = icmp eq ptr %resp_len, null
  %tobool45.not = icmp eq ptr %command, null
  %or.cond = or i1 %tobool45.not, %tobool44.not
  %tobool47.not = icmp eq ptr %response, null
  %or.cond80 = or i1 %tobool47.not, %or.cond
  br i1 %or.cond80, label %if.end43.cleanup_crit_edge, label %if.end49

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49:                                         ; preds = %if.end43
  %6 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resp_len, align 4
  %mul = shl i32 %7, 2
  %8 = ptrtoint ptr %resp_iov to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %response, ptr %resp_iov, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %1, align 4
  call void @iov_iter_kvec(ptr noundef nonnull %resp_iter, i32 noundef 1, ptr noundef nonnull %resp_iov, i32 noundef 1, i32 noundef %mul) #9
  %lock = getelementptr inbounds %struct.sbefifo, ptr %3, i32 0, i32 4
  %call50 = call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = call fastcc i32 @__sbefifo_submit(ptr noundef nonnull %3, ptr noundef nonnull %command, i32 noundef %cmd_len, ptr noundef nonnull %resp_iter)
  call void @mutex_unlock(ptr noundef %lock) #9
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %resp_iter, i32 0, i32 4
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 8
  %sub = sub i32 %mul, %11
  %div77 = lshr i32 %sub, 2
  %12 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div77, ptr %resp_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end49.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.then11, %land.rhs.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54, %if.end53 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.then11 ], [ -22, %if.end43.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ], [ -19, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp_iov) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %resp_iter) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_kvec(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__sbefifo_submit(ptr noundef %sbefifo, ptr nocapture noundef readonly %command, i32 noundef %cmd_len, ptr noundef %response) unnamed_addr #0 align 64 {
entry:
  %ffdc_iter.i = alloca %struct.iov_iter, align 8
  %ffdc_iov.i = alloca %struct.kvec, align 4
  %ffdc_sz.i = alloca i32, align 4
  %cmd.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dead = getelementptr inbounds %struct.sbefifo, ptr %sbefifo, i32 0, i32 6
  %0 = ptrtoint ptr %dead to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dead, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd_len)
  %cmp = icmp ult i32 %cmd_len, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %2 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %command, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cmd_len)
  %cmp2.not = icmp eq i32 %3, %cmd_len
  br i1 %cmp2.not, label %if.end4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %call = tail call fastcc i32 @sbefifo_cleanup_hw(ptr noundef %sbefifo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %async_ffdc = getelementptr inbounds %struct.sbefifo, ptr %sbefifo, i32 0, i32 7
  %4 = ptrtoint ptr %async_ffdc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %async_ffdc, align 2, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  %fsi_dev.i = getelementptr inbounds %struct.sbefifo, ptr %sbefifo, i32 0, i32 1
  %6 = ptrtoint ptr %fsi_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fsi_dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ffdc_iter.i) #9
  %8 = call ptr @memset(ptr %ffdc_iter.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ffdc_iov.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ffdc_sz.i) #9
  %9 = ptrtoint ptr %ffdc_sz.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %ffdc_sz.i, align 4, !annotation !246
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #9
  %10 = ptrtoint ptr %async_ffdc to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %async_ffdc, align 2
  %call.i = tail call noalias ptr @vmalloc(i32 noundef 8192) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.61) #12
  br label %sbefifo_collect_async_ffdc.exit

if.end.i:                                         ; preds = %if.then9
  %11 = getelementptr inbounds [2 x i32], ptr %cmd.i, i32 0, i32 1
  %12 = getelementptr inbounds %struct.kvec, ptr %ffdc_iov.i, i32 0, i32 1
  %13 = ptrtoint ptr %ffdc_iov.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %ffdc_iov.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8192, ptr %12, align 4
  call void @iov_iter_kvec(ptr noundef nonnull %ffdc_iter.i, i32 noundef 1, ptr noundef nonnull %ffdc_iov.i, i32 noundef 1, i32 noundef 8192) #9
  %15 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %cmd.i, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 43009, ptr %11, align 4
  %call3.i = call fastcc i32 @sbefifo_do_command(ptr noundef %sbefifo, ptr noundef nonnull %cmd.i, i32 noundef 2, ptr noundef nonnull %ffdc_iter.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.not.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.not.i, label %if.end8.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.64, i32 noundef %call3.i) #12
  br label %bail.i

if.end8.i:                                        ; preds = %if.end.i
  %count.i.i = getelementptr inbounds %struct.iov_iter, ptr %ffdc_iter.i, i32 0, i32 4
  %17 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i.i, align 8
  %sub.i = sub i32 8192, %18
  %div39.i = lshr i32 %sub.i, 2
  %19 = ptrtoint ptr %ffdc_sz.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div39.i, ptr %ffdc_sz.i, align 4
  %call10.i = call i32 @sbefifo_parse_status(ptr noundef %7, i16 noundef zeroext -22527, ptr noundef nonnull %call.i, i32 noundef %div39.i, ptr noundef nonnull %ffdc_sz.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.not.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.not.i, label %if.end16.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.67, i32 noundef %call10.i) #12
  br label %bail.i

if.end16.i:                                       ; preds = %if.end8.i
  %20 = ptrtoint ptr %ffdc_sz.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ffdc_sz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp17.not.i = icmp eq i32 %21, 0
  br i1 %cmp17.not.i, label %if.end16.i.bail.i_crit_edge, label %if.then18.i

if.end16.i.bail.i_crit_edge:                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail.i

if.then18.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @sbefifo_dump_ffdc(ptr noundef %7, ptr noundef nonnull %call.i, i32 noundef %21, i1 noundef zeroext true) #9
  br label %bail.i

bail.i:                                           ; preds = %if.then18.i, %if.end16.i.bail.i_crit_edge, %do.end15.i, %do.end7.i
  call void @vfree(ptr noundef nonnull %call.i) #9
  br label %sbefifo_collect_async_ffdc.exit

sbefifo_collect_async_ffdc.exit:                  ; preds = %bail.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ffdc_sz.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ffdc_iov.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ffdc_iter.i) #9
  br label %if.end10

if.end10:                                         ; preds = %sbefifo_collect_async_ffdc.exit, %if.end7.if.end10_crit_edge
  %call11 = call fastcc i32 @sbefifo_do_command(ptr noundef %sbefifo, ptr noundef %command, i32 noundef %cmd_len, ptr noundef %response)
  %22 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call11, label %fail [
    i32 0, label %if.end10.cleanup_crit_edge
    i32 -75, label %if.end10.cleanup_crit_edge32
  ]

if.end10.cleanup_crit_edge32:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fail:                                             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = call fastcc i32 @sbefifo_request_reset(ptr noundef %sbefifo)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end10.cleanup_crit_edge, %if.end10.cleanup_crit_edge32, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %fail ], [ -19, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %if.end4.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbefifo_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fsi_driver_register(ptr noundef nonnull @sbefifo_drv) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbefifo_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fsi_driver_unregister(ptr noundef nonnull @sbefifo_drv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbefifo_cleanup_hw(ptr nocapture noundef %sbefifo) unnamed_addr #0 align 64 {
entry:
  %raw_word.i100 = alloca i32, align 4
  %raw_word.i94 = alloca i32, align 4
  %raw_word.i89 = alloca i32, align 4
  %raw_word.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fsi_dev = getelementptr inbounds %struct.sbefifo, ptr %sbefifo, i32 0, i32 1
  %0 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsi_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_word.i) #9
  %2 = ptrtoint ptr %raw_word.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %raw_word.i, align 4, !annotation !246
  %slave.i = getelementptr inbounds %struct.fsi_device, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slave.i, align 4
  %call.i = call i32 @fsi_slave_read(ptr noundef %4, i32 noundef 10276, ptr noundef nonnull %raw_word.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %raw_word.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %raw_word.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool1.not.i = icmp sgt i32 %6, -1
  br i1 %tobool1.not.i, label %if.end.i.do.body_crit_edge, label %if.end3.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end3.i:                                        ; preds = %if.end.i
  %and4.i = lshr i32 %6, 20
  %shr.i = and i32 %and4.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %shr.i)
  %7 = icmp ult i32 %shr.i, 9
  br i1 %7, label %switch.hole_check, label %if.end3.i.sw.epilog.i_crit_edge

if.end3.i.sw.epilog.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.hole_check.sw.epilog.i_crit_edge, %if.end3.i.sw.epilog.i_crit_edge
  %and8.i = and i32 %6, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %sw.epilog.i.if.end7_crit_edge, label %if.then10.i

sw.epilog.i.if.end7_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then10.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %async_ffdc.i = getelementptr inbounds %struct.sbefifo, ptr %sbefifo, i32 0, i32 7
  %8 = ptrtoint ptr %async_ffdc.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %async_ffdc.i, align 2
  br label %if.end7

switch.hole_check:                                ; preds = %if.end3.i
  %switch.maskindex = trunc i32 %shr.i to i16
  %switch.shifted = lshr i16 417, %switch.maskindex
  %9 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %switch.lobit.not = icmp eq i16 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.sbefifo_cleanup_hw, i32 0, i32 %shr.i
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body

do.body:                                          ; preds = %switch.lookup, %if.end.i.do.body_crit_edge, %entry.do.body_crit_edge
  %retval.0.i88.ph = phi i32 [ -108, %if.end.i.do.body_crit_edge ], [ %call.i, %entry.do.body_crit_edge ], [ %switch.load, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_word.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbefifo_cleanup_hw.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbefifo_cleanup_hw, %if.then6)) #9
          to label %cleanup [label %if.then6], !srcloc !243

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbefifo_cleanup_hw.__UNIQUE_ID_ddebug233, ptr noundef %1, ptr noundef nonnull @.str.46, i32 noundef %retval.0.i88.ph) #9
  br label %cleanup

if.end7:                                          ; preds = %if.then10.i, %sw.epilog.i.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_word.i) #9
  %broken = getelementptr inbounds %struct.sbefifo, ptr %sbefifo, i32 0, i32 5
  %11 = ptrtoint ptr %broken to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %broken, align 4, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool8.not = icmp eq i8 %12, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.do_reset_crit_edge

if.end7.do_reset_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_reset

if.end10:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_word.i89) #9
  %13 = ptrtoint ptr %raw_word.i89 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %raw_word.i89, align 4, !annotation !246
  %14 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fsi_dev, align 4
  %call.i91 = call i32 @fsi_device_read(ptr noundef %15, i32 noundef 4, ptr noundef nonnull %raw_word.i89, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i92 = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i92, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_word.i89) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef %call.i91) #12
  %16 = ptrtoint ptr %broken to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %broken, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %17 = ptrtoint ptr %raw_word.i89 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %raw_word.i89, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_word.i89) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_word.i94) #9
  %19 = ptrtoint ptr %raw_word.i94 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %raw_word.i94, align 4, !annotation !246
  %20 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fsi_dev, align 4
  %call.i96 = call i32 @fsi_device_read(ptr noundef %21, i32 noundef 68, ptr noundef nonnull %raw_word.i94, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i97 = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i97, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_word.i94) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.49, i32 noundef %call.i96) #12
  %22 = ptrtoint ptr %broken to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %broken, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %23 = ptrtoint ptr %raw_word.i94 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %raw_word.i94, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_word.i94) #9
  %and = and i32 %24, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.end41, label %do.end31

do.end31:                                         ; preds = %if.end26
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.52) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_word.i100) #9
  %25 = ptrtoint ptr %raw_word.i100 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16, ptr %raw_word.i100, align 4
  %26 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fsi_dev, align 4
  %call.i102 = call i32 @fsi_device_write(ptr noundef %27, i32 noundef 64, ptr noundef nonnull %raw_word.i100, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_word.i100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool33.not = icmp eq i32 %call.i102, 0
  br i1 %tobool33.not, label %if.end39, label %if.then34

if.then34:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %broken to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %broken, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.56, i32 noundef %call.i102) #12
  br label %cleanup

if.end39:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %broken to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %broken, align 4
  br label %cleanup

if.end41:                                         ; preds = %if.end26
  %or = or i32 %24, %18
  %and42 = and i32 %or, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp ne i32 %and42, 0
  %and46 = and i32 %18, 1048576
  %and47 = and i32 %and46, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %need_reset.1.off0 = select i1 %tobool48.not, i1 true, i1 %tobool43.not
  br i1 %need_reset.1.off0, label %do.end56, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end56:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef %18, i32 noundef %24) #12
  br label %do_reset

do_reset:                                         ; preds = %do.end56, %if.end7.do_reset_crit_edge
  %call57 = call fastcc i32 @sbefifo_request_reset(ptr noundef %sbefifo)
  br label %cleanup

cleanup:                                          ; preds = %do_reset, %if.end41.cleanup_crit_edge, %if.end39, %if.then34, %do.end24, %do.end16, %if.then6, %do.body
  %retval.0 = phi i32 [ %call57, %do_reset ], [ %call.i91, %do.end16 ], [ %call.i96, %do.end24 ], [ %call.i102, %if.then34 ], [ 0, %if.end39 ], [ %retval.0.i88.ph, %if.then6 ], [ 0, %if.end41.cleanup_crit_edge ], [ %retval.0.i88.ph, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbefifo_do_command(ptr noundef %sbefifo, ptr nocapture noundef readonly %command, i32 noundef %cmd_len, ptr noundef %response) unnamed_addr #0 align 64 {
entry:
  %raw_word.i.i4 = alloca i32, align 4
  %status.i5 = alloca i32, align 4
  %data.i = alloca i32, align 4
  %raw_word.i.i = alloca i32, align 4
  %word.addr.i.i = alloca i32, align 4
  %status.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fsi_dev.i = getelementptr inbounds %struct.sbefifo, ptr %sbefifo, i32 0, i32 1
  %0 = ptrtoint ptr %fsi_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsi_dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #9
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status.i, align 4, !annotation !246
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd_len)
  %tobool.not66.i = icmp eq i32 %cmd_len, 0
  br i1 %tobool.not66.i, label %entry.if.then16.i_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.if.then16.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

while.body.i:                                     ; preds = %while.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %timeout.069.i = phi i32 [ 100, %while.end.i.while.body.i_crit_edge ], [ 1000, %entry.while.body.i_crit_edge ]
  %remaining.068.i = phi i32 [ %sub12.i, %while.end.i.while.body.i_crit_edge ], [ %cmd_len, %entry.while.body.i_crit_edge ]
  %command.addr.067.i = phi ptr [ %command.addr.1.i, %while.end.i.while.body.i_crit_edge ], [ %command, %entry.while.body.i_crit_edge ]
  %call2.i = call fastcc i32 @sbefifo_wait(ptr noundef %sbefifo, i1 noundef zeroext true, ptr noundef nonnull %status.i, i32 noundef %timeout.069.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %while.body.i.sbefifo_send_command.exit.thread_crit_edge, label %if.end.i

while.body.i.sbefifo_send_command.exit.thread_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbefifo_send_command.exit.thread

if.end.i:                                         ; preds = %while.body.i
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status.i, align 4
  %and.i = lshr i32 %4, 16
  %shr.i = and i32 %and.i, 15
  %sub.i = sub nsw i32 8, %shr.i
  %5 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %remaining.068.i) #9
  br label %while.cond5.i

while.cond5.i:                                    ; preds = %while.body7.i.while.cond5.i_crit_edge, %if.end.i
  %command.addr.1.i = phi ptr [ %command.addr.067.i, %if.end.i ], [ %incdec.ptr.i, %while.body7.i.while.cond5.i_crit_edge ]
  %len.0.i = phi i32 [ %5, %if.end.i ], [ %dec.i, %while.body7.i.while.cond5.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %tobool6.not.i = icmp eq i32 %len.0.i, 0
  br i1 %tobool6.not.i, label %while.end.i, label %while.body7.i

while.body7.i:                                    ; preds = %while.cond5.i
  %dec.i = add i32 %len.0.i, -1
  %incdec.ptr.i = getelementptr i32, ptr %command.addr.1.i, i32 1
  %6 = ptrtoint ptr %command.addr.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %command.addr.1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.addr.i.i) #9
  %8 = ptrtoint ptr %word.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %word.addr.i.i, align 4
  %9 = ptrtoint ptr %fsi_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fsi_dev.i, align 4
  %call.i.i = call i32 @fsi_device_write(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %word.addr.i.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.addr.i.i) #9
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %while.body7.i.while.cond5.i_crit_edge, label %do.end.i

while.body7.i.while.cond5.i_crit_edge:            ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond5.i

do.end.i:                                         ; preds = %while.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.69, i32 noundef %call.i.i) #12
  br label %sbefifo_send_command.exit.thread

while.end.i:                                      ; preds = %while.cond5.i
  %sub12.i = sub i32 %remaining.068.i, %5
  %tobool.not.i = icmp eq i32 %sub12.i, 0
  br i1 %tobool.not.i, label %while.end14.i, label %while.end.i.while.body.i_crit_edge

while.end.i.while.body.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end14.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %remaining.068.i)
  %phi.cmp.not.i = icmp ugt i32 %sub.i, %remaining.068.i
  br i1 %phi.cmp.not.i, label %while.end14.i.if.end21.i_crit_edge, label %while.end14.i.if.then16.i_crit_edge

while.end14.i.if.then16.i_crit_edge:              ; preds = %while.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16.i

while.end14.i.if.end21.i_crit_edge:               ; preds = %while.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then16.i:                                      ; preds = %while.end14.i.if.then16.i_crit_edge, %entry.if.then16.i_crit_edge
  %timeout.0.lcssa79.i = phi i32 [ 100, %while.end14.i.if.then16.i_crit_edge ], [ 1000, %entry.if.then16.i_crit_edge ]
  %call17.i = call fastcc i32 @sbefifo_wait(ptr noundef %sbefifo, i1 noundef zeroext true, ptr noundef nonnull %status.i, i32 noundef %timeout.0.lcssa79.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then16.i.if.end21.i_crit_edge, label %if.then16.i.sbefifo_send_command.exit.thread_crit_edge

if.then16.i.sbefifo_send_command.exit.thread_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbefifo_send_command.exit.thread

if.then16.i.if.end21.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i.if.end21.i_crit_edge, %while.end14.i.if.end21.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_word.i.i) #9
  %11 = ptrtoint ptr %raw_word.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %raw_word.i.i, align 4
  %12 = ptrtoint ptr %fsi_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fsi_dev.i, align 4
  %call.i59.i = call i32 @fsi_device_write(ptr noundef %13, i32 noundef 8, ptr noundef nonnull %raw_word.i.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_word.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i)
  %tobool23.not.i = icmp eq i32 %call.i59.i, 0
  br i1 %tobool23.not.i, label %if.end, label %do.end27.i

do.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.72, i32 noundef %call.i59.i) #12
  br label %sbefifo_send_command.exit.thread

sbefifo_send_command.exit.thread:                 ; preds = %do.end27.i, %if.then16.i.sbefifo_send_command.exit.thread_crit_edge, %do.end.i, %while.body.i.sbefifo_send_command.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i59.i, %do.end27.i ], [ %call17.i, %if.then16.i.sbefifo_send_command.exit.thread_crit_edge ], [ %call.i.i, %do.end.i ], [ %call2.i, %while.body.i.sbefifo_send_command.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end21.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #9
  %14 = ptrtoint ptr %fsi_dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fsi_dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i5) #9
  %16 = ptrtoint ptr %status.i5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %status.i5, align 4, !annotation !246
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #9
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %data.i, align 4, !annotation !246
  %call275.i = call fastcc i32 @sbefifo_wait(ptr noundef %sbefifo, i1 noundef zeroext false, ptr noundef nonnull %status.i5, i32 noundef 1000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275.i)
  %cmp76.i = icmp slt i32 %call275.i, 0
  br i1 %cmp76.i, label %if.end.sbefifo_read_response.exit_crit_edge, label %if.end.lr.ph.i

if.end.sbefifo_read_response.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbefifo_read_response.exit

if.end.lr.ph.i:                                   ; preds = %if.end
  %count.i.i = getelementptr inbounds %struct.iov_iter, ptr %response, i32 0, i32 4
  br label %if.end.i11

for.cond.loopexit.i:                              ; preds = %if.end33.i.for.cond.loopexit.i_crit_edge, %if.end.i11.for.cond.loopexit.i_crit_edge
  %overflow.1.off0.lcssa.i = phi i1 [ %overflow.0.off077.i, %if.end.i11.for.cond.loopexit.i_crit_edge ], [ %overflow.2.off0.i, %if.end33.i.for.cond.loopexit.i_crit_edge ]
  %call2.i7 = call fastcc i32 @sbefifo_wait(ptr noundef %sbefifo, i1 noundef zeroext false, ptr noundef nonnull %status.i5, i32 noundef 100) #9
  %cmp.i8 = icmp slt i32 %call2.i7, 0
  br i1 %cmp.i8, label %for.cond.loopexit.i.sbefifo_read_response.exit_crit_edge, label %for.cond.loopexit.i.if.end.i11_crit_edge

for.cond.loopexit.i.if.end.i11_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i11

for.cond.loopexit.i.sbefifo_read_response.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbefifo_read_response.exit

if.end.i11:                                       ; preds = %for.cond.loopexit.i.if.end.i11_crit_edge, %if.end.lr.ph.i
  %overflow.0.off077.i = phi i1 [ false, %if.end.lr.ph.i ], [ %overflow.1.off0.lcssa.i, %for.cond.loopexit.i.if.end.i11_crit_edge ]
  %18 = ptrtoint ptr %status.i5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %status.i5, align 4
  %and.i9 = lshr i32 %19, 16
  %shr.i10 = and i32 %and.i9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i10)
  %tobool.not71.i = icmp eq i32 %shr.i10, 0
  br i1 %tobool.not71.i, label %if.end.i11.for.cond.loopexit.i_crit_edge, label %while.body.preheader.i

if.end.i11.for.cond.loopexit.i_crit_edge:         ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit.i

while.body.preheader.i:                           ; preds = %if.end.i11
  %and4.i = and i32 %19, 255
  br label %while.body.i13

while.body.i13:                                   ; preds = %if.end33.i.while.body.i13_crit_edge, %while.body.preheader.i
  %dec74.in.i = phi i32 [ %dec74.i, %if.end33.i.while.body.i13_crit_edge ], [ %shr.i10, %while.body.preheader.i ]
  %overflow.1.off073.i = phi i1 [ %overflow.2.off0.i, %if.end33.i.while.body.i13_crit_edge ], [ %overflow.0.off077.i, %while.body.preheader.i ]
  %eot_set.072.i = phi i32 [ %shl.i, %if.end33.i.while.body.i13_crit_edge ], [ %and4.i, %while.body.preheader.i ]
  %dec74.i = add nsw i32 %dec74.in.i, -1
  %20 = ptrtoint ptr %fsi_dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fsi_dev.i, align 4
  %call.i.i12 = call i32 @fsi_device_read(ptr noundef %21, i32 noundef 64, ptr noundef nonnull %data.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %cmp7.i = icmp slt i32 %call.i.i12, 0
  br i1 %cmp7.i, label %while.body.i13.sbefifo_read_response.exit_crit_edge, label %if.end9.i

while.body.i13.sbefifo_read_response.exit_crit_edge: ; preds = %while.body.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbefifo_read_response.exit

if.end9.i:                                        ; preds = %while.body.i13
  %and10.i = and i32 %eot_set.072.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end25.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec74.i)
  %tobool13.not.i = icmp eq i32 %dec74.i, 0
  br i1 %tobool13.not.i, label %if.then12.i.if.end15.i_crit_edge, label %do.end.i14

if.then12.i.if.end15.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

do.end.i14:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.86, i32 noundef %dec74.i) #12
  %broken.i = getelementptr inbounds %struct.sbefifo, ptr %sbefifo, i32 0, i32 5
  %22 = ptrtoint ptr %broken.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %broken.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %do.end.i14, %if.then12.i.if.end15.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_word.i.i4) #9
  %23 = ptrtoint ptr %raw_word.i.i4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %raw_word.i.i4, align 4
  %24 = ptrtoint ptr %fsi_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fsi_dev.i, align 4
  %call.i60.i = call i32 @fsi_device_write(ptr noundef %25, i32 noundef 84, ptr noundef nonnull %raw_word.i.i4, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_word.i.i4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %tobool17.not.i = icmp eq i32 %call.i60.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end23.i_crit_edge, label %do.end21.i

if.end15.i.if.end23.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

do.end21.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.89, i32 noundef %call.i60.i) #12
  %broken22.i = getelementptr inbounds %struct.sbefifo, ptr %sbefifo, i32 0, i32 5
  %26 = ptrtoint ptr %broken22.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %broken22.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end21.i, %if.end15.i.if.end23.i_crit_edge
  %cond.i = select i1 %overflow.1.off073.i, i32 -75, i32 0
  br label %sbefifo_read_response.exit

if.end25.i:                                       ; preds = %if.end9.i
  %27 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %28)
  %cmp27.i = icmp ugt i32 %28, 3
  br i1 %cmp27.i, label %copy_to_iter.exit.i, label %if.end25.i.if.end33.i_crit_edge

if.end25.i.if.end33.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

copy_to_iter.exit.i:                              ; preds = %if.end25.i
  %call3.i.i = call i32 @_copy_to_iter(ptr noundef nonnull %data.i, i32 noundef 4, ptr noundef %response) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3.i.i)
  %cmp30.i = icmp ult i32 %call3.i.i, 4
  br i1 %cmp30.i, label %copy_to_iter.exit.i.sbefifo_read_response.exit_crit_edge, label %copy_to_iter.exit.i.if.end33.i_crit_edge

copy_to_iter.exit.i.if.end33.i_crit_edge:         ; preds = %copy_to_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.i

copy_to_iter.exit.i.sbefifo_read_response.exit_crit_edge: ; preds = %copy_to_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbefifo_read_response.exit

if.end33.i:                                       ; preds = %copy_to_iter.exit.i.if.end33.i_crit_edge, %if.end25.i.if.end33.i_crit_edge
  %overflow.2.off0.i = phi i1 [ %overflow.1.off073.i, %copy_to_iter.exit.i.if.end33.i_crit_edge ], [ true, %if.end25.i.if.end33.i_crit_edge ]
  %shl.i = shl i32 %eot_set.072.i, 1
  %tobool.not.i15 = icmp eq i32 %dec74.i, 0
  br i1 %tobool.not.i15, label %if.end33.i.for.cond.loopexit.i_crit_edge, label %if.end33.i.while.body.i13_crit_edge

if.end33.i.while.body.i13_crit_edge:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i13

if.end33.i.for.cond.loopexit.i_crit_edge:         ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit.i

sbefifo_read_response.exit:                       ; preds = %copy_to_iter.exit.i.sbefifo_read_response.exit_crit_edge, %if.end23.i, %while.body.i13.sbefifo_read_response.exit_crit_edge, %for.cond.loopexit.i.sbefifo_read_response.exit_crit_edge, %if.end.sbefifo_read_response.exit_crit_edge
  %retval.0.i16 = phi i32 [ %cond.i, %if.end23.i ], [ %call275.i, %if.end.sbefifo_read_response.exit_crit_edge ], [ %call.i.i12, %while.body.i13.sbefifo_read_response.exit_crit_edge ], [ -14, %copy_to_iter.exit.i.sbefifo_read_response.exit_crit_edge ], [ %call2.i7, %for.cond.loopexit.i.sbefifo_read_response.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i5) #9
  br label %cleanup

cleanup:                                          ; preds = %sbefifo_read_response.exit, %sbefifo_send_command.exit.thread
  %retval.0 = phi i32 [ %retval.0.i16, %sbefifo_read_response.exit ], [ %retval.0.i.ph, %sbefifo_send_command.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbefifo_request_reset(ptr nocapture noundef %sbefifo) unnamed_addr #0 align 64 {
entry:
  %raw_word.i66 = alloca i32, align 4
  %raw_word.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fsi_dev = getelementptr inbounds %struct.sbefifo, ptr %sbefifo, i32 0, i32 1
  %0 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsi_dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbefifo_request_reset.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbefifo_request_reset, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !243

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbefifo_request_reset.__UNIQUE_ID_ddebug231, ptr noundef %1, ptr noundef nonnull @.str.94) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %broken = getelementptr inbounds %struct.sbefifo, ptr %sbefifo, i32 0, i32 5
  %2 = ptrtoint ptr %broken to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %broken, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_word.i) #9
  %3 = ptrtoint ptr %raw_word.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %raw_word.i, align 4
  %4 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fsi_dev, align 4
  %call.i = call i32 @fsi_device_write(ptr noundef %5, i32 noundef 12, ptr noundef nonnull %raw_word.i, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_word.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end10, label %do.end9

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.95, i32 noundef %call.i) #12
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 1000
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub76 = sub i32 %add, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub76)
  %cmp77 = icmp sgt i32 %sub76, -1
  br i1 %cmp77, label %if.end10.while.body_crit_edge, label %if.end10.do.end45_crit_edge

if.end10.do.end45_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  br label %while.body

while.body:                                       ; preds = %if.end40.while.body_crit_edge, %if.end10.while.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_word.i66) #9
  %8 = ptrtoint ptr %raw_word.i66 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %raw_word.i66, align 4, !annotation !246
  %9 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fsi_dev, align 4
  %call.i68 = call i32 @fsi_device_read(ptr noundef %10, i32 noundef 4, ptr noundef nonnull %raw_word.i66, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool.not.i = icmp eq i32 %call.i68, 0
  br i1 %tobool.not.i, label %if.end20, label %do.end19

do.end19:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_word.i66) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.97, i32 noundef %call.i68) #12
  br label %cleanup

if.end20:                                         ; preds = %while.body
  %11 = ptrtoint ptr %raw_word.i66 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %raw_word.i66, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_word.i66) #9
  %and = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %do.body23, label %if.end40

do.body23:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbefifo_request_reset.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbefifo_request_reset, %if.then35)) #9
          to label %do.end38 [label %if.then35], !srcloc !243

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbefifo_request_reset.__UNIQUE_ID_ddebug232, ptr noundef %1, ptr noundef nonnull @.str.99) #9
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %do.body23
  %13 = ptrtoint ptr %broken to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %broken, align 4
  br label %cleanup

if.end40:                                         ; preds = %if.end20
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 369, i32 noundef 0) #9
  %call.i69 = call i32 @__cond_resched() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %14
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.end40.while.body_crit_edge, label %if.end40.do.end45_crit_edge

if.end40.do.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end45

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.end45:                                         ; preds = %if.end40.do.end45_crit_edge, %if.end10.do.end45_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.101) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %do.end38, %do.end19, %do.end9
  %retval.0 = phi i32 [ %call.i, %do.end9 ], [ %call.i68, %do.end19 ], [ 0, %do.end38 ], [ -110, %do.end45 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_slave_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_device_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_device_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbefifo_wait(ptr noundef %sbefifo, i1 noundef zeroext %up, ptr nocapture noundef writeonly %status, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  %raw_word.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fsi_dev = getelementptr inbounds %struct.sbefifo, ptr %sbefifo, i32 0, i32 1
  %0 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsi_dev, align 4
  %or = select i1 %up, i32 4, i32 68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, %timeout
  br label %while.cond

while.cond:                                       ; preds = %cond.end.while.cond_crit_edge, %entry
  %sts.0 = phi i32 [ 0, %entry ], [ %sts.157, %cond.end.while.cond_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %while.body, label %if.then22

while.body:                                       ; preds = %while.cond
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 459, i32 noundef 0) #9
  %call.i = call i32 @__cond_resched() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_word.i) #9
  %4 = ptrtoint ptr %raw_word.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %raw_word.i, align 4, !annotation !246
  %5 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fsi_dev, align 4
  %call.i50 = call i32 @fsi_device_read(ptr noundef %6, i32 noundef %or, ptr noundef nonnull %raw_word.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i = icmp eq i32 %call.i50, 0
  br i1 %tobool.not.i, label %sbefifo_regr.exit.thread, label %sbefifo_regr.exit

sbefifo_regr.exit.thread:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %raw_word.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %raw_word.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_word.i) #9
  br label %if.end

sbefifo_regr.exit:                                ; preds = %while.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_word.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %cmp3 = icmp slt i32 %call.i50, 0
  br i1 %cmp3, label %do.end, label %sbefifo_regr.exit.if.end_crit_edge

sbefifo_regr.exit.if.end_crit_edge:               ; preds = %sbefifo_regr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %sbefifo_regr.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.74, i32 noundef %call.i50) #12
  br label %cleanup

if.end:                                           ; preds = %sbefifo_regr.exit.if.end_crit_edge, %sbefifo_regr.exit.thread
  %sts.157 = phi i32 [ %8, %sbefifo_regr.exit.thread ], [ %sts.0, %sbefifo_regr.exit.if.end_crit_edge ]
  br i1 %up, label %if.end.cond.end_crit_edge, label %land.lhs.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

land.lhs.true:                                    ; preds = %if.end
  %and = and i32 %sts.157, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %land.lhs.true.cond.end_crit_edge, label %do.end9

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

do.end9:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.77) #12
  br label %cleanup

cond.end:                                         ; preds = %land.lhs.true.cond.end_crit_edge, %if.end.cond.end_crit_edge
  %.sink = phi i32 [ 2097152, %if.end.cond.end_crit_edge ], [ 1048576, %land.lhs.true.cond.end_crit_edge ]
  %and13 = and i32 %sts.157, %.sink
  %tobool15.not = icmp eq i32 %and13, 0
  br i1 %tobool15.not, label %if.end29, label %cond.end.while.cond_crit_edge

cond.end.while.cond_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.then22:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %dev23 = getelementptr inbounds %struct.sbefifo, ptr %sbefifo, i32 0, i32 2
  %9 = load ptr, ptr @dev_attr_timeout, align 4
  call void @sysfs_notify(ptr noundef %dev23, ptr noundef null, ptr noundef %9) #9
  %timed_out = getelementptr inbounds %struct.sbefifo, ptr %sbefifo, i32 0, i32 8
  %10 = ptrtoint ptr %timed_out to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %timed_out, align 1
  %cond28 = select i1 %up, ptr @.str.82, ptr @.str.83
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.80, ptr noundef nonnull %cond28, i32 noundef %sts.0) #12
  br label %cleanup

if.end29:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %timed_out30 = getelementptr inbounds %struct.sbefifo, ptr %sbefifo, i32 0, i32 8
  %11 = ptrtoint ptr %timed_out30 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %timed_out30, align 1
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sts.157, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then22, %do.end9, %do.end
  %retval.0 = phi i32 [ %call.i50, %do.end ], [ 0, %if.end29 ], [ -110, %if.then22 ], [ -6, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timeout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %timed_out = getelementptr i8, ptr %dev, i32 1183
  %0 = ptrtoint ptr %timed_out to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %timed_out, align 1, !range !245
  %2 = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.85, i32 noundef %2) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbefifo_probe(ptr noundef %dev) #0 align 64 {
entry:
  %child_name = alloca [32 x i8], align 1
  %didx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %child_name) #9
  %0 = call ptr @memset(ptr %child_name, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %didx) #9
  %1 = ptrtoint ptr %didx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %didx, align 4, !annotation !246
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbefifo_probe.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbefifo_probe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !243

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbefifo_probe.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.105) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1192) #14
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %call8 = tail call ptr @get_device(ptr noundef %dev) #9
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1396852038, ptr %call7.i.i, align 8
  %fsi_dev12 = getelementptr inbounds %struct.sbefifo, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %fsi_dev12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %fsi_dev12, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.sbefifo, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.106, ptr noundef nonnull @sbefifo_probe.__key) #9
  %call16 = tail call fastcc i32 @sbefifo_cleanup_hw(ptr noundef nonnull %call7.i.i)
  %6 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %call16, label %do.end21 [
    i32 0, label %if.end11.if.end22_crit_edge
    i32 -108, label %if.end11.if.end22_crit_edge121
  ]

if.end11.if.end22_crit_edge121:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.end21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.107) #12
  br label %if.end22

if.end22:                                         ; preds = %do.end21, %if.end11.if.end22_crit_edge, %if.end11.if.end22_crit_edge121
  %dev23 = getelementptr inbounds %struct.sbefifo, ptr %call7.i.i, i32 0, i32 2
  %type = getelementptr inbounds %struct.sbefifo, ptr %call7.i.i, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @fsi_cdev_type, ptr %type, align 4
  %parent = getelementptr inbounds %struct.sbefifo, ptr %call7.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %parent, align 8
  %release = getelementptr inbounds %struct.sbefifo, ptr %call7.i.i, i32 0, i32 2, i32 35
  %9 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sbefifo_free, ptr %release, align 4
  tail call void @device_initialize(ptr noundef %dev23) #9
  %devt = getelementptr inbounds %struct.sbefifo, ptr %call7.i.i, i32 0, i32 2, i32 29
  %call28 = call i32 @fsi_get_new_minor(ptr noundef %dev, i32 noundef 1, ptr noundef %devt, ptr noundef nonnull %didx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end22.err_crit_edge

if.end22.err_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end31:                                         ; preds = %if.end22
  %10 = ptrtoint ptr %didx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %didx, align 4
  %call33 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev23, ptr noundef nonnull @.str.108, i32 noundef %11) #9
  %cdev = getelementptr inbounds %struct.sbefifo, ptr %call7.i.i, i32 0, i32 3
  call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @sbefifo_fops) #9
  %call36 = call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef %dev23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %if.end31
  %init_name.i = getelementptr inbounds %struct.sbefifo, ptr %call7.i.i, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end41.dev_name.exit_crit_edge

do.end41.dev_name.exit_crit_edge:                 ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev23, align 8
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end41.dev_name.exit_crit_edge
  %retval.0.i111 = phi ptr [ %15, %if.end.i ], [ %13, %do.end41.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.110, i32 noundef %call36, ptr noundef %retval.0.i111) #12
  %16 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %devt, align 8
  call void @fsi_free_minor(i32 noundef %17) #9
  br label %err

if.end44:                                         ; preds = %if.end31
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call45 = call ptr @of_get_next_available_child(ptr noundef %19, ptr noundef null) #9
  %cmp46.not118 = icmp eq ptr %call45, null
  br i1 %cmp46.not118, label %if.end44.for.end_crit_edge, label %for.body.lr.ph

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end44
  %init_name.i112 = getelementptr inbounds %struct.sbefifo, ptr %call7.i.i, i32 0, i32 2, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child_idx.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %np.0119 = phi ptr [ %call45, %for.body.lr.ph ], [ %call60, %for.inc.for.body_crit_edge ]
  %20 = ptrtoint ptr %init_name.i112 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i112, align 8
  %tobool.not.i113 = icmp eq ptr %21, null
  br i1 %tobool.not.i113, label %if.end.i114, label %for.body.dev_name.exit116_crit_edge

for.body.dev_name.exit116_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit116

if.end.i114:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev23, align 8
  br label %dev_name.exit116

dev_name.exit116:                                 ; preds = %if.end.i114, %for.body.dev_name.exit116_crit_edge
  %retval.0.i115 = phi ptr [ %23, %if.end.i114 ], [ %21, %for.body.dev_name.exit116_crit_edge ]
  %inc = add i32 %child_idx.0120, 1
  %call49 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %child_name, i32 noundef 32, ptr noundef nonnull @.str.112, ptr noundef %retval.0.i115, i32 noundef %child_idx.0120)
  %call51 = call ptr @of_platform_device_create(ptr noundef nonnull %np.0119, ptr noundef nonnull %child_name, ptr noundef %dev) #9
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %do.end56, label %dev_name.exit116.for.inc_crit_edge

dev_name.exit116.for.inc_crit_edge:               ; preds = %dev_name.exit116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end56:                                         ; preds = %dev_name.exit116
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.114, ptr noundef nonnull %child_name) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end56, %dev_name.exit116.for.inc_crit_edge
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %call60 = call ptr @of_get_next_available_child(ptr noundef %25, ptr noundef nonnull %np.0119) #9
  %cmp46.not = icmp eq ptr %call60, null
  br i1 %cmp46.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end44.for.end_crit_edge
  %call62 = call i32 @device_create_file(ptr noundef %dev23, ptr noundef nonnull @dev_attr_timeout) #9
  br label %cleanup

err:                                              ; preds = %dev_name.exit, %if.end22.err_crit_edge
  %rc.0 = phi i32 [ %call28, %if.end22.err_crit_edge ], [ %call36, %dev_name.exit ]
  call void @put_device(ptr noundef %dev23) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %for.end, %if.then10, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err ], [ 0, %for.end ], [ -19, %if.then10 ], [ -12, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %didx) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %child_name) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbefifo_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbefifo_remove.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sbefifo_remove, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !243

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbefifo_remove.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.119) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev4 = getelementptr inbounds %struct.sbefifo, ptr %1, i32 0, i32 2
  tail call void @device_remove_file(ptr noundef %dev4, ptr noundef nonnull @dev_attr_timeout) #9
  %lock = getelementptr inbounds %struct.sbefifo, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %dead = getelementptr inbounds %struct.sbefifo, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dead to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %dead, align 1
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %cdev = getelementptr inbounds %struct.sbefifo, ptr %1, i32 0, i32 3
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %dev4) #9
  %devt = getelementptr inbounds %struct.sbefifo, ptr %1, i32 0, i32 2, i32 29
  %3 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devt, align 8
  tail call void @fsi_free_minor(i32 noundef %4) #9
  %call8 = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @sbefifo_unregister_child) #9
  tail call void @put_device(ptr noundef %dev4) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbefifo_free(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -8
  %fsi_dev = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %fsi_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fsi_dev, align 4
  tail call void @put_device(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_get_new_minor(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_platform_device_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_free_minor(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbefifo_user_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  %resp_iter = alloca %struct.iov_iter, align 8
  %resp_iov = alloca %struct.iovec, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %resp_iter) #9
  %2 = call ptr @memset(ptr %resp_iter, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp_iov) #9
  %3 = ptrtoint ptr %resp_iov to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %resp_iov, align 4, !annotation !246
  %4 = getelementptr inbounds %struct.iovec, ptr %resp_iov, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !246
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %and = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %file_lock = getelementptr inbounds %struct.sbefifo_user, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %file_lock, i32 noundef 0) #9
  %pending_len = getelementptr inbounds %struct.sbefifo_user, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %pending_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pending_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.end4.bail_crit_edge, label %if.end6

if.end4.bail_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

if.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp8 = icmp ult i32 %9, 8
  br i1 %cmp8, label %if.end6.bail_crit_edge, label %if.end10

if.end6.bail_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

if.end10:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %resp_iov to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %resp_iov, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %len, ptr %4, align 4
  call void @iov_iter_init(ptr noundef nonnull %resp_iter, i32 noundef 1, ptr noundef nonnull %resp_iov, i32 noundef 1, i32 noundef %len) #9
  %lock = getelementptr inbounds %struct.sbefifo, ptr %7, i32 0, i32 4
  %call = call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.bail_crit_edge

if.end10.bail_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

if.end14:                                         ; preds = %if.end10
  %shr = lshr i32 %9, 2
  %pending_cmd = getelementptr inbounds %struct.sbefifo_user, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %pending_cmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pending_cmd, align 4
  %call15 = call fastcc i32 @__sbefifo_submit(ptr noundef %7, ptr noundef %13, i32 noundef %shr, ptr noundef nonnull %resp_iter)
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp slt i32 %call15, 0
  br i1 %cmp17, label %if.end14.bail_crit_edge, label %if.end19

if.end14.bail_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %resp_iter, i32 0, i32 4
  %14 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count.i, align 8
  %sub = sub i32 %len, %15
  br label %bail

bail:                                             ; preds = %if.end19, %if.end14.bail_crit_edge, %if.end10.bail_crit_edge, %if.end6.bail_crit_edge, %if.end4.bail_crit_edge
  %rc.0 = phi i32 [ %call, %if.end10.bail_crit_edge ], [ %call15, %if.end14.bail_crit_edge ], [ %sub, %if.end19 ], [ -11, %if.end4.bail_crit_edge ], [ -22, %if.end6.bail_crit_edge ]
  %pending_cmd.i = getelementptr inbounds %struct.sbefifo_user, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %pending_cmd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pending_cmd.i, align 4
  %call.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %17) #9
  br i1 %call.i, label %if.then.i, label %bail.sbefifo_release_command.exit_crit_edge

bail.sbefifo_release_command.exit_crit_edge:      ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbefifo_release_command.exit

if.then.i:                                        ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %pending_cmd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pending_cmd.i, align 4
  call void @vfree(ptr noundef %19) #9
  br label %sbefifo_release_command.exit

sbefifo_release_command.exit:                     ; preds = %if.then.i, %bail.sbefifo_release_command.exit_crit_edge
  %20 = ptrtoint ptr %pending_cmd.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %pending_cmd.i, align 4
  %21 = ptrtoint ptr %pending_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %pending_len, align 4
  call void @mutex_unlock(ptr noundef %file_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %sbefifo_release_command.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %sbefifo_release_command.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp_iov) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %resp_iter) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbefifo_user_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1052673, i32 %len)
  %cmp = icmp ult i32 %len, 1052673
  %and = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp, %tobool4.not
  br i1 %or.cond, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %file_lock = getelementptr inbounds %struct.sbefifo_user, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %file_lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %len)
  %cmp7 = icmp ult i32 %len, 4097
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %cmd_page = getelementptr inbounds %struct.sbefifo_user, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cmd_page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd_page, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call noalias ptr @vmalloc(i32 noundef %len) #13
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %call.sink = phi ptr [ %5, %if.then8 ], [ %call, %if.else ]
  %6 = getelementptr inbounds %struct.sbefifo_user, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.sink, ptr %6, align 4
  %tobool12.not = icmp eq ptr %call.sink, null
  br i1 %tobool12.not, label %if.end10.bail_crit_edge, label %if.then.i.i.i

if.end10.bail_crit_edge:                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

if.then.i.i.i:                                    ; preds = %if.end10
  tail call void @__check_object_size(ptr noundef nonnull %call.sink, i32 noundef %len, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.116, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %len, i32 -1226833920) #15, !srcloc !247
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !244

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.sink, i32 noundef %len) #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !233) #9
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !248
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.sink, ptr noundef %buf, i32 noundef %len) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !249
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !250
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %len, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %len, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end19, label %if.then11.i.i, !prof !244

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %len, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call.sink, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %bail

if.end19:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp20 = icmp eq i32 %len, 4
  br i1 %cmp20, label %land.lhs.true, label %if.end19.if.end34_crit_edge

if.end19.if.end34_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end19
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %6, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1381188948, i32 %16)
  %cmp22 = icmp eq i32 %16, 1381188948
  br i1 %cmp22, label %if.then23, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then23:                                        ; preds = %land.lhs.true
  %pending_len = getelementptr inbounds %struct.sbefifo_user, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %pending_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %pending_len, align 4
  %lock = getelementptr inbounds %struct.sbefifo, ptr %3, i32 0, i32 4
  %call24 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then23.bail_crit_edge

if.then23.bail_crit_edge:                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %bail

if.end27:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call29 = tail call fastcc i32 @sbefifo_request_reset(ptr noundef %19)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp31 = icmp eq i32 %call29, 0
  %spec.store.select = select i1 %cmp31, i32 4, i32 %call29
  br label %bail

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %if.end19.if.end34_crit_edge
  %pending_len35 = getelementptr inbounds %struct.sbefifo_user, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %pending_len35 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %len, ptr %pending_len35, align 4
  br label %bail

bail:                                             ; preds = %if.end34, %if.end27, %if.then23.bail_crit_edge, %if.then11.i.i, %if.end10.bail_crit_edge
  %rc.0 = phi i32 [ %call24, %if.then23.bail_crit_edge ], [ %spec.store.select, %if.end27 ], [ %len, %if.end34 ], [ -12, %if.end10.bail_crit_edge ], [ -14, %if.then11.i.i ]
  %pending_len36 = getelementptr inbounds %struct.sbefifo_user, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %pending_len36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pending_len36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool37.not = icmp eq i32 %22, 0
  br i1 %tobool37.not, label %if.then38, label %bail.if.end39_crit_edge

bail.if.end39_crit_edge:                          ; preds = %bail
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then38:                                        ; preds = %bail
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %6, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %24) #9
  br i1 %call.i, label %if.then.i68, label %if.then38.sbefifo_release_command.exit_crit_edge

if.then38.sbefifo_release_command.exit_crit_edge: ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbefifo_release_command.exit

if.then.i68:                                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %6, align 4
  tail call void @vfree(ptr noundef %26) #9
  br label %sbefifo_release_command.exit

sbefifo_release_command.exit:                     ; preds = %if.then.i68, %if.then38.sbefifo_release_command.exit_crit_edge
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %6, align 4
  %28 = ptrtoint ptr %pending_len36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %pending_len36, align 4
  br label %if.end39

if.end39:                                         ; preds = %sbefifo_release_command.exit, %bail.if.end39_crit_edge
  tail call void @mutex_unlock(ptr noundef %file_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end39 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbefifo_user_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 108) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %2, i32 -936
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %private_data, align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %call7.i.i, align 8
  %call2 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %6 = inttoptr i32 %call2 to ptr
  %cmd_page = getelementptr inbounds %struct.sbefifo_user, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %cmd_page to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %cmd_page, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  br i1 %tobool4.not, label %if.then5, label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %file_lock = getelementptr inbounds %struct.sbefifo_user, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %file_lock, ptr noundef nonnull @.str.117, ptr noundef nonnull @sbefifo_user_open.__key) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbefifo_user_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %pending_cmd.i = getelementptr inbounds %struct.sbefifo_user, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pending_cmd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending_cmd.i, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %3) #9
  br i1 %call.i, label %if.then.i, label %if.end.sbefifo_release_command.exit_crit_edge

if.end.sbefifo_release_command.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbefifo_release_command.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %pending_cmd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pending_cmd.i, align 4
  tail call void @vfree(ptr noundef %5) #9
  br label %sbefifo_release_command.exit

sbefifo_release_command.exit:                     ; preds = %if.then.i, %if.end.sbefifo_release_command.exit_crit_edge
  %6 = ptrtoint ptr %pending_cmd.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pending_cmd.i, align 4
  %pending_len.i = getelementptr inbounds %struct.sbefifo_user, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %pending_len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %pending_len.i, align 4
  %cmd_page = getelementptr inbounds %struct.sbefifo_user, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %cmd_page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd_page, align 4
  %10 = ptrtoint ptr %9 to i32
  tail call void @free_pages(i32 noundef %10, i32 noundef 0) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %sbefifo_release_command.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sbefifo_release_command.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbefifo_unregister_child(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @of_device_unregister(ptr noundef %add.ptr) #9
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !34, !36, !38, !40, !42, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !155, !157, !158, !160, !162, !163, !164, !165, !167, !168, !169, !171, !172, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !191, !192, !193, !195, !197, !199, !200, !201, !203, !204, !206, !207, !208, !210, !212, !213, !214, !216, !218, !219, !220, !222, !224, !226, !227, !229, !230, !231}
!llvm.named.register.sp = !{!233}
!llvm.module.flags = !{!234, !235, !236, !237, !238, !239, !240, !241}
!llvm.ident = !{!242}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 222, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sbefifo_parse_status.__UNIQUE_ID_ddebug230, !1, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 228, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sbefifo_parse_status._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @sbefifo_parse_status._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 235, i32 3}
!14 = !{ptr @sbefifo_parse_status._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sbefifo_parse_status._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 241, i32 3}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sbefifo_parse_status._entry.10, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @sbefifo_parse_status._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_sbefifo_parse_status, !22, !"__ksymtab_sbefifo_parse_status", i1 false, i1 false}
!22 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 256, i32 1}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 743, i32 6}
!25 = !{ptr @__ksymtab_sbefifo_submit, !26, !"__ksymtab_sbefifo_submit", i1 false, i1 false}
!26 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 767, i32 1}
!27 = !{ptr @__initcall__kmod_fsi_sbefifo__238_1083_sbefifo_init6, !28, !"__initcall__kmod_fsi_sbefifo__238_1083_sbefifo_init6", i1 false, i1 false}
!28 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 1083, i32 1}
!29 = !{ptr @__exitcall_sbefifo_exit, !30, !"__exitcall_sbefifo_exit", i1 false, i1 false}
!30 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 1084, i32 1}
!31 = !{ptr @__UNIQUE_ID_file239, !32, !"__UNIQUE_ID_file239", i1 false, i1 false}
!32 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 1085, i32 1}
!33 = !{ptr @__UNIQUE_ID_license240, !32, !"__UNIQUE_ID_license240", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_author241, !35, !"__UNIQUE_ID_author241", i1 false, i1 false}
!35 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 1086, i32 1}
!36 = !{ptr @__UNIQUE_ID_author242, !37, !"__UNIQUE_ID_author242", i1 false, i1 false}
!37 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 1087, i32 1}
!38 = !{ptr @__UNIQUE_ID_author243, !39, !"__UNIQUE_ID_author243", i1 false, i1 false}
!39 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 1088, i32 1}
!40 = !{ptr @__UNIQUE_ID_author244, !41, !"__UNIQUE_ID_author244", i1 false, i1 false}
!41 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 1089, i32 1}
!42 = !{ptr @__UNIQUE_ID_description245, !43, !"__UNIQUE_ID_description245", i1 false, i1 false}
!43 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 1090, i32 1}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 138, i32 8}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sbefifo_ffdc_mutex, !45, !"sbefifo_ffdc_mutex", i1 false, i1 false}
!48 = !{ptr @__sbefifo_dump_ffdc.ffdc_line, !49, !"ffdc_line", i1 false, i1 false}
!49 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 154, i32 14}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 160, i32 4}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @__sbefifo_dump_ffdc._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @__sbefifo_dump_ffdc._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 168, i32 4}
!57 = !{ptr @__sbefifo_dump_ffdc._entry.18, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @__sbefifo_dump_ffdc._entry_ptr.20, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 174, i32 4}
!61 = !{ptr @__sbefifo_dump_ffdc._entry.21, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @__sbefifo_dump_ffdc._entry_ptr.23, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 180, i32 4}
!65 = !{ptr @__sbefifo_dump_ffdc._entry.24, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @__sbefifo_dump_ffdc._entry_ptr.26, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 183, i32 4}
!69 = !{ptr @__sbefifo_dump_ffdc._entry.27, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @__sbefifo_dump_ffdc._entry_ptr.29, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 186, i32 3}
!73 = !{ptr @__sbefifo_dump_ffdc._entry.30, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @__sbefifo_dump_ffdc._entry_ptr.32, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 187, i32 3}
!77 = !{ptr @__sbefifo_dump_ffdc._entry.33, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @__sbefifo_dump_ffdc._entry_ptr.35, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 191, i32 21}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 193, i32 20}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 197, i32 22}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 200, i32 5}
!87 = !{ptr @__sbefifo_dump_ffdc._entry.39, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @__sbefifo_dump_ffdc._entry_ptr.41, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 203, i32 3}
!91 = !{ptr @__sbefifo_dump_ffdc._entry.42, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @__sbefifo_dump_ffdc._entry_ptr.44, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 385, i32 3}
!95 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @sbefifo_cleanup_hw.__UNIQUE_ID_ddebug233, !94, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 395, i32 3}
!99 = !{ptr @sbefifo_cleanup_hw._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @sbefifo_cleanup_hw._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 404, i32 3}
!103 = !{ptr @sbefifo_cleanup_hw._entry.48, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @sbefifo_cleanup_hw._entry_ptr.50, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 413, i32 3}
!107 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @sbefifo_cleanup_hw._entry.51, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @sbefifo_cleanup_hw._entry_ptr.54, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 417, i32 4}
!112 = !{ptr @sbefifo_cleanup_hw._entry.55, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @sbefifo_cleanup_hw._entry_ptr.57, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 435, i32 2}
!116 = !{ptr @sbefifo_cleanup_hw._entry.58, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @sbefifo_cleanup_hw._entry_ptr.60, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 650, i32 3}
!120 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @sbefifo_collect_async_ffdc._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @sbefifo_collect_async_ffdc._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 660, i32 3}
!125 = !{ptr @sbefifo_collect_async_ffdc._entry.63, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @sbefifo_collect_async_ffdc._entry_ptr.65, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 668, i32 3}
!129 = !{ptr @sbefifo_collect_async_ffdc._entry.66, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @sbefifo_collect_async_ffdc._entry_ptr.68, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.69, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 518, i32 5}
!133 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @sbefifo_send_command._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @sbefifo_send_command._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 536, i32 3}
!138 = !{ptr @sbefifo_send_command._entry.71, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @sbefifo_send_command._entry_ptr.73, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 462, i32 4}
!142 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @sbefifo_wait._entry, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @sbefifo_wait._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 466, i32 4}
!147 = !{ptr @sbefifo_wait._entry.76, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @sbefifo_wait._entry_ptr.78, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.80, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 476, i32 3}
!151 = !{ptr @sbefifo_wait._entry.79, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @sbefifo_wait._entry_ptr.81, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.82, !150, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.83, !150, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.84, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 147, i32 8}
!157 = !{ptr @dev_attr_timeout, !156, !"dev_attr_timeout", i1 false, i1 false}
!158 = !{ptr @.str.85, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 145, i32 25}
!160 = !{ptr @.str.86, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 582, i32 6}
!162 = !{ptr @.str.87, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @sbefifo_read_response._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @sbefifo_read_response._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.89, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 598, i32 6}
!167 = !{ptr @sbefifo_read_response._entry.88, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @sbefifo_read_response._entry_ptr.90, !166, !"_entry_ptr", i1 false, i1 false}
!169 = distinct !{null, !170, !"__already_done", i1 false, i1 false}
!170 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!171 = !{ptr @.str.91, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.92, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!174 = !{ptr @.str.93, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 341, i32 2}
!176 = !{ptr @.str.94, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @sbefifo_request_reset.__UNIQUE_ID_ddebug231, !175, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!178 = !{ptr @.str.95, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 349, i32 3}
!180 = !{ptr @sbefifo_request_reset._entry, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @sbefifo_request_reset._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.97, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 358, i32 4}
!184 = !{ptr @sbefifo_request_reset._entry.96, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @sbefifo_request_reset._entry_ptr.98, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.99, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 364, i32 4}
!188 = !{ptr @sbefifo_request_reset.__UNIQUE_ID_ddebug232, !187, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!189 = !{ptr @.str.101, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 371, i32 2}
!191 = !{ptr @sbefifo_request_reset._entry.100, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @sbefifo_request_reset._entry_ptr.102, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.103, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 1066, i32 11}
!195 = !{ptr @sbefifo_drv, !196, !"sbefifo_drv", i1 false, i1 false}
!196 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 1063, i32 26}
!197 = !{ptr @.str.104, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 959, i32 2}
!199 = !{ptr @.str.105, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @sbefifo_probe.__UNIQUE_ID_ddebug236, !198, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!201 = !{ptr @sbefifo_probe.__key, !202, !"__key", i1 false, i1 false}
!202 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 974, i32 2}
!203 = !{ptr @.str.106, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.107, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 982, i32 3}
!206 = !{ptr @sbefifo_probe._entry, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @sbefifo_probe._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.108, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 995, i32 30}
!210 = !{ptr @.str.110, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 999, i32 3}
!212 = !{ptr @sbefifo_probe._entry.109, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @sbefifo_probe._entry_ptr.111, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.112, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 1006, i32 44}
!216 = !{ptr @.str.114, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 1010, i32 4}
!218 = !{ptr @sbefifo_probe._entry.113, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @sbefifo_probe._entry_ptr.115, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @sbefifo_fops, !221, !"sbefifo_fops", i1 false, i1 false}
!221 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 930, i32 37}
!222 = !{ptr @.str.116, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!224 = !{ptr @sbefifo_user_open.__key, !225, !"__key", i1 false, i1 false}
!225 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 797, i32 2}
!226 = !{ptr @.str.117, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.118, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 1039, i32 2}
!229 = !{ptr @.str.119, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @sbefifo_remove.__UNIQUE_ID_ddebug237, !228, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!231 = !{ptr @sbefifo_ids, !232, !"sbefifo_ids", i1 false, i1 false}
!232 = !{!"../drivers/fsi/fsi-sbefifo.c", i32 1055, i32 35}
!233 = !{!"sp"}
!234 = !{i32 1, !"wchar_size", i32 2}
!235 = !{i32 1, !"min_enum_size", i32 4}
!236 = !{i32 8, !"branch-target-enforcement", i32 0}
!237 = !{i32 8, !"sign-return-address", i32 0}
!238 = !{i32 8, !"sign-return-address-all", i32 0}
!239 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!240 = !{i32 7, !"uwtable", i32 1}
!241 = !{i32 7, !"frame-pointer", i32 2}
!242 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!243 = !{i64 2148303373, i64 2148303378, i64 2148303391, i64 2148303435, i64 2148303469, i64 2148303490}
!244 = !{!"branch_weights", i32 2000, i32 1}
!245 = !{i8 0, i8 2}
!246 = !{!"auto-init"}
!247 = !{i64 2152669300, i64 2152669325}
!248 = !{i64 5164855}
!249 = !{i64 5165052}
!250 = !{i64 2152650285}
