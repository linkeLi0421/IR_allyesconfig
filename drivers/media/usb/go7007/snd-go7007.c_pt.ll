; ModuleID = '/llk/IR_all_yes/drivers/media/usb/go7007/snd-go7007.c_pt.bc'
source_filename = "../drivers/media/usb/go7007/snd-go7007.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+go7007_snd_init\22, \22a\22\09"
module asm "\09.weak\09__crc_go7007_snd_init\09\09\09\09"
module asm "\09.long\09__crc_go7007_snd_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_go7007_snd_init:\09\09\09\09\09"
module asm "\09.asciz \09\22go7007_snd_init\22\09\09\09\09\09"
module asm "__kstrtabns_go7007_snd_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+go7007_snd_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_go7007_snd_remove\09\09\09\09"
module asm "\09.long\09__crc_go7007_snd_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_go7007_snd_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22go7007_snd_remove\22\09\09\09\09\09"
module asm "__kstrtabns_go7007_snd_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.go7007_snd = type { ptr, ptr, ptr, %struct.spinlock, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.go7007 = type { ptr, [32 x i8], ptr, i32, i32, i32, [64 x i8], %struct.video_device, ptr, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.mutex, %struct.mutex, i32, ptr, ptr, [16 x i8], i32, i32, i32, i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, [4 x %struct.anon.104], [1624 x i8], [216 x i8], i32, %struct.mutex, %struct.vb2_queue, i32, i32, i16, i32, i32, %struct.list_head, %struct.wait_queue_head, ptr, ptr, ptr, i32, %struct.i2c_adapter, ptr, ptr, i32, %struct.wait_queue_head, i16, i16 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.90 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.87], %struct.media_entity_enum, i32 }
%struct.anon.87 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.104 = type { i8, i32, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
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
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@__param_str_index = internal constant [13 x i8] c"go7007.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype300 = internal constant [35 x i8] c"go7007.parmtype=index:array of int\00", section ".modinfo", align 1
@__param_str_id = internal constant [10 x i8] c"go7007.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype301 = internal constant [34 x i8] c"go7007.parmtype=id:array of charp\00", section ".modinfo", align 1
@__param_str_enable = internal constant [14 x i8] c"go7007.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype302 = internal constant [37 x i8] c"go7007.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_index303 = internal constant [58 x i8] c"go7007.parm=index:Index value for the go7007 audio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_id304 = internal constant [53 x i8] c"go7007.parm=id:ID string for the go7007 audio driver\00", section ".modinfo", align 1
@__UNIQUE_ID_enable305 = internal constant [54 x i8] c"go7007.parm=enable:Enable for the go7007 audio driver\00", section ".modinfo", align 1
@go7007_snd_init.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@go7007_snd_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&gosnd->lock\00", [19 x i8] zeroinitializer }, align 32
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@go7007_snd_device_ops = internal global { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @go7007_snd_free, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"go7007\00", [25 x i8] zeroinitializer }, align 32
@go7007_snd_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @go7007_snd_capture_open, ptr @go7007_snd_capture_close, ptr null, ptr @go7007_snd_hw_params, ptr @go7007_snd_hw_free, ptr @go7007_snd_pcm_prepare, ptr @go7007_snd_pcm_trigger, ptr null, ptr @go7007_snd_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_go7007_snd_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_go7007_snd_init = external dso_local constant [0 x i8], align 1
@__ksymtab_go7007_snd_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @go7007_snd_init to i32), ptr @__kstrtab_go7007_snd_init, ptr @__kstrtabns_go7007_snd_init }, section "___ksymtab+go7007_snd_init", align 4
@__kstrtab_go7007_snd_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_go7007_snd_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_go7007_snd_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @go7007_snd_remove to i32), ptr @__kstrtab_go7007_snd_remove, ptr @__kstrtabns_go7007_snd_remove }, section "___ksymtab+go7007_snd_remove", align 4
@__UNIQUE_ID_file306 = internal constant [44 x i8] c"go7007.file=drivers/media/usb/go7007/go7007\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [22 x i8] c"go7007.license=GPL v2\00", section ".modinfo", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@go7007_snd_capture_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 4, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 131072, i32 4096, i32 131072, i32 1, i32 32, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.2 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 200, i32 13 }
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 26, i32 13 }
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 213, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 24, i32 12 }
@___asan_gen_.17 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 25, i32 14 }
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"go7007_snd_device_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 194, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 226, i32 33 }
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"go7007_snd_capture_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 175, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"go7007_snd_capture_hw\00", align 1
@___asan_gen_.30 = private constant [41 x i8] c"../drivers/media/usb/go7007/snd-go7007.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 46, i32 38 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_enable305, ptr @__UNIQUE_ID_enabletype302, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_id304, ptr @__UNIQUE_ID_idtype301, ptr @__UNIQUE_ID_index303, ptr @__UNIQUE_ID_indextype300, ptr @__UNIQUE_ID_license307, ptr @__ksymtab_go7007_snd_init, ptr @__ksymtab_go7007_snd_remove, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @go7007_snd_init.dev, ptr @enable, ptr @go7007_snd_init.__key, ptr @.str, ptr @index, ptr @id, ptr @go7007_snd_device_ops, ptr @.str.1, ptr @go7007_snd_capture_ops, ptr @go7007_snd_capture_hw], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_snd_init.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_snd_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_snd_device_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_snd_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @go7007_snd_capture_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @go7007_snd_init(ptr noundef %go) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @go7007_snd_init.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %0)
  %cmp = icmp sgt i32 %0, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @go7007_snd_init.dev, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 72) #10
  %cmp3 = icmp eq ptr %call7.i, null
  br i1 %cmp3, label %if.end2.cleanup_crit_edge, label %do.body

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end2
  %lock = getelementptr inbounds %struct.go7007_snd, ptr %call7.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @go7007_snd_init.__key, i16 noundef signext 3) #7
  %w_idx = getelementptr inbounds %struct.go7007_snd, ptr %call7.i, i32 0, i32 4
  %4 = call ptr @memset(ptr %w_idx, i32 0, i32 16)
  %5 = ptrtoint ptr %go to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %go, align 8
  %7 = load i32, ptr @go7007_snd_init.dev, align 4
  %arrayidx7 = getelementptr [32 x i32], ptr @index, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %7
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx8, align 4
  %call9 = tail call i32 @snd_card_new(ptr noundef %6, i32 noundef %9, ptr noundef %11, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call7.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.body.free_snd_crit_edge, label %if.end12

do.body.free_snd_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_snd

if.end12:                                         ; preds = %do.body
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i, align 8
  %call14 = tail call i32 @snd_device_new(ptr noundef %13, i32 noundef 0, ptr noundef %go, ptr noundef nonnull @go7007_snd_device_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.free_card_crit_edge, label %if.end17

if.end12.free_card_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_card

if.end17:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i, align 8
  %pcm = getelementptr inbounds %struct.go7007_snd, ptr %call7.i, i32 0, i32 1
  %call19 = tail call i32 @snd_pcm_new(ptr noundef %15, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %pcm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.end17.free_card_crit_edge, label %if.end22

if.end17.free_card_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_card

if.end22:                                         ; preds = %if.end17
  %16 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call7.i, align 8
  %driver = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 2
  %call24 = tail call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 16) #7
  %18 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7.i, align 8
  %shortname = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 3
  %name = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 6
  %call28 = tail call i32 @strscpy(ptr noundef %shortname, ptr noundef %name, i32 noundef 32) #7
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i, align 8
  %longname = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 4
  %shortname32 = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 3
  %call34 = tail call i32 @strscpy(ptr noundef %longname, ptr noundef %shortname32, i32 noundef 80) #7
  %22 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %go, ptr %private_data, align 8
  %25 = load ptr, ptr %pcm, align 4
  tail call void @snd_pcm_set_ops(ptr noundef %25, i32 noundef 1, ptr noundef nonnull @go7007_snd_capture_ops) #7
  %26 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcm, align 4
  %call38 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %27, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %28 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call7.i, align 8
  %call40 = tail call i32 @snd_card_register(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end22.free_card_crit_edge, label %if.end43

if.end22.free_card_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_card

if.end43:                                         ; preds = %if.end22
  %substream = getelementptr inbounds %struct.go7007_snd, ptr %call7.i, i32 0, i32 2
  %30 = ptrtoint ptr %substream to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %substream, align 8
  %snd_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 60
  %31 = ptrtoint ptr %snd_context to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i, ptr %snd_context, align 4
  %ref.i = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 10, i32 8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #7
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #7, !srcloc !57
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end43.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !58

if.end43.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end43
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.v4l2_device_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.v4l2_device_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %v4l2_device_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end43.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end43.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %v4l2_device_get.exit

v4l2_device_get.exit:                             ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.v4l2_device_get.exit_crit_edge
  %34 = load i32, ptr @go7007_snd_init.dev, align 4
  %inc44 = add i32 %34, 1
  store i32 %inc44, ptr @go7007_snd_init.dev, align 4
  br label %cleanup

free_card:                                        ; preds = %if.end22.free_card_crit_edge, %if.end17.free_card_crit_edge, %if.end12.free_card_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end12.free_card_crit_edge ], [ %call19, %if.end17.free_card_crit_edge ], [ %call40, %if.end22.free_card_crit_edge ]
  %35 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i, align 8
  %call46 = tail call i32 @snd_card_free(ptr noundef %36) #7
  br label %free_snd

free_snd:                                         ; preds = %free_card, %do.body.free_snd_crit_edge
  %ret.1 = phi i32 [ %call9, %do.body.free_snd_crit_edge ], [ %ret.0, %free_card ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_snd, %v4l2_device_get.exit, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free_snd ], [ 0, %v4l2_device_get.exit ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @go7007_snd_remove(ptr noundef %go) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %snd_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 60
  %0 = ptrtoint ptr %snd_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snd_context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @snd_card_disconnect(ptr noundef %3) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @snd_card_free_when_closed(ptr noundef %5) #7
  %v4l2_dev = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 10
  %call3 = tail call i32 @v4l2_device_put(ptr noundef %v4l2_dev) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free_when_closed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @go7007_snd_free(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %snd_context = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %snd_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_context, align 4
  tail call void @kfree(ptr noundef %3) #7
  %4 = ptrtoint ptr %snd_context to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %snd_context, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @go7007_snd_capture_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %snd_context = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %snd_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_context, align 4
  %lock = getelementptr inbounds %struct.go7007_snd, ptr %3, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %substream5 = getelementptr inbounds %struct.go7007_snd, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %substream5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %substream5, align 4
  %cmp6 = icmp eq ptr %5, null
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %substream5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %substream5, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %7 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 46
  %9 = call ptr @memcpy(ptr %hw, ptr @go7007_snd_capture_hw, i32 64)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %r.0 = phi i32 [ 0, %if.then ], [ -16, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #7
  ret i32 %r.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @go7007_snd_capture_close(ptr nocapture noundef readonly %substream) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %snd_context = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %snd_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_context, align 4
  %substream1 = getelementptr inbounds %struct.go7007_snd, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %substream1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @go7007_snd_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %hw_params) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audio_deliver = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %audio_deliver to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @parse_audio_stream_data, ptr %audio_deliver, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @go7007_snd_hw_free(ptr nocapture noundef readonly %substream) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %audio_deliver = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %audio_deliver to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %audio_deliver, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @go7007_snd_pcm_prepare(ptr nocapture noundef readnone %substream) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @go7007_snd_pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %snd_context = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %snd_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_context, align 4
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %capturing = getelementptr inbounds %struct.go7007_snd, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %capturing to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %capturing, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %w_idx = getelementptr inbounds %struct.go7007_snd, ptr %3, i32 0, i32 4
  %6 = call ptr @memset(ptr %w_idx, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @go7007_snd_pcm_pointer(ptr nocapture noundef readonly %substream) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %snd_context = getelementptr inbounds %struct.go7007, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %snd_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_context, align 4
  %hw_ptr = getelementptr inbounds %struct.go7007_snd, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hw_ptr, align 4
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @parse_audio_stream_data(ptr nocapture noundef readonly %go, ptr nocapture noundef readonly %buf, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %snd_context = getelementptr inbounds %struct.go7007, ptr %go, i32 0, i32 60
  %0 = ptrtoint ptr %snd_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snd_context, align 4
  %substream = getelementptr inbounds %struct.go7007_snd, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime1, align 4
  %mul.i = shl i32 %length, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %7
  %lock = getelementptr inbounds %struct.go7007_snd, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %hw_ptr = getelementptr inbounds %struct.go7007_snd, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_ptr, align 4
  %add = add i32 %9, %div.i
  store i32 %add, ptr %hw_ptr, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 18
  %10 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp8.not = icmp ult i32 %add, %11
  br i1 %cmp8.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %add, %11
  %12 = ptrtoint ptr %hw_ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %hw_ptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %avail = getelementptr inbounds %struct.go7007_snd, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %avail, align 4
  %add12 = add i32 %14, %div.i
  store i32 %add12, ptr %avail, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %w_idx = getelementptr inbounds %struct.go7007_snd, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %w_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %w_idx, align 4
  %add14 = add i32 %16, %length
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 52
  %17 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %18)
  %cmp15 = icmp ugt i32 %add14, %18
  br i1 %cmp15, label %if.then17, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub20 = sub i32 %18, %16
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 50
  %19 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_area, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %16
  %21 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %sub20)
  %sub22 = sub i32 %length, %sub20
  %add.ptr23 = getelementptr i8, ptr %buf, i32 %sub20
  %22 = ptrtoint ptr %w_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %w_idx, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %if.end.if.end25_crit_edge
  %length.addr.0 = phi i32 [ %sub22, %if.then17 ], [ %length, %if.end.if.end25_crit_edge ]
  %buf.addr.0 = phi ptr [ %add.ptr23, %if.then17 ], [ %buf, %if.end.if.end25_crit_edge ]
  %dma_area26 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 50
  %23 = ptrtoint ptr %dma_area26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_area26, align 4
  %25 = ptrtoint ptr %w_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %w_idx, align 4
  %add.ptr28 = getelementptr i8, ptr %24, i32 %26
  %27 = call ptr @memcpy(ptr %add.ptr28, ptr %buf.addr.0, i32 %length.addr.0)
  %28 = load i32, ptr %w_idx, align 4
  %add30 = add i32 %28, %length.addr.0
  store i32 %add30, ptr %w_idx, align 4
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %29 = ptrtoint ptr %avail to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %avail, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 16
  %31 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp46 = icmp ult i32 %30, %32
  br i1 %cmp46, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40) #7
  br label %cleanup

if.end50:                                         ; preds = %if.end25
  %sub53 = sub i32 %30, %32
  %33 = ptrtoint ptr %avail to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub53, ptr %avail, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40) #7
  %capturing = getelementptr inbounds %struct.go7007_snd, ptr %1, i32 0, i32 7
  %34 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not = icmp eq i32 %35, 0
  br i1 %tobool.not, label %if.end50.cleanup_crit_edge, label %if.then55

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %37) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end50.cleanup_crit_edge, %if.then48
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !35, !37, !39, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__param_index, !1, !"__param_index", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_indextype300, !1, !"__UNIQUE_ID_indextype300", i1 false, i1 false}
!3 = !{ptr @__param_id, !4, !"__param_id", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 29, i32 1}
!5 = !{ptr @__UNIQUE_ID_idtype301, !4, !"__UNIQUE_ID_idtype301", i1 false, i1 false}
!6 = !{ptr @__param_enable, !7, !"__param_enable", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 30, i32 1}
!8 = !{ptr @__UNIQUE_ID_enabletype302, !7, !"__UNIQUE_ID_enabletype302", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_index303, !10, !"__UNIQUE_ID_index303", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 31, i32 1}
!11 = !{ptr @__UNIQUE_ID_id304, !12, !"__UNIQUE_ID_id304", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 32, i32 1}
!13 = !{ptr @__UNIQUE_ID_enable305, !14, !"__UNIQUE_ID_enable305", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 33, i32 1}
!15 = !{ptr @go7007_snd_init.dev, !16, !"dev", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 200, i32 13}
!17 = !{ptr @go7007_snd_init.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 213, i32 2}
!19 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 226, i32 33}
!22 = !{ptr @__ksymtab_go7007_snd_init, !23, !"__ksymtab_go7007_snd_init", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 258, i32 1}
!24 = !{ptr @__ksymtab_go7007_snd_remove, !25, !"__ksymtab_go7007_snd_remove", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 269, i32 1}
!26 = !{ptr @__UNIQUE_ID_file306, !27, !"__UNIQUE_ID_file306", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 271, i32 1}
!28 = !{ptr @__UNIQUE_ID_license307, !27, !"__UNIQUE_ID_license307", i1 false, i1 false}
!29 = !{ptr @__param_str_index, !1, !"__param_str_index", i1 false, i1 false}
!30 = !{ptr @__param_arr_index, !1, !"__param_arr_index", i1 false, i1 false}
!31 = !{ptr @__param_str_id, !4, !"__param_str_id", i1 false, i1 false}
!32 = !{ptr @__param_arr_id, !4, !"__param_arr_id", i1 false, i1 false}
!33 = !{ptr @__param_str_enable, !7, !"__param_str_enable", i1 false, i1 false}
!34 = !{ptr @__param_arr_enable, !7, !"__param_arr_enable", i1 false, i1 false}
!35 = !{ptr @enable, !36, !"enable", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 26, i32 13}
!37 = !{ptr @index, !38, !"index", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 24, i32 12}
!39 = !{ptr @id, !40, !"id", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 25, i32 14}
!41 = !{ptr @go7007_snd_device_ops, !42, !"go7007_snd_device_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 194, i32 30}
!43 = !{ptr @go7007_snd_capture_ops, !44, !"go7007_snd_capture_ops", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 175, i32 33}
!45 = !{ptr @go7007_snd_capture_hw, !46, !"go7007_snd_capture_hw", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/go7007/snd-go7007.c", i32 46, i32 38}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i8 0, i8 2}
!57 = !{i64 2148216212, i64 2148216244, i64 2148216273, i64 2148216307, i64 2148216338, i64 2148216361}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{!"branch_weights", i32 2000, i32 1}
