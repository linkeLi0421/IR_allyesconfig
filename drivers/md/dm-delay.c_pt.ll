; ModuleID = '/llk/IR_all_yes/drivers/md/dm-delay.c_pt.bc'
source_filename = "../drivers/md/dm-delay.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_type = type { i64, ptr, ptr, [3 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }
%struct.delay_c = type { %struct.timer_list, %struct.mutex, ptr, %struct.work_struct, %struct.list_head, %struct.atomic_t, %struct.delay_class, %struct.delay_class, %struct.delay_class, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delay_class = type { ptr, i64, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.dm_delay_info = type { ptr, ptr, %struct.list_head, i32 }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }

@delay_target = internal global { %struct.target_type, [40 x i8] } { %struct.target_type { i64 32, ptr @.str, ptr null, [3 x i32] [i32 1, i32 2, i32 1], ptr @delay_ctr, ptr @delay_dtr, ptr @delay_map, ptr null, ptr null, ptr null, ptr null, ptr @delay_presuspend, ptr null, ptr null, ptr null, ptr @delay_resume, ptr @delay_status, ptr null, ptr null, ptr null, ptr null, ptr @delay_iterate_devices, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_dm_delay__269_392_dm_delay_init6 = internal global ptr @dm_delay_init, section ".initcall6.init", align 4
@__exitcall_dm_delay_exit = internal global ptr @dm_delay_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description270 = internal constant [48 x i8] c"dm_delay.description=device-mapper delay target\00", section ".modinfo", align 1
@__UNIQUE_ID_author271 = internal constant [59 x i8] c"dm_delay.author=Heinz Mauelshagen <mauelshagen@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file272 = internal constant [34 x i8] c"dm_delay.file=drivers/md/dm-delay\00", section ".modinfo", align 1
@__UNIQUE_ID_license273 = internal constant [21 x i8] c"dm_delay.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"delay\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Requires exactly 3, 6 or 9 arguments\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot allocate context\00", [40 x i8] zeroinitializer }, align 32
@delay_ctr.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&dc->delay_timer)\00", [45 x i8] zeroinitializer }, align 32
@delay_ctr.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&dc->flush_expired_bios)\00", [53 x i8] zeroinitializer }, align 32
@delay_ctr.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dc->timer_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kdelayd\00", [24 x i8] zeroinitializer }, align 32
@delay_ctr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013device-mapper: delay: Couldn't start kdelayd\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"delay_ctr\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/md/dm-delay.c\00", [42 x i8] zeroinitializer }, align 32
@delay_ctr._entry_ptr = internal global ptr @delay_ctr._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@delayed_bios_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @delayed_bios_lock, i64 52), ptr getelementptr (i8, ptr @delayed_bios_lock, i64 52) }, ptr @delayed_bios_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"delayed_bios_lock.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"delayed_bios_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%llu%c\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid device sector\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%u%c\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Invalid delay\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device lookup failed\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u %u %u\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s %llu %u\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@dm_delay_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.11, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013device-mapper: delay: register failed %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dm_delay_init\00", [18 x i8] zeroinitializer }, align 32
@dm_delay_init._entry_ptr = internal global ptr @dm_delay_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 6, i64 9]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"delay_target\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 356, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 357, i32 15 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 179, i32 15 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 185, i32 15 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 190, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 191, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 193, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 226, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 229, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"delayed_bios_lock\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 49, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 145, i32 22 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 146, i32 15 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 151, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 152, i32 15 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 158, i32 15 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 315, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 319, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 321, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [25 x i8] c"../drivers/md/dm-delay.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 376, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author271, ptr @__UNIQUE_ID_description270, ptr @__UNIQUE_ID_file272, ptr @__UNIQUE_ID_license273, ptr @__exitcall_dm_delay_exit, ptr @__initcall__kmod_dm_delay__269_392_dm_delay_init6, ptr @delay_ctr._entry, ptr @delay_ctr._entry_ptr, ptr @dm_delay_exit, ptr @dm_delay_init._entry, ptr @dm_delay_init._entry_ptr, ptr @delay_target, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @delay_ctr.__key, ptr @.str.3, ptr @delay_ctr.__key.4, ptr @.str.5, ptr @delay_ctr.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @delayed_bios_lock, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_target to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_ctr.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_ctr.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_ctr.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delay_ctr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @delayed_bios_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_delay_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dm_delay_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dm_unregister_target(ptr noundef nonnull @delay_target) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_delay_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dm_register_target(ptr noundef nonnull @delay_target) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delay_ctr(ptr noundef %ti, i32 noundef %argc, ptr nocapture noundef readonly %argv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %argc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %argc, label %if.then [
    i32 3, label %entry.if.end_crit_edge
    i32 6, label %entry.if.end_crit_edge112
    i32 9, label %entry.if.end_crit_edge113
  ]

entry.if.end_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %error = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %1 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.1, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge112, %entry.if.end_crit_edge113
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 280) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %error5 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %3 = ptrtoint ptr %error5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %error5, align 8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %private, align 4
  tail call void @init_timer_key(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @handle_delayed_timer, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @delay_ctr.__key) #8
  %flush_expired_bios = getelementptr inbounds %struct.delay_c, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_work(ptr noundef %flush_expired_bios, i32 noundef 0) #8
  %5 = ptrtoint ptr %flush_expired_bios to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %flush_expired_bios, align 8
  %lockdep_map = getelementptr inbounds %struct.delay_c, ptr %call7.i.i, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @delay_ctr.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry11 = getelementptr inbounds %struct.delay_c, ptr %call7.i.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.delay_c, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry11, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.delay_c, ptr %call7.i.i, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @flush_expired_bios, ptr %func, align 4
  %delayed_bios = getelementptr inbounds %struct.delay_c, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %delayed_bios to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %delayed_bios, ptr %delayed_bios, align 4
  %prev.i111 = getelementptr inbounds %struct.delay_c, ptr %call7.i.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i111 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %delayed_bios, ptr %prev.i111, align 8
  %timer_lock = getelementptr inbounds %struct.delay_c, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %timer_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @delay_ctr.__key.6) #8
  %may_delay = getelementptr inbounds %struct.delay_c, ptr %call7.i.i, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %may_delay, i32 noundef 4) #8
  %11 = ptrtoint ptr %may_delay to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 1, ptr %may_delay, align 4
  %argc18 = getelementptr inbounds %struct.delay_c, ptr %call7.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %argc18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %argc, ptr %argc18, align 8
  %read = getelementptr inbounds %struct.delay_c, ptr %call7.i.i, i32 0, i32 6
  %call19 = tail call fastcc i32 @delay_class_ctr(ptr noundef %ti, ptr noundef %read, ptr noundef %argv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end6.bad_crit_edge

if.end6.bad_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad

if.end22:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %argc)
  %cmp23 = icmp eq i32 %argc, 3
  %write = getelementptr inbounds %struct.delay_c, ptr %call7.i.i, i32 0, i32 7
  br i1 %cmp23, label %if.then24, label %if.end33

if.then24:                                        ; preds = %if.end22
  %call25 = tail call fastcc i32 @delay_class_ctr(ptr noundef %ti, ptr noundef %write, ptr noundef %argv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.then24.bad_crit_edge

if.then24.bad_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad

if.end28:                                         ; preds = %if.then24
  %flush = getelementptr inbounds %struct.delay_c, ptr %call7.i.i, i32 0, i32 8
  %call29 = tail call fastcc i32 @delay_class_ctr(ptr noundef %ti, ptr noundef %flush, ptr noundef %argv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.out_crit_edge, label %if.end28.bad_crit_edge

if.end28.bad_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end33:                                         ; preds = %if.end22
  %add.ptr = getelementptr ptr, ptr %argv, i32 3
  %call35 = tail call fastcc i32 @delay_class_ctr(ptr noundef %ti, ptr noundef %write, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.bad_crit_edge

if.end33.bad_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %argc)
  %cmp39 = icmp eq i32 %argc, 6
  %flush41 = getelementptr inbounds %struct.delay_c, ptr %call7.i.i, i32 0, i32 8
  br i1 %cmp39, label %if.then40, label %if.end47

if.then40:                                        ; preds = %if.end38
  %call43 = tail call fastcc i32 @delay_class_ctr(ptr noundef %ti, ptr noundef %flush41, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then40.out_crit_edge, label %if.then40.bad_crit_edge

if.then40.bad_crit_edge:                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad

if.then40.out_crit_edge:                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end47:                                         ; preds = %if.end38
  %add.ptr49 = getelementptr ptr, ptr %argv, i32 6
  %call50 = tail call fastcc i32 @delay_class_ctr(ptr noundef %ti, ptr noundef %flush41, ptr noundef %add.ptr49)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end47.out_crit_edge, label %if.end47.bad_crit_edge

if.end47.bad_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %bad

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %if.end47.out_crit_edge, %if.then40.out_crit_edge, %if.end28.out_crit_edge
  %call54 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.8, i32 noundef 8, i32 noundef 0) #8
  %kdelayd_wq = getelementptr inbounds %struct.delay_c, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %kdelayd_wq to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call54, ptr %kdelayd_wq, align 4
  %tobool56.not = icmp eq ptr %call54, null
  br i1 %tobool56.not, label %if.then57, label %if.end62

if.then57:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %bad

if.end62:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  %num_flush_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 5
  %14 = ptrtoint ptr %num_flush_bios to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %num_flush_bios, align 4
  %num_discard_bios = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 6
  %15 = ptrtoint ptr %num_discard_bios to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %num_discard_bios, align 8
  %per_io_data_size = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 10
  %16 = ptrtoint ptr %per_io_data_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 20, ptr %per_io_data_size, align 8
  br label %cleanup

bad:                                              ; preds = %if.then57, %if.end47.bad_crit_edge, %if.then40.bad_crit_edge, %if.end33.bad_crit_edge, %if.end28.bad_crit_edge, %if.then24.bad_crit_edge, %if.end6.bad_crit_edge
  %ret.0 = phi i32 [ %call19, %if.end6.bad_crit_edge ], [ %call25, %if.then24.bad_crit_edge ], [ %call29, %if.end28.bad_crit_edge ], [ -22, %if.then57 ], [ %call35, %if.end33.bad_crit_edge ], [ %call43, %if.then40.bad_crit_edge ], [ %call50, %if.end47.bad_crit_edge ]
  tail call void @delay_dtr(ptr noundef %ti)
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end62, %if.then4, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %ret.0, %bad ], [ 0, %if.end62 ], [ -12, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delay_dtr(ptr noundef %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %kdelayd_wq = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %kdelayd_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kdelayd_wq, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @destroy_workqueue(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %read = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef nonnull %5) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %write = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.end6.if.end12_crit_edge, label %if.then9

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef nonnull %7) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end6.if.end12_crit_edge
  %flush = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %flush, align 8
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.end12.if.end18_crit_edge, label %if.then15

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dm_put_device(ptr noundef %ti, ptr noundef nonnull %9) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12.if.end18_crit_edge
  %timer_lock = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 1
  tail call void @mutex_destroy(ptr noundef %timer_lock) #8
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delay_map(ptr nocapture noundef readonly %ti, ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 20) #8
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %2 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bi_opf, align 8
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else7, label %if.then

if.then:                                          ; preds = %entry
  %4 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then6, !prof !70

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %flush = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 8
  br label %if.end8

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %write = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 7
  br label %if.end8

if.else7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 6
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.else, %if.then6
  %c.0 = phi ptr [ %flush, %if.then6 ], [ %write, %if.else ], [ %read, %if.else7 ]
  %class = getelementptr inbounds %struct.dm_delay_info, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %c.0, ptr %class, align 4
  %6 = ptrtoint ptr %c.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %c.0, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 3
  %10 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %11, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 1
  %12 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %13, %9
  br i1 %cmp.not.i, label %if.end8.bio_set_dev.exit_crit_edge, label %if.then.i

if.end8.bio_set_dev.exit_crit_edge:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i8.i = and i16 %11, -2177
  %14 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end8.bio_set_dev.exit_crit_edge
  %15 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %bio) #8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bi_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %17)
  %tobool9.not = icmp ult i32 %17, 512
  br i1 %tobool9.not, label %bio_set_dev.exit.if.end14_crit_edge, label %if.then10

bio_set_dev.exit.if.end14_crit_edge:              ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %start = getelementptr inbounds %struct.delay_class, ptr %c.0, i32 0, i32 1
  %18 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %start, align 8
  %20 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bi_iter, align 8
  %begin = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 2
  %22 = ptrtoint ptr %begin to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %begin, align 8
  %sub = add i64 %21, %19
  %add = sub i64 %sub, %23
  store i64 %add, ptr %bi_iter, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %bio_set_dev.exit.if.end14_crit_edge
  %delay.i = getelementptr inbounds %struct.delay_class, ptr %c.0, i32 0, i32 2
  %24 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end14.delay_bio.exit_crit_edge, label %lor.lhs.false.i

if.end14.delay_bio.exit_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %delay_bio.exit

lor.lhs.false.i:                                  ; preds = %if.end14
  %may_delay.i = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %may_delay.i, i32 noundef 4) #8
  %26 = ptrtoint ptr %may_delay.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %may_delay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool1.not.i = icmp eq i32 %27, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.delay_bio.exit_crit_edge, label %if.end.i

lor.lhs.false.i.delay_bio.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %delay_bio.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call2.i = tail call ptr @dm_per_bio_data(ptr noundef %bio, i32 noundef 20) #8
  %28 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %1, ptr %call2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %30 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay.i, align 8
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %31) #8
  %add.i = add i32 %call2.i.i, %29
  %expires5.i = getelementptr inbounds %struct.dm_delay_info, ptr %call2.i, i32 0, i32 3
  %32 = ptrtoint ptr %expires5.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add.i, ptr %expires5.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @delayed_bios_lock, i32 noundef 0) #8
  %ops.i = getelementptr inbounds %struct.delay_class, ptr %c.0, i32 0, i32 3
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ops.i, align 4
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %ops.i, align 4
  %list.i = getelementptr inbounds %struct.dm_delay_info, ptr %call2.i, i32 0, i32 2
  %delayed_bios.i = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 4, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %call.i.i14.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %36, ptr noundef %delayed_bios.i) #8
  br i1 %call.i.i14.i, label %if.end.i.i.i, label %if.end.i.list_add_tail.exit.i_crit_edge

if.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %list.i, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %delayed_bios.i, ptr %list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dm_delay_info, ptr %call2.i, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %list.i, ptr %36, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_add_tail.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @delayed_bios_lock) #8
  %timer_lock.i.i = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %timer_lock.i.i, i32 noundef 0) #8
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.not.i.i, label %list_add_tail.exit.i.if.then.i16.i_crit_edge, label %lor.lhs.false.i.i

list_add_tail.exit.i.if.then.i16.i_crit_edge:     ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i16.i

lor.lhs.false.i.i:                                ; preds = %list_add_tail.exit.i
  %expires2.i.i = getelementptr inbounds %struct.timer_list, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %expires2.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %expires2.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %add.i)
  %cmp.i15.i = icmp ugt i32 %44, %add.i
  br i1 %cmp.i15.i, label %lor.lhs.false.i.i.if.then.i16.i_crit_edge, label %lor.lhs.false.i.i.queue_timeout.exit.i_crit_edge

lor.lhs.false.i.i.queue_timeout.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %queue_timeout.exit.i

lor.lhs.false.i.i.if.then.i16.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i16.i

if.then.i16.i:                                    ; preds = %lor.lhs.false.i.i.if.then.i16.i_crit_edge, %list_add_tail.exit.i.if.then.i16.i_crit_edge
  %call4.i.i = tail call i32 @mod_timer(ptr noundef %1, i32 noundef %add.i) #8
  br label %queue_timeout.exit.i

queue_timeout.exit.i:                             ; preds = %if.then.i16.i, %lor.lhs.false.i.i.queue_timeout.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %timer_lock.i.i) #8
  br label %delay_bio.exit

delay_bio.exit:                                   ; preds = %queue_timeout.exit.i, %lor.lhs.false.i.delay_bio.exit_crit_edge, %if.end14.delay_bio.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %queue_timeout.exit.i ], [ 1, %lor.lhs.false.i.delay_bio.exit_crit_edge ], [ 1, %if.end14.delay_bio.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delay_presuspend(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %may_delay = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %may_delay, i32 noundef 4) #8
  %2 = ptrtoint ptr %may_delay to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %may_delay, align 4
  %call = tail call i32 @del_timer_sync(ptr noundef %1) #8
  %call1 = tail call fastcc ptr @flush_delayed_bios(ptr noundef %1, i32 noundef 1)
  %tobool.not5.i = icmp eq ptr %call1, null
  br i1 %tobool.not5.i, label %entry.flush_bios.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.flush_bios.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_bios.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %bio.addr.06.i = phi ptr [ %4, %while.body.i.while.body.i_crit_edge ], [ %call1, %entry.while.body.i_crit_edge ]
  %3 = ptrtoint ptr %bio.addr.06.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bio.addr.06.i, align 8
  store ptr null, ptr %bio.addr.06.i, align 8
  tail call void @submit_bio_noacct(ptr noundef nonnull %bio.addr.06.i) #8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %while.body.i.flush_bios.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.flush_bios.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_bios.exit

flush_bios.exit:                                  ; preds = %while.body.i.flush_bios.exit_crit_edge, %entry.flush_bios.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delay_resume(ptr nocapture noundef readonly %ti) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %may_delay = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %may_delay, i32 noundef 4) #8
  %2 = ptrtoint ptr %may_delay to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %may_delay, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @delay_status(ptr nocapture noundef readonly %ti, i32 noundef %type, i32 noundef %status_flags, ptr noundef %result, i32 noundef %maxlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb73
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp = icmp eq i32 %maxlen, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %cond.false

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

cond.false:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %ops = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 6, i32 3
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ops, align 4
  %ops1 = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 7, i32 3
  %5 = ptrtoint ptr %ops1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ops1, align 4
  %ops2 = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 8, i32 3
  %7 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ops2, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.19, i32 noundef %4, i32 noundef %6, i32 noundef %8) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %maxlen)
  %cmp4 = icmp eq i32 %maxlen, 0
  br i1 %cmp4, label %cond.end13.thread, label %cond.end13

cond.end13:                                       ; preds = %sw.bb3
  %read9 = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %read9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read9, align 8
  %name = getelementptr inbounds %struct.dm_dev, ptr %10, i32 0, i32 3
  %start = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start, align 8
  %delay = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %delay, align 8
  %call12 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %result, i32 noundef %maxlen, ptr noundef nonnull @.str.20, ptr noundef %name, i64 noundef %12, i32 noundef %14) #8
  %argc = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %argc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp16 = icmp sgt i32 %16, 5
  br i1 %cmp16, label %if.then, label %cond.end13.sw.epilog_crit_edge

cond.end13.sw.epilog_crit_edge:                   ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

cond.end13.thread:                                ; preds = %sw.bb3
  %argc128 = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %argc128 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %argc128, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %cmp16129 = icmp sgt i32 %18, 5
  br i1 %cmp16129, label %cond.end13.thread.cond.end23_crit_edge, label %cond.end13.thread.sw.epilog_crit_edge

cond.end13.thread.sw.epilog_crit_edge:            ; preds = %cond.end13.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

cond.end13.thread.cond.end23_crit_edge:           ; preds = %cond.end13.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end23

if.then:                                          ; preds = %cond.end13
  call void @__sanitizer_cov_trace_cmp4(i32 %call12, i32 %maxlen)
  %cmp17.not = icmp ult i32 %call12, %maxlen
  br i1 %cmp17.not, label %cond.false19, label %if.then.cond.end23_crit_edge

if.then.cond.end23_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end23

cond.false19:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr20 = getelementptr i8, ptr %result, i32 %call12
  %sub21 = sub i32 %maxlen, %call12
  %call22 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr20, i32 noundef %sub21, ptr noundef nonnull @.str.21) #8
  br label %cond.end23

cond.end23:                                       ; preds = %cond.false19, %if.then.cond.end23_crit_edge, %cond.end13.thread.cond.end23_crit_edge
  %cond14130137 = phi i32 [ %call12, %cond.false19 ], [ %call12, %if.then.cond.end23_crit_edge ], [ 0, %cond.end13.thread.cond.end23_crit_edge ]
  %argc132136 = phi ptr [ %argc, %cond.false19 ], [ %argc, %if.then.cond.end23_crit_edge ], [ %argc128, %cond.end13.thread.cond.end23_crit_edge ]
  %cond24 = phi i32 [ %call22, %cond.false19 ], [ 0, %if.then.cond.end23_crit_edge ], [ 0, %cond.end13.thread.cond.end23_crit_edge ]
  %add25 = add i32 %cond24, %cond14130137
  call void @__sanitizer_cov_trace_cmp4(i32 %add25, i32 %maxlen)
  %cmp26.not = icmp ult i32 %add25, %maxlen
  br i1 %cmp26.not, label %cond.false28, label %cond.end23.if.end_crit_edge

cond.end23.if.end_crit_edge:                      ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

cond.false28:                                     ; preds = %cond.end23
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr29 = getelementptr i8, ptr %result, i32 %add25
  %sub30 = sub i32 %maxlen, %add25
  %write31 = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %write31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write31, align 8
  %name33 = getelementptr inbounds %struct.dm_dev, ptr %20, i32 0, i32 3
  %start36 = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 7, i32 1
  %21 = ptrtoint ptr %start36 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %start36, align 8
  %delay38 = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 7, i32 2
  %23 = ptrtoint ptr %delay38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %delay38, align 8
  %call39 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr29, i32 noundef %sub30, ptr noundef nonnull @.str.20, ptr noundef %name33, i64 noundef %22, i32 noundef %24) #8
  br label %if.end

if.end:                                           ; preds = %cond.false28, %cond.end23.if.end_crit_edge
  %cond41 = phi i32 [ %call39, %cond.false28 ], [ 0, %cond.end23.if.end_crit_edge ]
  %add42 = add i32 %cond41, %add25
  %25 = ptrtoint ptr %argc132136 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load i32, ptr %argc132136, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr)
  %cmp44 = icmp sgt i32 %.pr, 8
  br i1 %cmp44, label %if.then45, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then45:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %add42, i32 %maxlen)
  %cmp46.not = icmp ult i32 %add42, %maxlen
  br i1 %cmp46.not, label %cond.false48, label %if.then45.cond.end52_crit_edge

if.then45.cond.end52_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end52

cond.false48:                                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr49 = getelementptr i8, ptr %result, i32 %add42
  %sub50 = sub i32 %maxlen, %add42
  %call51 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr49, i32 noundef %sub50, ptr noundef nonnull @.str.21) #8
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false48, %if.then45.cond.end52_crit_edge
  %cond53 = phi i32 [ %call51, %cond.false48 ], [ 0, %if.then45.cond.end52_crit_edge ]
  %add54 = add i32 %cond53, %add42
  call void @__sanitizer_cov_trace_cmp4(i32 %add54, i32 %maxlen)
  %cmp55.not = icmp ult i32 %add54, %maxlen
  br i1 %cmp55.not, label %cond.false57, label %cond.end52.sw.epilog_crit_edge

cond.end52.sw.epilog_crit_edge:                   ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

cond.false57:                                     ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr58 = getelementptr i8, ptr %result, i32 %add54
  %sub59 = sub i32 %maxlen, %add54
  %flush60 = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %flush60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %flush60, align 8
  %name62 = getelementptr inbounds %struct.dm_dev, ptr %27, i32 0, i32 3
  %start65 = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %start65 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %start65, align 8
  %delay67 = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 8, i32 2
  %30 = ptrtoint ptr %delay67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay67, align 8
  %call68 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr58, i32 noundef %sub59, ptr noundef nonnull @.str.20, ptr noundef %name62, i64 noundef %29, i32 noundef %31) #8
  br label %sw.epilog

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %result to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %result, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb73, %cond.false57, %cond.end52.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %cond.end13.thread.sw.epilog_crit_edge, %cond.end13.sw.epilog_crit_edge, %cond.false, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @delay_iterate_devices(ptr noundef %ti, ptr nocapture noundef readonly %fn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %read = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read, align 8
  %start = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start, align 8
  %len = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %len, align 8
  %call = tail call i32 %fn(ptr noundef %ti, ptr noundef %3, i64 noundef %5, i64 noundef %7, ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %write = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 8
  %start4 = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 7, i32 1
  %10 = ptrtoint ptr %start4 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start4, align 8
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %len, align 8
  %call6 = tail call i32 %fn(ptr noundef %ti, ptr noundef %9, i64 noundef %11, i64 noundef %13, ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %flush = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %flush, align 8
  %start12 = getelementptr inbounds %struct.delay_c, ptr %1, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %start12 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %start12, align 8
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %len, align 8
  %call14 = tail call i32 %fn(ptr noundef %ti, ptr noundef %15, i64 noundef %17, i64 noundef %19, ptr noundef %data) #8
  br label %out

out:                                              ; preds = %if.end9, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call6, %if.end.out_crit_edge ], [ %call14, %if.end9 ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_delayed_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %kdelayd_wq = getelementptr inbounds %struct.delay_c, ptr %t, i32 0, i32 2
  %0 = ptrtoint ptr %kdelayd_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kdelayd_wq, align 4
  %flush_expired_bios = getelementptr inbounds %struct.delay_c, ptr %t, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %flush_expired_bios) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flush_expired_bios(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -144
  %call = tail call fastcc ptr @flush_delayed_bios(ptr noundef %add.ptr, i32 noundef 0)
  %tobool.not5.i = icmp eq ptr %call, null
  br i1 %tobool.not5.i, label %entry.flush_bios.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.flush_bios.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_bios.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %bio.addr.06.i = phi ptr [ %1, %while.body.i.while.body.i_crit_edge ], [ %call, %entry.while.body.i_crit_edge ]
  %0 = ptrtoint ptr %bio.addr.06.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio.addr.06.i, align 8
  store ptr null, ptr %bio.addr.06.i, align 8
  tail call void @submit_bio_noacct(ptr noundef nonnull %bio.addr.06.i) #8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %while.body.i.flush_bios.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.flush_bios.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flush_bios.exit

flush_bios.exit:                                  ; preds = %while.body.i.flush_bios.exit_crit_edge, %entry.flush_bios.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @delay_class_ctr(ptr noundef %ti, ptr noundef %c, ptr nocapture noundef readonly %argv) unnamed_addr #2 align 64 {
entry:
  %tmpll = alloca i64, align 8
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmpll) #8
  %0 = ptrtoint ptr %tmpll to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %tmpll, align 8, !annotation !71
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #8
  %1 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %dummy, align 1, !annotation !71
  %arrayidx = getelementptr ptr, ptr %argv, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef nonnull %tmpll, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %tmpll to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tmpll, align 8
  %start = getelementptr inbounds %struct.delay_class, ptr %c, i32 0, i32 1
  %6 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %start, align 8
  %arrayidx2 = getelementptr ptr, ptr %argv, i32 2
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx2, align 4
  %delay = getelementptr inbounds %struct.delay_class, ptr %c, i32 0, i32 2
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %8, ptr noundef nonnull @.str.16, ptr noundef %delay, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 1
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %argv, align 4
  %11 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ti, align 8
  %call9 = call i32 @dm_table_get_mode(ptr noundef %12) #8
  %call10 = call i32 @dm_get_device(ptr noundef %ti, ptr noundef %10, i32 noundef %call9, ptr noundef %c) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end7.cleanup.sink.split_crit_edge

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end7.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.18.sink = phi ptr [ @.str.15, %entry.cleanup.sink.split_crit_edge ], [ @.str.17, %if.end.cleanup.sink.split_crit_edge ], [ @.str.18, %if.end7.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %entry.cleanup.sink.split_crit_edge ], [ -22, %if.end.cleanup.sink.split_crit_edge ], [ %call10, %if.end7.cleanup.sink.split_crit_edge ]
  %error12 = getelementptr inbounds %struct.dm_target, ptr %ti, i32 0, i32 12
  %13 = ptrtoint ptr %error12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.str.18.sink, ptr %error12, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmpll) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @flush_delayed_bios(ptr noundef %dc, i32 noundef %flush_all) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @delayed_bios_lock, i32 noundef 0) #8
  %delayed_bios = getelementptr inbounds %struct.delay_c, ptr %dc, i32 0, i32 4
  %0 = ptrtoint ptr %delayed_bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %delayed_bios, align 4
  %cmp.not45 = icmp eq ptr %1, %delayed_bios
  br i1 %cmp.not45, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @delayed_bios_lock) #8
  br label %if.end24

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flush_all)
  %tobool.not = icmp eq i32 %flush_all, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in54 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn57, %for.inc.for.body_crit_edge ]
  %next_expires.052 = phi i32 [ 0, %for.body.lr.ph ], [ %next_expires.1, %for.inc.for.body_crit_edge ]
  %start_timer.050 = phi i32 [ 0, %for.body.lr.ph ], [ %start_timer.1, %for.inc.for.body_crit_edge ]
  %flush_bios.sroa.0.048 = phi ptr [ null, %for.body.lr.ph ], [ %flush_bios.sroa.0.2, %for.inc.for.body_crit_edge ]
  %flush_bios.sroa.6.046 = phi ptr [ null, %for.body.lr.ph ], [ %flush_bios.sroa.6.1, %for.inc.for.body_crit_edge ]
  %delayed.056 = getelementptr i8, ptr %.pn.in54, i32 -8
  %2 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn57 = load ptr, ptr %.pn.in54, align 4
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %expires = getelementptr i8, ptr %.pn.in54, i32 8
  %4 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %expires, align 4
  %sub = sub i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp8 = icmp sgt i32 %sub, -1
  br i1 %cmp8, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %call = tail call ptr @dm_bio_from_per_bio_data(ptr noundef %delayed.056, i32 noundef 20) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in54) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in54, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn.in54, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %12 = ptrtoint ptr %.pn.in54 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in54, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in54, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %call, align 8
  %tobool.not.i = icmp eq ptr %flush_bios.sroa.6.046, null
  br i1 %tobool.not.i, label %list_del.exit.bio_list_add.exit_crit_edge, label %if.then.i

list_del.exit.bio_list_add.exit_crit_edge:        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %bio_list_add.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %flush_bios.sroa.6.046 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %flush_bios.sroa.6.046, align 8
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.then.i, %list_del.exit.bio_list_add.exit_crit_edge
  %flush_bios.sroa.0.1 = phi ptr [ %flush_bios.sroa.0.048, %if.then.i ], [ %call, %list_del.exit.bio_list_add.exit_crit_edge ]
  %class = getelementptr i8, ptr %.pn.in54, i32 -4
  %16 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class, align 4
  %ops = getelementptr inbounds %struct.delay_class, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ops, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %ops, align 4
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start_timer.050)
  %tobool10.not = icmp eq i32 %start_timer.050, 0
  %20 = tail call i32 @llvm.umin.i32(i32 %next_expires.052, i32 %5)
  %spec.select = select i1 %tobool10.not, i32 %5, i32 %20
  br label %for.inc

for.inc:                                          ; preds = %if.end, %bio_list_add.exit
  %flush_bios.sroa.6.1 = phi ptr [ %call, %bio_list_add.exit ], [ %flush_bios.sroa.6.046, %if.end ]
  %flush_bios.sroa.0.2 = phi ptr [ %flush_bios.sroa.0.1, %bio_list_add.exit ], [ %flush_bios.sroa.0.048, %if.end ]
  %start_timer.1 = phi i32 [ %start_timer.050, %bio_list_add.exit ], [ 1, %if.end ]
  %next_expires.1 = phi i32 [ %next_expires.052, %bio_list_add.exit ], [ %spec.select, %if.end ]
  %cmp.not = icmp eq ptr %.pn57, %delayed_bios
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void @mutex_unlock(ptr noundef nonnull @delayed_bios_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start_timer.1)
  %tobool22.not = icmp eq i32 %start_timer.1, 0
  br i1 %tobool22.not, label %for.end.if.end24_crit_edge, label %if.then23

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %for.end
  %timer_lock.i = getelementptr inbounds %struct.delay_c, ptr %dc, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %timer_lock.i, i32 noundef 0) #8
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %dc, i32 0, i32 1
  %21 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.not.i, label %if.then23.if.then.i41_crit_edge, label %lor.lhs.false.i

if.then23.if.then.i41_crit_edge:                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i41

lor.lhs.false.i:                                  ; preds = %if.then23
  %expires2.i = getelementptr inbounds %struct.timer_list, ptr %dc, i32 0, i32 1
  %23 = ptrtoint ptr %expires2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %expires2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %next_expires.1)
  %cmp.i = icmp ugt i32 %24, %next_expires.1
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i41_crit_edge, label %lor.lhs.false.i.queue_timeout.exit_crit_edge

lor.lhs.false.i.queue_timeout.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %queue_timeout.exit

lor.lhs.false.i.if.then.i41_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i41

if.then.i41:                                      ; preds = %lor.lhs.false.i.if.then.i41_crit_edge, %if.then23.if.then.i41_crit_edge
  %call4.i = tail call i32 @mod_timer(ptr noundef %dc, i32 noundef %next_expires.1) #8
  br label %queue_timeout.exit

queue_timeout.exit:                               ; preds = %if.then.i41, %lor.lhs.false.i.queue_timeout.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %timer_lock.i) #8
  br label %if.end24

if.end24:                                         ; preds = %queue_timeout.exit, %for.end.if.end24_crit_edge, %for.end.thread
  %flush_bios.sroa.0.0.lcssa64 = phi ptr [ null, %for.end.thread ], [ %flush_bios.sroa.0.2, %queue_timeout.exit ], [ %flush_bios.sroa.0.2, %for.end.if.end24_crit_edge ]
  ret ptr %flush_bios.sroa.0.0.lcssa64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio_noacct(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bio_from_per_bio_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_table_get_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_per_bio_data(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !25, !27, !28, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_dm_delay__269_392_dm_delay_init6, !1, !"__initcall__kmod_dm_delay__269_392_dm_delay_init6", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-delay.c", i32 392, i32 1}
!2 = !{ptr @__exitcall_dm_delay_exit, !3, !"__exitcall_dm_delay_exit", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-delay.c", i32 393, i32 1}
!4 = !{ptr @__UNIQUE_ID_description270, !5, !"__UNIQUE_ID_description270", i1 false, i1 false}
!5 = !{!"../drivers/md/dm-delay.c", i32 395, i32 1}
!6 = !{ptr @__UNIQUE_ID_author271, !7, !"__UNIQUE_ID_author271", i1 false, i1 false}
!7 = !{!"../drivers/md/dm-delay.c", i32 396, i32 1}
!8 = !{ptr @__UNIQUE_ID_file272, !9, !"__UNIQUE_ID_file272", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-delay.c", i32 397, i32 1}
!10 = !{ptr @__UNIQUE_ID_license273, !9, !"__UNIQUE_ID_license273", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/md/dm-delay.c", i32 357, i32 15}
!13 = !{ptr @delay_target, !14, !"delay_target", i1 false, i1 false}
!14 = !{!"../drivers/md/dm-delay.c", i32 356, i32 27}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-delay.c", i32 179, i32 15}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/md/dm-delay.c", i32 185, i32 15}
!19 = !{ptr @delay_ctr.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-delay.c", i32 190, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @delay_ctr.__key.4, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/md/dm-delay.c", i32 191, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @delay_ctr.__key.6, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/md/dm-delay.c", i32 193, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/dm-delay.c", i32 226, i32 35}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-delay.c", i32 229, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @delay_ctr._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @delay_ctr._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/md/dm-delay.c", i32 49, i32 8}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @delayed_bios_lock, !37, !"delayed_bios_lock", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/md/dm-delay.c", i32 145, i32 22}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/md/dm-delay.c", i32 146, i32 15}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/md/dm-delay.c", i32 151, i32 22}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/md/dm-delay.c", i32 152, i32 15}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/md/dm-delay.c", i32 158, i32 15}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/md/dm-delay.c", i32 315, i32 3}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/md/dm-delay.c", i32 319, i32 3}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/md/dm-delay.c", i32 321, i32 4}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/md/dm-delay.c", i32 376, i32 3}
!58 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @dm_delay_init._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @dm_delay_init._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{!"auto-init"}
