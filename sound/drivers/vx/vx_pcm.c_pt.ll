; ModuleID = '/llk/IR_all_yes/sound/drivers/vx/vx_pcm.c_pt.bc'
source_filename = "../sound/drivers/vx/vx_pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.vx_rmh = type { i16, i16, [16 x i32], [16 x i32], i16 }
%struct.vx_core = type { ptr, [2 x ptr], i32, i32, ptr, ptr, %struct.mutex, i32, i32, ptr, ptr, %struct.vx_rmh, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vx_ibl_info, [2 x [2 x i32]], [2 x [4 x i32]], [4 x i8], [4 x i32], [4 x i8], %struct.mutex, [4 x ptr] }
%struct.vx_ibl_info = type { i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vx_pipe = type { i32, i8, i32, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i64, i32, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_pcm_mmap_status = type { i32, i32, [4 x i8], i32, [0 x i8], %struct.__kernel_timespec, i32, i32, %struct.__kernel_timespec }
%struct.__kernel_timespec = type { i64, i64 }
%struct.snd_pcm_mmap_control = type { [4 x i8], i32, [4 x i8], [4 x i8], i32, [0 x i8] }
%struct.snd_vx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_vx_hardware = type { ptr, i32, i32, i32, i32, i32, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/drivers/vx/vx_pcm.c\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013msg send error!!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VX PCM\00", [25 x i8] zeroinitializer }, align 32
@vx_pcm_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @vx_pcm_playback_open, ptr @vx_pcm_playback_close, ptr null, ptr null, ptr null, ptr @vx_pcm_prepare, ptr @vx_pcm_trigger, ptr null, ptr @vx_pcm_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@vx_pcm_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @vx_pcm_capture_open, ptr @vx_pcm_capture_close, ptr null, ptr null, ptr null, ptr @vx_pcm_prepare, ptr @vx_pcm_trigger, ptr null, ptr @vx_pcm_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"error hbuffer\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no enough hbuffer space %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013vx: cannot get the supported audio data\0A\00", [53 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017vx_set_ibl: size = %d, max = %d, min = %d, gran = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@vx_pcm_playback_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 524547, i64 4294967300, i32 1073742078, i32 5000, i32 48000, i32 1, i32 2, i32 131072, i32 126, i32 131072, i32 2, i32 32, i32 126 }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017reopen the pipe with data_mode = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013vx: cannot set different clock %d from the current %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@vx_pcm_trigger.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str, ptr @.str.12, i8 0, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_vx_lib\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vx_pcm_trigger\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vx: cannot start stream\0A\00", [39 x i8] zeroinitializer }, align 32
@vx_pcm_trigger.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str, ptr @.str.13, i8 0, i8 -72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vx: cannot start pipe\0A\00", [41 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@vx_pcm_capture_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 524547, i64 4294967300, i32 1073742078, i32 5000, i32 48000, i32 1, i32 2, i32 131072, i32 126, i32 131072, i32 2, i32 32, i32 126 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@__sancov_gen_cov_switch_values.14 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1094, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1209, i32 33 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"vx_pcm_playback_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 850, i32 33 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"vx_pcm_capture_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1067, i32 33 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 619, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 624, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1144, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 193, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"vx_pcm_playback_hw\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 489, i32 38 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 798, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 815, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 169, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 733, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 738, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"vx_pcm_capture_hw\00", align 1
@___asan_gen_.67 = private constant [29 x i8] c"../sound/drivers/vx/vx_pcm.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 863, i32 38 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @vx_pcm_playback_ops, ptr @vx_pcm_capture_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @vx_pcm_playback_hw, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @vx_pcm_capture_hw], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_pcm_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_pcm_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_pcm_playback_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx_pcm_capture_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vx_pcm_update_intr(ptr noundef %chip, i32 noundef %events) local_unnamed_addr #0 align 64 {
entry:
  %rmh.i.i151 = alloca %struct.vx_rmh, align 4
  %rmh.i.i = alloca %struct.vx_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %events, 33792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end90_crit_edge, label %if.then

entry.if.end90_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then:                                          ; preds = %entry
  %irq_rmh = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 11
  tail call void @vx_init_rmh(ptr noundef %irq_rmh, i32 noundef 5) #8
  %and1 = and i32 %events, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %Cmd = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 11, i32 2
  %0 = ptrtoint ptr %Cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %Cmd, align 4
  %or = or i32 %1, 1
  store i32 %or, ptr %Cmd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %and5 = and i32 %events, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %Cmd9 = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 11, i32 2
  %2 = ptrtoint ptr %Cmd9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %Cmd9, align 4
  %or11 = or i32 %3, 2
  store i32 %or11, ptr %Cmd9, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %call = tail call i32 @vx_send_msg(ptr noundef %chip, ptr noundef %irq_rmh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then14, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end12
  %LgStat = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %LgStat to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %LgStat, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp17185 = icmp ugt i16 %5, 1
  br i1 %cmp17185, label %while.body.lr.ph, label %while.cond.preheader.if.end90_crit_edge

while.cond.preheader.if.end90_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %spec.select.v = select i1 %tobool2.not, i32 1, i32 2
  %audio_outs = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 14
  %playback_pipes = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 15
  %chip_status.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 7
  %Cmd.i.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i.i, i32 0, i32 2
  %Stat.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i.i, i32 0, i32 3
  %arrayidx2.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i.i, i32 0, i32 3, i32 1
  br label %while.body

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 1094, ptr noundef nonnull @.str.1) #8
  br label %cleanup102

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %i.0186 = phi i32 [ 1, %while.body.lr.ph ], [ %i.2, %cleanup.while.body_crit_edge ]
  %arrayidx20 = getelementptr %struct.vx_core, ptr %chip, i32 0, i32 11, i32 3, i32 %i.0186
  %6 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx20, align 4
  %and21 = and i32 %7, 31
  %and25 = and i32 %7, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %spec.select = add i32 %i.0186, %spec.select.v
  br i1 %tobool6.not, label %while.body.if.end48_crit_edge, label %if.then40

while.body.if.end48_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then40:                                        ; preds = %while.body
  %and30 = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then40.if.end46_crit_edge, label %if.then42

if.then40.if.end46_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then42:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx45 = getelementptr %struct.vx_core, ptr %chip, i32 0, i32 11, i32 3, i32 %spec.select
  %8 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx45, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then42, %if.then40.if.end46_crit_edge
  %buf.0 = phi i32 [ %9, %if.then42 ], [ 1, %if.then40.if.end46_crit_edge ]
  %inc47 = add i32 %spec.select, 1
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %while.body.if.end48_crit_edge
  %buf.1 = phi i32 [ %buf.0, %if.end46 ], [ 1, %while.body.if.end48_crit_edge ]
  %i.2 = phi i32 [ %inc47, %if.end46 ], [ %spec.select, %while.body.if.end48_crit_edge ]
  br i1 %tobool26.not, label %lor.rhs, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs:                                          ; preds = %if.end48
  %10 = ptrtoint ptr %audio_outs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %audio_outs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %11)
  %cmp54.not = icmp ult i32 %and21, %11
  br i1 %cmp54.not, label %if.end79, label %do.end, !prof !44

do.end:                                           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1115, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end79:                                         ; preds = %lor.rhs
  %12 = ptrtoint ptr %playback_pipes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %playback_pipes, align 4
  %arrayidx80 = getelementptr ptr, ptr %13, i32 %and21
  %14 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx80, align 4
  %tobool81.not = icmp eq ptr %15, null
  br i1 %tobool81.not, label %if.end79.cleanup_crit_edge, label %land.lhs.true

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end79
  %substream = getelementptr inbounds %struct.vx_pipe, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %substream, align 8
  %tobool82.not = icmp eq ptr %17, null
  br i1 %tobool82.not, label %land.lhs.true.cleanup_crit_edge, label %if.then83

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then83:                                        ; preds = %land.lhs.true
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %runtime1.i, align 4
  %running.i = getelementptr inbounds %struct.vx_pipe, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %running.i, align 4
  %21 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.then83.vx_pcm_playback_update.exit_crit_edge, label %land.lhs.true.i

if.then83.vx_pcm_playback_update.exit_crit_edge:  ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_pcm_playback_update.exit

land.lhs.true.i:                                  ; preds = %if.then83
  %22 = ptrtoint ptr %chip_status.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chip_status.i, align 4
  %and.i = and i32 %23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.vx_pcm_playback_update.exit_crit_edge

land.lhs.true.i.vx_pcm_playback_update.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_pcm_playback_update.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i.i) #8
  %24 = call ptr @memset(ptr %rmh.i.i, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i.i, i32 noundef 46) #8
  %25 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load.i.i = load i8, ptr %running.i, align 4
  %26 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.then.i.vx_set_pipe_cmd_params.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.vx_set_pipe_cmd_params.exit.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_set_pipe_cmd_params.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %Cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %Cmd.i.i.i, align 4
  %or.i.i.i = or i32 %29, 2048
  store i32 %or.i.i.i, ptr %Cmd.i.i.i, align 4
  br label %vx_set_pipe_cmd_params.exit.i.i

vx_set_pipe_cmd_params.exit.i.i:                  ; preds = %if.then.i.i.i, %if.then.i.vx_set_pipe_cmd_params.exit.i.i_crit_edge
  %and.i.i.i = shl i32 %27, 5
  %shl.i.i.i = and i32 %and.i.i.i, 992
  %30 = ptrtoint ptr %Cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %Cmd.i.i.i, align 4
  %storemerge.i.i.i = or i32 %31, %shl.i.i.i
  store i32 %storemerge.i.i.i, ptr %Cmd.i.i.i, align 4
  %call.i.i = call i32 @vx_send_msg(ptr noundef %chip, ptr noundef nonnull %rmh.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %vx_update_pipe_position.exit.thread.i, label %if.end.i.i

vx_update_pipe_position.exit.thread.i:            ; preds = %vx_set_pipe_cmd_params.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i.i) #8
  br label %vx_pcm_playback_update.exit

if.end.i.i:                                       ; preds = %vx_set_pipe_cmd_params.exit.i.i
  %32 = ptrtoint ptr %Stat.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %Stat.i.i, align 4
  %and.i.i = and i32 %33, 1048575
  %conv.i.i = zext i32 %and.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 24
  %34 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx2.i.i, align 4
  %conv3.i.i = zext i32 %35 to i64
  %or.i.i = or i64 %shl.i.i, %conv3.i.i
  %cur_count.i.i = getelementptr inbounds %struct.vx_pipe, ptr %15, i32 0, i32 13
  %36 = ptrtoint ptr %cur_count.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %cur_count.i.i, align 8
  %sub.i.i = sub i64 %or.i.i, %37
  %conv4.i.i = trunc i64 %sub.i.i to i32
  store i64 %or.i.i, ptr %cur_count.i.i, align 8
  %position.i.i = getelementptr inbounds %struct.vx_pipe, ptr %15, i32 0, i32 10
  %38 = ptrtoint ptr %position.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %position.i.i, align 4
  %add.i.i = add i32 %39, %conv4.i.i
  store i32 %add.i.i, ptr %position.i.i, align 4
  %buffer_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 18
  %40 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buffer_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %41)
  %cmp7.not.i.i = icmp slt i32 %add.i.i, %41
  br i1 %cmp7.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.then9.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i.i = urem i32 %add.i.i, %41
  %42 = ptrtoint ptr %position.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %rem.i.i, ptr %position.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then9.i.i, %if.end.i.i.if.end.i_crit_edge
  %transferred.i.i = getelementptr inbounds %struct.vx_pipe, ptr %15, i32 0, i32 11
  %43 = ptrtoint ptr %transferred.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %transferred.i.i, align 8
  %add13.i.i = add i32 %44, %conv4.i.i
  store i32 %add13.i.i, ptr %transferred.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i.i) #8
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 16
  %45 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %period_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i.i, i32 %46)
  %cmp4.not.i = icmp slt i32 %add13.i.i, %46
  br i1 %cmp4.not.i, label %if.end.i.vx_pcm_playback_update.exit_crit_edge, label %if.then5.i

if.end.i.vx_pcm_playback_update.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_pcm_playback_update.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i = urem i32 %add13.i.i, %46
  %47 = ptrtoint ptr %transferred.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %rem.i, ptr %transferred.i.i, align 8
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %17) #8
  br label %vx_pcm_playback_update.exit

vx_pcm_playback_update.exit:                      ; preds = %if.then5.i, %if.end.i.vx_pcm_playback_update.exit_crit_edge, %vx_update_pipe_position.exit.thread.i, %land.lhs.true.i.vx_pcm_playback_update.exit_crit_edge, %if.then83.vx_pcm_playback_update.exit_crit_edge
  %48 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %substream, align 8
  call fastcc void @vx_pcm_playback_transfer(ptr noundef %chip, ptr noundef %49, ptr noundef nonnull %15, i32 noundef %buf.1)
  br label %cleanup

cleanup:                                          ; preds = %vx_pcm_playback_update.exit, %land.lhs.true.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %do.end, %if.end48.cleanup_crit_edge
  %50 = ptrtoint ptr %LgStat to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %LgStat, align 2
  %conv = zext i16 %51 to i32
  %cmp17 = icmp ult i32 %i.2, %conv
  br i1 %cmp17, label %cleanup.while.body_crit_edge, label %cleanup.if.end90_crit_edge

cleanup.if.end90_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end90:                                         ; preds = %cleanup.if.end90_crit_edge, %while.cond.preheader.if.end90_crit_edge, %entry.if.end90_crit_edge
  %audio_ins = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 13
  %52 = ptrtoint ptr %audio_ins to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %audio_ins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp91187.not = icmp eq i32 %53, 0
  br i1 %cmp91187.not, label %if.end90.cleanup102_crit_edge, label %for.body.lr.ph

if.end90.cleanup102_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup102

for.body.lr.ph:                                   ; preds = %if.end90
  %capture_pipes = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 16
  %chip_status.i156 = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 7
  %Cmd.i.i.i165 = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i.i151, i32 0, i32 2
  %Stat.i.i174 = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i.i151, i32 0, i32 3
  %ops.i.i.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.3188 = phi i32 [ 0, %for.body.lr.ph ], [ %inc101, %for.inc.for.body_crit_edge ]
  %54 = ptrtoint ptr %capture_pipes to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %capture_pipes, align 4
  %arrayidx93 = getelementptr ptr, ptr %55, i32 %i.3188
  %56 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx93, align 4
  %tobool94.not = icmp eq ptr %57, null
  br i1 %tobool94.not, label %for.body.for.inc_crit_edge, label %land.lhs.true95

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true95:                                  ; preds = %for.body
  %substream96 = getelementptr inbounds %struct.vx_pipe, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %substream96 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %substream96, align 8
  %tobool97.not = icmp eq ptr %59, null
  br i1 %tobool97.not, label %land.lhs.true95.for.inc_crit_edge, label %if.then98

land.lhs.true95.for.inc_crit_edge:                ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then98:                                        ; preds = %land.lhs.true95
  %runtime1.i152 = getelementptr inbounds %struct.snd_pcm_substream, ptr %59, i32 0, i32 11
  %60 = ptrtoint ptr %runtime1.i152 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %runtime1.i152, align 4
  %running.i153 = getelementptr inbounds %struct.vx_pipe, ptr %57, i32 0, i32 1
  %62 = ptrtoint ptr %running.i153 to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load.i154 = load i8, ptr %running.i153, align 4
  %63 = and i8 %bf.load.i154, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i155 = icmp eq i8 %63, 0
  br i1 %tobool.not.i155, label %if.then98.for.inc_crit_edge, label %lor.lhs.false.i

if.then98.for.inc_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.i:                                  ; preds = %if.then98
  %64 = ptrtoint ptr %chip_status.i156 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %chip_status.i156, align 4
  %and.i157 = and i32 %65, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i157)
  %tobool2.not.i158 = icmp eq i32 %and.i157, 0
  br i1 %tobool2.not.i158, label %if.end.i161, label %lor.lhs.false.i.for.inc_crit_edge

lor.lhs.false.i.for.inc_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i161:                                      ; preds = %lor.lhs.false.i
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %61, i32 0, i32 18
  %66 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %buffer_size.i, align 4
  %status.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %61, i32 0, i32 37
  %68 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %status.i.i, align 4
  %hw_ptr.i.i = getelementptr inbounds %struct.snd_pcm_mmap_status, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %hw_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hw_ptr.i.i, align 4
  %control.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %61, i32 0, i32 38
  %72 = ptrtoint ptr %control.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %control.i.i, align 8
  %appl_ptr.i.i = getelementptr inbounds %struct.snd_pcm_mmap_control, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %appl_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %appl_ptr.i.i, align 4
  %sub.i.i159 = sub i32 %71, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i159)
  %cmp.i.i160 = icmp slt i32 %sub.i.i159, 0
  br i1 %cmp.i.i160, label %if.then.i.i, label %if.end.i161.snd_pcm_capture_avail.exit.i_crit_edge

if.end.i161.snd_pcm_capture_avail.exit.i_crit_edge: ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_pcm_capture_avail.exit.i

if.then.i.i:                                      ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #10
  %boundary.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %61, i32 0, i32 33
  %76 = ptrtoint ptr %boundary.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %boundary.i.i, align 8
  %add.i.i162 = add i32 %77, %sub.i.i159
  br label %snd_pcm_capture_avail.exit.i

snd_pcm_capture_avail.exit.i:                     ; preds = %if.then.i.i, %if.end.i161.snd_pcm_capture_avail.exit.i_crit_edge
  %avail.0.i.i = phi i32 [ %add.i.i162, %if.then.i.i ], [ %sub.i.i159, %if.end.i161.snd_pcm_capture_avail.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %avail.0.i.i)
  %tobool3.not.i = icmp eq i32 %67, %avail.0.i.i
  br i1 %tobool3.not.i, label %snd_pcm_capture_avail.exit.i.for.inc_crit_edge, label %if.end5.i

snd_pcm_capture_avail.exit.i.for.inc_crit_edge:   ; preds = %snd_pcm_capture_avail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end5.i:                                        ; preds = %snd_pcm_capture_avail.exit.i
  %sub.i = sub i32 %67, %avail.0.i.i
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %61, i32 0, i32 21
  %78 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %79, %sub.i
  %div1.i.i = lshr i32 %mul.i.i, 3
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i.i151) #8
  %80 = call ptr @memset(ptr %rmh.i.i151, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i.i151, i32 noundef 15) #8
  %81 = ptrtoint ptr %running.i153 to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load.i.i163 = load i8, ptr %running.i153, align 4
  %82 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %57, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i163)
  %tobool.not.i.i.i164 = icmp sgt i8 %bf.load.i.i163, -1
  br i1 %tobool.not.i.i.i164, label %if.end5.i.vx_set_pipe_cmd_params.exit.i.i173_crit_edge, label %if.then.i.i.i167

if.end5.i.vx_set_pipe_cmd_params.exit.i.i173_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_set_pipe_cmd_params.exit.i.i173

if.then.i.i.i167:                                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %Cmd.i.i.i165 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %Cmd.i.i.i165, align 4
  %or.i.i.i166 = or i32 %85, 2048
  store i32 %or.i.i.i166, ptr %Cmd.i.i.i165, align 4
  br label %vx_set_pipe_cmd_params.exit.i.i173

vx_set_pipe_cmd_params.exit.i.i173:               ; preds = %if.then.i.i.i167, %if.end5.i.vx_set_pipe_cmd_params.exit.i.i173_crit_edge
  %and.i.i.i168 = shl i32 %83, 5
  %shl.i.i.i169 = and i32 %and.i.i.i168, 992
  %86 = ptrtoint ptr %Cmd.i.i.i165 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %Cmd.i.i.i165, align 4
  %bf.load.lobit.i.i = lshr i8 %bf.load.i.i163, 7
  %88 = zext i8 %bf.load.lobit.i.i to i32
  %storemerge.i.i.i171 = or i32 %shl.i.i.i169, %88
  %spec.select.i.i = or i32 %storemerge.i.i.i171, %87
  store i32 %spec.select.i.i, ptr %Cmd.i.i.i165, align 4
  %call.i.i172 = call i32 @vx_send_msg(ptr noundef %chip, ptr noundef nonnull %rmh.i.i151) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i172)
  %tobool5.not.i.i = icmp eq i32 %call.i.i172, 0
  br i1 %tobool5.not.i.i, label %vx_query_hbuffer_size.exit.thread.i, label %vx_query_hbuffer_size.exit.i

vx_query_hbuffer_size.exit.thread.i:              ; preds = %vx_set_pipe_cmd_params.exit.i.i173
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %Stat.i.i174 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %Stat.i.i174, align 4
  %and.i.i175 = and i32 %90, 65535
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i.i151) #8
  br label %if.end9.i

vx_query_hbuffer_size.exit.i:                     ; preds = %vx_set_pipe_cmd_params.exit.i.i173
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i.i151) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i172)
  %cmp.i = icmp slt i32 %call.i.i172, 0
  br i1 %cmp.i, label %vx_query_hbuffer_size.exit.i._error.i_crit_edge, label %vx_query_hbuffer_size.exit.i.if.end9.i_crit_edge

vx_query_hbuffer_size.exit.i.if.end9.i_crit_edge: ; preds = %vx_query_hbuffer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

vx_query_hbuffer_size.exit.i._error.i_crit_edge:  ; preds = %vx_query_hbuffer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_error.i

if.end9.i:                                        ; preds = %vx_query_hbuffer_size.exit.i.if.end9.i_crit_edge, %vx_query_hbuffer_size.exit.thread.i
  %result.0.i167.i = phi i32 [ %and.i.i175, %vx_query_hbuffer_size.exit.thread.i ], [ %call.i.i172, %vx_query_hbuffer_size.exit.i.if.end9.i_crit_edge ]
  %91 = call i32 @llvm.umin.i32(i32 %div1.i.i, i32 %result.0.i167.i) #8
  %92 = urem i32 %91, 3
  %mul.i = sub nsw i32 %91, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %mul.i)
  %cmp13.i = icmp slt i32 %mul.i, 6
  br i1 %cmp13.i, label %if.end9.i._error.i_crit_edge, label %if.end15.i

if.end9.i._error.i_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_error.i

if.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %mul.i)
  %cmp17172.not.i = icmp eq i32 %mul.i, 6
  br i1 %cmp17172.not.i, label %if.end15.i.while.end46.i_crit_edge, label %while.body.lr.ph.i

if.end15.i.while.end46.i_crit_edge:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end46.i

while.body.lr.ph.i:                               ; preds = %if.end15.i
  %sub16.i = add nsw i32 %mul.i, -6
  %hw_ptr.i = getelementptr inbounds %struct.vx_pipe, ptr %57, i32 0, i32 9
  %align.i = getelementptr inbounds %struct.vx_pipe, ptr %57, i32 0, i32 12
  %dma_area.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %61, i32 0, i32 50
  %buffer_bytes.i.i = getelementptr inbounds %struct.vx_pipe, ptr %57, i32 0, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %vx_pcm_read_per_bytes.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %count.0173.i = phi i32 [ %sub16.i, %while.body.lr.ph.i ], [ %sub25.i, %vx_pcm_read_per_bytes.exit.i.while.body.i_crit_edge ]
  %93 = ptrtoint ptr %hw_ptr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %hw_ptr.i, align 8
  %95 = ptrtoint ptr %align.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %align.i, align 4
  %rem.i176 = srem i32 %94, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i176)
  %cmp18.i = icmp eq i32 %rem.i176, 0
  br i1 %cmp18.i, label %if.then27.critedge.i, label %if.end20.i

if.end20.i:                                       ; preds = %while.body.i
  %call21.i = call i32 @snd_vx_check_reg_bit(ptr noundef %chip, i32 noundef 2, i32 noundef 1, i32 noundef 1, i32 noundef 200) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.end20.i._error.i_crit_edge, label %if.end24.i

if.end20.i._error.i_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_error.i

if.end24.i:                                       ; preds = %if.end20.i
  %97 = ptrtoint ptr %hw_ptr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %hw_ptr.i, align 8
  %99 = ptrtoint ptr %dma_area.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dma_area.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %100, i32 %98
  %101 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ops.i.i.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %call.i.i.i = call zeroext i8 %104(ptr noundef %chip, i32 noundef 4) #8
  %incdec.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %105 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %call.i.i.i, ptr %add.ptr.i.i, align 1
  %inc.i.i = add i32 %98, 1
  %106 = ptrtoint ptr %buffer_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %buffer_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %107)
  %cmp.not.i.i = icmp slt i32 %inc.i.i, %107
  br i1 %cmp.not.i.i, label %if.end24.i.if.end.i.i177_crit_edge, label %if.then.i114.i

if.end24.i.if.end.i.i177_crit_edge:               ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i177

if.then.i114.i:                                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %dma_area.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dma_area.i.i, align 4
  br label %if.end.i.i177

if.end.i.i177:                                    ; preds = %if.then.i114.i, %if.end24.i.if.end.i.i177_crit_edge
  %offset.0.i.i = phi i32 [ 0, %if.then.i114.i ], [ %inc.i.i, %if.end24.i.if.end.i.i177_crit_edge ]
  %buf.0.i.i = phi ptr [ %109, %if.then.i114.i ], [ %incdec.ptr.i.i, %if.end24.i.if.end.i.i177_crit_edge ]
  %110 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ops.i.i.i, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %call.i33.i.i = call zeroext i8 %113(ptr noundef %chip, i32 noundef 5) #8
  %incdec.ptr3.i.i = getelementptr i8, ptr %buf.0.i.i, i32 1
  %114 = ptrtoint ptr %buf.0.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %call.i33.i.i, ptr %buf.0.i.i, align 1
  %inc4.i.i = add nsw i32 %offset.0.i.i, 1
  %115 = ptrtoint ptr %buffer_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %buffer_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc4.i.i, i32 %116)
  %cmp6.not.i.i = icmp slt i32 %inc4.i.i, %116
  br i1 %cmp6.not.i.i, label %if.end.i.i177.vx_pcm_read_per_bytes.exit.i_crit_edge, label %if.then7.i.i

if.end.i.i177.vx_pcm_read_per_bytes.exit.i_crit_edge: ; preds = %if.end.i.i177
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_pcm_read_per_bytes.exit.i

if.then7.i.i:                                     ; preds = %if.end.i.i177
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %dma_area.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dma_area.i.i, align 4
  br label %vx_pcm_read_per_bytes.exit.i

vx_pcm_read_per_bytes.exit.i:                     ; preds = %if.then7.i.i, %if.end.i.i177.vx_pcm_read_per_bytes.exit.i_crit_edge
  %offset.1.i.i = phi i32 [ 0, %if.then7.i.i ], [ %inc4.i.i, %if.end.i.i177.vx_pcm_read_per_bytes.exit.i_crit_edge ]
  %buf.1.i.i = phi ptr [ %118, %if.then7.i.i ], [ %incdec.ptr3.i.i, %if.end.i.i177.vx_pcm_read_per_bytes.exit.i_crit_edge ]
  %119 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ops.i.i.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %call.i35.i.i = call zeroext i8 %122(ptr noundef %chip, i32 noundef 6) #8
  %123 = ptrtoint ptr %buf.1.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %call.i35.i.i, ptr %buf.1.i.i, align 1
  %inc12.i.i = add nsw i32 %offset.1.i.i, 1
  %124 = ptrtoint ptr %buffer_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %buffer_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc12.i.i, i32 %125)
  %cmp14.not.i.i = icmp slt i32 %inc12.i.i, %125
  %spec.store.select.i.i = select i1 %cmp14.not.i.i, i32 %inc12.i.i, i32 0
  %126 = ptrtoint ptr %hw_ptr.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %spec.store.select.i.i, ptr %hw_ptr.i, align 8
  %sub25.i = add nsw i32 %count.0173.i, -3
  %cmp17.i = icmp sgt i32 %count.0173.i, 3
  br i1 %cmp17.i, label %vx_pcm_read_per_bytes.exit.i.while.body.i_crit_edge, label %vx_pcm_read_per_bytes.exit.i.while.end46.i_crit_edge

vx_pcm_read_per_bytes.exit.i.while.end46.i_crit_edge: ; preds = %vx_pcm_read_per_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end46.i

vx_pcm_read_per_bytes.exit.i.while.body.i_crit_edge: ; preds = %vx_pcm_read_per_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.then27.critedge.i:                             ; preds = %while.body.i
  %mul30.i = mul i32 %96, 3
  %127 = srem i32 %count.0173.i, %mul30.i
  %mul32.i = sub nsw i32 %count.0173.i, %127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul32.i)
  %cmp33.i = icmp sgt i32 %mul32.i, 0
  br i1 %cmp33.i, label %if.end37.i, label %if.then27.critedge.i.while.body40.i.preheader_crit_edge

if.then27.critedge.i.while.body40.i.preheader_crit_edge: ; preds = %if.then27.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body40.i.preheader

if.end37.i:                                       ; preds = %if.then27.critedge.i
  %128 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ops.i.i.i, align 4
  %dma_read.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %129, i32 0, i32 16
  %130 = ptrtoint ptr %dma_read.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dma_read.i.i, align 4
  call void %131(ptr noundef %chip, ptr noundef %61, ptr noundef nonnull %57, i32 noundef %mul32.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp39174.not.i = icmp eq i32 %127, 0
  br i1 %cmp39174.not.i, label %if.end37.i.while.end46.i_crit_edge, label %if.end37.i.while.body40.i.preheader_crit_edge

if.end37.i.while.body40.i.preheader_crit_edge:    ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body40.i.preheader

if.end37.i.while.end46.i_crit_edge:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end46.i

while.body40.i.preheader:                         ; preds = %if.end37.i.while.body40.i.preheader_crit_edge, %if.then27.critedge.i.while.body40.i.preheader_crit_edge
  %count.3175.i.ph = phi i32 [ %count.0173.i, %if.then27.critedge.i.while.body40.i.preheader_crit_edge ], [ %127, %if.end37.i.while.body40.i.preheader_crit_edge ]
  br label %while.body40.i

while.body40.i:                                   ; preds = %vx_pcm_read_per_bytes.exit139.i.while.body40.i_crit_edge, %while.body40.i.preheader
  %count.3175.i = phi i32 [ %sub45.i, %vx_pcm_read_per_bytes.exit139.i.while.body40.i_crit_edge ], [ %count.3175.i.ph, %while.body40.i.preheader ]
  %call41.i = call i32 @snd_vx_check_reg_bit(ptr noundef %chip, i32 noundef 2, i32 noundef 1, i32 noundef 1, i32 noundef 200) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %cmp42.i = icmp slt i32 %call41.i, 0
  br i1 %cmp42.i, label %while.body40.i._error.i_crit_edge, label %if.end44.i

while.body40.i._error.i_crit_edge:                ; preds = %while.body40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %_error.i

if.end44.i:                                       ; preds = %while.body40.i
  %132 = ptrtoint ptr %hw_ptr.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %hw_ptr.i, align 8
  %134 = ptrtoint ptr %dma_area.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dma_area.i.i, align 4
  %add.ptr.i117.i = getelementptr i8, ptr %135, i32 %133
  %136 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ops.i.i.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %call.i.i119.i = call zeroext i8 %139(ptr noundef %chip, i32 noundef 4) #8
  %incdec.ptr.i120.i = getelementptr i8, ptr %add.ptr.i117.i, i32 1
  %140 = ptrtoint ptr %add.ptr.i117.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %call.i.i119.i, ptr %add.ptr.i117.i, align 1
  %inc.i121.i = add i32 %133, 1
  %141 = ptrtoint ptr %buffer_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %buffer_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i121.i, i32 %142)
  %cmp.not.i123.i = icmp slt i32 %inc.i121.i, %142
  br i1 %cmp.not.i123.i, label %if.end44.i.if.end.i131.i_crit_edge, label %if.then.i124.i

if.end44.i.if.end.i131.i_crit_edge:               ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i131.i

if.then.i124.i:                                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  %143 = ptrtoint ptr %dma_area.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dma_area.i.i, align 4
  br label %if.end.i131.i

if.end.i131.i:                                    ; preds = %if.then.i124.i, %if.end44.i.if.end.i131.i_crit_edge
  %offset.0.i125.i = phi i32 [ 0, %if.then.i124.i ], [ %inc.i121.i, %if.end44.i.if.end.i131.i_crit_edge ]
  %buf.0.i126.i = phi ptr [ %144, %if.then.i124.i ], [ %incdec.ptr.i120.i, %if.end44.i.if.end.i131.i_crit_edge ]
  %145 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ops.i.i.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %call.i33.i127.i = call zeroext i8 %148(ptr noundef %chip, i32 noundef 5) #8
  %incdec.ptr3.i128.i = getelementptr i8, ptr %buf.0.i126.i, i32 1
  %149 = ptrtoint ptr %buf.0.i126.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %call.i33.i127.i, ptr %buf.0.i126.i, align 1
  %inc4.i129.i = add nsw i32 %offset.0.i125.i, 1
  %150 = ptrtoint ptr %buffer_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %buffer_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc4.i129.i, i32 %151)
  %cmp6.not.i130.i = icmp slt i32 %inc4.i129.i, %151
  br i1 %cmp6.not.i130.i, label %if.end.i131.i.vx_pcm_read_per_bytes.exit139.i_crit_edge, label %if.then7.i132.i

if.end.i131.i.vx_pcm_read_per_bytes.exit139.i_crit_edge: ; preds = %if.end.i131.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_pcm_read_per_bytes.exit139.i

if.then7.i132.i:                                  ; preds = %if.end.i131.i
  call void @__sanitizer_cov_trace_pc() #10
  %152 = ptrtoint ptr %dma_area.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dma_area.i.i, align 4
  br label %vx_pcm_read_per_bytes.exit139.i

vx_pcm_read_per_bytes.exit139.i:                  ; preds = %if.then7.i132.i, %if.end.i131.i.vx_pcm_read_per_bytes.exit139.i_crit_edge
  %offset.1.i133.i = phi i32 [ 0, %if.then7.i132.i ], [ %inc4.i129.i, %if.end.i131.i.vx_pcm_read_per_bytes.exit139.i_crit_edge ]
  %buf.1.i134.i = phi ptr [ %153, %if.then7.i132.i ], [ %incdec.ptr3.i128.i, %if.end.i131.i.vx_pcm_read_per_bytes.exit139.i_crit_edge ]
  %154 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %ops.i.i.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %call.i35.i135.i = call zeroext i8 %157(ptr noundef %chip, i32 noundef 6) #8
  %158 = ptrtoint ptr %buf.1.i134.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %call.i35.i135.i, ptr %buf.1.i134.i, align 1
  %inc12.i136.i = add nsw i32 %offset.1.i133.i, 1
  %159 = ptrtoint ptr %buffer_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %buffer_bytes.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc12.i136.i, i32 %160)
  %cmp14.not.i137.i = icmp slt i32 %inc12.i136.i, %160
  %spec.store.select.i138.i = select i1 %cmp14.not.i137.i, i32 %inc12.i136.i, i32 0
  %161 = ptrtoint ptr %hw_ptr.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %spec.store.select.i138.i, ptr %hw_ptr.i, align 8
  %sub45.i = add nsw i32 %count.3175.i, -3
  %cmp39.i = icmp sgt i32 %count.3175.i, 3
  br i1 %cmp39.i, label %vx_pcm_read_per_bytes.exit139.i.while.body40.i_crit_edge, label %vx_pcm_read_per_bytes.exit139.i.while.end46.i_crit_edge

vx_pcm_read_per_bytes.exit139.i.while.end46.i_crit_edge: ; preds = %vx_pcm_read_per_bytes.exit139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end46.i

vx_pcm_read_per_bytes.exit139.i.while.body40.i_crit_edge: ; preds = %vx_pcm_read_per_bytes.exit139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body40.i

while.end46.i:                                    ; preds = %vx_pcm_read_per_bytes.exit139.i.while.end46.i_crit_edge, %if.end37.i.while.end46.i_crit_edge, %vx_pcm_read_per_bytes.exit.i.while.end46.i_crit_edge, %if.end15.i.while.end46.i_crit_edge
  %call47.i = call i32 @vx_send_rih(ptr noundef %chip, i32 noundef 38) #8
  %hw_ptr.i140.i = getelementptr inbounds %struct.vx_pipe, ptr %57, i32 0, i32 9
  %dma_area.i141.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %61, i32 0, i32 50
  %buffer_bytes.i147.i = getelementptr inbounds %struct.vx_pipe, ptr %57, i32 0, i32 7
  %162 = ptrtoint ptr %hw_ptr.i140.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %hw_ptr.i140.i, align 8
  %164 = ptrtoint ptr %dma_area.i141.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dma_area.i141.i, align 4
  %add.ptr.i142.i = getelementptr i8, ptr %165, i32 %163
  %166 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ops.i.i.i, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %call.i.i144.i = call zeroext i8 %169(ptr noundef %chip, i32 noundef 4) #8
  %incdec.ptr.i145.i = getelementptr i8, ptr %add.ptr.i142.i, i32 1
  %170 = ptrtoint ptr %add.ptr.i142.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %call.i.i144.i, ptr %add.ptr.i142.i, align 1
  %inc.i146.i = add i32 %163, 1
  %171 = ptrtoint ptr %buffer_bytes.i147.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %buffer_bytes.i147.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i146.i, i32 %172)
  %cmp.not.i148.i = icmp slt i32 %inc.i146.i, %172
  br i1 %cmp.not.i148.i, label %while.end46.i.if.end.i156.i_crit_edge, label %if.then.i149.i

while.end46.i.if.end.i156.i_crit_edge:            ; preds = %while.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i156.i

if.then.i149.i:                                   ; preds = %while.end46.i
  call void @__sanitizer_cov_trace_pc() #10
  %173 = ptrtoint ptr %dma_area.i141.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dma_area.i141.i, align 4
  br label %if.end.i156.i

if.end.i156.i:                                    ; preds = %if.then.i149.i, %while.end46.i.if.end.i156.i_crit_edge
  %offset.0.i150.i = phi i32 [ 0, %if.then.i149.i ], [ %inc.i146.i, %while.end46.i.if.end.i156.i_crit_edge ]
  %buf.0.i151.i = phi ptr [ %174, %if.then.i149.i ], [ %incdec.ptr.i145.i, %while.end46.i.if.end.i156.i_crit_edge ]
  %175 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ops.i.i.i, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %176, align 4
  %call.i33.i152.i = call zeroext i8 %178(ptr noundef %chip, i32 noundef 5) #8
  %incdec.ptr3.i153.i = getelementptr i8, ptr %buf.0.i151.i, i32 1
  %179 = ptrtoint ptr %buf.0.i151.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %call.i33.i152.i, ptr %buf.0.i151.i, align 1
  %inc4.i154.i = add nsw i32 %offset.0.i150.i, 1
  %180 = ptrtoint ptr %buffer_bytes.i147.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %buffer_bytes.i147.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc4.i154.i, i32 %181)
  %cmp6.not.i155.i = icmp slt i32 %inc4.i154.i, %181
  br i1 %cmp6.not.i155.i, label %if.end.i156.i.vx_pcm_read_per_bytes.exit164.i_crit_edge, label %if.then7.i157.i

if.end.i156.i.vx_pcm_read_per_bytes.exit164.i_crit_edge: ; preds = %if.end.i156.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_pcm_read_per_bytes.exit164.i

if.then7.i157.i:                                  ; preds = %if.end.i156.i
  call void @__sanitizer_cov_trace_pc() #10
  %182 = ptrtoint ptr %dma_area.i141.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %dma_area.i141.i, align 4
  br label %vx_pcm_read_per_bytes.exit164.i

vx_pcm_read_per_bytes.exit164.i:                  ; preds = %if.then7.i157.i, %if.end.i156.i.vx_pcm_read_per_bytes.exit164.i_crit_edge
  %offset.1.i158.i = phi i32 [ 0, %if.then7.i157.i ], [ %inc4.i154.i, %if.end.i156.i.vx_pcm_read_per_bytes.exit164.i_crit_edge ]
  %buf.1.i159.i = phi ptr [ %183, %if.then7.i157.i ], [ %incdec.ptr3.i153.i, %if.end.i156.i.vx_pcm_read_per_bytes.exit164.i_crit_edge ]
  %184 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ops.i.i.i, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %185, align 4
  %call.i35.i160.i = call zeroext i8 %187(ptr noundef %chip, i32 noundef 6) #8
  %188 = ptrtoint ptr %buf.1.i159.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %call.i35.i160.i, ptr %buf.1.i159.i, align 1
  %inc12.i161.i = add nsw i32 %offset.1.i158.i, 1
  %189 = ptrtoint ptr %buffer_bytes.i147.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %buffer_bytes.i147.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc12.i161.i, i32 %190)
  %cmp14.not.i162.i = icmp slt i32 %inc12.i161.i, %190
  %spec.store.select.i163.i = select i1 %cmp14.not.i162.i, i32 %inc12.i161.i, i32 0
  %191 = ptrtoint ptr %hw_ptr.i140.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %spec.store.select.i163.i, ptr %hw_ptr.i140.i, align 8
  %192 = ptrtoint ptr %dma_area.i141.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dma_area.i141.i, align 4
  %add.ptr.i142.1.i = getelementptr i8, ptr %193, i32 %spec.store.select.i163.i
  %194 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %ops.i.i.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %call.i.i144.1.i = call zeroext i8 %197(ptr noundef %chip, i32 noundef 4) #8
  %incdec.ptr.i145.1.i = getelementptr i8, ptr %add.ptr.i142.1.i, i32 1
  %198 = ptrtoint ptr %add.ptr.i142.1.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 %call.i.i144.1.i, ptr %add.ptr.i142.1.i, align 1
  %inc.i146.1.i = add nsw i32 %spec.store.select.i163.i, 1
  %199 = ptrtoint ptr %buffer_bytes.i147.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %buffer_bytes.i147.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i146.1.i, i32 %200)
  %cmp.not.i148.1.i = icmp slt i32 %inc.i146.1.i, %200
  br i1 %cmp.not.i148.1.i, label %vx_pcm_read_per_bytes.exit164.i.if.end.i156.1.i_crit_edge, label %if.then.i149.1.i

vx_pcm_read_per_bytes.exit164.i.if.end.i156.1.i_crit_edge: ; preds = %vx_pcm_read_per_bytes.exit164.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i156.1.i

if.then.i149.1.i:                                 ; preds = %vx_pcm_read_per_bytes.exit164.i
  call void @__sanitizer_cov_trace_pc() #10
  %201 = ptrtoint ptr %dma_area.i141.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dma_area.i141.i, align 4
  br label %if.end.i156.1.i

if.end.i156.1.i:                                  ; preds = %if.then.i149.1.i, %vx_pcm_read_per_bytes.exit164.i.if.end.i156.1.i_crit_edge
  %offset.0.i150.1.i = phi i32 [ 0, %if.then.i149.1.i ], [ %inc.i146.1.i, %vx_pcm_read_per_bytes.exit164.i.if.end.i156.1.i_crit_edge ]
  %buf.0.i151.1.i = phi ptr [ %202, %if.then.i149.1.i ], [ %incdec.ptr.i145.1.i, %vx_pcm_read_per_bytes.exit164.i.if.end.i156.1.i_crit_edge ]
  %203 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ops.i.i.i, align 4
  %205 = ptrtoint ptr %204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %204, align 4
  %call.i33.i152.1.i = call zeroext i8 %206(ptr noundef %chip, i32 noundef 5) #8
  %incdec.ptr3.i153.1.i = getelementptr i8, ptr %buf.0.i151.1.i, i32 1
  %207 = ptrtoint ptr %buf.0.i151.1.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %call.i33.i152.1.i, ptr %buf.0.i151.1.i, align 1
  %inc4.i154.1.i = add nsw i32 %offset.0.i150.1.i, 1
  %208 = ptrtoint ptr %buffer_bytes.i147.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %buffer_bytes.i147.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc4.i154.1.i, i32 %209)
  %cmp6.not.i155.1.i = icmp slt i32 %inc4.i154.1.i, %209
  br i1 %cmp6.not.i155.1.i, label %if.end.i156.1.i.vx_pcm_read_per_bytes.exit164.1.i_crit_edge, label %if.then7.i157.1.i

if.end.i156.1.i.vx_pcm_read_per_bytes.exit164.1.i_crit_edge: ; preds = %if.end.i156.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_pcm_read_per_bytes.exit164.1.i

if.then7.i157.1.i:                                ; preds = %if.end.i156.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %210 = ptrtoint ptr %dma_area.i141.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dma_area.i141.i, align 4
  br label %vx_pcm_read_per_bytes.exit164.1.i

vx_pcm_read_per_bytes.exit164.1.i:                ; preds = %if.then7.i157.1.i, %if.end.i156.1.i.vx_pcm_read_per_bytes.exit164.1.i_crit_edge
  %offset.1.i158.1.i = phi i32 [ 0, %if.then7.i157.1.i ], [ %inc4.i154.1.i, %if.end.i156.1.i.vx_pcm_read_per_bytes.exit164.1.i_crit_edge ]
  %buf.1.i159.1.i = phi ptr [ %211, %if.then7.i157.1.i ], [ %incdec.ptr3.i153.1.i, %if.end.i156.1.i.vx_pcm_read_per_bytes.exit164.1.i_crit_edge ]
  %212 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %ops.i.i.i, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %213, align 4
  %call.i35.i160.1.i = call zeroext i8 %215(ptr noundef %chip, i32 noundef 6) #8
  %216 = ptrtoint ptr %buf.1.i159.1.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %call.i35.i160.1.i, ptr %buf.1.i159.1.i, align 1
  %inc12.i161.1.i = add nsw i32 %offset.1.i158.1.i, 1
  %217 = ptrtoint ptr %buffer_bytes.i147.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %buffer_bytes.i147.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc12.i161.1.i, i32 %218)
  %cmp14.not.i162.1.i = icmp slt i32 %inc12.i161.1.i, %218
  %spec.store.select.i163.1.i = select i1 %cmp14.not.i162.1.i, i32 %inc12.i161.1.i, i32 0
  %219 = ptrtoint ptr %hw_ptr.i140.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %spec.store.select.i163.1.i, ptr %hw_ptr.i140.i, align 8
  %transferred.i = getelementptr inbounds %struct.vx_pipe, ptr %57, i32 0, i32 11
  %220 = ptrtoint ptr %transferred.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %transferred.i, align 8
  %add.i = add i32 %221, %mul.i
  store i32 %add.i, ptr %transferred.i, align 8
  %period_bytes.i = getelementptr inbounds %struct.vx_pipe, ptr %57, i32 0, i32 8
  %222 = ptrtoint ptr %period_bytes.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %period_bytes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %223)
  %cmp54.not.i = icmp slt i32 %add.i, %223
  br i1 %cmp54.not.i, label %vx_pcm_read_per_bytes.exit164.1.i.for.inc_crit_edge, label %if.then55.i

vx_pcm_read_per_bytes.exit164.1.i.for.inc_crit_edge: ; preds = %vx_pcm_read_per_bytes.exit164.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then55.i:                                      ; preds = %vx_pcm_read_per_bytes.exit164.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %rem58.i = srem i32 %add.i, %223
  %224 = ptrtoint ptr %transferred.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %rem58.i, ptr %transferred.i, align 8
  call void @snd_pcm_period_elapsed(ptr noundef nonnull %59) #8
  br label %for.inc

_error.i:                                         ; preds = %while.body40.i._error.i_crit_edge, %if.end20.i._error.i_crit_edge, %if.end9.i._error.i_crit_edge, %vx_query_hbuffer_size.exit.i._error.i_crit_edge
  %call60.i = call i32 @vx_send_rih(ptr noundef %chip, i32 noundef 38) #8
  br label %for.inc

for.inc:                                          ; preds = %_error.i, %if.then55.i, %vx_pcm_read_per_bytes.exit164.1.i.for.inc_crit_edge, %snd_pcm_capture_avail.exit.i.for.inc_crit_edge, %lor.lhs.false.i.for.inc_crit_edge, %if.then98.for.inc_crit_edge, %land.lhs.true95.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc101 = add nuw i32 %i.3188, 1
  %225 = ptrtoint ptr %audio_ins to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %audio_ins, align 4
  %cmp91 = icmp ult i32 %inc101, %226
  br i1 %cmp91, label %for.inc.for.body_crit_edge, label %for.inc.cleanup102_crit_edge

for.inc.cleanup102_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup102

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup102:                                       ; preds = %for.inc.cleanup102_crit_edge, %if.end90.cleanup102_crit_edge, %if.then14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vx_init_rmh(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vx_send_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vx_pcm_playback_transfer(ptr noundef %chip, ptr nocapture noundef readonly %subs, ptr noundef %pipe, i32 noundef %nchunks) unnamed_addr #0 align 64 {
entry:
  %rmh.i23.i = alloca %struct.vx_rmh, align 4
  %rmh.i.i = alloca %struct.vx_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %prepared = getelementptr inbounds %struct.vx_pipe, ptr %pipe, i32 0, i32 1
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %prepared, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %chip_status = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 7
  %4 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_status, align 4
  %and = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nchunks)
  %cmp14 = icmp sgt i32 %nchunks, 0
  %or.cond = and i1 %tobool2.not, %cmp14
  br i1 %or.cond, label %for.body.lr.ph, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %lor.lhs.false
  %ibl = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 25
  %Cmd.i.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i.i, i32 0, i32 2
  %Stat.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i.i, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 6
  %ops.i.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 5
  %Cmd2.i.i27.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i23.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %vx_pcm_playback_transfer_chunk.exit.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %vx_pcm_playback_transfer_chunk.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %ibl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ibl, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i.i) #8
  %8 = call ptr @memset(ptr %rmh.i.i, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i.i, i32 noundef 15) #8
  %9 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i.i = load i8, ptr %prepared, align 4
  %10 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pipe, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i.i, label %for.body.vx_set_pipe_cmd_params.exit.i.i_crit_edge, label %if.then.i.i.i

for.body.vx_set_pipe_cmd_params.exit.i.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_set_pipe_cmd_params.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %Cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %Cmd.i.i.i, align 4
  %or.i.i.i = or i32 %13, 2048
  store i32 %or.i.i.i, ptr %Cmd.i.i.i, align 4
  br label %vx_set_pipe_cmd_params.exit.i.i

vx_set_pipe_cmd_params.exit.i.i:                  ; preds = %if.then.i.i.i, %for.body.vx_set_pipe_cmd_params.exit.i.i_crit_edge
  %and.i.i.i = shl i32 %11, 5
  %shl.i.i.i = and i32 %and.i.i.i, 992
  %14 = ptrtoint ptr %Cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %Cmd.i.i.i, align 4
  %bf.load.lobit.i.i = lshr i8 %bf.load.i.i, 7
  %16 = zext i8 %bf.load.lobit.i.i to i32
  %storemerge.i.i.i = or i32 %shl.i.i.i, %16
  %spec.select.i.i = or i32 %storemerge.i.i.i, %15
  store i32 %spec.select.i.i, ptr %Cmd.i.i.i, align 4
  %call.i.i = call i32 @vx_send_msg(ptr noundef %chip, ptr noundef nonnull %rmh.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i.i, label %vx_query_hbuffer_size.exit.thread.i, label %vx_query_hbuffer_size.exit.i

vx_query_hbuffer_size.exit.thread.i:              ; preds = %vx_set_pipe_cmd_params.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %Stat.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %Stat.i.i, align 4
  %and.i.i = and i32 %18, 65535
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i.i) #8
  br label %if.end.i

vx_query_hbuffer_size.exit.i:                     ; preds = %vx_set_pipe_cmd_params.exit.i.i
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %vx_query_hbuffer_size.exit.i.if.end.i_crit_edge

vx_query_hbuffer_size.exit.i.if.end.i_crit_edge:  ; preds = %vx_query_hbuffer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %vx_query_hbuffer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 @vx_send_rih(ptr noundef %chip, i32 noundef 38) #8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 619, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end.i:                                         ; preds = %vx_query_hbuffer_size.exit.i.if.end.i_crit_edge, %vx_query_hbuffer_size.exit.thread.i
  %result.0.i30.i = phi i32 [ %and.i.i, %vx_query_hbuffer_size.exit.thread.i ], [ %call.i.i, %vx_query_hbuffer_size.exit.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %result.0.i30.i, i32 %7)
  %cmp2.i = icmp slt i32 %result.0.i30.i, %7
  br i1 %cmp2.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = call i32 @vx_send_rih(ptr noundef %chip, i32 noundef 38) #8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 624, ptr noundef nonnull @.str.4, i32 noundef %result.0.i30.i) #8
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %dma_write.i.i = getelementptr inbounds %struct.snd_vx_ops, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %dma_write.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_write.i.i, align 4
  call void %22(ptr noundef %chip, ptr noundef %1, ptr noundef %pipe, i32 noundef %7) #8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i23.i) #8
  %23 = call ptr @memset(ptr %rmh.i23.i, i32 255, i32 136)
  %call.i24.i = call i32 @vx_send_rih_nolock(ptr noundef %chip, i32 noundef 42) #8
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i23.i, i32 noundef 57) #8
  %24 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pipe, align 8
  %and.i.i25.i = shl i32 %25, 5
  %shl.i.i26.i = and i32 %and.i.i25.i, 992
  %26 = ptrtoint ptr %Cmd2.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %Cmd2.i.i27.i, align 4
  %or4.i.i.i = or i32 %shl.i.i26.i, %27
  store i32 %or4.i.i.i, ptr %Cmd2.i.i27.i, align 4
  %call1.i.i = call i32 @vx_send_msg_nolock(ptr noundef %chip, ptr noundef nonnull %rmh.i23.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.end5.i.vx_pcm_playback_transfer_chunk.exit_crit_edge, label %if.end.i.i

if.end5.i.vx_pcm_playback_transfer_chunk.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_pcm_playback_transfer_chunk.exit

if.end.i.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = call i32 @vx_send_rih_nolock(ptr noundef %chip, i32 noundef 42) #8
  br label %vx_pcm_playback_transfer_chunk.exit

vx_pcm_playback_transfer_chunk.exit:              ; preds = %if.end.i.i, %if.end5.i.vx_pcm_playback_transfer_chunk.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ %call1.i.i, %if.end5.i.vx_pcm_playback_transfer_chunk.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i23.i) #8
  %call7.i = call i32 @vx_send_rih_nolock(ptr noundef %chip, i32 noundef 38) #8
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp3 = icmp slt i32 %retval.0.i.i, 0
  %inc = add nuw nsw i32 %i.015, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %nchunks)
  %exitcond.not = icmp eq i32 %inc, %nchunks
  %or.cond18 = select i1 %cmp3, i1 true, i1 %exitcond.not
  br i1 %or.cond18, label %vx_pcm_playback_transfer_chunk.exit.cleanup_crit_edge, label %vx_pcm_playback_transfer_chunk.exit.for.body_crit_edge

vx_pcm_playback_transfer_chunk.exit.for.body_crit_edge: ; preds = %vx_pcm_playback_transfer_chunk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

vx_pcm_playback_transfer_chunk.exit.cleanup_crit_edge: ; preds = %vx_pcm_playback_transfer_chunk.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %vx_pcm_playback_transfer_chunk.exit.cleanup_crit_edge, %if.then3.i, %if.then.i, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_vx_pcm_new(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %rmh.i105.i = alloca %struct.vx_rmh, align 4
  %rmh.i.i = alloca %struct.vx_rmh, align 4
  %rmh.i = alloca %struct.vx_rmh, align 4
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #8
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i) #8
  %1 = call ptr @memset(ptr %rmh.i, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 1) #8
  %call.i = call i32 @vx_send_msg(ptr noundef %chip, ptr noundef nonnull %rmh.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 1144, ptr noundef nonnull @.str.5) #8
  br label %vx_init_audio_io.exit.thread

if.end.i:                                         ; preds = %entry
  %Stat.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 3
  %2 = ptrtoint ptr %Stat.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %Stat.i, align 4
  %and.i = and i32 %3, 31
  %audio_outs.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 14
  %4 = ptrtoint ptr %audio_outs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i, ptr %audio_outs.i, align 4
  %shr.i = lshr i32 %3, 10
  %and3.i = and i32 %shr.i, 31
  %audio_ins.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 13
  %5 = ptrtoint ptr %audio_ins.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3.i, ptr %audio_ins.i, align 4
  %arrayidx5.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5.i, align 4
  %audio_info.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 12
  %8 = ptrtoint ptr %audio_info.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %audio_info.i, align 4
  %9 = shl nuw nsw i32 %and.i, 2
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #11
  %playback_pipes.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 15
  %10 = ptrtoint ptr %playback_pipes.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i.i.i, ptr %playback_pipes.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.vx_init_audio_io.exit.thread_crit_edge, label %if.end10.i

if.end.i.vx_init_audio_io.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_init_audio_io.exit.thread

if.end10.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %audio_ins.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %audio_ins.i, align 4
  %13 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 4) #8
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %kcalloc.exit104.thread.i, label %if.end7.i.i102.i, !prof !46

kcalloc.exit104.thread.i:                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %capture_pipes129.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 16
  %15 = ptrtoint ptr %capture_pipes129.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %capture_pipes129.i, align 4
  br label %if.then15.i

if.end7.i.i102.i:                                 ; preds = %if.end10.i
  %16 = extractvalue { i32, i1 } %13, 0
  %call8.i.i101.i = call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #11
  %capture_pipes.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 16
  %17 = ptrtoint ptr %capture_pipes.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i.i101.i, ptr %capture_pipes.i, align 4
  %tobool14.not.i = icmp eq ptr %call8.i.i101.i, null
  br i1 %tobool14.not.i, label %if.end7.i.i102.i.if.then15.i_crit_edge, label %if.end17.i

if.end7.i.i102.i.if.then15.i_crit_edge:           ; preds = %if.end7.i.i102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end7.i.i102.i.if.then15.i_crit_edge, %kcalloc.exit104.thread.i
  %18 = ptrtoint ptr %playback_pipes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %playback_pipes.i, align 4
  call void @kfree(ptr noundef %19) #8
  br label %vx_init_audio_io.exit.thread

if.end17.i:                                       ; preds = %if.end7.i.i102.i
  %ibl.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 25
  %20 = ptrtoint ptr %ibl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ibl.i, align 4
  store i32 0, ptr %ibl.i, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i.i) #8
  %22 = call ptr @memset(ptr %rmh.i.i, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i.i, i32 noundef 4) #8
  %23 = ptrtoint ptr %ibl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ibl.i, align 4
  %and.i.i = and i32 %24, 262143
  %Cmd.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %Cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %Cmd.i.i, align 4
  %or.i.i = or i32 %26, %and.i.i
  store i32 %or.i.i, ptr %Cmd.i.i, align 4
  %call.i.i = call i32 @vx_send_msg(ptr noundef %chip, ptr noundef nonnull %rmh.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end17.i.vx_set_ibl.exit.i_crit_edge, label %if.end.i.i

if.end17.i.vx_set_ibl.exit.i_crit_edge:           ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_set_ibl.exit.i

if.end.i.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %Stat.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %Stat.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %Stat.i.i, align 4
  %29 = ptrtoint ptr %ibl.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ibl.i, align 4
  %arrayidx4.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i.i, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx4.i.i, align 4
  %max_size.i.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 25, i32 1
  %32 = ptrtoint ptr %max_size.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %max_size.i.i, align 4
  %arrayidx6.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i.i, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx6.i.i, align 4
  %min_size.i.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 25, i32 2
  %35 = ptrtoint ptr %min_size.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %min_size.i.i, align 4
  %arrayidx8.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i.i, i32 0, i32 3, i32 3
  %36 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx8.i.i, align 4
  %granularity.i.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 25, i32 3
  %38 = ptrtoint ptr %granularity.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %granularity.i.i, align 4
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 194, ptr noundef nonnull @.str.6, i32 noundef %28, i32 noundef %31, i32 noundef %34, i32 noundef %37) #8
  br label %vx_set_ibl.exit.i

vx_set_ibl.exit.i:                                ; preds = %if.end.i.i, %if.end17.i.vx_set_ibl.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp22.i = icmp sgt i32 %21, 0
  br i1 %cmp22.i, label %if.then23.i, label %if.else.i

if.then23.i:                                      ; preds = %vx_set_ibl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %granularity.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 25, i32 3
  %39 = ptrtoint ptr %granularity.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %granularity.i, align 4
  %sub.i = add nsw i32 %21, -1
  %add.i = add i32 %sub.i, %40
  %41 = srem i32 %add.i, %40
  %mul.i = sub i32 %add.i, %41
  %max_size.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 25, i32 1
  %42 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_size.i, align 4
  %44 = call i32 @llvm.smin.i32(i32 %mul.i, i32 %43) #8
  br label %if.end40.i

if.else.i:                                        ; preds = %vx_set_ibl.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %min_size.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 25, i32 2
  %45 = ptrtoint ptr %min_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %min_size.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.else.i, %if.then23.i
  %storemerge.i = phi i32 [ %46, %if.else.i ], [ %44, %if.then23.i ]
  %47 = ptrtoint ptr %ibl.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %storemerge.i, ptr %ibl.i, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i105.i) #8
  %48 = call ptr @memset(ptr %rmh.i105.i, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i105.i, i32 noundef 4) #8
  %49 = ptrtoint ptr %ibl.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ibl.i, align 4
  %and.i106.i = and i32 %50, 262143
  %Cmd.i107.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i105.i, i32 0, i32 2
  %51 = ptrtoint ptr %Cmd.i107.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %Cmd.i107.i, align 4
  %or.i108.i = or i32 %52, %and.i106.i
  store i32 %or.i108.i, ptr %Cmd.i107.i, align 4
  %call.i109.i = call i32 @vx_send_msg(ptr noundef %chip, ptr noundef nonnull %rmh.i105.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109.i)
  %cmp.i110.i = icmp slt i32 %call.i109.i, 0
  br i1 %cmp.i110.i, label %if.end40.i.vx_init_audio_io.exit_crit_edge, label %if.end.i118.i

if.end40.i.vx_init_audio_io.exit_crit_edge:       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_init_audio_io.exit

if.end.i118.i:                                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  %Stat.i111.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i105.i, i32 0, i32 3
  %53 = ptrtoint ptr %Stat.i111.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %Stat.i111.i, align 4
  %55 = ptrtoint ptr %ibl.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %ibl.i, align 4
  %arrayidx4.i112.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i105.i, i32 0, i32 3, i32 1
  %56 = ptrtoint ptr %arrayidx4.i112.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx4.i112.i, align 4
  %max_size.i113.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 25, i32 1
  %58 = ptrtoint ptr %max_size.i113.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %max_size.i113.i, align 4
  %arrayidx6.i114.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i105.i, i32 0, i32 3, i32 2
  %59 = ptrtoint ptr %arrayidx6.i114.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx6.i114.i, align 4
  %min_size.i115.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 25, i32 2
  %61 = ptrtoint ptr %min_size.i115.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %min_size.i115.i, align 4
  %arrayidx8.i116.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i105.i, i32 0, i32 3, i32 3
  %62 = ptrtoint ptr %arrayidx8.i116.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx8.i116.i, align 4
  %granularity.i117.i = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 25, i32 3
  %64 = ptrtoint ptr %granularity.i117.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %granularity.i117.i, align 4
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 194, ptr noundef nonnull @.str.6, i32 noundef %54, i32 noundef %57, i32 noundef %60, i32 noundef %63) #8
  br label %vx_init_audio_io.exit

vx_init_audio_io.exit.thread:                     ; preds = %if.then15.i, %if.end.i.vx_init_audio_io.exit.thread_crit_edge, %if.then.i
  %retval.0.i.ph = phi i32 [ -12, %if.end.i.vx_init_audio_io.exit.thread_crit_edge ], [ -12, %if.then15.i ], [ -6, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i) #8
  br label %cleanup25

vx_init_audio_io.exit:                            ; preds = %if.end.i118.i, %if.end40.i.vx_init_audio_io.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i105.i) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i) #8
  %hw = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 4
  %65 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw, align 4
  %num_codecs55 = getelementptr inbounds %struct.snd_vx_hardware, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %num_codecs55 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_codecs55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp156.not = icmp eq i32 %68, 0
  br i1 %cmp156.not, label %vx_init_audio_io.exit.cleanup25_crit_edge, label %vx_init_audio_io.exit.for.body_crit_edge

vx_init_audio_io.exit.for.body_crit_edge:         ; preds = %vx_init_audio_io.exit
  br label %for.body

vx_init_audio_io.exit.cleanup25_crit_edge:        ; preds = %vx_init_audio_io.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %vx_init_audio_io.exit.for.body_crit_edge
  %i.057 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %vx_init_audio_io.exit.for.body_crit_edge ]
  %69 = ptrtoint ptr %audio_outs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %audio_outs.i, align 4
  %mul = shl i32 %i.057, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %mul)
  %cmp2 = icmp ugt i32 %70, %mul
  %71 = ptrtoint ptr %audio_ins.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %audio_ins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %mul)
  %cmp4 = icmp ugt i32 %72, %mul
  %brmerge = select i1 %cmp2, i1 true, i1 %cmp4
  br i1 %brmerge, label %if.end8, label %for.body.cleanup25_crit_edge

for.body.cleanup25_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25

if.end8:                                          ; preds = %for.body
  %cond5 = zext i1 %cmp4 to i32
  %cond = zext i1 %cmp2 to i32
  %73 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chip, align 4
  %call9 = call i32 @snd_pcm_new(ptr noundef %74, ptr noundef nonnull @.str.2, i32 noundef %i.057, i32 noundef %cond, i32 noundef %cond5, ptr noundef nonnull %pcm) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup25_crit_edge, label %if.end12

if.end8.cleanup25_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25

if.end12:                                         ; preds = %if.end8
  br i1 %cmp2, label %if.then14, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %76, i32 noundef 0, ptr noundef nonnull @vx_pcm_playback_ops) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  br i1 %cmp4, label %if.then17, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %78, i32 noundef 1, ptr noundef nonnull @vx_pcm_capture_ops) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %if.end15.for.inc_crit_edge
  %79 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pcm, align 4
  %call19 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %80, i32 noundef 7, ptr noundef nonnull inttoptr (i32 3268 to ptr), i32 noundef 0, i32 noundef 0) #8
  %81 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %82, i32 0, i32 11
  %83 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %chip, ptr %private_data, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm, ptr %82, i32 0, i32 12
  %84 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @snd_vx_pcm_free, ptr %private_free, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %82, i32 0, i32 3
  %85 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %info_flags, align 8
  %nonatomic = getelementptr inbounds %struct.snd_pcm, ptr %82, i32 0, i32 14
  %86 = ptrtoint ptr %nonatomic to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %nonatomic, align 1
  %name = getelementptr inbounds %struct.snd_pcm, ptr %82, i32 0, i32 7
  %87 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %chip, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %88, i32 0, i32 3
  %call22 = call ptr @strcpy(ptr noundef %name, ptr noundef %shortname) #12
  %arrayidx = getelementptr %struct.vx_core, ptr %chip, i32 0, i32 1, i32 %i.057
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %82, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.057, 1
  %90 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw, align 4
  %num_codecs = getelementptr inbounds %struct.snd_vx_hardware, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_codecs, align 4
  %cmp1 = icmp ult i32 %inc, %93
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.cleanup25_crit_edge

for.inc.cleanup25_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup25

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup25:                                        ; preds = %for.inc.cleanup25_crit_edge, %if.end8.cleanup25_crit_edge, %for.body.cleanup25_crit_edge, %vx_init_audio_io.exit.cleanup25_crit_edge, %vx_init_audio_io.exit.thread
  %retval.2 = phi i32 [ %retval.0.i.ph, %vx_init_audio_io.exit.thread ], [ 0, %vx_init_audio_io.exit.cleanup25_crit_edge ], [ 0, %for.body.cleanup25_crit_edge ], [ 0, %for.inc.cleanup25_crit_edge ], [ %call9, %if.end8.cleanup25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #8
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_vx_pcm_free(ptr nocapture noundef readonly %pcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 11
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %device = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 2
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device, align 4
  %arrayidx = getelementptr %struct.vx_core, ptr %1, i32 0, i32 1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %playback_pipes = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %playback_pipes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %playback_pipes, align 4
  tail call void @kfree(ptr noundef %6) #8
  %7 = ptrtoint ptr %playback_pipes to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %playback_pipes, align 4
  %capture_pipes = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %capture_pipes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %capture_pipes, align 4
  tail call void @kfree(ptr noundef %9) #8
  %10 = ptrtoint ptr %capture_pipes to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %capture_pipes, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vx_send_rih(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vx_send_rih_nolock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vx_send_msg_nolock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_vx_check_reg_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_pcm_playback_open(ptr noundef %subs) #0 align 64 {
entry:
  %pipe = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe) #8
  %chip_status = getelementptr inbounds %struct.vx_core, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_status, align 4
  %and = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %subs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subs, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device, align 4
  %mul = shl i32 %9, 1
  %audio_outs = getelementptr inbounds %struct.vx_core, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %audio_outs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %audio_outs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %11)
  %cmp.not = icmp ult i32 %mul, %11
  br i1 %cmp.not, label %if.end25, label %do.end, !prof !44

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 524, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %playback_pipes = getelementptr inbounds %struct.vx_core, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %playback_pipes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %playback_pipes, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %mul
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %pipe, align 4
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %if.then27, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then27:                                        ; preds = %if.end25
  %call = call fastcc i32 @vx_alloc_pipe(ptr noundef %3, i32 noundef 0, i32 noundef %mul, ptr noundef nonnull %pipe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp28 = icmp slt i32 %call, 0
  br i1 %cmp28, label %if.then27.cleanup_crit_edge, label %if.then27.if.end31_crit_edge

if.then27.if.end31_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.then27.if.end31_crit_edge, %if.end25.if.end31_crit_edge
  %17 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pipe, align 4
  %references = getelementptr inbounds %struct.vx_pipe, ptr %18, i32 0, i32 14
  %19 = ptrtoint ptr %references to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %references, align 8
  %inc = add i32 %20, 1
  store i32 %inc, ptr %references, align 8
  %substream = getelementptr inbounds %struct.vx_pipe, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %substream to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %subs, ptr %substream, align 8
  %22 = ptrtoint ptr %playback_pipes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %playback_pipes, align 4
  %arrayidx33 = getelementptr ptr, ptr %23, i32 %mul
  %24 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %18, ptr %arrayidx33, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %25 = call ptr @memcpy(ptr %hw, ptr @vx_pcm_playback_hw, i32 64)
  %ibl = getelementptr inbounds %struct.vx_core, ptr %3, i32 0, i32 25
  %26 = ptrtoint ptr %ibl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ibl, align 4
  %period_bytes_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 8
  %28 = ptrtoint ptr %period_bytes_min to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %period_bytes_min, align 8
  %private_data35 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %29 = ptrtoint ptr %private_data35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %18, ptr %private_data35, align 8
  %call36 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 18, i32 noundef 4) #8
  %call37 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 14, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then27.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end31 ], [ -16, %entry.cleanup_crit_edge ], [ %call, %if.then27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_pcm_playback_close(ptr nocapture noundef readonly %subs) #0 align 64 {
entry:
  %rmh.i = alloca %struct.vx_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %references = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %references to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %references, align 8
  %dec = add i32 %7, -1
  store i32 %dec, ptr %references, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %playback_pipes = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %playback_pipes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %playback_pipes, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 8
  %arrayidx = getelementptr ptr, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i) #8
  %13 = call ptr @memset(ptr %rmh.i, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 7) #8
  %is_capture.i = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %is_capture.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %is_capture.i, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i.i, label %if.then4.vx_free_pipe.exit_crit_edge, label %if.then.i.i

if.then4.vx_free_pipe.exit_crit_edge:             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_free_pipe.exit

if.then.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %Cmd.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2
  %17 = ptrtoint ptr %Cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %Cmd.i.i, align 4
  %or.i.i = or i32 %18, 2048
  store i32 %or.i.i, ptr %Cmd.i.i, align 4
  br label %vx_free_pipe.exit

vx_free_pipe.exit:                                ; preds = %if.then.i.i, %if.then4.vx_free_pipe.exit_crit_edge
  %and.i.i = shl i32 %16, 5
  %shl.i.i = and i32 %and.i.i, 992
  %Cmd2.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2
  %19 = ptrtoint ptr %Cmd2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %Cmd2.i.i, align 4
  %storemerge.i.i = or i32 %20, %shl.i.i
  store i32 %storemerge.i.i, ptr %Cmd2.i.i, align 4
  %call.i = call i32 @vx_send_msg(ptr noundef %1, ptr noundef nonnull %rmh.i) #8
  call void @kfree(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i) #8
  br label %cleanup

cleanup:                                          ; preds = %vx_free_pipe.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %vx_free_pipe.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_pcm_prepare(ptr nocapture noundef readonly %subs) #0 align 64 {
entry:
  %rmh.i = alloca %struct.vx_rmh, align 4
  %rmh.i.i = alloca %struct.vx_rmh, align 4
  %rmh = alloca %struct.vx_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %chip_status = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip_status, align 4
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup55_crit_edge

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55

if.end:                                           ; preds = %entry
  %uer_bits = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 24
  %8 = ptrtoint ptr %uer_bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %uer_bits, align 4
  %and3 = and i32 %9, 2
  %and3.lobit = lshr exact i32 %and3, 1
  %data_mode4 = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %data_mode4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %data_mode4, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.lobit, i32 %bf.cast)
  %cmp5.not = icmp ne i32 %and3.lobit, %bf.cast
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool10.not = icmp sgt i8 %bf.load, -1
  %or.cond = select i1 %cmp5.not, i1 %tobool10.not, i1 false
  br i1 %or.cond, label %if.then11, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then11:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh) #8
  %11 = call ptr @memset(ptr %rmh, i32 255, i32 136)
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 798, ptr noundef nonnull @.str.7, i32 noundef %and3.lobit) #8
  call void @vx_init_rmh(ptr noundef nonnull %rmh, i32 noundef 7) #8
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 8
  %and.i = shl i32 %13, 5
  %shl.i = and i32 %and.i, 992
  %Cmd2.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh, i32 0, i32 2
  %14 = ptrtoint ptr %Cmd2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %Cmd2.i, align 4
  %storemerge.i = or i32 %shl.i, %15
  store i32 %storemerge.i, ptr %Cmd2.i, align 4
  %call = call i32 @vx_send_msg(ptr noundef %1, ptr noundef nonnull %rmh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp12 = icmp slt i32 %call, 0
  br i1 %cmp12, label %if.then11.cleanup.thread_crit_edge, label %if.end15

if.then11.cleanup.thread_crit_edge:               ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end15:                                         ; preds = %if.then11
  call void @vx_init_rmh(ptr noundef nonnull %rmh, i32 noundef 6) #8
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 8
  %channels = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channels, align 8
  %and.i104 = shl i32 %17, 5
  %shl.i105 = and i32 %and.i104, 992
  %20 = ptrtoint ptr %Cmd2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %Cmd2.i, align 4
  %and7.i = and i32 %19, 31
  %or4.i = or i32 %and7.i, %shl.i105
  %storemerge.i107 = or i32 %or4.i, %21
  %22 = shl nuw nsw i32 %and3, 3
  %23 = or i32 %22, %storemerge.i107
  store i32 %23, ptr %Cmd2.i, align 4
  %call20 = call i32 @vx_send_msg(ptr noundef %1, ptr noundef nonnull %rmh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end15.cleanup.thread_crit_edge, label %cleanup

if.end15.cleanup.thread_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end15.cleanup.thread_crit_edge, %if.then11.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call20, %if.end15.cleanup.thread_crit_edge ], [ %call, %if.then11.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh) #8
  br label %cleanup55

cleanup:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %24 = trunc i32 %and3.lobit to i8
  %25 = ptrtoint ptr %data_mode4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load26 = load i8, ptr %data_mode4, align 4
  %bf.shl = shl nuw nsw i8 %24, 6
  %bf.clear27 = and i8 %bf.load26, -65
  %bf.set = or i8 %bf.clear27, %bf.shl
  store i8 %bf.set, ptr %data_mode4, align 4
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh) #8
  br label %if.end28

if.end28:                                         ; preds = %cleanup, %if.end.if.end28_crit_edge
  %pcm_running = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %pcm_running to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pcm_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool29.not = icmp eq i32 %27, 0
  br i1 %tobool29.not, label %if.end28.if.end36_crit_edge, label %land.lhs.true30

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

land.lhs.true30:                                  ; preds = %if.end28
  %freq = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 21
  %28 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %freq, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %30 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp31.not = icmp eq i32 %29, %31
  br i1 %cmp31.not, label %land.lhs.true30.if.end36_crit_edge, label %if.then33

land.lhs.true30.if.end36_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #10
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 816, ptr noundef nonnull @.str.8, i32 noundef %31, i32 noundef %29) #8
  br label %cleanup55

if.end36:                                         ; preds = %land.lhs.true30.if.end36_crit_edge, %if.end28.if.end36_crit_edge
  %rate37 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %32 = ptrtoint ptr %rate37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rate37, align 4
  %call38 = call i32 @vx_set_clock(ptr noundef %1, i32 noundef %33) #8
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %34 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channels.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i = icmp eq i32 %35, 1
  %spec.select.i = select i1 %cmp.i, i32 -19922752, i32 -19922944
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %36 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %format.i, align 4
  %call.i = call i32 @snd_pcm_format_little_endian(i32 noundef %37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %or2.i = or i32 %spec.select.i, 32768
  %header.1.i = select i1 %tobool.not.i, i32 %spec.select.i, i32 %or2.i
  %38 = ptrtoint ptr %rate37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rate37, align 4
  %40 = add i32 %39, -11026
  call void @__sanitizer_cov_trace_const_cmp4(i32 20974, i32 %40)
  %41 = icmp ult i32 %40, 20974
  %or8.i = or i32 %header.1.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 11026, i32 %39)
  %cmp10.i = icmp ult i32 %39, 11026
  %or12.i = or i32 %header.1.i, 512
  %spec.select50.i = select i1 %cmp10.i, i32 %or12.i, i32 %header.1.i
  %header.2.i = select i1 %41, i32 %or8.i, i32 %spec.select50.i
  %42 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %format.i, align 4
  %call16.i = call i32 @snd_pcm_format_physical_width(i32 noundef %43) #8
  %44 = zext i32 %call16.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call16.i, label %vx_set_format.exit.thread [
    i32 16, label %if.end36.sw.epilog.i_crit_edge
    i32 24, label %sw.bb18.i
  ]

if.end36.sw.epilog.i_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

vx_set_format.exit.thread:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.9) #8
  br label %cleanup55

sw.epilog.i:                                      ; preds = %sw.bb18.i, %if.end36.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 16384, %sw.bb18.i ], [ 8192, %if.end36.sw.epilog.i_crit_edge ]
  %or19.i = or i32 %.sink.i, %header.2.i
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i.i) #8
  %45 = call ptr @memset(ptr %rmh.i.i, i32 255, i32 136)
  %46 = ptrtoint ptr %data_mode4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i.i = load i8, ptr %data_mode4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  %cond.i.i = select i1 %tobool.not.i.i, i32 22, i32 23
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i.i, i32 noundef %cond.i.i) #8
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %5, align 8
  %shl.i.i = shl i32 %48, 5
  %Cmd.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %Cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %Cmd.i.i, align 4
  %or.i.i = or i32 %50, %shl.i.i
  store i32 %or.i.i, ptr %Cmd.i.i, align 4
  %differed_type.i.i.i = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 3
  %51 = ptrtoint ptr %differed_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %differed_type.i.i.i, align 4
  %and.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %sw.epilog.i.vx_set_format.exit_crit_edge, label %if.end.i.i.i

sw.epilog.i.vx_set_format.exit_crit_edge:         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_set_format.exit

if.end.i.i.i:                                     ; preds = %sw.epilog.i
  %or.i.i.i = or i32 %or.i.i, 49152
  %53 = ptrtoint ptr %Cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or.i.i.i, ptr %Cmd.i.i, align 4
  %pcx_time.i.i.i = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 4
  %arrayidx2.i.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i.i, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %pcx_time.i.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %pcx_time.i.i.i, align 8
  %shr.i.i.i.i = lshr i64 %55, 24
  %conv.i.i.i.i = trunc i64 %shr.i.i.i.i to i32
  %and.i.i.i.i = and i32 %conv.i.i.i.i, 1048575
  %56 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and.i.i.i.i, ptr %arrayidx2.i.i.i, align 4
  %conv1.i.i.i.i = trunc i64 %55 to i32
  %and2.i.i.i.i = and i32 %conv1.i.i.i.i, 16777215
  %arrayidx3.i.i.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i.i, i32 0, i32 2, i32 2
  %57 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and2.i.i.i.i, ptr %arrayidx3.i.i.i.i, align 4
  %and4.i.i.i = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end.i.i.i.if.end10.i.i.i_crit_edge, label %if.then6.i.i.i

if.end.i.i.i.if.end10.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i.i

if.then6.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or9.i.i.i = or i32 %and.i.i.i.i, 4194304
  %58 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or9.i.i.i, ptr %arrayidx2.i.i.i, align 4
  br label %if.end10.i.i.i

if.end10.i.i.i:                                   ; preds = %if.then6.i.i.i, %if.end.i.i.i.if.end10.i.i.i_crit_edge
  %and12.i.i.i = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i.i)
  %tobool13.not.i.i.i = icmp eq i32 %and12.i.i.i, 0
  br i1 %tobool13.not.i.i.i, label %if.end10.i.i.i.if.end18.i.i.i_crit_edge, label %if.then14.i.i.i

if.end10.i.i.i.if.end18.i.i.i_crit_edge:          ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i.i.i

if.then14.i.i.i:                                  ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or17.i.i.i = or i32 %60, 1048576
  store i32 %or17.i.i.i, ptr %arrayidx2.i.i.i, align 4
  br label %if.end18.i.i.i

if.end18.i.i.i:                                   ; preds = %if.then14.i.i.i, %if.end10.i.i.i.if.end18.i.i.i_crit_edge
  %and20.i.i.i = and i32 %52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %and20.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %if.end18.i.i.i.if.end26.i.i.i_crit_edge, label %if.then22.i.i.i

if.end18.i.i.i.if.end26.i.i.i_crit_edge:          ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i.i.i

if.then22.i.i.i:                                  ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or25.i.i.i = or i32 %62, 8388608
  store i32 %or25.i.i.i, ptr %arrayidx2.i.i.i, align 4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.then22.i.i.i, %if.end18.i.i.i.if.end26.i.i.i_crit_edge
  %63 = ptrtoint ptr %rmh.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %rmh.i.i, align 4
  %add.i.i.i = add i16 %64, 2
  store i16 %add.i.i.i, ptr %rmh.i.i, align 4
  br label %vx_set_format.exit

vx_set_format.exit:                               ; preds = %if.end26.i.i.i, %sw.epilog.i.vx_set_format.exit_crit_edge
  %shr.i.i = lshr i32 %or19.i, 8
  %65 = ptrtoint ptr %rmh.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %rmh.i.i, align 4
  %idxprom.i.i = zext i16 %66 to i32
  %arrayidx2.i.i = getelementptr %struct.vx_rmh, ptr %rmh.i.i, i32 0, i32 2, i32 %idxprom.i.i
  %67 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %shr.i.i, ptr %arrayidx2.i.i, align 4
  %and3.i.i = shl i32 %header.2.i, 16
  %shl4.i.i = and i32 %and3.i.i, 16711680
  %add.i.i = add nuw nsw i32 %idxprom.i.i, 1
  %arrayidx7.i.i = getelementptr %struct.vx_rmh, ptr %rmh.i.i, i32 0, i32 2, i32 %add.i.i
  %68 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %shl4.i.i, ptr %arrayidx7.i.i, align 4
  %add10.i.i = add i16 %66, 2
  store i16 %add10.i.i, ptr %rmh.i.i, align 4
  %call12.i.i = call i32 @vx_send_msg(ptr noundef %1, ptr noundef nonnull %rmh.i.i) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp40 = icmp slt i32 %call12.i.i, 0
  br i1 %cmp40, label %vx_set_format.exit.cleanup55_crit_edge, label %if.end43

vx_set_format.exit.cleanup55_crit_edge:           ; preds = %vx_set_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup55

if.end43:                                         ; preds = %vx_set_format.exit
  %type = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 2
  %69 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp44 = icmp sgt i32 %70, 2
  %spec.select = select i1 %cmp44, i32 2, i32 4
  %71 = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 12
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %spec.select, ptr %71, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %73 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %buffer_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %75 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %76, %74
  %div1.i = lshr i32 %mul.i, 3
  %buffer_bytes = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 7
  %77 = ptrtoint ptr %buffer_bytes to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %div1.i, ptr %buffer_bytes, align 8
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %78 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %period_size, align 4
  %80 = load i32, ptr %frame_bits.i, align 8
  %mul.i109 = mul i32 %80, %79
  %div1.i110 = lshr i32 %mul.i109, 3
  %period_bytes = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 8
  %81 = ptrtoint ptr %period_bytes to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div1.i110, ptr %period_bytes, align 4
  %hw_ptr = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 9
  %82 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %hw_ptr, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i) #8
  %83 = call ptr @memset(ptr %rmh.i, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 46) #8
  %84 = ptrtoint ptr %data_mode4 to i32
  call void @__asan_load1_noabort(i32 %84)
  %bf.load.i = load i8, ptr %data_mode4, align 4
  %85 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i.i111 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i.i111, label %if.end43.vx_set_pipe_cmd_params.exit.i_crit_edge, label %if.then.i.i

if.end43.vx_set_pipe_cmd_params.exit.i_crit_edge: ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_set_pipe_cmd_params.exit.i

if.then.i.i:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %Cmd.i.i112 = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2
  %87 = ptrtoint ptr %Cmd.i.i112 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %Cmd.i.i112, align 4
  %or.i.i113 = or i32 %88, 2048
  store i32 %or.i.i113, ptr %Cmd.i.i112, align 4
  br label %vx_set_pipe_cmd_params.exit.i

vx_set_pipe_cmd_params.exit.i:                    ; preds = %if.then.i.i, %if.end43.vx_set_pipe_cmd_params.exit.i_crit_edge
  %and.i.i = shl i32 %86, 5
  %shl.i.i114 = and i32 %and.i.i, 992
  %Cmd2.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2
  %89 = ptrtoint ptr %Cmd2.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %Cmd2.i.i, align 4
  %storemerge.i.i = or i32 %90, %shl.i.i114
  store i32 %storemerge.i.i, ptr %Cmd2.i.i, align 4
  %call.i115 = call i32 @vx_send_msg(ptr noundef %1, ptr noundef nonnull %rmh.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %cmp.i116 = icmp slt i32 %call.i115, 0
  br i1 %cmp.i116, label %vx_set_pipe_cmd_params.exit.i.vx_update_pipe_position.exit_crit_edge, label %if.end.i

vx_set_pipe_cmd_params.exit.i.vx_update_pipe_position.exit_crit_edge: ; preds = %vx_set_pipe_cmd_params.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_update_pipe_position.exit

if.end.i:                                         ; preds = %vx_set_pipe_cmd_params.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %Stat.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 3
  %91 = ptrtoint ptr %Stat.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %Stat.i, align 4
  %and.i117 = and i32 %92, 1048575
  %conv.i = zext i32 %and.i117 to i64
  %shl.i118 = shl nuw nsw i64 %conv.i, 24
  %arrayidx2.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 3, i32 1
  %93 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx2.i, align 4
  %conv3.i = zext i32 %94 to i64
  %or.i = or i64 %shl.i118, %conv3.i
  %cur_count.i = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 13
  %95 = ptrtoint ptr %cur_count.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %cur_count.i, align 8
  %sub.i = sub i64 %or.i, %96
  %conv4.i = trunc i64 %sub.i to i32
  store i64 %or.i, ptr %cur_count.i, align 8
  %position.i = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 10
  %97 = ptrtoint ptr %position.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %position.i, align 4
  %add.i = add i32 %98, %conv4.i
  store i32 %add.i, ptr %position.i, align 4
  br label %vx_update_pipe_position.exit

vx_update_pipe_position.exit:                     ; preds = %if.end.i, %vx_set_pipe_cmd_params.exit.i.vx_update_pipe_position.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i) #8
  %transferred = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 11
  %99 = ptrtoint ptr %transferred to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %transferred, align 8
  %position = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 10
  %100 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %position, align 4
  %101 = ptrtoint ptr %data_mode4 to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load52 = load i8, ptr %data_mode4, align 4
  %bf.set54 = or i8 %bf.load52, 16
  store i8 %bf.set54, ptr %data_mode4, align 4
  br label %cleanup55

cleanup55:                                        ; preds = %vx_update_pipe_position.exit, %vx_set_format.exit.cleanup55_crit_edge, %vx_set_format.exit.thread, %if.then33, %cleanup.thread, %entry.cleanup55_crit_edge
  %retval.1 = phi i32 [ -22, %if.then33 ], [ 0, %vx_update_pipe_position.exit ], [ -16, %entry.cleanup55_crit_edge ], [ %call12.i.i, %vx_set_format.exit.cleanup55_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ -22, %vx_set_format.exit.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_pcm_trigger(ptr nocapture noundef readonly %subs, i32 noundef %cmd) #0 align 64 {
entry:
  %rmh.i113 = alloca %struct.vx_rmh, align 4
  %rmh.i102 = alloca %struct.vx_rmh, align 4
  %rmh.i90 = alloca %struct.vx_rmh, align 4
  %rmh.i = alloca %struct.vx_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 8
  %chip_status = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip_status, align 4
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 6, label %if.end.sw.bb_crit_edge129
    i32 0, label %if.end.sw.bb35_crit_edge
    i32 5, label %if.end.sw.bb35_crit_edge130
    i32 3, label %sw.bb44
    i32 4, label %sw.bb49
  ]

if.end.sw.bb35_crit_edge130:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb35

if.end.sw.bb35_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb35

if.end.sw.bb_crit_edge129:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge129
  %is_capture = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %is_capture to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %is_capture, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %if.then3, label %sw.bb.if.end4_crit_edge

sw.bb.if.end4_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @vx_pcm_playback_transfer(ptr noundef %1, ptr noundef %subs, ptr noundef %5, i32 noundef 2)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %sw.bb.if.end4_crit_edge
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i) #8
  %10 = call ptr @memset(ptr %rmh.i, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 17) #8
  %11 = ptrtoint ptr %is_capture to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %is_capture, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i.i, label %if.end4.vx_set_stream_cmd_params.exit.i_crit_edge, label %if.then.i.i

if.end4.vx_set_stream_cmd_params.exit.i_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_set_stream_cmd_params.exit.i

if.then.i.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %Cmd.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2
  %14 = ptrtoint ptr %Cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %Cmd.i.i, align 4
  %or.i.i = or i32 %15, 2048
  store i32 %or.i.i, ptr %Cmd.i.i, align 4
  br label %vx_set_stream_cmd_params.exit.i

vx_set_stream_cmd_params.exit.i:                  ; preds = %if.then.i.i, %if.end4.vx_set_stream_cmd_params.exit.i_crit_edge
  %and.i.i = shl i32 %13, 5
  %shl.i.i = and i32 %and.i.i, 992
  %Cmd2.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2
  %16 = ptrtoint ptr %Cmd2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %Cmd2.i.i, align 4
  %or4.i.i = or i32 %17, %shl.i.i
  store i32 %or4.i.i, ptr %Cmd2.i.i, align 4
  %differed_type.i.i = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %differed_type.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %differed_type.i.i, align 4
  %and.i5.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5.i)
  %tobool.not.i6.i = icmp eq i32 %and.i5.i, 0
  br i1 %tobool.not.i6.i, label %vx_set_stream_cmd_params.exit.i.vx_start_stream.exit_crit_edge, label %if.end.i.i

vx_set_stream_cmd_params.exit.i.vx_start_stream.exit_crit_edge: ; preds = %vx_set_stream_cmd_params.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_start_stream.exit

if.end.i.i:                                       ; preds = %vx_set_stream_cmd_params.exit.i
  %or.i8.i = or i32 %or4.i.i, 49152
  %20 = ptrtoint ptr %Cmd2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i8.i, ptr %Cmd2.i.i, align 4
  %pcx_time.i.i = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 4
  %arrayidx2.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %pcx_time.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pcx_time.i.i, align 8
  %shr.i.i.i = lshr i64 %22, 24
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %and.i.i.i = and i32 %conv.i.i.i, 1048575
  %23 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i.i.i, ptr %arrayidx2.i.i, align 4
  %conv1.i.i.i = trunc i64 %22 to i32
  %and2.i.i.i = and i32 %conv1.i.i.i, 16777215
  %arrayidx3.i.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2, i32 2
  %24 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and2.i.i.i, ptr %arrayidx3.i.i.i, align 4
  %and4.i.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.end10.i.i_crit_edge, label %if.then6.i.i

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or9.i.i = or i32 %and.i.i.i, 4194304
  %25 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or9.i.i, ptr %arrayidx2.i.i, align 4
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then6.i.i, %if.end.i.i.if.end10.i.i_crit_edge
  %and12.i.i = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end10.i.i.if.end18.i.i_crit_edge, label %if.then14.i.i

if.end10.i.i.if.end18.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i.i

if.then14.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx2.i.i, align 4
  %or17.i.i = or i32 %27, 1048576
  store i32 %or17.i.i, ptr %arrayidx2.i.i, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then14.i.i, %if.end10.i.i.if.end18.i.i_crit_edge
  %and20.i.i = and i32 %19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end18.i.i.if.end26.i.i_crit_edge, label %if.then22.i.i

if.end18.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i.i

if.then22.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx2.i.i, align 4
  %or25.i.i = or i32 %29, 8388608
  store i32 %or25.i.i, ptr %arrayidx2.i.i, align 4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then22.i.i, %if.end18.i.i.if.end26.i.i_crit_edge
  %30 = ptrtoint ptr %rmh.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rmh.i, align 4
  %add.i.i = add i16 %31, 2
  store i16 %add.i.i, ptr %rmh.i, align 4
  br label %vx_start_stream.exit

vx_start_stream.exit:                             ; preds = %if.end26.i.i, %vx_set_stream_cmd_params.exit.i.vx_start_stream.exit_crit_edge
  %call1.i = call i32 @vx_send_msg(ptr noundef %1, ptr noundef nonnull %rmh.i) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %do.body, label %if.end12

do.body:                                          ; preds = %vx_start_stream.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vx_pcm_trigger.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vx_pcm_trigger, %if.then10)) #8
          to label %cleanup [label %if.then10], !srcloc !47

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vx_pcm_trigger.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end12:                                         ; preds = %vx_start_stream.exit
  %call13 = call fastcc i32 @vx_toggle_pipe(ptr noundef %1, ptr noundef %5, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.body16, label %if.end33

do.body16:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vx_pcm_trigger.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vx_pcm_trigger, %if.then28)) #8
          to label %do.end31 [label %if.then28], !srcloc !47

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vx_pcm_trigger.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.13) #8
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %do.body16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i90) #8
  %32 = call ptr @memset(ptr %rmh.i90, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i90, i32 noundef 21) #8
  %33 = ptrtoint ptr %is_capture to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i92 = load i8, ptr %is_capture, align 4
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i92)
  %tobool.not.i.i93 = icmp sgt i8 %bf.load.i92, -1
  br i1 %tobool.not.i.i93, label %do.end31.vx_stop_stream.exit_crit_edge, label %if.then.i.i96

do.end31.vx_stop_stream.exit_crit_edge:           ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_stop_stream.exit

if.then.i.i96:                                    ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #10
  %Cmd.i.i94 = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i90, i32 0, i32 2
  %36 = ptrtoint ptr %Cmd.i.i94 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %Cmd.i.i94, align 4
  %or.i.i95 = or i32 %37, 2048
  store i32 %or.i.i95, ptr %Cmd.i.i94, align 4
  br label %vx_stop_stream.exit

vx_stop_stream.exit:                              ; preds = %if.then.i.i96, %do.end31.vx_stop_stream.exit_crit_edge
  %and.i.i97 = shl i32 %35, 5
  %shl.i.i98 = and i32 %and.i.i97, 992
  %Cmd2.i.i99 = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i90, i32 0, i32 2
  %38 = ptrtoint ptr %Cmd2.i.i99 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %Cmd2.i.i99, align 4
  %or4.i.i100 = or i32 %39, %shl.i.i98
  store i32 %or4.i.i100, ptr %Cmd2.i.i99, align 4
  %call.i = call i32 @vx_send_msg(ptr noundef %1, ptr noundef nonnull %rmh.i90) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i90) #8
  br label %cleanup

if.end33:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %pcm_running = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 8
  %40 = ptrtoint ptr %pcm_running to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pcm_running, align 4
  %inc = add i32 %41, 1
  store i32 %inc, ptr %pcm_running, align 4
  %42 = ptrtoint ptr %is_capture to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load34 = load i8, ptr %is_capture, align 4
  %bf.set = or i8 %bf.load34, 32
  store i8 %bf.set, ptr %is_capture, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end.sw.bb35_crit_edge, %if.end.sw.bb35_crit_edge130
  %call36 = tail call fastcc i32 @vx_toggle_pipe(ptr noundef %1, ptr noundef %5, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i102) #8
  %43 = call ptr @memset(ptr %rmh.i102, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i102, i32 noundef 11) #8
  %is_capture.i103 = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 1
  %44 = ptrtoint ptr %is_capture.i103 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i104 = load i8, ptr %is_capture.i103, align 4
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i104)
  %tobool.not.i.i105 = icmp sgt i8 %bf.load.i104, -1
  br i1 %tobool.not.i.i105, label %sw.bb35.vx_stop_pipe.exit_crit_edge, label %if.then.i.i108

sw.bb35.vx_stop_pipe.exit_crit_edge:              ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_stop_pipe.exit

if.then.i.i108:                                   ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  %Cmd.i.i106 = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i102, i32 0, i32 2
  %47 = ptrtoint ptr %Cmd.i.i106 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %Cmd.i.i106, align 4
  %or.i.i107 = or i32 %48, 2048
  store i32 %or.i.i107, ptr %Cmd.i.i106, align 4
  br label %vx_stop_pipe.exit

vx_stop_pipe.exit:                                ; preds = %if.then.i.i108, %sw.bb35.vx_stop_pipe.exit_crit_edge
  %and.i.i109 = shl i32 %46, 5
  %shl.i.i110 = and i32 %and.i.i109, 992
  %Cmd2.i.i111 = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i102, i32 0, i32 2
  %49 = ptrtoint ptr %Cmd2.i.i111 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %Cmd2.i.i111, align 4
  %storemerge.i.i = or i32 %50, %shl.i.i110
  store i32 %storemerge.i.i, ptr %Cmd2.i.i111, align 4
  %call.i112 = call i32 @vx_send_msg(ptr noundef %1, ptr noundef nonnull %rmh.i102) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i102) #8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i113) #8
  %51 = call ptr @memset(ptr %rmh.i113, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i113, i32 noundef 21) #8
  %52 = ptrtoint ptr %is_capture.i103 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i115 = load i8, ptr %is_capture.i103, align 4
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i115)
  %tobool.not.i.i116 = icmp sgt i8 %bf.load.i115, -1
  br i1 %tobool.not.i.i116, label %vx_stop_pipe.exit.vx_stop_stream.exit126_crit_edge, label %if.then.i.i119

vx_stop_pipe.exit.vx_stop_stream.exit126_crit_edge: ; preds = %vx_stop_pipe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_stop_stream.exit126

if.then.i.i119:                                   ; preds = %vx_stop_pipe.exit
  call void @__sanitizer_cov_trace_pc() #10
  %Cmd.i.i117 = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i113, i32 0, i32 2
  %55 = ptrtoint ptr %Cmd.i.i117 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %Cmd.i.i117, align 4
  %or.i.i118 = or i32 %56, 2048
  store i32 %or.i.i118, ptr %Cmd.i.i117, align 4
  br label %vx_stop_stream.exit126

vx_stop_stream.exit126:                           ; preds = %if.then.i.i119, %vx_stop_pipe.exit.vx_stop_stream.exit126_crit_edge
  %and.i.i120 = shl i32 %54, 5
  %shl.i.i121 = and i32 %and.i.i120, 992
  %Cmd2.i.i122 = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i113, i32 0, i32 2
  %57 = ptrtoint ptr %Cmd2.i.i122 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %Cmd2.i.i122, align 4
  %or4.i.i123 = or i32 %58, %shl.i.i121
  store i32 %or4.i.i123, ptr %Cmd2.i.i122, align 4
  %call.i124 = call i32 @vx_send_msg(ptr noundef %1, ptr noundef nonnull %rmh.i113) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i113) #8
  %pcm_running39 = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 8
  %59 = ptrtoint ptr %pcm_running39 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pcm_running39, align 4
  %dec = add i32 %60, -1
  store i32 %dec, ptr %pcm_running39, align 4
  %61 = ptrtoint ptr %is_capture.i103 to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load41 = load i8, ptr %is_capture.i103, align 4
  %bf.clear42 = and i8 %bf.load41, -33
  store i8 %bf.clear42, ptr %is_capture.i103, align 4
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end
  %call45 = tail call fastcc i32 @vx_toggle_pipe(ptr noundef %1, ptr noundef %5, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %sw.bb44.cleanup_crit_edge, label %sw.bb44.sw.epilog_crit_edge

sw.bb44.sw.epilog_crit_edge:                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb49:                                          ; preds = %if.end
  %call50 = tail call fastcc i32 @vx_toggle_pipe(ptr noundef %1, ptr noundef %5, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %sw.bb49.cleanup_crit_edge, label %sw.bb49.sw.epilog_crit_edge

sw.bb49.sw.epilog_crit_edge:                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb49.sw.epilog_crit_edge, %sw.bb44.sw.epilog_crit_edge, %vx_stop_stream.exit126, %if.end33
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb49.cleanup_crit_edge, %sw.bb44.cleanup_crit_edge, %vx_stop_stream.exit, %if.then10, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call13, %vx_stop_stream.exit ], [ -16, %entry.cleanup_crit_edge ], [ %call1.i, %if.then10 ], [ %call45, %sw.bb44.cleanup_crit_edge ], [ %call50, %sw.bb49.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call1.i, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vx_pcm_playback_pointer(ptr nocapture noundef readonly %subs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %position = getelementptr inbounds %struct.vx_pipe, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %position, align 4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vx_alloc_pipe(ptr noundef %chip, i32 noundef %capture, i32 noundef %audioid, ptr nocapture noundef writeonly %pipep) unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.vx_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh) #8
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 136)
  %1 = ptrtoint ptr %pipep to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %pipep, align 4
  call void @vx_init_rmh(ptr noundef nonnull %rmh, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %capture)
  %tobool.not.i = icmp eq i32 %capture, 0
  br i1 %tobool.not.i, label %entry.vx_set_pipe_cmd_params.exit_crit_edge, label %if.then.i

entry.vx_set_pipe_cmd_params.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_set_pipe_cmd_params.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %Cmd.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh, i32 0, i32 2
  %2 = ptrtoint ptr %Cmd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %Cmd.i, align 4
  %or.i = or i32 %3, 2048
  store i32 %or.i, ptr %Cmd.i, align 4
  br label %vx_set_pipe_cmd_params.exit

vx_set_pipe_cmd_params.exit:                      ; preds = %if.then.i, %entry.vx_set_pipe_cmd_params.exit_crit_edge
  %and.i = shl i32 %audioid, 5
  %shl.i = and i32 %and.i, 992
  %Cmd2.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh, i32 0, i32 2
  %4 = ptrtoint ptr %Cmd2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %Cmd2.i, align 4
  %or4.i = or i32 %5, %shl.i
  %storemerge.i = or i32 %or4.i, 2
  store i32 %storemerge.i, ptr %Cmd2.i, align 4
  %uer_bits = getelementptr inbounds %struct.vx_core, ptr %chip, i32 0, i32 24
  %6 = ptrtoint ptr %uer_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uer_bits, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %capture)
  %tobool.not = icmp ne i32 %capture, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %vx_set_pipe_cmd_params.exit.if.end_crit_edge, label %if.then

vx_set_pipe_cmd_params.exit.if.end_crit_edge:     ; preds = %vx_set_pipe_cmd_params.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %vx_set_pipe_cmd_params.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %or4.i, 18
  %8 = ptrtoint ptr %Cmd2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %Cmd2.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %vx_set_pipe_cmd_params.exit.if.end_crit_edge
  %call = call i32 @vx_send_msg(ptr noundef %chip, ptr noundef nonnull %rmh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 72) #13
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @vx_init_rmh(ptr noundef nonnull %rmh, i32 noundef 7) #8
  br i1 %tobool.not.i, label %if.then8.vx_set_pipe_cmd_params.exit9_crit_edge, label %if.then.i4

if.then8.vx_set_pipe_cmd_params.exit9_crit_edge:  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_set_pipe_cmd_params.exit9

if.then.i4:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %Cmd2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %Cmd2.i, align 4
  %or.i3 = or i32 %11, 2048
  store i32 %or.i3, ptr %Cmd2.i, align 4
  br label %vx_set_pipe_cmd_params.exit9

vx_set_pipe_cmd_params.exit9:                     ; preds = %if.then.i4, %if.then8.vx_set_pipe_cmd_params.exit9_crit_edge
  %12 = ptrtoint ptr %Cmd2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %Cmd2.i, align 4
  %storemerge.i8 = or i32 %13, %shl.i
  store i32 %storemerge.i8, ptr %Cmd2.i, align 4
  %call9 = call i32 @vx_send_msg(ptr noundef %chip, ptr noundef nonnull %rmh) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %audioid, ptr %call7.i.i, align 8
  %is_capture = getelementptr inbounds %struct.vx_pipe, ptr %call7.i.i, i32 0, i32 1
  %15 = trunc i32 %capture to i8
  %16 = ptrtoint ptr %is_capture to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %is_capture, align 4
  %bf.shl = shl i8 %15, 7
  %bf.clear = and i8 %bf.load, 63
  %bf.set = or i8 %bf.clear, %bf.shl
  %channels = getelementptr inbounds %struct.vx_pipe, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %channels, align 8
  %differed_type = getelementptr inbounds %struct.vx_pipe, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %differed_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %differed_type, align 4
  %pcx_time = getelementptr inbounds %struct.vx_pipe, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %pcx_time to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 0, ptr %pcx_time, align 8
  %20 = trunc i32 %and to i8
  %bf.shl14 = shl nuw nsw i8 %20, 5
  %bf.set16 = or i8 %bf.set, %bf.shl14
  store i8 %bf.set16, ptr %is_capture, align 4
  %21 = ptrtoint ptr %pipep to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %pipep, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %vx_set_pipe_cmd_params.exit9, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -12, %vx_set_pipe_cmd_params.exit9 ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vx_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_little_endian(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vx_toggle_pipe(ptr noundef %chip, ptr nocapture noundef readonly %pipe, i32 noundef %state) unnamed_addr #0 align 64 {
entry:
  %rmh.i76 = alloca %struct.vx_rmh, align 4
  %rmh.i74 = alloca %struct.vx_rmh, align 4
  %rmh.i67 = alloca %struct.vx_rmh, align 4
  %rmh.i51 = alloca %struct.vx_rmh, align 4
  %rmh.i = alloca %struct.vx_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i) #8
  %0 = call ptr @memset(ptr %rmh.i, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 12) #8
  %is_capture.i = getelementptr inbounds %struct.vx_pipe, ptr %pipe, i32 0, i32 1
  %1 = ptrtoint ptr %is_capture.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load.i = load i8, ptr %is_capture.i, align 4
  %2 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pipe, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i.i, label %entry.vx_set_pipe_cmd_params.exit.i_crit_edge, label %if.then.i.i

entry.vx_set_pipe_cmd_params.exit.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_set_pipe_cmd_params.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %Cmd.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2
  %4 = ptrtoint ptr %Cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %Cmd.i.i, align 4
  %or.i.i = or i32 %5, 2048
  store i32 %or.i.i, ptr %Cmd.i.i, align 4
  br label %vx_set_pipe_cmd_params.exit.i

vx_set_pipe_cmd_params.exit.i:                    ; preds = %if.then.i.i, %entry.vx_set_pipe_cmd_params.exit.i_crit_edge
  %and.i.i = shl i32 %3, 5
  %shl.i.i = and i32 %and.i.i, 992
  %Cmd2.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2
  %6 = ptrtoint ptr %Cmd2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %Cmd2.i.i, align 4
  %storemerge.i.i = or i32 %7, %shl.i.i
  store i32 %storemerge.i.i, ptr %Cmd2.i.i, align 4
  %call.i = call i32 @vx_send_msg(ptr noundef %chip, ptr noundef nonnull %rmh.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %vx_get_pipe_state.exit.thread, label %vx_get_pipe_state.exit

vx_get_pipe_state.exit.thread:                    ; preds = %vx_set_pipe_cmd_params.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %Stat.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 3
  %8 = ptrtoint ptr %Stat.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %Stat.i, align 4
  %10 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pipe, align 8
  %12 = lshr i32 %9, %11
  %13 = and i32 %12, 1
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i) #8
  br label %if.end

vx_get_pipe_state.exit:                           ; preds = %vx_set_pipe_cmd_params.exit.i
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %vx_get_pipe_state.exit.cleanup_crit_edge, label %vx_get_pipe_state.exit.if.end_crit_edge

vx_get_pipe_state.exit.if.end_crit_edge:          ; preds = %vx_get_pipe_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

vx_get_pipe_state.exit.cleanup_crit_edge:         ; preds = %vx_get_pipe_state.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %vx_get_pipe_state.exit.if.end_crit_edge, %vx_get_pipe_state.exit.thread
  %cur_state.096 = phi i32 [ %13, %vx_get_pipe_state.exit.thread ], [ -1, %vx_get_pipe_state.exit.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_state.096, i32 %state)
  %cmp1 = icmp eq i32 %cur_state.096, %state
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  br i1 %tobool.not, label %if.end3.if.end10_crit_edge, label %for.cond.preheader

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

for.cond.preheader:                               ; preds = %if.end3
  %Cmd.i.i55 = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i51, i32 0, i32 2
  %Stat.i65 = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i51, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.cond.preheader
  %i.0100 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %if.end9.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i51) #8
  %14 = call ptr @memset(ptr %rmh.i51, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i51, i32 noundef 14) #8
  %15 = ptrtoint ptr %is_capture.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i53 = load i8, ptr %is_capture.i, align 4
  %16 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pipe, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i53)
  %tobool.not.i.i54 = icmp sgt i8 %bf.load.i53, -1
  br i1 %tobool.not.i.i54, label %for.body.vx_set_pipe_cmd_params.exit.i64_crit_edge, label %if.then.i.i57

for.body.vx_set_pipe_cmd_params.exit.i64_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_set_pipe_cmd_params.exit.i64

if.then.i.i57:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %Cmd.i.i55 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %Cmd.i.i55, align 4
  %or.i.i56 = or i32 %19, 2048
  store i32 %or.i.i56, ptr %Cmd.i.i55, align 4
  br label %vx_set_pipe_cmd_params.exit.i64

vx_set_pipe_cmd_params.exit.i64:                  ; preds = %if.then.i.i57, %for.body.vx_set_pipe_cmd_params.exit.i64_crit_edge
  %and.i.i58 = shl i32 %17, 5
  %shl.i.i59 = and i32 %and.i.i58, 992
  %20 = ptrtoint ptr %Cmd.i.i55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %Cmd.i.i55, align 4
  %storemerge.i.i61 = or i32 %shl.i.i59, %21
  %or.i = or i32 %storemerge.i.i61, 1
  store i32 %or.i, ptr %Cmd.i.i55, align 4
  %call.i62 = call i32 @vx_send_msg(ptr noundef %chip, ptr noundef nonnull %rmh.i51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool.not.i63 = icmp eq i32 %call.i62, 0
  br i1 %tobool.not.i63, label %if.then.i66, label %vx_set_pipe_cmd_params.exit.i64.vx_pipe_can_start.exit_crit_edge

vx_set_pipe_cmd_params.exit.i64.vx_pipe_can_start.exit_crit_edge: ; preds = %vx_set_pipe_cmd_params.exit.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_pipe_can_start.exit

if.then.i66:                                      ; preds = %vx_set_pipe_cmd_params.exit.i64
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %Stat.i65 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %Stat.i65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool2.not.i = icmp ne i32 %23, 0
  %spec.select.i = zext i1 %tobool2.not.i to i32
  br label %vx_pipe_can_start.exit

vx_pipe_can_start.exit:                           ; preds = %if.then.i66, %vx_set_pipe_cmd_params.exit.i64.vx_pipe_can_start.exit_crit_edge
  %err.0.i = phi i32 [ %call.i62, %vx_set_pipe_cmd_params.exit.i64.vx_pipe_can_start.exit_crit_edge ], [ %spec.select.i, %if.then.i66 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp7 = icmp sgt i32 %err.0.i, 0
  br i1 %cmp7, label %vx_pipe_can_start.exit.if.end10_crit_edge, label %if.end9

vx_pipe_can_start.exit.if.end10_crit_edge:        ; preds = %vx_pipe_can_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end9:                                          ; preds = %vx_pipe_can_start.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #8
  %inc = add nuw nsw i32 %i.0100, 1
  %exitcond.not = icmp eq i32 %inc, 250
  br i1 %exitcond.not, label %if.end9.if.end10_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end9.if.end10_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %if.end9.if.end10_crit_edge, %vx_pipe_can_start.exit.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i67) #8
  %25 = call ptr @memset(ptr %rmh.i67, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i67, i32 noundef 8) #8
  %26 = ptrtoint ptr %is_capture.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i69 = load i8, ptr %is_capture.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i69)
  %tobool.not.i70 = icmp sgt i8 %bf.load.i69, -1
  br i1 %tobool.not.i70, label %if.end10.vx_conf_pipe.exit_crit_edge, label %if.then.i72

if.end10.vx_conf_pipe.exit_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_conf_pipe.exit

if.then.i72:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %Cmd.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i67, i32 0, i32 2
  %27 = ptrtoint ptr %Cmd.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %Cmd.i, align 4
  %or.i71 = or i32 %28, 2048
  store i32 %or.i71, ptr %Cmd.i, align 4
  br label %vx_conf_pipe.exit

vx_conf_pipe.exit:                                ; preds = %if.then.i72, %if.end10.vx_conf_pipe.exit_crit_edge
  %29 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pipe, align 8
  %shl.i = shl nuw i32 1, %30
  %arrayidx2.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i67, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shl.i, ptr %arrayidx2.i, align 4
  %call.i73 = call i32 @vx_send_msg(ptr noundef %chip, ptr noundef nonnull %rmh.i67) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp12 = icmp slt i32 %call.i73, 0
  br i1 %cmp12, label %vx_conf_pipe.exit.cleanup_crit_edge, label %if.end14

vx_conf_pipe.exit.cleanup_crit_edge:              ; preds = %vx_conf_pipe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %vx_conf_pipe.exit
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i74) #8
  %32 = call ptr @memset(ptr %rmh.i74, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i74, i32 noundef 3) #8
  %call.i75 = call i32 @vx_send_msg(ptr noundef %chip, ptr noundef nonnull %rmh.i74) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp16 = icmp slt i32 %call.i75, 0
  br i1 %cmp16, label %if.end14.cleanup_crit_edge, label %for.cond19.preheader

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond19.preheader:                             ; preds = %if.end14
  %Cmd.i.i80 = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i76, i32 0, i32 2
  %Stat.i90 = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i76, i32 0, i32 3
  br label %for.body21

for.body21:                                       ; preds = %if.end26.for.body21_crit_edge, %for.cond19.preheader
  %i.1102 = phi i32 [ 0, %for.cond19.preheader ], [ %inc28, %if.end26.for.body21_crit_edge ]
  %cur_state.1101 = phi i32 [ %cur_state.096, %for.cond19.preheader ], [ %cur_state.299, %if.end26.for.body21_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i76) #8
  %33 = call ptr @memset(ptr %rmh.i76, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i76, i32 noundef 12) #8
  %34 = ptrtoint ptr %is_capture.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load.i78 = load i8, ptr %is_capture.i, align 4
  %35 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pipe, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i78)
  %tobool.not.i.i79 = icmp sgt i8 %bf.load.i78, -1
  br i1 %tobool.not.i.i79, label %for.body21.vx_set_pipe_cmd_params.exit.i89_crit_edge, label %if.then.i.i82

for.body21.vx_set_pipe_cmd_params.exit.i89_crit_edge: ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_set_pipe_cmd_params.exit.i89

if.then.i.i82:                                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %Cmd.i.i80 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %Cmd.i.i80, align 4
  %or.i.i81 = or i32 %38, 2048
  store i32 %or.i.i81, ptr %Cmd.i.i80, align 4
  br label %vx_set_pipe_cmd_params.exit.i89

vx_set_pipe_cmd_params.exit.i89:                  ; preds = %if.then.i.i82, %for.body21.vx_set_pipe_cmd_params.exit.i89_crit_edge
  %and.i.i83 = shl i32 %36, 5
  %shl.i.i84 = and i32 %and.i.i83, 992
  %39 = ptrtoint ptr %Cmd.i.i80 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %Cmd.i.i80, align 4
  %storemerge.i.i86 = or i32 %40, %shl.i.i84
  store i32 %storemerge.i.i86, ptr %Cmd.i.i80, align 4
  %call.i87 = call i32 @vx_send_msg(ptr noundef %chip, ptr noundef nonnull %rmh.i76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool.not.i88 = icmp eq i32 %call.i87, 0
  br i1 %tobool.not.i88, label %vx_get_pipe_state.exit92.thread, label %vx_get_pipe_state.exit92

vx_get_pipe_state.exit92.thread:                  ; preds = %vx_set_pipe_cmd_params.exit.i89
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %Stat.i90 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %Stat.i90, align 4
  %43 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pipe, align 8
  %45 = lshr i32 %42, %44
  %46 = and i32 %45, 1
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i76) #8
  br label %lor.lhs.false

vx_get_pipe_state.exit92:                         ; preds = %vx_set_pipe_cmd_params.exit.i89
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %cmp23 = icmp slt i32 %call.i87, 0
  br i1 %cmp23, label %vx_get_pipe_state.exit92.cleanup_crit_edge, label %vx_get_pipe_state.exit92.lor.lhs.false_crit_edge

vx_get_pipe_state.exit92.lor.lhs.false_crit_edge: ; preds = %vx_get_pipe_state.exit92
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

vx_get_pipe_state.exit92.cleanup_crit_edge:       ; preds = %vx_get_pipe_state.exit92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %vx_get_pipe_state.exit92.lor.lhs.false_crit_edge, %vx_get_pipe_state.exit92.thread
  %cur_state.299 = phi i32 [ %46, %vx_get_pipe_state.exit92.thread ], [ %cur_state.1101, %vx_get_pipe_state.exit92.lor.lhs.false_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_state.299, i32 %state)
  %cmp24 = icmp eq i32 %cur_state.299, %state
  br i1 %cmp24, label %lor.lhs.false.cleanup_crit_edge, label %if.end26

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748000) #8
  %inc28 = add nuw nsw i32 %i.1102, 1
  %exitcond103.not = icmp eq i32 %inc28, 250
  br i1 %exitcond103.not, label %if.end26.cleanup_crit_edge, label %if.end26.for.body21_crit_edge

if.end26.for.body21_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end26.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %vx_get_pipe_state.exit92.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %vx_conf_pipe.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %vx_get_pipe_state.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -77, %vx_get_pipe_state.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i73, %vx_conf_pipe.exit.cleanup_crit_edge ], [ %call.i75, %if.end14.cleanup_crit_edge ], [ -5, %if.end26.cleanup_crit_edge ], [ -5, %vx_get_pipe_state.exit92.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_pcm_capture_open(ptr noundef %subs) #0 align 64 {
entry:
  %pipe = alloca ptr, align 4
  %pipe_out_monitoring = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe) #8
  %4 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %pipe, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe_out_monitoring) #8
  %5 = ptrtoint ptr %pipe_out_monitoring to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %pipe_out_monitoring, align 4
  %chip_status = getelementptr inbounds %struct.vx_core, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %chip_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chip_status, align 4
  %and = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %subs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subs, align 4
  %device = getelementptr inbounds %struct.snd_pcm, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device, align 4
  %mul = shl i32 %11, 1
  %audio_ins = getelementptr inbounds %struct.vx_core, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %audio_ins to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %audio_ins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %13)
  %cmp.not = icmp ult i32 %mul, %13
  br i1 %cmp.not, label %if.end25, label %do.end, !prof !44

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 899, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %call = call fastcc i32 @vx_alloc_pipe(ptr noundef %3, i32 noundef 1, i32 noundef %mul, ptr noundef nonnull %pipe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp26 = icmp slt i32 %call, 0
  br i1 %cmp26, label %if.end25.cleanup_crit_edge, label %if.end28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %14 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pipe, align 4
  %substream = getelementptr inbounds %struct.vx_pipe, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %substream to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %subs, ptr %substream, align 8
  %capture_pipes = getelementptr inbounds %struct.vx_core, ptr %3, i32 0, i32 16
  %17 = ptrtoint ptr %capture_pipes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %capture_pipes, align 4
  %arrayidx = getelementptr ptr, ptr %18, i32 %mul
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %15, ptr %arrayidx, align 4
  %arrayidx29 = getelementptr %struct.vx_core, ptr %3, i32 0, i32 30, i32 %mul
  %20 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool30.not = icmp eq i8 %21, 0
  br i1 %tobool30.not, label %if.end28.if.end54_crit_edge, label %if.then31

if.end28.if.end54_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then31:                                        ; preds = %if.end28
  %playback_pipes = getelementptr inbounds %struct.vx_core, ptr %3, i32 0, i32 15
  %22 = ptrtoint ptr %playback_pipes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %playback_pipes, align 4
  %arrayidx32 = getelementptr ptr, ptr %23, i32 %mul
  %24 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx32, align 4
  %26 = ptrtoint ptr %pipe_out_monitoring to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %pipe_out_monitoring, align 4
  %tobool33.not = icmp eq ptr %25, null
  br i1 %tobool33.not, label %if.then34, label %if.then31.if.end41_crit_edge

if.then31.if.end41_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then34:                                        ; preds = %if.then31
  %call35 = call fastcc i32 @vx_alloc_pipe(ptr noundef %3, i32 noundef 0, i32 noundef %mul, ptr noundef nonnull %pipe_out_monitoring)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then34.cleanup_crit_edge, label %if.end38

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %pipe_out_monitoring to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pipe_out_monitoring, align 4
  %29 = ptrtoint ptr %playback_pipes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %playback_pipes, align 4
  %arrayidx40 = getelementptr ptr, ptr %30, i32 %mul
  %31 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %arrayidx40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end38, %if.then31.if.end41_crit_edge
  %32 = ptrtoint ptr %pipe_out_monitoring to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pipe_out_monitoring, align 4
  %references = getelementptr inbounds %struct.vx_pipe, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %references to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %references, align 8
  %inc = add i32 %35, 1
  store i32 %inc, ptr %references, align 8
  %arrayidx42 = getelementptr %struct.vx_core, ptr %3, i32 0, i32 29, i32 %mul
  %36 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx42, align 4
  %38 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx29, align 1
  %conv = zext i8 %39 to i32
  %call45 = tail call i32 @vx_set_monitor_level(ptr noundef %3, i32 noundef %mul, i32 noundef %37, i32 noundef %conv) #8
  %add = or i32 %mul, 1
  %arrayidx48 = getelementptr %struct.vx_core, ptr %3, i32 0, i32 29, i32 %add
  %40 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx48, align 4
  %arrayidx51 = getelementptr %struct.vx_core, ptr %3, i32 0, i32 30, i32 %add
  %42 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %43 to i32
  %call53 = tail call i32 @vx_set_monitor_level(ptr noundef %3, i32 noundef %add, i32 noundef %41, i32 noundef %conv52) #8
  br label %if.end54

if.end54:                                         ; preds = %if.end41, %if.end28.if.end54_crit_edge
  %44 = ptrtoint ptr %pipe_out_monitoring to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pipe_out_monitoring, align 4
  %monitoring_pipe = getelementptr inbounds %struct.vx_pipe, ptr %15, i32 0, i32 15
  %46 = ptrtoint ptr %monitoring_pipe to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %monitoring_pipe, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %47 = call ptr @memcpy(ptr %hw, ptr @vx_pcm_capture_hw, i32 64)
  %ibl = getelementptr inbounds %struct.vx_core, ptr %3, i32 0, i32 25
  %48 = ptrtoint ptr %ibl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ibl, align 4
  %period_bytes_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 8
  %50 = ptrtoint ptr %period_bytes_min to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %period_bytes_min, align 8
  %private_data56 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %51 = ptrtoint ptr %private_data56 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %15, ptr %private_data56, align 8
  %call57 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 18, i32 noundef 4) #8
  %call58 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 14, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.then34.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end54 ], [ -16, %entry.cleanup_crit_edge ], [ %call, %if.end25.cleanup_crit_edge ], [ %call35, %if.then34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe_out_monitoring) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vx_pcm_capture_close(ptr nocapture noundef readonly %subs) #0 align 64 {
entry:
  %rmh.i27 = alloca %struct.vx_rmh, align 4
  %rmh.i = alloca %struct.vx_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %capture_pipes = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %capture_pipes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %capture_pipes, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 8
  %arrayidx = getelementptr ptr, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %arrayidx, align 4
  %monitoring_pipe = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 15
  %11 = ptrtoint ptr %monitoring_pipe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %monitoring_pipe, align 4
  %tobool4.not = icmp eq ptr %12, null
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %references = getelementptr inbounds %struct.vx_pipe, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %references to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %references, align 8
  %dec = add i32 %14, -1
  store i32 %dec, ptr %references, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then6, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then6:                                         ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i) #8
  %15 = call ptr @memset(ptr %rmh.i, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 7) #8
  %is_capture.i = getelementptr inbounds %struct.vx_pipe, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %is_capture.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %is_capture.i, align 4
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %12, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i.i, label %if.then6.vx_free_pipe.exit_crit_edge, label %if.then.i.i

if.then6.vx_free_pipe.exit_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_free_pipe.exit

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %Cmd.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2
  %19 = ptrtoint ptr %Cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %Cmd.i.i, align 4
  %or.i.i = or i32 %20, 2048
  store i32 %or.i.i, ptr %Cmd.i.i, align 4
  br label %vx_free_pipe.exit

vx_free_pipe.exit:                                ; preds = %if.then.i.i, %if.then6.vx_free_pipe.exit_crit_edge
  %and.i.i = shl i32 %18, 5
  %shl.i.i = and i32 %and.i.i, 992
  %Cmd2.i.i = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i, i32 0, i32 2
  %21 = ptrtoint ptr %Cmd2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %Cmd2.i.i, align 4
  %storemerge.i.i = or i32 %22, %shl.i.i
  store i32 %storemerge.i.i, ptr %Cmd2.i.i, align 4
  %call.i = call i32 @vx_send_msg(ptr noundef %1, ptr noundef nonnull %rmh.i) #8
  call void @kfree(ptr noundef nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i) #8
  %playback_pipes = getelementptr inbounds %struct.vx_core, ptr %1, i32 0, i32 15
  %23 = ptrtoint ptr %playback_pipes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %playback_pipes, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %5, align 8
  %arrayidx8 = getelementptr ptr, ptr %24, i32 %26
  %27 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx8, align 4
  %28 = ptrtoint ptr %monitoring_pipe to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %monitoring_pipe, align 4
  br label %if.end11

if.end11:                                         ; preds = %vx_free_pipe.exit, %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %rmh.i27) #8
  %29 = call ptr @memset(ptr %rmh.i27, i32 255, i32 136)
  call void @vx_init_rmh(ptr noundef nonnull %rmh.i27, i32 noundef 7) #8
  %is_capture.i28 = getelementptr inbounds %struct.vx_pipe, ptr %5, i32 0, i32 1
  %30 = ptrtoint ptr %is_capture.i28 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i29 = load i8, ptr %is_capture.i28, align 4
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i29)
  %tobool.not.i.i30 = icmp sgt i8 %bf.load.i29, -1
  br i1 %tobool.not.i.i30, label %if.end11.vx_free_pipe.exit39_crit_edge, label %if.then.i.i33

if.end11.vx_free_pipe.exit39_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %vx_free_pipe.exit39

if.then.i.i33:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %Cmd.i.i31 = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i27, i32 0, i32 2
  %33 = ptrtoint ptr %Cmd.i.i31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %Cmd.i.i31, align 4
  %or.i.i32 = or i32 %34, 2048
  store i32 %or.i.i32, ptr %Cmd.i.i31, align 4
  br label %vx_free_pipe.exit39

vx_free_pipe.exit39:                              ; preds = %if.then.i.i33, %if.end11.vx_free_pipe.exit39_crit_edge
  %and.i.i34 = shl i32 %32, 5
  %shl.i.i35 = and i32 %and.i.i34, 992
  %Cmd2.i.i36 = getelementptr inbounds %struct.vx_rmh, ptr %rmh.i27, i32 0, i32 2
  %35 = ptrtoint ptr %Cmd2.i.i36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %Cmd2.i.i36, align 4
  %storemerge.i.i37 = or i32 %36, %shl.i.i35
  store i32 %storemerge.i.i37, ptr %Cmd2.i.i36, align 4
  %call.i38 = call i32 @vx_send_msg(ptr noundef %1, ptr noundef nonnull %rmh.i27) #8
  call void @kfree(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %rmh.i27) #8
  br label %cleanup

cleanup:                                          ; preds = %vx_free_pipe.exit39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vx_free_pipe.exit39 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vx_pcm_capture_pointer(ptr nocapture noundef readonly %subs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %hw_ptr = getelementptr inbounds %struct.vx_pipe, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_ptr, align 8
  %mul.i = shl i32 %5, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %7
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vx_set_monitor_level(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !30, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/drivers/vx/vx_pcm.c", i32 1094, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../sound/drivers/vx/vx_pcm.c", i32 1209, i32 33}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../sound/drivers/vx/vx_pcm.c", i32 619, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/drivers/vx/vx_pcm.c", i32 624, i32 3}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/drivers/vx/vx_pcm.c", i32 1144, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/drivers/vx/vx_pcm.c", i32 193, i32 2}
!13 = !{ptr @vx_pcm_playback_ops, !14, !"vx_pcm_playback_ops", i1 false, i1 false}
!14 = !{!"../sound/drivers/vx/vx_pcm.c", i32 850, i32 33}
!15 = !{ptr @vx_pcm_playback_hw, !16, !"vx_pcm_playback_hw", i1 false, i1 false}
!16 = !{!"../sound/drivers/vx/vx_pcm.c", i32 489, i32 38}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/drivers/vx/vx_pcm.c", i32 798, i32 3}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/drivers/vx/vx_pcm.c", i32 815, i32 3}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/drivers/vx/vx_pcm.c", i32 169, i32 3}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/drivers/vx/vx_pcm.c", i32 733, i32 4}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vx_pcm_trigger.__UNIQUE_ID_ddebug234, !24, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/drivers/vx/vx_pcm.c", i32 738, i32 4}
!30 = !{ptr @vx_pcm_trigger.__UNIQUE_ID_ddebug235, !29, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!31 = !{ptr @vx_pcm_capture_ops, !32, !"vx_pcm_capture_ops", i1 false, i1 false}
!32 = !{!"../sound/drivers/vx/vx_pcm.c", i32 1067, i32 33}
!33 = !{ptr @vx_pcm_capture_hw, !34, !"vx_pcm_capture_hw", i1 false, i1 false}
!34 = !{!"../sound/drivers/vx/vx_pcm.c", i32 863, i32 38}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{!"auto-init"}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i64 2148231650, i64 2148231655, i64 2148231668, i64 2148231712, i64 2148231746, i64 2148231767}
