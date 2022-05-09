; ModuleID = '/llk/IR_all_yes/kernel/time/ntp.c_pt.bc'
source_filename = "../kernel/time/ntp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.timezone = type { i32, i32 }
%struct.__kernel_timex = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, %struct.__kernel_timex_timeval, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, [44 x i8] }
%struct.__kernel_timex_timeval = type { i64, i64 }
%struct.timespec64 = type { i64, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@tick_usec = dso_local global { i32, [28 x i8] } { i32 10000, [28 x i8] zeroinitializer }, align 32
@time_adjust = internal global { i32, [28 x i8] } zeroinitializer, align 32
@time_status = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@time_maxerror = internal global { i32, [28 x i8] } { i32 16000000, [28 x i8] zeroinitializer }, align 32
@time_esterror = internal global { i32, [28 x i8] } { i32 16000000, [28 x i8] zeroinitializer }, align 32
@tick_length_base = internal global { i64, [24 x i8] } zeroinitializer, align 32
@tick_length = internal global { i64, [24 x i8] } zeroinitializer, align 32
@time_offset = internal global { i64, [24 x i8] } zeroinitializer, align 32
@ntp_next_leap_sec = internal global { i64, [24 x i8] } { i64 9223372036854775807, [24 x i8] zeroinitializer }, align 32
@time_state = internal global { i32, [28 x i8] } zeroinitializer, align 32
@second_overflow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\015Clock: inserting leap second 23:59:60 UTC\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"second_overflow\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kernel/time/ntp.c\00", [46 x i8] zeroinitializer }, align 32
@second_overflow._entry_ptr = internal global ptr @second_overflow._entry, section ".printk_index", align 4
@second_overflow._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015Clock: deleting leap second 23:59:59 UTC\0A\00", [52 x i8] zeroinitializer }, align 32
@second_overflow._entry_ptr.5 = internal global ptr @second_overflow._entry.3, section ".printk_index", align 4
@sync_hrtimer = internal global { %struct.hrtimer, [48 x i8] } zeroinitializer, align 32
@system_freezable_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@sync_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @sync_work, i64 4), ptr getelementptr (i8, ptr @sync_work, i64 4) }, ptr @sync_hw_clock, %struct.lockdep_map { ptr @sync_work, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@time_freq = internal global { i64, [24 x i8] } zeroinitializer, align 32
@time_constant = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__setup_str_ntp_tick_adj_setup = internal constant [14 x i8] c"ntp_tick_adj=\00", section ".init.rodata", align 1
@__setup_ntp_tick_adj_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_ntp_tick_adj_setup, ptr @ntp_tick_adj_setup, i32 0 }, section ".init.setup", align 4
@tick_nsec = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@ntp_tick_adj = internal global { i64, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sync_work\00", [22 x i8] zeroinitializer }, align 32
@sync_hw_clock.offset_nsec = internal global { i32, [28 x i8] } { i32 500000000, [28 x i8] zeroinitializer }, align 32
@persistent_clock_is_local = external dso_local local_unnamed_addr global i32, align 4
@sys_tz = external dso_local local_unnamed_addr global %struct.timezone, align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rtc0\00", [27 x i8] zeroinitializer }, align 32
@time_reftime = internal global { i64, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.9 = private unnamed_addr constant [10 x i8] c"tick_usec\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 34, i32 17 }
@___asan_gen_.12 = private unnamed_addr constant [12 x i8] c"time_adjust\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 80, i32 15 }
@___asan_gen_.15 = private unnamed_addr constant [12 x i8] c"time_status\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 60, i32 14 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"time_maxerror\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 69, i32 15 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"time_esterror\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 72, i32 15 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"tick_length_base\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 40, i32 14 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"tick_length\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 39, i32 14 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"time_offset\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 63, i32 14 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"ntp_next_leap_sec\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 86, i32 19 }
@___asan_gen_.36 = private unnamed_addr constant [11 x i8] c"time_state\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 57, i32 14 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 430, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 442, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"sync_hrtimer\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 500, i32 23 }
@___asan_gen_.60 = private unnamed_addr constant [10 x i8] c"sync_work\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [10 x i8] c"time_freq\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 75, i32 14 }
@___asan_gen_.66 = private unnamed_addr constant [14 x i8] c"time_constant\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 66, i32 15 }
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"tick_nsec\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 37, i32 17 }
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"ntp_tick_adj\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 83, i32 14 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 499, i32 8 }
@___asan_gen_.78 = private unnamed_addr constant [12 x i8] c"offset_nsec\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 629, i32 23 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 587, i32 23 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"time_reftime\00", align 1
@___asan_gen_.85 = private constant [21 x i8] c"../kernel/time/ntp.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 78, i32 18 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__setup_ntp_tick_adj_setup, ptr @second_overflow._entry, ptr @second_overflow._entry.3, ptr @second_overflow._entry_ptr, ptr @second_overflow._entry_ptr.5, ptr @tick_usec, ptr @time_adjust, ptr @time_status, ptr @time_maxerror, ptr @time_esterror, ptr @tick_length_base, ptr @tick_length, ptr @time_offset, ptr @ntp_next_leap_sec, ptr @time_state, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @sync_hrtimer, ptr @sync_work, ptr @time_freq, ptr @time_constant, ptr @tick_nsec, ptr @ntp_tick_adj, ptr @.str.6, ptr @sync_hw_clock.offset_nsec, ptr @.str.7, ptr @time_reftime], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tick_usec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_adjust to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_status to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_maxerror to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_esterror to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tick_length_base to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tick_length to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_offset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntp_next_leap_sec to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @second_overflow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @second_overflow._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_hrtimer to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_freq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_constant to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tick_nsec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntp_tick_adj to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sync_hw_clock.offset_nsec to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @time_reftime to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntp_clear() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @time_adjust, align 4
  %0 = load i32, ptr @time_status, align 4
  %or = or i32 %0, 64
  store i32 %or, ptr @time_status, align 4
  store i32 16000000, ptr @time_maxerror, align 4
  store i32 16000000, ptr @time_esterror, align 4
  %1 = load i32, ptr @tick_usec, align 4
  %mul1.i = mul i32 %1, 100000
  %conv.i = zext i32 %mul1.i to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %2 = load i64, ptr @ntp_tick_adj, align 8
  %3 = load i64, ptr @time_freq, align 8
  %add.i = add i64 %3, %2
  %add2.i = add i64 %add.i, %shl.i
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %add2.i, i32 0) #10, !srcloc !61
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %4, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %add2.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #10, !srcloc !62
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 6
  %shr.i = lshr i64 %asmresult10.i.i.i.i, 38
  %conv3.i = trunc i64 %shr.i to i32
  store i32 %conv3.i, ptr @tick_nsec, align 4
  store i64 %div1581.i.i.i, ptr @tick_length_base, align 8
  store i64 %div1581.i.i.i, ptr @tick_length, align 8
  store i64 0, ptr @time_offset, align 8
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @ntp_tick_length() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i64, ptr @tick_length, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @ntp_get_next_leap() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @time_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @time_status, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %2 = load i64, ptr @ntp_next_leap_sec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %2)
  %cmp.i = icmp sgt i64 %2, 9223372035
  %mul.i = mul i64 %2, 1000000000
  %retval.0.i = select i1 %cmp.i, i64 9223372036854775807, i64 %mul.i, !prof !63
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %retval.0.i, %if.then ], [ 9223372036854775807, %land.lhs.true.cleanup_crit_edge ], [ 9223372036854775807, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @second_overflow(i64 noundef %secs) local_unnamed_addr #0 align 64 {
entry:
  %rem = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rem) #7
  %0 = ptrtoint ptr %rem to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rem, align 4, !annotation !64
  %1 = load i32, ptr @time_state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb20
    i32 3, label %sw.bb35
    i32 4, label %sw.bb36
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = load i32, ptr @time_status, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  store i32 1, ptr @time_state, align 4
  %call = call i64 @div_s64_rem(i64 noundef %secs, i32 noundef 86400, ptr noundef nonnull %rem) #7
  %add = add i64 %secs, 86400
  %4 = ptrtoint ptr %rem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rem, align 4
  %conv = sext i32 %5 to i64
  %sub = sub i64 %add, %conv
  store i64 %sub, ptr @ntp_next_leap_sec, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %and1 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.else.sw.epilog_crit_edge, label %if.then3

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  store i32 2, ptr @time_state, align 4
  %add4 = add i64 %secs, 1
  %call5 = call i64 @div_s64_rem(i64 noundef %add4, i32 noundef 86400, ptr noundef nonnull %rem) #7
  %add6 = add i64 %secs, 86400
  %6 = ptrtoint ptr %rem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rem, align 4
  %conv7 = sext i32 %7 to i64
  %sub8 = sub i64 %add6, %conv7
  store i64 %sub8, ptr @ntp_next_leap_sec, align 8
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %8 = load i32, ptr @time_status, align 4
  %and11 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.else14

if.then13:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8
  store i32 0, ptr @time_state, align 4
  br label %sw.epilog

if.else14:                                        ; preds = %sw.bb10
  %9 = load i64, ptr @ntp_next_leap_sec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %secs)
  %cmp = icmp eq i64 %9, %secs
  br i1 %cmp, label %if.then16, label %if.else14.sw.epilog_crit_edge

if.else14.sw.epilog_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then16:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  store i32 3, ptr @time_state, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %10 = load i32, ptr @time_status, align 4
  %and21 = and i32 %10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then23, label %if.else24

if.then23:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8
  store i32 0, ptr @time_state, align 4
  br label %sw.epilog

if.else24:                                        ; preds = %sw.bb20
  %11 = load i64, ptr @ntp_next_leap_sec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %secs)
  %cmp25 = icmp eq i64 %11, %secs
  br i1 %cmp25, label %if.then27, label %if.else24.sw.epilog_crit_edge

if.else24.sw.epilog_crit_edge:                    ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then27:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8
  store i32 4, ptr @time_state, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8
  store i32 4, ptr @time_state, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  %12 = load i32, ptr @time_status, align 4
  %and37 = and i32 %12, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then39, label %sw.bb36.sw.epilog_crit_edge

sw.bb36.sw.epilog_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then39:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @time_state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then39, %sw.bb36.sw.epilog_crit_edge, %sw.bb35, %if.then27, %if.else24.sw.epilog_crit_edge, %if.then23, %if.then16, %if.else14.sw.epilog_crit_edge, %if.then13, %if.then3, %if.else.sw.epilog_crit_edge, %if.then, %entry.sw.epilog_crit_edge
  %leap.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb36.sw.epilog_crit_edge ], [ 0, %if.then39 ], [ 0, %sw.bb35 ], [ 1, %if.then27 ], [ 0, %if.else24.sw.epilog_crit_edge ], [ 0, %if.then23 ], [ -1, %if.then16 ], [ 0, %if.else14.sw.epilog_crit_edge ], [ 0, %if.then13 ], [ 0, %if.then ], [ 0, %if.then3 ], [ 0, %if.else.sw.epilog_crit_edge ]
  %13 = load i32, ptr @time_maxerror, align 4
  %add41 = add i32 %13, 500
  store i32 %add41, ptr @time_maxerror, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000000, i32 %add41)
  %cmp42 = icmp sgt i32 %add41, 16000000
  br i1 %cmp42, label %if.then44, label %sw.epilog.if.end45_crit_edge

sw.epilog.if.end45_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then44:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  store i32 16000000, ptr @time_maxerror, align 4
  %14 = load i32, ptr @time_status, align 4
  %or = or i32 %14, 64
  store i32 %or, ptr @time_status, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %sw.epilog.if.end45_crit_edge
  %15 = load i64, ptr @tick_length_base, align 8
  %16 = load i64, ptr @time_offset, align 8
  %17 = load i32, ptr @time_constant, align 4
  %add.i = add i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp.i = icmp slt i64 %16, 0
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i64 0, %16
  %sh_prom.i = zext i32 %add.i to i64
  %shr.i = ashr i64 %sub.i, %sh_prom.i
  %sub1.i = sub i64 0, %shr.i
  br label %ntp_offset_chunk.exit

cond.false.i:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %sh_prom2.i = zext i32 %add.i to i64
  %shr37.i = lshr i64 %16, %sh_prom2.i
  br label %ntp_offset_chunk.exit

ntp_offset_chunk.exit:                            ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %sub1.i, %cond.true.i ], [ %shr37.i, %cond.false.i ]
  %sub47 = sub i64 %16, %cond.i
  store i64 %sub47, ptr @time_offset, align 8
  %add48 = add i64 %cond.i, %15
  store i64 %add48, ptr @tick_length, align 8
  %18 = load i32, ptr @time_adjust, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool49.not = icmp eq i32 %18, 0
  br i1 %tobool49.not, label %ntp_offset_chunk.exit.out_crit_edge, label %if.end51

ntp_offset_chunk.exit.out_crit_edge:              ; preds = %ntp_offset_chunk.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end51:                                         ; preds = %ntp_offset_chunk.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %18)
  %cmp53 = icmp sgt i32 %18, 500
  br i1 %cmp53, label %if.then55, label %if.end60

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %sub57 = add nsw i32 %18, -500
  store i32 %sub57, ptr @time_adjust, align 4
  %add59 = add i64 %add48, 21474836480000
  store i64 %add59, ptr @tick_length, align 8
  br label %out

if.end60:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -500, i32 %18)
  %cmp62 = icmp slt i32 %18, -500
  br i1 %cmp62, label %if.then64, label %if.end69

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %add66 = add nuw nsw i32 %18, 500
  store i32 %add66, ptr @time_adjust, align 4
  %sub68 = add i64 %add48, -21474836480000
  store i64 %sub68, ptr @tick_length, align 8
  br label %out

if.end69:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %div = mul nsw i32 %18, 10
  %conv7078 = zext i32 %div to i64
  %shl = shl nuw i64 %conv7078, 32
  %add71 = add i64 %shl, %add48
  store i64 %add71, ptr @tick_length, align 8
  store i32 0, ptr @time_adjust, align 4
  br label %out

out:                                              ; preds = %if.end69, %if.then64, %if.then55, %ntp_offset_chunk.exit.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rem) #7
  ret i32 %leap.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ntp_notify_cmos_timer() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @time_status, align 4
  %1 = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.not = icmp eq i32 %1, 0
  br i1 %tobool.not.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load volatile i8, ptr getelementptr inbounds (%struct.hrtimer, ptr @sync_hrtimer, i32 0, i32 4), align 8
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.i.not = icmp eq i8 %3, 0
  br i1 %tobool.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_power_efficient_wq to i32))
  %4 = load ptr, ptr @system_freezable_power_efficient_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef nonnull @sync_work) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__do_adjtimex(ptr noundef %txc, ptr nocapture noundef readonly %ts, ptr nocapture noundef %time_tai, ptr nocapture noundef readnone %ad) local_unnamed_addr #0 align 64 {
entry:
  %remainder.i.i.i = alloca i32, align 4
  %remainder.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txc, align 8
  %and = and i32 %1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @time_adjust, align 4
  %and2 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %offset = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 2
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %offset, align 8
  %conv = trunc i64 %4 to i32
  store i32 %conv, ptr @time_adjust, align 4
  %5 = load i32, ptr @tick_usec, align 4
  %mul1.i = mul i32 %5, 100000
  %conv.i = zext i32 %mul1.i to i64
  %shl.i = shl nuw i64 %conv.i, 32
  %6 = load i64, ptr @ntp_tick_adj, align 8
  %7 = load i64, ptr @time_freq, align 8
  %add.i = add i64 %7, %6
  %add2.i = add i64 %add.i, %shl.i
  %8 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %add2.i, i32 0) #10, !srcloc !61
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %8, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %8, 1
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %add2.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #10, !srcloc !62
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %9, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 6
  %shr.i = lshr i64 %asmresult10.i.i.i.i, 38
  %conv3.i = trunc i64 %shr.i to i32
  store i32 %conv3.i, ptr @tick_nsec, align 4
  %10 = load i64, ptr @tick_length_base, align 8
  %sub.i = sub i64 %div1581.i.i.i, %10
  %11 = load i64, ptr @tick_length, align 8
  %add5.i = add i64 %sub.i, %11
  store i64 %add5.i, ptr @tick_length, align 8
  store i64 %div1581.i.i.i, ptr @tick_length_base, align 8
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %conv7 = sext i32 %2 to i64
  %offset8 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 2
  %12 = ptrtoint ptr %offset8 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv7, ptr %offset8, align 8
  br label %if.end32

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool10.not = icmp eq i32 %1, 0
  br i1 %tobool10.not, label %if.else.if.end18_crit_edge, label %if.then11

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then11:                                        ; preds = %if.else
  %and.i = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then11.if.end.i_crit_edge, label %if.then.i

if.then11.if.end.i_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then11
  %13 = load i32, ptr @time_status, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %status.i.i = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 6
  %14 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status.i.i, align 8
  %and1.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @time_state, align 4
  store i32 64, ptr @time_status, align 4
  store i64 9223372036854775807, ptr @ntp_next_leap_sec, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.if.end.i.i_crit_edge
  %16 = load i32, ptr @time_status, align 4
  %and3.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true5.i.i, label %if.end.i.i.process_adj_status.exit.i_crit_edge

if.end.i.i.process_adj_status.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %process_adj_status.exit.i

land.lhs.true5.i.i:                               ; preds = %if.end.i.i
  %status6.i.i = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 6
  %17 = ptrtoint ptr %status6.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status6.i.i, align 8
  %and7.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true5.i.i.process_adj_status.exit.i_crit_edge, label %if.then9.i.i

land.lhs.true5.i.i.process_adj_status.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %process_adj_status.exit.i

if.then9.i.i:                                     ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i64 @__ktime_get_real_seconds() #7
  store i64 %call.i.i, ptr @time_reftime, align 8
  br label %process_adj_status.exit.i

process_adj_status.exit.i:                        ; preds = %if.then9.i.i, %land.lhs.true5.i.i.process_adj_status.exit.i_crit_edge, %if.end.i.i.process_adj_status.exit.i_crit_edge
  %19 = load i32, ptr @time_status, align 4
  %and11.i.i = and i32 %19, 65280
  %status12.i.i = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 6
  %20 = ptrtoint ptr %status12.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status12.i.i, align 8
  %and13.i.i = and i32 %21, -65281
  %or.i.i = or i32 %and13.i.i, %and11.i.i
  store i32 %or.i.i, ptr @time_status, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %process_adj_status.exit.i, %if.then11.if.end.i_crit_edge
  %22 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %txc, align 8
  %and2.i = and i32 %23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = load i32, ptr @time_status, align 4
  %or.i = or i32 %24, 8192
  store i32 %or.i, ptr @time_status, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %and7.i = and i32 %23, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.if.end11.i_crit_edge, label %if.then9.i

if.end5.i.if.end11.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = load i32, ptr @time_status, align 4
  %and10.i = and i32 %25, -8193
  store i32 %and10.i, ptr @time_status, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end5.i.if.end11.i_crit_edge
  %and13.i = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.if.end22.i_crit_edge, label %if.then15.i

if.end11.i.if.end22.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then15.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %freq.i = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 3
  %26 = ptrtoint ptr %freq.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %freq.i, align 8
  %mul.i = mul i64 %27, 65536000
  %28 = tail call i64 @llvm.smin.i64(i64 %mul.i, i64 2147483648000000) #7
  %29 = tail call i64 @llvm.smax.i64(i64 %28, i64 -2147483648000000) #7
  store i64 %29, ptr @time_freq, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then15.i, %if.end11.i.if.end22.i_crit_edge
  %and24.i = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end22.i.if.end27.i_crit_edge, label %if.then26.i

if.end22.i.if.end27.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %maxerror.i = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 4
  %30 = ptrtoint ptr %maxerror.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %maxerror.i, align 8
  %conv.i156 = trunc i64 %31 to i32
  store i32 %conv.i156, ptr @time_maxerror, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.end22.i.if.end27.i_crit_edge
  %and29.i = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end27.i.if.end33.i_crit_edge, label %if.then31.i

if.end27.i.if.end33.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %esterror.i = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 5
  %32 = ptrtoint ptr %esterror.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %esterror.i, align 8
  %conv32.i = trunc i64 %33 to i32
  store i32 %conv32.i, ptr @time_esterror, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %if.end27.i.if.end33.i_crit_edge
  %and35.i = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end33.i.if.end57.i_crit_edge, label %if.then37.i

if.end33.i.if.end57.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

if.then37.i:                                      ; preds = %if.end33.i
  %constant.i = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 8
  %34 = ptrtoint ptr %constant.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %constant.i, align 8
  %conv38.i = trunc i64 %35 to i32
  store i32 %conv38.i, ptr @time_constant, align 4
  %36 = load i32, ptr @time_status, align 4
  %and39.i = and i32 %36, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %if.then37.i.if.end42.i_crit_edge

if.then37.i.if.end42.i_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.then41.i:                                      ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i157 = add i32 %conv38.i, 4
  store i32 %add.i157, ptr @time_constant, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then41.i, %if.then37.i.if.end42.i_crit_edge
  %37 = load i32, ptr @time_constant, align 4
  %38 = tail call i32 @llvm.smin.i32(i32 %37, i32 10) #7
  %39 = tail call i32 @llvm.smax.i32(i32 %38, i32 0) #7
  store i32 %39, ptr @time_constant, align 4
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.end42.i, %if.end33.i.if.end57.i_crit_edge
  %and59.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %if.end57.i.if.end71.i_crit_edge, label %land.lhs.true.i

if.end57.i.if.end71.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71.i

land.lhs.true.i:                                  ; preds = %if.end57.i
  %constant61.i = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 8
  %40 = ptrtoint ptr %constant61.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %constant61.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 100001, i64 %41)
  %42 = icmp ult i64 %41, 100001
  br i1 %42, label %if.then68.i, label %land.lhs.true.i.if.end71.i_crit_edge

land.lhs.true.i.if.end71.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71.i

if.then68.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv70.i = trunc i64 %41 to i32
  %43 = ptrtoint ptr %time_tai to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv70.i, ptr %time_tai, align 4
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then68.i, %land.lhs.true.i.if.end71.i_crit_edge, %if.end57.i.if.end71.i_crit_edge
  %44 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %txc, align 8
  %and73.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %if.end71.i.if.end77.i_crit_edge, label %if.then75.i

if.end71.i.if.end77.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.i

if.then75.i:                                      ; preds = %if.end71.i
  %offset.i = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 2
  %46 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %offset.i, align 8
  %conv76.i = trunc i64 %47 to i32
  %48 = load i32, ptr @time_status, align 4
  %and.i118.i = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118.i)
  %tobool.not.i119.i = icmp eq i32 %and.i118.i, 0
  br i1 %tobool.not.i119.i, label %if.then75.i.if.end77.i_crit_edge, label %if.end.i122.i

if.then75.i.if.end77.i_crit_edge:                 ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77.i

if.end.i122.i:                                    ; preds = %if.then75.i
  %and1.i120.i = and i32 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i120.i)
  %tobool2.not.i121.i = icmp eq i32 %and1.i120.i, 0
  br i1 %tobool2.not.i121.i, label %if.then3.i.i, label %if.end.i122.i.if.end10.i.i_crit_edge

if.end.i122.i.if.end10.i.i_crit_edge:             ; preds = %if.end.i122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

if.then3.i.i:                                     ; preds = %if.end.i122.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = tail call i32 @llvm.smax.i32(i32 %conv76.i, i32 -1000000) #7
  %50 = tail call i32 @llvm.smin.i32(i32 %49, i32 1000000) #7
  %mul.i.i = mul nsw i32 %50, 1000
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then3.i.i, %if.end.i122.i.if.end10.i.i_crit_edge
  %offset.addr.0.i.i = phi i32 [ %conv76.i, %if.end.i122.i.if.end10.i.i_crit_edge ], [ %mul.i.i, %if.then3.i.i ]
  %51 = tail call i32 @llvm.smax.i32(i32 %offset.addr.0.i.i, i32 -500000000) #7
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 500000000) #7
  %call.i123.i = tail call i64 @__ktime_get_real_seconds() #7
  %53 = load i64, ptr @time_reftime, align 8
  %sub.i.i = sub i64 %call.i123.i, %53
  %conv.i.i = trunc i64 %sub.i.i to i32
  %54 = load i32, ptr @time_status, align 4
  %and23.i.i = and i32 %54, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end10.i.i.if.end28.i.i_crit_edge, label %if.then27.i.i, !prof !65

if.end10.i.i.if.end28.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i.i

if.then27.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.then27.i.i, %if.end10.i.i.if.end28.i.i_crit_edge
  %secs.0.i.i = phi i32 [ 0, %if.then27.i.i ], [ %conv.i.i, %if.end10.i.i.if.end28.i.i_crit_edge ]
  %call29.i.i = tail call i64 @__ktime_get_real_seconds() #7
  store i64 %call29.i.i, ptr @time_reftime, align 8
  %conv30.i.i = sext i32 %52 to i64
  %55 = load i32, ptr @time_status, align 4
  %and.i.i.i = and i32 %55, -16385
  store i32 %and.i.i.i, ptr @time_status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %secs.0.i.i)
  %cmp.i.i.i = icmp slt i32 %secs.0.i.i, 256
  br i1 %cmp.i.i.i, label %if.end28.i.i.ntp_update_offset_fll.exit.i.i_crit_edge, label %if.end.i.i.i

if.end28.i.i.ntp_update_offset_fll.exit.i.i_crit_edge: ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ntp_update_offset_fll.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end28.i.i
  %and1.i.i.i = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and1.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %secs.0.i.i)
  %cmp2.i.i.i = icmp ult i32 %secs.0.i.i, 2049
  %or.cond.i.i.i = and i1 %cmp2.i.i.i, %tobool.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end.i.i.i.ntp_update_offset_fll.exit.i.i_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.ntp_update_offset_fll.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ntp_update_offset_fll.exit.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i.i = or i32 %55, 16384
  store i32 %or.i.i.i, ptr @time_status, align 4
  %shl.i.i.i = shl nsw i64 %conv30.i.i, 30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #7
  %56 = ptrtoint ptr %remainder.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %remainder.i.i.i.i, align 4, !annotation !64
  %call.i.i.i.i = call i64 @div_s64_rem(i64 noundef %shl.i.i.i, i32 noundef %secs.0.i.i, ptr noundef nonnull %remainder.i.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i.i) #7
  br label %ntp_update_offset_fll.exit.i.i

ntp_update_offset_fll.exit.i.i:                   ; preds = %if.end4.i.i.i, %if.end.i.i.i.ntp_update_offset_fll.exit.i.i_crit_edge, %if.end28.i.i.ntp_update_offset_fll.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i64 [ %call.i.i.i.i, %if.end4.i.i.i ], [ 0, %if.end28.i.i.ntp_update_offset_fll.exit.i.i_crit_edge ], [ 0, %if.end.i.i.i.ntp_update_offset_fll.exit.i.i_crit_edge ]
  %57 = load i32, ptr @time_constant, align 4
  %add.i.i = add i32 %57, 3
  %shl.i.i = shl nuw i32 1, %add.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %secs.0.i.i, i32 %shl.i.i)
  %cmp32.i.i = icmp sgt i32 %secs.0.i.i, %shl.i.i
  br i1 %cmp32.i.i, label %if.then40.i.i, label %ntp_update_offset_fll.exit.i.i.if.end43.i.i_crit_edge, !prof !63

ntp_update_offset_fll.exit.i.i.if.end43.i.i_crit_edge: ; preds = %ntp_update_offset_fll.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i.i

if.then40.i.i:                                    ; preds = %ntp_update_offset_fll.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.then40.i.i, %ntp_update_offset_fll.exit.i.i.if.end43.i.i_crit_edge
  %secs.1.i.i = phi i32 [ %shl.i.i, %if.then40.i.i ], [ %secs.0.i.i, %ntp_update_offset_fll.exit.i.i.if.end43.i.i_crit_edge ]
  %conv44.i.i = sext i32 %secs.1.i.i to i64
  %mul45.i.i = mul nsw i64 %conv44.i.i, %conv30.i.i
  %add46.neg.i.i = mul i32 %57, -2
  %sub48.i.i = add i32 %add46.neg.i.i, 24
  %sh_prom.i.i = zext i32 %sub48.i.i to i64
  %shl49.i.i = shl i64 %mul45.i.i, %sh_prom.i.i
  %58 = load i64, ptr @time_freq, align 8
  %add50.i.i = add i64 %58, %retval.0.i.i.i
  %add51.i.i = add i64 %add50.i.i, %shl49.i.i
  %59 = call i64 @llvm.smin.i64(i64 %add51.i.i, i64 2147483648000000) #7
  %60 = call i64 @llvm.smax.i64(i64 %59, i64 -2147483648000000) #7
  store i64 %60, ptr @time_freq, align 8
  %shl66.i.i = shl nsw i64 %conv30.i.i, 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i) #7
  %61 = ptrtoint ptr %remainder.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %remainder.i.i.i, align 4, !annotation !64
  %call.i.i.i = call i64 @div_s64_rem(i64 noundef %shl66.i.i, i32 noundef 100, ptr noundef nonnull %remainder.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i) #7
  store i64 %call.i.i.i, ptr @time_offset, align 8
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.end43.i.i, %if.then75.i.if.end77.i_crit_edge, %if.end71.i.if.end77.i_crit_edge
  %62 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %txc, align 8
  %and79.i = and i32 %63, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end77.i.if.end83.i_crit_edge, label %if.then81.i

if.end77.i.if.end83.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83.i

if.then81.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  %tick.i = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 12
  %64 = ptrtoint ptr %tick.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %tick.i, align 8
  %conv82.i = trunc i64 %65 to i32
  store i32 %conv82.i, ptr @tick_usec, align 4
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then81.i, %if.end77.i.if.end83.i_crit_edge
  %66 = ptrtoint ptr %txc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %txc, align 8
  %and85.i = and i32 %67, 16387
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %if.end83.i.if.end18_crit_edge, label %if.then87.i

if.end83.i.if.end18_crit_edge:                    ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then87.i:                                      ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = load i32, ptr @tick_usec, align 4
  %mul1.i.i = mul i32 %68, 100000
  %conv.i124.i = zext i32 %mul1.i.i to i64
  %shl.i125.i = shl nuw i64 %conv.i124.i, 32
  %69 = load i64, ptr @ntp_tick_adj, align 8
  %70 = load i64, ptr @time_freq, align 8
  %add.i126.i = add i64 %70, %69
  %add2.i.i = add i64 %add.i126.i, %shl.i125.i
  %71 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6640827866535438582, i64 %add2.i.i, i32 0) #10, !srcloc !61
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %71, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %71, 1
  %72 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6640827866535438582, i64 %add2.i.i, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #10, !srcloc !62
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %72, 0
  %div1581.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 6
  %shr.i.i = lshr i64 %asmresult10.i.i.i.i.i, 38
  %conv3.i.i = trunc i64 %shr.i.i to i32
  store i32 %conv3.i.i, ptr @tick_nsec, align 4
  %73 = load i64, ptr @tick_length_base, align 8
  %sub.i127.i = sub i64 %div1581.i.i.i.i, %73
  %74 = load i64, ptr @tick_length, align 8
  %add5.i.i = add i64 %sub.i127.i, %74
  store i64 %add5.i.i, ptr @tick_length, align 8
  store i64 %div1581.i.i.i.i, ptr @tick_length_base, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then87.i, %if.end83.i.if.end18_crit_edge, %if.else.if.end18_crit_edge
  %75 = load i64, ptr @time_offset, align 8
  %mul = mul i64 %75, 100
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul)
  %cmp = icmp slt i64 %mul, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i64 0, %mul
  %shr = ashr i64 %sub, 32
  %sub20 = sub nsw i64 0, %shr
  br label %cond.end

cond.false:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %shr22164 = lshr i64 %mul, 32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub20, %cond.true ], [ %shr22164, %cond.false ]
  %offset23 = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 2
  %76 = ptrtoint ptr %offset23 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %cond, ptr %offset23, align 8
  %77 = load i32, ptr @time_status, align 4
  %and24 = and i32 %77, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then26, label %cond.end.if.end32_crit_edge

cond.end.if.end32_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then26:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv28 = trunc i64 %cond to i32
  %div = udiv i32 %conv28, 1000
  %conv29 = zext i32 %div to i64
  %78 = ptrtoint ptr %offset23 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv29, ptr %offset23, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %cond.end.if.end32_crit_edge, %if.end
  %79 = load i32, ptr @time_state, align 4
  %80 = load i32, ptr @time_status, align 4
  %and.i158 = and i32 %80, 4160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i158)
  %tobool33.not = icmp eq i32 %and.i158, 0
  %spec.select = select i1 %tobool33.not, i32 %79, i32 5
  %81 = load i64, ptr @time_freq, align 8
  %shr37 = ashr i64 %81, 19
  %mul38 = mul i64 %shr37, 34359739
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul38)
  %cmp41 = icmp slt i64 %mul38, 0
  br i1 %cmp41, label %cond.true43, label %cond.false48

cond.true43:                                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %sub44 = sub i64 0, %mul38
  %shr46 = ashr i64 %sub44, 32
  %sub47 = sub nsw i64 0, %shr46
  br label %cond.end51

cond.false48:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %shr50163 = lshr i64 %mul38, 32
  br label %cond.end51

cond.end51:                                       ; preds = %cond.false48, %cond.true43
  %cond52 = phi i64 [ %sub47, %cond.true43 ], [ %shr50163, %cond.false48 ]
  %freq = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 3
  %82 = ptrtoint ptr %freq to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %cond52, ptr %freq, align 8
  %83 = load i32, ptr @time_maxerror, align 4
  %conv53 = sext i32 %83 to i64
  %maxerror = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 4
  %84 = ptrtoint ptr %maxerror to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv53, ptr %maxerror, align 8
  %85 = load i32, ptr @time_esterror, align 4
  %conv54 = sext i32 %85 to i64
  %esterror = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 5
  %86 = ptrtoint ptr %esterror to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %conv54, ptr %esterror, align 8
  %status = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 6
  %87 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %80, ptr %status, align 8
  %88 = load i32, ptr @time_constant, align 4
  %conv55 = sext i32 %88 to i64
  %constant = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 8
  %89 = ptrtoint ptr %constant to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %conv55, ptr %constant, align 8
  %precision = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 9
  %90 = ptrtoint ptr %precision to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 1, ptr %precision, align 8
  %tolerance = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 10
  %91 = ptrtoint ptr %tolerance to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 32768000, ptr %tolerance, align 8
  %92 = load i32, ptr @tick_usec, align 4
  %conv56 = zext i32 %92 to i64
  %tick = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 12
  %93 = ptrtoint ptr %tick to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv56, ptr %tick, align 8
  %94 = ptrtoint ptr %time_tai to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %time_tai, align 4
  %tai = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 22
  %96 = ptrtoint ptr %tai to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %tai, align 8
  %ppsfreq.i = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 13
  %stabil.i = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 17
  %97 = call ptr @memset(ptr %ppsfreq.i, i32 0, i32 20)
  %98 = call ptr @memset(ptr %stabil.i, i32 0, i32 40)
  %99 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %ts, align 8
  %time = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 11
  %101 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %time, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %102 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %tv_nsec, align 8
  %conv58 = sext i32 %103 to i64
  %tv_usec = getelementptr inbounds %struct.__kernel_timex, ptr %txc, i32 0, i32 11, i32 1
  %104 = ptrtoint ptr %tv_usec to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %conv58, ptr %tv_usec, align 8
  %and60 = and i32 %80, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.then62, label %cond.end51.if.end68_crit_edge

cond.end51.if.end68_crit_edge:                    ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then62:                                        ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tv_nsec, align 8
  %div64 = sdiv i32 %106, 1000
  %conv65 = sext i32 %div64 to i64
  %107 = ptrtoint ptr %tv_usec to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %conv65, ptr %tv_usec, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %cond.end51.if.end68_crit_edge
  %108 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %ts, align 8
  %110 = load i64, ptr @ntp_next_leap_sec, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %109, i64 %110)
  %cmp70.not = icmp slt i64 %109, %110
  br i1 %cmp70.not, label %if.end68.if.end104_crit_edge, label %if.then74, !prof !65

if.end68.if.end104_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then74:                                        ; preds = %if.end68
  %111 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %79, label %if.then74.if.end104_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %land.lhs.true86
    i32 3, label %land.lhs.true98
  ]

if.then74.if.end104_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

land.lhs.true:                                    ; preds = %if.then74
  %and77 = and i32 %80, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %land.lhs.true.if.end104_crit_edge, label %if.then79

land.lhs.true.if.end104_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then79:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %95, 1
  %112 = ptrtoint ptr %tai to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %inc, ptr %tai, align 8
  %dec = add i64 %100, -1
  %113 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %dec, ptr %time, align 8
  br label %if.end104

land.lhs.true86:                                  ; preds = %if.then74
  %and87 = and i32 %80, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %land.lhs.true86.if.end104_crit_edge, label %if.then89

land.lhs.true86.if.end104_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then89:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %tai to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tai, align 8
  %dec91 = add i32 %115, -1
  store i32 %dec91, ptr %tai, align 8
  %116 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %time, align 8
  %inc94 = add i64 %117, 1
  store i64 %inc94, ptr %time, align 8
  br label %if.end104

land.lhs.true98:                                  ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %119, i64 %110)
  %cmp100 = icmp eq i64 %119, %110
  %spec.select155 = select i1 %cmp100, i32 4, i32 %spec.select
  br label %if.end104

if.end104:                                        ; preds = %land.lhs.true98, %if.then89, %land.lhs.true86.if.end104_crit_edge, %if.then79, %land.lhs.true.if.end104_crit_edge, %if.then74.if.end104_crit_edge, %if.end68.if.end104_crit_edge
  %result.3 = phi i32 [ %spec.select, %if.end68.if.end104_crit_edge ], [ %spec.select155, %land.lhs.true98 ], [ %spec.select, %land.lhs.true86.if.end104_crit_edge ], [ 4, %if.then89 ], [ %spec.select, %land.lhs.true.if.end104_crit_edge ], [ 3, %if.then79 ], [ %spec.select, %if.then74.if.end104_crit_edge ]
  ret i32 %result.3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ntp_tick_adj_setup(ptr noundef %str) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @kstrtoll(ptr noundef %str, i32 noundef 0, ptr noundef nonnull @ntp_tick_adj) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i64, ptr @ntp_tick_adj, align 8
  %shl = shl i64 %0, 32
  store i64 %shl, ptr @ntp_tick_adj, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ntp_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ntp_clear()
  tail call void @hrtimer_init(ptr noundef nonnull @sync_hrtimer, i32 noundef 0, i32 noundef 0) #7
  store ptr @sync_timer_callback, ptr getelementptr inbounds (%struct.hrtimer, ptr @sync_hrtimer, i32 0, i32 2), align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sync_hw_clock(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  %tm.i = alloca %struct.rtc_time, align 4
  %tmp.i = alloca %struct.timespec64, align 8
  %now = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now) #7
  %0 = call ptr @memset(ptr %now, i32 255, i32 16)
  %1 = load i32, ptr @time_status, align 4
  %2 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.not = icmp eq i32 %2, 0
  br i1 %tobool.not.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = load volatile i8, ptr getelementptr inbounds (%struct.hrtimer, ptr @sync_hrtimer, i32 0, i32 4), align 8
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.i.not = icmp eq i8 %4, 0
  br i1 %tobool.i.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @ktime_get_real_ts64(ptr noundef nonnull %now) #7
  %5 = load i32, ptr @sync_hw_clock.offset_nsec, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #7
  %6 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %6)
  %.unpack.i = load i64, ptr %now, align 8
  %.elt15.i = getelementptr inbounds [2 x i64], ptr %now, i32 0, i32 1
  %7 = ptrtoint ptr %.elt15.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %.unpack16.i = load i64, ptr %.elt15.i, align 8
  %lhs.sroa.2.8.extract.shift.i.i = lshr i64 %.unpack16.i, 32
  %lhs.sroa.2.8.extract.trunc.i.i = trunc i64 %lhs.sroa.2.8.extract.shift.i.i to i32
  %8 = call ptr @memset(ptr %tmp.i, i32 255, i32 16)
  %add.i.i = add i64 %.unpack.i, -1
  %add3.i.i = add i32 %5, %lhs.sroa.2.8.extract.trunc.i.i
  %conv.i.i = sext i32 %add3.i.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp.i, i64 noundef %add.i.i, i64 noundef %conv.i.i) #7
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %to_set.sroa.0.0.copyload29 = load i64, ptr %tmp.i, align 8
  %to_set.sroa.9.0.tmp.i.sroa_idx = getelementptr inbounds i8, ptr %tmp.i, i32 8
  %10 = ptrtoint ptr %to_set.sroa.9.0.tmp.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %to_set.sroa.9.0.copyload30 = load i32, ptr %to_set.sroa.9.0.tmp.i.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %to_set.sroa.9.0.copyload30)
  %cmp.i = icmp ult i32 %to_set.sroa.9.0.copyload30, 50000000
  br i1 %cmp.i, label %if.end.if.end4_crit_edge, label %if.end.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 950000000, i32 %to_set.sroa.9.0.copyload30)
  %cmp4.i = icmp ugt i32 %to_set.sroa.9.0.copyload30, 950000000
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.rearm_crit_edge

if.end.i.rearm_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rearm

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add i64 %to_set.sroa.0.0.copyload29, 1
  br label %if.end4

if.end4:                                          ; preds = %if.then5.i, %if.end.if.end4_crit_edge
  %to_set.sroa.0.1.ph = phi i64 [ %inc.i, %if.then5.i ], [ %to_set.sroa.0.0.copyload29, %if.end.if.end4_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @persistent_clock_is_local to i32))
  %11 = load i32, ptr @persistent_clock_is_local, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sys_tz to i32))
  %12 = load i32, ptr @sys_tz, align 4
  %mul = mul i32 %12, 60
  %conv = sext i32 %mul to i64
  %sub = sub i64 %to_set.sroa.0.1.ph, %conv
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %to_set.sroa.0.2 = phi i64 [ %to_set.sroa.0.1.ph, %if.end4.if.end7_crit_edge ], [ %sub, %if.then6 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm.i) #7
  %13 = call ptr @memset(ptr %tm.i, i32 255, i32 36)
  %call.i = call ptr @rtc_class_open(ptr noundef nonnull @.str.7) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %update_rtc.exit.thread, label %if.end.i23

update_rtc.exit.thread:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm.i) #7
  br label %cleanup

if.end.i23:                                       ; preds = %if.end7
  %ops.i = getelementptr inbounds %struct.rtc_device, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 8
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %if.end.i23.update_rtc.exit.thread37_crit_edge, label %lor.lhs.false.i

if.end.i23.update_rtc.exit.thread37_crit_edge:    ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_rtc.exit.thread37

lor.lhs.false.i:                                  ; preds = %if.end.i23
  %set_time.i = getelementptr inbounds %struct.rtc_class_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %set_time.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_time.i, align 4
  %tobool3.not.i = icmp eq ptr %17, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.update_rtc.exit.thread37_crit_edge, label %if.end5.i

lor.lhs.false.i.update_rtc.exit.thread37_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_rtc.exit.thread37

if.end5.i:                                        ; preds = %lor.lhs.false.i
  %18 = load i32, ptr @sync_hw_clock.offset_nsec, align 4
  %set_offset_nsec.i = getelementptr inbounds %struct.rtc_device, ptr %call.i, i32 0, i32 20
  %19 = ptrtoint ptr %set_offset_nsec.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %set_offset_nsec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.i24 = icmp eq i32 %18, %20
  br i1 %cmp.i24, label %update_rtc.exit, label %update_rtc.exit.thread40

update_rtc.exit.thread40:                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  store i32 %20, ptr @sync_hw_clock.offset_nsec, align 4
  call void @rtc_class_close(ptr noundef nonnull %call.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm.i) #7
  br label %rearm

update_rtc.exit.thread37:                         ; preds = %lor.lhs.false.i.update_rtc.exit.thread37_crit_edge, %if.end.i23.update_rtc.exit.thread37_crit_edge
  call void @rtc_class_close(ptr noundef nonnull %call.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm.i) #7
  br label %cleanup

update_rtc.exit:                                  ; preds = %if.end5.i
  call void @rtc_time64_to_tm(i64 noundef %to_set.sroa.0.2, ptr noundef nonnull %tm.i) #7
  %call7.i = call i32 @rtc_set_time(ptr noundef nonnull %call.i, ptr noundef nonnull %tm.i) #7
  call void @rtc_class_close(ptr noundef nonnull %call.i) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call7.i)
  %cmp13 = icmp eq i32 %call7.i, -19
  br i1 %cmp13, label %update_rtc.exit.cleanup_crit_edge, label %update_rtc.exit.rearm_crit_edge

update_rtc.exit.rearm_crit_edge:                  ; preds = %update_rtc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rearm

update_rtc.exit.cleanup_crit_edge:                ; preds = %update_rtc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

rearm:                                            ; preds = %update_rtc.exit.rearm_crit_edge, %update_rtc.exit.thread40, %if.end.i.rearm_crit_edge
  %res.0 = phi i32 [ %call7.i, %update_rtc.exit.rearm_crit_edge ], [ -11, %if.end.i.rearm_crit_edge ], [ -11, %update_rtc.exit.thread40 ]
  %21 = load i32, ptr @sync_hw_clock.offset_nsec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0)
  %cmp17.not = icmp eq i32 %res.0, 0
  %call.i26 = call i64 @ktime_get_real_seconds() #7
  %conv.i = zext i32 %21 to i64
  %spec.select = select i1 %cmp17.not, i64 660000000000, i64 2000000000
  %sub3.i = sub nsw i64 %spec.select, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %call.i26)
  %cmp.i.i = icmp sgt i64 %call.i26, 9223372035
  %mul.i.i = mul i64 %call.i26, 1000000000
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %mul.i.i, !prof !63
  %exp.0.i = add i64 %sub3.i, %retval.0.i.i
  call void @hrtimer_start_range_ns(ptr noundef nonnull @sync_hrtimer, i64 noundef %exp.0.i, i64 noundef 0, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %rearm, %update_rtc.exit.cleanup_crit_edge, %update_rtc.exit.thread37, %update_rtc.exit.thread, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtc_class_open(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_set_time(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_class_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__ktime_get_real_seconds() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sync_timer_callback(ptr nocapture noundef readnone %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_power_efficient_wq to i32))
  %0 = load ptr, ptr @system_freezable_power_efficient_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @sync_work) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind readnone }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @tick_usec, !1, !"tick_usec", i1 false, i1 false}
!1 = !{!"../kernel/time/ntp.c", i32 34, i32 17}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/time/ntp.c", i32 430, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @second_overflow._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @second_overflow._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/time/ntp.c", i32 442, i32 4}
!10 = !{ptr @second_overflow._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @second_overflow._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__setup_ntp_tick_adj_setup, !13, !"__setup_ntp_tick_adj_setup", i1 false, i1 false}
!13 = !{!"../kernel/time/ntp.c", i32 1090, i32 1}
!14 = !{ptr @tick_nsec, !15, !"tick_nsec", i1 false, i1 false}
!15 = !{!"../kernel/time/ntp.c", i32 37, i32 17}
!16 = !{ptr @tick_length, !17, !"tick_length", i1 false, i1 false}
!17 = !{!"../kernel/time/ntp.c", i32 39, i32 14}
!18 = !{ptr @tick_length_base, !19, !"tick_length_base", i1 false, i1 false}
!19 = !{!"../kernel/time/ntp.c", i32 40, i32 14}
!20 = !{ptr @time_offset, !21, !"time_offset", i1 false, i1 false}
!21 = !{!"../kernel/time/ntp.c", i32 63, i32 14}
!22 = !{ptr @time_freq, !23, !"time_freq", i1 false, i1 false}
!23 = !{!"../kernel/time/ntp.c", i32 75, i32 14}
!24 = !{ptr @time_adjust, !25, !"time_adjust", i1 false, i1 false}
!25 = !{!"../kernel/time/ntp.c", i32 80, i32 15}
!26 = !{ptr @sync_hrtimer, !27, !"sync_hrtimer", i1 false, i1 false}
!27 = !{!"../kernel/time/ntp.c", i32 500, i32 23}
!28 = !{ptr @time_status, !29, !"time_status", i1 false, i1 false}
!29 = !{!"../kernel/time/ntp.c", i32 60, i32 14}
!30 = !{ptr @time_maxerror, !31, !"time_maxerror", i1 false, i1 false}
!31 = !{!"../kernel/time/ntp.c", i32 69, i32 15}
!32 = !{ptr @time_esterror, !33, !"time_esterror", i1 false, i1 false}
!33 = !{!"../kernel/time/ntp.c", i32 72, i32 15}
!34 = !{ptr @ntp_tick_adj, !35, !"ntp_tick_adj", i1 false, i1 false}
!35 = !{!"../kernel/time/ntp.c", i32 83, i32 14}
!36 = !{ptr @ntp_next_leap_sec, !37, !"ntp_next_leap_sec", i1 false, i1 false}
!37 = !{!"../kernel/time/ntp.c", i32 86, i32 19}
!38 = !{ptr @time_state, !39, !"time_state", i1 false, i1 false}
!39 = !{!"../kernel/time/ntp.c", i32 57, i32 14}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/time/ntp.c", i32 499, i32 8}
!42 = !{ptr @sync_work, !41, !"sync_work", i1 false, i1 false}
!43 = !{ptr @sync_hw_clock.offset_nsec, !44, !"offset_nsec", i1 false, i1 false}
!44 = !{!"../kernel/time/ntp.c", i32 629, i32 23}
!45 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../kernel/time/ntp.c", i32 587, i32 23}
!47 = !{ptr @time_reftime, !48, !"time_reftime", i1 false, i1 false}
!48 = !{!"../kernel/time/ntp.c", i32 78, i32 18}
!49 = !{ptr @time_constant, !50, !"time_constant", i1 false, i1 false}
!50 = !{!"../kernel/time/ntp.c", i32 66, i32 15}
!51 = !{ptr @__setup_str_ntp_tick_adj_setup, !13, !"__setup_str_ntp_tick_adj_setup", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 601167, i64 601194, i64 601216, i64 601244}
!62 = !{i64 601575, i64 601602, i64 601635, i64 601656, i64 601683, i64 601709}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{!"auto-init"}
!65 = !{!"branch_weights", i32 2000, i32 1}
