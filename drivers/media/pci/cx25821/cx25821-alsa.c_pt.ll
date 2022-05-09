; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx25821/cx25821-alsa.c_pt.bc'
source_filename = "../drivers/media/pci/cx25821/cx25821-alsa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sram_channel = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.cx25821_dev = type { %struct.v4l2_device, ptr, i8, i8, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32, [3 x %struct.cx25821_i2c], i32, %struct.mutex, [12 x %struct.cx25821_channel], i32, [32 x i8], i32, i64, i16, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, %struct.work_struct, ptr, %struct.spinlock, [2 x %struct.cx25821_video_out_data] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cx25821_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.cx25821_channel = type { i32, ptr, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.cx25821_dmaqueue, %struct.vb2_queue, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.cx25821_dmaqueue = type { %struct.list_head, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx25821_video_out_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.102, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.102 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.cx25821_audio_dev = type { ptr, %struct.cx25821_dmaqueue, ptr, i32, ptr, i32, %struct.spinlock, %struct.atomic_t, i32, i32, i32, ptr, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
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
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.cx25821_audio_buffer = type { i32, %struct.cx25821_riscmem, ptr, ptr, i32, i32 }
%struct.cx25821_riscmem = type { i32, ptr, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__param_str_enable = internal constant [20 x i8] c"cx25821_alsa.enable\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype306 = internal constant [43 x i8] c"cx25821_alsa.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable307 = internal constant [68 x i8] c"cx25821_alsa.parm=enable:Enable cx25821 soundcard. default enabled.\00", section ".modinfo", align 1
@__param_str_index = internal constant [19 x i8] c"cx25821_alsa.index\00", align 1
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype308 = internal constant [41 x i8] c"cx25821_alsa.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index309 = internal constant [70 x i8] c"cx25821_alsa.parm=index:Index value for cx25821 capture interface(s).\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [76 x i8] c"cx25821_alsa.description=ALSA driver module for cx25821 based capture cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [31 x i8] c"cx25821_alsa.author=Hiep Huynh\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [57 x i8] c"cx25821_alsa.file=drivers/media/pci/cx25821/cx25821-alsa\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [25 x i8] c"cx25821_alsa.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [19 x i8] c"cx25821_alsa.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype314 = internal constant [32 x i8] c"cx25821_alsa.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug315 = internal constant [46 x i8] c"cx25821_alsa.parm=debug:enable debug messages\00", section ".modinfo", align 1
@__initcall__kmod_cx25821_alsa__316_818_cx25821_alsa_init7 = internal global ptr @cx25821_alsa_init, section ".initcall7.init", align 4
@__exitcall_cx25821_audio_fini = internal global ptr @cx25821_audio_fini, section ".exitcall.exit", align 4
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx25821\00", [24 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@devno = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cx25821_audio_initdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016cx25821_alsa: DEBUG ERROR: devno >= SNDRV_CARDS %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx25821_audio_initdev\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/cx25821/cx25821-alsa.c\00", [55 x i8] zeroinitializer }, align 32
@cx25821_audio_initdev._entry_ptr = internal global ptr @cx25821_audio_initdev._entry, section ".printk_index", align 4
@cx25821_audio_initdev._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016cx25821_alsa: DEBUG ERROR: !enable[devno] %s\0A\00", [48 x i8] zeroinitializer }, align 32
@cx25821_audio_initdev._entry_ptr.6 = internal global ptr @cx25821_audio_initdev._entry.4, section ".printk_index", align 4
@cx25821_audio_initdev._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016cx25821_alsa: DEBUG ERROR: cannot create snd_card_new in %s\0A\00", [33 x i8] zeroinitializer }, align 32
@cx25821_audio_initdev._entry_ptr.9 = internal global ptr @cx25821_audio_initdev._entry.7, section ".printk_index", align 4
@cx25821_audio_initdev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@cx25821_audio_initdev._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013cx25821_alsa: ERROR %s: can't get IRQ %d for ALSA\0A\00", [43 x i8] zeroinitializer }, align 32
@cx25821_audio_initdev._entry_ptr.13 = internal global ptr @cx25821_audio_initdev._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx25821 Digital\00", [16 x i8] zeroinitializer }, align 32
@cx25821_audio_initdev._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016cx25821_alsa: DEBUG ERROR: cannot create snd_cx25821_pcm %s\0A\00", [33 x i8] zeroinitializer }, align 32
@cx25821_audio_initdev._entry_ptr.17 = internal global ptr @cx25821_audio_initdev._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s at 0x%lx irq %d\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX25821\00", [24 x i8] zeroinitializer }, align 32
@cx25821_audio_initdev._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016cx25821_alsa: %s/%i: ALSA support for cx25821 boards\0A\00", [40 x i8] zeroinitializer }, align 32
@cx25821_audio_initdev._entry_ptr.22 = internal global ptr @cx25821_audio_initdev._entry.20, section ".printk_index", align 4
@cx25821_audio_initdev._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016cx25821_alsa: DEBUG ERROR: cannot register sound card %s\0A\00", [36 x i8] zeroinitializer }, align 32
@cx25821_audio_initdev._entry_ptr.25 = internal global ptr @cx25821_audio_initdev._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irq aud\00", [24 x i8] zeroinitializer }, align 32
@cx25821_aud_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014cx25821_alsa: WARNING %s/1: Audio risc op code error\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx25821_aud_irq\00", [16 x i8] zeroinitializer }, align 32
@cx25821_aud_irq._entry_ptr = internal global ptr @cx25821_aud_irq._entry, section ".printk_index", align 4
@cx25821_sram_channels = external dso_local constant [0 x %struct.sram_channel], align 4
@cx25821_aud_irq._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014cx25821_alsa: WARNING %s: Downstream sync error!\0A\00", [44 x i8] zeroinitializer }, align 32
@cx25821_aud_irq._entry_ptr.31 = internal global ptr @cx25821_aud_irq._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dn_risci1\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"up_risci1\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rds_dn_risc1\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dn_risci2\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"up_risci2\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rds_dn_risc2\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dnf_of\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"upf_uf\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rds_dnf_uf\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dn_sync\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"up_sync\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rds_dn_sync\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"opc_err\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"par_err\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rip_err\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pci_abort\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ber_irq\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mchg_irq\00", [23 x i8] zeroinitializer }, align 32
@cx25821_aud_irqs = internal global { <{ [22 x ptr], [10 x ptr] }>, [32 x i8] } { <{ [22 x ptr], [10 x ptr] }> <{ [22 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr null, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr null, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr null, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr null, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [10 x ptr] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@snd_cx25821_pcm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016cx25821_alsa: ERROR: FAILED snd_pcm_new() in %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_cx25821_pcm\00", [16 x i8] zeroinitializer }, align 32
@snd_cx25821_pcm._entry_ptr = internal global ptr @snd_cx25821_pcm._entry, section ".printk_index", align 4
@snd_cx25821_pcm_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cx25821_pcm_open, ptr @snd_cx25821_close, ptr null, ptr @snd_cx25821_hw_params, ptr @snd_cx25821_hw_free, ptr @snd_cx25821_prepare, ptr @snd_cx25821_card_trigger, ptr null, ptr @snd_cx25821_pointer, ptr null, ptr null, ptr null, ptr null, ptr @snd_cx25821_page, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_cx25821_pcm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013cx25821_alsa: DEBUG: cx25821 can't find device struct. Can't proceed with open\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_cx25821_pcm_open\00", [43 x i8] zeroinitializer }, align 32
@snd_cx25821_pcm_open._entry_ptr = internal global ptr @snd_cx25821_pcm_open._entry, section ".printk_index", align 4
@snd_cx25821_digital_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 4, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 16384, i32 128, i32 128, i32 1, i32 128, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_cx25821_pcm_open._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016cx25821_alsa: %s/1: Error opening PCM!\0A\00", [54 x i8] zeroinitializer }, align 32
@snd_cx25821_pcm_open._entry_ptr.57 = internal global ptr @snd_cx25821_pcm_open._entry.55, section ".printk_index", align 4
@snd_cx25821_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016cx25821_alsa: DEBUG: ERROR after cx25821_risc_databuffer_audio()\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_cx25821_hw_params\00", [42 x i8] zeroinitializer }, align 32
@snd_cx25821_hw_params._entry_ptr = internal global ptr @snd_cx25821_hw_params._entry, section ".printk_index", align 4
@dsp_buffer_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016cx25821_alsa: %s/1: Freeing buffer\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dsp_buffer_free\00", [16 x i8] zeroinitializer }, align 32
@dsp_buffer_free._entry_ptr = internal global ptr @dsp_buffer_free._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cx25821_alsa_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016cx25821_alsa: %s/1: vmalloc_32(%lu pages) failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx25821_alsa_dma_init\00", [42 x i8] zeroinitializer }, align 32
@cx25821_alsa_dma_init._entry_ptr = internal global ptr @cx25821_alsa_dma_init._entry, section ".printk_index", align 4
@cx25821_alsa_dma_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.3, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016cx25821_alsa: %s/1: vmalloc is at addr 0x%p, size=%lu\0A\00", [39 x i8] zeroinitializer }, align 32
@cx25821_alsa_dma_init._entry_ptr.66 = internal global ptr @cx25821_alsa_dma_init._entry.64, section ".printk_index", align 4
@cx25821_alsa_dma_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.3, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014cx25821_alsa: %s: cx25821_alsa_map_sg failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx25821_alsa_dma_map\00", [43 x i8] zeroinitializer }, align 32
@cx25821_alsa_dma_map._entry_ptr = internal global ptr @cx25821_alsa_dma_map._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cx25821_audio_fini._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013cx25821_alsa: %s failed to find a cx25821 driver.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx25821_audio_fini\00", [45 x i8] zeroinitializer }, align 32
@cx25821_audio_fini._entry_ptr = internal global ptr @cx25821_audio_fini._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 108, i32 21 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 92, i32 13 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 90, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 812, i32 42 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"devno\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 49, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 699, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 705, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 713, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 722, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 735, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 740, i32 33 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 742, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 748, i32 26 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 750, i32 27 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 752, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 757, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 322, i32 36 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 327, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 335, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 297, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 297, i32 15 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 297, i32 28 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 299, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 299, i32 15 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 299, i32 28 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 301, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 301, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 301, i32 22 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 303, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 303, i32 13 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 303, i32 24 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 305, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 305, i32 13 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 305, i32 24 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 306, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 306, i32 15 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 306, i32 26 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"cx25821_aud_irqs\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 296, i32 14 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 662, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [20 x i8] c"snd_cx25821_pcm_ops\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 639, i32 33 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 453, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant [23 x i8] c"snd_cx25821_digital_hw\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 422, i32 38 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 481, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 537, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 402, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 142, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 146, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 183, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.303 = private constant [44 x i8] c"../drivers/media/pci/cx25821/cx25821-alsa.c\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 791, i32 3 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_debug315, ptr @__UNIQUE_ID_debugtype314, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_enable307, ptr @__UNIQUE_ID_enabletype306, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_index309, ptr @__UNIQUE_ID_indextype308, ptr @__UNIQUE_ID_license313, ptr @__exitcall_cx25821_audio_fini, ptr @__initcall__kmod_cx25821_alsa__316_818_cx25821_alsa_init7, ptr @__param_debug, ptr @__param_enable, ptr @__param_index, ptr @cx25821_alsa_dma_init._entry, ptr @cx25821_alsa_dma_init._entry.64, ptr @cx25821_alsa_dma_init._entry_ptr, ptr @cx25821_alsa_dma_init._entry_ptr.66, ptr @cx25821_alsa_dma_map._entry, ptr @cx25821_alsa_dma_map._entry_ptr, ptr @cx25821_aud_irq._entry, ptr @cx25821_aud_irq._entry.29, ptr @cx25821_aud_irq._entry_ptr, ptr @cx25821_aud_irq._entry_ptr.31, ptr @cx25821_audio_fini._entry, ptr @cx25821_audio_fini._entry_ptr, ptr @cx25821_audio_initdev._entry, ptr @cx25821_audio_initdev._entry.11, ptr @cx25821_audio_initdev._entry.15, ptr @cx25821_audio_initdev._entry.20, ptr @cx25821_audio_initdev._entry.23, ptr @cx25821_audio_initdev._entry.4, ptr @cx25821_audio_initdev._entry.7, ptr @cx25821_audio_initdev._entry_ptr, ptr @cx25821_audio_initdev._entry_ptr.13, ptr @cx25821_audio_initdev._entry_ptr.17, ptr @cx25821_audio_initdev._entry_ptr.22, ptr @cx25821_audio_initdev._entry_ptr.25, ptr @cx25821_audio_initdev._entry_ptr.6, ptr @cx25821_audio_initdev._entry_ptr.9, ptr @dsp_buffer_free._entry, ptr @dsp_buffer_free._entry_ptr, ptr @snd_cx25821_hw_params._entry, ptr @snd_cx25821_hw_params._entry_ptr, ptr @snd_cx25821_pcm._entry, ptr @snd_cx25821_pcm._entry_ptr, ptr @snd_cx25821_pcm_open._entry, ptr @snd_cx25821_pcm_open._entry.55, ptr @snd_cx25821_pcm_open._entry_ptr, ptr @snd_cx25821_pcm_open._entry_ptr.57, ptr @debug, ptr @enable, ptr @index, ptr @.str, ptr @devno, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @cx25821_audio_initdev.__key, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @cx25821_aud_irqs, ptr @.str.51, ptr @.str.52, ptr @snd_cx25821_pcm_ops, ptr @.str.53, ptr @.str.54, ptr @snd_cx25821_digital_hw, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devno to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_audio_initdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_audio_initdev._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_audio_initdev._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_audio_initdev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_audio_initdev._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_audio_initdev._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_audio_initdev._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_audio_initdev._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_aud_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_aud_irq._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_aud_irqs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx25821_pcm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx25821_pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx25821_pcm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx25821_digital_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx25821_pcm_open._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx25821_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_buffer_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_alsa_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_alsa_dma_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_alsa_dma_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_audio_fini._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25821_alsa_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @driver_find(ptr noundef nonnull @.str, ptr noundef nonnull @pci_bus_type) #9
  %call1 = tail call i32 @driver_for_each_device(ptr noundef %call, ptr noundef null, ptr noundef null, ptr noundef nonnull @cx25821_alsa_init_callback) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx25821_audio_fini() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @driver_find(ptr noundef nonnull @.str, ptr noundef nonnull @pci_bus_type) #9
  %call1 = tail call i32 @driver_for_each_device(ptr noundef %call, ptr noundef null, ptr noundef null, ptr noundef nonnull @cx25821_alsa_exit_callback) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @driver_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25821_alsa_init_callback(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  %pcm.i.i = alloca ptr, align 4
  %card.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card.i) #9
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %card.i, align 4, !annotation !187
  %3 = load i32, ptr @devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %3)
  %cmp.i = icmp sgt i32 %3, 31
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #12
  br label %cx25821_audio_initdev.exit

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr [32 x i8], ptr @enable, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then1.i, label %if.end7.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i = add nsw i32 %3, 1
  store i32 %inc.i, ptr @devno, align 4
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #12
  br label %cx25821_audio_initdev.exit

if.end7.i:                                        ; preds = %if.end.i
  %pci.i = getelementptr inbounds %struct.cx25821_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci.i, align 8
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %arrayidx9.i = getelementptr [32 x i32], ptr @index, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9.i, align 4
  %call11.i = call i32 @snd_card_new(ptr noundef %dev8.i, i32 noundef %9, ptr noundef null, ptr noundef null, i32 noundef 100, ptr noundef nonnull %card.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.end16.i, label %if.end19.i

do.end16.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2) #12
  br label %cx25821_audio_initdev.exit

if.end19.i:                                       ; preds = %if.end7.i
  %10 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i, align 4
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 2
  %call20.i = call i32 @strscpy(ptr noundef %driver.i, ptr noundef nonnull @.str, i32 noundef 16) #9
  %12 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private_data.i, align 8
  %reg_lock.i = getelementptr inbounds %struct.cx25821_audio_dev, ptr %15, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @cx25821_audio_initdev.__key, i16 noundef signext 3) #9
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %15, align 4
  %17 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card.i, align 4
  %card26.i = getelementptr inbounds %struct.cx25821_audio_dev, ptr %15, i32 0, i32 4
  %19 = ptrtoint ptr %card26.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %card26.i, align 4
  %20 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci.i, align 8
  %pci28.i = getelementptr inbounds %struct.cx25821_audio_dev, ptr %15, i32 0, i32 2
  %22 = ptrtoint ptr %pci28.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %pci28.i, align 4
  %23 = load ptr, ptr %pci.i, align 8
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 47
  %24 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %resource.i, align 8
  %iobase.i = getelementptr inbounds %struct.cx25821_audio_dev, ptr %15, i32 0, i32 5
  %26 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %iobase.i, align 4
  %27 = load ptr, ptr %pci.i, align 8
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 46
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i, align 4
  %irq32.i = getelementptr inbounds %struct.cx25821_audio_dev, ptr %15, i32 0, i32 3
  %30 = ptrtoint ptr %irq32.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %irq32.i, align 4
  %31 = load ptr, ptr %pci.i, align 8
  %irq34.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 46
  %32 = ptrtoint ptr %irq34.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq34.i, align 4
  %name.i = getelementptr inbounds %struct.cx25821_dev, ptr %1, i32 0, i32 18
  %call.i.i = call i32 @request_threaded_irq(i32 noundef %33, ptr noundef nonnull @cx25821_irq, ptr noundef null, i32 noundef 128, ptr noundef %name.i, ptr noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp38.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp38.i, label %do.end42.i, label %if.end50.i

do.end42.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %15, align 4
  %name45.i = getelementptr inbounds %struct.cx25821_dev, ptr %35, i32 0, i32 18
  %36 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci.i, align 8
  %irq48.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 46
  %38 = ptrtoint ptr %irq48.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq48.i, align 4
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name45.i, i32 noundef %39) #12
  br label %error.i

if.end50.i:                                       ; preds = %if.end19.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i.i) #9
  %40 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i.i, align 4, !annotation !187
  %41 = ptrtoint ptr %card26.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %card26.i, align 4
  %call.i1.i = call i32 @snd_pcm_new(ptr noundef %42, ptr noundef nonnull @.str.14, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %pcm.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp.i.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp.i.i, label %do.end56.i, label %if.end59.i

do.end56.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #9
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2) #12
  br label %error.i

if.end59.i:                                       ; preds = %if.end50.i
  %43 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcm.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %15, ptr %private_data.i.i, align 8
  %info_flags.i.i = getelementptr inbounds %struct.snd_pcm, ptr %44, i32 0, i32 3
  %46 = ptrtoint ptr %info_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %info_flags.i.i, align 8
  %name2.i.i = getelementptr inbounds %struct.snd_pcm, ptr %44, i32 0, i32 7
  %call3.i.i = call i32 @strscpy(ptr noundef %name2.i.i, ptr noundef nonnull @.str.14, i32 noundef 80) #9
  %47 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcm.i.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %48, i32 noundef 1, ptr noundef nonnull @snd_cx25821_pcm_ops) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #9
  %49 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %card.i, align 4
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %50, i32 0, i32 3
  %call61.i = call i32 @strscpy(ptr noundef %shortname.i, ptr noundef nonnull @.str, i32 noundef 32) #9
  %51 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %card.i, align 4
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %15, align 4
  %name64.i = getelementptr inbounds %struct.cx25821_dev, ptr %54, i32 0, i32 18
  %55 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iobase.i, align 4
  %57 = ptrtoint ptr %irq32.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq32.i, align 4
  %call68.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname.i, ptr noundef nonnull @.str.18, ptr noundef %name64.i, i32 noundef %56, i32 noundef %58) #9
  %59 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %card.i, align 4
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %60, i32 0, i32 6
  %call70.i = call i32 @strscpy(ptr noundef %mixername.i, ptr noundef nonnull @.str.19, i32 noundef 80) #9
  %61 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %card.i, align 4
  %driver75.i = getelementptr inbounds %struct.snd_card, ptr %62, i32 0, i32 2
  %63 = load i32, ptr @devno, align 4
  %call77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %driver75.i, i32 noundef %63) #12
  %64 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %card.i, align 4
  %call78.i = call i32 @snd_card_register(ptr noundef %65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %cmp79.i = icmp slt i32 %call78.i, 0
  br i1 %cmp79.i, label %do.end83.i, label %if.end86.i

do.end83.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %call85.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.2) #12
  br label %error.i

if.end86.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %card.i, align 4
  %card87.i = getelementptr inbounds %struct.cx25821_dev, ptr %1, i32 0, i32 11
  %68 = ptrtoint ptr %card87.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %card87.i, align 4
  %69 = load i32, ptr @devno, align 4
  %inc88.i = add i32 %69, 1
  store i32 %inc88.i, ptr @devno, align 4
  br label %cx25821_audio_initdev.exit

error.i:                                          ; preds = %do.end83.i, %do.end56.i, %do.end42.i
  %70 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card.i, align 4
  %call89.i = call i32 @snd_card_free(ptr noundef %71) #9
  br label %cx25821_audio_initdev.exit

cx25821_audio_initdev.exit:                       ; preds = %error.i, %if.end86.i, %do.end16.i, %if.then1.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card.i) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25821_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %lmmio = getelementptr inbounds %struct.cx25821_dev, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 65585
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr6 = getelementptr i32, ptr %6, i32 65584
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !191
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr13 = getelementptr i32, ptr %9, i32 65541
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !192
  %11 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio, align 4
  %add.ptr20 = getelementptr i32, ptr %12, i32 65541
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp24 = icmp eq i32 %13, 0
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr28 = getelementptr i32, ptr %15, i32 65541
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !194
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr35 = getelementptr i32, ptr %18, i32 65585
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !195
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio, align 4
  %add.ptr42 = getelementptr i32, ptr %21, i32 65584
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.then.out_crit_edge, label %if.then46

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then46:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !197
  tail call void @arm_heavy_mb() #9
  %25 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio, align 4
  %add.ptr48 = getelementptr i32, ptr %26, i32 65541
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %16) #9, !srcloc !198
  tail call fastcc void @cx25821_aud_irq(ptr noundef %dev_id, i32 noundef %24, i32 noundef %23)
  br label %do.body63

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %27 = tail call i32 @llvm.bswap.i32(i32 %7)
  %28 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !199
  tail call void @arm_heavy_mb() #9
  %29 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lmmio, align 4
  %add.ptr53 = getelementptr i32, ptr %30, i32 65541
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %13) #9, !srcloc !198
  tail call fastcc void @cx25821_aud_irq(ptr noundef %dev_id, i32 noundef %28, i32 noundef %27)
  br label %do.body63

do.body63:                                        ; preds = %if.end, %if.then46
  %31 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lmmio, align 4
  %add.ptr57 = getelementptr i32, ptr %32, i32 65541
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !201
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lmmio, align 4
  %add.ptr67 = getelementptr i32, ptr %35, i32 65541
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %33) #9, !srcloc !198
  br label %out

out:                                              ; preds = %do.body63, %if.then.out_crit_edge
  %tobool69.not = phi i32 [ 1, %do.body63 ], [ 0, %if.then.out_crit_edge ]
  ret i32 %tobool69.not
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx25821_aud_irq(ptr noundef %chip, i32 noundef %status, i32 noundef %mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %and = and i32 %mask, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !202
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %status)
  %lmmio = getelementptr inbounds %struct.cx25821_dev, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %4, i32 65585
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !198
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2 = icmp ult i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and)
  %tobool.not = icmp ult i32 %and, 256
  %or.cond = and i1 %tobool.not, %cmp2
  br i1 %or.cond, label %do.body.if.end6_crit_edge, label %if.then5

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.cx25821_dev, ptr %1, i32 0, i32 18
  tail call void @cx25821_print_irqbits(ptr noundef %name, ptr noundef nonnull @.str.26, ptr noundef nonnull @cx25821_aud_irqs, i32 noundef 32, i32 noundef %status, i32 noundef %mask) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body.if.end6_crit_edge
  %and7 = and i32 %status, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end26_crit_edge, label %do.end12

if.end6.if.end26_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %name13 = getelementptr inbounds %struct.cx25821_dev, ptr %1, i32 0, i32 18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name13) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !203
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr19 = getelementptr i32, ptr %7, i32 328000
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !204
  %9 = and i32 %8, -16842753
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %add.ptr25 = getelementptr i32, ptr %11, i32 328000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %9) #9, !srcloc !198
  tail call void @cx25821_sram_channel_dump_audio(ptr noundef %1, ptr noundef getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx25821_sram_channels, i32 0, i32 8)) #9
  br label %if.end26

if.end26:                                         ; preds = %do.end12, %if.end6.if.end26_crit_edge
  %and27 = and i32 %status, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end42, label %do.end32

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %name34 = getelementptr inbounds %struct.cx25821_dev, ptr %1, i32 0, i32 18
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name34) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !205
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %add.ptr41 = getelementptr i32, ptr %13, i32 327685
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 50331648) #9, !srcloc !198
  br label %cleanup

if.end42:                                         ; preds = %if.end26
  %and43 = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.then45

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %count = getelementptr inbounds %struct.cx25821_audio_dev, ptr %chip, i32 0, i32 7
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr49 = getelementptr i32, ptr %15, i32 327684
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #9, !srcloc !189
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !206
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  %18 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %17, ptr %count, align 4
  %substream = getelementptr inbounds %struct.cx25821_audio_dev, ptr %chip, i32 0, i32 12
  %19 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end42.cleanup_crit_edge, %do.end32, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx25821_print_irqbits(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx25821_sram_channel_dump_audio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx25821_pcm_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_pcm_hw_constraint_pow2(ptr noundef %3, i32 noundef 0, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.body14, label %if.end4

if.end4:                                          ; preds = %if.end
  %substream5 = getelementptr inbounds %struct.cx25821_audio_dev, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %substream5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream5, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw, ptr @snd_cx25821_digital_hw, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx25821_sram_channels, i32 0, i32 8, i32 6) to i32))
  %6 = load i32, ptr getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx25821_sram_channels, i32 0, i32 8, i32 6), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %6)
  %cmp6.not = icmp eq i32 %6, 384
  br i1 %cmp6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 %6, 3
  %and = and i32 %div, -8
  %7 = tail call i32 @llvm.umin.i32(i32 %and, i32 128)
  %period_bytes_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 8
  %8 = ptrtoint ptr %period_bytes_min to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %period_bytes_min, align 8
  %period_bytes_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 9
  %9 = ptrtoint ptr %period_bytes_max to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %period_bytes_max, align 4
  br label %cleanup

do.body14:                                        ; preds = %if.end
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp15.not = icmp eq i32 %10, 0
  br i1 %cmp15.not, label %do.body14.cleanup_crit_edge, label %do.end19

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.cx25821_dev, ptr %12, i32 0, i32 18
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %do.body14.cleanup_crit_edge, %if.then7, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.then7 ], [ 0, %if.end4.cleanup_crit_edge ], [ %call2, %do.end19 ], [ %call2, %do.body14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cx25821_close(ptr nocapture noundef readnone %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx25821_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_area, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dsp_buffer_free(ptr noundef %1)
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %dma_area2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 50
  %8 = ptrtoint ptr %dma_area2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dma_area2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %period_size = getelementptr inbounds %struct.cx25821_audio_dev, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %period_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %period_size, align 4
  %arrayidx.i.i126 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %arrayidx.i.i126 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i126, align 4
  %num_periods = getelementptr inbounds %struct.cx25821_audio_dev, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %num_periods to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %num_periods, align 4
  %15 = load i32, ptr %arrayidx.i.i126, align 4
  %mul = mul i32 %15, %10
  %dma_size = getelementptr inbounds %struct.cx25821_audio_dev, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %dma_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool8.not = icmp eq i32 %mul, 0
  br i1 %tobool8.not, label %do.body13, label %do.body20, !prof !207

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/cx25821/cx25821-alsa.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 512, 0\0A.popsection", ""() #9, !srcloc !208
  unreachable

do.body20:                                        ; preds = %if.end
  %17 = tail call i32 @llvm.ctpop.i32(i32 %13), !range !209
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %tobool23.not = icmp ult i32 %17, 2
  br i1 %tobool23.not, label %do.end39, label %do.body31, !prof !210

do.body31:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/cx25821/cx25821-alsa.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 513, 0\0A.popsection", ""() #9, !srcloc !211
  unreachable

do.end39:                                         ; preds = %do.body20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 36) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end39.cleanup_crit_edge, label %if.end42

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %do.end39
  %19 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %20)
  %cmp44 = icmp ugt i32 %20, 128
  br i1 %cmp44, label %if.then45, label %if.end42.if.end47_crit_edge

if.end42.if.end47_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %period_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 128, ptr %period_size, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end42.if.end47_crit_edge
  %22 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %period_size, align 4
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %call7.i.i, align 8
  %buf49 = getelementptr inbounds %struct.cx25821_audio_dev, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %buf49 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %buf49, align 4
  %26 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_size, align 4
  %add = add i32 %27, 4095
  %shr = lshr i32 %add, 12
  %shl.i = and i32 %add, -4096
  %call.i = tail call noalias ptr @vmalloc_32(i32 noundef %shl.i) #14
  %vaddr.i = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %vaddr.i, align 4
  %cmp.i = icmp eq ptr %call.i, null
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp3.not.i = icmp eq i32 %29, 0
  br i1 %cmp.i, label %do.body.i, label %do.body10.i

do.body.i:                                        ; preds = %if.end47
  br i1 %cmp3.not.i, label %do.body.i.error_crit_edge, label %do.end.i

do.body.i.error_crit_edge:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %name.i = getelementptr inbounds %struct.cx25821_dev, ptr %31, i32 0, i32 18
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name.i, i32 noundef %shr) #12
  br label %error

do.body10.i:                                      ; preds = %if.end47
  br i1 %cmp3.not.i, label %do.body10.i.do.end25.i_crit_edge, label %do.end15.i

do.body10.i.do.end25.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25.i

do.end15.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %name18.i = getelementptr inbounds %struct.cx25821_dev, ptr %33, i32 0, i32 18
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name18.i, ptr noundef nonnull %call.i, i32 noundef %shl.i) #12
  br label %do.end25.i

do.end25.i:                                       ; preds = %do.end15.i, %do.body10.i.do.end25.i_crit_edge
  %34 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vaddr.i, align 4
  %36 = call ptr @memset(ptr %35, i32 0, i32 %shl.i)
  %nr_pages28.i = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %call7.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %nr_pages28.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr, ptr %nr_pages28.i, align 8
  %38 = mul nuw nsw i32 %shr, 20
  %call31.i = tail call noalias ptr @vzalloc(i32 noundef %38) #14
  %sglist.i = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %call7.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %sglist.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call31.i, ptr %sglist.i, align 8
  %cmp33.i = icmp eq ptr %call31.i, null
  br i1 %cmp33.i, label %do.end25.i.vzalloc_err.i_crit_edge, label %if.end35.i

do.end25.i.vzalloc_err.i_crit_edge:               ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vzalloc_err.i

if.end35.i:                                       ; preds = %do.end25.i
  %40 = ptrtoint ptr %nr_pages28.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_pages28.i, align 8
  tail call void @sg_init_table(ptr noundef nonnull %call31.i, i32 noundef %41) #9
  %42 = ptrtoint ptr %nr_pages28.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_pages28.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp3978.not.i = icmp eq i32 %43, 0
  br i1 %cmp3978.not.i, label %if.end35.i.if.end55_crit_edge, label %if.end35.i.for.body.i_crit_edge

if.end35.i.for.body.i_crit_edge:                  ; preds = %if.end35.i
  br label %for.body.i

if.end35.i.if.end55_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

for.body.i:                                       ; preds = %sg_set_page.exit.i.for.body.i_crit_edge, %if.end35.i.for.body.i_crit_edge
  %i.079.i = phi i32 [ %inc.i, %sg_set_page.exit.i.for.body.i_crit_edge ], [ 0, %if.end35.i.for.body.i_crit_edge ]
  %44 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vaddr.i, align 4
  %mul.i = shl i32 %i.079.i, 12
  %add.ptr.i = getelementptr i8, ptr %45, i32 %mul.i
  %call41.i = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr.i) #9
  %cmp42.i = icmp eq ptr %call41.i, null
  %46 = ptrtoint ptr %sglist.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sglist.i, align 8
  br i1 %cmp42.i, label %vmalloc_to_page_err.i, label %if.end44.i

if.end44.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %47, i32 %i.079.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %50 = ptrtoint ptr %call41.i to i32
  %and2.i.i.i = and i32 %50, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !210

do.body5.i.i.i:                                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !212
  unreachable

do.body11.i.i.i:                                  ; preds = %if.end44.i
  %and.i.i.i.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_page.exit.i, label %do.body19.i.i.i, !prof !210

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !213
  unreachable

sg_set_page.exit.i:                               ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %49, 3
  %or.i.i.i = or i32 %and.i.i.i, %50
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or.i.i.i, ptr %arrayidx.i, align 4
  %offset1.i.i = getelementptr %struct.scatterlist, ptr %47, i32 %i.079.i, i32 1
  %52 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %47, i32 %i.079.i, i32 2
  %53 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4096, ptr %length.i.i, align 4
  %inc.i = add nuw i32 %i.079.i, 1
  %54 = ptrtoint ptr %nr_pages28.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_pages28.i, align 8
  %cmp39.i = icmp ult i32 %inc.i, %55
  br i1 %cmp39.i, label %sg_set_page.exit.i.for.body.i_crit_edge, label %sg_set_page.exit.i.if.end55_crit_edge

sg_set_page.exit.i.if.end55_crit_edge:            ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

sg_set_page.exit.i.for.body.i_crit_edge:          ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

vmalloc_to_page_err.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef %47) #9
  %56 = ptrtoint ptr %sglist.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %sglist.i, align 8
  br label %vzalloc_err.i

vzalloc_err.i:                                    ; preds = %vmalloc_to_page_err.i, %do.end25.i.vzalloc_err.i_crit_edge
  %57 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vaddr.i, align 4
  tail call void @vfree(ptr noundef %58) #9
  %59 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %vaddr.i, align 4
  br label %error

if.end55:                                         ; preds = %sg_set_page.exit.i.if.end55_crit_edge, %if.end35.i.if.end55_crit_edge
  %60 = ptrtoint ptr %buf49 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buf49, align 4
  %pci.i = getelementptr inbounds %struct.cx25821_audio_dev, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pci.i, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  %sglist.i129 = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %61, i32 0, i32 3
  %64 = ptrtoint ptr %sglist.i129 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sglist.i129, align 4
  %nr_pages.i = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %61, i32 0, i32 5
  %66 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nr_pages.i, align 4
  %call.i130 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev2.i, ptr noundef %65, i32 noundef %67, i32 noundef 2, i32 noundef 0) #9
  %sglen.i = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %61, i32 0, i32 4
  %68 = ptrtoint ptr %sglen.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call.i130, ptr %sglen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp.i131 = icmp eq i32 %call.i130, 0
  br i1 %cmp.i131, label %cx25821_alsa_dma_map.exit.thread, label %if.end59

cx25821_alsa_dma_map.exit.thread:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68) #12
  br label %error

if.end59:                                         ; preds = %if.end55
  %69 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pci.i, align 4
  %risc = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %call7.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %sglist.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sglist.i, align 8
  %73 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %period_size, align 4
  %75 = ptrtoint ptr %num_periods to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_periods, align 4
  %call62 = tail call i32 @cx25821_risc_databuffer_audio(ptr noundef %70, ptr noundef %risc, ptr noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %do.end67, label %if.end69

do.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #12
  br label %error

if.end69:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %jmp = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %call7.i.i, i32 0, i32 1, i32 2
  %77 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %jmp, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 369, ptr %78, align 4
  %dma = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %call7.i.i, i32 0, i32 1, i32 3
  %80 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma, align 8
  %82 = tail call i32 @llvm.bswap.i32(i32 %81)
  %83 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %jmp, align 4
  %arrayidx74 = getelementptr i32, ptr %84, i32 1
  %85 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %82, ptr %arrayidx74, align 4
  %86 = load ptr, ptr %jmp, align 4
  %arrayidx77 = getelementptr i32, ptr %86, i32 2
  %87 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %arrayidx77, align 4
  %88 = ptrtoint ptr %buf49 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %buf49, align 4
  %vaddr = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %vaddr, align 4
  %92 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %runtime, align 4
  %dma_area80 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %93, i32 0, i32 50
  %94 = ptrtoint ptr %dma_area80 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %dma_area80, align 4
  %95 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dma_size, align 4
  %97 = load ptr, ptr %runtime, align 4
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %97, i32 0, i32 52
  %98 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %96, ptr %dma_bytes, align 4
  %99 = load ptr, ptr %runtime, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %99, i32 0, i32 51
  %100 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %dma_addr, align 8
  br label %cleanup

error:                                            ; preds = %do.end67, %cx25821_alsa_dma_map.exit.thread, %vzalloc_err.i, %do.end.i, %do.body.i.error_crit_edge
  %ret.0 = phi i32 [ %call62, %do.end67 ], [ -12, %cx25821_alsa_dma_map.exit.thread ], [ -12, %vzalloc_err.i ], [ -12, %do.end.i ], [ -12, %do.body.i.error_crit_edge ]
  %101 = ptrtoint ptr %buf49 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %buf49, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end69, %do.end39.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end69 ], [ -12, %do.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx25821_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_area, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  tail call fastcc void @dsp_buffer_free(ptr noundef %5)
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %dma_area2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 50
  %8 = ptrtoint ptr %dma_area2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %dma_area2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cx25821_prepare(ptr nocapture noundef readnone %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx25821_card_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cx25821_audio_dev, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #9
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %buf1.i = getelementptr inbounds %struct.cx25821_audio_dev, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf1.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void @cx25821_set_gpiopin_direction(ptr noundef %6, i32 noundef 0, i32 noundef 0) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !214
  tail call void @arm_heavy_mb() #9
  %lmmio.i = getelementptr inbounds %struct.cx25821_dev, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %8, i32 328000
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !215
  %10 = and i32 %9, -16842753
  %11 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio.i, align 4
  %add.ptr7.i = getelementptr i32, ptr %12, i32 328000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %10) #9, !srcloc !198
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %4, align 4
  %dma.i = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %4, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma.i, align 4
  %call9.i = tail call i32 @cx25821_sram_channel_setup_audio(ptr noundef %14, ptr noundef getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx25821_sram_channels, i32 0, i32 8), i32 noundef %16, i32 noundef %18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !216
  tail call void @arm_heavy_mb() #9
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %4, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  %22 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio.i, align 4
  %add.ptr15.i = getelementptr i32, ptr %23, i32 327686
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 %21) #9, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !217
  tail call void @arm_heavy_mb() #9
  %24 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio.i, align 4
  %add.ptr20.i = getelementptr i32, ptr %25, i32 327685
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 50331648) #9, !srcloc !198
  %count.i = getelementptr inbounds %struct.cx25821_audio_dev, ptr %1, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #9
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %count.i, align 4
  %27 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lmmio.i, align 4
  %add.ptr24.i = getelementptr i32, ptr %28, i32 327687
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !219
  tail call void @arm_heavy_mb() #9
  %30 = or i32 %29, 4325888
  %31 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lmmio.i, align 4
  %add.ptr35.i = getelementptr i32, ptr %32, i32 327687
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %30) #9, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !220
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lmmio.i, align 4
  %add.ptr40.i = getelementptr i32, ptr %34, i32 65584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 17891584) #9, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !221
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio.i, align 4
  %add.ptr45.i = getelementptr i32, ptr %36, i32 65585
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 -1) #9, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !222
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lmmio.i, align 4
  %add.ptr52.i = getelementptr i32, ptr %38, i32 65540
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.i) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !223
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %pci_irqmask.i = getelementptr inbounds %struct.cx25821_dev, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %pci_irqmask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pci_irqmask.i, align 4
  %44 = or i32 %39, 134217728
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #9
  %or66.i = or i32 %43, %45
  %46 = tail call i32 @llvm.bswap.i32(i32 %or66.i) #9
  %47 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lmmio.i, align 4
  %add.ptr68.i = getelementptr i32, ptr %48, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i, i32 %46) #9, !srcloc !198
  %49 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lmmio.i, align 4
  %add.ptr72.i = getelementptr i32, ptr %50, i32 328000
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72.i) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !225
  tail call void @arm_heavy_mb() #9
  %52 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lmmio.i, align 4
  %add.ptr82.i = getelementptr i32, ptr %53, i32 328000
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !226
  %55 = or i32 %51, %54
  %56 = or i32 %55, 16842752
  %57 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lmmio.i, align 4
  %add.ptr94.i = getelementptr i32, ptr %58, i32 328000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94.i, i32 %56) #9, !srcloc !198
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %sw.bb
  %__ms.01.i = phi i32 [ 100, %sw.bb ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.01.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #9
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.sw.epilog_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.sw.epilog_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !227
  tail call void @arm_heavy_mb() #9
  %lmmio.i7 = getelementptr inbounds %struct.cx25821_dev, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %lmmio.i7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lmmio.i7, align 4
  %add.ptr.i8 = getelementptr i32, ptr %63, i32 328000
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !228
  %65 = and i32 %64, -16842753
  %66 = ptrtoint ptr %lmmio.i7 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lmmio.i7, align 4
  %add.ptr4.i = getelementptr i32, ptr %67, i32 328000
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %65) #9, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !229
  tail call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %lmmio.i7 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %lmmio.i7, align 4
  %add.ptr11.i = getelementptr i32, ptr %69, i32 65540
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !230
  %71 = and i32 %70, -134217729
  %72 = ptrtoint ptr %lmmio.i7 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lmmio.i7, align 4
  %add.ptr18.i = getelementptr i32, ptr %73, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %71) #9, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !231
  tail call void @arm_heavy_mb() #9
  %74 = ptrtoint ptr %lmmio.i7 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %lmmio.i7, align 4
  %add.ptr25.i = getelementptr i32, ptr %75, i32 65584
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #9, !srcloc !189
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !232
  %77 = and i32 %76, -286261505
  %78 = ptrtoint ptr %lmmio.i7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %lmmio.i7, align 4
  %add.ptr32.i = getelementptr i32, ptr %79, i32 65584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %77) #9, !srcloc !198
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %while.body.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %sw.bb1 ], [ -22, %entry.sw.epilog_crit_edge ], [ 0, %while.body.i.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx25821_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %count2 = getelementptr inbounds %struct.cx25821_audio_dev, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count2, i32 noundef 4) #9
  %4 = ptrtoint ptr %count2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %count2, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period_size, align 4
  %conv3 = and i32 %5, 65535
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 17
  %8 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %periods, align 8
  %sub = add i32 %9, -1
  %and = and i32 %conv3, %sub
  %mul = mul i32 %and, %7
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @snd_cx25821_page(ptr nocapture noundef readonly %substream, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 50
  %2 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_area, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %offset
  %call = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr) #9
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_pow2(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsp_buffer_free(ptr nocapture noundef %chip) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.cx25821_audio_dev, ptr %chip, i32 0, i32 11
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %dma_size = getelementptr inbounds %struct.cx25821_audio_dev, ptr %chip, i32 0, i32 8
  %2 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body5, label %do.body11, !prof !207

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/cx25821/cx25821-alsa.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 400, 0\0A.popsection", ""() #9, !srcloc !233
  unreachable

do.body11:                                        ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %do.end15, label %do.body11.do.end18_crit_edge

do.body11.do.end18_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

do.end15:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %name = getelementptr inbounds %struct.cx25821_dev, ptr %6, i32 0, i32 18
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name) #12
  br label %do.end18

do.end18:                                         ; preds = %do.end15, %do.body11.do.end18_crit_edge
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf, align 4
  %sglen.i = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sglen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.end18.cx25821_alsa_dma_unmap.exit_crit_edge, label %if.end.i

do.end18.cx25821_alsa_dma_unmap.exit_crit_edge:   ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx25821_alsa_dma_unmap.exit

if.end.i:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  %pci.i = getelementptr inbounds %struct.cx25821_audio_dev, ptr %chip, i32 0, i32 2
  %11 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pci.i, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %sglist.i = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %sglist.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sglist.i, align 4
  %nr_pages.i = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %8, i32 0, i32 5
  %15 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_pages.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev2.i, ptr noundef %14, i32 noundef %16, i32 noundef 2, i32 noundef 0) #9
  %17 = ptrtoint ptr %sglen.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sglen.i, align 4
  br label %cx25821_alsa_dma_unmap.exit

cx25821_alsa_dma_unmap.exit:                      ; preds = %if.end.i, %do.end18.cx25821_alsa_dma_unmap.exit_crit_edge
  %risc1 = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf, align 4
  %sglist.i1 = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %sglist.i1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sglist.i1, align 4
  tail call void @vfree(ptr noundef %21) #9
  %22 = ptrtoint ptr %sglist.i1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %sglist.i1, align 4
  %vaddr.i = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %19, i32 0, i32 2
  %23 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vaddr.i, align 4
  tail call void @vfree(ptr noundef %24) #9
  %25 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %vaddr.i, align 4
  %pci = getelementptr inbounds %struct.cx25821_audio_dev, ptr %chip, i32 0, i32 2
  %26 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %risc1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %risc1, align 4
  %cpu = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %1, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cpu, align 4
  %dma = getelementptr inbounds %struct.cx25821_audio_buffer, ptr %1, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev22, i32 noundef %29, ptr noundef %31, i32 noundef %33, i32 noundef 0) #9
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %35) #9
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %buf, align 4
  %37 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %dma_size, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx25821_risc_databuffer_audio(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_32(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx25821_set_gpiopin_direction(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx25821_sram_channel_setup_audio(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25821_alsa_exit_callback(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %card = getelementptr inbounds %struct.cx25821_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call2 = tail call i32 @snd_card_free(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !64, !65, !66, !68, !70, !72, !73, !74, !76, !77, !78, !80, !82, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !134, !135, !136, !138, !140, !141, !142, !143, !145, !146, !147, !149, !151, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173, !175, !176, !177}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @__param_enable, !1, !"__param_enable", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 94, i32 1}
!2 = !{ptr @__UNIQUE_ID_enabletype306, !1, !"__UNIQUE_ID_enabletype306", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_enable307, !4, !"__UNIQUE_ID_enable307", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 95, i32 1}
!5 = !{ptr @__param_index, !6, !"__param_index", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 97, i32 1}
!7 = !{ptr @__UNIQUE_ID_indextype308, !6, !"__UNIQUE_ID_indextype308", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_index309, !9, !"__UNIQUE_ID_index309", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 98, i32 1}
!10 = !{ptr @__UNIQUE_ID_description310, !11, !"__UNIQUE_ID_description310", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 104, i32 1}
!12 = !{ptr @__UNIQUE_ID_author311, !13, !"__UNIQUE_ID_author311", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 105, i32 1}
!14 = !{ptr @__UNIQUE_ID_file312, !15, !"__UNIQUE_ID_file312", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 106, i32 1}
!16 = !{ptr @__UNIQUE_ID_license313, !15, !"__UNIQUE_ID_license313", i1 false, i1 false}
!17 = !{ptr @__param_debug, !18, !"__param_debug", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 109, i32 1}
!19 = !{ptr @__UNIQUE_ID_debugtype314, !18, !"__UNIQUE_ID_debugtype314", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_debug315, !21, !"__UNIQUE_ID_debug315", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 110, i32 1}
!22 = !{ptr @__initcall__kmod_cx25821_alsa__316_818_cx25821_alsa_init7, !23, !"__initcall__kmod_cx25821_alsa__316_818_cx25821_alsa_init7", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 818, i32 1}
!24 = !{ptr @__exitcall_cx25821_audio_fini, !25, !"__exitcall_cx25821_audio_fini", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 819, i32 1}
!26 = !{ptr @debug, !27, !"debug", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 108, i32 21}
!28 = !{ptr @__param_str_enable, !1, !"__param_str_enable", i1 false, i1 false}
!29 = !{ptr @__param_arr_enable, !1, !"__param_arr_enable", i1 false, i1 false}
!30 = !{ptr @enable, !31, !"enable", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 92, i32 13}
!32 = !{ptr @__param_str_index, !6, !"__param_str_index", i1 false, i1 false}
!33 = !{ptr @__param_arr_index, !6, !"__param_arr_index", i1 false, i1 false}
!34 = !{ptr @index, !35, !"index", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 90, i32 12}
!36 = !{ptr @__param_str_debug, !18, !"__param_str_debug", i1 false, i1 false}
!37 = !{ptr @.str, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 812, i32 42}
!39 = !{ptr @.str.1, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 699, i32 3}
!41 = !{ptr @.str.2, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cx25821_audio_initdev._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @cx25821_audio_initdev._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 705, i32 3}
!47 = !{ptr @cx25821_audio_initdev._entry.4, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @cx25821_audio_initdev._entry_ptr.6, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 713, i32 3}
!51 = !{ptr @cx25821_audio_initdev._entry.7, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @cx25821_audio_initdev._entry_ptr.9, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @cx25821_audio_initdev.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 722, i32 2}
!55 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 735, i32 3}
!58 = !{ptr @cx25821_audio_initdev._entry.11, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @cx25821_audio_initdev._entry_ptr.13, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 740, i32 33}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 742, i32 3}
!64 = !{ptr @cx25821_audio_initdev._entry.15, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @cx25821_audio_initdev._entry_ptr.17, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 748, i32 26}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 750, i32 27}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 752, i32 2}
!72 = !{ptr @cx25821_audio_initdev._entry.20, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @cx25821_audio_initdev._entry_ptr.22, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 757, i32 3}
!76 = !{ptr @cx25821_audio_initdev._entry.23, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @cx25821_audio_initdev._entry_ptr.25, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @devno, !79, !"devno", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 49, i32 12}
!80 = distinct !{null, !81, !"id", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 91, i32 14}
!82 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 322, i32 36}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 327, i32 3}
!86 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @cx25821_aud_irq._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @cx25821_aud_irq._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 335, i32 3}
!91 = !{ptr @cx25821_aud_irq._entry.29, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @cx25821_aud_irq._entry_ptr.31, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 297, i32 2}
!95 = !{ptr @.str.33, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 297, i32 15}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 297, i32 28}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 299, i32 2}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 299, i32 15}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 299, i32 28}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 301, i32 2}
!107 = !{ptr @.str.39, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 301, i32 12}
!109 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 301, i32 22}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 303, i32 2}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 303, i32 13}
!115 = !{ptr @.str.43, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 303, i32 24}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 305, i32 2}
!119 = !{ptr @.str.45, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 305, i32 13}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 305, i32 24}
!123 = !{ptr @.str.47, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 306, i32 2}
!125 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 306, i32 15}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 306, i32 26}
!129 = !{ptr @cx25821_aud_irqs, !130, !"cx25821_aud_irqs", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 296, i32 14}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 662, i32 3}
!133 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @snd_cx25821_pcm._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @snd_cx25821_pcm._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @snd_cx25821_pcm_ops, !137, !"snd_cx25821_pcm_ops", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 639, i32 33}
!138 = !{ptr @.str.53, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 453, i32 3}
!140 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @snd_cx25821_pcm_open._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @snd_cx25821_pcm_open._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.56, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 481, i32 2}
!145 = !{ptr @snd_cx25821_pcm_open._entry.55, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @snd_cx25821_pcm_open._entry_ptr.57, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @snd_cx25821_digital_hw, !148, !"snd_cx25821_digital_hw", i1 false, i1 false}
!148 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 422, i32 38}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 537, i32 3}
!151 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @snd_cx25821_hw_params._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @snd_cx25821_hw_params._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.60, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 402, i32 2}
!156 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @dsp_buffer_free._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @dsp_buffer_free._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.62, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 142, i32 3}
!161 = !{ptr @.str.63, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @cx25821_alsa_dma_init._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @cx25821_alsa_dma_init._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.65, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 146, i32 2}
!166 = !{ptr @cx25821_alsa_dma_init._entry.64, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @cx25821_alsa_dma_init._entry_ptr.66, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.67, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 183, i32 3}
!170 = !{ptr @.str.68, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @cx25821_alsa_dma_map._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @cx25821_alsa_dma_map._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.69, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/pci/cx25821/cx25821-alsa.c", i32 791, i32 3}
!175 = !{ptr @.str.70, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @cx25821_audio_fini._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @cx25821_audio_fini._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{!"auto-init"}
!188 = !{i8 0, i8 2}
!189 = !{i64 4877786}
!190 = !{i64 2157058934}
!191 = !{i64 2157059521}
!192 = !{i64 2157060108}
!193 = !{i64 2157060695}
!194 = !{i64 2157061282}
!195 = !{i64 2157061869}
!196 = !{i64 2157062456}
!197 = !{i64 2157062756}
!198 = !{i64 4877368}
!199 = !{i64 2157063265}
!200 = !{i64 2157064061}
!201 = !{i64 2157064369}
!202 = !{i64 2157050327}
!203 = !{i64 2157054199}
!204 = !{i64 2157055324}
!205 = !{i64 2157057550}
!206 = !{i64 2157058347}
!207 = !{!"branch_weights", i32 1, i32 2000}
!208 = !{i64 2157072795, i64 2157073300, i64 2157072832, i64 2157072888, i64 2157072922, i64 2157072946, i64 2157072987, i64 2157073008, i64 2157073036, i64 2157073070}
!209 = !{i32 0, i32 33}
!210 = !{!"branch_weights", i32 2000, i32 1}
!211 = !{i64 2157074500, i64 2157075005, i64 2157074537, i64 2157074593, i64 2157074627, i64 2157074651, i64 2157074692, i64 2157074713, i64 2157074741, i64 2157074775}
!212 = !{i64 2154072845, i64 2154073337, i64 2154072882, i64 2154072938, i64 2154072972, i64 2154072996, i64 2154073037, i64 2154073058, i64 2154073086, i64 2154073120}
!213 = !{i64 2154074455, i64 2154074947, i64 2154074492, i64 2154074548, i64 2154074582, i64 2154074606, i64 2154074647, i64 2154074668, i64 2154074696, i64 2154074730}
!214 = !{i64 2157025300}
!215 = !{i64 2157026425}
!216 = !{i64 2157026823}
!217 = !{i64 2157027336}
!218 = !{i64 2157028123}
!219 = !{i64 2157028528}
!220 = !{i64 2157029275}
!221 = !{i64 2157029905}
!222 = !{i64 2157031645}
!223 = !{i64 2157032888}
!224 = !{i64 2157033628}
!225 = !{i64 2157035239}
!226 = !{i64 2157036524}
!227 = !{i64 2157043454}
!228 = !{i64 2157044579}
!229 = !{i64 2157045978}
!230 = !{i64 2157047047}
!231 = !{i64 2157048628}
!232 = !{i64 2157049841}
!233 = !{i64 2157065013, i64 2157065518, i64 2157065050, i64 2157065106, i64 2157065140, i64 2157065164, i64 2157065205, i64 2157065226, i64 2157065254, i64 2157065288}
