; ModuleID = '/llk/IR_all_yes/sound/pci/ctxfi/cttimer.c_pt.bc'
source_filename = "../sound/pci/ctxfi/cttimer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ct_timer_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ct_timer_instance = type { %struct.spinlock, ptr, ptr, ptr, %struct.timer_list, %struct.list_head, %struct.list_head, i32, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.ct_timer = type { %struct.spinlock, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.list_head, i32, i8 }
%struct.ct_atc = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, [5 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.ct_atc_pcm = type { ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_use_system_timer238 = internal constant [58 x i8] c"snd_ctxfi.parm=use_system_timer:Force to use system-timer\00", section ".modinfo", align 1
@__param_str_use_system_timer = internal constant [27 x i8] c"snd_ctxfi.use_system_timer\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@use_system_timer = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_use_system_timer = internal constant %struct.kernel_param { ptr @__param_str_use_system_timer, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @use_system_timer } }, section "__param", align 4
@__UNIQUE_ID_use_system_timertype239 = internal constant [41 x i8] c"snd_ctxfi.parmtype=use_system_timer:bool\00", section ".modinfo", align 1
@ct_timer_instance_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ti->lock\00", [22 x i8] zeroinitializer }, align 32
@ct_timer_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&atimer->lock\00", [18 x i8] zeroinitializer }, align 32
@ct_timer_new.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&atimer->list_lock\00", [45 x i8] zeroinitializer }, align 32
@ct_timer_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 420, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Use xfi-native timer\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ct_timer_new\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/pci/ctxfi/cttimer.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ct_timer_new._entry_ptr = internal global ptr @ct_timer_new._entry, section ".printk_index", align 4
@ct_xfitimer_ops = internal constant { %struct.ct_timer_ops, [36 x i8] } { %struct.ct_timer_ops { ptr null, ptr @ct_xfitimer_prepare, ptr @ct_xfitimer_start, ptr @ct_xfitimer_stop, ptr null, ptr @ct_xfitimer_callback, ptr @ct_xfitimer_free_global }, [36 x i8] zeroinitializer }, align 32
@ct_timer_new._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 425, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Use system timer\0A\00", [46 x i8] zeroinitializer }, align 32
@ct_timer_new._entry_ptr.11 = internal global ptr @ct_timer_new._entry.9, section ".printk_index", align 4
@ct_systimer_ops = internal constant { %struct.ct_timer_ops, [36 x i8] } { %struct.ct_timer_ops { ptr @ct_systimer_init, ptr @ct_systimer_prepare, ptr @ct_systimer_start, ptr @ct_systimer_stop, ptr @ct_systimer_prepare, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ct_systimer_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(&ti->timer)\00", [19 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"use_system_timer\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 15, i32 13 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 341, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 413, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 414, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 420, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"ct_xfitimer_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 321, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 425, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"ct_systimer_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 127, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [29 x i8] c"../sound/pci/ctxfi/cttimer.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 93, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_use_system_timer238, ptr @__UNIQUE_ID_use_system_timertype239, ptr @__param_use_system_timer, ptr @ct_timer_new._entry, ptr @ct_timer_new._entry.9, ptr @ct_timer_new._entry_ptr, ptr @ct_timer_new._entry_ptr.11, ptr @use_system_timer, ptr @ct_timer_instance_new.__key, ptr @.str, ptr @ct_timer_new.__key, ptr @.str.1, ptr @ct_timer_new.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ct_xfitimer_ops, ptr @.str.10, ptr @ct_systimer_ops, ptr @ct_systimer_init.__key, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_system_timer to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_timer_instance_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_timer_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_timer_new.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_timer_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_xfitimer_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_timer_new._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_systimer_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_systimer_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ct_timer_instance_new(ptr noundef %atimer, ptr noundef %apcm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 132) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @ct_timer_instance_new.__key, i16 noundef signext 3) #6
  %instance_list = getelementptr inbounds %struct.ct_timer_instance, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %instance_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %instance_list, ptr %instance_list, align 8
  %prev.i = getelementptr inbounds %struct.ct_timer_instance, ptr %call7.i.i, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %instance_list, ptr %prev.i, align 4
  %running_list = getelementptr inbounds %struct.ct_timer_instance, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %running_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %running_list, ptr %running_list, align 8
  %prev.i26 = getelementptr inbounds %struct.ct_timer_instance, ptr %call7.i.i, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i26 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %running_list, ptr %prev.i26, align 4
  %timer_base = getelementptr inbounds %struct.ct_timer_instance, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %timer_base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %atimer, ptr %timer_base, align 4
  %apcm2 = getelementptr inbounds %struct.ct_timer_instance, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %apcm2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %apcm, ptr %apcm2, align 8
  %7 = ptrtoint ptr %apcm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %apcm, align 4
  %substream3 = getelementptr inbounds %struct.ct_timer_instance, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %substream3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %substream3, align 4
  %ops = getelementptr inbounds %struct.ct_timer, ptr %atimer, i32 0, i32 3
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %do.body.if.end8_crit_edge, label %if.then5

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %13(ptr noundef nonnull %call7.i.i) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %do.body.if.end8_crit_edge
  %list_lock = getelementptr inbounds %struct.ct_timer, ptr %atimer, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %list_lock) #6
  %instance_head = getelementptr inbounds %struct.ct_timer, ptr %atimer, i32 0, i32 4
  %14 = ptrtoint ptr %instance_head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %instance_head, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %instance_list, ptr noundef %instance_head, ptr noundef %15) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_add.exit_crit_edge

if.end8.list_add.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %instance_list, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %instance_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %instance_list, align 8
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %instance_head, ptr %prev.i, align 4
  %19 = ptrtoint ptr %instance_head to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %instance_list, ptr %instance_head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end8.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %list_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ct_timer_prepare(ptr noundef %ti) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_base = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 1
  %0 = ptrtoint ptr %timer_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer_base, align 4
  %ops = getelementptr inbounds %struct.ct_timer, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %prepare = getelementptr inbounds %struct.ct_timer_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prepare, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %5(ptr noundef %ti) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %position = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 7
  %6 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %position, align 4
  %running = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 9
  %7 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %running, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %running, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ct_timer_start(ptr noundef %ti) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_base = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 1
  %0 = ptrtoint ptr %timer_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer_base, align 4
  %ops = getelementptr inbounds %struct.ct_timer, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %start = getelementptr inbounds %struct.ct_timer_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %start, align 4
  tail call void %5(ptr noundef %ti) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ct_timer_stop(ptr noundef %ti) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_base = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 1
  %0 = ptrtoint ptr %timer_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer_base, align 4
  %ops = getelementptr inbounds %struct.ct_timer, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %stop = getelementptr inbounds %struct.ct_timer_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop, align 4
  tail call void %5(ptr noundef %ti) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ct_timer_instance_free(ptr noundef %ti) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_base = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 1
  %0 = ptrtoint ptr %timer_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer_base, align 4
  %ops = getelementptr inbounds %struct.ct_timer, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %stop = getelementptr inbounds %struct.ct_timer_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop, align 4
  tail call void %5(ptr noundef %ti) #6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %free_instance = getelementptr inbounds %struct.ct_timer_ops, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %free_instance to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free_instance, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %9(ptr noundef %ti) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %list_lock = getelementptr inbounds %struct.ct_timer, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %list_lock) #6
  %instance_list = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %instance_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %instance_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %instance_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %16 = ptrtoint ptr %instance_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %instance_list, align 4
  %prev.i = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %list_lock) #6
  tail call void @kfree(ptr noundef %ti) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ct_timer_new(ptr noundef %atc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 120) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @ct_timer_new.__key, i16 noundef signext 3) #6
  %list_lock = getelementptr inbounds %struct.ct_timer, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %list_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @ct_timer_new.__key.2, i16 noundef signext 3) #6
  %instance_head = getelementptr inbounds %struct.ct_timer, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %instance_head to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %instance_head, ptr %instance_head, align 8
  %prev.i = getelementptr inbounds %struct.ct_timer, ptr %call7.i.i, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %instance_head, ptr %prev.i, align 4
  %running_head = getelementptr inbounds %struct.ct_timer, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %running_head to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %running_head, ptr %running_head, align 8
  %prev.i36 = getelementptr inbounds %struct.ct_timer, ptr %call7.i.i, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i36 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %running_head, ptr %prev.i36, align 4
  %atc6 = getelementptr inbounds %struct.ct_timer, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %atc6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %atc, ptr %atc6, align 8
  %hw7 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 45
  %6 = ptrtoint ptr %hw7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw7, align 4
  %8 = load i8, ptr @use_system_timer, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not = icmp eq i8 %8, 0
  br i1 %tobool8.not, label %land.lhs.true, label %do.body.do.end16_crit_edge

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

land.lhs.true:                                    ; preds = %do.body
  %set_timer_irq = getelementptr inbounds %struct.hw, ptr %7, i32 0, i32 91
  %9 = ptrtoint ptr %set_timer_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_timer_irq, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %land.lhs.true.do.end16_crit_edge, label %do.end13

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

do.end13:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %card = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 1
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.4) #10
  %ops = getelementptr inbounds %struct.ct_timer, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ct_xfitimer_ops, ptr %ops, align 4
  %irq_callback_data = getelementptr inbounds %struct.hw, ptr %7, i32 0, i32 95
  %16 = ptrtoint ptr %irq_callback_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i, ptr %irq_callback_data, align 4
  %irq_callback = getelementptr inbounds %struct.hw, ptr %7, i32 0, i32 94
  %17 = ptrtoint ptr %irq_callback to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ct_timer_interrupt, ptr %irq_callback, align 4
  br label %cleanup

do.end16:                                         ; preds = %land.lhs.true.do.end16_crit_edge, %do.body.do.end16_crit_edge
  %card17 = getelementptr inbounds %struct.ct_atc, ptr %atc, i32 0, i32 1
  %18 = ptrtoint ptr %card17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card17, align 4
  %dev18 = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev18, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.10) #10
  %ops19 = getelementptr inbounds %struct.ct_timer, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %ops19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ct_systimer_ops, ptr %ops19, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.end13, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_timer_interrupt(ptr noundef %data, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %status, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.ct_timer, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %interrupt = getelementptr inbounds %struct.ct_timer_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %data) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ct_timer_free(ptr noundef %atimer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %atc = getelementptr inbounds %struct.ct_timer, ptr %atimer, i32 0, i32 2
  %0 = ptrtoint ptr %atc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atc, align 4
  %hw1 = getelementptr inbounds %struct.ct_atc, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %irq_callback = getelementptr inbounds %struct.hw, ptr %3, i32 0, i32 94
  %4 = ptrtoint ptr %irq_callback to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %irq_callback, align 4
  %ops = getelementptr inbounds %struct.ct_timer, ptr %atimer, i32 0, i32 3
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %free_global = getelementptr inbounds %struct.ct_timer_ops, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %free_global to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %free_global, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %8(ptr noundef %atimer) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %atimer) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ct_xfitimer_prepare(ptr nocapture noundef %ti) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 3
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_size, align 4
  %frag_count = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 8
  %6 = ptrtoint ptr %frag_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %frag_count, align 4
  %running = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 9
  %7 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %running, align 4
  %bf.clear2 = and i8 %bf.load, 63
  store i8 %bf.clear2, ptr %running, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_xfitimer_start(ptr noundef %ti) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_base = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 1
  %0 = ptrtoint ptr %timer_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer_base, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %running_list = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 6
  %2 = ptrtoint ptr %running_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %running_list, align 4
  %cmp.i.not = icmp eq ptr %3, %running_list
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %atc.i = getelementptr inbounds %struct.ct_timer, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %atc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %atc.i, align 4
  %hw1.i = getelementptr inbounds %struct.ct_atc, ptr %5, i32 0, i32 45
  %6 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1.i, align 4
  %get_wc.i = getelementptr inbounds %struct.hw, ptr %7, i32 0, i32 93
  %8 = ptrtoint ptr %get_wc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_wc.i, align 4
  %call.i = tail call i32 %9(ptr noundef %7) #6
  %wc = getelementptr inbounds %struct.ct_timer, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %wc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i, ptr %wc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %running = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 9
  %11 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %running, align 4
  %bf.set = and i8 %bf.load, 63
  %bf.clear8 = or i8 %bf.set, -128
  store i8 %bf.clear8, ptr %running, align 4
  %running_head = getelementptr inbounds %struct.ct_timer, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %running_head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %running_head, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %running_list, ptr noundef %running_head, ptr noundef %13) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %running_list, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %running_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %running_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %running_head, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %running_head to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %running_list, ptr %running_head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %irq_handling.i = getelementptr inbounds %struct.ct_timer, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %irq_handling.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %irq_handling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set.i = or i8 %bf.load.i, 64
  %19 = ptrtoint ptr %irq_handling.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %bf.set.i, ptr %irq_handling.i, align 4
  br label %ct_xfitimer_update.exit

if.end.i:                                         ; preds = %list_add.exit
  %20 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %if.end.i.ct_xfitimer_irq_stop.exit.i_crit_edge, label %if.then.i.i

if.end.i.ct_xfitimer_irq_stop.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ct_xfitimer_irq_stop.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %atc.i.i = getelementptr inbounds %struct.ct_timer, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %atc.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %atc.i.i, align 4
  %hw1.i.i = getelementptr inbounds %struct.ct_atc, ptr %22, i32 0, i32 45
  %23 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw1.i.i, align 4
  %set_timer_irq.i.i = getelementptr inbounds %struct.hw, ptr %24, i32 0, i32 91
  %25 = ptrtoint ptr %set_timer_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_timer_irq.i.i, align 4
  %call.i.i21 = tail call i32 %26(ptr noundef %24, i32 noundef 0) #6
  %set_timer_tick.i.i = getelementptr inbounds %struct.hw, ptr %24, i32 0, i32 92
  %27 = ptrtoint ptr %set_timer_tick.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set_timer_tick.i.i, align 4
  %call2.i.i = tail call i32 %28(ptr noundef %24, i32 noundef 0) #6
  %29 = ptrtoint ptr %irq_handling.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load4.i.i = load i8, ptr %irq_handling.i, align 4
  %bf.clear5.i.i = and i8 %bf.load4.i.i, -33
  store i8 %bf.clear5.i.i, ptr %irq_handling.i, align 4
  br label %ct_xfitimer_irq_stop.exit.i

ct_xfitimer_irq_stop.exit.i:                      ; preds = %if.then.i.i, %if.end.i.ct_xfitimer_irq_stop.exit.i_crit_edge
  %call7.i = tail call fastcc i32 @ct_xfitimer_reprogram(ptr noundef %1, i32 noundef 0) #6
  br label %ct_xfitimer_update.exit

ct_xfitimer_update.exit:                          ; preds = %ct_xfitimer_irq_stop.exit.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_xfitimer_stop(ptr noundef %ti) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_base = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 1
  %0 = ptrtoint ptr %timer_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %timer_base, align 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %running_list = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %running_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %running_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %running_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %running_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %running_list, ptr %running_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %running_list, ptr %prev.i3.i, align 4
  %running = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 9
  %10 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %running, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %running, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #6
  %irq_handling.i = getelementptr inbounds %struct.ct_timer, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %irq_handling.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %irq_handling.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set.i = or i8 %bf.load.i, 64
  %12 = ptrtoint ptr %irq_handling.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %bf.set.i, ptr %irq_handling.i, align 4
  br label %ct_xfitimer_update.exit

if.end.i:                                         ; preds = %list_del_init.exit
  %13 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.end.i.ct_xfitimer_irq_stop.exit.i_crit_edge, label %if.then.i.i

if.end.i.ct_xfitimer_irq_stop.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ct_xfitimer_irq_stop.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %atc.i.i = getelementptr inbounds %struct.ct_timer, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %atc.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %atc.i.i, align 4
  %hw1.i.i = getelementptr inbounds %struct.ct_atc, ptr %15, i32 0, i32 45
  %16 = ptrtoint ptr %hw1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw1.i.i, align 4
  %set_timer_irq.i.i = getelementptr inbounds %struct.hw, ptr %17, i32 0, i32 91
  %18 = ptrtoint ptr %set_timer_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_timer_irq.i.i, align 4
  %call.i.i10 = tail call i32 %19(ptr noundef %17, i32 noundef 0) #6
  %set_timer_tick.i.i = getelementptr inbounds %struct.hw, ptr %17, i32 0, i32 92
  %20 = ptrtoint ptr %set_timer_tick.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_timer_tick.i.i, align 4
  %call2.i.i = tail call i32 %21(ptr noundef %17, i32 noundef 0) #6
  %22 = ptrtoint ptr %irq_handling.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load4.i.i = load i8, ptr %irq_handling.i, align 4
  %bf.clear5.i.i = and i8 %bf.load4.i.i, -33
  store i8 %bf.clear5.i.i, ptr %irq_handling.i, align 4
  br label %ct_xfitimer_irq_stop.exit.i

ct_xfitimer_irq_stop.exit.i:                      ; preds = %if.then.i.i, %if.end.i.ct_xfitimer_irq_stop.exit.i_crit_edge
  %call7.i = tail call fastcc i32 @ct_xfitimer_reprogram(ptr noundef %1, i32 noundef 0) #6
  br label %ct_xfitimer_update.exit

ct_xfitimer_update.exit:                          ; preds = %ct_xfitimer_irq_stop.exit.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_xfitimer_callback(ptr noundef %atimer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %atimer) #6
  %irq_handling = getelementptr inbounds %struct.ct_timer, ptr %atimer, i32 0, i32 7
  %0 = ptrtoint ptr %irq_handling to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %irq_handling, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %irq_handling, align 4
  %list_lock.i = getelementptr inbounds %struct.ct_timer, ptr %atimer, i32 0, i32 1
  %instance_head.i = getelementptr inbounds %struct.ct_timer, ptr %atimer, i32 0, i32 4
  br label %do.body5

do.body5:                                         ; preds = %if.end.do.body5_crit_edge, %entry
  %call6 = tail call fastcc i32 @ct_xfitimer_reprogram(ptr noundef %atimer, i32 noundef 1)
  tail call void @_raw_spin_unlock(ptr noundef %atimer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %do.body5.if.end_crit_edge, label %if.then

do.body5.if.end_crit_edge:                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %do.body5
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %list_lock.i) #6
  %1 = ptrtoint ptr %instance_head.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn32.i = load ptr, ptr %instance_head.i, align 4
  %cmp7.not33.i = icmp eq ptr %.pn32.i, %instance_head.i
  br i1 %cmp7.not33.i, label %if.then.ct_xfitimer_check_period.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.ct_xfitimer_check_period.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ct_xfitimer_check_period.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %.pn34.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn32.i, %if.then.for.body.i_crit_edge ]
  %running.i = getelementptr i8, ptr %.pn34.i, i32 24
  %2 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load.i)
  %.not.i = icmp ugt i8 %bf.load.i, -65
  br i1 %.not.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %bf.clear15.i = and i8 %bf.load.i, -65
  %3 = ptrtoint ptr %running.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.clear15.i, ptr %running.i, align 4
  %apcm.i = getelementptr i8, ptr %.pn34.i, i32 -56
  %4 = ptrtoint ptr %apcm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apcm.i, align 4
  %interrupt.i = getelementptr inbounds %struct.ct_atc_pcm, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %interrupt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interrupt.i, align 4
  tail call void %7(ptr noundef %5) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %8 = ptrtoint ptr %.pn34.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn34.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %instance_head.i
  br i1 %cmp7.not.i, label %for.inc.i.ct_xfitimer_check_period.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.ct_xfitimer_check_period.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ct_xfitimer_check_period.exit

ct_xfitimer_check_period.exit:                    ; preds = %for.inc.i.ct_xfitimer_check_period.exit_crit_edge, %if.then.ct_xfitimer_check_period.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %list_lock.i, i32 noundef %call2.i) #6
  br label %if.end

if.end:                                           ; preds = %ct_xfitimer_check_period.exit, %do.body5.if.end_crit_edge
  tail call void @_raw_spin_lock(ptr noundef %atimer) #6
  %9 = ptrtoint ptr %irq_handling to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load10 = load i8, ptr %irq_handling, align 4
  %10 = and i8 %bf.load10, 64
  %tobool12.not = icmp eq i8 %10, 0
  br i1 %tobool12.not, label %do.end13, label %if.end.do.body5_crit_edge

if.end.do.body5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %bf.clear16 = and i8 %bf.load10, 127
  %11 = ptrtoint ptr %irq_handling to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.clear16, ptr %irq_handling, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %atimer, i32 noundef %call2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_xfitimer_free_global(ptr nocapture noundef %atimer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %running.i = getelementptr inbounds %struct.ct_timer, ptr %atimer, i32 0, i32 7
  %0 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %running.i, align 4
  %1 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.ct_xfitimer_irq_stop.exit_crit_edge, label %if.then.i

entry.ct_xfitimer_irq_stop.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ct_xfitimer_irq_stop.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %atc.i = getelementptr inbounds %struct.ct_timer, ptr %atimer, i32 0, i32 2
  %2 = ptrtoint ptr %atc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atc.i, align 4
  %hw1.i = getelementptr inbounds %struct.ct_atc, ptr %3, i32 0, i32 45
  %4 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1.i, align 4
  %set_timer_irq.i = getelementptr inbounds %struct.hw, ptr %5, i32 0, i32 91
  %6 = ptrtoint ptr %set_timer_irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_timer_irq.i, align 4
  %call.i = tail call i32 %7(ptr noundef %5, i32 noundef 0) #6
  %set_timer_tick.i = getelementptr inbounds %struct.hw, ptr %5, i32 0, i32 92
  %8 = ptrtoint ptr %set_timer_tick.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_timer_tick.i, align 4
  %call2.i = tail call i32 %9(ptr noundef %5, i32 noundef 0) #6
  %10 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load4.i = load i8, ptr %running.i, align 4
  %bf.clear5.i = and i8 %bf.load4.i, -33
  store i8 %bf.clear5.i, ptr %running.i, align 4
  br label %ct_xfitimer_irq_stop.exit

ct_xfitimer_irq_stop.exit:                        ; preds = %if.then.i, %entry.ct_xfitimer_irq_stop.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ct_xfitimer_reprogram(ptr noundef %atimer, i32 noundef %can_update) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %running_head = getelementptr inbounds %struct.ct_timer, ptr %atimer, i32 0, i32 5
  %0 = ptrtoint ptr %running_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %running_head, align 4
  %cmp.i.not = icmp eq ptr %1, %running_head
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %running.i = getelementptr inbounds %struct.ct_timer, ptr %atimer, i32 0, i32 7
  %2 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %running.i, align 4
  %3 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.ct_xfitimer_irq_stop.exit_crit_edge, label %if.then.i

if.then.ct_xfitimer_irq_stop.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ct_xfitimer_irq_stop.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %atc.i = getelementptr inbounds %struct.ct_timer, ptr %atimer, i32 0, i32 2
  %4 = ptrtoint ptr %atc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %atc.i, align 4
  %hw1.i = getelementptr inbounds %struct.ct_atc, ptr %5, i32 0, i32 45
  %6 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1.i, align 4
  %set_timer_irq.i = getelementptr inbounds %struct.hw, ptr %7, i32 0, i32 91
  %8 = ptrtoint ptr %set_timer_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %set_timer_irq.i, align 4
  %call.i = tail call i32 %9(ptr noundef %7, i32 noundef 0) #6
  %set_timer_tick.i = getelementptr inbounds %struct.hw, ptr %7, i32 0, i32 92
  %10 = ptrtoint ptr %set_timer_tick.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set_timer_tick.i, align 4
  %call2.i = tail call i32 %11(ptr noundef %7, i32 noundef 0) #6
  %12 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load4.i = load i8, ptr %running.i, align 4
  %bf.clear5.i = and i8 %bf.load4.i, -33
  store i8 %bf.clear5.i, ptr %running.i, align 4
  br label %ct_xfitimer_irq_stop.exit

ct_xfitimer_irq_stop.exit:                        ; preds = %if.then.i, %if.then.ct_xfitimer_irq_stop.exit_crit_edge
  %13 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %running.i, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %running.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %atc.i99 = getelementptr inbounds %struct.ct_timer, ptr %atimer, i32 0, i32 2
  %14 = ptrtoint ptr %atc.i99 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %atc.i99, align 4
  %hw1.i100 = getelementptr inbounds %struct.ct_atc, ptr %15, i32 0, i32 45
  %16 = ptrtoint ptr %hw1.i100 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw1.i100, align 4
  %get_wc.i = getelementptr inbounds %struct.hw, ptr %17, i32 0, i32 93
  %18 = ptrtoint ptr %get_wc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_wc.i, align 4
  %call.i101 = tail call i32 %19(ptr noundef %17) #6
  %wc2 = getelementptr inbounds %struct.ct_timer, ptr %atimer, i32 0, i32 6
  %20 = ptrtoint ptr %wc2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wc2, align 4
  %sub = sub i32 %call.i101, %21
  store i32 %call.i101, ptr %wc2, align 4
  %22 = ptrtoint ptr %running_head to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn113 = load ptr, ptr %running_head, align 4
  %cmp.not114 = icmp eq ptr %.pn113, %running_head
  br i1 %cmp.not114, label %if.end.for.end.thread_crit_edge, label %for.body.lr.ph

if.end.for.end.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %can_update)
  %tobool36.not = icmp eq i32 %can_update, 0
  br label %for.body

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %for.body.lr.ph
  %.pn117 = phi ptr [ %.pn113, %for.body.lr.ph ], [ %.pn, %if.end31.for.body_crit_edge ]
  %min_intr.0116 = phi i32 [ -1, %for.body.lr.ph ], [ %46, %if.end31.for.body_crit_edge ]
  %updates.0115 = phi i32 [ 0, %for.body.lr.ph ], [ %updates.2, %if.end31.for.body_crit_edge ]
  %frag_count = getelementptr i8, ptr %.pn117, i32 12
  %23 = ptrtoint ptr %frag_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %frag_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %sub)
  %cmp6 = icmp ugt i32 %24, %sub
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub9 = sub i32 %24, %sub
  br label %if.end31

if.else:                                          ; preds = %for.body
  %substream = getelementptr i8, ptr %.pn117, i32 -60
  %25 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %substream, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %runtime, align 4
  %period_size10 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %28, i32 0, i32 16
  %29 = ptrtoint ptr %period_size10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %period_size10, align 4
  %rate13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %28, i32 0, i32 14
  %31 = ptrtoint ptr %rate13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rate13, align 4
  %ops = getelementptr inbounds %struct.snd_pcm_substream, ptr %26, i32 0, i32 10
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops, align 4
  %pointer = getelementptr inbounds %struct.snd_pcm_ops, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %pointer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pointer, align 4
  %call16 = tail call i32 %36(ptr noundef %26) #6
  %call16.frozen = freeze i32 %call16
  %.frozen = freeze i32 %30
  %div = udiv i32 %call16.frozen, %.frozen
  %position = getelementptr i8, ptr %.pn117, i32 8
  %37 = ptrtoint ptr %position to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %position, align 4
  %div17 = udiv i32 %38, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div17)
  %cmp18.not = icmp eq i32 %div, %div17
  br i1 %cmp18.not, label %if.else.if.end24_crit_edge, label %if.then19

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %need_update = getelementptr i8, ptr %.pn117, i32 16
  %39 = ptrtoint ptr %need_update to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load20 = load i8, ptr %need_update, align 4
  %bf.set22 = or i8 %bf.load20, 64
  store i8 %bf.set22, ptr %need_update, align 4
  %40 = ptrtoint ptr %position to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call16, ptr %position, align 4
  %inc = add i32 %updates.0115, 1
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.else.if.end24_crit_edge
  %updates.1 = phi i32 [ %inc, %if.then19 ], [ %updates.0115, %if.else.if.end24_crit_edge ]
  %41 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %call16.frozen, %41
  %sub25 = sub i32 %30, %rem.decomposed
  %conv = zext i32 %sub25 to i64
  %mul = mul nuw nsw i64 %conv, 48000
  %conv26 = zext i32 %32 to i64
  %add = add nsw i64 %conv26, -1
  %sub27 = add nsw i64 %add, %mul
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub27)
  %cmp164.i.i = icmp ult i64 %sub27, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !46

if.then168.i.i:                                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %sub27 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %32
  br label %if.end31

if.else174.i.i:                                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %42 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %32, i64 %sub27) #11, !srcloc !47
  %asmresult1.i.i.i = extractvalue { i64, i64 } %42, 1
  %extract.t111 = trunc i64 %asmresult1.i.i.i to i32
  br label %if.end31

if.end31:                                         ; preds = %if.else174.i.i, %if.then168.i.i, %if.then7
  %storemerge = phi i32 [ %sub9, %if.then7 ], [ %div172.i.i, %if.then168.i.i ], [ %extract.t111, %if.else174.i.i ]
  %updates.2 = phi i32 [ %updates.0115, %if.then7 ], [ %updates.1, %if.then168.i.i ], [ %updates.1, %if.else174.i.i ]
  %43 = ptrtoint ptr %frag_count to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %storemerge, ptr %frag_count, align 4
  %need_update32 = getelementptr i8, ptr %.pn117, i32 16
  %44 = ptrtoint ptr %need_update32 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load33 = load i8, ptr %need_update32, align 4
  %45 = and i8 %bf.load33, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool35.not = icmp ne i8 %45, 0
  %or.cond = and i1 %tobool36.not, %tobool35.not
  %min_intr.1 = select i1 %or.cond, i32 0, i32 %min_intr.0116
  %46 = tail call i32 @llvm.umin.i32(i32 %storemerge, i32 %min_intr.1)
  %47 = ptrtoint ptr %.pn117 to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn = load ptr, ptr %.pn117, align 4
  %cmp.not = icmp eq ptr %.pn, %running_head
  br i1 %cmp.not, label %for.end, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp50 = icmp eq i32 %46, 0
  %48 = tail call i32 @llvm.smin.i32(i32 %46, i32 8191)
  %spec.select = select i1 %cmp50, i32 1, i32 %48
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %if.end.for.end.thread_crit_edge
  %updates.0.lcssa123 = phi i32 [ %updates.2, %for.end ], [ 0, %if.end.for.end.thread_crit_edge ]
  %49 = phi i32 [ %spec.select, %for.end ], [ -1, %if.end.for.end.thread_crit_edge ]
  %50 = ptrtoint ptr %atc.i99 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn124 = load ptr, ptr %atc.i99, align 4
  %.in = getelementptr inbounds %struct.ct_atc, ptr %.pn124, i32 0, i32 45
  %51 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %.in, align 4
  %set_timer_tick.i104 = getelementptr inbounds %struct.hw, ptr %52, i32 0, i32 92
  %53 = ptrtoint ptr %set_timer_tick.i104 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %set_timer_tick.i104, align 4
  %call.i105 = tail call i32 %54(ptr noundef %52, i32 noundef %49) #6
  %running.i106 = getelementptr inbounds %struct.ct_timer, ptr %atimer, i32 0, i32 7
  %55 = ptrtoint ptr %running.i106 to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i107 = load i8, ptr %running.i106, align 4
  %56 = and i8 %bf.load.i107, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i108 = icmp eq i8 %56, 0
  br i1 %tobool.not.i108, label %if.then2.i, label %for.end.thread.ct_xfitimer_irq_rearm.exit_crit_edge

for.end.thread.ct_xfitimer_irq_rearm.exit_crit_edge: ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %ct_xfitimer_irq_rearm.exit

if.then2.i:                                       ; preds = %for.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  %set_timer_irq.i109 = getelementptr inbounds %struct.hw, ptr %52, i32 0, i32 91
  %57 = ptrtoint ptr %set_timer_irq.i109 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %set_timer_irq.i109, align 4
  %call3.i = tail call i32 %58(ptr noundef %52, i32 noundef 1) #6
  br label %ct_xfitimer_irq_rearm.exit

ct_xfitimer_irq_rearm.exit:                       ; preds = %if.then2.i, %for.end.thread.ct_xfitimer_irq_rearm.exit_crit_edge
  %59 = ptrtoint ptr %running.i106 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load6.i = load i8, ptr %running.i106, align 4
  %bf.set.i = and i8 %bf.load6.i, -97
  %bf.clear56 = or i8 %bf.set.i, 32
  store i8 %bf.clear56, ptr %running.i106, align 4
  br label %cleanup

cleanup:                                          ; preds = %ct_xfitimer_irq_rearm.exit, %ct_xfitimer_irq_stop.exit
  %retval.0 = phi i32 [ 0, %ct_xfitimer_irq_stop.exit ], [ %updates.0.lcssa123, %ct_xfitimer_irq_rearm.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_systimer_init(ptr noundef %ti) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @ct_systimer_callback, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @ct_systimer_init.__key) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_systimer_prepare(ptr noundef %ti) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ti) #6
  %running.i = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 9
  %0 = ptrtoint ptr %running.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %running.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %running.i, align 4
  %timer.i = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 4
  %call5.i = tail call i32 @del_timer(ptr noundef %timer.i) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ti, i32 noundef %call2.i) #6
  %call = tail call i32 @try_to_del_timer_sync(ptr noundef %timer.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_systimer_start(ptr noundef %ti) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 3
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ti) #6
  %running = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 9
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %running, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %running, align 4
  %timer = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period_size, align 4
  %mul = mul i32 %7, 100
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  %sub = add i32 %9, -1
  %add = add i32 %sub, %mul
  %div = udiv i32 %add, %9
  %add7 = add i32 %div, %5
  %call8 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add7) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ti, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_systimer_stop(ptr noundef %ti) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ti) #6
  %running = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 9
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %running, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %running, align 4
  %timer = getelementptr inbounds %struct.ct_timer_instance, ptr %ti, i32 0, i32 4
  %call5 = tail call i32 @del_timer(ptr noundef %timer) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ti, i32 noundef %call2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_systimer_callback(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -56
  %substream1 = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  %apcm3 = getelementptr i8, ptr %t, i32 -8
  %4 = ptrtoint ptr %apcm3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apcm3, align 4
  %period_size4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %period_size4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period_size4, align 4
  %buffer_size5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %8 = ptrtoint ptr %buffer_size5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_size5, align 4
  %ops = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %pointer = getelementptr inbounds %struct.snd_pcm_ops, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %pointer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pointer, align 4
  %call = tail call i32 %13(ptr noundef %1) #6
  %add = add i32 %call, %9
  %position6 = getelementptr i8, ptr %t, i32 64
  %14 = ptrtoint ptr %position6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %position6, align 4
  %sub = sub i32 %add, %15
  %rem = urem i32 %sub, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %7)
  %cmp.not = icmp ult i32 %rem, %7
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %div = udiv i32 %call, %7
  %div8 = udiv i32 %15, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div8)
  %cmp9.not = icmp eq i32 %div, %div8
  br i1 %cmp9.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %interrupt = getelementptr inbounds %struct.ct_atc_pcm, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interrupt, align 4
  tail call void %17(ptr noundef %5) #6
  %18 = ptrtoint ptr %position6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call, ptr %position6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %19 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rate, align 4
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #6
  %running = getelementptr i8, ptr %t, i32 72
  %21 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end.if.end28_crit_edge, label %if.then25

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rem11 = urem i32 %call, %7
  %sub12 = sub i32 %7, %rem11
  %mul = mul i32 %sub12, 100
  %sub13 = add i32 %20, -1
  %add14 = add i32 %sub13, %mul
  %div16 = udiv i32 %add14, %20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add26 = add i32 %22, %div16
  %call27 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add26) #6
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %if.end.if.end28_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call22) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !33, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__UNIQUE_ID_use_system_timer238, !1, !"__UNIQUE_ID_use_system_timer238", i1 false, i1 false}
!1 = !{!"../sound/pci/ctxfi/cttimer.c", i32 16, i32 1}
!2 = !{ptr @__param_use_system_timer, !3, !"__param_use_system_timer", i1 false, i1 false}
!3 = !{!"../sound/pci/ctxfi/cttimer.c", i32 17, i32 1}
!4 = !{ptr @__UNIQUE_ID_use_system_timertype239, !3, !"__UNIQUE_ID_use_system_timertype239", i1 false, i1 false}
!5 = !{ptr @ct_timer_instance_new.__key, !6, !"__key", i1 false, i1 false}
!6 = !{!"../sound/pci/ctxfi/cttimer.c", i32 341, i32 2}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ct_timer_new.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../sound/pci/ctxfi/cttimer.c", i32 413, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ct_timer_new.__key.2, !12, !"__key", i1 false, i1 false}
!12 = !{!"../sound/pci/ctxfi/cttimer.c", i32 414, i32 2}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/ctxfi/cttimer.c", i32 420, i32 3}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ct_timer_new._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ct_timer_new._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/ctxfi/cttimer.c", i32 425, i32 3}
!24 = !{ptr @ct_timer_new._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ct_timer_new._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @use_system_timer, !27, !"use_system_timer", i1 false, i1 false}
!27 = !{!"../sound/pci/ctxfi/cttimer.c", i32 15, i32 13}
!28 = !{ptr @__param_str_use_system_timer, !3, !"__param_str_use_system_timer", i1 false, i1 false}
!29 = !{ptr @ct_xfitimer_ops, !30, !"ct_xfitimer_ops", i1 false, i1 false}
!30 = !{!"../sound/pci/ctxfi/cttimer.c", i32 321, i32 34}
!31 = !{ptr @ct_systimer_ops, !32, !"ct_systimer_ops", i1 false, i1 false}
!32 = !{!"../sound/pci/ctxfi/cttimer.c", i32 127, i32 34}
!33 = !{ptr @ct_systimer_init.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../sound/pci/ctxfi/cttimer.c", i32 93, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i8 0, i8 2}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2148439521, i64 2148439801, i64 2148440135, i64 2148440469}
