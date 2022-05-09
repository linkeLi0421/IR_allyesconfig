; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx23885/cx23885-alsa.c_pt.bc'
source_filename = "../drivers/media/pci/cx23885/cx23885-alsa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cx23885_dev = type { %struct.atomic_t, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, i8, i8, i32, i32, ptr, ptr, i32, %struct.spinlock, i32, i32, [3 x %struct.cx23885_i2c], i32, %struct.mutex, %struct.mutex, i32, [32 x i8], %struct.cx23885_tsport, %struct.cx23885_tsport, ptr, i32, i32, i32, i32, i64, i32, i8, i32, i32, i8, ptr, %struct.work_struct, ptr, %struct.work_struct, i32, %struct.work_struct, i32, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, i32, i32, i32, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.spinlock, i32, %struct.cx2341x_handler, ptr, %struct.vb2_queue, %struct.cx23885_tvnorm, ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx23885_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cx23885_tsport = type { ptr, i32, i32, %struct.vb2_dvb_frontends, %struct.cx23885_dmaqueue, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.dvb_frontend, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.143], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.143 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.144 }>
%union.anon.144 = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.cx23885_dmaqueue = type { %struct.list_head, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.146, %struct.anon.147, %struct.anon.148, %struct.anon.149, %struct.anon.150, %struct.anon.151, %struct.anon.152, %struct.anon.153 }
%struct.anon.146 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.147 = type { ptr, ptr }
%struct.anon.148 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.149 = type { ptr, ptr }
%struct.anon.150 = type { ptr, ptr, ptr }
%struct.anon.151 = type { ptr, ptr }
%struct.anon.152 = type { ptr, ptr }
%struct.anon.153 = type { ptr, ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx23885_tvnorm = type { ptr, i64, i32, i32 }
%struct.sram_channel = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cx23885_audio_dev = type { ptr, ptr, ptr, %struct.spinlock, %struct.atomic_t, i32, i32, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.142, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.142 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.cx23885_audio_buffer = type { i32, %struct.cx23885_riscmem, ptr, ptr, i32, i32 }
%struct.cx23885_riscmem = type { i32, ptr, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__param_str_disable_analog_audio = internal constant [29 x i8] c"cx23885.disable_analog_audio\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@disable_analog_audio = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_analog_audio = internal constant %struct.kernel_param { ptr @__param_str_disable_analog_audio, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @disable_analog_audio } }, section "__param", align 4
@__UNIQUE_ID_disable_analog_audiotype391 = internal constant [42 x i8] c"cx23885.parmtype=disable_analog_audio:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_analog_audio392 = internal constant [67 x i8] c"cx23885.parm=disable_analog_audio:disable analog audio ALSA driver\00", section ".modinfo", align 1
@__param_str_audio_debug = internal constant [20 x i8] c"cx23885.audio_debug\00", align 1
@audio_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_audio_debug = internal constant %struct.kernel_param { ptr @__param_str_audio_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @audio_debug } }, section "__param", align 4
@__UNIQUE_ID_audio_debugtype393 = internal constant [33 x i8] c"cx23885.parmtype=audio_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_audio_debug394 = internal constant [62 x i8] c"cx23885.parm=audio_debug:enable debug messages [analog audio]\00", section ".modinfo", align 1
@cx23885_audio_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014cx23885: %s/1: Audio risc op code error\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx23885_audio_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/pci/cx23885/cx23885-alsa.c\00", [55 x i8] zeroinitializer }, align 32
@cx23885_audio_irq._entry_ptr = internal global ptr @cx23885_audio_irq._entry, section ".printk_index", align 4
@cx23885_audio_irq._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017cx23885: %s: alsa: Downstream sync error\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_audio_irq._entry_ptr.5 = internal global ptr @cx23885_audio_irq._entry.3, section ".printk_index", align 4
@cx23885_audio_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\014cx23885: %s(): Missing SRAM channel configuration for analog TV Audio\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx23885_audio_register\00", [41 x i8] zeroinitializer }, align 32
@cx23885_audio_register._entry_ptr = internal global ptr @cx23885_audio_register._entry, section ".printk_index", align 4
@cx23885_audio_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CX23885 Digital\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX23885\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Conexant CX23885\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s at %s\00", [23 x i8] zeroinitializer }, align 32
@cx23885_audio_register._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.2, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: alsa: registered ALSA audio device\0A\00", [45 x i8] zeroinitializer }, align 32
@cx23885_audio_register._entry_ptr.15 = internal global ptr @cx23885_audio_register._entry.13, section ".printk_index", align 4
@cx23885_audio_register._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013cx23885: %s(): Failed to register analog audio adapter\0A\00", [38 x i8] zeroinitializer }, align 32
@cx23885_audio_register._entry_ptr.18 = internal global ptr @cx23885_audio_register._entry.16, section ".printk_index", align 4
@snd_cx23885_pcm_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cx23885_pcm_open, ptr @snd_cx23885_close, ptr null, ptr @snd_cx23885_hw_params, ptr @snd_cx23885_hw_free, ptr @snd_cx23885_prepare, ptr @snd_cx23885_card_trigger, ptr null, ptr @snd_cx23885_pointer, ptr null, ptr null, ptr null, ptr null, ptr @snd_cx23885_page, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_cx23885_pcm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013cx23885: BUG: cx23885 can't find device struct. Can't proceed with open\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_cx23885_pcm_open\00", [43 x i8] zeroinitializer }, align 32
@snd_cx23885_pcm_open._entry_ptr = internal global ptr @snd_cx23885_pcm_open._entry, section ".printk_index", align 4
@snd_cx23885_digital_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 4, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 1048576, i32 1024, i32 1024, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_cx23885_pcm_open._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017cx23885: %s: alsa: Error opening PCM!\0A\00", [55 x i8] zeroinitializer }, align 32
@snd_cx23885_pcm_open._entry_ptr.23 = internal global ptr @snd_cx23885_pcm_open._entry.21, section ".printk_index", align 4
@dsp_buffer_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017cx23885: %s: alsa: Freeing buffer\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dsp_buffer_free\00", [16 x i8] zeroinitializer }, align 32
@dsp_buffer_free._entry_ptr = internal global ptr @dsp_buffer_free._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cx23885_alsa_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017cx23885: %s: alsa: vmalloc_32(%lu pages) failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx23885_alsa_dma_init\00", [42 x i8] zeroinitializer }, align 32
@cx23885_alsa_dma_init._entry_ptr = internal global ptr @cx23885_alsa_dma_init._entry, section ".printk_index", align 4
@cx23885_alsa_dma_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017cx23885: %s: alsa: vmalloc is at addr %p, size=%lu\0A\00", [42 x i8] zeroinitializer }, align 32
@cx23885_alsa_dma_init._entry_ptr.30 = internal global ptr @cx23885_alsa_dma_init._entry.28, section ".printk_index", align 4
@cx23885_alsa_dma_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014cx23885: %s: cx23885_alsa_map_sg failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx23885_alsa_dma_map\00", [43 x i8] zeroinitializer }, align 32
@cx23885_alsa_dma_map._entry_ptr = internal global ptr @cx23885_alsa_dma_map._entry, section ".printk_index", align 4
@cx23885_start_audio_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017cx23885: %s: alsa: %s()\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cx23885_start_audio_dma\00", [40 x i8] zeroinitializer }, align 32
@cx23885_start_audio_dma._entry_ptr = internal global ptr @cx23885_start_audio_dma._entry, section ".printk_index", align 4
@cx23885_start_audio_dma._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\017cx23885: %s: alsa: Start audio DMA, %d B/line, %d lines/FIFO, %d periods, %d byte buffer\0A\00", [36 x i8] zeroinitializer }, align 32
@cx23885_start_audio_dma._entry_ptr.37 = internal global ptr @cx23885_start_audio_dma._entry.35, section ".printk_index", align 4
@cx23885_stop_audio_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017cx23885: %s: alsa: Stopping audio DMA\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx23885_stop_audio_dma\00", [41 x i8] zeroinitializer }, align 32
@cx23885_stop_audio_dma._entry_ptr = internal global ptr @cx23885_stop_audio_dma._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"disable_analog_audio\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 44, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant [12 x i8] c"audio_debug\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 48, i32 21 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 238, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 245, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 544, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 559, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 561, i32 33 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 565, i32 24 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 566, i32 27 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 567, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 573, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 580, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"snd_cx23885_pcm_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 496, i32 33 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 318, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [23 x i8] c"snd_cx23885_digital_hw\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 287, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 342, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 265, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 80, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 84, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 120, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 158, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 177, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private constant [44 x i8] c"../drivers/media/pci/cx23885/cx23885-alsa.c\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 207, i32 2 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_audio_debug394, ptr @__UNIQUE_ID_audio_debugtype393, ptr @__UNIQUE_ID_disable_analog_audio392, ptr @__UNIQUE_ID_disable_analog_audiotype391, ptr @__param_audio_debug, ptr @__param_disable_analog_audio, ptr @cx23885_alsa_dma_init._entry, ptr @cx23885_alsa_dma_init._entry.28, ptr @cx23885_alsa_dma_init._entry_ptr, ptr @cx23885_alsa_dma_init._entry_ptr.30, ptr @cx23885_alsa_dma_map._entry, ptr @cx23885_alsa_dma_map._entry_ptr, ptr @cx23885_audio_irq._entry, ptr @cx23885_audio_irq._entry.3, ptr @cx23885_audio_irq._entry_ptr, ptr @cx23885_audio_irq._entry_ptr.5, ptr @cx23885_audio_register._entry, ptr @cx23885_audio_register._entry.13, ptr @cx23885_audio_register._entry.16, ptr @cx23885_audio_register._entry_ptr, ptr @cx23885_audio_register._entry_ptr.15, ptr @cx23885_audio_register._entry_ptr.18, ptr @cx23885_start_audio_dma._entry, ptr @cx23885_start_audio_dma._entry.35, ptr @cx23885_start_audio_dma._entry_ptr, ptr @cx23885_start_audio_dma._entry_ptr.37, ptr @cx23885_stop_audio_dma._entry, ptr @cx23885_stop_audio_dma._entry_ptr, ptr @dsp_buffer_free._entry, ptr @dsp_buffer_free._entry_ptr, ptr @snd_cx23885_pcm_open._entry, ptr @snd_cx23885_pcm_open._entry.21, ptr @snd_cx23885_pcm_open._entry_ptr, ptr @snd_cx23885_pcm_open._entry_ptr.23, ptr @disable_analog_audio, ptr @audio_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @cx23885_audio_register.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @snd_cx23885_pcm_ops, ptr @.str.19, ptr @.str.20, ptr @snd_cx23885_digital_hw, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_analog_audio to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_audio_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_audio_irq._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_audio_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_audio_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_audio_register._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_audio_register._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx23885_pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx23885_pcm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx23885_digital_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx23885_pcm_open._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_buffer_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_alsa_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_alsa_dma_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_alsa_dma_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_start_audio_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_start_audio_dma._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_stop_audio_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_audio_irq(ptr noundef %dev, i32 noundef %status, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_dev = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 59
  %0 = ptrtoint ptr %audio_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %audio_dev, align 8
  %and = and i32 %mask, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %status)
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %4, i32 65557
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !106
  %and1 = and i32 %status, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %do.body.if.end17_crit_edge, label %do.end5

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end5:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr10 = getelementptr i32, ptr %6, i32 327696
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #9, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %8 = and i32 %7, -285212673
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %add.ptr16 = getelementptr i32, ptr %10, i32 327696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %8) #9, !srcloc !106
  %sram_channels = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 22
  %11 = ptrtoint ptr %sram_channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sram_channels, align 8
  %arrayidx = getelementptr %struct.sram_channel, ptr %12, i32 6
  tail call void @cx23885_sram_channel_dump(ptr noundef %dev, ptr noundef %arrayidx) #9
  br label %if.end17

if.end17:                                         ; preds = %do.end5, %do.body.if.end17_crit_edge
  %and18 = and i32 %status, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end40, label %do.body21

do.body21:                                        ; preds = %if.end17
  %13 = load i32, ptr @audio_debug, align 4
  %14 = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %14)
  %cmp22 = icmp ult i32 %14, -2
  br i1 %cmp22, label %do.end26, label %do.body21.do.body35_crit_edge

do.body21.do.body35_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body35

do.end26:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %name29 = getelementptr inbounds %struct.cx23885_dev, ptr %16, i32 0, i32 19
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name29) #12
  br label %do.body35

do.body35:                                        ; preds = %do.end26, %do.body21.do.body35_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr39 = getelementptr i32, ptr %18, i32 327692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 50331648) #9, !srcloc !106
  br label %cleanup

if.end40:                                         ; preds = %if.end17
  %and41 = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %if.then43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %count = getelementptr inbounds %struct.cx23885_audio_dev, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio, align 4
  %add.ptr47 = getelementptr i32, ptr %20, i32 327688
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #9, !srcloc !108
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #9
  %23 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 %22, ptr %count, align 4
  %substream = getelementptr inbounds %struct.cx23885_audio_dev, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.end40.cleanup_crit_edge, %do.body35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body35 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then43 ], [ 1, %if.end40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_sram_channel_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cx23885_audio_register(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %pcm.i = alloca ptr, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #9
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !112
  %1 = load i32, ptr @disable_analog_audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sram_channels = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 22
  %2 = ptrtoint ptr %sram_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sram_channels, align 8
  %cmds_start = getelementptr %struct.sram_channel, ptr %3, i32 6, i32 1
  %4 = ptrtoint ptr %cmds_start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmds_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.end, label %if.end2

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call4 = call i32 @snd_card_new(ptr noundef %dev3, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 80, ptr noundef nonnull %card) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end2.do.end49_crit_edge, label %if.end7

if.end2.do.end49_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end49

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %11, align 4
  %13 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pci, align 4
  %pci10 = getelementptr inbounds %struct.cx23885_audio_dev, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %pci10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %pci10, align 4
  %16 = load ptr, ptr %card, align 4
  %card11 = getelementptr inbounds %struct.cx23885_audio_dev, ptr %11, i32 0, i32 2
  %17 = ptrtoint ptr %card11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %card11, align 4
  %lock = getelementptr inbounds %struct.cx23885_audio_dev, ptr %11, i32 0, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @cx23885_audio_register.__key, i16 noundef signext 3) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #9
  %18 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !112
  %19 = ptrtoint ptr %card11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card11, align 4
  %call.i = call i32 @snd_pcm_new(ptr noundef %20, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %pcm.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %snd_cx23885_pcm.exit.thread, label %if.end19

snd_cx23885_pcm.exit.thread:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #9
  br label %error

if.end19:                                         ; preds = %if.end7
  %21 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcm.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %11, ptr %private_data.i, align 8
  %name1.i = getelementptr inbounds %struct.snd_pcm, ptr %22, i32 0, i32 7
  %call2.i = call i32 @strscpy(ptr noundef %name1.i, ptr noundef nonnull @.str.9, i32 noundef 80) #9
  %24 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %25, i32 noundef 1, ptr noundef nonnull @snd_cx23885_pcm_ops) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #9
  %26 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 2
  %call20 = call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @.str.10, i32 noundef 16) #9
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 3
  %30 = call ptr @memcpy(ptr %shortname, ptr @.str.11, i32 17)
  %longname = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 4
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  %call27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.12, ptr noundef %shortname, ptr noundef %name)
  %31 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card, align 4
  %call28 = call i32 @snd_card_register(ptr noundef %32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end19.error_crit_edge, label %do.body32

if.end19.error_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

do.body32:                                        ; preds = %if.end19
  %33 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp33.not = icmp eq i32 %33, -1
  br i1 %cmp33.not, label %do.body32.cleanup_crit_edge, label %do.end37

do.body32.cleanup_crit_edge:                      ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end37:                                         ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %11, align 4
  %name40 = getelementptr inbounds %struct.cx23885_dev, ptr %35, i32 0, i32 19
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name40) #12
  br label %cleanup

error:                                            ; preds = %if.end19.error_crit_edge, %snd_cx23885_pcm.exit.thread
  %36 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card, align 4
  %call46 = call i32 @snd_card_free(ptr noundef %37) #9
  br label %do.end49

do.end49:                                         ; preds = %error, %if.end2.do.end49_crit_edge
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.7) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %do.end37, %do.body32.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end49 ], [ null, %entry.cleanup_crit_edge ], [ %11, %do.end37 ], [ %11, %do.body32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #9
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_audio_unregister(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_dev = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 59
  %0 = ptrtoint ptr %audio_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %audio_dev, align 8
  %card = getelementptr inbounds %struct.cx23885_audio_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %call = tail call i32 @snd_card_free(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx23885_pcm_open(ptr noundef %substream) #0 align 64 {
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
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_pcm_hw_constraint_pow2(ptr noundef %3, i32 noundef 0, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.body15, label %if.end4

if.end4:                                          ; preds = %if.end
  %substream5 = getelementptr inbounds %struct.cx23885_audio_dev, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %substream5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream5, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw, ptr @snd_cx23885_digital_hw, i32 64)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %sram_channels = getelementptr inbounds %struct.cx23885_dev, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %sram_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sram_channels, align 8
  %fifo_size = getelementptr %struct.sram_channel, ptr %9, i32 6, i32 5
  %10 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %11)
  %cmp6.not = icmp eq i32 %11, 4096
  br i1 %cmp6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %div42 = lshr i32 %11, 2
  %and = and i32 %div42, 1073741816
  %period_bytes_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 8
  %12 = ptrtoint ptr %period_bytes_min to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %period_bytes_min, align 8
  %period_bytes_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 9
  %13 = ptrtoint ptr %period_bytes_max to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %period_bytes_max, align 4
  br label %cleanup

do.body15:                                        ; preds = %if.end
  %14 = load i32, ptr @audio_debug, align 4
  %15 = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %15)
  %cmp16 = icmp ult i32 %15, -2
  br i1 %cmp16, label %do.end20, label %do.body15.cleanup_crit_edge

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end20:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %17, i32 0, i32 19
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.body15.cleanup_crit_edge, %if.then7, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.then7 ], [ 0, %if.end4.cleanup_crit_edge ], [ %call2, %do.end20 ], [ %call2, %do.body15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cx23885_close(ptr nocapture noundef readnone %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx23885_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #0 align 64 {
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
  %period_size = getelementptr inbounds %struct.cx23885_audio_dev, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %period_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %period_size, align 4
  %arrayidx.i.i115 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %arrayidx.i.i115 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i115, align 4
  %num_periods = getelementptr inbounds %struct.cx23885_audio_dev, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %num_periods to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %num_periods, align 4
  %15 = load i32, ptr %arrayidx.i.i115, align 4
  %mul = mul i32 %15, %10
  %dma_size = getelementptr inbounds %struct.cx23885_audio_dev, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %dma_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool8.not = icmp eq i32 %mul, 0
  br i1 %tobool8.not, label %do.body13, label %do.body20, !prof !113

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/cx23885/cx23885-alsa.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 374, 0\0A.popsection", ""() #9, !srcloc !114
  unreachable

do.body20:                                        ; preds = %if.end
  %17 = tail call i32 @llvm.ctpop.i32(i32 %13), !range !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %tobool23.not = icmp ult i32 %17, 2
  br i1 %tobool23.not, label %do.end39, label %do.body31, !prof !116

do.body31:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/cx23885/cx23885-alsa.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 375, 0\0A.popsection", ""() #9, !srcloc !117
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
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %call7.i.i, align 8
  %buf44 = getelementptr inbounds %struct.cx23885_audio_dev, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %buf44 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %buf44, align 4
  %23 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_size, align 4
  %add = add i32 %24, 4095
  %shr = lshr i32 %add, 12
  %shl.i = and i32 %add, -4096
  %call.i = tail call noalias ptr @vmalloc_32(i32 noundef %shl.i) #14
  %vaddr.i = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %vaddr.i, align 4
  %cmp.i = icmp eq ptr %call.i, null
  %26 = load i32, ptr @audio_debug, align 4
  %27 = add i32 %26, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %27)
  %cmp3.i = icmp ult i32 %27, -2
  br i1 %cmp.i, label %do.body.i, label %do.body10.i

do.body.i:                                        ; preds = %if.end42
  br i1 %cmp3.i, label %do.end.i, label %do.body.i.error_crit_edge

do.body.i.error_crit_edge:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %name.i = getelementptr inbounds %struct.cx23885_dev, ptr %29, i32 0, i32 19
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name.i, i32 noundef %shr) #12
  br label %error

do.body10.i:                                      ; preds = %if.end42
  br i1 %cmp3.i, label %do.end16.i, label %do.body10.i.do.end26.i_crit_edge

do.body10.i.do.end26.i_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26.i

do.end16.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %name19.i = getelementptr inbounds %struct.cx23885_dev, ptr %31, i32 0, i32 19
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name19.i, ptr noundef nonnull %call.i, i32 noundef %shl.i) #12
  br label %do.end26.i

do.end26.i:                                       ; preds = %do.end16.i, %do.body10.i.do.end26.i_crit_edge
  %32 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vaddr.i, align 4
  %34 = call ptr @memset(ptr %33, i32 0, i32 %shl.i)
  %nr_pages29.i = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %call7.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %nr_pages29.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr, ptr %nr_pages29.i, align 8
  %36 = mul nuw nsw i32 %shr, 20
  %call32.i = tail call noalias ptr @vzalloc(i32 noundef %36) #14
  %sglist.i = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %call7.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %sglist.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call32.i, ptr %sglist.i, align 8
  %cmp34.i = icmp eq ptr %call32.i, null
  br i1 %cmp34.i, label %do.end26.i.vzalloc_err.i_crit_edge, label %if.end36.i

do.end26.i.vzalloc_err.i_crit_edge:               ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vzalloc_err.i

if.end36.i:                                       ; preds = %do.end26.i
  %38 = ptrtoint ptr %nr_pages29.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr_pages29.i, align 8
  tail call void @sg_init_table(ptr noundef nonnull %call32.i, i32 noundef %39) #9
  %40 = ptrtoint ptr %nr_pages29.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_pages29.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp4079.not.i = icmp eq i32 %41, 0
  br i1 %cmp4079.not.i, label %if.end36.i.if.end50_crit_edge, label %if.end36.i.for.body.i_crit_edge

if.end36.i.for.body.i_crit_edge:                  ; preds = %if.end36.i
  br label %for.body.i

if.end36.i.if.end50_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

for.body.i:                                       ; preds = %sg_set_page.exit.i.for.body.i_crit_edge, %if.end36.i.for.body.i_crit_edge
  %i.080.i = phi i32 [ %inc.i, %sg_set_page.exit.i.for.body.i_crit_edge ], [ 0, %if.end36.i.for.body.i_crit_edge ]
  %42 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vaddr.i, align 4
  %mul.i = shl i32 %i.080.i, 12
  %add.ptr.i = getelementptr i8, ptr %43, i32 %mul.i
  %call42.i = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr.i) #9
  %cmp43.i = icmp eq ptr %call42.i, null
  %44 = ptrtoint ptr %sglist.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sglist.i, align 8
  br i1 %cmp43.i, label %vmalloc_to_page_err.i, label %if.end45.i

if.end45.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %45, i32 %i.080.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 4
  %48 = ptrtoint ptr %call42.i to i32
  %and2.i.i.i = and i32 %48, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !116

do.body5.i.i.i:                                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !118
  unreachable

do.body11.i.i.i:                                  ; preds = %if.end45.i
  %and.i.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_page.exit.i, label %do.body19.i.i.i, !prof !116

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !119
  unreachable

sg_set_page.exit.i:                               ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %47, 3
  %or.i.i.i = or i32 %and.i.i.i, %48
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or.i.i.i, ptr %arrayidx.i, align 4
  %offset1.i.i = getelementptr %struct.scatterlist, ptr %45, i32 %i.080.i, i32 1
  %50 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %45, i32 %i.080.i, i32 2
  %51 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4096, ptr %length.i.i, align 4
  %inc.i = add nuw i32 %i.080.i, 1
  %52 = ptrtoint ptr %nr_pages29.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_pages29.i, align 8
  %cmp40.i = icmp ult i32 %inc.i, %53
  br i1 %cmp40.i, label %sg_set_page.exit.i.for.body.i_crit_edge, label %sg_set_page.exit.i.if.end50_crit_edge

sg_set_page.exit.i.if.end50_crit_edge:            ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

sg_set_page.exit.i.for.body.i_crit_edge:          ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

vmalloc_to_page_err.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vfree(ptr noundef %45) #9
  %54 = ptrtoint ptr %sglist.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %sglist.i, align 8
  br label %vzalloc_err.i

vzalloc_err.i:                                    ; preds = %vmalloc_to_page_err.i, %do.end26.i.vzalloc_err.i_crit_edge
  %55 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vaddr.i, align 4
  tail call void @vfree(ptr noundef %56) #9
  %57 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %vaddr.i, align 4
  br label %error

if.end50:                                         ; preds = %sg_set_page.exit.i.if.end50_crit_edge, %if.end36.i.if.end50_crit_edge
  %58 = ptrtoint ptr %buf44 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf44, align 4
  %pci.i = getelementptr inbounds %struct.cx23885_audio_dev, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pci.i, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  %sglist.i118 = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %59, i32 0, i32 3
  %62 = ptrtoint ptr %sglist.i118 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sglist.i118, align 4
  %nr_pages.i = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %59, i32 0, i32 5
  %64 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr_pages.i, align 4
  %call.i119 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev2.i, ptr noundef %63, i32 noundef %65, i32 noundef 2, i32 noundef 0) #9
  %sglen.i = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %59, i32 0, i32 4
  %66 = ptrtoint ptr %sglen.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call.i119, ptr %sglen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp.i120 = icmp eq i32 %call.i119, 0
  br i1 %cmp.i120, label %cx23885_alsa_dma_map.exit.thread, label %if.end54

cx23885_alsa_dma_map.exit.thread:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #12
  br label %error

if.end54:                                         ; preds = %if.end50
  %67 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pci.i, align 4
  %risc = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %call7.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %sglist.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sglist.i, align 8
  %71 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %period_size, align 4
  %73 = ptrtoint ptr %num_periods to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_periods, align 4
  %call57 = tail call i32 @cx23885_risc_databuffer(ptr noundef %68, ptr noundef %risc, ptr noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end54.error_crit_edge, label %if.end60

if.end54.error_crit_edge:                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %jmp = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %call7.i.i, i32 0, i32 1, i32 2
  %75 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %jmp, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 369, ptr %76, align 4
  %dma = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %call7.i.i, i32 0, i32 1, i32 3
  %78 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma, align 8
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %81 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %jmp, align 4
  %arrayidx65 = getelementptr i32, ptr %82, i32 1
  %83 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %80, ptr %arrayidx65, align 4
  %84 = load ptr, ptr %jmp, align 4
  %arrayidx68 = getelementptr i32, ptr %84, i32 2
  %85 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %arrayidx68, align 4
  %86 = ptrtoint ptr %buf44 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buf44, align 4
  %vaddr = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vaddr, align 4
  %90 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %runtime, align 4
  %dma_area71 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %91, i32 0, i32 50
  %92 = ptrtoint ptr %dma_area71 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %dma_area71, align 4
  %93 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dma_size, align 4
  %95 = load ptr, ptr %runtime, align 4
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %95, i32 0, i32 52
  %96 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %94, ptr %dma_bytes, align 4
  %97 = load ptr, ptr %runtime, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %97, i32 0, i32 51
  %98 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %dma_addr, align 8
  br label %cleanup

error:                                            ; preds = %if.end54.error_crit_edge, %cx23885_alsa_dma_map.exit.thread, %vzalloc_err.i, %do.end.i, %do.body.i.error_crit_edge
  %ret.0 = phi i32 [ %call57, %if.end54.error_crit_edge ], [ -12, %cx23885_alsa_dma_map.exit.thread ], [ -12, %vzalloc_err.i ], [ -12, %do.end.i ], [ -12, %do.body.i.error_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %99 = ptrtoint ptr %buf44 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %buf44, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end60, %do.end39.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end60 ], [ -12, %do.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx23885_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
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
define internal i32 @snd_cx23885_prepare(ptr nocapture noundef readnone %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx23885_card_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.cx23885_audio_dev, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
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
  %buf1.i = getelementptr inbounds %struct.cx23885_audio_dev, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf1.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %sram_channels.i = getelementptr inbounds %struct.cx23885_dev, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %sram_channels.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sram_channels.i, align 8
  %arrayidx.i = getelementptr %struct.sram_channel, ptr %8, i32 6
  %9 = load i32, ptr @audio_debug, align 4
  %10 = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %10)
  %cmp.i = icmp ult i32 %10, -2
  br i1 %cmp.i, label %do.end.i, label %sw.bb.do.body7.i_crit_edge

sw.bb.do.body7.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.cx23885_dev, ptr %6, i32 0, i32 19
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name.i, ptr noundef nonnull @.str.34) #12
  br label %do.body7.i

do.body7.i:                                       ; preds = %do.end.i, %sw.bb.do.body7.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %lmmio.i = getelementptr inbounds %struct.cx23885_dev, ptr %6, i32 0, i32 8
  %11 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %12, i32 327696
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %14 = and i32 %13, -285212673
  %15 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio.i, align 4
  %add.ptr14.i = getelementptr i32, ptr %16, i32 327696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %14) #9, !srcloc !106
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %4, align 4
  %dma.i = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %4, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma.i, align 4
  %call16.i = tail call i32 @cx23885_sram_channel_setup(ptr noundef %18, ptr noundef %arrayidx.i, i32 noundef %20, i32 noundef %22) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %4, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %26 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio.i, align 4
  %add.ptr22.i = getelementptr i32, ptr %27, i32 327700
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %25) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio.i, align 4
  %add.ptr27.i = getelementptr i32, ptr %29, i32 327702
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 16777216) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio.i, align 4
  %add.ptr32.i = getelementptr i32, ptr %31, i32 327692
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 50331648) #9, !srcloc !106
  %count.i = getelementptr inbounds %struct.cx23885_audio_dev, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #9
  %32 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 0, ptr %count.i, align 4
  %33 = load i32, ptr @audio_debug, align 4
  %34 = add i32 %33, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %34)
  %cmp35.i = icmp ult i32 %34, -2
  br i1 %cmp35.i, label %do.end39.i, label %do.body7.i.do.body60.i_crit_edge

do.body7.i.do.body60.i_crit_edge:                 ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body60.i

do.end39.i:                                       ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %name42.i = getelementptr inbounds %struct.cx23885_dev, ptr %36, i32 0, i32 19
  %37 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %4, align 4
  %39 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lmmio.i, align 4
  %cmds_start.i = getelementptr %struct.sram_channel, ptr %8, i32 6, i32 1
  %41 = ptrtoint ptr %cmds_start.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cmds_start.i, align 4
  %add48.i = add i32 %42, 12
  %shr.i = lshr i32 %add48.i, 2
  %add.ptr49.i = getelementptr i32, ptr %40, i32 %shr.i
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i) #9, !srcloc !108
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  %shr53.i = lshr i32 %44, 1
  %num_periods.i = getelementptr inbounds %struct.cx23885_audio_dev, ptr %1, i32 0, i32 7
  %45 = ptrtoint ptr %num_periods.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_periods.i, align 4
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %4, align 4
  %mul.i = mul i32 %48, %46
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name42.i, i32 noundef %38, i32 noundef %shr53.i, i32 noundef %46, i32 noundef %mul.i) #12
  br label %do.body60.i

do.body60.i:                                      ; preds = %do.end39.i, %do.body7.i.do.body60.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lmmio.i, align 4
  %add.ptr64.i = getelementptr i32, ptr %50, i32 65556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i, i32 17826048) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  tail call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lmmio.i, align 4
  %add.ptr69.i = getelementptr i32, ptr %52, i32 65557
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 -1) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lmmio.i, align 4
  %add.ptr76.i = getelementptr i32, ptr %54, i32 65540
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76.i) #9, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %pci_irqmask.i = getelementptr inbounds %struct.cx23885_dev, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %pci_irqmask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pci_irqmask.i, align 4
  %60 = or i32 %55, 134217728
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #9
  %or90.i = or i32 %59, %61
  %62 = tail call i32 @llvm.bswap.i32(i32 %or90.i) #9
  %63 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lmmio.i, align 4
  %add.ptr92.i = getelementptr i32, ptr %64, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.i, i32 %62) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  tail call void @arm_heavy_mb() #9
  %65 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lmmio.i, align 4
  %add.ptr99.i = getelementptr i32, ptr %66, i32 65536
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr99.i) #9, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  %68 = or i32 %67, 536870912
  %69 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lmmio.i, align 4
  %add.ptr106.i = getelementptr i32, ptr %70, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.i, i32 %68) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !132
  tail call void @arm_heavy_mb() #9
  %71 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lmmio.i, align 4
  %add.ptr113.i = getelementptr i32, ptr %72, i32 327696
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr113.i) #9, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %74 = or i32 %73, 285212672
  %75 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lmmio.i, align 4
  %add.ptr120.i = getelementptr i32, ptr %76, i32 327696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120.i, i32 %74) #9, !srcloc !106
  %77 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i = icmp eq i32 %77, 0
  br i1 %tobool.not.i, label %do.body60.i.sw.epilog_crit_edge, label %if.then121.i

do.body60.i.sw.epilog_crit_edge:                  ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then121.i:                                     ; preds = %do.body60.i
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  tail call void @cx23885_sram_channel_dump(ptr noundef %79, ptr noundef %arrayidx.i) #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %82 = load i32, ptr @audio_debug, align 4
  %83 = add i32 %82, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %83)
  %cmp.i7 = icmp ult i32 %83, -2
  br i1 %cmp.i7, label %do.end.i10, label %sw.bb1.do.body6.i_crit_edge

sw.bb1.do.body6.i_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6.i

do.end.i10:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %name.i8 = getelementptr inbounds %struct.cx23885_dev, ptr %81, i32 0, i32 19
  %call.i9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name.i8) #12
  br label %do.body6.i

do.body6.i:                                       ; preds = %do.end.i10, %sw.bb1.do.body6.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %lmmio.i11 = getelementptr inbounds %struct.cx23885_dev, ptr %81, i32 0, i32 8
  %84 = ptrtoint ptr %lmmio.i11 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %lmmio.i11, align 4
  %add.ptr.i12 = getelementptr i32, ptr %85, i32 327696
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #9, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  %87 = and i32 %86, -285212673
  %88 = ptrtoint ptr %lmmio.i11 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lmmio.i11, align 4
  %add.ptr13.i = getelementptr i32, ptr %89, i32 327696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %87) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  tail call void @arm_heavy_mb() #9
  %90 = ptrtoint ptr %lmmio.i11 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %lmmio.i11, align 4
  %add.ptr20.i = getelementptr i32, ptr %91, i32 65540
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #9, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  %93 = and i32 %92, -134217729
  %94 = ptrtoint ptr %lmmio.i11 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %lmmio.i11, align 4
  %add.ptr27.i13 = getelementptr i32, ptr %95, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i13, i32 %93) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %96 = ptrtoint ptr %lmmio.i11 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %lmmio.i11, align 4
  %add.ptr34.i = getelementptr i32, ptr %97, i32 65556
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #9, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  %99 = and i32 %98, -17826049
  %100 = ptrtoint ptr %lmmio.i11 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %lmmio.i11, align 4
  %add.ptr41.i = getelementptr i32, ptr %101, i32 65556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 %99) #9, !srcloc !106
  %102 = load i32, ptr @audio_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i14 = icmp eq i32 %102, 0
  br i1 %tobool.not.i14, label %do.body6.i.sw.epilog_crit_edge, label %if.then42.i

do.body6.i.sw.epilog_crit_edge:                   ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then42.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 4
  %sram_channels.i15 = getelementptr inbounds %struct.cx23885_dev, ptr %81, i32 0, i32 22
  %105 = ptrtoint ptr %sram_channels.i15 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %sram_channels.i15, align 8
  %arrayidx.i16 = getelementptr %struct.sram_channel, ptr %106, i32 6
  tail call void @cx23885_sram_channel_dump(ptr noundef %104, ptr noundef %arrayidx.i16) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then42.i, %do.body6.i.sw.epilog_crit_edge, %if.then121.i, %do.body60.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %do.body60.i.sw.epilog_crit_edge ], [ 0, %if.then121.i ], [ 0, %do.body6.i.sw.epilog_crit_edge ], [ 0, %if.then42.i ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx23885_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
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
  %count2 = getelementptr inbounds %struct.cx23885_audio_dev, ptr %1, i32 0, i32 4
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
define internal ptr @snd_cx23885_page(ptr nocapture noundef readonly %substream, i32 noundef %offset) #0 align 64 {
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
  %dma_size = getelementptr inbounds %struct.cx23885_audio_dev, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !113

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/pci/cx23885/cx23885-alsa.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 263, 0\0A.popsection", ""() #9, !srcloc !140
  unreachable

do.body10:                                        ; preds = %entry
  %2 = load i32, ptr @audio_debug, align 4
  %3 = add i32 %2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %3)
  %cmp = icmp ult i32 %3, -3
  br i1 %cmp, label %do.end14, label %do.body10.do.end17_crit_edge

do.body10.do.end17_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

do.end14:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 4
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %5, i32 0, i32 19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name) #12
  br label %do.end17

do.end17:                                         ; preds = %do.end14, %do.body10.do.end17_crit_edge
  %buf1.i = getelementptr inbounds %struct.cx23885_audio_dev, ptr %chip, i32 0, i32 8
  %6 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf1.i, align 4
  %sglen.i = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sglen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %do.end17.cx23885_alsa_dma_unmap.exit_crit_edge, label %if.end.i

do.end17.cx23885_alsa_dma_unmap.exit_crit_edge:   ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx23885_alsa_dma_unmap.exit

if.end.i:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #11
  %pci.i = getelementptr inbounds %struct.cx23885_audio_dev, ptr %chip, i32 0, i32 1
  %10 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci.i, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %sglist.i = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %sglist.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sglist.i, align 4
  %nr_pages.i = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %7, i32 0, i32 5
  %14 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_pages.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev2.i, ptr noundef %13, i32 noundef %15, i32 noundef 2, i32 noundef 0) #9
  %16 = ptrtoint ptr %sglen.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sglen.i, align 4
  br label %cx23885_alsa_dma_unmap.exit

cx23885_alsa_dma_unmap.exit:                      ; preds = %if.end.i, %do.end17.cx23885_alsa_dma_unmap.exit_crit_edge
  %17 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf1.i, align 4
  %sglist.i1 = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %sglist.i1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sglist.i1, align 4
  tail call void @vfree(ptr noundef %20) #9
  %21 = ptrtoint ptr %sglist.i1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %sglist.i1, align 4
  %vaddr.i = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %18, i32 0, i32 2
  %22 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vaddr.i, align 4
  tail call void @vfree(ptr noundef %23) #9
  %24 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %vaddr.i, align 4
  %25 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buf1.i, align 4
  %risc21 = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %26, i32 0, i32 1
  %pci = getelementptr inbounds %struct.cx23885_audio_dev, ptr %chip, i32 0, i32 1
  %27 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pci, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %29 = ptrtoint ptr %risc21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %risc21, align 4
  %cpu = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %26, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpu, align 4
  %dma = getelementptr inbounds %struct.cx23885_audio_buffer, ptr %26, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev22, i32 noundef %30, ptr noundef %32, i32 noundef %34, i32 noundef 0) #9
  %35 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf1.i, align 4
  tail call void @kfree(ptr noundef %36) #9
  %37 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %buf1.i, align 4
  %38 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %dma_size, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_risc_databuffer(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local i32 @cx23885_sram_channel_setup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !30, !32, !34, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__param_disable_analog_audio, !1, !"__param_disable_analog_audio", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_disable_analog_audiotype391, !1, !"__UNIQUE_ID_disable_analog_audiotype391", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_disable_analog_audio392, !4, !"__UNIQUE_ID_disable_analog_audio392", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 46, i32 1}
!5 = !{ptr @__param_audio_debug, !6, !"__param_audio_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 49, i32 1}
!7 = !{ptr @__UNIQUE_ID_audio_debugtype393, !6, !"__UNIQUE_ID_audio_debugtype393", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_audio_debug394, !9, !"__UNIQUE_ID_audio_debug394", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 50, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 238, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cx23885_audio_irq._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @cx23885_audio_irq._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 245, i32 3}
!18 = !{ptr @cx23885_audio_irq._entry.3, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @cx23885_audio_irq._entry_ptr.5, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 544, i32 3}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cx23885_audio_register._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @cx23885_audio_register._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @cx23885_audio_register.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 559, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 561, i32 33}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 565, i32 24}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 566, i32 27}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 567, i32 26}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 573, i32 2}
!38 = !{ptr @cx23885_audio_register._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cx23885_audio_register._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 580, i32 2}
!42 = !{ptr @cx23885_audio_register._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @cx23885_audio_register._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @disable_analog_audio, !45, !"disable_analog_audio", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 44, i32 21}
!46 = !{ptr @audio_debug, !47, !"audio_debug", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 48, i32 21}
!48 = !{ptr @__param_str_disable_analog_audio, !1, !"__param_str_disable_analog_audio", i1 false, i1 false}
!49 = !{ptr @__param_str_audio_debug, !6, !"__param_str_audio_debug", i1 false, i1 false}
!50 = !{ptr @snd_cx23885_pcm_ops, !51, !"snd_cx23885_pcm_ops", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 496, i32 33}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 318, i32 3}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @snd_cx23885_pcm_open._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @snd_cx23885_pcm_open._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 342, i32 2}
!59 = !{ptr @snd_cx23885_pcm_open._entry.21, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @snd_cx23885_pcm_open._entry_ptr.23, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @snd_cx23885_digital_hw, !62, !"snd_cx23885_digital_hw", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 287, i32 38}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 265, i32 2}
!65 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dsp_buffer_free._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @dsp_buffer_free._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 80, i32 3}
!70 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cx23885_alsa_dma_init._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @cx23885_alsa_dma_init._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 84, i32 2}
!75 = !{ptr @cx23885_alsa_dma_init._entry.28, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @cx23885_alsa_dma_init._entry_ptr.30, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 120, i32 3}
!79 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cx23885_alsa_dma_map._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @cx23885_alsa_dma_map._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 158, i32 2}
!84 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @cx23885_start_audio_dma._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @cx23885_start_audio_dma._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 177, i32 2}
!89 = !{ptr @cx23885_start_audio_dma._entry.35, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @cx23885_start_audio_dma._entry_ptr.37, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/cx23885/cx23885-alsa.c", i32 207, i32 2}
!93 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @cx23885_stop_audio_dma._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @cx23885_stop_audio_dma._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i64 2158840054}
!106 = !{i64 5013162}
!107 = !{i64 2158843312}
!108 = !{i64 5013580}
!109 = !{i64 2158844371}
!110 = !{i64 2158846609}
!111 = !{i64 2158847420}
!112 = !{!"auto-init"}
!113 = !{!"branch_weights", i32 1, i32 2000}
!114 = !{i64 2158855380, i64 2158855885, i64 2158855417, i64 2158855473, i64 2158855507, i64 2158855531, i64 2158855572, i64 2158855593, i64 2158855621, i64 2158855655}
!115 = !{i32 0, i32 33}
!116 = !{!"branch_weights", i32 2000, i32 1}
!117 = !{i64 2158857081, i64 2158857586, i64 2158857118, i64 2158857174, i64 2158857208, i64 2158857232, i64 2158857273, i64 2158857294, i64 2158857322, i64 2158857356}
!118 = !{i64 2154390241, i64 2154390733, i64 2154390278, i64 2154390334, i64 2154390368, i64 2154390392, i64 2154390433, i64 2154390454, i64 2154390482, i64 2154390516}
!119 = !{i64 2154391851, i64 2154392343, i64 2154391888, i64 2154391944, i64 2154391978, i64 2154392002, i64 2154392043, i64 2154392064, i64 2154392092, i64 2154392126}
!120 = !{i64 2158815352}
!121 = !{i64 2158816411}
!122 = !{i64 2158816778}
!123 = !{i64 2158817291}
!124 = !{i64 2158817791}
!125 = !{i64 2158821178}
!126 = !{i64 2158821568}
!127 = !{i64 2158822158}
!128 = !{i64 2158823922}
!129 = !{i64 2158825175}
!130 = !{i64 2158826660}
!131 = !{i64 2158827745}
!132 = !{i64 2158829130}
!133 = !{i64 2158830203}
!134 = !{i64 2158833390}
!135 = !{i64 2158834449}
!136 = !{i64 2158835833}
!137 = !{i64 2158836912}
!138 = !{i64 2158838446}
!139 = !{i64 2158839621}
!140 = !{i64 2158847804, i64 2158848309, i64 2158847841, i64 2158847897, i64 2158847931, i64 2158847955, i64 2158847996, i64 2158848017, i64 2158848045, i64 2158848079}
