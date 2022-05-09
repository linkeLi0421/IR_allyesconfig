; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx88/cx88-alsa.c_pt.bc'
source_filename = "../drivers/media/pci/cx88/cx88-alsa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.164, i32 }
%union.anon.164 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sram_channel = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.125, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.125 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.cx88_core = type { %struct.list_head, %struct.refcount_struct, i32, [32 x i8], i32, i32, i32, ptr, ptr, [3 x i32], i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, i32, %struct.cx88_board, i32, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.IR_i2c_init_data, %struct.wm8775_platform_data, %struct.mutex, i32, ptr, ptr, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx88_board = type { ptr, i32, i32, i8, i8, i32, [8 x %struct.cx88_input], %struct.cx88_input, i32, i32, i32, i32 }
%struct.cx88_input = type { i32, i32, i32, i32, i32, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.wm8775_platform_data = type { i8 }
%struct.cx88_audio_dev = type { ptr, %struct.cx88_dmaqueue, ptr, i32, ptr, %struct.spinlock, %struct.atomic_t, i32, i32, i32, ptr, ptr }
%struct.cx88_dmaqueue = type { %struct.list_head, i32 }
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
%struct.cx88_audio_buffer = type { i32, %struct.cx88_riscmem, ptr, ptr, i32, i32 }
%struct.cx88_riscmem = type { i32, ptr, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.154, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.154 = type { %struct.anon.157, [40 x i8] }
%struct.anon.157 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.163, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.163 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.158, [128 x i8] }
%union.anon.158 = type { %union.anon.160 }
%union.anon.160 = type { [64 x i64] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.129 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.132, %union.anon.133, i32, ptr, i32, %struct.anon.134, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.132 = type { i64 }
%union.anon.133 = type { ptr }
%struct.anon.134 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__param_str_enable = internal constant [17 x i8] c"cx88_alsa.enable\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype391 = internal constant [40 x i8] c"cx88_alsa.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable392 = internal constant [63 x i8] c"cx88_alsa.parm=enable:Enable cx88x soundcard. default enabled.\00", section ".modinfo", align 1
@__param_str_index = internal constant [16 x i8] c"cx88_alsa.index\00", align 1
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype393 = internal constant [38 x i8] c"cx88_alsa.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index394 = internal constant [65 x i8] c"cx88_alsa.parm=index:Index value for cx88x capture interface(s).\00", section ".modinfo", align 1
@__UNIQUE_ID_description395 = internal constant [68 x i8] c"cx88_alsa.description=ALSA driver module for cx2388x based TV cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author396 = internal constant [35 x i8] c"cx88_alsa.author=Ricardo Cerqueira\00", section ".modinfo", align 1
@__UNIQUE_ID_author397 = internal constant [60 x i8] c"cx88_alsa.author=Mauro Carvalho Chehab <mchehab@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file398 = internal constant [48 x i8] c"cx88_alsa.file=drivers/media/pci/cx88/cx88-alsa\00", section ".modinfo", align 1
@__UNIQUE_ID_license399 = internal constant [25 x i8] c"cx88_alsa.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version400 = internal constant [24 x i8] c"cx88_alsa.version=1.0.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cx88_alsa\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_debug = internal constant [16 x i8] c"cx88_alsa.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype401 = internal constant [29 x i8] c"cx88_alsa.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug402 = internal constant [43 x i8] c"cx88_alsa.parm=debug:enable debug messages\00", section ".modinfo", align 1
@__initcall__kmod_cx88_alsa__403_1007_cx88_audio_pci_driver_init6 = internal global ptr @cx88_audio_pci_driver_init, section ".initcall6.init", align 4
@cx88_audio_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr @cx88_audio_pci_tbl, ptr @cx88_audio_initdev, ptr @cx88_audio_finidev, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cx88_audio_pci_driver_exit = internal global ptr @cx88_audio_pci_driver_exit, section ".exitcall.exit", align 4
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cx88_audio\00", [21 x i8] zeroinitializer }, align 32
@cx88_audio_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5361, i32 34817, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 5361, i32 34833, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@devno = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CX88 Digital\00", [19 x i8] zeroinitializer }, align 32
@snd_cx88_volume = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 19, i32 0, ptr @snd_cx88_volume_info, ptr @snd_cx88_volume_get, ptr @snd_cx88_volume_put, %union.anon.164 { ptr @snd_cx88_db_scale }, i32 0 }, [48 x i8] zeroinitializer }, align 32
@snd_cx88_dac_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cx88_switch_get, ptr @snd_cx88_switch_put, %union.anon.164 zeroinitializer, i32 256 }, [48 x i8] zeroinitializer }, align 32
@snd_cx88_source_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cx88_switch_get, ptr @snd_cx88_switch_put, %union.anon.164 zeroinitializer, i32 64 }, [48 x i8] zeroinitializer }, align 32
@snd_cx88_alc_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_cx88_alc_get, ptr @snd_cx88_alc_put, %union.anon.164 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CX88x\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Conexant CX%x\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s at %#llx\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CX88\00", [27 x i8] zeroinitializer }, align 32
@cx88_audio_initdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\017cx88_alsa: %s: alsa: %s/%i: ALSA support for cx2388x boards\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx88_audio_initdev\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/pci/cx88/cx88-alsa.c\00", [61 x i8] zeroinitializer }, align 32
@cx88_audio_initdev._entry_ptr = internal global ptr @cx88_audio_initdev._entry, section ".printk_index", align 4
@snd_cx88_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.11, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017cx88_alsa: %s: alsa: %s/1: Oops: no 32bit PCI DMA ???\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_cx88_create\00", [16 x i8] zeroinitializer }, align 32
@snd_cx88_create._entry_ptr = internal global ptr @snd_cx88_create._entry, section ".printk_index", align 4
@snd_cx88_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&chip->reg_lock\00", [16 x i8] zeroinitializer }, align 32
@snd_cx88_create._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.11, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017cx88_alsa: %s: alsa: %s: can't get IRQ %d\0A\00", [51 x i8] zeroinitializer }, align 32
@snd_cx88_create._entry_ptr.17 = internal global ptr @snd_cx88_create._entry.15, section ".printk_index", align 4
@snd_cx88_create._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.11, i32 902, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\017cx88_alsa: %s: alsa: ALSA %s/%i: found at %s, rev: %d, irq: %d, latency: %d, mmio: 0x%llx\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_cx88_create._entry_ptr.20 = internal global ptr @snd_cx88_create._entry.18, section ".printk_index", align 4
@cx8801_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.11, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\017cx88_alsa: %s: alsa: cx8801_irq loop %d/%d, status %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cx8801_irq\00", [21 x i8] zeroinitializer }, align 32
@cx8801_irq._entry_ptr = internal global ptr @cx8801_irq._entry, section ".printk_index", align 4
@cx8801_irq._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.11, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013cx88_alsa: IRQ loop detected, disabling interrupts\0A\00", [42 x i8] zeroinitializer }, align 32
@cx8801_irq._entry_ptr.25 = internal global ptr @cx8801_irq._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irq aud\00", [24 x i8] zeroinitializer }, align 32
@cx8801_aud_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.11, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014cx88_alsa: Audio risc op code error\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx8801_aud_irq\00", [17 x i8] zeroinitializer }, align 32
@cx8801_aud_irq._entry_ptr = internal global ptr @cx8801_aud_irq._entry, section ".printk_index", align 4
@cx88_sram_channels = external dso_local constant [0 x %struct.sram_channel], align 4
@cx8801_aud_irq._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.11, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017cx88_alsa: %s: alsa: Downstream sync error\0A\00", [50 x i8] zeroinitializer }, align 32
@cx8801_aud_irq._entry_ptr.31 = internal global ptr @cx8801_aud_irq._entry.29, section ".printk_index", align 4
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
@cx88_aud_irqs = internal global { <{ [22 x ptr], [10 x ptr] }>, [32 x i8] } { <{ [22 x ptr], [10 x ptr] }> <{ [22 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr null, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr null, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr null, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr null, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [10 x ptr] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@snd_cx88_pcm_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_cx88_pcm_open, ptr @snd_cx88_close, ptr null, ptr @snd_cx88_hw_params, ptr @snd_cx88_hw_free, ptr @snd_cx88_prepare, ptr @snd_cx88_card_trigger, ptr null, ptr @snd_cx88_pointer, ptr null, ptr null, ptr null, ptr null, ptr @snd_cx88_page, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_cx88_pcm_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.11, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013cx88_alsa: BUG: cx88 can't find device struct. Can't proceed with open\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_cx88_pcm_open\00", [46 x i8] zeroinitializer }, align 32
@snd_cx88_pcm_open._entry_ptr = internal global ptr @snd_cx88_pcm_open._entry, section ".printk_index", align 4
@snd_cx88_digital_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 4, i32 128, i32 48000, i32 48000, i32 2, i32 2, i32 1048576, i32 1024, i32 1024, i32 1, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_cx88_pcm_open._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.11, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017cx88_alsa: %s: alsa: Error opening PCM!\0A\00", [53 x i8] zeroinitializer }, align 32
@snd_cx88_pcm_open._entry_ptr.55 = internal global ptr @snd_cx88_pcm_open._entry.53, section ".printk_index", align 4
@dsp_buffer_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.11, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017cx88_alsa: %s: alsa: Freeing buffer\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dsp_buffer_free\00", [16 x i8] zeroinitializer }, align 32
@dsp_buffer_free._entry_ptr = internal global ptr @dsp_buffer_free._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cx88_alsa_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.11, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017cx88_alsa: %s: alsa: vmalloc_32(%lu pages) failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx88_alsa_dma_init\00", [45 x i8] zeroinitializer }, align 32
@cx88_alsa_dma_init._entry_ptr = internal global ptr @cx88_alsa_dma_init._entry, section ".printk_index", align 4
@cx88_alsa_dma_init._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.11, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\017cx88_alsa: %s: alsa: vmalloc is at addr %p, size=%lu\0A\00", [40 x i8] zeroinitializer }, align 32
@cx88_alsa_dma_init._entry_ptr.62 = internal global ptr @cx88_alsa_dma_init._entry.60, section ".printk_index", align 4
@cx88_alsa_dma_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.11, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014cx88_alsa: %s: cx88_alsa_map_sg failed\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx88_alsa_dma_map\00", [46 x i8] zeroinitializer }, align 32
@cx88_alsa_dma_map._entry_ptr = internal global ptr @cx88_alsa_dma_map._entry, section ".printk_index", align 4
@_cx88_start_audio_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.11, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\017cx88_alsa: %s: alsa: Start audio DMA, %d B/line, %d lines/FIFO, %d periods, %d byte buffer\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_cx88_start_audio_dma\00", [42 x i8] zeroinitializer }, align 32
@_cx88_start_audio_dma._entry_ptr = internal global ptr @_cx88_start_audio_dma._entry, section ".printk_index", align 4
@_cx88_stop_audio_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.11, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017cx88_alsa: %s: alsa: Stopping audio DMA\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_cx88_stop_audio_dma\00", [43 x i8] zeroinitializer }, align 32
@_cx88_stop_audio_dma._entry_ptr = internal global ptr @_cx88_stop_audio_dma._entry, section ".printk_index", align 4
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Analog-TV Volume\00", [47 x i8] zeroinitializer }, align 32
@snd_cx88_db_scale = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6300, i32 100], [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Audio-Out Switch\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Analog-TV Switch\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Line-In ALC Switch\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 99, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 101, i32 21 }
@___asan_gen_.85 = private unnamed_addr constant [22 x i8] c"cx88_audio_pci_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1000, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 83, i32 13 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 81, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1001, i32 14 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"cx88_audio_pci_tbl\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 809, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"devno\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 845, i32 12 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 940, i32 30 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"snd_cx88_volume\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 705, i32 38 }
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c"snd_cx88_dac_switch\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 751, i32 38 }
@___asan_gen_.112 = private unnamed_addr constant [23 x i8] c"snd_cx88_source_switch\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 760, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"snd_cx88_alc_switch\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 792, i32 38 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 961, i32 24 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 962, i32 27 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 963, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 966, i32 27 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 968, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 873, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 882, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 890, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 898, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 253, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 265, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 216, i32 22 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 221, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 226, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 190, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 190, i32 15 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 190, i32 28 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 192, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 192, i32 15 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 192, i32 28 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 194, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 194, i32 12 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 194, i32 22 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 196, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 196, i32 13 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 196, i32 24 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 198, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 198, i32 13 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 198, i32 24 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 199, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 199, i32 15 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 199, i32 26 }
@___asan_gen_.256 = private unnamed_addr constant [14 x i8] c"cx88_aud_irqs\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 189, i32 20 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"snd_cx88_pcm_ops\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 585, i32 33 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 410, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [20 x i8] c"snd_cx88_digital_hw\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 377, i32 38 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 433, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 356, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 282, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 286, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 322, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 132, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 167, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 709, i32 10 }
@___asan_gen_.334 = private unnamed_addr constant [18 x i8] c"snd_cx88_db_scale\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 703, i32 14 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 753, i32 10 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 762, i32 10 }
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.344 = private constant [38 x i8] c"../drivers/media/pci/cx88/cx88-alsa.c\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 794, i32 10 }
@llvm.compiler.used = appending global [126 x ptr] [ptr @__UNIQUE_ID_author396, ptr @__UNIQUE_ID_author397, ptr @__UNIQUE_ID_debug402, ptr @__UNIQUE_ID_debugtype401, ptr @__UNIQUE_ID_description395, ptr @__UNIQUE_ID_enable392, ptr @__UNIQUE_ID_enabletype391, ptr @__UNIQUE_ID_file398, ptr @__UNIQUE_ID_index394, ptr @__UNIQUE_ID_indextype393, ptr @__UNIQUE_ID_license399, ptr @__UNIQUE_ID_version400, ptr @__exitcall_cx88_audio_pci_driver_exit, ptr @__initcall__kmod_cx88_alsa__403_1007_cx88_audio_pci_driver_init6, ptr @__modver_attr, ptr @__param_debug, ptr @__param_enable, ptr @__param_index, ptr @_cx88_start_audio_dma._entry, ptr @_cx88_start_audio_dma._entry_ptr, ptr @_cx88_stop_audio_dma._entry, ptr @_cx88_stop_audio_dma._entry_ptr, ptr @cx8801_aud_irq._entry, ptr @cx8801_aud_irq._entry.29, ptr @cx8801_aud_irq._entry_ptr, ptr @cx8801_aud_irq._entry_ptr.31, ptr @cx8801_irq._entry, ptr @cx8801_irq._entry.23, ptr @cx8801_irq._entry_ptr, ptr @cx8801_irq._entry_ptr.25, ptr @cx88_alsa_dma_init._entry, ptr @cx88_alsa_dma_init._entry.60, ptr @cx88_alsa_dma_init._entry_ptr, ptr @cx88_alsa_dma_init._entry_ptr.62, ptr @cx88_alsa_dma_map._entry, ptr @cx88_alsa_dma_map._entry_ptr, ptr @cx88_audio_initdev._entry, ptr @cx88_audio_initdev._entry_ptr, ptr @cx88_audio_pci_driver_exit, ptr @dsp_buffer_free._entry, ptr @dsp_buffer_free._entry_ptr, ptr @snd_cx88_create._entry, ptr @snd_cx88_create._entry.15, ptr @snd_cx88_create._entry.18, ptr @snd_cx88_create._entry_ptr, ptr @snd_cx88_create._entry_ptr.17, ptr @snd_cx88_create._entry_ptr.20, ptr @snd_cx88_pcm_open._entry, ptr @snd_cx88_pcm_open._entry.53, ptr @snd_cx88_pcm_open._entry_ptr, ptr @snd_cx88_pcm_open._entry_ptr.55, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @cx88_audio_pci_driver, ptr @enable, ptr @index, ptr @.str.3, ptr @cx88_audio_pci_tbl, ptr @devno, ptr @.str.4, ptr @snd_cx88_volume, ptr @snd_cx88_dac_switch, ptr @snd_cx88_source_switch, ptr @snd_cx88_alc_switch, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @snd_cx88_create.__key, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @cx88_aud_irqs, ptr @snd_cx88_pcm_ops, ptr @.str.51, ptr @.str.52, ptr @snd_cx88_digital_hw, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @snd_cx88_db_scale, ptr @.str.70, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_audio_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_audio_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devno to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx88_volume to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx88_dac_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx88_source_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx88_alc_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_audio_initdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx88_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx88_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx88_create._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx88_create._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8801_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8801_irq._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8801_aud_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8801_aud_irq._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_aud_irqs to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx88_pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx88_pcm_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx88_digital_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx88_pcm_open._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_buffer_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_alsa_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_alsa_dma_init._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx88_alsa_dma_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_cx88_start_audio_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_cx88_stop_audio_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx88_db_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cx88_audio_pci_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cx88_audio_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cx88_audio_pci_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @cx88_audio_pci_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx88_audio_initdev(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %pcm.i = alloca ptr, align 4
  %pci_lat.i = alloca i8, align 1
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #11
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !213
  %1 = load i32, ptr @devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @devno, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %arrayidx3 = getelementptr [32 x i32], ptr @index, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %call = call i32 @snd_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef null, ptr noundef null, i32 noundef 96, ptr noundef nonnull %card) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %private_free = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @snd_cx88_dev_free, ptr %private_free, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pci_lat.i) #11
  %9 = ptrtoint ptr %pci_lat.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %pci_lat.i, align 1, !annotation !213
  %call.i = call i32 @pci_enable_device(ptr noundef %pci) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.snd_cx88_create.exit.thread_crit_edge, label %if.end.i

if.end7.snd_cx88_create.exit.thread_crit_edge:    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_cx88_create.exit.thread

if.end.i:                                         ; preds = %if.end7
  call void @pci_set_master(ptr noundef %pci) #11
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 9
  %10 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data.i, align 8
  %call1.i = call ptr @cx88_core_get(ptr noundef %pci) #11
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.i.snd_cx88_create.exit.thread_crit_edge, label %if.end3.i

if.end.i.snd_cx88_create.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_cx88_create.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end17.i, label %do.body.i

do.body.i:                                        ; preds = %if.end3.i
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp7.not.i = icmp eq i32 %12, -1
  br i1 %cmp7.not.i, label %do.body.i.snd_cx88_create.exit_crit_edge, label %do.end.i

do.body.i.snd_cx88_create.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_cx88_create.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %11, align 4
  %name.i = getelementptr inbounds %struct.cx88_core, ptr %14, i32 0, i32 3
  %name11.i = getelementptr inbounds %struct.cx88_core, ptr %call1.i, i32 0, i32 3
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name.i, ptr noundef %name11.i) #14
  br label %snd_cx88_create.exit

if.end17.i:                                       ; preds = %if.end3.i
  %card18.i = getelementptr inbounds %struct.cx88_audio_dev, ptr %11, i32 0, i32 4
  %15 = ptrtoint ptr %card18.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %7, ptr %card18.i, align 4
  %pci19.i = getelementptr inbounds %struct.cx88_audio_dev, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %pci19.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pci, ptr %pci19.i, align 4
  %irq.i = getelementptr inbounds %struct.cx88_audio_dev, ptr %11, i32 0, i32 3
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %irq.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.cx88_audio_dev, ptr %11, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @snd_cx88_create.__key, i16 noundef signext 3) #11
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call1.i, ptr %11, align 4
  %19 = ptrtoint ptr %pci19.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci19.i, align 4
  %irq26.i = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 46
  %21 = ptrtoint ptr %irq26.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq26.i, align 4
  %name28.i = getelementptr inbounds %struct.cx88_core, ptr %call1.i, i32 0, i32 3
  %call.i.i = call i32 @request_threaded_irq(i32 noundef %22, ptr noundef nonnull @cx8801_irq, ptr noundef null, i32 noundef 128, ptr noundef %name28.i, ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp31.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp31.i, label %do.body33.i, label %if.end53.i

do.body33.i:                                      ; preds = %if.end17.i
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp35.not.i = icmp eq i32 %23, -1
  br i1 %cmp35.not.i, label %do.body33.i.snd_cx88_create.exit.thread_crit_edge, label %do.end39.i

do.body33.i.snd_cx88_create.exit.thread_crit_edge: ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_cx88_create.exit.thread

do.end39.i:                                       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %11, align 4
  %name42.i = getelementptr inbounds %struct.cx88_core, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %pci19.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci19.i, align 4
  %irq48.i = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 46
  %28 = ptrtoint ptr %irq48.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq48.i, align 4
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name42.i, ptr noundef %name42.i, i32 noundef %29) #14
  br label %snd_cx88_create.exit.thread

if.end53.i:                                       ; preds = %if.end17.i
  %call54.i = call i32 @pci_read_config_byte(ptr noundef %pci, i32 noundef 13, ptr noundef nonnull %pci_lat.i) #11
  %30 = load i32, ptr @debug, align 4
  %31 = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %31)
  %cmp57.i = icmp ult i32 %31, -2
  br i1 %cmp57.i, label %do.end61.i, label %if.end53.i.snd_cx88_create.exit.thread100_crit_edge

if.end53.i.snd_cx88_create.exit.thread100_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_cx88_create.exit.thread100

do.end61.i:                                       ; preds = %if.end53.i
  %32 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %11, align 4
  %name64.i = getelementptr inbounds %struct.cx88_core, ptr %33, i32 0, i32 3
  %34 = load i32, ptr @devno, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 3
  %35 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end61.i.pci_name.exit.i_crit_edge

do.end61.i.pci_name.exit.i_crit_edge:             ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %do.end61.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %do.end61.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %38, %if.end.i.i.i ], [ %36, %do.end61.i.pci_name.exit.i_crit_edge ]
  %revision.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 12
  %39 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %revision.i, align 4
  %conv.i = zext i8 %40 to i32
  %irq69.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %41 = ptrtoint ptr %irq69.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq69.i, align 4
  %43 = ptrtoint ptr %pci_lat.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pci_lat.i, align 1
  %conv70.i = zext i8 %44 to i32
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %45 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %resource.i, align 8
  %conv71.i = zext i32 %46 to i64
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name64.i, ptr noundef %name28.i, i32 noundef %34, ptr noundef %retval.0.i.i.i, i32 noundef %conv.i, i32 noundef %42, i32 noundef %conv70.i, i64 noundef %conv71.i) #14
  br label %snd_cx88_create.exit.thread100

snd_cx88_create.exit.thread100:                   ; preds = %pci_name.exit.i, %if.end53.i.snd_cx88_create.exit.thread100_crit_edge
  %irq76.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %47 = ptrtoint ptr %irq76.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq76.i, align 4
  %49 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %irq.i, align 4
  call void @synchronize_irq(i32 noundef %48) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pci_lat.i) #11
  br label %if.end11

snd_cx88_create.exit.thread:                      ; preds = %do.end39.i, %do.body33.i.snd_cx88_create.exit.thread_crit_edge, %if.end.i.snd_cx88_create.exit.thread_crit_edge, %if.end7.snd_cx88_create.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i, %do.body33.i.snd_cx88_create.exit.thread_crit_edge ], [ %call.i.i, %do.end39.i ], [ -22, %if.end.i.snd_cx88_create.exit.thread_crit_edge ], [ %call.i, %if.end7.snd_cx88_create.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pci_lat.i) #11
  br label %error

snd_cx88_create.exit:                             ; preds = %do.end.i, %do.body.i.snd_cx88_create.exit_crit_edge
  call void @cx88_core_put(ptr noundef nonnull %call1.i, ptr noundef %pci) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pci_lat.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp9 = icmp slt i32 %call4.i, 0
  br i1 %cmp9, label %snd_cx88_create.exit.error_crit_edge, label %snd_cx88_create.exit.if.end11_crit_edge

snd_cx88_create.exit.if.end11_crit_edge:          ; preds = %snd_cx88_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

snd_cx88_create.exit.error_crit_edge:             ; preds = %snd_cx88_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end11:                                         ; preds = %snd_cx88_create.exit.if.end11_crit_edge, %snd_cx88_create.exit.thread100
  %core.0106 = phi ptr [ %call1.i, %snd_cx88_create.exit.thread100 ], [ null, %snd_cx88_create.exit.if.end11_crit_edge ]
  %chip.0105 = phi ptr [ %11, %snd_cx88_create.exit.thread100 ], [ null, %snd_cx88_create.exit.if.end11_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #11
  %50 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !213
  %card.i = getelementptr inbounds %struct.cx88_audio_dev, ptr %chip.0105, i32 0, i32 4
  %51 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %card.i, align 4
  %call.i85 = call i32 @snd_pcm_new(ptr noundef %52, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %pcm.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %cmp.i86 = icmp slt i32 %call.i85, 0
  br i1 %cmp.i86, label %snd_cx88_pcm.exit.thread, label %if.end15

snd_cx88_pcm.exit.thread:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #11
  br label %error

if.end15:                                         ; preds = %if.end11
  %53 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pcm.i, align 4
  %private_data.i87 = getelementptr inbounds %struct.snd_pcm, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %private_data.i87 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %chip.0105, ptr %private_data.i87, align 8
  %name1.i = getelementptr inbounds %struct.snd_pcm, ptr %54, i32 0, i32 7
  %call2.i = call i32 @strscpy(ptr noundef %name1.i, ptr noundef nonnull @.str.4, i32 noundef 80) #11
  %56 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %57, i32 noundef 1, ptr noundef nonnull @snd_cx88_pcm_ops) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #11
  %58 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %card, align 4
  %call16 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_cx88_volume, ptr noundef %chip.0105) #11
  %call17 = call i32 @snd_ctl_add(ptr noundef %59, ptr noundef %call16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end15.error_crit_edge, label %if.end20

if.end15.error_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end20:                                         ; preds = %if.end15
  %60 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %card, align 4
  %call21 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_cx88_dac_switch, ptr noundef %chip.0105) #11
  %call22 = call i32 @snd_ctl_add(ptr noundef %61, ptr noundef %call21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end20.error_crit_edge, label %if.end25

if.end20.error_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end25:                                         ; preds = %if.end20
  %62 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %card, align 4
  %call26 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_cx88_source_switch, ptr noundef %chip.0105) #11
  %call27 = call i32 @snd_ctl_add(ptr noundef %63, ptr noundef %call26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end25.error_crit_edge, label %if.end30

if.end25.error_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end30:                                         ; preds = %if.end25
  %sd_wm8775 = getelementptr inbounds %struct.cx88_core, ptr %core.0106, i32 0, i32 20
  %64 = ptrtoint ptr %sd_wm8775 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sd_wm8775, align 4
  %tobool31.not = icmp eq ptr %65, null
  br i1 %tobool31.not, label %if.end30.if.end38_crit_edge, label %if.then32

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then32:                                        ; preds = %if.end30
  %66 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %card, align 4
  %call33 = call ptr @snd_ctl_new1(ptr noundef nonnull @snd_cx88_alc_switch, ptr noundef %chip.0105) #11
  %call34 = call i32 @snd_ctl_add(ptr noundef %67, ptr noundef %call33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then32.error_crit_edge, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then32.error_crit_edge:                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end38:                                         ; preds = %if.then32.if.end38_crit_edge, %if.end30.if.end38_crit_edge
  %68 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %69, i32 0, i32 2
  %call39 = call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @.str.5, i32 noundef 16) #11
  %70 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %card, align 4
  %shortname = getelementptr inbounds %struct.snd_card, ptr %71, i32 0, i32 3
  %device = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 8
  %72 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %device, align 2
  %conv = zext i16 %73 to i32
  %call41 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %shortname, ptr noundef nonnull @.str.6, i32 noundef %conv)
  %74 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 4
  %shortname43 = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 3
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %76 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %resource, align 8
  %conv46 = zext i32 %77 to i64
  %call47 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.7, ptr noundef %shortname43, i64 noundef %conv46)
  %78 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %card, align 4
  %mixername = getelementptr inbounds %struct.snd_card, ptr %79, i32 0, i32 6
  %call49 = call i32 @strscpy(ptr noundef %mixername, ptr noundef nonnull @.str.8, i32 noundef 80) #11
  %80 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp50.not = icmp eq i32 %80, -1
  br i1 %cmp50.not, label %if.end38.do.end61_crit_edge, label %do.end

if.end38.do.end61_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end61

do.end:                                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %chip.0105 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chip.0105, align 4
  %name = getelementptr inbounds %struct.cx88_core, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %card, align 4
  %driver56 = getelementptr inbounds %struct.snd_card, ptr %84, i32 0, i32 2
  %85 = load i32, ptr @devno, align 4
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name, ptr noundef %driver56, i32 noundef %85) #14
  br label %do.end61

do.end61:                                         ; preds = %do.end, %if.end38.do.end61_crit_edge
  %86 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %card, align 4
  %call62 = call i32 @snd_card_register(ptr noundef %87) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %do.end61.error_crit_edge, label %if.end66

do.end61.error_crit_edge:                         ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end66:                                         ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %90 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %driver_data.i.i, align 4
  %91 = load i32, ptr @devno, align 4
  %inc67 = add i32 %91, 1
  store i32 %inc67, ptr @devno, align 4
  br label %cleanup

error:                                            ; preds = %do.end61.error_crit_edge, %if.then32.error_crit_edge, %if.end25.error_crit_edge, %if.end20.error_crit_edge, %if.end15.error_crit_edge, %snd_cx88_pcm.exit.thread, %snd_cx88_create.exit.error_crit_edge, %snd_cx88_create.exit.thread
  %err.0 = phi i32 [ %call4.i, %snd_cx88_create.exit.error_crit_edge ], [ %call17, %if.end15.error_crit_edge ], [ %call22, %if.end20.error_crit_edge ], [ %call27, %if.end25.error_crit_edge ], [ %call34, %if.then32.error_crit_edge ], [ %call62, %do.end61.error_crit_edge ], [ %retval.0.i.ph, %snd_cx88_create.exit.thread ], [ %call.i85, %snd_cx88_pcm.exit.thread ]
  %92 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %card, align 4
  %call68 = call i32 @snd_card_free(ptr noundef %93) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end66, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end66 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx88_audio_finidev(ptr nocapture noundef readonly %pci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @snd_card_free(ptr noundef %1) #11
  %2 = load i32, ptr @devno, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr @devno, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cx88_dev_free(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %irq.i = getelementptr inbounds %struct.cx88_audio_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp sgt i32 %3, -1
  br i1 %cmp.i, label %if.then.i, label %entry.snd_cx88_free.exit_crit_edge

entry.snd_cx88_free.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_cx88_free.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #11
  br label %snd_cx88_free.exit

snd_cx88_free.exit:                               ; preds = %if.then.i, %entry.snd_cx88_free.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %pci.i = getelementptr inbounds %struct.cx88_audio_dev, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci.i, align 4
  tail call void @cx88_core_put(ptr noundef %5, ptr noundef %7) #11
  %8 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci.i, align 4
  tail call void @pci_disable_device(ptr noundef %9) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_core_put(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx88_core_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx8801_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %pci_irqmask = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 10
  %count.i = getelementptr inbounds %struct.cx88_audio_dev, ptr %dev_id, i32 0, i32 6
  %substream.i = getelementptr inbounds %struct.cx88_audio_dev, ptr %dev_id, i32 0, i32 11
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr75 = getelementptr i32, ptr %3, i32 524305
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #11, !srcloc !215
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !216
  %6 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pci_irqmask, align 8
  %or76 = or i32 %7, 2
  %and77 = and i32 %or76, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %cmp378 = icmp eq i32 %and77, 0
  br i1 %cmp378, label %entry.out_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.body:                                         ; preds = %for.inc
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %9, i32 524305
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !215
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !216
  %12 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pci_irqmask, align 8
  %or = or i32 %13, 2
  %and = and i32 %or, %11
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %for.body.out_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %and80 = phi i32 [ %and, %for.body.do.body_crit_edge ], [ %and77, %entry.do.body_crit_edge ]
  %14 = phi i32 [ %11, %for.body.do.body_crit_edge ], [ %5, %entry.do.body_crit_edge ]
  %loop.07079 = phi i32 [ %inc, %for.body.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %15 = load i32, ptr @debug, align 4
  %16 = add i32 %15, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %16)
  %cmp4 = icmp ult i32 %16, -4
  br i1 %cmp4, label %do.end, label %do.body.do.end12_crit_edge

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_id, align 4
  %name = getelementptr inbounds %struct.cx88_core, ptr %18, i32 0, i32 3
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, i32 noundef %loop.07079, i32 noundef 50, i32 noundef %and80) #14
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %19 = tail call i32 @llvm.bswap.i32(i32 %and80)
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio, align 4
  %add.ptr17 = getelementptr i32, ptr %21, i32 524305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %19) #11, !srcloc !218
  %22 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pci_irqmask, align 8
  %and19 = and i32 %23, %and80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool.not = icmp eq i32 %and19, 0
  br i1 %tobool.not, label %do.end12.if.end22_crit_edge, label %if.then20

do.end12.if.end22_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then20:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call i32 @cx88_core_irq(ptr noundef %1, i32 noundef %and80) #11
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %do.end12.if.end22_crit_edge
  %and23 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.for.inc_crit_edge, label %if.then25

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then25:                                        ; preds = %if.end22
  %24 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_id, align 4
  %lmmio.i = getelementptr inbounds %struct.cx88_core, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %27, i32 524313
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !215
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  %30 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio.i, align 4
  %add.ptr6.i = getelementptr i32, ptr %31, i32 524312
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #11, !srcloc !215
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !220
  %and.i = and i32 %33, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then25.for.inc_crit_edge, label %do.body.i

if.then25.for.inc_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body.i:                                        ; preds = %if.then25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !221
  tail call void @arm_heavy_mb() #11
  %34 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lmmio.i, align 4
  %add.ptr11.i = getelementptr i32, ptr %35, i32 524313
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %28) #11, !srcloc !218
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp12.i = icmp ult i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and.i)
  %tobool.not.i = icmp ult i32 %and.i, 256
  %or.cond.i = select i1 %cmp12.i, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %do.body.i.if.end16.i_crit_edge, label %if.then15.i

do.body.i.if.end16.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then15.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cx88_print_irqbits(ptr noundef nonnull @.str.26, ptr noundef nonnull @cx88_aud_irqs, i32 noundef 32, i32 noundef %29, i32 noundef %33) #11
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then15.i, %do.body.i.if.end16.i_crit_edge
  %and17.i = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end38.i_crit_edge, label %do.end22.i

if.end16.i.if.end38.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

do.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !222
  tail call void @arm_heavy_mb() #11
  %37 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lmmio.i, align 4
  %add.ptr31.i = getelementptr i32, ptr %38, i32 831504
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !223
  %40 = and i32 %39, -285212673
  %41 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lmmio.i, align 4
  %add.ptr37.i = getelementptr i32, ptr %42, i32 831504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %40) #11, !srcloc !218
  tail call void @cx88_sram_channel_dump(ptr noundef %25, ptr noundef getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx88_sram_channels, i32 0, i32 4)) #11
  br label %if.end38.i

if.end38.i:                                       ; preds = %do.end22.i, %if.end16.i.if.end38.i_crit_edge
  %and39.i = and i32 %29, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %if.end59.i, label %do.body42.i

do.body42.i:                                      ; preds = %if.end38.i
  %43 = load i32, ptr @debug, align 4
  %44 = add i32 %43, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %44)
  %cmp43.i = icmp ult i32 %44, -2
  br i1 %cmp43.i, label %do.end47.i, label %do.body42.i.do.body54.i_crit_edge

do.body42.i.do.body54.i_crit_edge:                ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body54.i

do.end47.i:                                       ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_id, align 4
  %name.i = getelementptr inbounds %struct.cx88_core, ptr %46, i32 0, i32 3
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name.i) #14
  br label %do.body54.i

do.body54.i:                                      ; preds = %do.end47.i, %do.body42.i.do.body54.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !224
  tail call void @arm_heavy_mb() #11
  %47 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lmmio.i, align 4
  %add.ptr58.i = getelementptr i32, ptr %48, i32 831500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58.i, i32 50331648) #11, !srcloc !218
  br label %for.inc

if.end59.i:                                       ; preds = %if.end38.i
  %and60.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %if.end59.i.for.inc_crit_edge, label %if.then62.i

if.end59.i.for.inc_crit_edge:                     ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then62.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lmmio.i, align 4
  %add.ptr66.i = getelementptr i32, ptr %50, i32 831496
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66.i) #11, !srcloc !215
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !225
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #11
  %53 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %52, ptr %count.i, align 4
  %54 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %substream.i, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %55) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then62.i, %if.end59.i.for.inc_crit_edge, %do.body54.i, %if.then25.for.inc_crit_edge, %if.end22.for.inc_crit_edge
  %inc = add nuw nsw i32 %loop.07079, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 50
  br i1 %exitcond.not, label %do.end31, label %for.body

do.end31:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !226
  tail call void @arm_heavy_mb() #11
  %56 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lmmio, align 4
  %add.ptr40 = getelementptr i32, ptr %57, i32 524304
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !227
  %59 = and i32 %58, -33554433
  %60 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lmmio, align 4
  %add.ptr47 = getelementptr i32, ptr %61, i32 524304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %59) #11, !srcloc !218
  br label %out

out:                                              ; preds = %do.end31, %for.body.out_crit_edge, %entry.out_crit_edge
  %tobool49.not68 = phi i32 [ 1, %do.end31 ], [ 0, %entry.out_crit_edge ], [ 1, %for.body.out_crit_edge ]
  ret i32 %tobool49.not68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_core_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_print_irqbits(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx88_sram_channel_dump(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx88_pcm_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @snd_pcm_hw_constraint_pow2(ptr noundef %3, i32 noundef 0, i32 noundef 15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.body11, label %if.end4

if.end4:                                          ; preds = %if.end
  %substream5 = getelementptr inbounds %struct.cx88_audio_dev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %substream5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream5, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %5 = call ptr @memcpy(ptr %hw, ptr @snd_cx88_digital_hw, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx88_sram_channels, i32 0, i32 4, i32 5) to i32))
  %6 = load i32, ptr getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx88_sram_channels, i32 0, i32 4, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %6)
  %cmp6.not = icmp eq i32 %6, 4096
  br i1 %cmp6.not, label %if.end4.cleanup_crit_edge, label %if.then7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %div35 = lshr i32 %6, 2
  %and = and i32 %div35, 1073741816
  %period_bytes_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 8
  %7 = ptrtoint ptr %period_bytes_min to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %period_bytes_min, align 8
  %period_bytes_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 9
  %8 = ptrtoint ptr %period_bytes_max to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %period_bytes_max, align 4
  br label %cleanup

do.body11:                                        ; preds = %if.end
  %9 = load i32, ptr @debug, align 4
  %10 = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %10)
  %cmp12 = icmp ult i32 %10, -2
  br i1 %cmp12, label %do.end16, label %do.body11.cleanup_crit_edge

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.cx88_core, ptr %12, i32 0, i32 3
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.body11.cleanup_crit_edge, %if.then7, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.then7 ], [ 0, %if.end4.cleanup_crit_edge ], [ %call2, %do.end16 ], [ %call2, %do.body11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_cx88_close(ptr nocapture noundef readnone %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx88_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  %period_size = getelementptr inbounds %struct.cx88_audio_dev, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %period_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %period_size, align 4
  %arrayidx.i.i135 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 7
  %12 = ptrtoint ptr %arrayidx.i.i135 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i135, align 4
  %num_periods = getelementptr inbounds %struct.cx88_audio_dev, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %num_periods to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %num_periods, align 4
  %15 = load i32, ptr %arrayidx.i.i135, align 4
  %mul = mul i32 %15, %10
  %dma_size = getelementptr inbounds %struct.cx88_audio_dev, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %dma_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %dma_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool8.not = icmp eq i32 %mul, 0
  br i1 %tobool8.not, label %do.end, label %if.end.if.end24_crit_edge, !prof !228

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 465, i32 noundef 9, ptr noundef null) #11
  br label %if.end24

if.end24:                                         ; preds = %do.end, %if.end.if.end24_crit_edge
  %17 = ptrtoint ptr %num_periods to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_periods, align 4
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18), !range !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %tobool34.not = icmp ult i32 %19, 2
  br i1 %tobool34.not, label %if.end24.if.end56_crit_edge, label %do.end50, !prof !230

if.end24.if.end56_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56

do.end50:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 466, i32 noundef 9, ptr noundef null) #11
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %if.end24.if.end56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 36) #15
  %tobool65.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool65.not, label %if.end56.cleanup_crit_edge, label %if.end67

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end67:                                         ; preds = %if.end56
  %buf68 = getelementptr inbounds %struct.cx88_audio_dev, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %buf68 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %buf68, align 4
  %22 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %period_size, align 4
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %call7.i.i, align 8
  %25 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_size, align 4
  %add = add i32 %26, 4095
  %shr = lshr i32 %add, 12
  %27 = load ptr, ptr %buf68, align 4
  %shl.i = and i32 %add, -4096
  %call.i = tail call noalias ptr @vmalloc_32(i32 noundef %shl.i) #16
  %vaddr.i = getelementptr inbounds %struct.cx88_audio_buffer, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %vaddr.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  %29 = load i32, ptr @debug, align 4
  %30 = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %30)
  %cmp.i = icmp ult i32 %30, -2
  br i1 %tobool.not.i, label %do.body.i, label %do.body9.i

do.body.i:                                        ; preds = %if.end67
  br i1 %cmp.i, label %do.end.i, label %do.body.i.error_crit_edge

do.body.i.error_crit_edge:                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %name.i = getelementptr inbounds %struct.cx88_core, ptr %32, i32 0, i32 3
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name.i, i32 noundef %shr) #14
  br label %error

do.body9.i:                                       ; preds = %if.end67
  br i1 %cmp.i, label %do.end15.i, label %do.body9.i.do.end25.i_crit_edge

do.body9.i.do.end25.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25.i

do.end15.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %name18.i = getelementptr inbounds %struct.cx88_core, ptr %34, i32 0, i32 3
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name18.i, ptr noundef nonnull %call.i, i32 noundef %shl.i) #14
  br label %do.end25.i

do.end25.i:                                       ; preds = %do.end15.i, %do.body9.i.do.end25.i_crit_edge
  %35 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %vaddr.i, align 4
  %37 = call ptr @memset(ptr %36, i32 0, i32 %shl.i)
  %nr_pages28.i = getelementptr inbounds %struct.cx88_audio_buffer, ptr %27, i32 0, i32 5
  %38 = ptrtoint ptr %nr_pages28.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr, ptr %nr_pages28.i, align 4
  %39 = mul nuw nsw i32 %shr, 20
  %call31.i = tail call noalias ptr @vzalloc(i32 noundef %39) #16
  %sglist.i = getelementptr inbounds %struct.cx88_audio_buffer, ptr %27, i32 0, i32 3
  %40 = ptrtoint ptr %sglist.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call31.i, ptr %sglist.i, align 4
  %tobool33.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool33.not.i, label %do.end25.i.vzalloc_err.i_crit_edge, label %if.end35.i

do.end25.i.vzalloc_err.i_crit_edge:               ; preds = %do.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vzalloc_err.i

if.end35.i:                                       ; preds = %do.end25.i
  %41 = ptrtoint ptr %nr_pages28.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr_pages28.i, align 4
  tail call void @sg_init_table(ptr noundef nonnull %call31.i, i32 noundef %42) #11
  %43 = ptrtoint ptr %nr_pages28.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_pages28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp3978.not.i = icmp eq i32 %44, 0
  br i1 %cmp3978.not.i, label %if.end35.i.if.end74_crit_edge, label %if.end35.i.for.body.i_crit_edge

if.end35.i.for.body.i_crit_edge:                  ; preds = %if.end35.i
  br label %for.body.i

if.end35.i.if.end74_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

for.body.i:                                       ; preds = %sg_set_page.exit.i.for.body.i_crit_edge, %if.end35.i.for.body.i_crit_edge
  %i.079.i = phi i32 [ %inc.i, %sg_set_page.exit.i.for.body.i_crit_edge ], [ 0, %if.end35.i.for.body.i_crit_edge ]
  %45 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vaddr.i, align 4
  %mul.i = shl i32 %i.079.i, 12
  %add.ptr.i = getelementptr i8, ptr %46, i32 %mul.i
  %call41.i = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr.i) #11
  %tobool42.not.i = icmp eq ptr %call41.i, null
  %47 = ptrtoint ptr %sglist.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sglist.i, align 4
  br i1 %tobool42.not.i, label %vmalloc_to_page_err.i, label %if.end44.i

if.end44.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %48, i32 %i.079.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i, align 4
  %51 = ptrtoint ptr %call41.i to i32
  %and2.i.i.i = and i32 %51, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !230

do.body5.i.i.i:                                   ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !231
  unreachable

do.body11.i.i.i:                                  ; preds = %if.end44.i
  %and.i.i.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_page.exit.i, label %do.body19.i.i.i, !prof !230

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !232
  unreachable

sg_set_page.exit.i:                               ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %50, 3
  %or.i.i.i = or i32 %and.i.i.i, %51
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or.i.i.i, ptr %arrayidx.i, align 4
  %offset1.i.i = getelementptr %struct.scatterlist, ptr %48, i32 %i.079.i, i32 1
  %53 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %48, i32 %i.079.i, i32 2
  %54 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4096, ptr %length.i.i, align 4
  %inc.i = add nuw i32 %i.079.i, 1
  %55 = ptrtoint ptr %nr_pages28.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nr_pages28.i, align 4
  %cmp39.i = icmp ult i32 %inc.i, %56
  br i1 %cmp39.i, label %sg_set_page.exit.i.for.body.i_crit_edge, label %sg_set_page.exit.i.if.end74_crit_edge

sg_set_page.exit.i.if.end74_crit_edge:            ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

sg_set_page.exit.i.for.body.i_crit_edge:          ; preds = %sg_set_page.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

vmalloc_to_page_err.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vfree(ptr noundef %48) #11
  %57 = ptrtoint ptr %sglist.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %sglist.i, align 4
  br label %vzalloc_err.i

vzalloc_err.i:                                    ; preds = %vmalloc_to_page_err.i, %do.end25.i.vzalloc_err.i_crit_edge
  %58 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vaddr.i, align 4
  tail call void @vfree(ptr noundef %59) #11
  %60 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %vaddr.i, align 4
  br label %error

if.end74:                                         ; preds = %sg_set_page.exit.i.if.end74_crit_edge, %if.end35.i.if.end74_crit_edge
  %61 = ptrtoint ptr %buf68 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buf68, align 4
  %pci.i = getelementptr inbounds %struct.cx88_audio_dev, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pci.i, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  %sglist.i138 = getelementptr inbounds %struct.cx88_audio_buffer, ptr %62, i32 0, i32 3
  %65 = ptrtoint ptr %sglist.i138 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sglist.i138, align 4
  %nr_pages.i = getelementptr inbounds %struct.cx88_audio_buffer, ptr %62, i32 0, i32 5
  %67 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %nr_pages.i, align 4
  %call.i139 = tail call i32 @dma_map_sg_attrs(ptr noundef %dev2.i, ptr noundef %66, i32 noundef %68, i32 noundef 2, i32 noundef 0) #11
  %sglen.i = getelementptr inbounds %struct.cx88_audio_buffer, ptr %62, i32 0, i32 4
  %69 = ptrtoint ptr %sglen.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call.i139, ptr %sglen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %cmp.i140 = icmp eq i32 %call.i139, 0
  br i1 %cmp.i140, label %cx88_alsa_dma_map.exit.thread, label %if.end78

cx88_alsa_dma_map.exit.thread:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64) #14
  br label %error

if.end78:                                         ; preds = %if.end74
  %70 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pci.i, align 4
  %risc = getelementptr inbounds %struct.cx88_audio_buffer, ptr %call7.i.i, i32 0, i32 1
  %sglist = getelementptr inbounds %struct.cx88_audio_buffer, ptr %call7.i.i, i32 0, i32 3
  %72 = ptrtoint ptr %sglist to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sglist, align 8
  %74 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %period_size, align 4
  %76 = ptrtoint ptr %num_periods to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_periods, align 4
  %call81 = tail call i32 @cx88_risc_databuffer(ptr noundef %71, ptr noundef %risc, ptr noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end78.error_crit_edge, label %if.end84

if.end78.error_crit_edge:                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end84:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %jmp = getelementptr inbounds %struct.cx88_audio_buffer, ptr %call7.i.i, i32 0, i32 1, i32 2
  %78 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %jmp, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 369, ptr %79, align 4
  %dma = getelementptr inbounds %struct.cx88_audio_buffer, ptr %call7.i.i, i32 0, i32 1, i32 3
  %81 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dma, align 8
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %84 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %jmp, align 4
  %arrayidx89 = getelementptr i32, ptr %85, i32 1
  %86 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %83, ptr %arrayidx89, align 4
  %87 = ptrtoint ptr %buf68 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buf68, align 4
  %vaddr = getelementptr inbounds %struct.cx88_audio_buffer, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %vaddr, align 4
  %91 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %runtime, align 4
  %dma_area92 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %92, i32 0, i32 50
  %93 = ptrtoint ptr %dma_area92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %dma_area92, align 4
  %94 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma_size, align 4
  %96 = load ptr, ptr %runtime, align 4
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %96, i32 0, i32 52
  %97 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %95, ptr %dma_bytes, align 4
  %98 = load ptr, ptr %runtime, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %98, i32 0, i32 51
  %99 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %dma_addr, align 8
  br label %cleanup

error:                                            ; preds = %if.end78.error_crit_edge, %cx88_alsa_dma_map.exit.thread, %vzalloc_err.i, %do.end.i, %do.body.i.error_crit_edge
  %ret.0 = phi i32 [ %call81, %if.end78.error_crit_edge ], [ -12, %cx88_alsa_dma_map.exit.thread ], [ -12, %vzalloc_err.i ], [ -12, %do.end.i ], [ -12, %do.body.i.error_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end84, %if.end56.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end84 ], [ -12, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx88_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
define internal i32 @snd_cx88_prepare(ptr nocapture noundef readnone %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx88_card_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_lock = getelementptr inbounds %struct.cx88_audio_dev, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #11
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %buf1.i = getelementptr inbounds %struct.cx88_audio_dev, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf1.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !233
  tail call void @arm_heavy_mb() #11
  %lmmio.i = getelementptr inbounds %struct.cx88_core, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %8, i32 831504
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !234
  %10 = and i32 %9, -285212673
  %11 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio.i, align 4
  %add.ptr5.i = getelementptr i32, ptr %12, i32 831504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %10) #11, !srcloc !218
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %4, align 4
  %dma.i = getelementptr inbounds %struct.cx88_audio_buffer, ptr %4, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma.i, align 4
  %call7.i = tail call i32 @cx88_sram_channel_setup(ptr noundef %14, ptr noundef getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx88_sram_channels, i32 0, i32 4), i32 noundef %16, i32 noundef %18) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !235
  tail call void @arm_heavy_mb() #11
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %4, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  %22 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio.i, align 4
  %add.ptr13.i = getelementptr i32, ptr %23, i32 831506
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %21) #11, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !236
  tail call void @arm_heavy_mb() #11
  %24 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio.i, align 4
  %add.ptr18.i = getelementptr i32, ptr %25, i32 831500
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 50331648) #11, !srcloc !218
  %count.i = getelementptr inbounds %struct.cx88_audio_dev, ptr %1, i32 0, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #11
  %26 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 0, ptr %count.i, align 4
  %27 = load i32, ptr @debug, align 4
  %28 = add i32 %27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %28)
  %cmp.i = icmp ult i32 %28, -2
  br i1 %cmp.i, label %do.end22.i, label %sw.bb.do.body40.i_crit_edge

sw.bb.do.body40.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body40.i

do.end22.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %name.i = getelementptr inbounds %struct.cx88_core, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %4, align 4
  %33 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lmmio.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx88_sram_channels, i32 0, i32 4, i32 1) to i32))
  %35 = load i32, ptr getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx88_sram_channels, i32 0, i32 4, i32 1), align 4
  %add29.i = add i32 %35, 8
  %shr.i = lshr i32 %add29.i, 2
  %add.ptr30.i = getelementptr i32, ptr %34, i32 %shr.i
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #11, !srcloc !215
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !237
  %shr34.i = lshr i32 %37, 1
  %num_periods.i = getelementptr inbounds %struct.cx88_audio_dev, ptr %1, i32 0, i32 9
  %38 = ptrtoint ptr %num_periods.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_periods.i, align 4
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %4, align 4
  %mul.i = mul i32 %41, %39
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name.i, i32 noundef %32, i32 noundef %shr34.i, i32 noundef %39, i32 noundef %mul.i) #14
  br label %do.body40.i

do.body40.i:                                      ; preds = %do.end22.i, %sw.bb.do.body40.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !238
  tail call void @arm_heavy_mb() #11
  %42 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lmmio.i, align 4
  %add.ptr44.i = getelementptr i32, ptr %43, i32 524312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 286261504) #11, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !239
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lmmio.i, align 4
  %add.ptr49.i = getelementptr i32, ptr %45, i32 524313
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 -1) #11, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !240
  tail call void @arm_heavy_mb() #11
  %46 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lmmio.i, align 4
  %add.ptr56.i = getelementptr i32, ptr %47, i32 524304
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56.i) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !241
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %pci_irqmask.i = getelementptr inbounds %struct.cx88_core, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %pci_irqmask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %pci_irqmask.i, align 8
  %53 = or i32 %48, 33554432
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #11
  %or70.i = or i32 %52, %54
  %55 = tail call i32 @llvm.bswap.i32(i32 %or70.i) #11
  %56 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lmmio.i, align 4
  %add.ptr72.i = getelementptr i32, ptr %57, i32 524304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 %55) #11, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !242
  tail call void @arm_heavy_mb() #11
  %58 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lmmio.i, align 4
  %add.ptr79.i = getelementptr i32, ptr %59, i32 524301
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79.i) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !243
  %61 = or i32 %60, 536870912
  %62 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lmmio.i, align 4
  %add.ptr86.i = getelementptr i32, ptr %63, i32 524301
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86.i, i32 %61) #11, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !244
  tail call void @arm_heavy_mb() #11
  %64 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lmmio.i, align 4
  %add.ptr93.i = getelementptr i32, ptr %65, i32 831504
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93.i) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !245
  %67 = or i32 %66, 285212672
  %68 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %lmmio.i, align 4
  %add.ptr100.i = getelementptr i32, ptr %69, i32 831504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100.i, i32 %67) #11, !srcloc !218
  %70 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i, label %do.body40.i.sw.epilog_crit_edge, label %do.body40.i.sw.epilog.sink.split_crit_edge

do.body40.i.sw.epilog.sink.split_crit_edge:       ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

do.body40.i.sw.epilog_crit_edge:                  ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %73 = load i32, ptr @debug, align 4
  %74 = add i32 %73, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %74)
  %cmp.i7 = icmp ult i32 %74, -2
  br i1 %cmp.i7, label %do.end.i, label %sw.bb1.do.body6.i_crit_edge

sw.bb1.do.body6.i_crit_edge:                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6.i

do.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #13
  %name.i8 = getelementptr inbounds %struct.cx88_core, ptr %72, i32 0, i32 3
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name.i8) #14
  br label %do.body6.i

do.body6.i:                                       ; preds = %do.end.i, %sw.bb1.do.body6.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !246
  tail call void @arm_heavy_mb() #11
  %lmmio.i9 = getelementptr inbounds %struct.cx88_core, ptr %72, i32 0, i32 7
  %75 = ptrtoint ptr %lmmio.i9 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %lmmio.i9, align 4
  %add.ptr.i10 = getelementptr i32, ptr %76, i32 831504
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !247
  %78 = and i32 %77, -285212673
  %79 = ptrtoint ptr %lmmio.i9 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lmmio.i9, align 4
  %add.ptr13.i11 = getelementptr i32, ptr %80, i32 831504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i11, i32 %78) #11, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !248
  tail call void @arm_heavy_mb() #11
  %81 = ptrtoint ptr %lmmio.i9 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lmmio.i9, align 4
  %add.ptr20.i = getelementptr i32, ptr %82, i32 524304
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !249
  %84 = and i32 %83, -33554433
  %85 = ptrtoint ptr %lmmio.i9 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %lmmio.i9, align 4
  %add.ptr27.i = getelementptr i32, ptr %86, i32 524304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %84) #11, !srcloc !218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !250
  tail call void @arm_heavy_mb() #11
  %87 = ptrtoint ptr %lmmio.i9 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lmmio.i9, align 4
  %add.ptr34.i = getelementptr i32, ptr %88, i32 524312
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #11, !srcloc !215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !251
  %90 = and i32 %89, -286261505
  %91 = ptrtoint ptr %lmmio.i9 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %lmmio.i9, align 4
  %add.ptr41.i = getelementptr i32, ptr %92, i32 524312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 %90) #11, !srcloc !218
  %93 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i12 = icmp eq i32 %93, 0
  br i1 %tobool.not.i12, label %do.body6.i.sw.epilog_crit_edge, label %do.body6.i.sw.epilog.sink.split_crit_edge

do.body6.i.sw.epilog.sink.split_crit_edge:        ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

do.body6.i.sw.epilog_crit_edge:                   ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %do.body6.i.sw.epilog.sink.split_crit_edge, %do.body40.i.sw.epilog.sink.split_crit_edge
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  tail call void @cx88_sram_channel_dump(ptr noundef %95, ptr noundef getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx88_sram_channels, i32 0, i32 4)) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body6.i.sw.epilog_crit_edge, %do.body40.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %do.body40.i.sw.epilog_crit_edge ], [ 0, %do.body6.i.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #11
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx88_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %count2 = getelementptr inbounds %struct.cx88_audio_dev, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count2, i32 noundef 4) #11
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
define internal ptr @snd_cx88_page(ptr nocapture noundef readonly %substream, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %call = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr) #11
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_pow2(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsp_buffer_free(ptr nocapture noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.cx88_audio_dev, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %risc1 = getelementptr inbounds %struct.cx88_audio_buffer, ptr %1, i32 0, i32 1
  %dma_size = getelementptr inbounds %struct.cx88_audio_dev, ptr %chip, i32 0, i32 7
  %2 = ptrtoint ptr %dma_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !228

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 354, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = load i32, ptr @debug, align 4
  %5 = add i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %5)
  %cmp = icmp ult i32 %5, -3
  br i1 %cmp, label %do.end26, label %if.end.do.end30_crit_edge

if.end.do.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end30

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %name = getelementptr inbounds %struct.cx88_core, ptr %7, i32 0, i32 3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name) #14
  br label %do.end30

do.end30:                                         ; preds = %do.end26, %if.end.do.end30_crit_edge
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buf, align 4
  %sglen.i = getelementptr inbounds %struct.cx88_audio_buffer, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sglen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %do.end30.cx88_alsa_dma_unmap.exit_crit_edge, label %if.end.i

do.end30.cx88_alsa_dma_unmap.exit_crit_edge:      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx88_alsa_dma_unmap.exit

if.end.i:                                         ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #13
  %pci.i = getelementptr inbounds %struct.cx88_audio_dev, ptr %chip, i32 0, i32 2
  %12 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci.i, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %sglist.i = getelementptr inbounds %struct.cx88_audio_buffer, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %sglist.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sglist.i, align 4
  %nr_pages.i = getelementptr inbounds %struct.cx88_audio_buffer, ptr %9, i32 0, i32 5
  %16 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_pages.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev2.i, ptr noundef %15, i32 noundef %17, i32 noundef 2, i32 noundef 0) #11
  %18 = ptrtoint ptr %sglen.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %sglen.i, align 4
  br label %cx88_alsa_dma_unmap.exit

cx88_alsa_dma_unmap.exit:                         ; preds = %if.end.i, %do.end30.cx88_alsa_dma_unmap.exit_crit_edge
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf, align 4
  %sglist.i1 = getelementptr inbounds %struct.cx88_audio_buffer, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %sglist.i1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sglist.i1, align 4
  tail call void @vfree(ptr noundef %22) #11
  %23 = ptrtoint ptr %sglist.i1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %sglist.i1, align 4
  %vaddr.i = getelementptr inbounds %struct.cx88_audio_buffer, ptr %20, i32 0, i32 2
  %24 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vaddr.i, align 4
  tail call void @vfree(ptr noundef %25) #11
  %26 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %vaddr.i, align 4
  %cpu = getelementptr inbounds %struct.cx88_audio_buffer, ptr %1, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cpu, align 4
  %tobool34.not = icmp eq ptr %28, null
  br i1 %tobool34.not, label %cx88_alsa_dma_unmap.exit.if.end37_crit_edge, label %if.then35

cx88_alsa_dma_unmap.exit.if.end37_crit_edge:      ; preds = %cx88_alsa_dma_unmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then35:                                        ; preds = %cx88_alsa_dma_unmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pci = getelementptr inbounds %struct.cx88_audio_dev, ptr %chip, i32 0, i32 2
  %29 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %risc1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %risc1, align 4
  %dma = getelementptr inbounds %struct.cx88_audio_buffer, ptr %1, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %32, ptr noundef nonnull %28, i32 noundef %34, i32 noundef 0) #11
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %cx88_alsa_dma_unmap.exit.if.end37_crit_edge
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf, align 4
  tail call void @kfree(ptr noundef %36) #11
  %37 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %buf, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_risc_databuffer(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_32(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_sram_channel_setup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_cx88_volume_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 63, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx88_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %5, i32 819557
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !215
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !252
  %and = and i32 %7, 63
  %sub = xor i32 %and, 63
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr6 = getelementptr i32, ptr %9, i32 819558
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #11, !srcloc !215
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !253
  %value10 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %and11 = lshr i32 %11, 6
  %and11.lobit = and i32 %and11, 1
  %12 = xor i32 %and11.lobit, 1
  %arrayidx = getelementptr [128 x i32], ptr %value10, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %arrayidx, align 4
  %and12 = and i32 %11, 63
  %sub13 = sub nsw i32 %sub, %and12
  %14 = tail call i32 @llvm.smax.i32(i32 %sub13, i32 0)
  %arrayidx19 = getelementptr [128 x i32], ptr %value10, i32 0, i32 %and11.lobit
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx19, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx88_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sd_wm8775 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %sd_wm8775 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_wm8775, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %value2.i = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %6 = ptrtoint ptr %value2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value2.i, align 8
  %arrayidx4.i = getelementptr [128 x i32], ptr %value2.i, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %conv6.i = and i32 %7, 65535
  %conv7.i = and i32 %9, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6.i, i32 %conv7.i)
  %cmp.not.i = icmp ult i32 %conv6.i, %conv7.i
  br i1 %cmp.not.i, label %cond.end23.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv6.i)
  %tobool.not.i = icmp eq i32 %conv6.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body.i_crit_edge, label %cond.true.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul.i = shl nuw nsw i32 %conv7.i, 15
  %div.i = udiv i32 %mul.i, %conv6.i
  br label %do.body.i

cond.end23.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %mul19.i = shl nuw nsw i32 %conv6.i, 15
  %div21.i = udiv i32 %mul19.i, %conv7.i
  %sub.i = sub nsw i32 65535, %div21.i
  br label %do.body.i

do.body.i:                                        ; preds = %cond.end23.i, %cond.true.i, %if.then.i.do.body.i_crit_edge
  %v.0.in.i = phi i32 [ %conv7.i, %cond.end23.i ], [ 0, %if.then.i.do.body.i_crit_edge ], [ %conv6.i, %cond.true.i ]
  %b.0.i = phi i32 [ %sub.i, %cond.end23.i ], [ 32768, %if.then.i.do.body.i_crit_edge ], [ %div.i, %cond.true.i ]
  %v.0.i = shl nuw nsw i32 %v.0.in.i, 10
  %ctrl_handler.i = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl_handler.i, align 4
  %call.i = tail call ptr @v4l2_ctrl_find(ptr noundef %11, i32 noundef 9963781) #11
  %tobool25.not.i = icmp eq ptr %call.i, null
  br i1 %tobool25.not.i, label %do.body.i.if.end38.i_crit_edge, label %land.lhs.true.i

do.body.i.if.end38.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %i2c_rc.i = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %i2c_rc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %i2c_rc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool26.not.i = icmp eq i32 %13, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %land.lhs.true.i.if.end38.i_crit_edge

land.lhs.true.i.if.end38.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.then27.i:                                      ; preds = %land.lhs.true.i
  %gate_ctrl.i = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 26
  %14 = ptrtoint ptr %gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gate_ctrl.i, align 4
  %tobool28.not.i = icmp eq ptr %15, null
  br i1 %tobool28.not.i, label %if.then27.i.if.end31.i_crit_edge, label %if.then29.i

if.then27.i.if.end31.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %15(ptr noundef %3, i32 noundef 1) #11
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.then27.i.if.end31.i_crit_edge
  %handler.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %19, i32 noundef 0) #11
  %call.i.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %call.i, i32 noundef %v.0.i) #11
  %20 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i2.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %lock.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock.i2.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %23) #11
  %24 = ptrtoint ptr %gate_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gate_ctrl.i, align 4
  %tobool34.not.i = icmp eq ptr %25, null
  br i1 %tobool34.not.i, label %if.end31.i.if.end38.i_crit_edge, label %if.then35.i

if.end31.i.if.end38.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38.i

if.then35.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %25(ptr noundef %3, i32 noundef 0) #11
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %if.end31.i.if.end38.i_crit_edge, %land.lhs.true.i.if.end38.i_crit_edge, %do.body.i.if.end38.i_crit_edge
  %26 = ptrtoint ptr %sd_wm8775 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sd_wm8775, align 4
  %ctrl_handler42.i = getelementptr inbounds %struct.v4l2_subdev, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %ctrl_handler42.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctrl_handler42.i, align 4
  %call43.i = tail call ptr @v4l2_ctrl_find(ptr noundef %29, i32 noundef 9963782) #11
  %tobool44.not.i = icmp eq ptr %call43.i, null
  br i1 %tobool44.not.i, label %if.end38.i.if.end_crit_edge, label %land.lhs.true45.i

if.end38.i.if.end_crit_edge:                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true45.i:                                ; preds = %if.end38.i
  %i2c_rc46.i = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 15
  %30 = ptrtoint ptr %i2c_rc46.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %i2c_rc46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool47.not.i = icmp eq i32 %31, 0
  br i1 %tobool47.not.i, label %if.then48.i, label %land.lhs.true45.i.if.end_crit_edge

land.lhs.true45.i.if.end_crit_edge:               ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then48.i:                                      ; preds = %land.lhs.true45.i
  %gate_ctrl49.i = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 26
  %32 = ptrtoint ptr %gate_ctrl49.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gate_ctrl49.i, align 4
  %tobool50.not.i = icmp eq ptr %33, null
  br i1 %tobool50.not.i, label %if.then48.i.if.end53.i_crit_edge, label %if.then51.i

if.then48.i.if.end53.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53.i

if.then51.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %33(ptr noundef %3, i32 noundef 1) #11
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then51.i, %if.then48.i.if.end53.i_crit_edge
  %handler.i.i92.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call43.i, i32 0, i32 2
  %34 = ptrtoint ptr %handler.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %handler.i.i92.i, align 8
  %lock.i.i93.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %lock.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lock.i.i93.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %37, i32 noundef 0) #11
  %call.i94.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %call43.i, i32 noundef %b.0.i) #11
  %38 = ptrtoint ptr %handler.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %handler.i.i92.i, align 8
  %lock.i2.i95.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %lock.i2.i95.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lock.i2.i95.i, align 4
  tail call void @mutex_unlock(ptr noundef %41) #11
  %42 = ptrtoint ptr %gate_ctrl49.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %gate_ctrl49.i, align 4
  %tobool56.not.i = icmp eq ptr %43, null
  br i1 %tobool56.not.i, label %if.end53.i.if.end_crit_edge, label %if.then57.i

if.end53.i.if.end_crit_edge:                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then57.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %43(ptr noundef %3, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then57.i, %if.end53.i.if.end_crit_edge, %land.lhs.true45.i.if.end_crit_edge, %if.end38.i.if.end_crit_edge, %entry.if.end_crit_edge
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %44 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %value2, align 8
  %and = and i32 %45, 63
  %arrayidx4 = getelementptr [128 x i32], ptr %value2, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx4, align 4
  %and5 = and i32 %47, 63
  %sub = sub nsw i32 %and5, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  %sub8 = sub nsw i32 0, %sub
  %or = or i32 %sub8, 64
  %b.0 = select i1 %cmp, i32 %or, i32 %sub
  %v.0.in = select i1 %cmp, i32 %and, i32 %and5
  %v.0 = xor i32 %v.0.in, 63
  %reg_lock = getelementptr inbounds %struct.cx88_audio_dev, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #11
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 7
  %48 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %49, i32 819557
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !215
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !254
  %and12 = and i32 %51, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %v.0, i32 %and12)
  %cmp13.not = icmp eq i32 %v.0, %and12
  br i1 %cmp13.not, label %if.end.if.end22_crit_edge, label %if.then14

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and15 = and i32 %51, -64
  %or16 = or i32 %and15, %v.0
  %arrayidx17 = getelementptr %struct.cx88_core, ptr %3, i32 0, i32 9, i32 1
  %52 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or16, ptr %arrayidx17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !255
  tail call void @arm_heavy_mb() #11
  %53 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx17, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %56 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lmmio, align 4
  %add.ptr21 = getelementptr i32, ptr %57, i32 819557
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %55) #11, !srcloc !218
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.end.if.end22_crit_edge
  %changed.0 = phi i32 [ 1, %if.then14 ], [ 0, %if.end.if.end22_crit_edge ]
  %58 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lmmio, align 4
  %add.ptr26 = getelementptr i32, ptr %59, i32 819558
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #11, !srcloc !215
  %61 = lshr i32 %60, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !256
  %and30 = and i32 %61, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %and30, i32 %b.0)
  %cmp31.not = icmp eq i32 %and30, %b.0
  br i1 %cmp31.not, label %if.end22.if.end38_crit_edge, label %do.body33

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

do.body33:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !257
  tail call void @arm_heavy_mb() #11
  %62 = tail call i32 @llvm.bswap.i32(i32 %b.0)
  %63 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lmmio, align 4
  %add.ptr37 = getelementptr i32, ptr %64, i32 819558
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %62) #11, !srcloc !218
  br label %if.end38

if.end38:                                         ; preds = %do.body33, %if.end22.if.end38_crit_edge
  %changed.1 = phi i32 [ 1, %do.body33 ], [ %changed.0, %if.end22.if.end38_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #11
  ret i32 %changed.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx88_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %7, i32 819557
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !215
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !258
  %and = and i32 %9, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %10 = ptrtoint ptr %value3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %lnot.ext, ptr %value3, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx88_switch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %reg_lock = getelementptr inbounds %struct.cx88_audio_dev, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #11
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %7, i32 819557
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !215
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !259
  %value3 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %10 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value3, align 8
  %and = and i32 %9, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %lnot.ext)
  %cmp.not = icmp eq i32 %11, %lnot.ext
  br i1 %cmp.not, label %entry.if.end34_crit_edge, label %if.then

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then:                                          ; preds = %entry
  %xor = xor i32 %9, %5
  %arrayidx4 = getelementptr %struct.cx88_core, ptr %3, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %xor, ptr %arrayidx4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !260
  tail call void @arm_heavy_mb() #11
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lmmio, align 4
  %add.ptr8 = getelementptr i32, ptr %17, i32 819557
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %15) #11, !srcloc !218
  %sd_wm8775 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 20
  %18 = ptrtoint ptr %sd_wm8775 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd_wm8775, align 4
  %tobool9.not = icmp ne ptr %19, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp10 = icmp eq i32 %5, 64
  %or.cond = select i1 %tobool9.not, i1 %cmp10, i1 false
  br i1 %or.cond, label %do.body12, label %if.then.if.end34_crit_edge

if.then.if.end34_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

do.body12:                                        ; preds = %if.then
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl_handler, align 4
  %call14 = tail call ptr @v4l2_ctrl_find(ptr noundef %21, i32 noundef 9963785) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.body12.if.end34_crit_edge, label %land.lhs.true16

do.body12.if.end34_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true16:                                  ; preds = %do.body12
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 15
  %22 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool17.not = icmp eq i32 %23, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true16.if.end34_crit_edge

land.lhs.true16.if.end34_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then18:                                        ; preds = %land.lhs.true16
  %gate_ctrl = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 26
  %24 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gate_ctrl, align 4
  %tobool19.not = icmp eq ptr %25, null
  br i1 %tobool19.not, label %if.then18.if.end_crit_edge, label %if.then20

if.then18.if.end_crit_edge:                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %25(ptr noundef %3, i32 noundef 1) #11
  br label %if.end

if.end:                                           ; preds = %if.then20, %if.then18.if.end_crit_edge
  %and22 = lshr i32 %xor, 6
  %and22.lobit = and i32 %and22, 1
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call14, i32 0, i32 2
  %26 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %29, i32 noundef 0) #11
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %call14, i32 noundef %and22.lobit) #11
  %30 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %33) #11
  %34 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gate_ctrl, align 4
  %tobool26.not = icmp eq ptr %35, null
  br i1 %tobool26.not, label %if.end.if.end34_crit_edge, label %if.then27

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %35(ptr noundef %3, i32 noundef 0) #11
  br label %if.end34

if.end34:                                         ; preds = %if.then27, %if.end.if.end34_crit_edge, %land.lhs.true16.if.end34_crit_edge, %do.body12.if.end34_crit_edge, %if.then.if.end34_crit_edge, %entry.if.end34_crit_edge
  %ret.0 = phi i32 [ 0, %entry.if.end34_crit_edge ], [ 1, %do.body12.if.end34_crit_edge ], [ 1, %land.lhs.true16.if.end34_crit_edge ], [ 1, %if.then27 ], [ 1, %if.end.if.end34_crit_edge ], [ 1, %if.then.if.end34_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx88_alc_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sd_wm8775 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %sd_wm8775 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_wm8775, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_handler, align 4
  %call = tail call ptr @v4l2_ctrl_find(ptr noundef %7, i32 noundef 9963786) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %land.lhs.true

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true
  %gate_ctrl = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 26
  %10 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gate_ctrl, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %11(ptr noundef %3, i32 noundef 1) #11
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %call7 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef nonnull %call) #11
  %12 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gate_ctrl, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %13(ptr noundef %3, i32 noundef 0) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %val2.0 = phi i32 [ 0, %land.lhs.true.if.end13_crit_edge ], [ %call7, %if.then10 ], [ %call7, %if.end.if.end13_crit_edge ], [ 0, %entry.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2.0)
  %tobool14.not = icmp ne i32 %val2.0, 0
  %cond = zext i1 %tobool14.not to i32
  %value15 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %14 = ptrtoint ptr %value15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond, ptr %value15, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cx88_alc_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %sd_wm8775 = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %sd_wm8775 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_wm8775, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_handler, align 4
  %call = tail call ptr @v4l2_ctrl_find(ptr noundef %7, i32 noundef 9963786) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %land.lhs.true

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %i2c_rc = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_rc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true
  %gate_ctrl = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 26
  %10 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gate_ctrl, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %11(ptr noundef %3, i32 noundef 1) #11
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %value6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %12 = ptrtoint ptr %value6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp ne i32 %13, 0
  %conv = zext i1 %cmp to i32
  %handler.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %handler.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %17, i32 noundef 0) #11
  %call.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef nonnull %call, i32 noundef %conv) #11
  %18 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %handler.i.i, align 8
  %lock.i2.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %lock.i2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lock.i2.i, align 4
  tail call void @mutex_unlock(ptr noundef %21) #11
  %22 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gate_ctrl, align 4
  %tobool9.not = icmp eq ptr %23, null
  br i1 %tobool9.not, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %23(ptr noundef %3, i32 noundef 0) #11
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !27, !28, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !66, !68, !70, !72, !73, !74, !75, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !97, !99, !100, !101, !102, !104, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !149, !150, !151, !153, !154, !155, !157, !159, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !190, !192, !194, !196, !198, !200, !202}
!llvm.module.flags = !{!204, !205, !206, !207, !208, !209, !210, !211}
!llvm.ident = !{!212}

!0 = !{ptr @__param_enable, !1, !"__param_enable", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 85, i32 1}
!2 = !{ptr @__UNIQUE_ID_enabletype391, !1, !"__UNIQUE_ID_enabletype391", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_enable392, !4, !"__UNIQUE_ID_enable392", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 86, i32 1}
!5 = !{ptr @__param_index, !6, !"__param_index", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 88, i32 1}
!7 = !{ptr @__UNIQUE_ID_indextype393, !6, !"__UNIQUE_ID_indextype393", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_index394, !9, !"__UNIQUE_ID_index394", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 89, i32 1}
!10 = !{ptr @__UNIQUE_ID_description395, !11, !"__UNIQUE_ID_description395", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 95, i32 1}
!12 = !{ptr @__UNIQUE_ID_author396, !13, !"__UNIQUE_ID_author396", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 96, i32 1}
!14 = !{ptr @__UNIQUE_ID_author397, !15, !"__UNIQUE_ID_author397", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 97, i32 1}
!16 = !{ptr @__UNIQUE_ID_file398, !17, !"__UNIQUE_ID_file398", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 98, i32 1}
!18 = !{ptr @__UNIQUE_ID_license399, !17, !"__UNIQUE_ID_license399", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_version400, !20, !"__UNIQUE_ID_version400", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 99, i32 1}
!21 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__modver_attr, !20, !"__modver_attr", i1 false, i1 false}
!25 = !{ptr @__param_debug, !26, !"__param_debug", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 102, i32 1}
!27 = !{ptr @__UNIQUE_ID_debugtype401, !26, !"__UNIQUE_ID_debugtype401", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_debug402, !29, !"__UNIQUE_ID_debug402", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 103, i32 1}
!30 = !{ptr @__initcall__kmod_cx88_alsa__403_1007_cx88_audio_pci_driver_init6, !31, !"__initcall__kmod_cx88_alsa__403_1007_cx88_audio_pci_driver_init6", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 1007, i32 1}
!32 = !{ptr @__exitcall_cx88_audio_pci_driver_exit, !31, !"__exitcall_cx88_audio_pci_driver_exit", i1 false, i1 false}
!33 = !{ptr @debug, !34, !"debug", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 101, i32 21}
!35 = !{ptr @__param_str_enable, !1, !"__param_str_enable", i1 false, i1 false}
!36 = !{ptr @__param_arr_enable, !1, !"__param_arr_enable", i1 false, i1 false}
!37 = !{ptr @enable, !38, !"enable", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 83, i32 13}
!39 = !{ptr @__param_str_index, !6, !"__param_str_index", i1 false, i1 false}
!40 = !{ptr @__param_arr_index, !6, !"__param_arr_index", i1 false, i1 false}
!41 = !{ptr @index, !42, !"index", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 81, i32 12}
!43 = !{ptr @__param_str_debug, !26, !"__param_str_debug", i1 false, i1 false}
!44 = !{ptr @.str.3, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 1001, i32 14}
!46 = !{ptr @cx88_audio_pci_driver, !47, !"cx88_audio_pci_driver", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 1000, i32 26}
!48 = !{ptr @cx88_audio_pci_tbl, !49, !"cx88_audio_pci_tbl", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 809, i32 35}
!50 = !{ptr @.str.4, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 940, i32 30}
!52 = !{ptr @.str.5, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 961, i32 24}
!54 = !{ptr @.str.6, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 962, i32 27}
!56 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 963, i32 26}
!58 = !{ptr @.str.8, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 966, i32 27}
!60 = !{ptr @.str.9, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 968, i32 2}
!62 = !{ptr @.str.10, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @cx88_audio_initdev._entry, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @cx88_audio_initdev._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @devno, !67, !"devno", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 845, i32 12}
!68 = distinct !{null, !69, !"id", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 82, i32 20}
!70 = !{ptr @.str.12, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 873, i32 3}
!72 = !{ptr @.str.13, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @snd_cx88_create._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @snd_cx88_create._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @snd_cx88_create.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 882, i32 2}
!77 = !{ptr @.str.14, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.16, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 890, i32 3}
!80 = !{ptr @snd_cx88_create._entry.15, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @snd_cx88_create._entry_ptr.17, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 898, i32 2}
!84 = !{ptr @snd_cx88_create._entry.18, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @snd_cx88_create._entry_ptr.20, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 253, i32 3}
!88 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @cx8801_irq._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @cx8801_irq._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.24, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 265, i32 3}
!93 = !{ptr @cx8801_irq._entry.23, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @cx8801_irq._entry_ptr.25, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.26, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 216, i32 22}
!97 = !{ptr @.str.27, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 221, i32 3}
!99 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @cx8801_aud_irq._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @cx8801_aud_irq._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 226, i32 3}
!104 = !{ptr @cx8801_aud_irq._entry.29, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @cx8801_aud_irq._entry_ptr.31, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.32, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 190, i32 2}
!108 = !{ptr @.str.33, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 190, i32 15}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 190, i32 28}
!112 = !{ptr @.str.35, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 192, i32 2}
!114 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 192, i32 15}
!116 = !{ptr @.str.37, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 192, i32 28}
!118 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 194, i32 2}
!120 = !{ptr @.str.39, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 194, i32 12}
!122 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 194, i32 22}
!124 = !{ptr @.str.41, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 196, i32 2}
!126 = !{ptr @.str.42, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 196, i32 13}
!128 = !{ptr @.str.43, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 196, i32 24}
!130 = !{ptr @.str.44, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 198, i32 2}
!132 = !{ptr @.str.45, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 198, i32 13}
!134 = !{ptr @.str.46, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 198, i32 24}
!136 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 199, i32 2}
!138 = !{ptr @.str.48, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 199, i32 15}
!140 = !{ptr @.str.49, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 199, i32 26}
!142 = !{ptr @cx88_aud_irqs, !143, !"cx88_aud_irqs", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 189, i32 20}
!144 = !{ptr @snd_cx88_pcm_ops, !145, !"snd_cx88_pcm_ops", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 585, i32 33}
!146 = !{ptr @.str.51, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 410, i32 3}
!148 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @snd_cx88_pcm_open._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @snd_cx88_pcm_open._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 433, i32 2}
!153 = !{ptr @snd_cx88_pcm_open._entry.53, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @snd_cx88_pcm_open._entry_ptr.55, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @snd_cx88_digital_hw, !156, !"snd_cx88_digital_hw", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 377, i32 38}
!157 = !{ptr @.str.56, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 356, i32 2}
!159 = !{ptr @.str.57, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @dsp_buffer_free._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @dsp_buffer_free._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.58, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 282, i32 3}
!164 = !{ptr @.str.59, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @cx88_alsa_dma_init._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @cx88_alsa_dma_init._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.61, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 286, i32 2}
!169 = !{ptr @cx88_alsa_dma_init._entry.60, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @cx88_alsa_dma_init._entry_ptr.62, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.63, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 322, i32 3}
!173 = !{ptr @.str.64, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @cx88_alsa_dma_map._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @cx88_alsa_dma_map._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.65, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 132, i32 2}
!178 = !{ptr @.str.66, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @_cx88_start_audio_dma._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @_cx88_start_audio_dma._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.67, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 167, i32 2}
!183 = !{ptr @.str.68, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @_cx88_stop_audio_dma._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @_cx88_stop_audio_dma._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.69, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 709, i32 10}
!188 = !{ptr @snd_cx88_volume, !189, !"snd_cx88_volume", i1 false, i1 false}
!189 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 705, i32 38}
!190 = !{ptr @snd_cx88_db_scale, !191, !"snd_cx88_db_scale", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 703, i32 14}
!192 = !{ptr @.str.70, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 753, i32 10}
!194 = !{ptr @snd_cx88_dac_switch, !195, !"snd_cx88_dac_switch", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 751, i32 38}
!196 = !{ptr @.str.71, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 762, i32 10}
!198 = !{ptr @snd_cx88_source_switch, !199, !"snd_cx88_source_switch", i1 false, i1 false}
!199 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 760, i32 38}
!200 = !{ptr @.str.72, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 794, i32 10}
!202 = !{ptr @snd_cx88_alc_switch, !203, !"snd_cx88_alc_switch", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/cx88/cx88-alsa.c", i32 792, i32 38}
!204 = !{i32 1, !"wchar_size", i32 2}
!205 = !{i32 1, !"min_enum_size", i32 4}
!206 = !{i32 8, !"branch-target-enforcement", i32 0}
!207 = !{i32 8, !"sign-return-address", i32 0}
!208 = !{i32 8, !"sign-return-address-all", i32 0}
!209 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!210 = !{i32 7, !"uwtable", i32 1}
!211 = !{i32 7, !"frame-pointer", i32 2}
!212 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!213 = !{!"auto-init"}
!214 = !{i8 0, i8 2}
!215 = !{i64 5024610}
!216 = !{i64 2158889965}
!217 = !{i64 2158892320}
!218 = !{i64 5024192}
!219 = !{i64 2158880729}
!220 = !{i64 2158881331}
!221 = !{i64 2158881637}
!222 = !{i64 2158885239}
!223 = !{i64 2158886308}
!224 = !{i64 2158888545}
!225 = !{i64 2158889360}
!226 = !{i64 2158895681}
!227 = !{i64 2158896770}
!228 = !{!"branch_weights", i32 1, i32 2000}
!229 = !{i32 0, i32 33}
!230 = !{!"branch_weights", i32 2000, i32 1}
!231 = !{i64 2154401285, i64 2154401777, i64 2154401322, i64 2154401378, i64 2154401412, i64 2154401436, i64 2154401477, i64 2154401498, i64 2154401526, i64 2154401560}
!232 = !{i64 2154402895, i64 2154403387, i64 2154402932, i64 2154402988, i64 2154403022, i64 2154403046, i64 2154403087, i64 2154403108, i64 2154403136, i64 2154403170}
!233 = !{i64 2158855698}
!234 = !{i64 2158856767}
!235 = !{i64 2158857133}
!236 = !{i64 2158857655}
!237 = !{i64 2158861082}
!238 = !{i64 2158861506}
!239 = !{i64 2158862133}
!240 = !{i64 2158863924}
!241 = !{i64 2158865193}
!242 = !{i64 2158866714}
!243 = !{i64 2158867821}
!244 = !{i64 2158869229}
!245 = !{i64 2158870312}
!246 = !{i64 2158873526}
!247 = !{i64 2158874595}
!248 = !{i64 2158875996}
!249 = !{i64 2158877085}
!250 = !{i64 2158878706}
!251 = !{i64 2158879939}
!252 = !{i64 2158912173}
!253 = !{i64 2158912775}
!254 = !{i64 2158914359}
!255 = !{i64 2158914733}
!256 = !{i64 2158915568}
!257 = !{i64 2158915864}
!258 = !{i64 2158917492}
!259 = !{i64 2158918130}
!260 = !{i64 2158918490}
