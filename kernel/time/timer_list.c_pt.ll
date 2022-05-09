; ModuleID = '/llk/IR_all_yes/kernel/time/timer_list.c_pt.bc'
source_filename = "../kernel/time/timer_list.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i32, i16, i16, i32, i64, ptr, i64, ptr, [8 x %struct.hrtimer_clock_base], [88 x i8] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tick_sched = type { %struct.hrtimer, i32, i32, i8, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, %struct.atomic_t }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tick_device = type { ptr, i32 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list_iter = type { i32, i8, i64 }

@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__initcall__kmod_timer_list__225_359_init_timer_list_procfs6 = internal global ptr @init_timer_list_procfs, section ".initcall6.init", align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Timer List Version: v0.9\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HRTIMER_MAX_CLOCK_BASES: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"now at %Ld nsecs\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@hrtimer_bases = external dso_local global %struct.hrtimer_cpu_base, section ".data..percpu", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu: %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" clock %d:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  .%-15s: %Lu nsecs\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"expires_next\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  .%-15s: %Lu\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hres_active\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nr_events\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nr_retries\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr_hangs\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max_hang_time\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nohz_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"last_tick\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tick_stopped\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idle_jiffies\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"idle_calls\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"idle_sleeps\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idle_entrytime\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idle_waketime\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idle_exittime\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idle_sleeptime\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iowait_sleeptime\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"last_jiffies\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"next_timer\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idle_expires\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jiffies: %Lu\0A\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  .base:       %pK\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  .index:      %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  .resolution: %u nsecs\0A\00", [39 x i8] zeroinitializer }, align 32
@hrtimer_resolution = external dso_local local_unnamed_addr global i32, align 4
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  .get_time:   %ps\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"  .offset:     %Lu nsecs\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"active timers:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" #%d: <%pK>, %ps\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c", S:%02x\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c" # expires at %Lu-%Lu nsecs [in %Ld to %Ld nsecs]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tick_broadcast_mask: %*pb\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tick_broadcast_oneshot_mask: %*pb\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Tick Device: mode:     %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Broadcast device\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Per CPU device: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Clock Event Device: \00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"<NULL>\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" max_delta_ns:   %llu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" min_delta_ns:   %llu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" mult:           %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" shift:          %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" mode:           %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c" next_event:     %Ld nsecs\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" set_next_event: %ps\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" shutdown:       %ps\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" periodic:       %ps\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" oneshot:        %ps\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" oneshot stopped: %ps\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" resume:         %ps\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" event_handler:  %ps\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c" retries:        %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Wakeup Device: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"<NULL>\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"timer_list\00", [21 x i8] zeroinitializer }, align 32
@timer_list_sops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @timer_list_start, ptr @timer_list_stop, ptr @timer_list_next, ptr @timer_list_show }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 259, i32 16 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 260, i32 16 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 261, i32 16 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 262, i32 16 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 120, i32 16 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 122, i32 17 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 133, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 134, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 135, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 136, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 137, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 138, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 152, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 153, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 154, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 155, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 156, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 157, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 158, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 159, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 160, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 161, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 162, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 163, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 164, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 165, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 166, i32 17 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 101, i32 16 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 102, i32 16 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 104, i32 16 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 106, i32 18 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 108, i32 16 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 111, i32 18 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 49, i32 16 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 50, i32 16 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 52, i32 16 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 246, i32 16 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 249, i32 16 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 184, i32 16 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 186, i32 17 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 188, i32 17 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 190, i32 16 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 192, i32 17 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 195, i32 16 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 196, i32 16 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 198, i32 16 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 200, i32 16 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 201, i32 16 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 202, i32 16 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 203, i32 16 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 206, i32 16 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 209, i32 17 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 213, i32 17 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 217, i32 17 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 221, i32 17 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 225, i32 17 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 228, i32 16 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 230, i32 16 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 236, i32 17 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 236, i32 56 }
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 353, i32 31 }
@___asan_gen_.252 = private unnamed_addr constant [16 x i8] c"timer_list_sops\00", align 1
@___asan_gen_.253 = private constant [28 x i8] c"../kernel/time/timer_list.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 342, i32 36 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__initcall__kmod_timer_list__225_359_init_timer_list_procfs6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @timer_list_sops], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_list_sops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sysrq_timer_list_show() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef null, ptr noundef nonnull @.str) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 8) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef null, ptr noundef nonnull @.str.2, i64 noundef %call) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef null, ptr noundef nonnull @.str.3) #8
  %call216 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call216, i32 %0)
  %cmp17 = icmp ult i32 %call216, %0
  br i1 %cmp17, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call218 = phi i32 [ %call2, %for.body.for.body_crit_edge ], [ %call216, %entry.for.body_crit_edge ]
  tail call fastcc void @print_cpu(ptr noundef null, i32 noundef %call218, i64 noundef %call)
  %call2 = tail call i32 @cpumask_next(i32 noundef %call218, ptr noundef nonnull @__cpu_online_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call2, %1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call.i = tail call ptr @tick_get_broadcast_device() #8
  tail call fastcc void @print_tickdevice(ptr noundef null, ptr noundef %call.i, i32 noundef -1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call1.i = tail call ptr @tick_get_broadcast_mask() #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef %2, ptr noundef %call1.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %call2.i = tail call ptr @tick_get_broadcast_oneshot_mask() #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef %3, ptr noundef %call2.i) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef null, ptr noundef nonnull @.str.3) #8
  %call419 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call419, i32 %4)
  %cmp520 = icmp ult i32 %call419, %4
  br i1 %cmp520, label %for.end.for.body6_crit_edge, label %for.end.for.end8_crit_edge

for.end.for.end8_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end8

for.end.for.body6_crit_edge:                      ; preds = %for.end
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.end.for.body6_crit_edge
  %call421 = phi i32 [ %call4, %for.body6.for.body6_crit_edge ], [ %call419, %for.end.for.body6_crit_edge ]
  %call7 = tail call ptr @tick_get_device(i32 noundef %call421) #8
  tail call fastcc void @print_tickdevice(ptr noundef null, ptr noundef %call7, i32 noundef %call421)
  %call4 = tail call i32 @cpumask_next(i32 noundef %call421, ptr noundef nonnull @__cpu_online_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %cmp5 = icmp ult i32 %call4, %5
  br i1 %cmp5, label %for.body6.for.body6_crit_edge, label %for.body6.for.end8_crit_edge

for.body6.for.end8_crit_edge:                     ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end8

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.end8:                                         ; preds = %for.body6.for.end8_crit_edge, %for.end.for.end8_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_cpu(ptr noundef %m, i32 noundef %cpu, i64 noundef %now) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @hrtimer_bases to i32)
  %2 = inttoptr i32 %add to ptr
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.4, i32 noundef %cpu)
  %clock_base = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %print_base.exit.for.body_crit_edge, %entry
  %i.072 = phi i32 [ 0, %entry ], [ %inc, %print_base.exit.for.body_crit_edge ]
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.5, i32 noundef %i.072)
  %add.ptr = getelementptr %struct.hrtimer_clock_base, ptr %clock_base, i32 %i.072
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.29, ptr noundef %add.ptr) #8
  %index.i = getelementptr %struct.hrtimer_clock_base, ptr %clock_base, i32 %i.072, i32 1
  %3 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index.i, align 4
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %4) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hrtimer_resolution to i32))
  %5 = load i32, ptr @hrtimer_resolution, align 4
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %5) #8
  %get_time.i = getelementptr %struct.hrtimer_clock_base, ptr %clock_base, i32 %i.072, i32 6
  %6 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_time.i, align 4
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.32, ptr noundef %7) #8
  %offset.i = getelementptr %struct.hrtimer_clock_base, ptr %clock_base, i32 %i.072, i32 7
  %8 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %offset.i, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.33, i64 noundef %9) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.34) #8
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %offset.i, align 8
  %add.i = add i64 %11, %now
  %rb_leftmost.i.i.i = getelementptr %struct.hrtimer_clock_base, ptr %clock_base, i32 %i.072, i32 5, i32 0, i32 1
  br label %next_one.i.i

next_one.i.i:                                     ; preds = %if.then.i.i, %for.body
  %next.0.i.i = phi i32 [ 0, %for.body ], [ %inc18.i.i, %if.then.i.i ]
  tail call void @touch_softlockup_watchdog() #8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %call.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #8
  %14 = ptrtoint ptr %rb_leftmost.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rb_leftmost.i.i.i, align 4
  %tobool.not41.i.i = icmp eq ptr %15, null
  %tobool.not.not42.i.i = xor i1 %tobool.not41.i.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %next.0.i.i)
  %cmp343.i.i = icmp ne i32 %next.0.i.i, 0
  %or.cond44.i.i = select i1 %tobool.not.not42.i.i, i1 %cmp343.i.i, i1 false
  br i1 %or.cond44.i.i, label %next_one.i.i.while.body.i.i_crit_edge, label %next_one.i.i.while.end.i.i_crit_edge

next_one.i.i.while.end.i.i_crit_edge:             ; preds = %next_one.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

next_one.i.i.while.body.i.i_crit_edge:            ; preds = %next_one.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %next_one.i.i.while.body.i.i_crit_edge
  %i.046.i.i = phi i32 [ %inc.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %next_one.i.i.while.body.i.i_crit_edge ]
  %curr.045.i.i = phi ptr [ %call5.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %15, %next_one.i.i.while.body.i.i_crit_edge ]
  %call5.i.i = tail call ptr @timerqueue_iterate_next(ptr noundef nonnull %curr.045.i.i) #8
  %inc.i.i = add nuw i32 %i.046.i.i, 1
  %tobool.not.i.i = icmp eq ptr %call5.i.i, null
  %tobool.not.not.i.i = xor i1 %tobool.not.i.i, true
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %next.0.i.i)
  %cmp3.i.i = icmp ult i32 %inc.i.i, %next.0.i.i
  %or.cond.i.i = select i1 %tobool.not.not.i.i, i1 %cmp3.i.i, i1 false
  br i1 %or.cond.i.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i.i.while.end.i.i_crit_edge

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %next_one.i.i.while.end.i.i_crit_edge
  %curr.0.lcssa.i.i = phi ptr [ %15, %next_one.i.i.while.end.i.i_crit_edge ], [ %call5.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %i.0.lcssa.i.i = phi i32 [ 0, %next_one.i.i.while.end.i.i_crit_edge ], [ %inc.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  %tobool.not.lcssa.i.i = phi i1 [ %tobool.not41.i.i, %next_one.i.i.while.end.i.i_crit_edge ], [ %tobool.not.i.i, %while.body.i.i.while.end.i.i_crit_edge ]
  br i1 %tobool.not.lcssa.i.i, label %print_base.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %tmp.sroa.4.0.curr.0.sroa_idx.i.i = getelementptr inbounds i8, ptr %curr.0.lcssa.i.i, i32 16
  %16 = ptrtoint ptr %tmp.sroa.4.0.curr.0.sroa_idx.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %tmp.sroa.4.0.copyload.i.i = load i64, ptr %tmp.sroa.4.0.curr.0.sroa_idx.i.i, align 8
  %tmp.sroa.5.0.curr.0.sroa_idx.i.i = getelementptr inbounds i8, ptr %curr.0.lcssa.i.i, i32 24
  %17 = ptrtoint ptr %tmp.sroa.5.0.curr.0.sroa_idx.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %tmp.sroa.5.0.copyload.i.i = load i64, ptr %tmp.sroa.5.0.curr.0.sroa_idx.i.i, align 8
  %tmp.sroa.6.0.curr.0.sroa_idx.i.i = getelementptr inbounds i8, ptr %curr.0.lcssa.i.i, i32 32
  %18 = ptrtoint ptr %tmp.sroa.6.0.curr.0.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %tmp.sroa.6.0.copyload.i.i = load ptr, ptr %tmp.sroa.6.0.curr.0.sroa_idx.i.i, align 8
  %tmp.sroa.740.0.curr.0.sroa_idx.i.i = getelementptr inbounds i8, ptr %curr.0.lcssa.i.i, i32 40
  %19 = ptrtoint ptr %tmp.sroa.740.0.curr.0.sroa_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %tmp.sroa.740.0.copyload.i.i = load i8, ptr %tmp.sroa.740.0.curr.0.sroa_idx.i.i, align 8
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %call.i.i) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.35, i32 noundef %i.0.lcssa.i.i, ptr noundef nonnull %curr.0.lcssa.i.i, ptr noundef %tmp.sroa.6.0.copyload.i.i) #8
  %conv.i.i.i = zext i8 %tmp.sroa.740.0.copyload.i.i to i32
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.36, i32 noundef %conv.i.i.i) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.3) #8
  %sub.i.i.i = sub i64 %tmp.sroa.5.0.copyload.i.i, %add.i
  %sub8.i.i.i = sub i64 %tmp.sroa.4.0.copyload.i.i, %add.i
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.37, i64 noundef %tmp.sroa.5.0.copyload.i.i, i64 noundef %tmp.sroa.4.0.copyload.i.i, i64 noundef %sub.i.i.i, i64 noundef %sub8.i.i.i) #8
  %inc18.i.i = add i32 %next.0.i.i, 1
  br label %next_one.i.i

print_base.exit:                                  ; preds = %while.end.i.i
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %call.i.i) #8
  %inc = add nuw nsw i32 %i.072, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %print_base.exit.for.body_crit_edge

print_base.exit.for.body_crit_edge:               ; preds = %print_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %print_base.exit
  call void @__sanitizer_cov_trace_pc() #10
  %expires_next = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 9
  %24 = ptrtoint ptr %expires_next to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %expires_next, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i64 noundef %25)
  %hres_active = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 4
  %26 = ptrtoint ptr %hres_active to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %hres_active, align 8
  %bf.lshr = lshr i8 %bf.load, 7
  %conv = zext i8 %bf.lshr to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i64 noundef %conv)
  %nr_events = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 5
  %27 = ptrtoint ptr %nr_events to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nr_events, align 4
  %conv2 = zext i32 %28 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, i64 noundef %conv2)
  %nr_retries = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 6
  %29 = ptrtoint ptr %nr_retries to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %nr_retries, align 64
  %conv3 = zext i16 %30 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, i64 noundef %conv3)
  %nr_hangs = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 7
  %31 = ptrtoint ptr %nr_hangs to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %nr_hangs, align 2
  %conv4 = zext i16 %32 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.12, i64 noundef %conv4)
  %max_hang_time = getelementptr inbounds %struct.hrtimer_cpu_base, ptr %2, i32 0, i32 8
  %33 = ptrtoint ptr %max_hang_time to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_hang_time, align 4
  %conv5 = zext i32 %34 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.13, i64 noundef %conv5)
  %call6 = tail call ptr @tick_get_tick_sched(i32 noundef %cpu) #8
  %nohz_mode = getelementptr inbounds %struct.tick_sched, ptr %call6, i32 0, i32 2
  %35 = ptrtoint ptr %nohz_mode to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nohz_mode, align 4
  %conv7 = zext i32 %36 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.14, i64 noundef %conv7)
  %last_tick = getelementptr inbounds %struct.tick_sched, ptr %call6, i32 0, i32 4
  %37 = ptrtoint ptr %last_tick to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %last_tick, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.15, i64 noundef %38)
  %tick_stopped = getelementptr inbounds %struct.tick_sched, ptr %call6, i32 0, i32 3
  %39 = ptrtoint ptr %tick_stopped to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load9 = load i8, ptr %tick_stopped, align 8
  %bf.lshr10 = lshr i8 %bf.load9, 6
  %bf.clear = and i8 %bf.lshr10, 1
  %conv12 = zext i8 %bf.clear to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.16, i64 noundef %conv12)
  %idle_jiffies = getelementptr inbounds %struct.tick_sched, ptr %call6, i32 0, i32 6
  %40 = ptrtoint ptr %idle_jiffies to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %idle_jiffies, align 8
  %conv13 = zext i32 %41 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.17, i64 noundef %conv13)
  %idle_calls = getelementptr inbounds %struct.tick_sched, ptr %call6, i32 0, i32 7
  %42 = ptrtoint ptr %idle_calls to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %idle_calls, align 4
  %conv14 = zext i32 %43 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18, i64 noundef %conv14)
  %idle_sleeps = getelementptr inbounds %struct.tick_sched, ptr %call6, i32 0, i32 8
  %44 = ptrtoint ptr %idle_sleeps to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %idle_sleeps, align 8
  %conv15 = zext i32 %45 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.19, i64 noundef %conv15)
  %idle_entrytime = getelementptr inbounds %struct.tick_sched, ptr %call6, i32 0, i32 9
  %46 = ptrtoint ptr %idle_entrytime to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %idle_entrytime, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20, i64 noundef %47)
  %idle_waketime = getelementptr inbounds %struct.tick_sched, ptr %call6, i32 0, i32 10
  %48 = ptrtoint ptr %idle_waketime to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %idle_waketime, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.21, i64 noundef %49)
  %idle_exittime = getelementptr inbounds %struct.tick_sched, ptr %call6, i32 0, i32 11
  %50 = ptrtoint ptr %idle_exittime to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %idle_exittime, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.22, i64 noundef %51)
  %idle_sleeptime = getelementptr inbounds %struct.tick_sched, ptr %call6, i32 0, i32 12
  %52 = ptrtoint ptr %idle_sleeptime to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %idle_sleeptime, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.23, i64 noundef %53)
  %iowait_sleeptime = getelementptr inbounds %struct.tick_sched, ptr %call6, i32 0, i32 13
  %54 = ptrtoint ptr %iowait_sleeptime to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %iowait_sleeptime, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.24, i64 noundef %55)
  %last_jiffies = getelementptr inbounds %struct.tick_sched, ptr %call6, i32 0, i32 14
  %56 = ptrtoint ptr %last_jiffies to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %last_jiffies, align 8
  %conv21 = zext i32 %57 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.25, i64 noundef %conv21)
  %next_timer = getelementptr inbounds %struct.tick_sched, ptr %call6, i32 0, i32 17
  %58 = ptrtoint ptr %next_timer to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %next_timer, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.26, i64 noundef %59)
  %idle_expires = getelementptr inbounds %struct.tick_sched, ptr %call6, i32 0, i32 18
  %60 = ptrtoint ptr %idle_expires to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %idle_expires, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.27, i64 noundef %61)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %conv23 = zext i32 %62 to i64
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.28, i64 noundef %conv23)
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_tickdevice(ptr noundef %m, ptr nocapture noundef readonly %td, i32 noundef %cpu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %td to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %td, align 4
  tail call void @touch_softlockup_watchdog() #8
  %mode = getelementptr inbounds %struct.tick_device, ptr %td, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.40, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu)
  %cmp = icmp slt i32 %cpu, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.41)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.42, i32 noundef %cpu)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.43)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.45, ptr noundef %5)
  %max_delta_ns = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %max_delta_ns to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %max_delta_ns, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.46, i64 noundef %7)
  %min_delta_ns = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %min_delta_ns to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %min_delta_ns, align 32
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.47, i64 noundef %9)
  %mult = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mult, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.48, i32 noundef %11)
  %shift = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %shift, align 4
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.49, i32 noundef %13)
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state_use_accessors.i, align 16
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.50, i32 noundef %15)
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %next_event to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %next_event, align 16
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.51, i64 noundef %17)
  %set_next_event = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %set_next_event to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_next_event, align 4
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.52, ptr noundef %19)
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 14
  %20 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_state_shutdown, align 8
  %tobool4.not = icmp eq ptr %21, null
  br i1 %tobool4.not, label %if.end2.if.end7_crit_edge, label %if.then5

if.end2.if.end7_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.53, ptr noundef nonnull %21)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end2.if.end7_crit_edge
  %set_state_periodic = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 11
  %22 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %set_state_periodic, align 4
  %tobool8.not = icmp eq ptr %23, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.54, ptr noundef nonnull %23)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %set_state_oneshot = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_state_oneshot, align 64
  %tobool12.not = icmp eq ptr %25, null
  br i1 %tobool12.not, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.55, ptr noundef nonnull %25)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  %set_state_oneshot_stopped = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %set_state_oneshot_stopped to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_state_oneshot_stopped, align 4
  %tobool16.not = icmp eq ptr %27, null
  br i1 %tobool16.not, label %if.end15.if.end19_crit_edge, label %if.then17

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.56, ptr noundef nonnull %27)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end15.if.end19_crit_edge
  %tick_resume = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 15
  %28 = ptrtoint ptr %tick_resume to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tick_resume, align 4
  %tobool20.not = icmp eq ptr %29, null
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.57, ptr noundef nonnull %29)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end19.if.end23_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.58, ptr noundef %31)
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.3)
  %retries = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 10
  %32 = ptrtoint ptr %retries to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %retries, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.59, i32 noundef %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cpu)
  %cmp24 = icmp sgt i32 %cpu, -1
  br i1 %cmp24, label %if.then25, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  %call26 = tail call ptr @tick_get_wakeup_device(i32 noundef %cpu) #8
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.then25.cond.end_crit_edge, label %cond.true

if.then25.cond.end_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %name28 = getelementptr inbounds %struct.clock_event_device, ptr %call26, i32 0, i32 21
  %34 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name28, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then25.cond.end_crit_edge
  %cond = phi ptr [ %35, %cond.true ], [ @.str.61, %if.then25.cond.end_crit_edge ]
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.60, ptr noundef %cond)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end23.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %.str.3.sink = phi ptr [ @.str.44, %if.end.cleanup_crit_edge ], [ @.str.3, %cond.end ], [ @.str.3, %if.end23.cleanup_crit_edge ]
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull %.str.3.sink)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tick_get_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_timer_list_procfs() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.62, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @timer_list_sops, i32 noundef 16, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @SEQ_printf(ptr noundef %m, ptr noundef %fmt, ...) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #8
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !137
  call void @llvm.va_start(ptr nonnull %args)
  %tobool.not = icmp eq ptr %m, null
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load3 = load i32, ptr %args, align 4
  %.fca.0.insert4 = insertvalue [1 x i32] poison, i32 %.fca.0.load3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_vprintf(ptr noundef nonnull %m, ptr noundef %fmt, [1 x i32] %.fca.0.insert4) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = call i32 @vprintk(ptr noundef %fmt, [1 x i32] %.fca.0.insert4) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_vprintf(ptr noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tick_get_tick_sched(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @timerqueue_iterate_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @touch_softlockup_watchdog() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tick_get_broadcast_device() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tick_get_broadcast_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tick_get_broadcast_oneshot_mask() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tick_get_wakeup_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @timer_list_start(ptr nocapture noundef readonly %file, ptr nocapture noundef readonly %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i64 @ktime_get() #8
  %now = getelementptr inbounds %struct.timer_list_iter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %now to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call, ptr %now, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %1, align 8
  %second_pass = getelementptr inbounds %struct.timer_list_iter, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %second_pass to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %second_pass, align 4
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool.not15.i = icmp eq i64 %8, 0
  br i1 %tobool.not15.i, label %if.end.move_iter.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.move_iter.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %move_iter.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %offset.addr.016.i = phi i64 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ %8, %if.end.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 8
  %call.i = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_online_mask) #11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %12)
  %cmp.not.i = icmp ult i32 %call.i, %12
  br i1 %cmp.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %13 = ptrtoint ptr %second_pass to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %second_pass, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool3.not.i = icmp eq i8 %14, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then.i.move_iter.exit_crit_edge

if.then.i.move_iter.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %move_iter.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %1, align 8
  %16 = ptrtoint ptr %second_pass to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %second_pass, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %for.body.i.for.inc.i_crit_edge
  %dec.i = add i64 %offset.addr.016.i, -1
  %tobool.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool.not.i, label %for.inc.i.move_iter.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.move_iter.exit_crit_edge:               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %move_iter.exit

move_iter.exit:                                   ; preds = %for.inc.i.move_iter.exit_crit_edge, %if.then.i.move_iter.exit_crit_edge, %if.end.move_iter.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %if.end.move_iter.exit_crit_edge ], [ null, %if.then.i.move_iter.exit_crit_edge ], [ %1, %for.inc.i.move_iter.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @timer_list_stop(ptr nocapture noundef %seq, ptr nocapture noundef %v) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @timer_list_next(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %v, ptr nocapture noundef %offset) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %offset, align 8
  %second_pass.i = getelementptr inbounds %struct.timer_list_iter, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %call.i = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_online_mask) #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i, ptr %1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %7)
  %cmp.not.i = icmp ult i32 %call.i, %7
  br i1 %cmp.not.i, label %entry.move_iter.exit_crit_edge, label %if.then.i

entry.move_iter.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %move_iter.exit

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %second_pass.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %second_pass.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not.i = icmp eq i8 %9, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then.i.move_iter.exit_crit_edge

if.then.i.move_iter.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %move_iter.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %1, align 8
  %11 = ptrtoint ptr %second_pass.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %second_pass.i, align 4
  br label %move_iter.exit

move_iter.exit:                                   ; preds = %if.then4.i, %if.then.i.move_iter.exit_crit_edge, %entry.move_iter.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then.i.move_iter.exit_crit_edge ], [ %1, %if.then4.i ], [ %1, %entry.move_iter.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timer_list_show(ptr noundef %m, ptr nocapture noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  %second_pass = getelementptr inbounds %struct.timer_list_iter, ptr %v, i32 0, i32 1
  %2 = ptrtoint ptr %second_pass to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %second_pass, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %cmp, label %land.lhs.true, label %if.else.thread

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %now = getelementptr inbounds %struct.timer_list_iter, ptr %v, i32 0, i32 2
  %4 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %now, align 8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.1, i32 noundef 8) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.2, i64 noundef %5) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.3) #8
  br label %if.end17

if.else:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %second_pass to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %second_pass, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.else.if.then3_crit_edge, label %if.then12

if.else.if.then3_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.else.thread:                                   ; preds = %entry
  br i1 %tobool.not, label %if.else.thread.if.then3_crit_edge, label %if.else13

if.else.thread.if.then3_crit_edge:                ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %if.else.thread.if.then3_crit_edge, %if.else.if.then3_crit_edge
  %now5 = getelementptr inbounds %struct.timer_list_iter, ptr %v, i32 0, i32 2
  %8 = ptrtoint ptr %now5 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %now5, align 8
  tail call fastcc void @print_cpu(ptr noundef %m, i32 noundef %1, i64 noundef %9)
  br label %if.end17

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @tick_get_broadcast_device() #8
  tail call fastcc void @print_tickdevice(ptr noundef %m, ptr noundef %call.i, i32 noundef -1) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call1.i = tail call ptr @tick_get_broadcast_mask() #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.38, i32 noundef %10, ptr noundef %call1.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %call2.i = tail call ptr @tick_get_broadcast_oneshot_mask() #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %11, ptr noundef %call2.i) #8
  tail call void (ptr, ptr, ...) @SEQ_printf(ptr noundef %m, ptr noundef nonnull @.str.3) #8
  br label %if.end17

if.else13:                                        ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @tick_get_device(i32 noundef %1) #8
  %12 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %v, align 8
  tail call fastcc void @print_tickdevice(ptr noundef %m, ptr noundef %call, i32 noundef %13)
  br label %if.end17

if.end17:                                         ; preds = %if.else13, %if.then12, %if.then3, %if.then
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__initcall__kmod_timer_list__225_359_init_timer_list_procfs6, !1, !"__initcall__kmod_timer_list__225_359_init_timer_list_procfs6", i1 false, i1 false}
!1 = !{!"../kernel/time/timer_list.c", i32 359, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/time/timer_list.c", i32 259, i32 16}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/time/timer_list.c", i32 260, i32 16}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../kernel/time/timer_list.c", i32 261, i32 16}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/time/timer_list.c", i32 262, i32 16}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/time/timer_list.c", i32 120, i32 16}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/time/timer_list.c", i32 122, i32 17}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/time/timer_list.c", i32 133, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../kernel/time/timer_list.c", i32 134, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/time/timer_list.c", i32 135, i32 2}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/time/timer_list.c", i32 136, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/time/timer_list.c", i32 137, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/time/timer_list.c", i32 138, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/time/timer_list.c", i32 152, i32 3}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/time/timer_list.c", i32 153, i32 3}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/time/timer_list.c", i32 154, i32 3}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/time/timer_list.c", i32 155, i32 3}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/time/timer_list.c", i32 156, i32 3}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/time/timer_list.c", i32 157, i32 3}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/time/timer_list.c", i32 158, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/time/timer_list.c", i32 159, i32 3}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/time/timer_list.c", i32 160, i32 3}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/time/timer_list.c", i32 161, i32 3}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/time/timer_list.c", i32 162, i32 3}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../kernel/time/timer_list.c", i32 163, i32 3}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/time/timer_list.c", i32 164, i32 3}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/time/timer_list.c", i32 165, i32 3}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/time/timer_list.c", i32 166, i32 17}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../kernel/time/timer_list.c", i32 101, i32 16}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/time/timer_list.c", i32 102, i32 16}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../kernel/time/timer_list.c", i32 104, i32 16}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../kernel/time/timer_list.c", i32 106, i32 18}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/time/timer_list.c", i32 108, i32 16}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../kernel/time/timer_list.c", i32 111, i32 18}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/time/timer_list.c", i32 49, i32 16}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../kernel/time/timer_list.c", i32 50, i32 16}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../kernel/time/timer_list.c", i32 52, i32 16}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/time/timer_list.c", i32 246, i32 16}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../kernel/time/timer_list.c", i32 249, i32 16}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/time/timer_list.c", i32 184, i32 16}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/time/timer_list.c", i32 186, i32 17}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../kernel/time/timer_list.c", i32 188, i32 17}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../kernel/time/timer_list.c", i32 190, i32 16}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../kernel/time/timer_list.c", i32 192, i32 17}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../kernel/time/timer_list.c", i32 195, i32 16}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../kernel/time/timer_list.c", i32 196, i32 16}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../kernel/time/timer_list.c", i32 198, i32 16}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../kernel/time/timer_list.c", i32 200, i32 16}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../kernel/time/timer_list.c", i32 201, i32 16}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../kernel/time/timer_list.c", i32 202, i32 16}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../kernel/time/timer_list.c", i32 203, i32 16}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../kernel/time/timer_list.c", i32 206, i32 16}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../kernel/time/timer_list.c", i32 209, i32 17}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../kernel/time/timer_list.c", i32 213, i32 17}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../kernel/time/timer_list.c", i32 217, i32 17}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../kernel/time/timer_list.c", i32 221, i32 17}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../kernel/time/timer_list.c", i32 225, i32 17}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../kernel/time/timer_list.c", i32 228, i32 16}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../kernel/time/timer_list.c", i32 230, i32 16}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../kernel/time/timer_list.c", i32 236, i32 17}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../kernel/time/timer_list.c", i32 236, i32 56}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../kernel/time/timer_list.c", i32 353, i32 31}
!126 = !{ptr @timer_list_sops, !127, !"timer_list_sops", i1 false, i1 false}
!127 = !{!"../kernel/time/timer_list.c", i32 342, i32 36}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{!"auto-init"}
!138 = !{i8 0, i8 2}
