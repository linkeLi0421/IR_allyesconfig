; ModuleID = '/llk/IR_all_yes/drivers/tty/vt/vc_screen.c_pt.bc'
source_filename = "../drivers/tty/vt/vc_screen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vc = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
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
%struct.vc_data = type { %struct.tty_port, %struct.vc_state, %struct.vc_state, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i16, i16, i32, i16, %struct.console_font, i16, i32, i32, [16 x i32], %struct.vt_mode, ptr, i32, %struct.wait_queue_head, i16, i8, i32, [8 x i32], [48 x i8], ptr, i32, i32, i32, i16, ptr, ptr, ptr, ptr }
%struct.tty_port = type { %struct.tty_bufhead, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i8, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, %struct.kref, ptr }
%struct.tty_bufhead = type { ptr, %struct.work_struct, %struct.mutex, %struct.atomic_t, %struct.tty_buffer, %struct.llist_head, %struct.atomic_t, i32, ptr }
%struct.tty_buffer = type { %union.anon.37, i32, i32, i32, i32, i32, [0 x i32] }
%union.anon.37 = type { ptr }
%struct.llist_head = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc_state = type { i32, i32, i8, [2 x i8], i8, i32, i8, i8, i8, i8 }
%struct.console_font = type { i32, i32, i32, ptr }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vcs_poll_data = type { %struct.notifier_block, i32, i32, %struct.wait_queue_head, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@vc_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vcs%u\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vcsu%u\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vcsa%u\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcs\00", [28 x i8] zeroinitializer }, align 32
@vcs_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @vcs_lseek, ptr @vcs_read, ptr @vcs_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vcs_poll, ptr null, ptr null, ptr null, i32 0, ptr @vcs_open, ptr null, ptr @vcs_release, ptr null, ptr @vcs_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to get major %d for vcs device\00", [58 x i8] zeroinitializer }, align 32
@vcs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vc\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcsu\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcsa\00", [27 x i8] zeroinitializer }, align 32
@ignore_console_lock_warning = external dso_local global %struct.atomic_t, align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/tty/vt/vc_screen.c\00", [37 x i8] zeroinitializer }, align 32
@fg_console = external dso_local local_unnamed_addr global i32, align 4
@vc_cons = external dso_local local_unnamed_addr global [63 x %struct.vc], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@vcs_poll_data_get.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&poll->waitq\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.vcs_poll = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 325, i32 333, i32 349, i32 333, i32 327], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.13 = private unnamed_addr constant [9 x i8] c"vc_class\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 782, i32 22 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 787, i32 9 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 789, i32 9 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 791, i32 9 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 805, i32 33 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"vcs_fops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 772, i32 37 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 806, i32 9 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 807, i32 13 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 810, i32 60 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 811, i32 61 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 187, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 230, i32 6 }
@___asan_gen_.53 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 214, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 174, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [30 x i8] c"../drivers/tty/vt/vc_screen.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 137, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"switch.table.vcs_poll\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @vc_class, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vcs_fops, ptr @.str.4, ptr @vcs_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @vcs_poll_data_get.__key, ptr @.str.12, ptr @switch.table.vcs_poll], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcs_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcs_poll_data_get.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vcs_poll to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vcs_make_sysfs(i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vc_class, align 4
  %add = add i32 %index, 1
  %or = or i32 %add, 7340032
  %call = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %0, ptr noundef null, i32 noundef %or, ptr noundef null, ptr noundef nonnull @.str, i32 noundef %add) #8
  %1 = load ptr, ptr @vc_class, align 4
  %add2 = add i32 %index, 65
  %or3 = or i32 %add2, 7340032
  %call5 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %1, ptr noundef null, i32 noundef %or3, ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef %add) #8
  %2 = load ptr, ptr @vc_class, align 4
  %add6 = add i32 %index, 129
  %or7 = or i32 %add6, 7340032
  %call9 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %2, ptr noundef null, i32 noundef %or7, ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef %add) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vcs_remove_sysfs(i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vc_class, align 4
  %add = add i32 %index, 1
  %or = or i32 %add, 7340032
  tail call void @device_destroy(ptr noundef %0, i32 noundef %or) #8
  %1 = load ptr, ptr @vc_class, align 4
  %add1 = add i32 %index, 65
  %or2 = or i32 %add1, 7340032
  tail call void @device_destroy(ptr noundef %1, i32 noundef %or2) #8
  %2 = load ptr, ptr @vc_class, align 4
  %add3 = add i32 %index, 129
  %or4 = or i32 %add3, 7340032
  tail call void @device_destroy(ptr noundef %2, i32 noundef %or4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vcs_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__register_chrdev(i32 noundef 7, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.3, ptr noundef nonnull @vcs_fops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.4, i32 noundef 7) #11
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @vcs_init.__key) #8
  store ptr %call1, ptr @vc_class, align 4
  %call2 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %call1, ptr noundef null, i32 noundef 7340032, ptr noundef null, ptr noundef nonnull @.str.3) #8
  %0 = load ptr, ptr @vc_class, align 4
  %call3 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %0, ptr noundef null, i32 noundef 7340096, ptr noundef null, ptr noundef nonnull @.str.6) #8
  %1 = load ptr, ptr @vc_class, align 4
  %call4 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %1, ptr noundef null, i32 noundef 7340160, ptr noundef null, ptr noundef nonnull @.str.7) #8
  tail call void @vcs_make_sysfs(i32 noundef 0)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vcs_lseek(ptr noundef %file, i64 noundef %offset, i32 noundef %orig) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  tail call void @console_lock() #8
  %i_rdev.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i.i, align 8
  %and.i = and i32 %3, 63
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %4 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @is_console_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.rhs.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %5 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.i = icmp eq i32 %5, 0
  br i1 %tobool4.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !43

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 187, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then25.i, label %if.else.i

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %6 = load i32, ptr @fg_console, align 4
  br label %vcs_vc.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add nsw i32 %and.i, -1
  br label %vcs_vc.exit

vcs_vc.exit:                                      ; preds = %if.else.i, %if.then25.i
  %currcons.0.i = phi i32 [ %6, %if.then25.i ], [ %dec.i, %if.else.i ]
  %arrayidx.i = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %currcons.0.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %vcs_vc.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @console_unlock() #8
  br label %cleanup

if.end:                                           ; preds = %vcs_vc.exit
  %9 = ptrtoint ptr %i_rdev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_rdev.i.i, align 8
  %and = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %and5 = and i32 %10, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %11 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i24 = icmp eq i32 %11, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i27, label %if.end.if.end.i31_crit_edge

if.end.if.end.i31_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i31

land.lhs.true.i27:                                ; preds = %if.end
  %call2.i25 = tail call i32 @is_console_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i25)
  %tobool3.not.i26 = icmp eq i32 %call2.i25, 0
  br i1 %tobool3.not.i26, label %land.rhs.i29, label %land.lhs.true.i27.if.end.i31_crit_edge

land.lhs.true.i27.if.end.i31_crit_edge:           ; preds = %land.lhs.true.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i31

land.rhs.i29:                                     ; preds = %land.lhs.true.i27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %12 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not.i28 = icmp eq i32 %12, 0
  br i1 %tobool4.not.i28, label %do.end.i30, label %land.rhs.i29.if.end.i31_crit_edge, !prof !43

land.rhs.i29.if.end.i31_crit_edge:                ; preds = %land.rhs.i29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i31

do.end.i30:                                       ; preds = %land.rhs.i29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 213, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i31

if.end.i31:                                       ; preds = %do.end.i30, %land.rhs.i29.if.end.i31_crit_edge, %land.lhs.true.i27.if.end.i31_crit_edge, %if.end.if.end.i31_crit_edge
  %vc_rows.i = getelementptr inbounds %struct.vc_data, ptr %8, i32 0, i32 5
  %13 = ptrtoint ptr %vc_rows.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vc_rows.i, align 4
  %vc_cols.i = getelementptr inbounds %struct.vc_data, ptr %8, i32 0, i32 4
  %15 = ptrtoint ptr %vc_cols.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vc_cols.i, align 4
  %mul.i = mul i32 %16, %14
  br i1 %tobool3.not, label %if.else.i32, label %if.then26.i

if.then26.i:                                      ; preds = %if.end.i31
  br i1 %tobool6.not, label %if.end29.i, label %vcs_size.exit.thread

vcs_size.exit.thread:                             ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @console_unlock() #8
  br label %if.then8

if.end29.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul30.i = shl i32 %mul.i, 1
  %add.i = add i32 %mul30.i, 4
  br label %vcs_size.exit

if.else.i32:                                      ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  %mul33.i = shl i32 %mul.i, 2
  %spec.select.i = select i1 %tobool6.not, i32 %mul.i, i32 %mul33.i
  br label %vcs_size.exit

vcs_size.exit:                                    ; preds = %if.else.i32, %if.end29.i
  %retval.0.i = phi i32 [ %add.i, %if.end29.i ], [ %spec.select.i, %if.else.i32 ]
  tail call void @console_unlock() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %vcs_size.exit.if.then8_crit_edge, label %if.end9

vcs_size.exit.if.then8_crit_edge:                 ; preds = %vcs_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.then8:                                         ; preds = %vcs_size.exit.if.then8_crit_edge, %vcs_size.exit.thread
  %retval.0.i35 = phi i32 [ -95, %vcs_size.exit.thread ], [ %retval.0.i, %vcs_size.exit.if.then8_crit_edge ]
  %conv = sext i32 %retval.0.i35 to i64
  br label %cleanup

if.end9:                                          ; preds = %vcs_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv1036 = zext i32 %retval.0.i to i64
  %call11 = tail call i64 @fixed_size_llseek(ptr noundef %file, i64 noundef %offset, i32 noundef %orig, i64 noundef %conv1036) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  %retval.0 = phi i64 [ %conv, %if.then8 ], [ %call11, %if.end9 ], [ -6, %if.then ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcs_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %call1 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  %2 = inttoptr i32 %call1 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup88_crit_edge, label %if.end

entry.cleanup88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup88

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %ppos, align 8
  tail call void @console_lock() #8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_rdev.i, align 8
  %and = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %and5 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %and.i155 = and i32 %6, 63
  %call.i.i.i156 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %7 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call2.i = tail call i32 @is_console_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.rhs.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %8 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not.i = icmp eq i32 %8, 0
  br i1 %tobool4.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !43

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 187, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i155)
  %cmp.i = icmp eq i32 %and.i155, 0
  br i1 %cmp.i, label %if.then25.i, label %if.else.i

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %9 = load i32, ptr @fg_console, align 4
  br label %vcs_vc.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add nsw i32 %and.i155, -1
  br label %vcs_vc.exit

vcs_vc.exit:                                      ; preds = %if.else.i, %if.then25.i
  %currcons.0.ph.i = phi i32 [ %9, %if.then25.i ], [ %dec.i, %if.else.i ]
  %arrayidx.i = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %currcons.0.ph.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %vcs_vc.exit.unlock_out_crit_edge, label %if.end11

vcs_vc.exit.unlock_out_crit_edge:                 ; preds = %vcs_vc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_out

if.end11:                                         ; preds = %vcs_vc.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.end11.unlock_out_crit_edge, label %if.end13

if.end11.unlock_out_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_out

if.end13:                                         ; preds = %if.end11
  br i1 %tobool3.not, label %if.end13.if.end18_crit_edge, label %land.lhs.true

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end13
  %conv = zext i32 %count to i64
  %or = or i64 %4, %conv
  %and15 = and i64 %or, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end18_crit_edge, label %land.lhs.true.unlock_out_crit_edge

land.lhs.true.unlock_out_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_out

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.end13.if.end18_crit_edge
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool19.not = icmp eq i32 %count, 0
  %tobool21.not = icmp eq ptr %13, null
  %or.cond = select i1 %tobool19.not, i1 true, i1 %tobool21.not
  br i1 %or.cond, label %if.end18.if.end23_crit_edge, label %if.then22

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %event = getelementptr inbounds %struct.vcs_poll_data, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %event, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18.if.end23_crit_edge
  br i1 %tobool19.not, label %if.end23.while.end.thread_crit_edge, label %while.body.lr.ph

if.end23.while.end.thread_crit_edge:              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.thread

while.body.lr.ph:                                 ; preds = %if.end23
  %vc_rows.i = getelementptr inbounds %struct.vc_data, ptr %11, i32 0, i32 5
  %vc_cols.i = getelementptr inbounds %struct.vc_data, ptr %11, i32 0, i32 4
  %arrayidx11.i = getelementptr i8, ptr %2, i32 1
  %add.ptr.i182 = getelementptr i8, ptr %2, i32 2
  %add.ptr24.i = getelementptr i8, ptr %2, i32 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %pos.0248 = phi i64 [ %4, %while.body.lr.ph ], [ %add78, %cleanup.while.body_crit_edge ]
  %read.0246 = phi i32 [ 0, %while.body.lr.ph ], [ %add79, %cleanup.while.body_crit_edge ]
  %count.addr.0245 = phi i32 [ %count, %while.body.lr.ph ], [ %sub80, %cleanup.while.body_crit_edge ]
  %buf.addr.0243 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr76, %cleanup.while.body_crit_edge ]
  %call.i.i.i157 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %15 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i158 = icmp eq i32 %15, 0
  br i1 %tobool.not.i158, label %land.lhs.true.i161, label %while.body.if.end.i165_crit_edge

while.body.if.end.i165_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i165

land.lhs.true.i161:                               ; preds = %while.body
  %call2.i159 = tail call i32 @is_console_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i159)
  %tobool3.not.i160 = icmp eq i32 %call2.i159, 0
  br i1 %tobool3.not.i160, label %land.rhs.i163, label %land.lhs.true.i161.if.end.i165_crit_edge

land.lhs.true.i161.if.end.i165_crit_edge:         ; preds = %land.lhs.true.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i165

land.rhs.i163:                                    ; preds = %land.lhs.true.i161
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %16 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not.i162 = icmp eq i32 %16, 0
  br i1 %tobool4.not.i162, label %do.end.i164, label %land.rhs.i163.if.end.i165_crit_edge, !prof !43

land.rhs.i163.if.end.i165_crit_edge:              ; preds = %land.rhs.i163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i165

do.end.i164:                                      ; preds = %land.rhs.i163
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 213, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i165

if.end.i165:                                      ; preds = %do.end.i164, %land.rhs.i163.if.end.i165_crit_edge, %land.lhs.true.i161.if.end.i165_crit_edge, %while.body.if.end.i165_crit_edge
  %17 = ptrtoint ptr %vc_rows.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vc_rows.i, align 4
  %19 = ptrtoint ptr %vc_cols.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vc_cols.i, align 4
  %mul.i = mul i32 %20, %18
  br i1 %tobool6.not, label %if.else.i166, label %if.then26.i

if.then26.i:                                      ; preds = %if.end.i165
  br i1 %tobool3.not, label %if.end29.i, label %if.then26.i.if.then30_crit_edge

if.then26.i.if.then30_crit_edge:                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.end29.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul30.i = shl i32 %mul.i, 1
  %add.i = add i32 %mul30.i, 4
  br label %vcs_size.exit

if.else.i166:                                     ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #10
  %mul33.i = shl i32 %mul.i, 2
  %spec.select.i = select i1 %tobool3.not, i32 %mul.i, i32 %mul33.i
  br label %vcs_size.exit

vcs_size.exit:                                    ; preds = %if.else.i166, %if.end29.i
  %retval.0.i = phi i32 [ %add.i, %if.end29.i ], [ %spec.select.i, %if.else.i166 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp28 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp28, label %vcs_size.exit.if.then30_crit_edge, label %if.end34

vcs_size.exit.if.then30_crit_edge:                ; preds = %vcs_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.then30:                                        ; preds = %vcs_size.exit.if.then30_crit_edge, %if.then26.i.if.then30_crit_edge
  %retval.0.i206 = phi i32 [ %retval.0.i, %vcs_size.exit.if.then30_crit_edge ], [ -95, %if.then26.i.if.then30_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read.0246)
  %tobool31.not = icmp eq i32 %read.0246, 0
  br i1 %tobool31.not, label %if.then30.unlock_out_crit_edge, label %while.end.thread275

if.then30.unlock_out_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_out

while.end.thread275:                              ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %conv83278 = zext i32 %read.0246 to i64
  %21 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %ppos, align 8
  %add84279 = add i64 %22, %conv83278
  store i64 %add84279, ptr %ppos, align 8
  br label %unlock_out

if.end34:                                         ; preds = %vcs_size.exit
  %conv35225 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.0248, i64 %conv35225)
  %cmp36.not = icmp slt i64 %pos.0248, %conv35225
  br i1 %cmp36.not, label %if.end39, label %if.end34.while.end_crit_edge

if.end34.while.end_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end39:                                         ; preds = %if.end34
  %conv40 = zext i32 %count.addr.0245 to i64
  %sub = sub i64 %conv35225, %pos.0248
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv40)
  %cmp42 = icmp slt i64 %sub, %conv40
  %conv47 = trunc i64 %sub to i32
  %spec.select = select i1 %cmp42, i32 %conv47, i32 %count.addr.0245
  %23 = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 4096)
  br i1 %tobool3.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.end39
  %call.i = tail call i32 @vc_uniscr_check(ptr noundef nonnull %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i168 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i168, label %if.end.i169, label %if.then54.while.end_crit_edge

if.then54.while.end_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end.i169:                                      ; preds = %if.then54
  %conv55 = trunc i64 %pos.0248 to i32
  %div31.i = lshr i32 %conv55, 2
  %div31.i.frozen = freeze i32 %div31.i
  %.frozen = freeze i32 %20
  %div1.i = udiv i32 %div31.i.frozen, %.frozen
  %24 = mul i32 %div1.i, %.frozen
  %rem.i.decomposed = sub i32 %div31.i.frozen, %24
  %sub.i = sub i32 %20, %rem.i.decomposed
  %div232.peel.i = lshr i32 %23, 2
  %25 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 %div232.peel.i) #8
  tail call void @vc_uniscr_copy_line(ptr noundef nonnull %11, ptr noundef nonnull %2, i1 noundef zeroext %cmp.i, i32 noundef %div1.i, i32 noundef %rem.i.decomposed, i32 noundef %25) #8
  %mul.peel.i = shl nuw nsw i32 %25, 2
  %sub8.peel.i = sub nsw i32 %23, %mul.peel.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.peel.i)
  %tobool9.not.peel.i = icmp eq i32 %sub8.peel.i, 0
  br i1 %tobool9.not.peel.i, label %if.end.i169.if.end70_crit_edge, label %do.body.peel.next.i

if.end.i169.if.end70_crit_edge:                   ; preds = %if.end.i169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

do.body.peel.next.i:                              ; preds = %if.end.i169
  %add.ptr.peel.i = getelementptr i8, ptr %2, i32 %mul.peel.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.peel.next.i
  %con_buf.addr.0.i = phi ptr [ %add.ptr.peel.i, %do.body.peel.next.i ], [ %add.ptr.i, %do.body.i.do.body.i_crit_edge ]
  %count.addr.0.i = phi i32 [ %sub8.peel.i, %do.body.peel.next.i ], [ %sub8.i, %do.body.i.do.body.i_crit_edge ]
  %row.0.in.i = phi i32 [ %div1.i, %do.body.peel.next.i ], [ %row.0.i, %do.body.i.do.body.i_crit_edge ]
  %row.0.i = add i32 %row.0.in.i, 1
  %div232.i = lshr i32 %count.addr.0.i, 2
  %26 = tail call i32 @llvm.umin.i32(i32 %20, i32 %div232.i) #8
  tail call void @vc_uniscr_copy_line(ptr noundef nonnull %11, ptr noundef %con_buf.addr.0.i, i1 noundef zeroext %cmp.i, i32 noundef %row.0.i, i32 noundef 0, i32 noundef %26) #8
  %mul.i170 = shl nuw i32 %26, 2
  %add.ptr.i = getelementptr i8, ptr %con_buf.addr.0.i, i32 %mul.i170
  %sub8.i = sub i32 %count.addr.0.i, %mul.i170
  %tobool9.not.i = icmp eq i32 %sub8.i, 0
  br i1 %tobool9.not.i, label %do.body.i.if.end70_crit_edge, label %do.body.i.do.body.i_crit_edge, !llvm.loop !44

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i.if.end70_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.else:                                          ; preds = %if.end39
  %conv63 = trunc i64 %pos.0248 to i32
  br i1 %tobool6.not, label %if.then62, label %if.else65

if.then62:                                        ; preds = %if.else
  %call.i173 = tail call ptr @screen_pos(ptr noundef nonnull %11, i32 noundef %conv63, i1 noundef zeroext %cmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not22.i = icmp eq i32 %23, 0
  br i1 %cmp.not22.i, label %if.then62.if.end70_crit_edge, label %while.body.preheader.i

if.then62.if.end70_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

while.body.preheader.i:                           ; preds = %if.then62
  %sub.i174 = add i32 %20, %conv63
  %rem.i175 = urem i32 %conv63, %20
  %add.i176 = sub i32 %sub.i174, %rem.i175
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i178.while.body.i_crit_edge, %while.body.preheader.i
  %dec27.in.i = phi i32 [ %dec27.i, %if.end.i178.while.body.i_crit_edge ], [ %23, %while.body.preheader.i ]
  %col.026.i = phi i32 [ %col.1.i, %if.end.i178.while.body.i_crit_edge ], [ %rem.i175, %while.body.preheader.i ]
  %org.025.i = phi ptr [ %org.1.i, %if.end.i178.while.body.i_crit_edge ], [ %call.i173, %while.body.preheader.i ]
  %con_buf.addr.024.i = phi ptr [ %incdec.ptr3.i, %if.end.i178.while.body.i_crit_edge ], [ %2, %while.body.preheader.i ]
  %pos.addr.023.i = phi i32 [ %pos.addr.1.i, %if.end.i178.while.body.i_crit_edge ], [ %add.i176, %while.body.preheader.i ]
  %dec27.i = add nsw i32 %dec27.in.i, -1
  %incdec.ptr.i = getelementptr i16, ptr %org.025.i, i32 1
  %call1.i = tail call zeroext i16 @vcs_scr_readw(ptr noundef nonnull %11, ptr noundef %org.025.i) #8
  %conv2.i = trunc i16 %call1.i to i8
  %incdec.ptr3.i = getelementptr i8, ptr %con_buf.addr.024.i, i32 1
  %27 = ptrtoint ptr %con_buf.addr.024.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv2.i, ptr %con_buf.addr.024.i, align 1
  %inc.i = add i32 %col.026.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %20)
  %cmp4.i = icmp eq i32 %inc.i, %20
  br i1 %cmp4.i, label %if.then.i177, label %while.body.i.if.end.i178_crit_edge

while.body.i.if.end.i178_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i178

if.then.i177:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call ptr @screen_pos(ptr noundef nonnull %11, i32 noundef %pos.addr.023.i, i1 noundef zeroext %cmp.i) #8
  %add8.i = add i32 %pos.addr.023.i, %20
  br label %if.end.i178

if.end.i178:                                      ; preds = %if.then.i177, %while.body.i.if.end.i178_crit_edge
  %pos.addr.1.i = phi i32 [ %add8.i, %if.then.i177 ], [ %pos.addr.023.i, %while.body.i.if.end.i178_crit_edge ]
  %org.1.i = phi ptr [ %call7.i, %if.then.i177 ], [ %incdec.ptr.i, %while.body.i.if.end.i178_crit_edge ]
  %col.1.i = phi i32 [ 0, %if.then.i177 ], [ %inc.i, %while.body.i.if.end.i178_crit_edge ]
  %cmp.not.i = icmp eq i32 %dec27.i, 0
  br i1 %cmp.not.i, label %if.end.i178.if.end70_crit_edge, label %if.end.i178.while.body.i_crit_edge

if.end.i178.while.body.i_crit_edge:               ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end.i178.if.end70_crit_edge:                   ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.else65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv63)
  %cmp.i180 = icmp ult i32 %conv63, 4
  br i1 %cmp.i180, label %if.then.i185, label %if.else.i188

if.then.i185:                                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #10
  %28 = tail call i32 @llvm.umin.i32(i32 %18, i32 255) #8
  %29 = trunc i32 %28 to i8
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %2, align 1
  %31 = ptrtoint ptr %vc_cols.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vc_cols.i, align 4
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 255) #8
  %34 = trunc i32 %33 to i8
  %35 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %arrayidx11.i, align 1
  tail call void @getconsxy(ptr noundef nonnull %11, ptr noundef %add.ptr.i182) #8
  %add12.i = add nuw nsw i32 %23, %conv63
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add12.i)
  %cmp13.i = icmp ugt i32 %add12.i, 4096
  %sub.i184 = sub nuw nsw i32 4096, %conv63
  %36 = tail call i32 @llvm.umin.i32(i32 %add12.i, i32 4096) #8
  %filled.0.i = select i1 %cmp13.i, i32 %sub.i184, i32 %23
  %37 = tail call i32 @llvm.umin.i32(i32 %add12.i, i32 4) #8
  %sub23.i = sub nsw i32 %36, %37
  br label %if.end33.i

if.else.i188:                                     ; preds = %if.else65
  %and.i186 = and i32 %conv63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i186)
  %tobool.not.i187 = icmp eq i32 %and.i186, 0
  br i1 %tobool.not.i187, label %if.else.i188.if.end33.i_crit_edge, label %if.then25.i190

if.else.i188.if.end33.i_crit_edge:                ; preds = %if.else.i188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then25.i190:                                   ; preds = %if.else.i188
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %spec.select)
  %cmp26.i = icmp ult i32 %spec.select, 4096
  %inc29.i = add nuw nsw i32 %23, 1
  %spec.select226 = select i1 %cmp26.i, i32 %23, i32 4095
  %spec.select227 = select i1 %cmp26.i, i32 %inc29.i, i32 4096
  br label %if.end36.i

if.end33.i:                                       ; preds = %if.else.i188.if.end33.i_crit_edge, %if.then.i185
  %skip.0 = phi i32 [ %conv63, %if.then.i185 ], [ 0, %if.else.i188.if.end33.i_crit_edge ]
  %count.addr.1.i = phi i32 [ %sub23.i, %if.then.i185 ], [ %23, %if.else.i188.if.end33.i_crit_edge ]
  %filled.1.i = phi i32 [ %filled.0.i, %if.then.i185 ], [ %23, %if.else.i188.if.end33.i_crit_edge ]
  %pos.addr.0.i = phi i32 [ 4, %if.then.i185 ], [ %conv63, %if.else.i188.if.end33.i_crit_edge ]
  %con_buf.addr.0.i192 = phi ptr [ %add.ptr24.i, %if.then.i185 ], [ %2, %if.else.i188.if.end33.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1.i)
  %tobool34.not.i = icmp eq i32 %count.addr.1.i, 0
  br i1 %tobool34.not.i, label %if.end33.i.if.end70_crit_edge, label %if.end33.i.if.end36.i_crit_edge

if.end33.i.if.end36.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.end33.i.if.end70_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.end36.i:                                       ; preds = %if.end33.i.if.end36.i_crit_edge, %if.then25.i190
  %skip.1 = phi i32 [ %skip.0, %if.end33.i.if.end36.i_crit_edge ], [ 1, %if.then25.i190 ]
  %con_buf.addr.0119.i = phi ptr [ %con_buf.addr.0.i192, %if.end33.i.if.end36.i_crit_edge ], [ %2, %if.then25.i190 ]
  %pos.addr.0118.i = phi i32 [ %pos.addr.0.i, %if.end33.i.if.end36.i_crit_edge ], [ %conv63, %if.then25.i190 ]
  %filled.1116.i = phi i32 [ %filled.1.i, %if.end33.i.if.end36.i_crit_edge ], [ %spec.select226, %if.then25.i190 ]
  %count.addr.1115.i = phi i32 [ %count.addr.1.i, %if.end33.i.if.end36.i_crit_edge ], [ %spec.select227, %if.then25.i190 ]
  %sub37.i = add i32 %pos.addr.0118.i, -4
  %div107.i = lshr i32 %sub37.i, 1
  %call.i193 = tail call ptr @screen_pos(ptr noundef nonnull %11, i32 noundef %div107.i, i1 noundef zeroext %cmp.i) #8
  %add41.i = add nsw i32 %count.addr.1115.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add41.i)
  %tobool43.not122.i = icmp ult i32 %add41.i, 2
  br i1 %tobool43.not122.i, label %if.end36.i.if.end70_crit_edge, label %while.body.preheader.i195

if.end36.i.if.end70_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

while.body.preheader.i195:                        ; preds = %if.end36.i
  %div42108.i = lshr i32 %add41.i, 1
  %sub39.i = add i32 %div107.i, %20
  %rem.i194 = urem i32 %div107.i, %20
  %add40.i = sub i32 %sub39.i, %rem.i194
  br label %while.body.i197

while.body.i197:                                  ; preds = %if.end54.i.while.body.i197_crit_edge, %while.body.preheader.i195
  %pos.addr.1127.i = phi i32 [ %pos.addr.2.i, %if.end54.i.while.body.i197_crit_edge ], [ %add40.i, %while.body.preheader.i195 ]
  %col.0126.i = phi i32 [ %col.1.i199, %if.end54.i.while.body.i197_crit_edge ], [ %rem.i194, %while.body.preheader.i195 ]
  %con_buf16.0125.i = phi ptr [ %incdec.ptr45.i, %if.end54.i.while.body.i197_crit_edge ], [ %con_buf.addr.0119.i, %while.body.preheader.i195 ]
  %org.0124.i = phi ptr [ %org.1.i198, %if.end54.i.while.body.i197_crit_edge ], [ %call.i193, %while.body.preheader.i195 ]
  %count.addr.2123.i = phi i32 [ %dec46.i, %if.end54.i.while.body.i197_crit_edge ], [ %div42108.i, %while.body.preheader.i195 ]
  %incdec.ptr.i196 = getelementptr i16, ptr %org.0124.i, i32 1
  %call44.i = tail call zeroext i16 @vcs_scr_readw(ptr noundef nonnull %11, ptr noundef %org.0124.i) #8
  %incdec.ptr45.i = getelementptr i16, ptr %con_buf16.0125.i, i32 1
  %38 = ptrtoint ptr %con_buf16.0125.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %call44.i, ptr %con_buf16.0125.i, align 2
  %dec46.i = add nsw i32 %count.addr.2123.i, -1
  %inc47.i = add i32 %col.0126.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc47.i, i32 %20)
  %cmp48.i = icmp eq i32 %inc47.i, %20
  br i1 %cmp48.i, label %if.then50.i, label %while.body.i197.if.end54.i_crit_edge

while.body.i197.if.end54.i_crit_edge:             ; preds = %while.body.i197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.then50.i:                                      ; preds = %while.body.i197
  call void @__sanitizer_cov_trace_pc() #10
  %call52.i = tail call ptr @screen_pos(ptr noundef nonnull %11, i32 noundef %pos.addr.1127.i, i1 noundef zeroext %cmp.i) #8
  %add53.i = add i32 %pos.addr.1127.i, %20
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then50.i, %while.body.i197.if.end54.i_crit_edge
  %org.1.i198 = phi ptr [ %call52.i, %if.then50.i ], [ %incdec.ptr.i196, %while.body.i197.if.end54.i_crit_edge ]
  %col.1.i199 = phi i32 [ 0, %if.then50.i ], [ %inc47.i, %while.body.i197.if.end54.i_crit_edge ]
  %pos.addr.2.i = phi i32 [ %add53.i, %if.then50.i ], [ %pos.addr.1127.i, %while.body.i197.if.end54.i_crit_edge ]
  %tobool43.not.i = icmp eq i32 %dec46.i, 0
  br i1 %tobool43.not.i, label %if.end54.i.if.end70_crit_edge, label %if.end54.i.while.body.i197_crit_edge

if.end54.i.while.body.i197_crit_edge:             ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i197

if.end54.i.if.end70_crit_edge:                    ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.end70:                                         ; preds = %if.end54.i.if.end70_crit_edge, %if.end36.i.if.end70_crit_edge, %if.end33.i.if.end70_crit_edge, %if.end.i178.if.end70_crit_edge, %if.then62.if.end70_crit_edge, %do.body.i.if.end70_crit_edge, %if.end.i169.if.end70_crit_edge
  %skip.3 = phi i32 [ 0, %if.then62.if.end70_crit_edge ], [ %skip.0, %if.end33.i.if.end70_crit_edge ], [ %skip.1, %if.end36.i.if.end70_crit_edge ], [ 0, %if.end.i169.if.end70_crit_edge ], [ 0, %if.end.i178.if.end70_crit_edge ], [ %skip.1, %if.end54.i.if.end70_crit_edge ], [ 0, %do.body.i.if.end70_crit_edge ]
  %this_round.0 = phi i32 [ 0, %if.then62.if.end70_crit_edge ], [ %filled.1.i, %if.end33.i.if.end70_crit_edge ], [ %filled.1116.i, %if.end36.i.if.end70_crit_edge ], [ %23, %if.end.i169.if.end70_crit_edge ], [ %23, %if.end.i178.if.end70_crit_edge ], [ %filled.1116.i, %if.end54.i.if.end70_crit_edge ], [ %23, %do.body.i.if.end70_crit_edge ]
  tail call void @console_unlock() #8
  %add.ptr = getelementptr i8, ptr %2, i32 %skip.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %this_round.0)
  %cmp9.i.i = icmp slt i32 %this_round.0, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end70
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge, label %if.then27.i.i, !prof !46

land.rhs16.i.i.copy_to_user.exit.thread_crit_edge: ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit.thread

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %copy_to_user.exit.thread

if.then.i.i.i:                                    ; preds = %if.end70
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %this_round.0, i1 noundef zeroext true) #8
  tail call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 174) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %39 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0243, i32 %this_round.0, i32 -1226833920) #12, !srcloc !47
  %asmresult.i.i = extractvalue { i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %this_round.0) #8
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf.addr.0243, ptr noundef %add.ptr, i32 noundef %this_round.0) #8
  br label %copy_to_user.exit

copy_to_user.exit.thread:                         ; preds = %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit.thread_crit_edge
  tail call void @console_lock() #8
  br label %if.then73

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %this_round.0, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %this_round.0, %if.end.i.i.copy_to_user.exit_crit_edge ]
  tail call void @console_lock() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool72.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool72.not, label %cleanup, label %copy_to_user.exit.if.then73_crit_edge

copy_to_user.exit.if.then73_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73

if.then73:                                        ; preds = %copy_to_user.exit.if.then73_crit_edge, %copy_to_user.exit.thread
  %n.addr.0.i211 = phi i32 [ %this_round.0, %copy_to_user.exit.thread ], [ %n.addr.0.i, %copy_to_user.exit.if.then73_crit_edge ]
  %sub74 = add i32 %this_round.0, %read.0246
  %add = sub i32 %sub74, %n.addr.0.i211
  br label %while.end

cleanup:                                          ; preds = %copy_to_user.exit
  %add.ptr76 = getelementptr i8, ptr %buf.addr.0243, i32 %this_round.0
  %conv77 = zext i32 %this_round.0 to i64
  %add78 = add i64 %pos.0248, %conv77
  %add79 = add i32 %this_round.0, %read.0246
  %sub80 = sub i32 %spec.select, %this_round.0
  %tobool24.not = icmp eq i32 %sub80, 0
  br i1 %tobool24.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then73, %if.then54.while.end_crit_edge, %if.end34.while.end_crit_edge
  %read.2 = phi i32 [ %add, %if.then73 ], [ %add79, %cleanup.while.end_crit_edge ], [ %read.0246, %if.end34.while.end_crit_edge ], [ %read.0246, %if.then54.while.end_crit_edge ]
  %ret.2 = phi i32 [ -14, %if.then73 ], [ 0, %cleanup.while.end_crit_edge ], [ 0, %if.end34.while.end_crit_edge ], [ %call.i, %if.then54.while.end_crit_edge ]
  %conv83 = zext i32 %read.2 to i64
  %40 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ppos, align 8
  %add84 = add i64 %41, %conv83
  store i64 %add84, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read.2)
  %tobool85.not = icmp eq i32 %read.2, 0
  br i1 %tobool85.not, label %while.end.while.end.thread_crit_edge, label %while.end.unlock_out_crit_edge

while.end.unlock_out_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_out

while.end.while.end.thread_crit_edge:             ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.end.while.end.thread_crit_edge, %if.end23.while.end.thread_crit_edge
  %ret.2274 = phi i32 [ %ret.2, %while.end.while.end.thread_crit_edge ], [ 0, %if.end23.while.end.thread_crit_edge ]
  br label %unlock_out

unlock_out:                                       ; preds = %while.end.thread, %while.end.unlock_out_crit_edge, %while.end.thread275, %if.then30.unlock_out_crit_edge, %land.lhs.true.unlock_out_crit_edge, %if.end11.unlock_out_crit_edge, %vcs_vc.exit.unlock_out_crit_edge
  %ret.3 = phi i32 [ -22, %if.end11.unlock_out_crit_edge ], [ -22, %land.lhs.true.unlock_out_crit_edge ], [ -6, %vcs_vc.exit.unlock_out_crit_edge ], [ %retval.0.i206, %if.then30.unlock_out_crit_edge ], [ %ret.2274, %while.end.thread ], [ %read.2, %while.end.unlock_out_crit_edge ], [ %read.0246, %while.end.thread275 ]
  tail call void @console_unlock() #8
  tail call void @free_pages(i32 noundef %call1, i32 noundef 0) #8
  br label %cleanup88

cleanup88:                                        ; preds = %unlock_out, %entry.cleanup88_crit_edge
  %retval.0 = phi i32 [ %ret.3, %unlock_out ], [ -12, %entry.cleanup88_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcs_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #0 align 64 {
entry:
  %header.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_rdev.i, align 8
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup91_crit_edge

entry.cleanup91_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #8
  %4 = inttoptr i32 %call2 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup91_crit_edge, label %if.end5

if.end.cleanup91_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup91

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ppos, align 8
  tail call void @console_lock() #8
  %7 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i_rdev.i, align 8
  %and7 = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %and.i163 = and i32 %8, 63
  %call.i.i.i164 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %9 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end5.if.end.i_crit_edge

if.end5.if.end.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end5
  %call2.i = tail call i32 @is_console_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.rhs.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %10 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not.i = icmp eq i32 %10, 0
  br i1 %tobool4.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !43

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 187, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.end5.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %cmp.i = icmp eq i32 %and.i163, 0
  br i1 %cmp.i, label %if.then25.i, label %if.else.i

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %11 = load i32, ptr @fg_console, align 4
  br label %vcs_vc.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i = add nsw i32 %and.i163, -1
  br label %vcs_vc.exit

vcs_vc.exit:                                      ; preds = %if.else.i, %if.then25.i
  %currcons.0.ph.i = phi i32 [ %11, %if.then25.i ], [ %dec.i, %if.else.i ]
  %arrayidx.i = getelementptr [63 x %struct.vc], ptr @vc_cons, i32 0, i32 %currcons.0.ph.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %vcs_vc.exit.unlock_out_crit_edge, label %if.end12

vcs_vc.exit.unlock_out_crit_edge:                 ; preds = %vcs_vc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_out

if.end12:                                         ; preds = %vcs_vc.exit
  %call.i.i.i165 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %14 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i166 = icmp eq i32 %14, 0
  br i1 %tobool.not.i166, label %land.lhs.true.i169, label %if.end12.if.end.i173_crit_edge

if.end12.if.end.i173_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i173

land.lhs.true.i169:                               ; preds = %if.end12
  %call2.i167 = tail call i32 @is_console_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i167)
  %tobool3.not.i168 = icmp eq i32 %call2.i167, 0
  br i1 %tobool3.not.i168, label %land.rhs.i171, label %land.lhs.true.i169.if.end.i173_crit_edge

land.lhs.true.i169.if.end.i173_crit_edge:         ; preds = %land.lhs.true.i169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i173

land.rhs.i171:                                    ; preds = %land.lhs.true.i169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %15 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool4.not.i170 = icmp eq i32 %15, 0
  br i1 %tobool4.not.i170, label %do.end.i172, label %land.rhs.i171.if.end.i173_crit_edge, !prof !43

land.rhs.i171.if.end.i173_crit_edge:              ; preds = %land.rhs.i171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i173

do.end.i172:                                      ; preds = %land.rhs.i171
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 213, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i173

if.end.i173:                                      ; preds = %do.end.i172, %land.rhs.i171.if.end.i173_crit_edge, %land.lhs.true.i169.if.end.i173_crit_edge, %if.end12.if.end.i173_crit_edge
  %vc_rows.i = getelementptr inbounds %struct.vc_data, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %vc_rows.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vc_rows.i, align 4
  %vc_cols.i = getelementptr inbounds %struct.vc_data, ptr %13, i32 0, i32 4
  %18 = ptrtoint ptr %vc_cols.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vc_cols.i, align 4
  %mul.i = mul i32 %19, %17
  %mul30.i = shl i32 %mul.i, 1
  %add.i = add i32 %mul30.i, 4
  %retval.0.i = select i1 %tobool8.not, i32 %mul.i, i32 %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %if.end.i173.unlock_out_crit_edge, label %if.end16

if.end.i173.unlock_out_crit_edge:                 ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_out

if.end16:                                         ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp17 = icmp slt i64 %6, 0
  br i1 %cmp17, label %if.end16.unlock_out_crit_edge, label %lor.lhs.false

if.end16.unlock_out_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_out

lor.lhs.false:                                    ; preds = %if.end16
  %conv248 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %conv248)
  %cmp18 = icmp ugt i64 %6, %conv248
  br i1 %cmp18, label %lor.lhs.false.unlock_out_crit_edge, label %if.end21

lor.lhs.false.unlock_out_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_out

if.end21:                                         ; preds = %lor.lhs.false
  %conv22 = zext i32 %count to i64
  %sub = sub nsw i64 %conv248, %6
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv22)
  %cmp24 = icmp slt i64 %sub, %conv22
  %conv29 = trunc i64 %sub to i32
  %spec.select = select i1 %cmp24, i32 %conv29, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool31.not254 = icmp eq i32 %spec.select, 0
  br i1 %tobool31.not254, label %if.end21.unlock_out_crit_edge, label %while.body.lr.ph

if.end21.unlock_out_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_out

while.body.lr.ph:                                 ; preds = %if.end21
  %20 = getelementptr inbounds [4 x i8], ptr %header.i, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %pos.0258 = phi i64 [ %6, %while.body.lr.ph ], [ %pos.1, %cleanup.while.body_crit_edge ]
  %written.0257 = phi i32 [ 0, %while.body.lr.ph ], [ %written.1, %cleanup.while.body_crit_edge ]
  %count.addr.1256 = phi i32 [ %spec.select, %while.body.lr.ph ], [ %count.addr.2, %cleanup.while.body_crit_edge ]
  %buf.addr.0255 = phi ptr [ %buf, %while.body.lr.ph ], [ %buf.addr.1, %cleanup.while.body_crit_edge ]
  %21 = call i32 @llvm.umin.i32(i32 %count.addr.1256, i32 4096)
  call void @console_unlock() #8
  call void @__check_object_size(ptr noundef nonnull %4, i32 noundef %21, i1 noundef zeroext false) #8
  call void @__might_fault(ptr noundef nonnull @.str.11, i32 noundef 156) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %while.body.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

while.body.if.then11.i.i_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %while.body
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0255, i32 %21, i32 -1226833920) #12, !srcloc !48
  %asmresult.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !46

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef %21) #8
  %23 = call i32 @llvm.read_register.i32(metadata !33) #8
  %and.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !49
  %and.i.i.i.i = and i32 %25, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %4, ptr noundef %buf.addr.0255, i32 noundef %21) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #8, !srcloc !50
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %copy_from_user.exit, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !46

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %while.body.if.then11.i.i_crit_edge
  %res.0.i.i215 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ %21, %while.body.if.then11.i.i_crit_edge ], [ %21, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 %21, %res.0.i.i215
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %sub.i.i
  %26 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i215)
  call void @console_lock() #8
  %sub39 = sub i32 %21, %res.0.i.i215
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub39)
  %tobool40.not = icmp eq i32 %sub39, 0
  br i1 %tobool40.not, label %if.then41, label %if.then11.i.i.if.end46_crit_edge

if.then11.i.i.if.end46_crit_edge:                 ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

copy_from_user.exit:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @console_lock() #8
  br label %if.end46

if.then41:                                        ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.0257)
  %tobool42.not = icmp eq i32 %written.0257, 0
  br i1 %tobool42.not, label %if.then41.unlock_out_crit_edge, label %if.then41.while.end.thread_crit_edge

if.then41.while.end.thread_crit_edge:             ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.thread

if.then41.unlock_out_crit_edge:                   ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_out

if.end46:                                         ; preds = %copy_from_user.exit, %if.then11.i.i.if.end46_crit_edge
  %this_round.0 = phi i32 [ %sub39, %if.then11.i.i.if.end46_crit_edge ], [ %21, %copy_from_user.exit ]
  %call.i.i.i175 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @ignore_console_lock_warning, i32 noundef 4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ignore_console_lock_warning to i32))
  %27 = load volatile i32, ptr @ignore_console_lock_warning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i176 = icmp eq i32 %27, 0
  br i1 %tobool.not.i176, label %land.lhs.true.i179, label %if.end46.if.end.i186_crit_edge

if.end46.if.end.i186_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i186

land.lhs.true.i179:                               ; preds = %if.end46
  %call2.i177 = call i32 @is_console_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i177)
  %tobool3.not.i178 = icmp eq i32 %call2.i177, 0
  br i1 %tobool3.not.i178, label %land.rhs.i181, label %land.lhs.true.i179.if.end.i186_crit_edge

land.lhs.true.i179.if.end.i186_crit_edge:         ; preds = %land.lhs.true.i179
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i186

land.rhs.i181:                                    ; preds = %land.lhs.true.i179
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %28 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool4.not.i180 = icmp eq i32 %28, 0
  br i1 %tobool4.not.i180, label %do.end.i182, label %land.rhs.i181.if.end.i186_crit_edge, !prof !43

land.rhs.i181.if.end.i186_crit_edge:              ; preds = %land.rhs.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i186

do.end.i182:                                      ; preds = %land.rhs.i181
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 213, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i186

if.end.i186:                                      ; preds = %do.end.i182, %land.rhs.i181.if.end.i186_crit_edge, %land.lhs.true.i179.if.end.i186_crit_edge, %if.end46.if.end.i186_crit_edge
  %29 = ptrtoint ptr %vc_rows.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %vc_rows.i, align 4
  %31 = ptrtoint ptr %vc_cols.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %vc_cols.i, align 4
  %mul.i185 = mul i32 %32, %30
  %mul30.i188 = shl i32 %mul.i185, 1
  %add.i189 = add i32 %mul30.i188, 4
  %retval.0.i192 = select i1 %tobool8.not, i32 %mul.i185, i32 %add.i189
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i192)
  %cmp49 = icmp slt i32 %retval.0.i192, 0
  br i1 %cmp49, label %if.then51, label %if.end55

if.then51:                                        ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.0257)
  %tobool52.not = icmp eq i32 %written.0257, 0
  br i1 %tobool52.not, label %if.then51.unlock_out_crit_edge, label %if.then51.while.end.thread_crit_edge

if.then51.while.end.thread_crit_edge:             ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.thread

if.then51.unlock_out_crit_edge:                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_out

if.end55:                                         ; preds = %if.end.i186
  %conv56249 = zext i32 %retval.0.i192 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %pos.0258, i64 %conv56249)
  %cmp57.not = icmp slt i64 %pos.0258, %conv56249
  br i1 %cmp57.not, label %if.end60, label %if.end55.while.end_crit_edge

if.end55.while.end_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end60:                                         ; preds = %if.end55
  %conv61 = zext i32 %this_round.0 to i64
  %sub63 = sub i64 %conv56249, %pos.0258
  call void @__sanitizer_cov_trace_cmp8(i64 %sub63, i64 %conv61)
  %cmp64 = icmp slt i64 %sub63, %conv61
  %conv69 = trunc i64 %sub63 to i32
  %spec.select160 = select i1 %cmp64, i32 %conv69, i32 %this_round.0
  %conv76 = trunc i64 %pos.0258 to i32
  br i1 %tobool8.not, label %if.else, label %if.then72

if.then72:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv76)
  %cmp.i195 = icmp ult i32 %conv76, 4
  br i1 %cmp.i195, label %if.then.i196, label %if.then72.if.end6.i_crit_edge

if.then72.if.end6.i_crit_edge:                    ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then.i196:                                     ; preds = %if.then72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %header.i) #8
  %33 = ptrtoint ptr %header.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %header.i, align 4
  call void @getconsxy(ptr noundef nonnull %13, ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select160)
  %cmp2.not115.i = icmp eq i32 %spec.select160, 0
  br i1 %cmp2.not115.i, label %if.then.i196.while.end.i_crit_edge, label %while.body.preheader.i

if.then.i196.while.end.i_crit_edge:               ; preds = %if.then.i196
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.then.i196
  call void @__sanitizer_cov_trace_pc() #10
  %uglygep.i = getelementptr i8, ptr %header.i, i32 %conv76
  %34 = sub nuw nsw i32 3, %conv76
  %35 = add i32 %spec.select160, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv76)
  %36 = icmp eq i32 %conv76, 3
  %umin.i = call i32 @llvm.umin.i32(i32 %35, i32 %34) #8
  %37 = select i1 %36, i32 0, i32 %umin.i
  %38 = add nuw nsw i32 %37, 1
  %39 = call ptr @memcpy(ptr %uglygep.i, ptr %4, i32 %38)
  %40 = sub i32 %35, %37
  %uglygep132.i = getelementptr i8, ptr %4, i32 %38
  %41 = add nuw nsw i32 %38, %conv76
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.preheader.i, %if.then.i196.while.end.i_crit_edge
  %count.addr.0.lcssa.i = phi i32 [ 0, %if.then.i196.while.end.i_crit_edge ], [ %40, %while.body.preheader.i ]
  %pos.addr.0.lcssa.i = phi i32 [ %conv76, %if.then.i196.while.end.i_crit_edge ], [ %41, %while.body.preheader.i ]
  %con_buf.addr.0.lcssa.i = phi ptr [ %4, %if.then.i196.while.end.i_crit_edge ], [ %uglygep132.i, %while.body.preheader.i ]
  br i1 %cmp.i, label %while.end.i.if.end.i197_crit_edge, label %if.then3.i

while.end.i.if.end.i197_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i197

if.then3.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @putconsxy(ptr noundef nonnull %13, ptr noundef %20) #8
  br label %if.end.i197

if.end.i197:                                      ; preds = %if.then3.i, %while.end.i.if.end.i197_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %header.i) #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i197, %if.then72.if.end6.i_crit_edge
  %count.addr.1.i = phi i32 [ %count.addr.0.lcssa.i, %if.end.i197 ], [ %spec.select160, %if.then72.if.end6.i_crit_edge ]
  %pos.addr.1.i = phi i32 [ %pos.addr.0.lcssa.i, %if.end.i197 ], [ %conv76, %if.then72.if.end6.i_crit_edge ]
  %con_buf.addr.1.i = phi ptr [ %con_buf.addr.0.lcssa.i, %if.end.i197 ], [ %4, %if.then72.if.end6.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.1.i)
  %tobool7.not.i = icmp eq i32 %count.addr.1.i, 0
  br i1 %tobool7.not.i, label %if.end6.i.cleanup_crit_edge, label %if.end9.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9.i:                                        ; preds = %if.end6.i
  %sub.i = add i32 %pos.addr.1.i, -4
  %div107.i = lshr i32 %sub.i, 1
  %rem.i = urem i32 %div107.i, %32
  %call.i = call ptr @screen_pos(ptr noundef nonnull %13, i32 noundef %div107.i, i1 noundef zeroext %cmp.i) #8
  %and.i198 = and i32 %pos.addr.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i198)
  %tobool12.not.i = icmp eq i32 %and.i198, 0
  br i1 %tobool12.not.i, label %if.end9.i.if.end28.i_crit_edge, label %if.then13.i

if.end9.i.if.end28.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then13.i:                                      ; preds = %if.end9.i
  %dec14.i = add i32 %count.addr.1.i, -1
  %incdec.ptr15.i = getelementptr i8, ptr %con_buf.addr.1.i, i32 1
  %42 = ptrtoint ptr %con_buf.addr.1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %con_buf.addr.1.i, align 1
  %call16.i = call zeroext i16 @vcs_scr_readw(ptr noundef nonnull %13, ptr noundef %call.i) #8
  %conv.i.i = shl i16 %call16.i, 8
  %conv1.i.i = zext i8 %43 to i16
  %or.i.i = or i16 %conv.i.i, %conv1.i.i
  call void @vcs_scr_writew(ptr noundef nonnull %13, i16 noundef zeroext %or.i.i, ptr noundef %call.i) #8
  %inc19.i = add i32 %pos.addr.1.i, -3
  %inc20.i = add nuw i32 %rem.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc20.i, i32 %32)
  %cmp21.i = icmp eq i32 %inc20.i, %32
  br i1 %cmp21.i, label %if.then23.i, label %if.then13.if.end28_crit_edge.i

if.then13.if.end28_crit_edge.i:                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  %incdec.ptr18.i = getelementptr i16, ptr %call.i, i32 1
  %.pre.i = lshr i32 %inc19.i, 1
  br label %if.end28.i

if.then23.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  %div24109.i = lshr i32 %inc19.i, 1
  %call26.i = call ptr @screen_pos(ptr noundef nonnull %13, i32 noundef %div24109.i, i1 noundef zeroext %cmp.i) #8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then23.i, %if.then13.if.end28_crit_edge.i, %if.end9.i.if.end28.i_crit_edge
  %div29108.pre-phi.i = phi i32 [ %.pre.i, %if.then13.if.end28_crit_edge.i ], [ %div24109.i, %if.then23.i ], [ %div107.i, %if.end9.i.if.end28.i_crit_edge ]
  %count.addr.2.i = phi i32 [ %dec14.i, %if.then13.if.end28_crit_edge.i ], [ %dec14.i, %if.then23.i ], [ %count.addr.1.i, %if.end9.i.if.end28.i_crit_edge ]
  %org.0.i = phi ptr [ %incdec.ptr18.i, %if.then13.if.end28_crit_edge.i ], [ %call26.i, %if.then23.i ], [ %call.i, %if.end9.i.if.end28.i_crit_edge ]
  %col.0.i = phi i32 [ %inc20.i, %if.then13.if.end28_crit_edge.i ], [ 0, %if.then23.i ], [ %rem.i, %if.end9.i.if.end28.i_crit_edge ]
  %con_buf.addr.2.i = phi ptr [ %incdec.ptr15.i, %if.then13.if.end28_crit_edge.i ], [ %incdec.ptr15.i, %if.then23.i ], [ %con_buf.addr.1.i, %if.end9.i.if.end28.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.2.i)
  %cmp32122.i = icmp ugt i32 %count.addr.2.i, 1
  br i1 %cmp32122.i, label %while.body34.preheader.i, label %if.end28.i.while.end46.i_crit_edge

if.end28.i.while.end46.i_crit_edge:               ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end46.i

while.body34.preheader.i:                         ; preds = %if.end28.i
  %sub30.i = add i32 %div29108.pre-phi.i, %32
  %add.i199 = sub i32 %sub30.i, %col.0.i
  br label %while.body34.i

while.body34.i:                                   ; preds = %if.end45.i.while.body34.i_crit_edge, %while.body34.preheader.i
  %con_buf.addr.3127.i = phi ptr [ %add.ptr36.i, %if.end45.i.while.body34.i_crit_edge ], [ %con_buf.addr.2.i, %while.body34.preheader.i ]
  %pos.addr.3126.i = phi i32 [ %pos.addr.4.i, %if.end45.i.while.body34.i_crit_edge ], [ %add.i199, %while.body34.preheader.i ]
  %col.1125.i = phi i32 [ %col.2.i, %if.end45.i.while.body34.i_crit_edge ], [ %col.0.i, %while.body34.preheader.i ]
  %org.1124.i = phi ptr [ %org.2.i, %if.end45.i.while.body34.i_crit_edge ], [ %org.0.i, %while.body34.preheader.i ]
  %count.addr.3123.i = phi i32 [ %sub37.i, %if.end45.i.while.body34.i_crit_edge ], [ %count.addr.2.i, %while.body34.preheader.i ]
  %44 = ptrtoint ptr %con_buf.addr.3127.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %con_buf.addr.3127.i, align 1
  %incdec.ptr35.i = getelementptr i16, ptr %org.1124.i, i32 1
  call void @vcs_scr_writew(ptr noundef nonnull %13, i16 noundef zeroext %45, ptr noundef %org.1124.i) #8
  %add.ptr36.i = getelementptr i8, ptr %con_buf.addr.3127.i, i32 2
  %sub37.i = add i32 %count.addr.3123.i, -2
  %inc38.i = add i32 %col.1125.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc38.i, i32 %32)
  %cmp39.i = icmp eq i32 %inc38.i, %32
  br i1 %cmp39.i, label %if.then41.i, label %while.body34.i.if.end45.i_crit_edge

while.body34.i.if.end45.i_crit_edge:              ; preds = %while.body34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then41.i:                                      ; preds = %while.body34.i
  call void @__sanitizer_cov_trace_pc() #10
  %call43.i = call ptr @screen_pos(ptr noundef nonnull %13, i32 noundef %pos.addr.3126.i, i1 noundef zeroext %cmp.i) #8
  %add44.i = add i32 %pos.addr.3126.i, %32
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then41.i, %while.body34.i.if.end45.i_crit_edge
  %org.2.i = phi ptr [ %call43.i, %if.then41.i ], [ %incdec.ptr35.i, %while.body34.i.if.end45.i_crit_edge ]
  %col.2.i = phi i32 [ 0, %if.then41.i ], [ %inc38.i, %while.body34.i.if.end45.i_crit_edge ]
  %pos.addr.4.i = phi i32 [ %add44.i, %if.then41.i ], [ %pos.addr.3126.i, %while.body34.i.if.end45.i_crit_edge ]
  %cmp32.i = icmp ugt i32 %sub37.i, 1
  br i1 %cmp32.i, label %if.end45.i.while.body34.i_crit_edge, label %if.end45.i.while.end46.i_crit_edge

if.end45.i.while.end46.i_crit_edge:               ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end46.i

if.end45.i.while.body34.i_crit_edge:              ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body34.i

while.end46.i:                                    ; preds = %if.end45.i.while.end46.i_crit_edge, %if.end28.i.while.end46.i_crit_edge
  %count.addr.3.lcssa.i = phi i32 [ %count.addr.2.i, %if.end28.i.while.end46.i_crit_edge ], [ %sub37.i, %if.end45.i.while.end46.i_crit_edge ]
  %org.1.lcssa.i = phi ptr [ %org.0.i, %if.end28.i.while.end46.i_crit_edge ], [ %org.2.i, %if.end45.i.while.end46.i_crit_edge ]
  %con_buf.addr.3.lcssa.i = phi ptr [ %con_buf.addr.2.i, %if.end28.i.while.end46.i_crit_edge ], [ %add.ptr36.i, %if.end45.i.while.end46.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.3.lcssa.i)
  %tobool47.not.i = icmp eq i32 %count.addr.3.lcssa.i, 0
  br i1 %tobool47.not.i, label %while.end46.i.if.end79_crit_edge, label %if.end49.i

while.end46.i.if.end79_crit_edge:                 ; preds = %while.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.end49.i:                                       ; preds = %while.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %con_buf.addr.3.lcssa.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %con_buf.addr.3.lcssa.i, align 1
  %call51.i = call zeroext i16 @vcs_scr_readw(ptr noundef nonnull %13, ptr noundef %org.1.lcssa.i) #8
  %conv.i110.i = zext i8 %47 to i16
  %or.i113.i = call i16 @llvm.fshl.i16(i16 %conv.i110.i, i16 %call51.i, i16 8) #8
  call void @vcs_scr_writew(ptr noundef nonnull %13, i16 noundef zeroext %or.i113.i, ptr noundef %org.1.lcssa.i) #8
  br label %if.end79

if.else:                                          ; preds = %if.end60
  %call.i202 = call ptr @screen_pos(ptr noundef nonnull %13, i32 noundef %conv76, i1 noundef zeroext %cmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select160)
  %cmp.not27.i = icmp eq i32 %spec.select160, 0
  br i1 %cmp.not27.i, label %if.else.if.end79_crit_edge, label %while.body.preheader.i206

if.else.if.end79_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

while.body.preheader.i206:                        ; preds = %if.else
  %sub.i203 = add i32 %32, %conv76
  %rem.i204 = urem i32 %conv76, %32
  %add.i205 = sub i32 %sub.i203, %rem.i204
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i210.while.body.i_crit_edge, %while.body.preheader.i206
  %con_buf.addr.032.i = phi ptr [ %incdec.ptr.i, %if.end.i210.while.body.i_crit_edge ], [ %4, %while.body.preheader.i206 ]
  %col.031.i = phi i32 [ %col.1.i, %if.end.i210.while.body.i_crit_edge ], [ %rem.i204, %while.body.preheader.i206 ]
  %org.030.i = phi ptr [ %org.1.i, %if.end.i210.while.body.i_crit_edge ], [ %call.i202, %while.body.preheader.i206 ]
  %pos.addr.029.i = phi i32 [ %pos.addr.1.i209, %if.end.i210.while.body.i_crit_edge ], [ %add.i205, %while.body.preheader.i206 ]
  %count.addr.028.i = phi i32 [ %dec.i207, %if.end.i210.while.body.i_crit_edge ], [ %spec.select160, %while.body.preheader.i206 ]
  %incdec.ptr.i = getelementptr i8, ptr %con_buf.addr.032.i, i32 1
  %48 = ptrtoint ptr %con_buf.addr.032.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %con_buf.addr.032.i, align 1
  %dec.i207 = add i32 %count.addr.028.i, -1
  %call1.i = call zeroext i16 @vcs_scr_readw(ptr noundef nonnull %13, ptr noundef %org.030.i) #8
  %50 = and i16 %call1.i, -256
  %conv2.i = zext i8 %49 to i16
  %or.i = or i16 %50, %conv2.i
  call void @vcs_scr_writew(ptr noundef nonnull %13, i16 noundef zeroext %or.i, ptr noundef %org.030.i) #8
  %incdec.ptr4.i = getelementptr i16, ptr %org.030.i, i32 1
  %inc.i = add i32 %col.031.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %32)
  %cmp5.i = icmp eq i32 %inc.i, %32
  br i1 %cmp5.i, label %if.then.i208, label %while.body.i.if.end.i210_crit_edge

while.body.i.if.end.i210_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i210

if.then.i208:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call8.i = call ptr @screen_pos(ptr noundef nonnull %13, i32 noundef %pos.addr.029.i, i1 noundef zeroext %cmp.i) #8
  %add9.i = add i32 %pos.addr.029.i, %32
  br label %if.end.i210

if.end.i210:                                      ; preds = %if.then.i208, %while.body.i.if.end.i210_crit_edge
  %pos.addr.1.i209 = phi i32 [ %add9.i, %if.then.i208 ], [ %pos.addr.029.i, %while.body.i.if.end.i210_crit_edge ]
  %org.1.i = phi ptr [ %call8.i, %if.then.i208 ], [ %incdec.ptr4.i, %while.body.i.if.end.i210_crit_edge ]
  %col.1.i = phi i32 [ 0, %if.then.i208 ], [ %inc.i, %while.body.i.if.end.i210_crit_edge ]
  %cmp.not.i = icmp eq i32 %dec.i207, 0
  br i1 %cmp.not.i, label %if.end.i210.if.end79_crit_edge, label %if.end.i210.while.body.i_crit_edge

if.end.i210.while.body.i_crit_edge:               ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end.i210.if.end79_crit_edge:                   ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.end79:                                         ; preds = %if.end.i210.if.end79_crit_edge, %if.else.if.end79_crit_edge, %if.end49.i, %while.end46.i.if.end79_crit_edge
  %org0.2 = phi ptr [ %call.i, %while.end46.i.if.end79_crit_edge ], [ %call.i, %if.end49.i ], [ %call.i202, %if.else.if.end79_crit_edge ], [ %call.i202, %if.end.i210.if.end79_crit_edge ]
  %org.0 = phi ptr [ %org.1.lcssa.i, %while.end46.i.if.end79_crit_edge ], [ %org.1.lcssa.i, %if.end49.i ], [ %call.i202, %if.else.if.end79_crit_edge ], [ %org.1.i, %if.end.i210.if.end79_crit_edge ]
  %tobool83.not = icmp eq ptr %org.0, null
  br i1 %tobool83.not, label %if.end79.cleanup_crit_edge, label %if.then84

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %org0.2 to i32
  %sub.ptr.lhs.cast = ptrtoint ptr %org.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %51
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 1
  call void @update_region(ptr noundef nonnull %13, i32 noundef %51, i32 noundef %sub.ptr.div) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %if.end79.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge
  %conv81.pn = zext i32 %spec.select160 to i64
  %pos.1 = add i64 %pos.0258, %conv81.pn
  %written.1 = add i32 %spec.select160, %written.0257
  %count.addr.2 = sub i32 %count.addr.1256, %spec.select160
  %buf.addr.1 = getelementptr i8, ptr %buf.addr.0255, i32 %spec.select160
  %tobool31.not = icmp eq i32 %count.addr.2, 0
  br i1 %tobool31.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end.thread:                                 ; preds = %if.then51.while.end.thread_crit_edge, %if.then41.while.end.thread_crit_edge
  %conv86245 = zext i32 %written.0257 to i64
  %52 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %ppos, align 8
  %add87246 = add i64 %53, %conv86245
  store i64 %add87246, ptr %ppos, align 8
  br label %if.then89

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end55.while.end_crit_edge
  %written.0.lcssa = phi i32 [ %written.1, %cleanup.while.end_crit_edge ], [ %written.0257, %if.end55.while.end_crit_edge ]
  %conv86 = zext i32 %written.0.lcssa to i64
  %54 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %ppos, align 8
  %add87 = add i64 %55, %conv86
  store i64 %add87, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %written.0.lcssa)
  %tobool88.not = icmp eq i32 %written.0.lcssa, 0
  br i1 %tobool88.not, label %while.end.unlock_out_crit_edge, label %while.end.if.then89_crit_edge

while.end.if.then89_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then89

while.end.unlock_out_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock_out

if.then89:                                        ; preds = %while.end.if.then89_crit_edge, %while.end.thread
  %written.0253 = phi i32 [ %written.0257, %while.end.thread ], [ %written.0.lcssa, %while.end.if.then89_crit_edge ]
  call void @vcs_scr_updated(ptr noundef nonnull %13) #8
  br label %unlock_out

unlock_out:                                       ; preds = %if.then89, %while.end.unlock_out_crit_edge, %if.then51.unlock_out_crit_edge, %if.then41.unlock_out_crit_edge, %if.end21.unlock_out_crit_edge, %lor.lhs.false.unlock_out_crit_edge, %if.end16.unlock_out_crit_edge, %if.end.i173.unlock_out_crit_edge, %vcs_vc.exit.unlock_out_crit_edge
  %ret.1 = phi i32 [ -22, %if.end16.unlock_out_crit_edge ], [ -22, %lor.lhs.false.unlock_out_crit_edge ], [ %written.0253, %if.then89 ], [ 0, %while.end.unlock_out_crit_edge ], [ -6, %vcs_vc.exit.unlock_out_crit_edge ], [ %retval.0.i, %if.end.i173.unlock_out_crit_edge ], [ -14, %if.then41.unlock_out_crit_edge ], [ %retval.0.i192, %if.then51.unlock_out_crit_edge ], [ 0, %if.end21.unlock_out_crit_edge ]
  call void @console_unlock() #8
  call void @free_pages(i32 noundef %call2, i32 noundef 0) #8
  br label %cleanup91

cleanup91:                                        ; preds = %unlock_out, %if.end.cleanup91_crit_edge, %entry.cleanup91_crit_edge
  %retval.0 = phi i32 [ %ret.1, %unlock_out ], [ -95, %entry.cleanup91_crit_edge ], [ -12, %if.end.cleanup91_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcs_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @vcs_poll_data_get(ptr noundef %file)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %waitq = getelementptr inbounds %struct.vcs_poll_data, ptr %call, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.then.poll_wait.exit_crit_edge, label %land.lhs.true.i

if.then.poll_wait.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %if.then
  %0 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  %tobool3.not.i = icmp eq ptr %waitq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %1(ptr noundef %file, ptr noundef nonnull %waitq, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %if.then.poll_wait.exit_crit_edge
  %event = getelementptr inbounds %struct.vcs_poll_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %4 = icmp ult i32 %3, 5
  br i1 %4, label %switch.lookup, label %poll_wait.exit.if.end_crit_edge

poll_wait.exit.if.end_crit_edge:                  ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

switch.lookup:                                    ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.vcs_poll, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %poll_wait.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 333, %poll_wait.exit.if.end_crit_edge ], [ 333, %entry.if.end_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcs_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and = and i32 %1, 63
  %2 = and i32 %1, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %2)
  %.not = icmp eq i32 %2, 192
  br i1 %.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @console_lock() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.end.if.end14_crit_edge, label %land.lhs.true10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

land.lhs.true10:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nsw i32 %and, -1
  %call11 = tail call i32 @vc_cons_allocated(i32 noundef %sub) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %spec.select = select i1 %tobool12.not, i32 -6, i32 0
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true10, %if.end.if.end14_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.if.end14_crit_edge ], [ %spec.select, %land.lhs.true10 ]
  tail call void @console_unlock() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end14 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcs_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @unregister_vt_notifier(ptr noundef nonnull %1) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcs_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool1.not = icmp eq i32 %on, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call = tail call fastcc ptr @vcs_poll_data_get(ptr noundef %file)
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %entry.if.end6_crit_edge
  %poll.0 = phi ptr [ %1, %entry.if.end6_crit_edge ], [ %call, %if.end.if.end6_crit_edge ]
  %fasync = getelementptr inbounds %struct.vcs_poll_data, ptr %poll.0, i32 0, i32 4
  %call7 = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef %fasync) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ 0, %if.then.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @fixed_size_llseek(ptr noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_console_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_uniscr_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vc_uniscr_copy_line(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @screen_pos(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vcs_scr_readw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @getconsxy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcs_scr_updated(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @putconsxy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcs_scr_writew(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vcs_poll_data_get(ptr noundef %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 76) #13
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i, align 8
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i_rdev.i, align 8
  %and = and i32 %6, 63
  %cons_num = getelementptr inbounds %struct.vcs_poll_data, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %cons_num to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %cons_num, align 4
  %waitq = getelementptr inbounds %struct.vcs_poll_data, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.12, ptr noundef nonnull @vcs_poll_data_get.__key) #8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vcs_notifier, ptr %call7.i.i, align 8
  %event = getelementptr inbounds %struct.vcs_poll_data, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %event, align 8
  %call7 = tail call i32 @register_vt_notifier(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 0
  br i1 %cmp.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %f_lock = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %f_lock) #8
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 4
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %if.end15.thread, label %if.then18

if.end15.thread:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %private_data, align 4
  tail call void @_raw_spin_unlock(ptr noundef %f_lock) #8
  br label %cleanup

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %f_lock) #8
  %call.i = tail call i32 @unregister_vt_notifier(ptr noundef nonnull %call7.i.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end15.thread, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then8 ], [ %1, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %11, %if.then18 ], [ %call7.i.i, %if.end15.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vcs_notifier(ptr noundef %nb, i32 noundef %code, ptr nocapture noundef readonly %_param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_param, align 4
  %cons_num = getelementptr inbounds %struct.vcs_poll_data, ptr %nb, i32 0, i32 1
  %2 = ptrtoint ptr %cons_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cons_num, align 4
  %4 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %code, label %entry.cleanup_crit_edge [
    i32 4, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %fa_band.0 = phi i32 [ 6, %sw.bb2 ], [ 5, %entry.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fg_console to i32))
  %5 = load i32, ptr @fg_console, align 4
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %3, -1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %currcons.0 = phi i32 [ %5, %if.then ], [ %dec, %if.else ]
  %vc_num = getelementptr inbounds %struct.vc_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vc_num to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vc_num, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %currcons.0, i32 %conv)
  %cmp3.not = icmp eq i32 %currcons.0, %conv
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %event = getelementptr inbounds %struct.vcs_poll_data, ptr %nb, i32 0, i32 2
  %8 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %code, ptr %event, align 4
  %waitq = getelementptr inbounds %struct.vcs_poll_data, ptr %nb, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  %fasync = getelementptr inbounds %struct.vcs_poll_data, ptr %nb, i32 0, i32 4
  tail call void @kill_fasync(ptr noundef %fasync, i32 noundef 29, i32 noundef %fa_band.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_vt_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_vt_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vc_cons_allocated(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold noreturn nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !28, !30, !32}
!llvm.named.register.sp = !{!33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/tty/vt/vc_screen.c", i32 787, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/tty/vt/vc_screen.c", i32 789, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/tty/vt/vc_screen.c", i32 791, i32 9}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/tty/vt/vc_screen.c", i32 805, i32 33}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/tty/vt/vc_screen.c", i32 806, i32 9}
!10 = !{ptr @vcs_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/tty/vt/vc_screen.c", i32 807, i32 13}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/tty/vt/vc_screen.c", i32 810, i32 60}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/tty/vt/vc_screen.c", i32 811, i32 61}
!17 = !{ptr @vc_class, !18, !"vc_class", i1 false, i1 false}
!18 = !{!"../drivers/tty/vt/vc_screen.c", i32 782, i32 22}
!19 = !{ptr @vcs_fops, !20, !"vcs_fops", i1 false, i1 false}
!20 = !{!"../drivers/tty/vt/vc_screen.c", i32 772, i32 37}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/tty/vt/vc_screen.c", i32 187, i32 2}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!25 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!30 = !{ptr @vcs_poll_data_get.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/tty/vt/vc_screen.c", i32 137, i32 2}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{!"sp"}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.peeled.count", i32 1}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2152204567, i64 2152204592}
!48 = !{i64 2152203886, i64 2152203911}
!49 = !{i64 4699441}
!50 = !{i64 4699638}
!51 = !{i64 2152184871}
