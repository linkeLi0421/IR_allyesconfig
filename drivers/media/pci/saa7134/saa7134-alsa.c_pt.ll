; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7134/saa7134-alsa.c_pt.bc'
source_filename = "../drivers/media/pci/saa7134/saa7134-alsa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.saa7134_board = type { ptr, i32, i32, [8 x %struct.saa7134_input], %struct.saa7134_input, %struct.saa7134_input, i32, i32, i8, i8, i8, i8, i32, %struct.tda829x_config, i32, i32, i32, i32, i8 }
%struct.saa7134_input = type { i32, i32, i32, i32 }
%struct.tda829x_config = type { i32, i8, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.176, i32 }
%union.anon.176 = type { ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7134_dev = type { %struct.list_head, %struct.mutex, %struct.spinlock, %struct.v4l2_device, %struct.work_struct, i32, i32, ptr, ptr, ptr, %struct.saa7134_dmasound, i32, ptr, [32 x i8], i32, ptr, i8, i8, ptr, ptr, i32, i32, i32, i8, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, [256 x i8], i32, %struct.v4l2_framebuffer, ptr, i32, i32, %struct.v4l2_window, [8 x %struct.v4l2_clip], i32, ptr, %struct.saa7134_dmaqueue, %struct.vb2_queue, %struct.saa7134_dmaqueue, %struct.vb2_queue, i32, ptr, i32, i32, i32, i32, %struct.pm_qos_request, %struct.saa7134_ts, %struct.saa7134_dmaqueue, i32, i32, ptr, ptr, ptr, %struct.vb2_queue, %struct.work_struct, i32, %struct.v4l2_ctrl_handler, ptr, ptr, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, %struct.saa7134_thread, ptr, ptr, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, %struct.IR_i2c_init_data, ptr, [9 x %struct.media_entity], [9 x %struct.media_pad], %struct.media_entity, [2 x %struct.media_pad], %struct.media_pad, %struct.media_pad, ptr, %struct.vb2_dvb_frontends, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.saa7134_dmasound = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.saa7134_pgtable, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr }
%struct.saa7134_pgtable = type { i32, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.143 }
%struct.anon.143 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.saa7134_ts = type { i32, i32 }
%struct.saa7134_dmaqueue = type { ptr, ptr, %struct.list_head, %struct.timer_list, i32, i32, %struct.saa7134_pgtable }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.saa7134_thread = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.128 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.172, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.172 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_card_saa7134 = type { ptr, %struct.spinlock, [3 x [2 x i32]], i32, [2 x i32], [3 x ptr], ptr, ptr, i32, i16, i16, %struct.spinlock }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
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
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.161, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.161 = type { %struct.anon.164, [40 x i8] }
%struct.anon.164 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.170, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.170 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.165, [128 x i8] }
%union.anon.165 = type { %union.anon.167 }
%union.anon.167 = type { [64 x i64] }
%struct.snd_card_saa7134_pcm = type { ptr, %struct.spinlock, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__param_str_index = internal constant [19 x i8] c"saa7134_alsa.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype391 = internal constant [41 x i8] c"saa7134_alsa.parmtype=index:array of int\00", section ".modinfo", align 1
@__param_str_enable = internal constant [20 x i8] c"saa7134_alsa.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype392 = internal constant [42 x i8] c"saa7134_alsa.parmtype=enable:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index393 = internal constant [70 x i8] c"saa7134_alsa.parm=index:Index value for SAA7134 capture interface(s).\00", section ".modinfo", align 1
@__UNIQUE_ID_enable394 = internal constant [75 x i8] c"saa7134_alsa.parm=enable:Enable (or not) the SAA7134 capture interface(s).\00", section ".modinfo", align 1
@__initcall__kmod_saa7134_alsa__404_1260_saa7134_alsa_init7 = internal global ptr @saa7134_alsa_init, section ".initcall7.init", align 4
@__exitcall_saa7134_alsa_exit = internal global ptr @saa7134_alsa_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file405 = internal constant [57 x i8] c"saa7134_alsa.file=drivers/media/pci/saa7134/saa7134-alsa\00", section ".modinfo", align 1
@__UNIQUE_ID_license406 = internal constant [25 x i8] c"saa7134_alsa.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author407 = internal constant [38 x i8] c"saa7134_alsa.author=Ricardo Cerqueira\00", section ".modinfo", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@enable = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], [32 x i8] zeroinitializer }, align 32
@saa7134_dmasound_init = external dso_local local_unnamed_addr global ptr, align 4
@saa7134_dmasound_exit = external dso_local local_unnamed_addr global ptr, align 4
@saa7134_alsa_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016saa7134_alsa: saa7134 ALSA driver for DMA sound loaded\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"saa7134_alsa_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/saa7134/saa7134-alsa.c\00", [55 x i8] zeroinitializer }, align 32
@saa7134_alsa_init._entry_ptr = internal global ptr @saa7134_alsa_init._entry, section ".printk_index", align 4
@saa7134_devlist = external dso_local global %struct.list_head, align 4
@saa7134_alsa_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016saa7134_alsa: %s/alsa: %s doesn't support digital audio\0A\00", [37 x i8] zeroinitializer }, align 32
@saa7134_alsa_init._entry_ptr.5 = internal global ptr @saa7134_alsa_init._entry.3, section ".printk_index", align 4
@saa7134_boards = external dso_local local_unnamed_addr global [0 x %struct.saa7134_board], align 4
@saa7134_alsa_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016saa7134_alsa: saa7134 ALSA: no saa7134 cards found\0A\00", [42 x i8] zeroinitializer }, align 32
@saa7134_alsa_init._entry_ptr.8 = internal global ptr @saa7134_alsa_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SAA7134\00", [24 x i8] zeroinitializer }, align 32
@alsa_card_saa7134_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@alsa_card_saa7134_create.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip->mixer_lock\00", [46 x i8] zeroinitializer }, align 32
@alsa_card_saa7134_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 1156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013saa7134_alsa: %s: can't get IRQ %d for ALSA\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"alsa_card_saa7134_create\00", [39 x i8] zeroinitializer }, align 32
@alsa_card_saa7134_create._entry_ptr = internal global ptr @alsa_card_saa7134_create._entry, section ".printk_index", align 4
@alsa_card_saa7134_create.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->dmasound.lock\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s at 0x%lx irq %d\00", [45 x i8] zeroinitializer }, align 32
@alsa_card_saa7134_create._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 1177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016saa7134_alsa: %s/alsa: %s registered as card %d\0A\00", [45 x i8] zeroinitializer }, align 32
@alsa_card_saa7134_create._entry_ptr.20 = internal global ptr @alsa_card_saa7134_create._entry.18, section ".printk_index", align 4
@snd_saa7134_cards = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@saa7134_alsa_irq.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"saa7134_alsa\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa7134_alsa_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"error! looping IRQ!\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"saa7134_alsa: error! looping IRQ!\00", [62 x i8] zeroinitializer }, align 32
@saa7134_irq_alsa_done.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa7134_irq_alsa_done\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"irq: recording stopped\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"saa7134_alsa: irq: recording stopped\0A\00", [58 x i8] zeroinitializer }, align 32
@saa7134_irq_alsa_done.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"irq: lost %ld\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"saa7134_alsa: irq: lost %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@saa7134_irq_alsa_done.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.25, ptr @.str.2, ptr @.str.30, i8 0, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irq: field oops [%s]\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"saa7134_alsa: irq: field oops [%s]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"even\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"odd\00", [28 x i8] zeroinitializer }, align 32
@saa7134_irq_alsa_done.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.25, ptr @.str.2, ptr @.str.34, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"irq: overrun [full=%d/%d] - Blocks in %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"saa7134_alsa: irq: overrun [full=%d/%d] - Blocks in %d\0A\00", [40 x i8] zeroinitializer }, align 32
@saa7134_irq_alsa_done.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.25, ptr @.str.2, ptr @.str.36, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"irq: ok, %s, next_blk=%d, addr=%x, blocks=%u, size=%u, read=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"saa7134_alsa: irq: ok, %s, next_blk=%d, addr=%x, blocks=%u, size=%u, read=%u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"odd \00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SAA7134 Mixer\00", [18 x i8] zeroinitializer }, align 32
@snd_saa7134_volume_controls = internal global { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_saa7134_volume_info, ptr @snd_saa7134_volume_get, ptr @snd_saa7134_volume_put, %union.anon.176 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 1, i32 0, i32 0, ptr @snd_saa7134_volume_info, ptr @snd_saa7134_volume_get, ptr @snd_saa7134_volume_put, %union.anon.176 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 2, i32 0, i32 0, ptr @snd_saa7134_volume_info, ptr @snd_saa7134_volume_get, ptr @snd_saa7134_volume_put, %union.anon.176 zeroinitializer, i32 2 }], [48 x i8] zeroinitializer }, align 32
@snd_saa7134_capture_controls = internal global { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_saa7134_capsrc_info, ptr @snd_saa7134_capsrc_get, ptr @snd_saa7134_capsrc_put, %union.anon.176 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 1, i32 0, i32 0, ptr @snd_saa7134_capsrc_info, ptr @snd_saa7134_capsrc_get, ptr @snd_saa7134_capsrc_put, %union.anon.176 zeroinitializer, i32 1 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 2, i32 0, i32 0, ptr @snd_saa7134_capsrc_info, ptr @snd_saa7134_capsrc_get, ptr @snd_saa7134_capsrc_put, %union.anon.176 zeroinitializer, i32 2 }], [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Video Volume\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line Volume\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Video Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SAA7134 PCM\00", [20 x i8] zeroinitializer }, align 32
@snd_card_saa7134_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_card_saa7134_capture_open, ptr @snd_card_saa7134_capture_close, ptr null, ptr @snd_card_saa7134_hw_params, ptr @snd_card_saa7134_hw_free, ptr @snd_card_saa7134_capture_prepare, ptr @snd_card_saa7134_capture_trigger, ptr null, ptr @snd_card_saa7134_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr @snd_card_saa7134_page, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_card_saa7134_capture_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013saa7134_alsa: BUG: saa7134 can't find device struct. Can't proceed with open\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_card_saa7134_capture_open\00", [34 x i8] zeroinitializer }, align 32
@snd_card_saa7134_capture_open._entry_ptr = internal global ptr @snd_card_saa7134_capture_open._entry, section ".printk_index", align 4
@snd_card_saa7134_capture_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pcm->lock\00", [21 x i8] zeroinitializer }, align 32
@snd_card_saa7134_capture = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 63, i32 32, i32 32000, i32 32000, i32 1, i32 2, i32 262144, i32 64, i32 262144, i32 4, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@saa7134_alsa_dma_init.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"saa7134_alsa_dma_init\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vmalloc_32(%lu pages) failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"saa7134_alsa: vmalloc_32(%lu pages) failed\0A\00", [52 x i8] zeroinitializer }, align 32
@saa7134_alsa_dma_init.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.48, ptr @.str.2, ptr @.str.51, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"vmalloc is at addr %p, size=%lu\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"saa7134_alsa: vmalloc is at addr %p, size=%lu\0A\00", [49 x i8] zeroinitializer }, align 32
@saa7134_alsa_dma_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014saa7134_alsa: %s: saa7134_alsa_map_sg failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"saa7134_alsa_dma_map\00", [43 x i8] zeroinitializer }, align 32
@saa7134_alsa_dma_map._entry_ptr = internal global ptr @saa7134_alsa_dma_map._entry, section ".printk_index", align 4
@snd_card_saa7134_capture_prepare.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"snd_card_saa7134_capture_prepare\00", [63 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"rec_start: afmt=%d ch=%d  =>  fmt=0x%x swap=%c\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"saa7134_alsa: rec_start: afmt=%d ch=%d  =>  fmt=0x%x swap=%c\0A\00", [34 x i8] zeroinitializer }, align 32
@saa7134_alsa_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 1254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016saa7134_alsa: saa7134 ALSA driver for DMA sound unloaded\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"saa7134_alsa_exit\00", [46 x i8] zeroinitializer }, align 32
@saa7134_alsa_exit._entry_ptr = internal global ptr @saa7134_alsa_exit._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 28979, i64 28980, i64 28981]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 16, i64 28979, i64 28980, i64 28981]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 16, i64 28979, i64 28980, i64 28981]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 34, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 36, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1222, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1226, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1233, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1132, i32 24 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1139, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1140, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1155, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1162, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1173, i32 26 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1176, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"snd_saa7134_cards\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 77, i32 25 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 215, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 130, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 134, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 145, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 151, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 162, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1068, i32 27 }
@___asan_gen_.196 = private unnamed_addr constant [28 x i8] c"snd_saa7134_volume_controls\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1041, i32 32 }
@___asan_gen_.199 = private unnamed_addr constant [29 x i8] c"snd_saa7134_capture_controls\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1047, i32 32 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1042, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1043, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1048, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1049, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 890, i32 40 }
@___asan_gen_.217 = private unnamed_addr constant [29 x i8] c"snd_card_saa7134_capture_ops\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 866, i32 33 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 803, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 825, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [25 x i8] c"snd_card_saa7134_capture\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 621, i32 38 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 264, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 268, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 304, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 554, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.278 = private constant [44 x i8] c"../drivers/media/pci/saa7134/saa7134-alsa.c\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1254, i32 2 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author407, ptr @__UNIQUE_ID_enable394, ptr @__UNIQUE_ID_enabletype392, ptr @__UNIQUE_ID_file405, ptr @__UNIQUE_ID_index393, ptr @__UNIQUE_ID_indextype391, ptr @__UNIQUE_ID_license406, ptr @__exitcall_saa7134_alsa_exit, ptr @__initcall__kmod_saa7134_alsa__404_1260_saa7134_alsa_init7, ptr @__param_enable, ptr @__param_index, ptr @alsa_card_saa7134_create._entry, ptr @alsa_card_saa7134_create._entry.18, ptr @alsa_card_saa7134_create._entry_ptr, ptr @alsa_card_saa7134_create._entry_ptr.20, ptr @saa7134_alsa_dma_map._entry, ptr @saa7134_alsa_dma_map._entry_ptr, ptr @saa7134_alsa_exit._entry, ptr @saa7134_alsa_exit._entry_ptr, ptr @saa7134_alsa_init._entry, ptr @saa7134_alsa_init._entry.3, ptr @saa7134_alsa_init._entry.6, ptr @saa7134_alsa_init._entry_ptr, ptr @saa7134_alsa_init._entry_ptr.5, ptr @saa7134_alsa_init._entry_ptr.8, ptr @snd_card_saa7134_capture_open._entry, ptr @snd_card_saa7134_capture_open._entry_ptr, ptr @index, ptr @enable, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @alsa_card_saa7134_create.__key, ptr @.str.10, ptr @alsa_card_saa7134_create.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @alsa_card_saa7134_create.__key.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @snd_saa7134_cards, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @snd_saa7134_volume_controls, ptr @snd_saa7134_capture_controls, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @snd_card_saa7134_capture_ops, ptr @.str.45, ptr @.str.46, ptr @snd_card_saa7134_capture_open.__key, ptr @.str.47, ptr @snd_card_saa7134_capture, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_alsa_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_alsa_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_alsa_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alsa_card_saa7134_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alsa_card_saa7134_create.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alsa_card_saa7134_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alsa_card_saa7134_create.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alsa_card_saa7134_create._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_saa7134_cards to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_saa7134_volume_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_saa7134_capture_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_card_saa7134_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_card_saa7134_capture_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_card_saa7134_capture_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_card_saa7134_capture to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_alsa_dma_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_alsa_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7134_alsa_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @saa7134_dmasound_init to i32))
  store ptr @alsa_device_init, ptr @saa7134_dmasound_init, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @saa7134_dmasound_exit to i32))
  store ptr @alsa_device_exit, ptr @saa7134_dmasound_exit, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @saa7134_devlist to i32))
  %dev.030 = load ptr, ptr @saa7134_devlist, align 4
  %cmp.not31 = icmp eq ptr %dev.030, @saa7134_devlist
  br i1 %cmp.not31, label %entry.if.end23_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %dev.032 = phi ptr [ %dev.0, %for.inc.for.body_crit_edge ], [ %dev.030, %entry.for.body_crit_edge ]
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev.032, i32 0, i32 15
  %0 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28976, i16 %3)
  %cmp2 = icmp eq i16 %3, 28976
  br i1 %cmp2, label %do.end6, label %if.else

do.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.saa7134_dev, ptr %dev.032, i32 0, i32 13
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %dev.032, i32 0, i32 20
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %board, align 4
  %arrayidx = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name, ptr noundef %7) #13
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = tail call i32 @alsa_device_init(ptr noundef %dev.032)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %do.end6
  %8 = ptrtoint ptr %dev.032 to i32
  call void @__asan_load4_noabort(i32 %8)
  %dev.0 = load ptr, ptr %dev.032, align 4
  %cmp.not = icmp eq ptr %dev.0, @saa7134_devlist
  br i1 %cmp.not, label %for.inc.if.end23_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end23_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end23:                                         ; preds = %for.inc.if.end23_crit_edge, %entry.if.end23_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @saa7134_alsa_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %idx.06 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x ptr], ptr @snd_saa7134_cards, i32 0, i32 %idx.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @snd_card_free(ptr noundef nonnull %1) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.06, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @saa7134_dmasound_init to i32))
  store ptr null, ptr @saa7134_dmasound_init, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @saa7134_dmasound_exit to i32))
  store ptr null, ptr @saa7134_dmasound_exit, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_device_init(ptr noundef %dev) #0 align 64 {
entry:
  %pcm.i.i = alloca ptr, align 4
  %card.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 24
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %priv_data, align 8
  %nr = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 14
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card.i) #10
  %3 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %card.i, align 4, !annotation !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %2)
  %cmp.i = icmp sgt i32 %2, 31
  br i1 %cmp.i, label %entry.alsa_card_saa7134_create.exit_crit_edge, label %if.end.i

entry.alsa_card_saa7134_create.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %alsa_card_saa7134_create.exit

if.end.i:                                         ; preds = %entry
  %arrayidx.i = getelementptr [32 x i32], ptr @enable, i32 0, i32 %2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i.alsa_card_saa7134_create.exit_crit_edge, label %if.end2.i

if.end.i.alsa_card_saa7134_create.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alsa_card_saa7134_create.exit

if.end2.i:                                        ; preds = %if.end.i
  %pci.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %6 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci.i, align 4
  %dev3.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %arrayidx4.i = getelementptr [32 x i32], ptr @index, i32 0, i32 %2
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %call.i = call i32 @snd_card_new(ptr noundef %dev3.i, i32 noundef %9, ptr noundef null, ptr noundef null, i32 noundef 156, ptr noundef nonnull %card.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp slt i32 %call.i, 0
  br i1 %cmp6.i, label %if.end2.i.alsa_card_saa7134_create.exit_crit_edge, label %if.end8.i

if.end2.i.alsa_card_saa7134_create.exit_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alsa_card_saa7134_create.exit

if.end8.i:                                        ; preds = %if.end2.i
  %10 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card.i, align 4
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 2
  %call9.i = call i32 @strscpy(ptr noundef %driver.i, ptr noundef nonnull @.str.9, i32 noundef 16) #10
  %12 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 10
  %14 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @snd_saa7134_free, ptr %private_free.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 9
  %15 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data.i, align 8
  %lock.i = getelementptr inbounds %struct.snd_card_saa7134, ptr %16, i32 0, i32 11
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @alsa_card_saa7134_create.__key, i16 noundef signext 3) #10
  %mixer_lock.i = getelementptr inbounds %struct.snd_card_saa7134, ptr %16, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %mixer_lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @alsa_card_saa7134_create.__key.11, i16 noundef signext 3) #10
  %dev15.i = getelementptr inbounds %struct.snd_card_saa7134, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %dev15.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %dev15.i, align 4
  %18 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %16, align 4
  %21 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci.i, align 4
  %pci18.i = getelementptr inbounds %struct.snd_card_saa7134, ptr %16, i32 0, i32 6
  %23 = ptrtoint ptr %pci18.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %pci18.i, align 4
  %24 = load ptr, ptr %pci.i, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 47
  %25 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resource.i, align 8
  %iobase.i = getelementptr inbounds %struct.snd_card_saa7134, ptr %16, i32 0, i32 8
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %iobase.i, align 4
  %28 = load ptr, ptr %pci.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 46
  %29 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq.i, align 4
  %name.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %dmasound.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10
  %call.i.i = call i32 @request_threaded_irq(i32 noundef %30, ptr noundef nonnull @saa7134_alsa_irq, ptr noundef null, i32 noundef 128, ptr noundef %name.i, ptr noundef %dmasound.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp24.i = icmp slt i32 %call.i.i, 0
  %31 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci.i, align 4
  %irq32.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 46
  %33 = ptrtoint ptr %irq32.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq32.i, align 4
  br i1 %cmp24.i, label %do.end28.i, label %if.end34.i

do.end28.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i, i32 noundef %34) #13
  br label %__nodev.i

if.end34.i:                                       ; preds = %if.end8.i
  %conv.i = trunc i32 %34 to i16
  %irq37.i = getelementptr inbounds %struct.snd_card_saa7134, ptr %16, i32 0, i32 9
  %35 = ptrtoint ptr %irq37.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %irq37.i, align 4
  call void @__mutex_init(ptr noundef %dmasound.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @alsa_card_saa7134_create.__key.15) #10
  %36 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %16, align 4
  %mixername.i.i = getelementptr inbounds %struct.snd_card, ptr %37, i32 0, i32 6
  %call.i1.i = call i32 @strscpy(ptr noundef %mixername.i.i, ptr noundef nonnull @.str.39, i32 noundef 80) #10
  %call2.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_saa7134_volume_controls, ptr noundef %16) #10
  %call3.i.i = call i32 @snd_ctl_add(ptr noundef %37, ptr noundef %call2.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end34.i.__nodev.i_crit_edge, label %for.cond.i.i

if.end34.i.__nodev.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__nodev.i

for.cond.i.i:                                     ; preds = %if.end34.i
  %call2.1.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_saa7134_volume_controls, i32 0, i32 1), ptr noundef %16) #10
  %call3.1.i.i = call i32 @snd_ctl_add(ptr noundef %37, ptr noundef %call2.1.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1.i.i)
  %cmp4.1.i.i = icmp slt i32 %call3.1.i.i, 0
  br i1 %cmp4.1.i.i, label %for.cond.i.i.__nodev.i_crit_edge, label %for.cond.1.i.i

for.cond.i.i.__nodev.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__nodev.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call2.2.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_saa7134_volume_controls, i32 0, i32 2), ptr noundef %16) #10
  %call3.2.i.i = call i32 @snd_ctl_add(ptr noundef %37, ptr noundef %call2.2.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2.i.i)
  %cmp4.2.i.i = icmp slt i32 %call3.2.i.i, 0
  br i1 %cmp4.2.i.i, label %for.cond.1.i.i.__nodev.i_crit_edge, label %for.cond.2.i.i

for.cond.1.i.i.__nodev.i_crit_edge:               ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__nodev.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %call9.i.i = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_saa7134_capture_controls, ptr noundef %16) #10
  %38 = load i32, ptr getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_saa7134_capture_controls, i32 0, i32 0, i32 11), align 4
  %arrayidx11.i.i = getelementptr %struct.snd_card_saa7134, ptr %16, i32 0, i32 5, i32 %38
  %39 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call9.i.i, ptr %arrayidx11.i.i, align 4
  %call12.i.i = call i32 @snd_ctl_add(ptr noundef %37, ptr noundef %call9.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %for.cond.2.i.i.__nodev.i_crit_edge, label %for.cond5.i.i

for.cond.2.i.i.__nodev.i_crit_edge:               ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__nodev.i

for.cond5.i.i:                                    ; preds = %for.cond.2.i.i
  %call9.1.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_saa7134_capture_controls, i32 0, i32 1), ptr noundef %16) #10
  %40 = load i32, ptr getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_saa7134_capture_controls, i32 0, i32 1, i32 11), align 4
  %arrayidx11.1.i.i = getelementptr %struct.snd_card_saa7134, ptr %16, i32 0, i32 5, i32 %40
  %41 = ptrtoint ptr %arrayidx11.1.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call9.1.i.i, ptr %arrayidx11.1.i.i, align 4
  %call12.1.i.i = call i32 @snd_ctl_add(ptr noundef %37, ptr noundef %call9.1.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1.i.i)
  %cmp13.1.i.i = icmp slt i32 %call12.1.i.i, 0
  br i1 %cmp13.1.i.i, label %for.cond5.i.i.__nodev.i_crit_edge, label %for.cond5.1.i.i

for.cond5.i.i.__nodev.i_crit_edge:                ; preds = %for.cond5.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__nodev.i

for.cond5.1.i.i:                                  ; preds = %for.cond5.i.i
  %call9.2.i.i = call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_saa7134_capture_controls, i32 0, i32 2), ptr noundef %16) #10
  %42 = load i32, ptr getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @snd_saa7134_capture_controls, i32 0, i32 2, i32 11), align 4
  %arrayidx11.2.i.i = getelementptr %struct.snd_card_saa7134, ptr %16, i32 0, i32 5, i32 %42
  %43 = ptrtoint ptr %arrayidx11.2.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call9.2.i.i, ptr %arrayidx11.2.i.i, align 4
  %call12.2.i.i = call i32 @snd_ctl_add(ptr noundef %37, ptr noundef %call9.2.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2.i.i)
  %cmp13.2.i.i = icmp slt i32 %call12.2.i.i, 0
  br i1 %cmp13.2.i.i, label %for.cond5.1.i.i.__nodev.i_crit_edge, label %if.end47.i

for.cond5.1.i.i.__nodev.i_crit_edge:              ; preds = %for.cond5.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__nodev.i

if.end47.i:                                       ; preds = %for.cond5.1.i.i
  %capture_source_addr.i.i = getelementptr inbounds %struct.snd_card_saa7134, ptr %16, i32 0, i32 3
  %44 = ptrtoint ptr %capture_source_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %capture_source_addr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i.i) #10
  %45 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i.i, align 4, !annotation !158
  %46 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %16, align 4
  %call.i2.i = call i32 @snd_pcm_new(ptr noundef %47, ptr noundef nonnull @.str.44, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %pcm.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %cmp.i.i = icmp slt i32 %call.i2.i, 0
  br i1 %cmp.i.i, label %snd_card_saa7134_pcm.exit.thread.i, label %if.end52.i

snd_card_saa7134_pcm.exit.thread.i:               ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #10
  br label %__nodev.i

if.end52.i:                                       ; preds = %if.end47.i
  %48 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcm.i.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %49, i32 noundef 1, ptr noundef nonnull @snd_card_saa7134_capture_ops) #10
  %50 = ptrtoint ptr %pcm.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcm.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %16, ptr %private_data.i.i, align 8
  %info_flags.i.i = getelementptr inbounds %struct.snd_pcm, ptr %51, i32 0, i32 3
  %53 = ptrtoint ptr %info_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %info_flags.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.snd_pcm, ptr %51, i32 0, i32 7
  %call1.i.i = call i32 @strscpy(ptr noundef %name.i.i, ptr noundef nonnull @.str.44, i32 noundef 80) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i.i) #10
  %54 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card.i, align 4
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %55, i32 0, i32 3
  %call54.i = call i32 @strscpy(ptr noundef %shortname.i, ptr noundef nonnull @.str.9, i32 noundef 32) #10
  %56 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card.i, align 4
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %dev15.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev15.i, align 4
  %name57.i = getelementptr inbounds %struct.saa7134_dev, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iobase.i, align 4
  %62 = ptrtoint ptr %irq37.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %irq37.i, align 4
  %conv61.i = sext i16 %63 to i32
  %call62.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname.i, ptr noundef nonnull @.str.17, ptr noundef %name57.i, i32 noundef %61, i32 noundef %conv61.i) #10
  %64 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %card.i, align 4
  %longname69.i = getelementptr inbounds %struct.snd_card, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx4.i, align 4
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, ptr noundef %longname69.i, i32 noundef %67) #13
  %68 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %card.i, align 4
  %call73.i = call i32 @snd_card_register(ptr noundef %69) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %cmp74.i = icmp eq i32 %call73.i, 0
  br i1 %cmp74.i, label %if.then76.i, label %if.end52.i.__nodev.i_crit_edge

if.end52.i.__nodev.i_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__nodev.i

if.then76.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card.i, align 4
  %arrayidx77.i = getelementptr [32 x ptr], ptr @snd_saa7134_cards, i32 0, i32 %2
  %72 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %arrayidx77.i, align 4
  br label %alsa_card_saa7134_create.exit

__nodev.i:                                        ; preds = %if.end52.i.__nodev.i_crit_edge, %snd_card_saa7134_pcm.exit.thread.i, %for.cond5.1.i.i.__nodev.i_crit_edge, %for.cond5.i.i.__nodev.i_crit_edge, %for.cond.2.i.i.__nodev.i_crit_edge, %for.cond.1.i.i.__nodev.i_crit_edge, %for.cond.i.i.__nodev.i_crit_edge, %if.end34.i.__nodev.i_crit_edge, %do.end28.i
  %73 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %card.i, align 4
  %call79.i = call i32 @snd_card_free(ptr noundef %74) #10
  br label %alsa_card_saa7134_create.exit

alsa_card_saa7134_create.exit:                    ; preds = %__nodev.i, %if.then76.i, %if.end2.i.alsa_card_saa7134_create.exit_crit_edge, %if.end.i.alsa_card_saa7134_create.exit_crit_edge, %entry.alsa_card_saa7134_create.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card.i) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_device_exit(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nr = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr, align 8
  %arrayidx = getelementptr [32 x ptr], ptr @snd_saa7134_cards, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @snd_card_free(ptr noundef nonnull %3) #10
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr, align 8
  %arrayidx4 = getelementptr [32 x ptr], ptr @snd_saa7134_cards, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx4, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_saa7134_free(ptr nocapture noundef readonly %card) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %dev = getelementptr inbounds %struct.snd_card_saa7134, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dmasound = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 10
  %priv_data = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 10, i32 24
  %4 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv_data, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.snd_card_saa7134, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp1 = icmp sgt i16 %7, -1
  br i1 %cmp1, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv16 = zext i16 %7 to i32
  %call = tail call ptr @free_irq(i32 noundef %conv16, ptr noundef %dmasound) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %priv_data11 = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 24
  %10 = ptrtoint ptr %priv_data11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %priv_data11, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa7134_alsa_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_data = getelementptr inbounds %struct.saa7134_dmasound, ptr %dev_id, i32 0, i32 24
  %0 = ptrtoint ptr %priv_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_data, align 4
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr39 = getelementptr i32, ptr %3, i32 179
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr540 = getelementptr i32, ptr %6, i32 180
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr540) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  %8 = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not41 = icmp eq i32 %8, 0
  br i1 %tobool.not41, label %entry.out_crit_edge, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  br label %if.then

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body:                                         ; preds = %if.then
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %10, i32 179
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %add.ptr5 = getelementptr i32, ptr %13, i32 180
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  %15 = and i32 %11, 134217728
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %for.body.out_crit_edge, label %for.body.if.then_crit_edge

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then:                                          ; preds = %for.body.if.then_crit_edge, %entry.if.then_crit_edge
  %16 = phi i32 [ %14, %for.body.if.then_crit_edge ], [ %7, %entry.if.then_crit_edge ]
  %loop.03542 = phi i32 [ %inc, %for.body.if.then_crit_edge ], [ 0, %entry.if.then_crit_edge ]
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !162
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %add.ptr10 = getelementptr i32, ptr %19, i32 179
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 134217728) #10, !srcloc !163
  tail call fastcc void @saa7134_irq_alsa_done(ptr noundef %1, i32 noundef %17)
  %inc = add nuw nsw i32 %loop.03542, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.body13, label %for.body

do.body13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7134_alsa_irq.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7134_alsa_irq, %if.then19)) #10
          to label %out [label %if.then19], !srcloc !164

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7134_alsa_irq.__UNIQUE_ID_ddebug400, ptr noundef nonnull @.str.24) #10
  br label %out

out:                                              ; preds = %if.then19, %do.body13, %for.body.out_crit_edge, %entry.out_crit_edge
  %tobool24.not33 = phi i32 [ 1, %do.body13 ], [ 1, %if.then19 ], [ 0, %entry.out_crit_edge ], [ 1, %for.body.out_crit_edge ]
  ret i32 %tobool24.not33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7134_irq_alsa_done(ptr noundef %dev, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %slock = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %slock) #10
  %dma_blk = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 21
  %0 = ptrtoint ptr %dma_blk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_blk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7134_irq_alsa_done.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7134_irq_alsa_done, %if.then3)) #10
          to label %done [label %if.then3], !srcloc !164

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7134_irq_alsa_done.__UNIQUE_ID_ddebug395, ptr noundef nonnull @.str.27) #10
  br label %done

if.end4:                                          ; preds = %entry
  %and = and i32 %status, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5.not = icmp eq i32 %and, 0
  br i1 %cmp5.not, label %if.end4.if.end24_crit_edge, label %do.body7

if.end4.if.end24_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.body7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7134_irq_alsa_done.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7134_irq_alsa_done, %if.then19)) #10
          to label %if.end24 [label %if.then19], !srcloc !164

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %status, 24
  %and20 = and i32 %shr, 15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7134_irq_alsa_done.__UNIQUE_ID_ddebug396, ptr noundef nonnull @.str.29, i32 noundef %and20) #10
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %do.body7, %if.end4.if.end24_crit_edge
  %and25 = and i32 %status, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %cmp26 = icmp eq i32 %and25, 0
  %2 = ptrtoint ptr %dma_blk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_blk, align 4
  %and30 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %cmp31 = icmp eq i32 %and30, 0
  br i1 %cmp26, label %if.then27, label %if.end40

if.then27:                                        ; preds = %if.end24
  br i1 %cmp31, label %if.then27.if.end61_crit_edge, label %if.then27.do.body43_crit_edge

if.then27.do.body43_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body43

if.then27.if.end61_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.end40:                                         ; preds = %if.end24
  br i1 %cmp31, label %if.end40.do.body43_crit_edge, label %if.end40.if.end61_crit_edge

if.end40.if.end61_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.end40.do.body43_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body43

do.body43:                                        ; preds = %if.end40.do.body43_crit_edge, %if.then27.do.body43_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7134_irq_alsa_done.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7134_irq_alsa_done, %if.then55)) #10
          to label %done [label %if.then55], !srcloc !164

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #12
  %cond = select i1 %cmp26, ptr @.str.33, ptr @.str.32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7134_irq_alsa_done.__UNIQUE_ID_ddebug397, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond) #10
  br label %done

if.end61:                                         ; preds = %if.end40.if.end61_crit_edge, %if.then27.if.end61_crit_edge
  %reg.0214 = phi i32 [ 152, %if.then27.if.end61_crit_edge ], [ 153, %if.end40.if.end61_crit_edge ]
  %read_count = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 23
  %4 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_count, align 4
  %blksize = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 14
  %6 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blksize, align 8
  %blocks = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 13
  %8 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blocks, align 4
  %sub = add i32 %9, -2
  %mul = mul i32 %sub, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mul)
  %cmp65.not = icmp ult i32 %5, %mul
  br i1 %cmp65.not, label %if.end91, label %do.body67

do.body67:                                        ; preds = %if.end61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7134_irq_alsa_done.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7134_irq_alsa_done, %if.then79)) #10
          to label %do.end87 [label %if.then79], !srcloc !164

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %read_count, align 4
  %bufsize = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 15
  %12 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bufsize, align 4
  %14 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blocks, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7134_irq_alsa_done.__UNIQUE_ID_ddebug398, ptr noundef nonnull @.str.35, i32 noundef %11, i32 noundef %13, i32 noundef %15) #10
  br label %do.end87

do.end87:                                         ; preds = %if.then79, %do.body67
  tail call void @_raw_spin_unlock(ptr noundef %slock) #10
  %substream = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 25
  %16 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %substream, align 4
  %call90 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %17) #10
  br label %cleanup

if.end91:                                         ; preds = %if.end61
  %18 = ptrtoint ptr %dma_blk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_blk, align 4
  %add = add i32 %19, 2
  %rem = urem i32 %add, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blksize, align 8
  %mul101 = mul i32 %21, %rem
  %22 = tail call i32 @llvm.bswap.i32(i32 %mul101)
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %23 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %24, i32 %reg.0214
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #10, !srcloc !163
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7134_irq_alsa_done.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7134_irq_alsa_done, %if.then114)) #10
          to label %do.end129 [label %if.then114], !srcloc !164

if.then114:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %cond117 = select i1 %cmp26, ptr @.str.38, ptr @.str.32
  %25 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %blksize, align 8
  %mul120 = mul i32 %26, %rem
  %27 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %blocks, align 4
  %29 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %read_count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7134_irq_alsa_done.__UNIQUE_ID_ddebug399, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond117, i32 noundef %rem, i32 noundef %mul120, i32 noundef %28, i32 noundef %26, i32 noundef %30) #10
  br label %do.end129

do.end129:                                        ; preds = %if.then114, %if.end91
  %31 = ptrtoint ptr %dma_blk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_blk, align 4
  %add132 = add i32 %32, 1
  %33 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %blocks, align 4
  %rem135 = urem i32 %add132, %34
  store i32 %rem135, ptr %dma_blk, align 4
  %35 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blksize, align 8
  %37 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %read_count, align 4
  %add142 = add i32 %38, %36
  store i32 %add142, ptr %read_count, align 4
  %recording_on = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 11
  %39 = ptrtoint ptr %recording_on to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %reg.0214, ptr %recording_on, align 4
  %substream147 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 25
  %40 = ptrtoint ptr %substream147 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %substream147, align 4
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %runtime1.i, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %43, i32 0, i32 21
  %46 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %47, %45
  %div1.i.i = lshr i32 %mul.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add142, i32 %div1.i.i)
  %cmp149.not = icmp ult i32 %add142, %div1.i.i
  br i1 %cmp149.not, label %do.end129.done_crit_edge, label %if.then150

do.end129.done_crit_edge:                         ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then150:                                       ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %slock) #10
  %48 = ptrtoint ptr %substream147 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %substream147, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %49) #10
  tail call void @_raw_spin_lock(ptr noundef %slock) #10
  br label %done

done:                                             ; preds = %if.then150, %do.end129.done_crit_edge, %if.then55, %do.body43, %if.then3, %do.body
  tail call void @_raw_spin_unlock(ptr noundef %slock) #10
  br label %cleanup

cleanup:                                          ; preds = %done, %do.end87
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_saa7134_volume_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 20, ptr %max, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_saa7134_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %arrayidx = getelementptr %struct.snd_card_saa7134, ptr %1, i32 0, i32 2, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  %arrayidx5 = getelementptr %struct.snd_card_saa7134, ptr %1, i32 0, i32 2, i32 %3, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx7, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_saa7134_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.snd_card_saa7134, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 20)
  %arrayidx6 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6, align 4
  %mixer_lock = getelementptr inbounds %struct.snd_card_saa7134, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %mixer_lock) #10
  %arrayidx13 = getelementptr %struct.snd_card_saa7134, ptr %1, i32 0, i32 2, i32 %5
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp15.not = icmp eq i32 %13, %9
  %minmaxop148 = select i1 %cmp15.not, i32 %11, i32 %7
  %minmaxop = tail call i32 @llvm.smax.i32(i32 %minmaxop148, i32 0)
  %spec.select = tail call i32 @llvm.umin.i32(i32 %minmaxop, i32 20)
  %arrayidx20 = getelementptr %struct.snd_card_saa7134, ptr %1, i32 0, i32 2, i32 %5, i32 1
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %spec.select)
  %cmp21.not = icmp eq i32 %15, %spec.select
  %left.0 = select i1 %cmp21.not, i32 %9, i32 %spec.select
  %16 = select i1 %cmp21.not, i1 %cmp15.not, i1 false
  br i1 %16, label %entry.if.end108_crit_edge, label %if.then24

entry.if.end108_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then24:                                        ; preds = %entry
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 15
  %17 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device, align 2
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i16 %20, label %if.then24.sw.epilog101_crit_edge [
    i16 28980, label %sw.bb
    i16 28979, label %if.then24.sw.bb56_crit_edge
    i16 28981, label %if.then24.sw.bb56_crit_edge149
  ]

if.then24.sw.bb56_crit_edge149:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb56

if.then24.sw.bb56_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb56

if.then24.sw.epilog101_crit_edge:                 ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog101

sw.bb:                                            ; preds = %if.then24
  %22 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %5, label %sw.bb.sw.epilog101_crit_edge [
    i32 0, label %sw.bb25
    i32 1, label %do.body
    i32 2, label %do.body36
  ]

sw.bb.sw.epilog101_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog101

sw.bb25:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog101

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !166
  tail call void @arm_heavy_mb() #10
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 19
  %23 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %24, i32 366
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  %26 = and i8 %25, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %left.0)
  %cmp29 = icmp ugt i32 %left.0, 10
  %cond = select i1 %cmp29, i8 0, i8 16
  %or = or i8 %26, %cond
  %27 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bmmio, align 8
  %add.ptr34 = getelementptr i8, ptr %28, i32 366
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34, i8 %or) #10, !srcloc !169
  br label %sw.epilog101

do.body36:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !170
  tail call void @arm_heavy_mb() #10
  %bmmio41 = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 19
  %29 = ptrtoint ptr %bmmio41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bmmio41, align 8
  %add.ptr42 = getelementptr i8, ptr %30, i32 366
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr42) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !171
  %32 = and i8 %31, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %left.0)
  %cmp48 = icmp ugt i32 %left.0, 10
  %cond50 = select i1 %cmp48, i8 0, i8 32
  %or52 = or i8 %32, %cond50
  %33 = ptrtoint ptr %bmmio41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bmmio41, align 8
  %add.ptr55 = getelementptr i8, ptr %34, i32 366
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr55, i8 %or52) #10, !srcloc !169
  br label %sw.epilog101

sw.bb56:                                          ; preds = %if.then24.sw.bb56_crit_edge, %if.then24.sw.bb56_crit_edge149
  %35 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %5, label %sw.bb56.sw.epilog101_crit_edge [
    i32 0, label %sw.bb57
    i32 1, label %do.body59
    i32 2, label %do.body80
  ]

sw.bb56.sw.epilog101_crit_edge:                   ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog101

sw.bb57:                                          ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog101

do.body59:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !172
  tail call void @arm_heavy_mb() #10
  %bmmio64 = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 19
  %36 = ptrtoint ptr %bmmio64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bmmio64, align 8
  %add.ptr65 = getelementptr i8, ptr %37, i32 1428
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr65) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !173
  %39 = and i8 %38, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %left.0)
  %cmp71 = icmp ugt i32 %left.0, 10
  %cond73 = select i1 %cmp71, i8 0, i8 16
  %or75 = or i8 %39, %cond73
  %40 = ptrtoint ptr %bmmio64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bmmio64, align 8
  %add.ptr78 = getelementptr i8, ptr %41, i32 1428
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr78, i8 %or75) #10, !srcloc !169
  br label %sw.epilog101

do.body80:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !174
  tail call void @arm_heavy_mb() #10
  %bmmio85 = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 19
  %42 = ptrtoint ptr %bmmio85 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bmmio85, align 8
  %add.ptr86 = getelementptr i8, ptr %43, i32 1428
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr86) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !175
  %45 = and i8 %44, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %left.0)
  %cmp92 = icmp ugt i32 %left.0, 10
  %cond94 = select i1 %cmp92, i8 0, i8 32
  %or96 = or i8 %45, %cond94
  %46 = ptrtoint ptr %bmmio85 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bmmio85, align 8
  %add.ptr99 = getelementptr i8, ptr %47, i32 1428
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr99, i8 %or96) #10, !srcloc !169
  br label %sw.epilog101

sw.epilog101:                                     ; preds = %do.body80, %do.body59, %sw.bb57, %sw.bb56.sw.epilog101_crit_edge, %do.body36, %do.body, %sw.bb25, %sw.bb.sw.epilog101_crit_edge, %if.then24.sw.epilog101_crit_edge
  %left.1 = phi i32 [ %left.0, %if.then24.sw.epilog101_crit_edge ], [ %left.0, %sw.bb56.sw.epilog101_crit_edge ], [ %left.0, %do.body80 ], [ %left.0, %do.body59 ], [ 20, %sw.bb57 ], [ %left.0, %sw.bb.sw.epilog101_crit_edge ], [ %left.0, %do.body36 ], [ %left.0, %do.body ], [ 20, %sw.bb25 ]
  %48 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %left.1, ptr %arrayidx13, align 4
  %49 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %spec.select, ptr %arrayidx20, align 4
  br label %if.end108

if.end108:                                        ; preds = %sw.epilog101, %entry.if.end108_crit_edge
  %narrow = xor i1 %16, true
  %change.1 = zext i1 %narrow to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %mixer_lock) #10
  ret i32 %change.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_saa7134_capsrc_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_saa7134_capsrc_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %mixer_lock = getelementptr inbounds %struct.snd_card_saa7134, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %mixer_lock) #10
  %capture_source_addr = getelementptr inbounds %struct.snd_card_saa7134, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %capture_source_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %capture_source_addr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp = icmp eq i32 %5, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %capture_source = getelementptr inbounds %struct.snd_card_saa7134, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %capture_source to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %capture_source, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  %arrayidx3 = getelementptr %struct.snd_card_saa7134, ptr %1, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx3, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %value6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %value6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ 0, %if.else ], [ %10, %if.then ]
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx9 = getelementptr [128 x i32], ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %arrayidx9, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %mixer_lock) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_saa7134_capsrc_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 8
  %and = and i32 %1, 1
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %and3 = and i32 %3, 1
  %call = tail call fastcc i32 @snd_saa7134_capsrc_set(ptr noundef %kcontrol, i32 noundef %and, i32 noundef %and3, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_saa7134_capsrc_set(ptr nocapture noundef readonly %kcontrol, i32 noundef %left, i32 noundef %right, i1 noundef zeroext %force_notify) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %dev1 = getelementptr inbounds %struct.snd_card_saa7134, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %mixer_lock = getelementptr inbounds %struct.snd_card_saa7134, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %mixer_lock) #10
  %6 = or i32 %right, %left
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  %capture_source_addr = getelementptr inbounds %struct.snd_card_saa7134, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %capture_source_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %capture_source_addr, align 4
  br i1 %7, label %if.end.thread, label %if.then

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %mixer_lock) #10
  br label %if.end139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp3.not = icmp eq i32 %9, %3
  %capture_source = getelementptr inbounds %struct.snd_card_saa7134, ptr %1, i32 0, i32 4
  br i1 %cmp3.not, label %lor.lhs.false, label %if.then.if.then18.sink.split_crit_edge

if.then.if.then18.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.sink.split

lor.lhs.false:                                    ; preds = %if.then
  %10 = ptrtoint ptr %capture_source to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capture_source, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %left)
  %cmp4.not = icmp eq i32 %11, %left
  br i1 %cmp4.not, label %lor.rhs5, label %lor.lhs.false.if.then18.sink.split_crit_edge

lor.lhs.false.if.then18.sink.split_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18.sink.split

lor.rhs5:                                         ; preds = %lor.lhs.false
  %arrayidx7 = getelementptr %struct.snd_card_saa7134, ptr %1, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %right)
  %cmp8 = icmp eq i32 %13, %right
  %14 = ptrtoint ptr %capture_source to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %left, ptr %capture_source, align 4
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %right, ptr %arrayidx7, align 4
  %16 = ptrtoint ptr %capture_source_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %3, ptr %capture_source_addr, align 4
  %input = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 10, i32 4
  %17 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %3, ptr %input, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %mixer_lock) #10
  br i1 %cmp8, label %lor.rhs5.if.end139_crit_edge, label %lor.rhs5.if.then18_crit_edge

lor.rhs5.if.then18_crit_edge:                     ; preds = %lor.rhs5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

lor.rhs5.if.end139_crit_edge:                     ; preds = %lor.rhs5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.then18.sink.split:                             ; preds = %lor.lhs.false.if.then18.sink.split_crit_edge, %if.then.if.then18.sink.split_crit_edge
  %18 = ptrtoint ptr %capture_source to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %left, ptr %capture_source, align 4
  %arrayidx14.c197 = getelementptr %struct.snd_card_saa7134, ptr %1, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %arrayidx14.c197 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %right, ptr %arrayidx14.c197, align 4
  %20 = ptrtoint ptr %capture_source_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %3, ptr %capture_source_addr, align 4
  %input.c198 = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 10, i32 4
  %21 = ptrtoint ptr %input.c198 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %3, ptr %input.c198, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %mixer_lock) #10
  br label %if.then18

if.then18:                                        ; preds = %if.then18.sink.split, %lor.rhs5.if.then18_crit_edge
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 15
  %22 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device, align 2
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.62)
  switch i16 %25, label %if.then18.if.then124_crit_edge [
    i16 28980, label %sw.bb
    i16 28979, label %if.then18.sw.bb99_crit_edge
    i16 28981, label %if.then18.sw.bb99_crit_edge199
  ]

if.then18.sw.bb99_crit_edge199:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb99

if.then18.sw.bb99_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb99

if.then18.if.then124_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then124

sw.bb:                                            ; preds = %if.then18
  %27 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %3, label %sw.bb.if.then124_crit_edge [
    i32 0, label %do.body
    i32 1, label %sw.bb.sw.bb41_crit_edge
    i32 2, label %sw.bb.sw.bb41_crit_edge200
  ]

sw.bb.sw.bb41_crit_edge200:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb41

sw.bb.sw.bb41_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb41

sw.bb.if.then124_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then124

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !176
  tail call void @arm_heavy_mb() #10
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 19
  %28 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %29, i32 347
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !177
  %31 = or i8 %30, -64
  %32 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bmmio, align 8
  %add.ptr24 = getelementptr i8, ptr %33, i32 347
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24, i8 %31) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !178
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bmmio, align 8
  %add.ptr31 = getelementptr i8, ptr %35, i32 365
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr31) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !179
  %37 = and i8 %36, -4
  %38 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bmmio, align 8
  %add.ptr40 = getelementptr i8, ptr %39, i32 365
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr40, i8 %37) #10, !srcloc !169
  br label %if.then124

sw.bb41:                                          ; preds = %sw.bb.sw.bb41_crit_edge, %sw.bb.sw.bb41_crit_edge200
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp42 = icmp eq i32 %3, 1
  %cond = select i1 %cmp42, i8 0, i8 8
  %rate45 = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 10, i32 9
  %40 = ptrtoint ptr %rate45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rate45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %41)
  %cmp46 = icmp eq i32 %41, 32000
  %cond48 = select i1 %cmp46, i8 1, i8 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  tail call void @arm_heavy_mb() #10
  %bmmio54 = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 19
  %42 = ptrtoint ptr %bmmio54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bmmio54, align 8
  %add.ptr55 = getelementptr i8, ptr %43, i32 366
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr55) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  %45 = and i8 %44, -9
  %or62 = or i8 %45, %cond
  %46 = ptrtoint ptr %bmmio54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bmmio54, align 8
  %add.ptr65 = getelementptr i8, ptr %47, i32 366
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr65, i8 %or62) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !182
  tail call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %bmmio54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bmmio54, align 8
  %add.ptr72 = getelementptr i8, ptr %49, i32 347
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr72) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  %51 = and i8 %50, 63
  %52 = or i8 %51, -128
  %53 = ptrtoint ptr %bmmio54 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bmmio54, align 8
  %add.ptr81 = getelementptr i8, ptr %54, i32 347
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr81, i8 %52) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !184
  tail call void @arm_heavy_mb() #10
  %55 = ptrtoint ptr %bmmio54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bmmio54, align 8
  %add.ptr88 = getelementptr i8, ptr %56, i32 365
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr88) #10, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  %58 = and i8 %57, -4
  %or95 = or i8 %58, %cond48
  %59 = ptrtoint ptr %bmmio54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bmmio54, align 8
  %add.ptr98 = getelementptr i8, ptr %60, i32 365
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr98, i8 %or95) #10, !srcloc !169
  br label %if.then124

sw.bb99:                                          ; preds = %if.then18.sw.bb99_crit_edge, %if.then18.sw.bb99_crit_edge199
  %61 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %3, label %sw.bb99.if.then108_crit_edge [
    i32 0, label %sw.bb100
    i32 2, label %sw.bb102
  ]

sw.bb99.if.then108_crit_edge:                     ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then108

sw.bb100:                                         ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then108

sw.bb102:                                         ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then108

if.then108:                                       ; preds = %sw.bb102, %sw.bb100, %sw.bb99.if.then108_crit_edge
  %xbarin.0 = phi i32 [ 3, %sw.bb102 ], [ 0, %sw.bb100 ], [ 3, %sw.bb99.if.then108_crit_edge ]
  %anabar.0 = phi i32 [ 150994944, %sw.bb102 ], [ 33554432, %sw.bb100 ], [ 0, %sw.bb99.if.then108_crit_edge ]
  %call104 = tail call i32 @saa_dsp_writel(ptr noundef %5, i32 noundef 283, i32 noundef 12303120) #10
  %call109 = tail call i32 @saa_dsp_writel(ptr noundef %5, i32 noundef 281, i32 noundef %xbarin.0) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !186
  tail call void @arm_heavy_mb() #10
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 18
  %62 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lmmio, align 4
  %add.ptr113 = getelementptr i32, ptr %63, i32 357
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %anabar.0) #10, !srcloc !163
  br label %if.then124

if.then124:                                       ; preds = %if.then108, %sw.bb41, %do.body, %sw.bb.if.then124_crit_edge, %if.then18.if.then124_crit_edge
  br i1 %force_notify, label %if.then126, label %if.then124.if.end128_crit_edge

if.then124.if.end128_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then126:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 4
  %arrayidx127 = getelementptr %struct.snd_card_saa7134, ptr %1, i32 0, i32 5, i32 %3
  %66 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx127, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %67, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %65, i32 noundef 1, ptr noundef %id) #10
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.then124.if.end128_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp129.not = icmp eq i32 %9, -1
  %or.cond191 = select i1 %cmp129.not, i1 true, i1 %cmp3.not
  br i1 %or.cond191, label %if.end128.if.end139_crit_edge, label %if.then133

if.end128.if.end139_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.then133:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %arrayidx136 = getelementptr %struct.snd_card_saa7134, ptr %1, i32 0, i32 5, i32 %9
  %70 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx136, align 4
  %id137 = getelementptr inbounds %struct.snd_kcontrol, ptr %71, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %69, i32 noundef 1, ptr noundef %id137) #10
  br label %if.end139

if.end139:                                        ; preds = %if.then133, %if.end128.if.end139_crit_edge, %lor.rhs5.if.end139_crit_edge, %if.end.thread
  %change.0194 = phi i32 [ 0, %if.end.thread ], [ 0, %lor.rhs5.if.end139_crit_edge ], [ 1, %if.end128.if.end139_crit_edge ], [ 1, %if.then133 ]
  ret i32 %change.0194
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa_dsp_writel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_card_saa7134_capture_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.snd_card_saa7134, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %dmasound = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %dmasound, i32 noundef 0) #10
  %read_count = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 10, i32 23
  %6 = ptrtoint ptr %read_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %read_count, align 4
  %read_offset = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 10, i32 22
  %7 = ptrtoint ptr %read_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %read_offset, align 8
  %input = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 81
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  %amux5 = getelementptr inbounds %struct.saa7134_input, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %amux5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %amux5, align 4
  %12 = add i32 %11, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %12)
  %13 = icmp ult i32 %12, -3
  %.op = add nsw i32 %11, -1
  %sub = select i1 %13, i32 0, i32 %.op
  %input10 = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 10, i32 4
  %14 = ptrtoint ptr %input10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %input10, align 8
  tail call void @mutex_unlock(ptr noundef %dmasound) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 52) #14
  %cmp14 = icmp eq ptr %call7.i.i, null
  br i1 %cmp14, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2, align 4
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %call7.i.i, align 8
  %lock20 = getelementptr inbounds %struct.snd_card_saa7134_pcm, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock20, ptr noundef nonnull @.str.47, ptr noundef nonnull @snd_card_saa7134_capture_open.__key, i16 noundef signext 3) #10
  %substream24 = getelementptr inbounds %struct.snd_card_saa7134_pcm, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %substream24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %substream, ptr %substream24, align 8
  %private_data25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %20 = ptrtoint ptr %private_data25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %private_data25, align 8
  %private_free = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 45
  %21 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @snd_card_saa7134_runtime_free, ptr %private_free, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %22 = call ptr @memcpy(ptr %hw, ptr @snd_card_saa7134_capture, i32 64)
  %ctl_mute = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 69
  %23 = ptrtoint ptr %ctl_mute to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctl_mute, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp26.not = icmp eq i32 %24, 0
  br i1 %cmp26.not, label %if.end16.if.end29_crit_edge, label %if.then27

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

if.then27:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %mute_was_on = getelementptr inbounds %struct.snd_card_saa7134, ptr %3, i32 0, i32 10
  %25 = ptrtoint ptr %mute_was_on to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %mute_was_on, align 2
  %26 = ptrtoint ptr %ctl_mute to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %ctl_mute, align 8
  tail call void @saa7134_tvaudio_setmute(ptr noundef %5) #10
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end16.if.end29_crit_edge
  %call30 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %call34 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %1, i32 noundef 0, i32 noundef 15, i32 noundef 2) #10
  %27 = tail call i32 @llvm.smin.i32(i32 %call34, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end29.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %27, %if.end33 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_card_saa7134_capture_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mute_was_on = getelementptr inbounds %struct.snd_card_saa7134, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mute_was_on to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mute_was_on, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1 = getelementptr inbounds %struct.snd_card_saa7134, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %ctl_mute = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 69
  %6 = ptrtoint ptr %ctl_mute to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ctl_mute, align 8
  tail call void @saa7134_tvaudio_setmute(ptr noundef %5) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_card_saa7134_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i128 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %arrayidx.i.i128 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i128, align 4
  %6 = add i32 %3, -65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65281, i32 %6)
  %7 = icmp ult i32 %6, -65281
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp3 = icmp ult i32 %5, 4
  %or.cond127 = select i1 %7, i1 true, i1 %cmp3
  br i1 %or.cond127, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  %mul = mul i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %mul)
  %cmp6 = icmp ugt i32 %mul, 1048576
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %dev9 = getelementptr inbounds %struct.snd_card_saa7134, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 4
  %blocks = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 13
  %10 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %5)
  %cmp10 = icmp eq i32 %11, %5
  br i1 %cmp10, label %land.lhs.true, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end8
  %blksize = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 14
  %12 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %blksize, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %3)
  %cmp12 = icmp eq i32 %13, %3
  br i1 %cmp12, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end8.if.end14_crit_edge
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %14 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 50
  %16 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_area, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %if.end14.if.end21_crit_edge, label %if.then15

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then15:                                        ; preds = %if.end14
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 15
  %18 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci, align 4
  %pt = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 16
  tail call void @saa7134_pgtable_free(ptr noundef %19, ptr noundef %pt) #10
  %sglen.i = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 19
  %20 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sglen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.then15.saa7134_alsa_dma_unmap.exit_crit_edge, label %if.end.i

if.then15.saa7134_alsa_dma_unmap.exit_crit_edge:  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %saa7134_alsa_dma_unmap.exit

if.end.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %sglist.i = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 18
  %24 = ptrtoint ptr %sglist.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sglist.i, align 4
  %nr_pages.i = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 20
  %26 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_pages.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev1.i, ptr noundef %25, i32 noundef %27, i32 noundef 2, i32 noundef 0) #10
  %28 = ptrtoint ptr %sglen.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %sglen.i, align 4
  br label %saa7134_alsa_dma_unmap.exit

saa7134_alsa_dma_unmap.exit:                      ; preds = %if.end.i, %if.then15.saa7134_alsa_dma_unmap.exit_crit_edge
  %blksize.i = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 14
  %29 = ptrtoint ptr %blksize.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blksize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i129 = icmp eq i32 %30, 0
  br i1 %tobool.not.i129, label %do.body4.i, label %dsp_buffer_free.exit, !prof !187

do.body4.i:                                       ; preds = %saa7134_alsa_dma_unmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7134/saa7134-alsa.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 364, 0\0A.popsection", ""() #10, !srcloc !188
  unreachable

dsp_buffer_free.exit:                             ; preds = %saa7134_alsa_dma_unmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sglist.i.i = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 18
  %31 = ptrtoint ptr %sglist.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sglist.i.i, align 4
  tail call void @vfree(ptr noundef %32) #10
  %33 = ptrtoint ptr %sglist.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %sglist.i.i, align 4
  %vaddr.i.i = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 17
  %34 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vaddr.i.i, align 4
  tail call void @vfree(ptr noundef %35) #10
  %36 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %vaddr.i.i, align 4
  %37 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %blocks, align 4
  %38 = ptrtoint ptr %blksize.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %blksize.i, align 8
  %bufsize.i = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 15
  %39 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %bufsize.i, align 4
  %40 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %runtime, align 4
  %dma_area20 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %41, i32 0, i32 50
  %42 = ptrtoint ptr %dma_area20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %dma_area20, align 4
  br label %if.end21

if.end21:                                         ; preds = %dsp_buffer_free.exit, %if.end14.if.end21_crit_edge
  %43 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %5, ptr %blocks, align 4
  %blksize25 = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 14
  %44 = ptrtoint ptr %blksize25 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %3, ptr %blksize25, align 8
  %bufsize = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 15
  %45 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul, ptr %bufsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool.not.i131 = icmp eq i32 %mul, 0
  br i1 %tobool.not.i131, label %do.body4.i132, label %dsp_buffer_init.exit, !prof !187

do.body4.i132:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7134/saa7134-alsa.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 346, 0\0A.popsection", ""() #10, !srcloc !189
  unreachable

dsp_buffer_init.exit:                             ; preds = %if.end21
  %add.i = add nuw nsw i32 %mul, 4096
  %shr.i = lshr i32 %add.i, 12
  %call.i = tail call fastcc i32 @saa7134_alsa_dma_init(ptr noundef %9, i32 noundef %shr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp29.not = icmp eq i32 %call.i, 0
  br i1 %cmp29.not, label %if.end37, label %if.then30

if.then30:                                        ; preds = %dsp_buffer_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %blocks, align 4
  %47 = ptrtoint ptr %blksize25 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %blksize25, align 8
  %48 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %bufsize, align 4
  br label %cleanup

if.end37:                                         ; preds = %dsp_buffer_init.exit
  %pci.i133 = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 15
  %49 = ptrtoint ptr %pci.i133 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pci.i133, align 4
  %dev1.i134 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %sglist.i135 = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 18
  %51 = ptrtoint ptr %sglist.i135 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sglist.i135, align 4
  %nr_pages.i136 = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 20
  %53 = ptrtoint ptr %nr_pages.i136 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr_pages.i136, align 4
  %call.i137 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev1.i134, ptr noundef %52, i32 noundef %54, i32 noundef 2, i32 noundef 0) #10
  %sglen.i138 = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 19
  %55 = ptrtoint ptr %sglen.i138 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call.i137, ptr %sglen.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %cmp.i = icmp eq i32 %call.i137, 0
  br i1 %cmp.i, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end37
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #13
  %56 = ptrtoint ptr %blksize25 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %blksize25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i140 = icmp eq i32 %57, 0
  br i1 %tobool.not.i140, label %do.body4.i141, label %dsp_buffer_free.exit146, !prof !187

do.body4.i141:                                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7134/saa7134-alsa.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 364, 0\0A.popsection", ""() #10, !srcloc !188
  unreachable

dsp_buffer_free.exit146:                          ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %sglist.i135 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sglist.i135, align 4
  tail call void @vfree(ptr noundef %59) #10
  %60 = ptrtoint ptr %sglist.i135 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %sglist.i135, align 4
  %vaddr.i.i143 = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 17
  %61 = ptrtoint ptr %vaddr.i.i143 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vaddr.i.i143, align 4
  tail call void @vfree(ptr noundef %62) #10
  %63 = ptrtoint ptr %vaddr.i.i143 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %vaddr.i.i143, align 4
  %64 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %blocks, align 4
  %65 = ptrtoint ptr %blksize25 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %blksize25, align 8
  %66 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %bufsize, align 4
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %67 = ptrtoint ptr %pci.i133 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pci.i133, align 4
  %pt45 = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 16
  %call46 = tail call i32 @saa7134_pgtable_alloc(ptr noundef %68, ptr noundef %pt45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end51, label %if.then48

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @saa7134_alsa_dma_unmap(ptr noundef %9)
  tail call fastcc void @dsp_buffer_free(ptr noundef %9)
  br label %cleanup

if.end51:                                         ; preds = %if.end42
  %69 = ptrtoint ptr %pci.i133 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pci.i133, align 4
  %71 = ptrtoint ptr %sglist.i135 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sglist.i135, align 8
  %73 = ptrtoint ptr %sglen.i138 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %sglen.i138, align 4
  %call57 = tail call i32 @saa7134_pgtable_build(ptr noundef %70, ptr noundef %pt45, ptr noundef %72, i32 noundef %74, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end65, label %if.then59

if.then59:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %pci.i133 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pci.i133, align 4
  tail call void @saa7134_pgtable_free(ptr noundef %76, ptr noundef %pt45) #10
  tail call fastcc void @saa7134_alsa_dma_unmap(ptr noundef %9)
  tail call fastcc void @dsp_buffer_free(ptr noundef %9)
  br label %cleanup

if.end65:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %vaddr = getelementptr inbounds %struct.saa7134_dev, ptr %9, i32 0, i32 10, i32 17
  %77 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vaddr, align 4
  %79 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %runtime, align 4
  %dma_area68 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %80, i32 0, i32 50
  %81 = ptrtoint ptr %dma_area68 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %dma_area68, align 4
  %82 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bufsize, align 4
  %84 = load ptr, ptr %runtime, align 4
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %84, i32 0, i32 52
  %85 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %83, ptr %dma_bytes, align 4
  %86 = load ptr, ptr %runtime, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %86, i32 0, i32 51
  %87 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %dma_addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then59, %if.then48, %dsp_buffer_free.exit146, %if.then30, %land.lhs.true.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then30 ], [ -12, %dsp_buffer_free.exit146 ], [ %call46, %if.then48 ], [ %call57, %if.then59 ], [ 0, %if.end65 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_card_saa7134_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %dev1 = getelementptr inbounds %struct.snd_card_saa7134, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 4
  %pt = getelementptr inbounds %struct.saa7134_dev, ptr %7, i32 0, i32 10, i32 16
  tail call void @saa7134_pgtable_free(ptr noundef %9, ptr noundef %pt) #10
  %sglen.i = getelementptr inbounds %struct.saa7134_dev, ptr %7, i32 0, i32 10, i32 19
  %10 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sglen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then.saa7134_alsa_dma_unmap.exit_crit_edge, label %if.end.i

if.then.saa7134_alsa_dma_unmap.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %saa7134_alsa_dma_unmap.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %sglist.i = getelementptr inbounds %struct.saa7134_dev, ptr %7, i32 0, i32 10, i32 18
  %14 = ptrtoint ptr %sglist.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sglist.i, align 4
  %nr_pages.i = getelementptr inbounds %struct.saa7134_dev, ptr %7, i32 0, i32 10, i32 20
  %16 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_pages.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev1.i, ptr noundef %15, i32 noundef %17, i32 noundef 2, i32 noundef 0) #10
  %18 = ptrtoint ptr %sglen.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %sglen.i, align 4
  br label %saa7134_alsa_dma_unmap.exit

saa7134_alsa_dma_unmap.exit:                      ; preds = %if.end.i, %if.then.saa7134_alsa_dma_unmap.exit_crit_edge
  %blksize.i = getelementptr inbounds %struct.saa7134_dev, ptr %7, i32 0, i32 10, i32 14
  %19 = ptrtoint ptr %blksize.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %blksize.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i10 = icmp eq i32 %20, 0
  br i1 %tobool.not.i10, label %do.body4.i, label %dsp_buffer_free.exit, !prof !187

do.body4.i:                                       ; preds = %saa7134_alsa_dma_unmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7134/saa7134-alsa.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 364, 0\0A.popsection", ""() #10, !srcloc !188
  unreachable

dsp_buffer_free.exit:                             ; preds = %saa7134_alsa_dma_unmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sglist.i.i = getelementptr inbounds %struct.saa7134_dev, ptr %7, i32 0, i32 10, i32 18
  %21 = ptrtoint ptr %sglist.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sglist.i.i, align 4
  tail call void @vfree(ptr noundef %22) #10
  %23 = ptrtoint ptr %sglist.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %sglist.i.i, align 4
  %vaddr.i.i = getelementptr inbounds %struct.saa7134_dev, ptr %7, i32 0, i32 10, i32 17
  %24 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vaddr.i.i, align 4
  tail call void @vfree(ptr noundef %25) #10
  %26 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %vaddr.i.i, align 4
  %blocks.i = getelementptr inbounds %struct.saa7134_dev, ptr %7, i32 0, i32 10, i32 13
  %27 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %blocks.i, align 4
  %28 = ptrtoint ptr %blksize.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %blksize.i, align 8
  %bufsize.i = getelementptr inbounds %struct.saa7134_dev, ptr %7, i32 0, i32 10, i32 15
  %29 = ptrtoint ptr %bufsize.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %bufsize.i, align 4
  %30 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %runtime, align 4
  %dma_area4 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 50
  %32 = ptrtoint ptr %dma_area4 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %dma_area4, align 4
  br label %if.end

if.end:                                           ; preds = %dsp_buffer_free.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_card_saa7134_capture_prepare(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %substream4 = getelementptr inbounds %struct.saa7134_dev, ptr %7, i32 0, i32 10, i32 25
  %8 = ptrtoint ptr %substream4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %substream4, align 4
  %dev5 = getelementptr inbounds %struct.snd_card_saa7134, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev5, align 4
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %format, align 4
  %call = tail call i32 @snd_pcm_format_width(i32 noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp = icmp ne i32 %call, 8
  %. = zext i1 %cmp to i32
  %13 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %format, align 4
  %call7 = tail call i32 @snd_pcm_format_signed(i32 noundef %14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  %call12 = tail call i32 @snd_pcm_format_big_endian(i32 noundef %16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %10, i32 0, i32 15
  %17 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device, align 2
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.65)
  switch i16 %20, label %entry.do.body94_crit_edge [
    i16 28980, label %sw.bb
    i16 28979, label %entry.sw.bb64_crit_edge
    i16 28981, label %entry.sw.bb64_crit_edge188
  ]

entry.sw.bb64_crit_edge188:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb64

entry.sw.bb64_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb64

entry.do.body94_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body94

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %22 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp17 = icmp eq i32 %23, 1
  %or = or i32 %., 8
  %spec.select = select i1 %cmp17, i32 %or, i32 %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp22 = icmp eq i32 %23, 2
  %or25 = or i32 %spec.select, 24
  %fmt.2 = select i1 %cmp22, i32 %or25, i32 %spec.select
  %or29 = or i32 %fmt.2, 4
  %fmt.3 = select i1 %tobool.not, i32 %fmt.2, i32 %or29
  %input = getelementptr inbounds %struct.saa7134_dev, ptr %10, i32 0, i32 10, i32 4
  %24 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp32 = icmp eq i32 %25, 0
  %cond = select i1 %cmp32, i32 192, i32 128
  %or34 = or i32 %fmt.3, %cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !190
  tail call void @arm_heavy_mb() #10
  %blksize = getelementptr inbounds %struct.saa7134_dev, ptr %10, i32 0, i32 10, i32 14
  %26 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %blksize, align 8
  %28 = trunc i32 %27 to i8
  %conv36 = add i8 %28, -1
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %10, i32 0, i32 19
  %29 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %30, i32 344
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv36) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %blksize, align 8
  %sub42 = add i32 %32, 65535
  %and43 = lshr i32 %sub42, 8
  %conv44 = trunc i32 %and43 to i8
  %33 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bmmio, align 8
  %add.ptr46 = getelementptr i8, ptr %34, i32 345
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46, i8 %conv44) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  tail call void @arm_heavy_mb() #10
  %35 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blksize, align 8
  %sub52 = add i32 %36, 16777215
  %and53 = lshr i32 %sub52, 16
  %conv55 = trunc i32 %and53 to i8
  %37 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bmmio, align 8
  %add.ptr57 = getelementptr i8, ptr %38, i32 346
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr57, i8 %conv55) #10, !srcloc !169
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !193
  tail call void @arm_heavy_mb() #10
  %conv61 = trunc i32 %or34 to i8
  %39 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bmmio, align 8
  %add.ptr63 = getelementptr i8, ptr %40, i32 347
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63, i8 %conv61) #10, !srcloc !169
  br label %do.body94

sw.bb64:                                          ; preds = %entry.sw.bb64_crit_edge, %entry.sw.bb64_crit_edge188
  %channels65 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %41 = ptrtoint ptr %channels65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %channels65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp66 = icmp eq i32 %42, 1
  %or69 = or i32 %., 16
  %spec.select185 = select i1 %cmp66, i32 %or69, i32 %.
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp72 = icmp eq i32 %42, 2
  %or75 = or i32 %spec.select185, 32
  %fmt.5 = select i1 %cmp72, i32 %or75, i32 %spec.select185
  %or79 = or i32 %fmt.5, 4
  %fmt.6 = select i1 %tobool.not, i32 %or79, i32 %fmt.5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  tail call void @arm_heavy_mb() #10
  %blksize85 = getelementptr inbounds %struct.saa7134_dev, ptr %10, i32 0, i32 10, i32 14
  %43 = ptrtoint ptr %blksize85 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %blksize85, align 8
  %sub86 = add i32 %44, -1
  %45 = tail call i32 @llvm.bswap.i32(i32 %sub86)
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %10, i32 0, i32 18
  %46 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lmmio, align 4
  %add.ptr87 = getelementptr i32, ptr %47, i32 354
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %45) #10, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  tail call void @arm_heavy_mb() #10
  %shl = shl i32 %fmt.6, 24
  %or91 = or i32 %shl, 5517840
  %48 = tail call i32 @llvm.bswap.i32(i32 %or91)
  %49 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lmmio, align 4
  %add.ptr93 = getelementptr i32, ptr %50, i32 355
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %48) #10, !srcloc !163
  br label %do.body94

do.body94:                                        ; preds = %sw.bb64, %sw.bb, %entry.do.body94_crit_edge
  %fmt.7 = phi i32 [ %., %entry.do.body94_crit_edge ], [ %fmt.6, %sw.bb64 ], [ %or34, %sw.bb ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_card_saa7134_capture_prepare.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_card_saa7134_capture_prepare, %if.then99)) #10
          to label %do.end106 [label %if.then99], !srcloc !164

if.then99:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %format, align 4
  %channels101 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 15
  %53 = ptrtoint ptr %channels101 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %channels101, align 8
  %cond103 = select i1 %tobool13.not, i32 45, i32 98
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_card_saa7134_capture_prepare.__UNIQUE_ID_ddebug403, ptr noundef nonnull @.str.57, i32 noundef %52, i32 noundef %54, i32 noundef %fmt.7, i32 noundef %cond103) #10
  br label %do.end106

do.end106:                                        ; preds = %if.then99, %do.body94
  %dma = getelementptr inbounds %struct.saa7134_dev, ptr %10, i32 0, i32 10, i32 16, i32 2
  %55 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma, align 8
  %shr108 = lshr i32 %56, 12
  %spec.select186.v = select i1 %tobool13.not, i32 9437184, i32 26214400
  %spec.select186 = or i32 %shr108, %spec.select186.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %lmmio117 = getelementptr inbounds %struct.saa7134_dev, ptr %10, i32 0, i32 18
  %57 = ptrtoint ptr %lmmio117 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lmmio117, align 4
  %add.ptr118 = getelementptr i32, ptr %58, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 0) #10, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %blksize123 = getelementptr inbounds %struct.saa7134_dev, ptr %10, i32 0, i32 10, i32 14
  %59 = ptrtoint ptr %blksize123 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %blksize123, align 8
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %62 = ptrtoint ptr %lmmio117 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lmmio117, align 4
  %add.ptr125 = getelementptr i32, ptr %63, i32 153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 %61) #10, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  tail call void @arm_heavy_mb() #10
  %64 = ptrtoint ptr %lmmio117 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lmmio117, align 4
  %add.ptr130 = getelementptr i32, ptr %65, i32 154
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 0) #10, !srcloc !163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  tail call void @arm_heavy_mb() #10
  %66 = tail call i32 @llvm.bswap.i32(i32 %spec.select186)
  %67 = ptrtoint ptr %lmmio117 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lmmio117, align 4
  %add.ptr135 = getelementptr i32, ptr %68, i32 155
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 %66) #10, !srcloc !163
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %69 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rate, align 4
  %rate137 = getelementptr inbounds %struct.saa7134_dev, ptr %10, i32 0, i32 10, i32 9
  %71 = ptrtoint ptr %rate137 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %rate137, align 4
  %input139 = getelementptr inbounds %struct.saa7134_dev, ptr %10, i32 0, i32 10, i32 4
  %72 = ptrtoint ptr %input139 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %input139, align 8
  %arrayidx = getelementptr %struct.snd_card_saa7134, ptr %3, i32 0, i32 5, i32 %73
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx, align 4
  %call140 = tail call fastcc i32 @snd_saa7134_capsrc_set(ptr noundef %75, i32 noundef 1, i32 noundef 1, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_card_saa7134_capture_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %slock = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %slock) #10
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %cmd, label %entry.if.end6_crit_edge [
    i32 1, label %entry.if.end6.sink.split_crit_edge
    i32 0, label %if.then4
  ]

entry.if.end6.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.sink.split

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.then4, %entry.if.end6.sink.split_crit_edge
  %.sink15 = phi i32 [ -1, %if.then4 ], [ 0, %entry.if.end6.sink.split_crit_edge ]
  %dma_blk.i12 = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 10, i32 21
  %7 = ptrtoint ptr %dma_blk.i12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink15, ptr %dma_blk.i12, align 4
  %dma_running.i13 = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 10, i32 12
  %8 = ptrtoint ptr %dma_running.i13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cmd, ptr %dma_running.i13, align 8
  %call.i14 = tail call i32 @saa7134_set_dmabits(ptr noundef %5) #10
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %entry.if.end6_crit_edge
  %err.0 = phi i32 [ -22, %entry.if.end6_crit_edge ], [ 0, %if.end6.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef %slock) #10
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_card_saa7134_capture_pointer(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %read_count = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 10, i32 23
  %6 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %read_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %11, %9
  %div1.i.i = lshr i32 %mul.i.i, 3
  %sub = sub i32 %7, %div1.i.i
  %12 = ptrtoint ptr %read_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %read_count, align 4
  %13 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime1, align 4
  %period_size.i27 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %period_size.i27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %period_size.i27, align 4
  %frame_bits.i.i28 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 21
  %17 = ptrtoint ptr %frame_bits.i.i28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frame_bits.i.i28, align 8
  %mul.i.i29 = mul i32 %18, %16
  %div1.i.i30 = lshr i32 %mul.i.i29, 3
  %read_offset = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 10, i32 22
  %19 = ptrtoint ptr %read_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %read_offset, align 8
  %add = add i32 %div1.i.i30, %20
  %bufsize = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 10, i32 15
  %21 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bufsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %22)
  %cmp = icmp eq i32 %add, %22
  %spec.store.select = select i1 %cmp, i32 0, i32 %add
  %23 = ptrtoint ptr %read_offset to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %spec.store.select, ptr %read_offset, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then, %entry.if.end13_crit_edge
  %read_offset15 = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 10, i32 22
  %24 = ptrtoint ptr %read_offset15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %read_offset15, align 8
  %mul.i = shl i32 %25, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %26 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %27
  ret i32 %div.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @snd_card_saa7134_page(ptr nocapture noundef readonly %substream, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %call = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr) #10
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_card_saa7134_runtime_free(ptr nocapture noundef readonly %runtime) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 44
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_tvaudio_setmute(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_pgtable_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa7134_alsa_dma_unmap(ptr nocapture noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sglen = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 19
  %0 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %sglist = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 18
  %4 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sglist, align 4
  %nr_pages = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 20
  %6 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_pages, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev1, ptr noundef %5, i32 noundef %7, i32 noundef 2, i32 noundef 0) #10
  %8 = ptrtoint ptr %sglen to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %sglen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsp_buffer_free(ptr nocapture noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %blksize = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 14
  %0 = ptrtoint ptr %blksize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %blksize, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.end7, !prof !187

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/saa7134/saa7134-alsa.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 364, 0\0A.popsection", ""() #10, !srcloc !188
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sglist.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 18
  %2 = ptrtoint ptr %sglist.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sglist.i, align 4
  tail call void @vfree(ptr noundef %3) #10
  %4 = ptrtoint ptr %sglist.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %sglist.i, align 4
  %vaddr.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 17
  %5 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vaddr.i, align 4
  tail call void @vfree(ptr noundef %6) #10
  %7 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %vaddr.i, align 4
  %blocks = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 13
  %8 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %blocks, align 4
  %9 = ptrtoint ptr %blksize to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %blksize, align 8
  %bufsize = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 15
  %10 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %bufsize, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_pgtable_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_pgtable_build(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa7134_alsa_dma_init(ptr nocapture noundef %dev, i32 noundef %nr_pages) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %nr_pages, 12
  %call = tail call noalias ptr @vmalloc_32(i32 noundef %shl) #15
  %vaddr = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 17
  %0 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %vaddr, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.body, label %do.body7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7134_alsa_dma_init.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7134_alsa_dma_init, %if.then5)) #10
          to label %cleanup [label %if.then5], !srcloc !164

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7134_alsa_dma_init.__UNIQUE_ID_ddebug401, ptr noundef nonnull @.str.50, i32 noundef %nr_pages) #10
  br label %cleanup

do.body7:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @saa7134_alsa_dma_init.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@saa7134_alsa_dma_init, %if.then19)) #10
          to label %do.end24 [label %if.then19], !srcloc !164

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vaddr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @saa7134_alsa_dma_init.__UNIQUE_ID_ddebug402, ptr noundef nonnull @.str.52, ptr noundef %2, i32 noundef %shl) #10
  br label %do.end24

do.end24:                                         ; preds = %if.then19, %do.body7
  %3 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vaddr, align 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 %shl)
  %nr_pages27 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 20
  %6 = ptrtoint ptr %nr_pages27 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %nr_pages, ptr %nr_pages27, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_pages, i32 20) #10
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %retval.0.i78 = select i1 %8, i32 -1, i32 %9
  %call30 = tail call noalias ptr @vzalloc(i32 noundef %retval.0.i78) #15
  %sglist = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 10, i32 18
  %10 = ptrtoint ptr %sglist to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call30, ptr %sglist, align 4
  %cmp32 = icmp eq ptr %call30, null
  br i1 %cmp32, label %do.end24.vzalloc_err_crit_edge, label %if.end34

do.end24.vzalloc_err_crit_edge:                   ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %vzalloc_err

if.end34:                                         ; preds = %do.end24
  %11 = ptrtoint ptr %nr_pages27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_pages27, align 4
  tail call void @sg_init_table(ptr noundef nonnull %call30, i32 noundef %12) #10
  %13 = ptrtoint ptr %nr_pages27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_pages27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3881.not = icmp eq i32 %14, 0
  br i1 %cmp3881.not, label %if.end34.cleanup_crit_edge, label %if.end34.for.body_crit_edge

if.end34.for.body_crit_edge:                      ; preds = %if.end34
  br label %for.body

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %sg_set_page.exit.for.body_crit_edge, %if.end34.for.body_crit_edge
  %i.082 = phi i32 [ %inc, %sg_set_page.exit.for.body_crit_edge ], [ 0, %if.end34.for.body_crit_edge ]
  %15 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vaddr, align 4
  %mul = shl i32 %i.082, 12
  %add.ptr = getelementptr i8, ptr %16, i32 %mul
  %call40 = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr) #10
  %cmp41 = icmp eq ptr %call40, null
  %17 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sglist, align 4
  br i1 %cmp41, label %vmalloc_to_page_err, label %if.end43

if.end43:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.scatterlist, ptr %18, i32 %i.082
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %call40 to i32
  %and2.i.i = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !200

do.body5.i.i:                                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !201
  unreachable

do.body11.i.i:                                    ; preds = %if.end43
  %and.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !200

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #10, !srcloc !202
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %20, 3
  %or.i.i = or i32 %and.i.i, %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or.i.i, ptr %arrayidx, align 4
  %offset1.i = getelementptr %struct.scatterlist, ptr %18, i32 %i.082, i32 1
  %23 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.scatterlist, ptr %18, i32 %i.082, i32 2
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4096, ptr %length.i, align 4
  %inc = add nuw i32 %i.082, 1
  %25 = ptrtoint ptr %nr_pages27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_pages27, align 4
  %cmp38 = icmp ult i32 %inc, %26
  br i1 %cmp38, label %sg_set_page.exit.for.body_crit_edge, label %sg_set_page.exit.cleanup_crit_edge

sg_set_page.exit.cleanup_crit_edge:               ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sg_set_page.exit.for.body_crit_edge:              ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

vmalloc_to_page_err:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vfree(ptr noundef %18) #10
  %27 = ptrtoint ptr %sglist to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %sglist, align 4
  br label %vzalloc_err

vzalloc_err:                                      ; preds = %vmalloc_to_page_err, %do.end24.vzalloc_err_crit_edge
  %28 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vaddr, align 4
  tail call void @vfree(ptr noundef %29) #10
  %30 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %vaddr, align 4
  br label %cleanup

cleanup:                                          ; preds = %vzalloc_err, %sg_set_page.exit.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ -12, %vzalloc_err ], [ -12, %if.then5 ], [ -12, %do.body ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %sg_set_page.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_32(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_signed(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_big_endian(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_set_dmabits(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !48, !49, !51, !52, !53, !54, !56, !57, !59, !61, !62, !63, !65, !67, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !116, !117, !118, !120, !121, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !142, !144, !146, !147, !148}
!llvm.module.flags = !{!149, !150, !151, !152, !153, !154, !155, !156}
!llvm.ident = !{!157}

!0 = !{ptr @__param_index, !1, !"__param_index", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 38, i32 1}
!2 = !{ptr @__UNIQUE_ID_indextype391, !1, !"__UNIQUE_ID_indextype391", i1 false, i1 false}
!3 = !{ptr @__param_enable, !4, !"__param_enable", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 39, i32 1}
!5 = !{ptr @__UNIQUE_ID_enabletype392, !4, !"__UNIQUE_ID_enabletype392", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_index393, !7, !"__UNIQUE_ID_index393", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 40, i32 1}
!8 = !{ptr @__UNIQUE_ID_enable394, !9, !"__UNIQUE_ID_enable394", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 41, i32 1}
!10 = !{ptr @__initcall__kmod_saa7134_alsa__404_1260_saa7134_alsa_init7, !11, !"__initcall__kmod_saa7134_alsa__404_1260_saa7134_alsa_init7", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1260, i32 1}
!12 = !{ptr @__exitcall_saa7134_alsa_exit, !13, !"__exitcall_saa7134_alsa_exit", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1261, i32 1}
!14 = !{ptr @__UNIQUE_ID_file405, !15, !"__UNIQUE_ID_file405", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1262, i32 1}
!16 = !{ptr @__UNIQUE_ID_license406, !15, !"__UNIQUE_ID_license406", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_author407, !18, !"__UNIQUE_ID_author407", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1263, i32 1}
!19 = !{ptr @__param_str_index, !1, !"__param_str_index", i1 false, i1 false}
!20 = !{ptr @__param_arr_index, !1, !"__param_arr_index", i1 false, i1 false}
!21 = !{ptr @index, !22, !"index", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 34, i32 12}
!23 = !{ptr @__param_str_enable, !4, !"__param_str_enable", i1 false, i1 false}
!24 = !{ptr @__param_arr_enable, !4, !"__param_arr_enable", i1 false, i1 false}
!25 = !{ptr @enable, !26, !"enable", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 36, i32 12}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1222, i32 2}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @saa7134_alsa_init._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @saa7134_alsa_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1226, i32 4}
!35 = !{ptr @saa7134_alsa_init._entry.3, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @saa7134_alsa_init._entry_ptr.5, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1233, i32 3}
!39 = !{ptr @saa7134_alsa_init._entry.6, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @saa7134_alsa_init._entry_ptr.8, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1132, i32 24}
!43 = !{ptr @alsa_card_saa7134_create.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1139, i32 2}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @alsa_card_saa7134_create.__key.11, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1140, i32 2}
!48 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1155, i32 3}
!51 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @alsa_card_saa7134_create._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @alsa_card_saa7134_create._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @alsa_card_saa7134_create.__key.15, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1162, i32 2}
!56 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1173, i32 26}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1176, i32 2}
!61 = !{ptr @alsa_card_saa7134_create._entry.18, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @alsa_card_saa7134_create._entry_ptr.20, !60, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"id", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 35, i32 14}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 215, i32 3}
!67 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @saa7134_alsa_irq.__UNIQUE_ID_ddebug400, !66, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!70 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 130, i32 3}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @saa7134_irq_alsa_done.__UNIQUE_ID_ddebug395, !72, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!75 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 134, i32 3}
!78 = !{ptr @saa7134_irq_alsa_done.__UNIQUE_ID_ddebug396, !77, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!79 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 145, i32 3}
!82 = !{ptr @saa7134_irq_alsa_done.__UNIQUE_ID_ddebug397, !81, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!83 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 151, i32 3}
!88 = !{ptr @saa7134_irq_alsa_done.__UNIQUE_ID_ddebug398, !87, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!89 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 162, i32 2}
!92 = !{ptr @saa7134_irq_alsa_done.__UNIQUE_ID_ddebug399, !91, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!93 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1068, i32 27}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1042, i32 1}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1043, i32 1}
!101 = !{ptr @snd_saa7134_volume_controls, !102, !"snd_saa7134_volume_controls", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1041, i32 32}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1048, i32 1}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1049, i32 1}
!107 = !{ptr @snd_saa7134_capture_controls, !108, !"snd_saa7134_capture_controls", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1047, i32 32}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 890, i32 40}
!111 = !{ptr @snd_card_saa7134_capture_ops, !112, !"snd_card_saa7134_capture_ops", i1 false, i1 false}
!112 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 866, i32 33}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 803, i32 3}
!115 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @snd_card_saa7134_capture_open._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @snd_card_saa7134_capture_open._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @snd_card_saa7134_capture_open.__key, !119, !"__key", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 825, i32 2}
!120 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @snd_card_saa7134_capture, !122, !"snd_card_saa7134_capture", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 621, i32 38}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 264, i32 3}
!125 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @saa7134_alsa_dma_init.__UNIQUE_ID_ddebug401, !124, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!127 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.51, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 268, i32 2}
!130 = !{ptr @saa7134_alsa_dma_init.__UNIQUE_ID_ddebug402, !129, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!131 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.53, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 304, i32 3}
!134 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @saa7134_alsa_dma_map._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @saa7134_alsa_dma_map._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 554, i32 2}
!139 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @snd_card_saa7134_capture_prepare.__UNIQUE_ID_ddebug403, !138, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!141 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @snd_saa7134_cards, !143, !"snd_saa7134_cards", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 77, i32 25}
!144 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/saa7134/saa7134-alsa.c", i32 1254, i32 2}
!146 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @saa7134_alsa_exit._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @saa7134_alsa_exit._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{i32 1, !"wchar_size", i32 2}
!150 = !{i32 1, !"min_enum_size", i32 4}
!151 = !{i32 8, !"branch-target-enforcement", i32 0}
!152 = !{i32 8, !"sign-return-address", i32 0}
!153 = !{i32 8, !"sign-return-address-all", i32 0}
!154 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!155 = !{i32 7, !"uwtable", i32 1}
!156 = !{i32 7, !"frame-pointer", i32 2}
!157 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!158 = !{!"auto-init"}
!159 = !{i64 5040497}
!160 = !{i64 2158875404}
!161 = !{i64 2158875990}
!162 = !{i64 2158876319}
!163 = !{i64 5040079}
!164 = !{i64 2148545327, i64 2148545332, i64 2148545345, i64 2148545389, i64 2148545423, i64 2148545444}
!165 = !{i64 2158871263}
!166 = !{i64 2158907978}
!167 = !{i64 5040277}
!168 = !{i64 2158908157}
!169 = !{i64 5039882}
!170 = !{i64 2158909087}
!171 = !{i64 2158909266}
!172 = !{i64 2158910212}
!173 = !{i64 2158910392}
!174 = !{i64 2158911323}
!175 = !{i64 2158911503}
!176 = !{i64 2158890062}
!177 = !{i64 2158890241}
!178 = !{i64 2158891106}
!179 = !{i64 2158891285}
!180 = !{i64 2158892166}
!181 = !{i64 2158892345}
!182 = !{i64 2158893215}
!183 = !{i64 2158893394}
!184 = !{i64 2158894259}
!185 = !{i64 2158894438}
!186 = !{i64 2158894871}
!187 = !{!"branch_weights", i32 1, i32 2000}
!188 = !{i64 2158887971, i64 2158888476, i64 2158888008, i64 2158888064, i64 2158888098, i64 2158888122, i64 2158888163, i64 2158888184, i64 2158888212, i64 2158888246}
!189 = !{i64 2158886245, i64 2158886750, i64 2158886282, i64 2158886338, i64 2158886372, i64 2158886396, i64 2158886437, i64 2158886458, i64 2158886486, i64 2158886520}
!190 = !{i64 2158895992}
!191 = !{i64 2158896453}
!192 = !{i64 2158896920}
!193 = !{i64 2158897301}
!194 = !{i64 2158897716}
!195 = !{i64 2158898313}
!196 = !{i64 2158901665}
!197 = !{i64 2158902231}
!198 = !{i64 2158902817}
!199 = !{i64 2158903355}
!200 = !{!"branch_weights", i32 2000, i32 1}
!201 = !{i64 2154417193, i64 2154417685, i64 2154417230, i64 2154417286, i64 2154417320, i64 2154417344, i64 2154417385, i64 2154417406, i64 2154417434, i64 2154417468}
!202 = !{i64 2154418803, i64 2154419295, i64 2154418840, i64 2154418896, i64 2154418930, i64 2154418954, i64 2154418995, i64 2154419016, i64 2154419044, i64 2154419078}
