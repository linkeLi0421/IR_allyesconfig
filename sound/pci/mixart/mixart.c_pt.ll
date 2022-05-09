; ModuleID = '/llk/IR_all_yes/sound/pci/mixart/mixart.c_pt.bc'
source_filename = "../sound/pci/mixart/mixart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.snd_info_entry_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mixart_msg = type { i32, %struct.mixart_uid, ptr, i32 }
%struct.mixart_uid = type { i32, i32 }
%struct.snd_mixart = type { ptr, ptr, i32, ptr, ptr, ptr, %struct.mixart_pipe, %struct.mixart_pipe, %struct.mixart_pipe, %struct.mixart_pipe, [2 x [4 x %struct.mixart_stream]], [2 x %struct.mixart_stream], %struct.mixart_uid, %struct.mixart_uid, [2 x i32], [2 x i32], [2 x i32], [8 x [2 x i32]], [8 x [2 x i32]], [2 x [2 x i32]], [2 x i32], [2 x i32] }
%struct.mixart_pipe = type { %struct.mixart_uid, i32, %struct.mixart_uid, %struct.mixart_uid, i32, i32, i32 }
%struct.mixart_stream = type { ptr, ptr, i32, i32, i64, i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mixart_streaming_group_req = type { i32, i32, i32, i32, i32, [32 x %struct.mixart_stream_info], %struct.mixart_uid, [32 x i32] }
%struct.mixart_stream_info = type { i32, i32, i32 }
%struct.mixart_mgr = type { i32, [4 x ptr], ptr, i32, [2 x %struct.mem_area], i32, %struct.wait_queue_head, [16 x i32], i32, i32, %struct.atomic_t, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.mixart_uid, i32, i32, %struct.mutex }
%struct.mem_area = type { i32, ptr, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.mixart_flowinfo = type { i32, [11 x i32], i32, i32 }
%struct.mixart_bufferinfo = type { i32, [5 x i32], i32, i32 }
%struct.anon.84 = type { %struct.mixart_streaming_group_req, %struct.mixart_streaming_group }
%struct.mixart_streaming_group = type { i32, %struct.mixart_uid, i32, i32, [32 x %struct.mixart_stream_desc] }
%struct.mixart_stream_desc = type { %struct.mixart_uid, i32 }
%struct.mixart_delete_group_resp = type { i32, [2 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.73, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.73 = type { ptr }
%struct.mixart_clock_properties = type { i32, i32, i32, i32, i32, i32, %struct.mixart_uid, %struct.mixart_uid, i32, i32, i32, i32, i32, [1 x %struct.mixart_uid] }
%struct.mixart_clock_properties_resp = type { i32, i32 }
%struct.mixart_group_state_req = type <{ i32, i64, [2 x i32], i32, [1 x %struct.mixart_uid] }>
%struct.mixart_group_state_resp = type <{ i32, i64 }>
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.mixart_stream_state_req = type <{ i32, i64, [3 x i32], i32, %struct.mixart_flow_info }>
%struct.mixart_flow_info = type { %struct.mixart_txx_stream_desc, i32, i32 }
%struct.mixart_txx_stream_desc = type { %struct.mixart_uid, i32, i32, [4 x %struct.mixart_fx_couple_uid] }
%struct.mixart_fx_couple_uid = type { %struct.mixart_uid, %struct.mixart_uid }
%struct.mixart_stream_param_desc = type <{ i32, i32, %union.anon.86, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, i32, [1 x %struct.mixart_txx_stream_desc] }>
%union.anon.86 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mixart_return_uid = type { i32, %struct.mixart_uid }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.72, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.72 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }

@__UNIQUE_ID_author242 = internal constant [47 x i8] c"snd_mixart.author=Digigram <alsa@digigram.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [39 x i8] c"snd_mixart.description=Digigram miXart\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [44 x i8] c"snd_mixart.file=sound/pci/mixart/snd-mixart\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [23 x i8] c"snd_mixart.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [17 x i8] c"snd_mixart.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [39 x i8] c"snd_mixart.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [65 x i8] c"snd_mixart.parm=index:Index value for Digigram miXart soundcard.\00", section ".modinfo", align 1
@__param_str_id = internal constant [14 x i8] c"snd_mixart.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [38 x i8] c"snd_mixart.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [60 x i8] c"snd_mixart.parm=id:ID string for Digigram miXart soundcard.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [18 x i8] c"snd_mixart.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [41 x i8] c"snd_mixart.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [57 x i8] c"snd_mixart.parm=enable:Enable Digigram miXart soundcard.\00", section ".modinfo", align 1
@snd_mixart_add_ref_pipe.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_mixart\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_mixart_add_ref_pipe\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/pci/mixart/mixart.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"add_ref_pipe audio chip(%d) pcm(%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_mixart_add_ref_pipe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 308, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"error MSG_STREAM_ADD_**PUT_GROUP err=%x stat=%x !\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_mixart_add_ref_pipe._entry_ptr = internal global ptr @snd_mixart_add_ref_pipe._entry, section ".printk_index", align 4
@snd_mixart_kill_ref_pipe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 350, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mixart_set_clock(0) return error!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_mixart_kill_ref_pipe\00", [39 x i8] zeroinitializer }, align 32
@snd_mixart_kill_ref_pipe._entry_ptr = internal global ptr @snd_mixart_kill_ref_pipe._entry, section ".printk_index", align 4
@snd_mixart_kill_ref_pipe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 356, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error stopping pipe!\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_mixart_kill_ref_pipe._entry_ptr.11 = internal global ptr @snd_mixart_kill_ref_pipe._entry.9, section ".printk_index", align 4
@snd_mixart_kill_ref_pipe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 369, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"error MSG_STREAM_DELETE_GROUP err(%x), status(%x)\0A\00", [45 x i8] zeroinitializer }, align 32
@snd_mixart_kill_ref_pipe._entry_ptr.14 = internal global ptr @snd_mixart_kill_ref_pipe._entry.12, section ".printk_index", align 4
@__initcall__kmod_snd_mixart__265_1408_mixart_driver_init6 = internal global ptr @mixart_driver_init, section ".initcall6.init", align 4
@mixart_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_mixart_ids, ptr @snd_mixart_probe, ptr @snd_mixart_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mixart_driver_exit = internal global ptr @mixart_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mixart_set_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"error mixart_set_clock(%d) called with wrong pipe->status !\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mixart_set_clock\00", [47 x i8] zeroinitializer }, align 32
@mixart_set_clock._entry_ptr = internal global ptr @mixart_set_clock._entry, section ".printk_index", align 4
@mixart_set_clock.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mixart_set_clock to %d kHz\0A\00", [36 x i8] zeroinitializer }, align 32
@mixart_set_clock._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.2, i32 201, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"error MSG_CLOCK_SET_PROPERTIES err=%x stat=%x mod=%x !\0A\00", [40 x i8] zeroinitializer }, align 32
@mixart_set_clock._entry_ptr.20 = internal global ptr @mixart_set_clock._entry.18, section ".printk_index", align 4
@mixart_set_pipe_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 77, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"error mixart_set_pipe_state called with wrong pipe->status!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mixart_set_pipe_state\00", [42 x i8] zeroinitializer }, align 32
@mixart_set_pipe_state._entry_ptr = internal global ptr @mixart_set_pipe_state._entry, section ".printk_index", align 4
@mixart_set_pipe_state._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 93, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"error : MSG_SYSTEM_WAIT_SYNCHRO_CMD was not notified !\0A\00", [40 x i8] zeroinitializer }, align 32
@mixart_set_pipe_state._entry_ptr.25 = internal global ptr @mixart_set_pipe_state._entry.23, section ".printk_index", align 4
@mixart_set_pipe_state._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 116, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"error MSG_STREAM_ST***_STREAM_GRP_PACKET err=%x stat=%x !\0A\00", [37 x i8] zeroinitializer }, align 32
@mixart_set_pipe_state._entry_ptr.28 = internal global ptr @mixart_set_pipe_state._entry.26, section ".printk_index", align 4
@mixart_set_pipe_state._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.2, i32 129, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"error MSG_STREAM_START_STREAM_GRP_PACKET err=%x stat=%x !\0A\00", [37 x i8] zeroinitializer }, align 32
@mixart_set_pipe_state._entry_ptr.31 = internal global ptr @mixart_set_pipe_state._entry.29, section ".printk_index", align 4
@mixart_set_pipe_state._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.2, i32 144, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"error MSG_SYSTEM_SEND_SYNCHRO_CMD err=%x stat=%x !\0A\00", [44 x i8] zeroinitializer }, align 32
@mixart_set_pipe_state._entry_ptr.34 = internal global ptr @mixart_set_pipe_state._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"miXart analog %d\00", [47 x i8] zeroinitializer }, align 32
@snd_mixart_pcm_analog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 962, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot create the analog pcm %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_mixart_pcm_analog\00", [42 x i8] zeroinitializer }, align 32
@snd_mixart_pcm_analog._entry_ptr = internal global ptr @snd_mixart_pcm_analog._entry, section ".printk_index", align 4
@snd_mixart_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_mixart_playback_open, ptr @snd_mixart_close, ptr null, ptr @snd_mixart_hw_params, ptr @snd_mixart_hw_free, ptr @snd_mixart_prepare, ptr @snd_mixart_trigger, ptr null, ptr @snd_mixart_stream_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_mixart_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_mixart_capture_open, ptr @snd_mixart_close, ptr null, ptr @snd_mixart_hw_params, ptr @snd_mixart_hw_free, ptr @snd_mixart_prepare, ptr @snd_mixart_trigger, ptr null, ptr @snd_mixart_stream_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_mixart_analog_caps = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 524547, i64 12884951054, i32 1073742078, i32 8000, i32 48000, i32 1, i32 2, i32 32768, i32 256, i32 16384, i32 2, i32 128, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_mixart_digital_caps = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 524547, i64 12884951054, i32 224, i32 32000, i32 48000, i32 1, i32 2, i32 32768, i32 256, i32 16384, i32 2, i32 128, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_mixart_playback_open.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_mixart_playback_open\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"snd_mixart_playback_open C%d/P%d/Sub%d\0A\00", [56 x i8] zeroinitializer }, align 32
@snd_mixart_playback_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 736, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"snd_mixart_playback_open C%d/P%d/Sub%d in use\0A\00", [49 x i8] zeroinitializer }, align 32
@snd_mixart_playback_open._entry_ptr = internal global ptr @snd_mixart_playback_open._entry, section ".printk_index", align 4
@snd_mixart_playback_open._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.38, ptr @.str.2, i32 752, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error starting pipe!\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_mixart_playback_open._entry_ptr.43 = internal global ptr @snd_mixart_playback_open._entry.41, section ".printk_index", align 4
@snd_mixart_close.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_mixart_close\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"snd_mixart_close C%d/P%d/Sub%d\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_mixart_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 886, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error snd_mixart_kill_ref_pipe C%dP%d\0A\00", [57 x i8] zeroinitializer }, align 32
@snd_mixart_close._entry_ptr = internal global ptr @snd_mixart_close._entry, section ".printk_index", align 4
@snd_mixart_hw_params.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_mixart_hw_params\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"snd_mixart_hw_params(pcm %d) : dma_addr(%x) dma_bytes(%x) subs-number(%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@mixart_set_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 553, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"error mixart_set_format() : unknown format\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mixart_set_format\00", [46 x i8] zeroinitializer }, align 32
@mixart_set_format._entry_ptr = internal global ptr @mixart_set_format._entry, section ".printk_index", align 4
@mixart_set_format.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"set SNDRV_PCM_FORMAT sample_type(%d) sample_size(%d) freq(%d) channels(%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@mixart_set_format._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.50, ptr @.str.2, i32 580, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"MSG_STREAM_SET_INPUT_STAGE_PARAM err=%x; resp=%x\0A\00", [46 x i8] zeroinitializer }, align 32
@mixart_set_format._entry_ptr.54 = internal global ptr @mixart_set_format._entry.52, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mixart_sync_nonblock_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 466, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mixart: cannot process nonblock events!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mixart_sync_nonblock_events\00", [36 x i8] zeroinitializer }, align 32
@mixart_sync_nonblock_events._entry_ptr = internal global ptr @mixart_sync_nonblock_events._entry, section ".printk_index", align 4
@snd_mixart_prepare.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_mixart_prepare\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_mixart_prepare\0A\00", [44 x i8] zeroinitializer }, align 32
@snd_mixart_trigger.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_mixart_trigger\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SNDRV_PCM_TRIGGER_START\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_mixart_trigger.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.61, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SNDRV_PCM_TRIGGER_STOP\0A\00", [40 x i8] zeroinitializer }, align 32
@snd_mixart_trigger.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.62, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SNDRV_PCM_PAUSE_PUSH\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_mixart_trigger.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.63, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SNDRV_PCM_PAUSE_RELEASE\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_mixart_capture_open.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.65, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_mixart_capture_open\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"snd_mixart_capture_open C%d/P%d/Sub%d\0A\00", [57 x i8] zeroinitializer }, align 32
@snd_mixart_capture_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 817, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"snd_mixart_capture_open C%d/P%d/Sub%d in use\0A\00", [50 x i8] zeroinitializer }, align 32
@snd_mixart_capture_open._entry_ptr = internal global ptr @snd_mixart_capture_open._entry, section ".printk_index", align 4
@snd_mixart_capture_open._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.64, ptr @.str.2, i32 833, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@snd_mixart_capture_open._entry_ptr.68 = internal global ptr @snd_mixart_capture_open._entry.67, section ".printk_index", align 4
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"miXart AES/EBU %d\00", [46 x i8] zeroinitializer }, align 32
@snd_mixart_pcm_digital._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 996, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot create the digital pcm %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_mixart_pcm_digital\00", [41 x i8] zeroinitializer }, align 32
@snd_mixart_pcm_digital._entry_ptr = internal global ptr @snd_mixart_pcm_digital._entry, section ".printk_index", align 4
@snd_mixart_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4183, i32 3, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_mixart_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@snd_mixart_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 1257, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"architecture does not support 32bit PCI busmaster DMA\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_mixart_probe\00", [47 x i8] zeroinitializer }, align 32
@snd_mixart_probe._entry_ptr = internal global ptr @snd_mixart_probe._entry, section ".printk_index", align 4
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"miXart\00", [25 x i8] zeroinitializer }, align 32
@snd_mixart_probe._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.73, ptr @.str.2, i32 1285, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to remap resource 0x%lx\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_mixart_probe._entry_ptr.77 = internal global ptr @snd_mixart_probe._entry.75, section ".printk_index", align 4
@snd_mixart_probe._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.73, ptr @.str.2, i32 1294, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_mixart_probe._entry_ptr.80 = internal global ptr @snd_mixart_probe._entry.78, section ".printk_index", align 4
@snd_mixart_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mgr->lock\00", [21 x i8] zeroinitializer }, align 32
@snd_mixart_probe.__key.82 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mgr->msg_lock\00", [17 x i8] zeroinitializer }, align 32
@snd_mixart_probe.__key.84 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mgr->msg_sleep\00", [16 x i8] zeroinitializer }, align 32
@snd_mixart_probe.__key.86 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mgr->setup_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIXART\00", [25 x i8] zeroinitializer }, align 32
@snd_mixart_probe._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.73, ptr @.str.2, i32 1328, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot allocate the card %d\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_mixart_probe._entry_ptr.92 = internal global ptr @snd_mixart_probe._entry.90, section ".printk_index", align 4
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Digigram miXart [PCM #%d]\00", [38 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Digigram miXart at 0x%lx & 0x%lx, irq %i [PCM #%d]\00", [45 x i8] zeroinitializer }, align 32
@snd_mixart_free.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 1, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_mixart_free\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reset miXart !\0A\00", [16 x i8] zeroinitializer }, align 32
@snd_mixart_create.ops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @snd_mixart_chip_dev_free, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"board_info\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mixart_BA0\00", [21 x i8] zeroinitializer }, align 32
@snd_mixart_proc_ops_BA0 = internal constant { %struct.snd_info_entry_ops, [32 x i8] } { %struct.snd_info_entry_ops { ptr null, ptr null, ptr @snd_mixart_BA0_read, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mixart_BA1\00", [21 x i8] zeroinitializer }, align 32
@snd_mixart_proc_ops_BA1 = internal constant { %struct.snd_info_entry_ops, [32 x i8] } { %struct.snd_info_entry_ops { ptr null, ptr null, ptr @snd_mixart_BA1_read, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Digigram miXart (alsa card %d)\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"- hardware -\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\09miXart8 (no daughter board)\0A\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09miXart8 AES/EBU\0A\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09miXart8 Cobranet\0A\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09UNKNOWN!\0A\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"- system load -\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09streaming          : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09mailbox            : %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\09interrupts handling : %d\0A\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.111 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.112 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 14, i64 15, i64 32, i64 33]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8, i64 14]
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 254, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 306, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 349, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 356, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 367, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant [14 x i8] c"mixart_driver\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1401, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 36, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 37, i32 14 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 38, i32 13 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 176, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 190, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 199, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 76, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 92, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 114, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 127, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 142, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 956, i32 16 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 961, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [24 x i8] c"snd_mixart_playback_ops\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 908, i32 33 }
@___asan_gen_.237 = private unnamed_addr constant [23 x i8] c"snd_mixart_capture_ops\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 918, i32 33 }
@___asan_gen_.240 = private unnamed_addr constant [23 x i8] c"snd_mixart_analog_caps\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 661, i32 38 }
@___asan_gen_.243 = private unnamed_addr constant [24 x i8] c"snd_mixart_digital_caps\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 682, i32 38 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 725, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 734, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 752, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 873, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 884, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 638, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 552, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 557, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 578, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 465, i32 4 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 484, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 423, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 440, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 447, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 452, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 807, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 815, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 833, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 990, i32 16 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 995, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant [15 x i8] c"snd_mixart_ids\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 50, i32 35 }
@___asan_gen_.360 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1233, i32 13 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1256, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1274, i32 33 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1284, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1294, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1304, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1305, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1306, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1310, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1323, i32 34 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1323, i32 63 }
@___asan_gen_.417 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1328, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1335, i32 5 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1337, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1097, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1034, i32 37 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1208, i32 35 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1211, i32 38 }
@___asan_gen_.444 = private unnamed_addr constant [24 x i8] c"snd_mixart_proc_ops_BA0\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1158, i32 40 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1217, i32 38 }
@___asan_gen_.450 = private unnamed_addr constant [24 x i8] c"snd_mixart_proc_ops_BA1\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1162, i32 40 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1173, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1177, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1179, i32 40 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1180, i32 40 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1181, i32 40 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1182, i32 40 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1185, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1196, i32 4 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1197, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.481 = private constant [29 x i8] c"../sound/pci/mixart/mixart.c\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.481, i32 1198, i32 4 }
@llvm.compiler.used = appending global [164 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__exitcall_mixart_driver_exit, ptr @__initcall__kmod_snd_mixart__265_1408_mixart_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @mixart_driver_exit, ptr @mixart_set_clock._entry, ptr @mixart_set_clock._entry.18, ptr @mixart_set_clock._entry_ptr, ptr @mixart_set_clock._entry_ptr.20, ptr @mixart_set_format._entry, ptr @mixart_set_format._entry.52, ptr @mixart_set_format._entry_ptr, ptr @mixart_set_format._entry_ptr.54, ptr @mixart_set_pipe_state._entry, ptr @mixart_set_pipe_state._entry.23, ptr @mixart_set_pipe_state._entry.26, ptr @mixart_set_pipe_state._entry.29, ptr @mixart_set_pipe_state._entry.32, ptr @mixart_set_pipe_state._entry_ptr, ptr @mixart_set_pipe_state._entry_ptr.25, ptr @mixart_set_pipe_state._entry_ptr.28, ptr @mixart_set_pipe_state._entry_ptr.31, ptr @mixart_set_pipe_state._entry_ptr.34, ptr @mixart_sync_nonblock_events._entry, ptr @mixart_sync_nonblock_events._entry_ptr, ptr @snd_mixart_add_ref_pipe._entry, ptr @snd_mixart_add_ref_pipe._entry_ptr, ptr @snd_mixart_capture_open._entry, ptr @snd_mixart_capture_open._entry.67, ptr @snd_mixart_capture_open._entry_ptr, ptr @snd_mixart_capture_open._entry_ptr.68, ptr @snd_mixart_close._entry, ptr @snd_mixart_close._entry_ptr, ptr @snd_mixart_kill_ref_pipe._entry, ptr @snd_mixart_kill_ref_pipe._entry.12, ptr @snd_mixart_kill_ref_pipe._entry.9, ptr @snd_mixart_kill_ref_pipe._entry_ptr, ptr @snd_mixart_kill_ref_pipe._entry_ptr.11, ptr @snd_mixart_kill_ref_pipe._entry_ptr.14, ptr @snd_mixart_pcm_analog._entry, ptr @snd_mixart_pcm_analog._entry_ptr, ptr @snd_mixart_pcm_digital._entry, ptr @snd_mixart_pcm_digital._entry_ptr, ptr @snd_mixart_playback_open._entry, ptr @snd_mixart_playback_open._entry.41, ptr @snd_mixart_playback_open._entry_ptr, ptr @snd_mixart_playback_open._entry_ptr.43, ptr @snd_mixart_probe._entry, ptr @snd_mixart_probe._entry.75, ptr @snd_mixart_probe._entry.78, ptr @snd_mixart_probe._entry.90, ptr @snd_mixart_probe._entry_ptr, ptr @snd_mixart_probe._entry_ptr.77, ptr @snd_mixart_probe._entry_ptr.80, ptr @snd_mixart_probe._entry_ptr.92, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @mixart_driver, ptr @index, ptr @id, ptr @enable, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @snd_mixart_playback_ops, ptr @snd_mixart_capture_ops, ptr @snd_mixart_analog_caps, ptr @snd_mixart_digital_caps, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @snd_mixart_ids, ptr @snd_mixart_probe.dev, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @snd_mixart_probe.__key, ptr @.str.81, ptr @snd_mixart_probe.__key.82, ptr @.str.83, ptr @snd_mixart_probe.__key.84, ptr @.str.85, ptr @snd_mixart_probe.__key.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @snd_mixart_create.ops, ptr @.str.97, ptr @.str.98, ptr @snd_mixart_proc_ops_BA0, ptr @.str.99, ptr @snd_mixart_proc_ops_BA1, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], section "llvm.metadata"
@0 = internal global [123 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_add_ref_pipe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_kill_ref_pipe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_kill_ref_pipe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_kill_ref_pipe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_set_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_set_clock._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_set_pipe_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_set_pipe_state._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_set_pipe_state._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_set_pipe_state._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_set_pipe_state._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_pcm_analog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_analog_caps to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_digital_caps to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_playback_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_playback_open._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_set_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_set_format._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mixart_sync_nonblock_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_capture_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_capture_open._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_pcm_digital._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_probe._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_probe._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_probe.__key.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_probe.__key.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_probe.__key.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_probe._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_create.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_proc_ops_BA0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixart_proc_ops_BA1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_mixart_add_ref_pipe(ptr noundef %chip, i32 noundef %pcm_number, i32 noundef %capture, i32 noundef %monitoring) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.mixart_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %request) #10
  %0 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 2
  %3 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %capture)
  %tobool.not = icmp eq i32 %capture, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pcm_number)
  %cmp3 = icmp eq i32 %pcm_number, 0
  br i1 %tobool.not, label %if.else2, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pipe_in_ana = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 6
  %pipe_in_dig = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 8
  %pipe.0 = select i1 %cmp3, ptr %pipe_in_ana, ptr %pipe_in_dig
  br label %if.end8

if.else2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pipe_out_ana = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 7
  %pipe_out_dig = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 9
  %pipe.1 = select i1 %cmp3, ptr %pipe_out_ana, ptr %pipe_out_dig
  br label %if.end8

if.end8:                                          ; preds = %if.else2, %if.then
  %storemerge = phi i32 [ 1245184, %if.else2 ], [ 1245185, %if.then ]
  %pipe.2 = phi ptr [ %pipe.1, %if.else2 ], [ %pipe.0, %if.then ]
  %stream_count.0 = phi i32 [ 4, %if.else2 ], [ 1, %if.then ]
  %4 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %monitoring)
  %cmp9 = icmp eq i32 %monitoring, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end8
  %references = getelementptr inbounds %struct.mixart_pipe, ptr %pipe.2, i32 0, i32 5
  %5 = ptrtoint ptr %references to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %references, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %stream_count.0)
  %cmp10.not = icmp slt i32 %6, %stream_count.0
  br i1 %cmp10.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.cleanup99_crit_edge

land.lhs.true.cleanup99_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup99

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %status = getelementptr inbounds %struct.mixart_pipe, ptr %pipe.2, i32 0, i32 4
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp13 = icmp eq i32 %8, 0
  br i1 %cmp13, label %if.then14, label %if.end12.if.end91_crit_edge

if.end12.if.end91_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.then14:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_mixart_add_ref_pipe.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_mixart_add_ref_pipe, %if.then18)) #10
          to label %do.end [label %if.then18], !srcloc !276

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %chip_idx = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 2
  %13 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chip_idx, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_mixart_add_ref_pipe.__UNIQUE_ID_ddebug253, ptr noundef %12, ptr noundef nonnull @.str.3, i32 noundef %14, i32 noundef %pcm_number) #10
  br label %do.end

do.end:                                           ; preds = %if.then18, %if.then14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 944) #13
  %tobool21.not = icmp eq ptr %call7.i, null
  br i1 %tobool21.not, label %do.end.cleanup99_crit_edge, label %if.end23

do.end.cleanup99_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup99

if.end23:                                         ; preds = %do.end
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %0, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %1, align 4
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i, ptr %2, align 4
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 540, ptr %3, align 4
  %20 = getelementptr inbounds i8, ptr %call7.i, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 532)
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %stream_count.0, ptr %call7.i, align 8
  %channel_count = getelementptr inbounds %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 1
  %23 = ptrtoint ptr %channel_count to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %channel_count, align 4
  %latency = getelementptr inbounds %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 4
  %24 = ptrtoint ptr %latency to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 256, ptr %latency, align 8
  %connector = getelementptr inbounds %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 6
  %uid_left_connector = getelementptr inbounds %struct.mixart_pipe, ptr %pipe.2, i32 0, i32 2
  %25 = ptrtoint ptr %uid_left_connector to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %uid_left_connector, align 4
  %27 = ptrtoint ptr %connector to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %connector, align 4
  %chip_idx38 = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 2
  %mul39 = mul i32 %pcm_number, 5
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 1
  %shl60 = shl i32 %pcm_number, 8
  %arrayidx = getelementptr %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 5, i32 0
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1024, ptr %arrayidx, align 4
  %size_max_sample_frame = getelementptr %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 5, i32 0, i32 1
  %29 = ptrtoint ptr %size_max_sample_frame to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 256, ptr %size_max_sample_frame, align 8
  %nb_bytes_max_per_sample = getelementptr %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 5, i32 0, i32 2
  %30 = ptrtoint ptr %nb_bytes_max_per_sample to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1082130432, ptr %nb_bytes_max_per_sample, align 4
  %31 = ptrtoint ptr %chip_idx38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip_idx38, align 8
  %mul = mul i32 %32, 10
  %add40 = add i32 %mul39, %mul
  %add43 = add i32 %add40, 4
  %spec.select = select i1 %tobool.not, i32 %add40, i32 %add43
  %arrayidx46 = getelementptr %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 7, i32 0
  %33 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select, ptr %arrayidx46, align 4
  %34 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mgr, align 4
  %area = getelementptr inbounds %struct.mixart_mgr, ptr %35, i32 0, i32 16, i32 1
  %36 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %area, align 4
  %addr = getelementptr inbounds %struct.mixart_mgr, ptr %35, i32 0, i32 17, i32 2
  %38 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr, align 4
  %mul50 = shl i32 %spec.select, 5
  %add51 = add i32 %mul50, %39
  %arrayidx52 = getelementptr %struct.mixart_flowinfo, ptr %37, i32 %spec.select
  %40 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add51, ptr %arrayidx52, align 4
  %bufferinfo_count = getelementptr %struct.mixart_flowinfo, ptr %37, i32 %spec.select, i32 2
  %41 = ptrtoint ptr %bufferinfo_count to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %bufferinfo_count, align 4
  %42 = load ptr, ptr %mgr, align 4
  %area56 = getelementptr inbounds %struct.mixart_mgr, ptr %42, i32 0, i32 17, i32 1
  %43 = ptrtoint ptr %area56 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %area56, align 4
  %arrayidx57 = getelementptr %struct.mixart_bufferinfo, ptr %44, i32 %spec.select
  %45 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx57, align 4
  %available_length = getelementptr %struct.mixart_bufferinfo, ptr %44, i32 %spec.select, i32 2
  %46 = ptrtoint ptr %available_length to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %available_length, align 4
  %47 = load i32, ptr %chip_idx38, align 8
  %shl = shl i32 %47, 12
  %add62 = add i32 %shl60, %shl
  %buffer_id = getelementptr %struct.mixart_bufferinfo, ptr %44, i32 %spec.select, i32 3
  %or = or i32 %add62, 128
  %storemerge168 = select i1 %tobool.not, i32 %add62, i32 %or
  %48 = ptrtoint ptr %buffer_id to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %storemerge168, ptr %buffer_id, align 4
  br i1 %tobool.not, label %for.body.1, label %if.end23.for.end_crit_edge

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.1:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.1 = getelementptr %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1024, ptr %arrayidx.1, align 8
  %size_max_sample_frame.1 = getelementptr %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 5, i32 1, i32 1
  %50 = ptrtoint ptr %size_max_sample_frame.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 256, ptr %size_max_sample_frame.1, align 4
  %nb_bytes_max_per_sample.1 = getelementptr %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 5, i32 1, i32 2
  %51 = ptrtoint ptr %nb_bytes_max_per_sample.1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1082130432, ptr %nb_bytes_max_per_sample.1, align 8
  %52 = ptrtoint ptr %chip_idx38 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %chip_idx38, align 8
  %mul.1 = mul i32 %53, 10
  %add.1 = add i32 %mul39, 1
  %add40.1 = add i32 %add.1, %mul.1
  %arrayidx46.1 = getelementptr %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 7, i32 1
  %54 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add40.1, ptr %arrayidx46.1, align 8
  %55 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mgr, align 4
  %area.1 = getelementptr inbounds %struct.mixart_mgr, ptr %56, i32 0, i32 16, i32 1
  %57 = ptrtoint ptr %area.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %area.1, align 4
  %addr.1 = getelementptr inbounds %struct.mixart_mgr, ptr %56, i32 0, i32 17, i32 2
  %59 = ptrtoint ptr %addr.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %addr.1, align 4
  %mul50.1 = shl i32 %add40.1, 5
  %add51.1 = add i32 %mul50.1, %60
  %arrayidx52.1 = getelementptr %struct.mixart_flowinfo, ptr %58, i32 %add40.1
  %61 = ptrtoint ptr %arrayidx52.1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add51.1, ptr %arrayidx52.1, align 4
  %bufferinfo_count.1 = getelementptr %struct.mixart_flowinfo, ptr %58, i32 %add40.1, i32 2
  %62 = ptrtoint ptr %bufferinfo_count.1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %bufferinfo_count.1, align 4
  %63 = load ptr, ptr %mgr, align 4
  %area56.1 = getelementptr inbounds %struct.mixart_mgr, ptr %63, i32 0, i32 17, i32 1
  %64 = ptrtoint ptr %area56.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %area56.1, align 4
  %arrayidx57.1 = getelementptr %struct.mixart_bufferinfo, ptr %65, i32 %add40.1
  %66 = ptrtoint ptr %arrayidx57.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %arrayidx57.1, align 4
  %available_length.1 = getelementptr %struct.mixart_bufferinfo, ptr %65, i32 %add40.1, i32 2
  %67 = ptrtoint ptr %available_length.1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %available_length.1, align 4
  %68 = load i32, ptr %chip_idx38, align 8
  %shl.1 = shl i32 %68, 12
  %add61.1 = or i32 %shl60, 1
  %add62.1 = add i32 %add61.1, %shl.1
  %buffer_id.1 = getelementptr %struct.mixart_bufferinfo, ptr %65, i32 %add40.1, i32 3
  %69 = ptrtoint ptr %buffer_id.1 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %add62.1, ptr %buffer_id.1, align 4
  %arrayidx.2 = getelementptr %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 5, i32 2
  %70 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1024, ptr %arrayidx.2, align 4
  %size_max_sample_frame.2 = getelementptr %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 5, i32 2, i32 1
  %71 = ptrtoint ptr %size_max_sample_frame.2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 256, ptr %size_max_sample_frame.2, align 8
  %nb_bytes_max_per_sample.2 = getelementptr %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 5, i32 2, i32 2
  %72 = ptrtoint ptr %nb_bytes_max_per_sample.2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1082130432, ptr %nb_bytes_max_per_sample.2, align 4
  %73 = load i32, ptr %chip_idx38, align 8
  %mul.2 = mul i32 %73, 10
  %add.2 = add i32 %mul39, 2
  %add40.2 = add i32 %add.2, %mul.2
  %add43.2 = add i32 %add40.2, 4
  %spec.select.2 = select i1 %tobool.not, i32 %add40.2, i32 %add43.2
  %arrayidx46.2 = getelementptr %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 7, i32 2
  %74 = ptrtoint ptr %arrayidx46.2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %spec.select.2, ptr %arrayidx46.2, align 4
  %75 = load ptr, ptr %mgr, align 4
  %area.2 = getelementptr inbounds %struct.mixart_mgr, ptr %75, i32 0, i32 16, i32 1
  %76 = ptrtoint ptr %area.2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %area.2, align 4
  %addr.2 = getelementptr inbounds %struct.mixart_mgr, ptr %75, i32 0, i32 17, i32 2
  %78 = ptrtoint ptr %addr.2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %addr.2, align 4
  %mul50.2 = shl i32 %spec.select.2, 5
  %add51.2 = add i32 %mul50.2, %79
  %arrayidx52.2 = getelementptr %struct.mixart_flowinfo, ptr %77, i32 %spec.select.2
  %80 = ptrtoint ptr %arrayidx52.2 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add51.2, ptr %arrayidx52.2, align 4
  %bufferinfo_count.2 = getelementptr %struct.mixart_flowinfo, ptr %77, i32 %spec.select.2, i32 2
  %81 = ptrtoint ptr %bufferinfo_count.2 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %bufferinfo_count.2, align 4
  %82 = load ptr, ptr %mgr, align 4
  %area56.2 = getelementptr inbounds %struct.mixart_mgr, ptr %82, i32 0, i32 17, i32 1
  %83 = ptrtoint ptr %area56.2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %area56.2, align 4
  %arrayidx57.2 = getelementptr %struct.mixart_bufferinfo, ptr %84, i32 %spec.select.2
  %85 = ptrtoint ptr %arrayidx57.2 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %arrayidx57.2, align 4
  %available_length.2 = getelementptr %struct.mixart_bufferinfo, ptr %84, i32 %spec.select.2, i32 2
  %86 = ptrtoint ptr %available_length.2 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %available_length.2, align 4
  %87 = load i32, ptr %chip_idx38, align 8
  %shl.2 = shl i32 %87, 12
  %add61.2 = or i32 %shl60, 2
  %add62.2 = add i32 %add61.2, %shl.2
  %buffer_id.2 = getelementptr %struct.mixart_bufferinfo, ptr %84, i32 %spec.select.2, i32 3
  %or.2 = or i32 %add62.2, 128
  %storemerge168.2 = select i1 %tobool.not, i32 %add62.2, i32 %or.2
  %88 = ptrtoint ptr %buffer_id.2 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %storemerge168.2, ptr %buffer_id.2, align 4
  %arrayidx.3 = getelementptr %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 5, i32 3
  %89 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1024, ptr %arrayidx.3, align 8
  %size_max_sample_frame.3 = getelementptr %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 5, i32 3, i32 1
  %90 = ptrtoint ptr %size_max_sample_frame.3 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 256, ptr %size_max_sample_frame.3, align 4
  %nb_bytes_max_per_sample.3 = getelementptr %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 5, i32 3, i32 2
  %91 = ptrtoint ptr %nb_bytes_max_per_sample.3 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1082130432, ptr %nb_bytes_max_per_sample.3, align 8
  %92 = load i32, ptr %chip_idx38, align 8
  %mul.3 = mul i32 %92, 10
  %add.3 = add i32 %mul39, 3
  %add40.3 = add i32 %add.3, %mul.3
  %add43.3 = add i32 %add40.3, 4
  %spec.select.3 = select i1 %tobool.not, i32 %add40.3, i32 %add43.3
  %arrayidx46.3 = getelementptr %struct.mixart_streaming_group_req, ptr %call7.i, i32 0, i32 7, i32 3
  %93 = ptrtoint ptr %arrayidx46.3 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %spec.select.3, ptr %arrayidx46.3, align 8
  %94 = load ptr, ptr %mgr, align 4
  %area.3 = getelementptr inbounds %struct.mixart_mgr, ptr %94, i32 0, i32 16, i32 1
  %95 = ptrtoint ptr %area.3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %area.3, align 4
  %addr.3 = getelementptr inbounds %struct.mixart_mgr, ptr %94, i32 0, i32 17, i32 2
  %97 = ptrtoint ptr %addr.3 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %addr.3, align 4
  %mul50.3 = shl i32 %spec.select.3, 5
  %add51.3 = add i32 %mul50.3, %98
  %arrayidx52.3 = getelementptr %struct.mixart_flowinfo, ptr %96, i32 %spec.select.3
  %99 = ptrtoint ptr %arrayidx52.3 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add51.3, ptr %arrayidx52.3, align 4
  %bufferinfo_count.3 = getelementptr %struct.mixart_flowinfo, ptr %96, i32 %spec.select.3, i32 2
  %100 = ptrtoint ptr %bufferinfo_count.3 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %bufferinfo_count.3, align 4
  %101 = load ptr, ptr %mgr, align 4
  %area56.3 = getelementptr inbounds %struct.mixart_mgr, ptr %101, i32 0, i32 17, i32 1
  %102 = ptrtoint ptr %area56.3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %area56.3, align 4
  %arrayidx57.3 = getelementptr %struct.mixart_bufferinfo, ptr %103, i32 %spec.select.3
  %104 = ptrtoint ptr %arrayidx57.3 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %arrayidx57.3, align 4
  %available_length.3 = getelementptr %struct.mixart_bufferinfo, ptr %103, i32 %spec.select.3, i32 2
  %105 = ptrtoint ptr %available_length.3 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %available_length.3, align 4
  %106 = load i32, ptr %chip_idx38, align 8
  %shl.3 = shl i32 %106, 12
  %add61.3 = or i32 %shl60, 3
  %add62.3 = add i32 %add61.3, %shl.3
  %buffer_id.3 = getelementptr %struct.mixart_bufferinfo, ptr %103, i32 %spec.select.3, i32 3
  %or.3 = or i32 %add62.3, 128
  %storemerge168.3 = select i1 %tobool.not, i32 %add62.3, i32 %or.3
  %107 = ptrtoint ptr %buffer_id.3 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %storemerge168.3, ptr %buffer_id.3, align 4
  br label %for.end

for.end:                                          ; preds = %for.body.1, %if.end23.for.end_crit_edge
  %108 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mgr, align 4
  %sgroup_resp = getelementptr inbounds %struct.anon.84, ptr %call7.i, i32 0, i32 1
  %call70 = call i32 @snd_mixart_send_msg(ptr noundef %109, ptr noundef nonnull %request, i32 noundef 404, ptr noundef %sgroup_resp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %for.end.do.end78_crit_edge, label %lor.lhs.false

for.end.do.end78_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end78

lor.lhs.false:                                    ; preds = %for.end
  %110 = ptrtoint ptr %sgroup_resp to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sgroup_resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp74.not = icmp eq i32 %111, 0
  br i1 %cmp74.not, label %if.end83, label %lor.lhs.false.do.end78_crit_edge

lor.lhs.false.do.end78_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end78

do.end78:                                         ; preds = %lor.lhs.false.do.end78_crit_edge, %for.end.do.end78_crit_edge
  %112 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %chip, align 8
  %dev80 = getelementptr inbounds %struct.snd_card, ptr %113, i32 0, i32 27
  %114 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev80, align 8
  %116 = ptrtoint ptr %sgroup_resp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %sgroup_resp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.4, i32 noundef %call70, i32 noundef %117) #14
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %cleanup99

if.end83:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %group = getelementptr inbounds %struct.anon.84, ptr %call7.i, i32 0, i32 1, i32 1
  %118 = ptrtoint ptr %group to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %group, align 8
  %120 = ptrtoint ptr %pipe.2 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 8)
  store i64 %119, ptr %pipe.2, align 4
  %stream_count86 = getelementptr inbounds %struct.anon.84, ptr %call7.i, i32 0, i32 1, i32 3
  %121 = ptrtoint ptr %stream_count86 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %stream_count86, align 4
  %stream_count87 = getelementptr inbounds %struct.mixart_pipe, ptr %pipe.2, i32 0, i32 1
  %123 = ptrtoint ptr %stream_count87 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %stream_count87, align 4
  %124 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %status, align 4
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %if.end91

if.end91:                                         ; preds = %if.end83, %if.end12.if.end91_crit_edge
  br i1 %cmp9, label %if.else95, label %if.then93

if.then93:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %monitoring94 = getelementptr inbounds %struct.mixart_pipe, ptr %pipe.2, i32 0, i32 6
  %125 = ptrtoint ptr %monitoring94 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %monitoring94, align 4
  br label %cleanup99

if.else95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  %references96 = getelementptr inbounds %struct.mixart_pipe, ptr %pipe.2, i32 0, i32 5
  %126 = ptrtoint ptr %references96 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %references96, align 4
  %inc97 = add i32 %127, 1
  store i32 %inc97, ptr %references96, align 4
  br label %cleanup99

cleanup99:                                        ; preds = %if.else95, %if.then93, %do.end78, %do.end.cleanup99_crit_edge, %land.lhs.true.cleanup99_crit_edge
  %retval.1 = phi ptr [ null, %land.lhs.true.cleanup99_crit_edge ], [ null, %do.end.cleanup99_crit_edge ], [ null, %do.end78 ], [ %pipe.2, %if.else95 ], [ %pipe.2, %if.then93 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request) #10
  ret ptr %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mixart_send_msg(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_mixart_kill_ref_pipe(ptr noundef %mgr, ptr noundef %pipe, i32 noundef %monitoring) local_unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.mixart_msg, align 4
  %delete_resp = alloca %struct.mixart_delete_group_resp, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.mixart_pipe, ptr %pipe, i32 0, i32 4
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %monitoring)
  %tobool.not = icmp eq i32 %monitoring, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %monitoring2 = getelementptr inbounds %struct.mixart_pipe, ptr %pipe, i32 0, i32 6
  %2 = ptrtoint ptr %monitoring2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %monitoring2, align 4
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %references = getelementptr inbounds %struct.mixart_pipe, ptr %pipe, i32 0, i32 5
  %3 = ptrtoint ptr %references to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %references, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %references, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %references4 = getelementptr inbounds %struct.mixart_pipe, ptr %pipe, i32 0, i32 5
  %5 = ptrtoint ptr %references4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %references4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp5 = icmp slt i32 %6, 1
  br i1 %cmp5, label %land.lhs.true, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end3
  %monitoring6 = getelementptr inbounds %struct.mixart_pipe, ptr %pipe, i32 0, i32 6
  %7 = ptrtoint ptr %monitoring6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %monitoring6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7 = icmp eq i32 %8, 0
  br i1 %cmp7, label %if.then8, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %request) #10
  %9 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1
  %10 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1, i32 1
  %11 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 2
  %12 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %delete_resp) #10
  %13 = ptrtoint ptr %delete_resp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %delete_resp, align 4, !annotation !277
  %14 = getelementptr inbounds %struct.mixart_delete_group_resp, ptr %delete_resp, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !277
  %16 = getelementptr inbounds %struct.mixart_delete_group_resp, ptr %delete_resp, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4, !annotation !277
  %call = tail call fastcc i32 @mixart_set_clock(ptr noundef %mgr, ptr noundef %pipe, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %do.end, label %if.then8.if.end11_crit_edge

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %pci = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %18 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #14
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.then8.if.end11_crit_edge
  %call12 = tail call fastcc i32 @mixart_set_pipe_state(ptr noundef %mgr, ptr noundef %pipe, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end11.if.end20_crit_edge

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %pci18 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %20 = ptrtoint ptr %pci18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci18, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.10) #14
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %if.end11.if.end20_crit_edge
  %22 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1245188, ptr %request, align 4
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %9, align 4
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %10, align 4
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pipe, ptr %11, align 4
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %12, align 4
  %call21 = call i32 @snd_mixart_send_msg(ptr noundef %mgr, ptr noundef nonnull %request, i32 noundef 12, ptr noundef nonnull %delete_resp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.do.end28_crit_edge, label %lor.lhs.false

if.end20.do.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

lor.lhs.false:                                    ; preds = %if.end20
  %27 = ptrtoint ptr %delete_resp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delete_resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp24.not = icmp eq i32 %28, 0
  br i1 %cmp24.not, label %lor.lhs.false.if.end32_crit_edge, label %lor.lhs.false.do.end28_crit_edge

lor.lhs.false.do.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end28

lor.lhs.false.if.end32_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.end28:                                         ; preds = %lor.lhs.false.do.end28_crit_edge, %if.end20.do.end28_crit_edge
  %pci29 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %29 = ptrtoint ptr %pci29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci29, align 4
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %31 = ptrtoint ptr %delete_resp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %delete_resp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.13, i32 noundef %call21, i32 noundef %32) #14
  br label %if.end32

if.end32:                                         ; preds = %do.end28, %lor.lhs.false.if.end32_crit_edge
  %33 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %pipe, align 4
  %.compoundliteral34.sroa.2.0.group_uid33.sroa_idx = getelementptr inbounds i8, ptr %pipe, i32 4
  %34 = ptrtoint ptr %.compoundliteral34.sroa.2.0.group_uid33.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %.compoundliteral34.sroa.2.0.group_uid33.sroa_idx, align 4
  %stream_count = getelementptr inbounds %struct.mixart_pipe, ptr %pipe, i32 0, i32 1
  %35 = ptrtoint ptr %stream_count to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %stream_count, align 4
  %36 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %delete_resp) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %land.lhs.true.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call21, %if.end32 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mixart_set_clock(ptr noundef %mgr, ptr nocapture noundef %pipe, i32 noundef %rate) unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.mixart_msg, align 4
  %clock_properties = alloca %struct.mixart_clock_properties, align 1
  %clock_prop_resp = alloca %struct.mixart_clock_properties_resp, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %request) #10
  %0 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %clock_properties) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clock_prop_resp) #10
  %3 = ptrtoint ptr %clock_prop_resp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %clock_prop_resp, align 4, !annotation !277
  %4 = getelementptr inbounds %struct.mixart_clock_properties_resp, ptr %clock_prop_resp, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !277
  %status = getelementptr inbounds %struct.mixart_pipe, ptr %pipe, i32 0, i32 4
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %sw.default [
    i32 3, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cond52 = icmp eq i32 %rate, 0
  br i1 %cond52, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp1 = icmp eq i32 %rate, 0
  br i1 %cmp1, label %sw.default.cleanup_crit_edge, label %do.end

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %pci = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %9 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %rate) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %11 = call ptr @memset(ptr %clock_properties, i32 0, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp3.not = icmp eq i32 %rate, 0
  %not.cmp3.not = xor i1 %cmp3.not, true
  %cond = zext i1 %not.cmp3.not to i32
  %clock_generic_type = getelementptr inbounds %struct.mixart_clock_properties, ptr %clock_properties, i32 0, i32 4
  %12 = ptrtoint ptr %clock_generic_type to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %cond, ptr %clock_generic_type, align 1
  %clock_mode = getelementptr inbounds %struct.mixart_clock_properties, ptr %clock_properties, i32 0, i32 5
  %13 = ptrtoint ptr %clock_mode to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 3, ptr %clock_mode, align 1
  %frequency = getelementptr inbounds %struct.mixart_clock_properties, ptr %clock_properties, i32 0, i32 2
  %14 = ptrtoint ptr %frequency to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %rate, ptr %frequency, align 1
  %nb_callers = getelementptr inbounds %struct.mixart_clock_properties, ptr %clock_properties, i32 0, i32 12
  %15 = ptrtoint ptr %nb_callers to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 1, ptr %nb_callers, align 1
  %uid_caller = getelementptr inbounds %struct.mixart_clock_properties, ptr %clock_properties, i32 0, i32 13
  %16 = ptrtoint ptr %pipe to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %pipe, align 4
  %18 = ptrtoint ptr %uid_caller to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %uid_caller, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mixart_set_clock.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mixart_set_clock, %if.then7)) #10
          to label %do.end12 [label %if.then7], !srcloc !276

if.then7:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %pci8 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %19 = ptrtoint ptr %pci8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pci8, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mixart_set_clock.__UNIQUE_ID_ddebug252, ptr noundef %dev9, ptr noundef nonnull @.str.17, i32 noundef %rate) #10
  br label %do.end12

do.end12:                                         ; preds = %if.then7, %sw.epilog
  %21 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2097154, ptr %request, align 4
  %uid_console_manager = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 18
  %22 = ptrtoint ptr %uid_console_manager to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %uid_console_manager, align 4
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %0, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %clock_properties, ptr %1, align 4
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 68, ptr %2, align 4
  %call13 = call i32 @snd_mixart_send_msg(ptr noundef %mgr, ptr noundef nonnull %request, i32 noundef 8, ptr noundef nonnull %clock_prop_resp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end12.do.end23_crit_edge, label %lor.lhs.false

do.end12.do.end23_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

lor.lhs.false:                                    ; preds = %do.end12
  %27 = ptrtoint ptr %clock_prop_resp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clock_prop_resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp16.not = icmp eq i32 %28, 0
  br i1 %cmp16.not, label %lor.lhs.false17, label %lor.lhs.false.do.end23_crit_edge

lor.lhs.false.do.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %30)
  %cmp19.not = icmp eq i32 %30, 3
  br i1 %cmp19.not, label %if.end28, label %lor.lhs.false17.do.end23_crit_edge

lor.lhs.false17.do.end23_crit_edge:               ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

do.end23:                                         ; preds = %lor.lhs.false17.do.end23_crit_edge, %lor.lhs.false.do.end23_crit_edge, %do.end12.do.end23_crit_edge
  %pci24 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %31 = ptrtoint ptr %pci24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci24, align 4
  %dev25 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %clock_prop_resp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clock_prop_resp, align 4
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef nonnull @.str.19, i32 noundef %call13, i32 noundef %34, i32 noundef %36) #14
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #12
  %. = select i1 %cmp3.not, i32 2, i32 3
  %37 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %., ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end23, %do.end, %sw.default.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end23 ], [ 0, %if.end28 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.default.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clock_prop_resp) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %clock_properties) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mixart_set_pipe_state(ptr noundef %mgr, ptr nocapture noundef %pipe, i32 noundef %start) unnamed_addr #0 align 64 {
entry:
  %group_state = alloca %struct.mixart_group_state_req, align 4
  %group_state_resp = alloca %struct.mixart_group_state_resp, align 4
  %request = alloca %struct.mixart_msg, align 4
  %system_msg_uid = alloca i32, align 4
  %stat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %group_state) #10
  %0 = getelementptr inbounds %struct.mixart_group_state_req, ptr %group_state, i32 0, i32 3
  %1 = getelementptr inbounds %struct.mixart_group_state_req, ptr %group_state, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %group_state_resp) #10
  %2 = ptrtoint ptr %group_state_resp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %group_state_resp, align 4, !annotation !277
  %3 = getelementptr inbounds %struct.mixart_group_state_resp, ptr %group_state_resp, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 -1, ptr %3, align 4, !annotation !277
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %request) #10
  %5 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1
  %6 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1, i32 1
  %7 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 2
  %8 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %system_msg_uid) #10
  %status = getelementptr inbounds %struct.mixart_pipe, ptr %pipe, i32 0, i32 4
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %10, label %do.end [
    i32 2, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge97
    i32 1, label %sw.bb1
  ]

entry.sw.bb_crit_edge97:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool.not = icmp eq i32 %start, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup70_crit_edge

sw.bb.cleanup70_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool2.not = icmp eq i32 %start, 0
  br i1 %tobool2.not, label %sw.bb1.cleanup70_crit_edge, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1.cleanup70_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pci = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #14
  br label %cleanup70

sw.epilog:                                        ; preds = %sw.bb1.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %14 = ptrtoint ptr %system_msg_uid to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 305419896, ptr %system_msg_uid, align 4
  %15 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1441836, ptr %request, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %5, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %6, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %system_msg_uid, ptr %7, align 4
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %8, align 4
  %call = call i32 @snd_mixart_send_msg_wait_notif(ptr noundef %mgr, ptr noundef nonnull %request, i32 noundef 305419896) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %pci10 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %20 = ptrtoint ptr %pci10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci10, align 4
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.24) #14
  br label %cleanup70

if.end12:                                         ; preds = %sw.epilog
  %22 = call ptr @memset(ptr %group_state, i32 0, i32 20)
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %0, align 4
  %24 = ptrtoint ptr %pipe to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %pipe, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %tobool13.not = icmp eq i32 %start, 0
  %. = select i1 %tobool13.not, i32 1245193, i32 1245190
  %27 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %., ptr %request, align 4
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %25, ptr %5, align 4
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %group_state, ptr %7, align 4
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 32, ptr %8, align 4
  %call22 = call i32 @snd_mixart_send_msg(ptr noundef %mgr, ptr noundef nonnull %request, i32 noundef 12, ptr noundef nonnull %group_state_resp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.end12.do.end27_crit_edge, label %lor.lhs.false

if.end12.do.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

lor.lhs.false:                                    ; preds = %if.end12
  %31 = ptrtoint ptr %group_state_resp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %group_state_resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp23.not = icmp eq i32 %32, 0
  br i1 %cmp23.not, label %if.end31, label %lor.lhs.false.do.end27_crit_edge

lor.lhs.false.do.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

do.end27:                                         ; preds = %lor.lhs.false.do.end27_crit_edge, %if.end12.do.end27_crit_edge
  %pci28 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %33 = ptrtoint ptr %pci28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci28, align 4
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %35 = ptrtoint ptr %group_state_resp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %group_state_resp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.27, i32 noundef %call22, i32 noundef %36) #14
  br label %cleanup70

if.end31:                                         ; preds = %lor.lhs.false
  br i1 %tobool13.not, label %if.else67, label %if.then33

if.then33:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat) #10
  %37 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %stat, align 4
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %0, align 4
  %call35 = call i32 @snd_mixart_send_msg(ptr noundef %mgr, ptr noundef nonnull %request, i32 noundef 12, ptr noundef nonnull %group_state_resp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then33.do.end43_crit_edge, label %lor.lhs.false37

if.then33.do.end43_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

lor.lhs.false37:                                  ; preds = %if.then33
  %39 = ptrtoint ptr %group_state_resp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %group_state_resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp39.not = icmp eq i32 %40, 0
  br i1 %cmp39.not, label %if.end47, label %lor.lhs.false37.do.end43_crit_edge

lor.lhs.false37.do.end43_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

do.end43:                                         ; preds = %lor.lhs.false37.do.end43_crit_edge, %if.then33.do.end43_crit_edge
  %pci44 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %41 = ptrtoint ptr %pci44 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci44, align 4
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %43 = ptrtoint ptr %group_state_resp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %group_state_resp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev45, ptr noundef nonnull @.str.30, i32 noundef %call35, i32 noundef %44) #14
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false37
  %45 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1441837, ptr %request, align 4
  %46 = call ptr @memset(ptr %5, i32 0, i32 16)
  %call55 = call i32 @snd_mixart_send_msg(ptr noundef %mgr, ptr noundef nonnull %request, i32 noundef 4, ptr noundef nonnull %stat) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.end47.do.end62_crit_edge, label %lor.lhs.false57

if.end47.do.end62_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62

lor.lhs.false57:                                  ; preds = %if.end47
  %47 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp58.not = icmp eq i32 %48, 0
  br i1 %cmp58.not, label %if.end65, label %lor.lhs.false57.do.end62_crit_edge

lor.lhs.false57.do.end62_crit_edge:               ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62

do.end62:                                         ; preds = %lor.lhs.false57.do.end62_crit_edge, %if.end47.do.end62_crit_edge
  %pci63 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %49 = ptrtoint ptr %pci63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pci63, align 4
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %stat, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev64, ptr noundef nonnull @.str.33, i32 noundef %call55, i32 noundef %52) #14
  br label %cleanup

if.end65:                                         ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %status, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #10
  br label %cleanup70

cleanup:                                          ; preds = %do.end62, %do.end43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat) #10
  br label %cleanup70

if.else67:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %status, align 4
  br label %cleanup70

cleanup70:                                        ; preds = %if.else67, %cleanup, %if.end65, %do.end27, %do.end9, %do.end, %sw.bb1.cleanup70_crit_edge, %sw.bb.cleanup70_crit_edge
  %retval.1 = phi i32 [ -22, %do.end ], [ %call, %do.end9 ], [ -22, %do.end27 ], [ -22, %cleanup ], [ 0, %sw.bb.cleanup70_crit_edge ], [ 0, %sw.bb1.cleanup70_crit_edge ], [ 0, %if.end65 ], [ 0, %if.else67 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %system_msg_uid) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %group_state_resp) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %group_state) #10
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_mixart_create_pcm(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %pcm.i14 = alloca ptr, align 4
  %name.i15 = alloca [32 x i8], align 1
  %pcm.i = alloca ptr, align 4
  %name.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #10
  %0 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !277
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #10
  %chip_idx.i = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 2
  %1 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  %2 = ptrtoint ptr %chip_idx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_idx.i, align 8
  %call.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.35, i32 noundef %3) #10
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %call2.i = call i32 @snd_pcm_new(ptr noundef %5, ptr noundef nonnull %name.i, i32 noundef 0, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %pcm.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %snd_mixart_pcm_analog.exit.thread, label %if.end

snd_mixart_pcm_analog.exit.thread:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 8
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %10 = ptrtoint ptr %chip_idx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip_idx.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.36, i32 noundef %11) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcm.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %chip, ptr %private_data.i, align 8
  call void @snd_pcm_set_ops(ptr noundef %13, i32 noundef 0, ptr noundef nonnull @snd_mixart_playback_ops) #10
  %15 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %16, i32 noundef 1, ptr noundef nonnull @snd_mixart_capture_ops) #10
  %17 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcm.i, align 4
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %info_flags.i, align 8
  %nonatomic.i = getelementptr inbounds %struct.snd_pcm, ptr %18, i32 0, i32 14
  %20 = ptrtoint ptr %nonatomic.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %nonatomic.i, align 1
  %name5.i = getelementptr inbounds %struct.snd_pcm, ptr %18, i32 0, i32 7
  %call8.i = call ptr @strcpy(ptr noundef %name5.i, ptr noundef nonnull %name.i) #15
  %mgr.i.i = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 1
  %21 = ptrtoint ptr %mgr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mgr.i.i, align 4
  %pci.i.i = getelementptr inbounds %struct.mixart_mgr, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %call.i.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %18, i32 noundef 2, ptr noundef %dev.i.i, i32 noundef 32768, i32 noundef 32768) #10
  %25 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcm.i, align 4
  %pcm9.i = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 4
  %27 = ptrtoint ptr %pcm9.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %pcm9.i, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  %28 = ptrtoint ptr %mgr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mgr.i.i, align 4
  %board_type = getelementptr inbounds %struct.mixart_mgr, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %board_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %board_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %31)
  %cmp1 = icmp eq i32 %31, 14
  br i1 %cmp1, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i14) #10
  %32 = ptrtoint ptr %pcm.i14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i14, align 4, !annotation !277
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i15) #10
  %33 = call ptr @memset(ptr %name.i15, i32 255, i32 32)
  %34 = ptrtoint ptr %chip_idx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chip_idx.i, align 8
  %call.i17 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i15, ptr noundef nonnull @.str.69, i32 noundef %35) #10
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip, align 8
  %call2.i18 = call i32 @snd_pcm_new(ptr noundef %37, ptr noundef nonnull %name.i15, i32 noundef 1, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %pcm.i14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18)
  %cmp.i19 = icmp slt i32 %call2.i18, 0
  br i1 %cmp.i19, label %do.end.i21, label %if.end.i31

do.end.i21:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip, align 8
  %dev.i20 = getelementptr inbounds %struct.snd_card, ptr %39, i32 0, i32 27
  %40 = ptrtoint ptr %dev.i20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i20, align 8
  %42 = ptrtoint ptr %chip_idx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chip_idx.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.70, i32 noundef %43) #14
  br label %snd_mixart_pcm_digital.exit

if.end.i31:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %pcm.i14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pcm.i14, align 4
  %private_data.i22 = getelementptr inbounds %struct.snd_pcm, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %private_data.i22 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %chip, ptr %private_data.i22, align 8
  call void @snd_pcm_set_ops(ptr noundef %45, i32 noundef 0, ptr noundef nonnull @snd_mixart_playback_ops) #10
  %47 = ptrtoint ptr %pcm.i14 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pcm.i14, align 4
  call void @snd_pcm_set_ops(ptr noundef %48, i32 noundef 1, ptr noundef nonnull @snd_mixart_capture_ops) #10
  %49 = ptrtoint ptr %pcm.i14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcm.i14, align 4
  %info_flags.i23 = getelementptr inbounds %struct.snd_pcm, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %info_flags.i23 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %info_flags.i23, align 8
  %nonatomic.i24 = getelementptr inbounds %struct.snd_pcm, ptr %50, i32 0, i32 14
  %52 = ptrtoint ptr %nonatomic.i24 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %nonatomic.i24, align 1
  %name5.i25 = getelementptr inbounds %struct.snd_pcm, ptr %50, i32 0, i32 7
  %call8.i26 = call ptr @strcpy(ptr noundef %name5.i25, ptr noundef nonnull %name.i15) #15
  %53 = ptrtoint ptr %mgr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mgr.i.i, align 4
  %pci.i.i28 = getelementptr inbounds %struct.mixart_mgr, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %pci.i.i28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pci.i.i28, align 4
  %dev.i.i29 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %call.i.i30 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %50, i32 noundef 2, ptr noundef %dev.i.i29, i32 noundef 32768, i32 noundef 32768) #10
  %57 = ptrtoint ptr %pcm.i14 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pcm.i14, align 4
  %pcm_dig.i = getelementptr inbounds %struct.snd_mixart, ptr %chip, i32 0, i32 5
  %59 = ptrtoint ptr %pcm_dig.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %pcm_dig.i, align 4
  br label %snd_mixart_pcm_digital.exit

snd_mixart_pcm_digital.exit:                      ; preds = %if.end.i31, %do.end.i21
  %retval.0.i32 = phi i32 [ %call2.i18, %do.end.i21 ], [ 0, %if.end.i31 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i14) #10
  br label %cleanup

cleanup:                                          ; preds = %snd_mixart_pcm_digital.exit, %if.end.cleanup_crit_edge, %snd_mixart_pcm_analog.exit.thread
  %retval.0 = phi i32 [ %retval.0.i32, %snd_mixart_pcm_digital.exit ], [ 0, %if.end.cleanup_crit_edge ], [ %call2.i, %snd_mixart_pcm_analog.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mixart_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @mixart_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mixart_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @mixart_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mixart_send_msg_wait_notif(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixart_playback_open(ptr noundef %subs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr1 = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  %6 = ptrtoint ptr %subs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subs, align 4
  %setup_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex, i32 noundef 0) #10
  %pcm4 = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %pcm4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm4, align 8
  %cmp = icmp eq ptr %7, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  %10 = call ptr @memcpy(ptr %hw, ptr @snd_mixart_analog_caps, i32 64)
  br label %do.body27

if.else:                                          ; preds = %entry
  %pcm_dig = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %pcm_dig to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcm_dig, align 4
  %cmp5.not = icmp eq ptr %7, %12
  br i1 %cmp5.not, label %if.else.if.end_crit_edge, label %do.end, !prof !278

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 721, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.else.if.end_crit_edge
  %hw25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  %13 = call ptr @memcpy(ptr %hw25, ptr @snd_mixart_digital_caps, i32 64)
  br label %do.body27

do.body27:                                        ; preds = %if.end, %if.then
  %pcm_number.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_mixart_playback_open.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_mixart_playback_open, %if.then36)) #10
          to label %do.end39 [label %if.then36], !srcloc !276

if.then36:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %chip_idx = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chip_idx, align 8
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 3
  %20 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_mixart_playback_open.__UNIQUE_ID_ddebug261, ptr noundef %17, ptr noundef nonnull @.str.39, i32 noundef %19, i32 noundef %pcm_number.0, i32 noundef %21) #10
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body27
  %number40 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 3
  %22 = ptrtoint ptr %number40 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %number40, align 4
  %arrayidx41 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 10, i32 %pcm_number.0, i32 %23
  %status = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 10, i32 %pcm_number.0, i32 %23, i32 3
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp42.not = icmp eq i32 %25, 0
  br i1 %cmp42.not, label %if.end51, label %do.end46

do.end46:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %dev48 = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev48, align 8
  %chip_idx49 = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %chip_idx49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chip_idx49, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.40, i32 noundef %31, i32 noundef %pcm_number.0, i32 noundef %23) #14
  br label %_exit_open

if.end51:                                         ; preds = %do.end39
  %call52 = tail call ptr @snd_mixart_add_ref_pipe(ptr noundef %1, i32 noundef %pcm_number.0, i32 noundef 0, i32 noundef 0)
  %cmp53 = icmp eq ptr %call52, null
  br i1 %cmp53, label %if.end51._exit_open_crit_edge, label %if.end55

if.end51._exit_open_crit_edge:                    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %_exit_open

if.end55:                                         ; preds = %if.end51
  %32 = ptrtoint ptr %mgr1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mgr1, align 4
  %call57 = tail call fastcc i32 @mixart_set_pipe_state(ptr noundef %33, ptr noundef nonnull %call52, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %do.end62, label %if.end67

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %dev64 = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev64, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.42) #14
  %38 = ptrtoint ptr %mgr1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mgr1, align 4
  %call66 = tail call i32 @snd_mixart_kill_ref_pipe(ptr noundef %39, ptr noundef nonnull %call52, i32 noundef 0)
  br label %_exit_open

if.end67:                                         ; preds = %if.end55
  %pipe68 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 10, i32 %pcm_number.0, i32 %23, i32 1
  %40 = ptrtoint ptr %pipe68 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call52, ptr %pipe68, align 4
  %pcm_number69 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 10, i32 %pcm_number.0, i32 %23, i32 2
  %41 = ptrtoint ptr %pcm_number69 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %pcm_number.0, ptr %pcm_number69, align 8
  %42 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %status, align 4
  %43 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %subs, ptr %arrayidx41, align 8
  %channels = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 10, i32 %pcm_number.0, i32 %23, i32 7
  %44 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %channels, align 8
  %private_data71 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %45 = ptrtoint ptr %private_data71 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx41, ptr %private_data71, align 8
  %call72 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %5, i32 noundef 0, i32 noundef 14, i32 noundef 32) #10
  %call73 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %5, i32 noundef 0, i32 noundef 17, i32 noundef 64) #10
  %ref_count_rate = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 20
  %46 = ptrtoint ptr %ref_count_rate to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ref_count_rate, align 4
  %inc = add i32 %47, 1
  store i32 %inc, ptr %ref_count_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool74.not = icmp eq i32 %47, 0
  br i1 %tobool74.not, label %if.end67._exit_open_crit_edge, label %if.then75

if.end67._exit_open_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %_exit_open

if.then75:                                        ; preds = %if.end67
  %sample_rate = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 19
  %48 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sample_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool76.not = icmp eq i32 %49, 0
  br i1 %tobool76.not, label %if.then75._exit_open_crit_edge, label %if.then77

if.then75._exit_open_crit_edge:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  br label %_exit_open

if.then77:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 4
  %50 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %rate_max, align 8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 3
  %51 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %49, ptr %rate_min, align 4
  br label %_exit_open

_exit_open:                                       ; preds = %if.then77, %if.then75._exit_open_crit_edge, %if.end67._exit_open_crit_edge, %do.end62, %if.end51._exit_open_crit_edge, %do.end46
  %err.0 = phi i32 [ -16, %do.end46 ], [ -22, %do.end62 ], [ %call57, %if.then77 ], [ %call57, %if.then75._exit_open_crit_edge ], [ %call57, %if.end67._exit_open_crit_edge ], [ -22, %if.end51._exit_open_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %setup_mutex) #10
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixart_close(ptr nocapture noundef readonly %subs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr1 = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr1, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data2, align 8
  %setup_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex, i32 noundef 0) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_mixart_close.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_mixart_close, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !276

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %chip_idx = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chip_idx, align 8
  %pcm_number = getelementptr inbounds %struct.mixart_stream, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %pcm_number to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pcm_number, align 8
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 3
  %16 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_mixart_close.__UNIQUE_ID_ddebug263, ptr noundef %11, ptr noundef nonnull @.str.45, i32 noundef %13, i32 noundef %15, i32 noundef %17) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ref_count_rate = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 20
  %18 = ptrtoint ptr %ref_count_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ref_count_rate, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %ref_count_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then5, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %sample_rate = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 19
  %20 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %sample_rate, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.end.if.end6_crit_edge
  %pipe = getelementptr inbounds %struct.mixart_stream, ptr %7, i32 0, i32 1
  %21 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pipe, align 4
  %call7 = tail call i32 @snd_mixart_kill_ref_pipe(ptr noundef %3, ptr noundef %22, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end12, label %if.end6.if.end17_crit_edge

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %dev14 = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev14, align 8
  %chip_idx15 = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %chip_idx15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %chip_idx15, align 8
  %pcm_number16 = getelementptr inbounds %struct.mixart_stream, ptr %7, i32 0, i32 2
  %29 = ptrtoint ptr %pcm_number16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pcm_number16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.46, i32 noundef %28, i32 noundef %30) #14
  br label %if.end17

if.end17:                                         ; preds = %do.end12, %if.end6.if.end17_crit_edge
  %31 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %pipe, align 4
  %status = getelementptr inbounds %struct.mixart_stream, ptr %7, i32 0, i32 3
  %32 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %status, align 4
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %7, align 8
  tail call void @mutex_unlock(ptr noundef %setup_mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixart_hw_params(ptr nocapture noundef readonly %subs, ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr1 = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr1, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %private_data2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data2, align 8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i86 = getelementptr %struct.snd_pcm_hw_params, ptr %hw, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i86 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %11, %entry.if.then.i.i_crit_edge ], [ %14, %for.inc.i.i.if.then.i.i_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #10, !range !279
  %add.i.i = or i32 %12, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw, i32 0, i32 1, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.1.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %setup_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex, i32 noundef 0) #10
  %pcm_number = getelementptr inbounds %struct.mixart_stream, ptr %7, i32 0, i32 2
  %15 = ptrtoint ptr %pcm_number to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pcm_number, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp = icmp slt i32 %16, 2
  br i1 %cmp, label %if.then, label %params_format.exit.if.end12_crit_edge

params_format.exit.if.end12_crit_edge:            ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp5 = icmp eq i32 %16, 1
  %conv = zext i1 %cmp5 to i32
  %stream6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 5
  %17 = ptrtoint ptr %stream6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp7 = icmp eq i32 %18, 0
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 3
  %19 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %number, align 4
  %call10 = tail call i32 @mixart_update_playback_stream_level(ptr noundef %1, i32 noundef %conv, i32 noundef %20) #10
  br label %if.end12

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call11 = tail call i32 @mixart_update_capture_stream_level(ptr noundef %1, i32 noundef %conv) #10
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9, %params_format.exit.if.end12_crit_edge
  %channels13 = getelementptr inbounds %struct.mixart_stream, ptr %7, i32 0, i32 7
  %21 = ptrtoint ptr %channels13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %9, ptr %channels13, align 8
  %call14 = tail call fastcc i32 @mixart_set_format(ptr noundef %7, i32 noundef %retval.0.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %22 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %runtime, align 4
  %buffer_changed = getelementptr inbounds %struct.snd_pcm_runtime, ptr %23, i32 0, i32 54
  %24 = ptrtoint ptr %buffer_changed to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load = load i8, ptr %buffer_changed, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end19.cleanup_crit_edge, label %if.then21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %chip_idx = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chip_idx, align 8
  %mul = mul i32 %26, 10
  %27 = ptrtoint ptr %pcm_number to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pcm_number, align 8
  %mul23 = mul i32 %28, 5
  %add = add i32 %mul23, %mul
  %number24 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 3
  %29 = ptrtoint ptr %number24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %number24, align 4
  %add25 = add i32 %add, %30
  %stream26 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 5
  %31 = ptrtoint ptr %stream26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stream26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp27 = icmp eq i32 %32, 1
  %add30 = add i32 %add25, 4
  %spec.select = select i1 %cmp27, i32 %add30, i32 %add25
  %33 = ptrtoint ptr %mgr1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mgr1, align 4
  %area = getelementptr inbounds %struct.mixart_mgr, ptr %34, i32 0, i32 17, i32 1
  %35 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %area, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %23, i32 0, i32 51
  %37 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_addr, align 8
  %arrayidx = getelementptr %struct.mixart_bufferinfo, ptr %36, i32 %spec.select
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx, align 4
  %40 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %runtime, align 4
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %41, i32 0, i32 52
  %42 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_bytes, align 4
  %available_length = getelementptr %struct.mixart_bufferinfo, ptr %36, i32 %spec.select, i32 2
  %44 = ptrtoint ptr %available_length to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %available_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_mixart_hw_params.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_mixart_hw_params, %if.then41)) #10
          to label %cleanup [label %if.then41], !srcloc !276

if.then41:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %46, i32 0, i32 27
  %47 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev, align 8
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  %51 = ptrtoint ptr %available_length to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %available_length, align 4
  %53 = ptrtoint ptr %number24 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %number24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_mixart_hw_params.__UNIQUE_ID_ddebug260, ptr noundef %48, ptr noundef nonnull @.str.48, i32 noundef %spec.select, i32 noundef %50, i32 noundef %52, i32 noundef %54) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.then21, %if.end19.cleanup_crit_edge, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end12.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.then41 ], [ 0, %if.end19.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %setup_mutex) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixart_hw_free(ptr nocapture noundef readonly %subs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %4, 100
  %msg_processed.i = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 10
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %msg_processed.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %msg_processed.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %msg_processed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.i = icmp sgt i32 %6, 0
  br i1 %cmp2.i, label %entry.while.body.i_crit_edge, label %entry.mixart_sync_nonblock_events.exit_crit_edge

entry.mixart_sync_nonblock_events.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %mixart_sync_nonblock_events.exit

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %pci.i = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.55) #14
  br label %mixart_sync_nonblock_events.exit

if.end.i:                                         ; preds = %while.body.i
  %call2.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %msg_processed.i, i32 noundef 4) #10
  %10 = ptrtoint ptr %msg_processed.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %msg_processed.i, align 4
  %cmp.i = icmp sgt i32 %11, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.mixart_sync_nonblock_events.exit_crit_edge

if.end.i.mixart_sync_nonblock_events.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mixart_sync_nonblock_events.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

mixart_sync_nonblock_events.exit:                 ; preds = %if.end.i.mixart_sync_nonblock_events.exit_crit_edge, %do.end.i, %entry.mixart_sync_nonblock_events.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixart_prepare(ptr nocapture noundef readonly %subs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_mixart_prepare.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_mixart_prepare, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !276

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_mixart_prepare.__UNIQUE_ID_ddebug258, ptr noundef %9, ptr noundef nonnull @.str.58) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mgr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %12, 100
  %msg_processed.i = getelementptr inbounds %struct.mixart_mgr, ptr %11, i32 0, i32 10
  %call.i.i1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %msg_processed.i, i32 noundef 4) #10
  %13 = ptrtoint ptr %msg_processed.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %msg_processed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp2.i = icmp sgt i32 %14, 0
  br i1 %cmp2.i, label %do.end.while.body.i_crit_edge, label %do.end.mixart_sync_nonblock_events.exit_crit_edge

do.end.mixart_sync_nonblock_events.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %mixart_sync_nonblock_events.exit

do.end.while.body.i_crit_edge:                    ; preds = %do.end
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %do.end.while.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp1.i = icmp slt i32 %sub.i, 0
  br i1 %cmp1.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %pci.i = getelementptr inbounds %struct.mixart_mgr, ptr %11, i32 0, i32 2
  %16 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.55) #14
  br label %mixart_sync_nonblock_events.exit

if.end.i:                                         ; preds = %while.body.i
  %call2.i = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %msg_processed.i, i32 noundef 4) #10
  %18 = ptrtoint ptr %msg_processed.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %msg_processed.i, align 4
  %cmp.i = icmp sgt i32 %19, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.mixart_sync_nonblock_events.exit_crit_edge

if.end.i.mixart_sync_nonblock_events.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %mixart_sync_nonblock_events.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

mixart_sync_nonblock_events.exit:                 ; preds = %if.end.i.mixart_sync_nonblock_events.exit_crit_edge, %do.end.i, %do.end.mixart_sync_nonblock_events.exit_crit_edge
  %20 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mgr, align 4
  %ref_count_rate = getelementptr inbounds %struct.mixart_mgr, ptr %21, i32 0, i32 20
  %22 = ptrtoint ptr %ref_count_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ref_count_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp = icmp eq i32 %23, 1
  br i1 %cmp, label %if.then6, label %mixart_sync_nonblock_events.exit.if.end9_crit_edge

mixart_sync_nonblock_events.exit.if.end9_crit_edge: ; preds = %mixart_sync_nonblock_events.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then6:                                         ; preds = %mixart_sync_nonblock_events.exit
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %runtime, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rate, align 4
  %sample_rate = getelementptr inbounds %struct.mixart_mgr, ptr %21, i32 0, i32 19
  %28 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %sample_rate, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %mixart_sync_nonblock_events.exit.if.end9_crit_edge
  %pipe = getelementptr inbounds %struct.mixart_stream, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pipe, align 4
  %references = getelementptr inbounds %struct.mixart_pipe, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %references to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %references, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp10 = icmp eq i32 %32, 1
  br i1 %cmp10, label %if.then11, label %if.end9.if.end20_crit_edge

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then11:                                        ; preds = %if.end9
  %33 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mgr, align 4
  %35 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %runtime, align 4
  %rate15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %rate15 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rate15, align 4
  %call16 = tail call fastcc i32 @mixart_set_clock(ptr noundef %34, ptr noundef %30, i32 noundef %38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then11.if.end20_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.end20:                                         ; preds = %if.then11.if.end20_crit_edge, %if.end9.if.end20_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then11.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -22, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixart_trigger(ptr nocapture noundef readonly %subs, i32 noundef %cmd) #0 align 64 {
entry:
  %stream_state_req.i93 = alloca %struct.mixart_stream_state_req, align 1
  %request.i94 = alloca %struct.mixart_msg, align 4
  %stream_state_req.i = alloca %struct.mixart_stream_state_req, align 1
  %request.i = alloca %struct.mixart_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %do.body
    i32 0, label %sw.bb7
    i32 3, label %sw.bb32
    i32 4, label %sw.bb53
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_mixart_trigger.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_mixart_trigger, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !276

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %subs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %subs, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_mixart_trigger.__UNIQUE_ID_ddebug254, ptr noundef %10, ptr noundef nonnull @.str.60) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %stream_state_req.i) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %request.i) #10
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %mixart_set_stream_state.exit.thread, label %mixart_set_stream_state.exit

mixart_set_stream_state.exit.thread:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request.i) #10
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %stream_state_req.i) #10
  br label %cleanup

mixart_set_stream_state.exit:                     ; preds = %do.end
  %13 = getelementptr inbounds %struct.mixart_msg, ptr %request.i, i32 0, i32 3
  %14 = getelementptr inbounds %struct.mixart_msg, ptr %request.i, i32 0, i32 2
  %15 = getelementptr inbounds %struct.mixart_msg, ptr %request.i, i32 0, i32 1, i32 1
  %16 = getelementptr inbounds %struct.mixart_msg, ptr %request.i, i32 0, i32 1
  %17 = call ptr @memset(ptr %stream_state_req.i, i32 0, i32 116)
  %stream_count.i = getelementptr inbounds %struct.mixart_stream_state_req, ptr %stream_state_req.i, i32 0, i32 3
  %18 = ptrtoint ptr %stream_count.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 1, ptr %stream_count.i, align 1
  %stream_info.i = getelementptr inbounds %struct.mixart_stream_state_req, ptr %stream_state_req.i, i32 0, i32 4
  %pipe.i = getelementptr inbounds %struct.mixart_stream, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pipe.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %20, align 4
  %23 = ptrtoint ptr %stream_info.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %stream_info.i, align 1
  %number.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %12, i32 0, i32 3
  %24 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %number.i, align 4
  %stream_idx.i = getelementptr inbounds %struct.mixart_stream_state_req, ptr %stream_state_req.i, i32 0, i32 4, i32 0, i32 1
  %26 = ptrtoint ptr %stream_idx.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %stream_idx.i, align 1
  %stream5.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %12, i32 0, i32 5
  %27 = ptrtoint ptr %stream5.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stream5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp eq i32 %28, 0
  %storemerge.i = select i1 %cmp.i, i32 1245191, i32 1245192
  %29 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %storemerge.i, ptr %request.i, align 4
  %30 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %16, align 4
  %31 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %15, align 4
  %32 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %stream_state_req.i, ptr %14, align 4
  %33 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 116, ptr %13, align 4
  %abs_period_elapsed.i = getelementptr inbounds %struct.mixart_stream, ptr %3, i32 0, i32 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %12, i32 0, i32 2
  %34 = call ptr @memset(ptr %abs_period_elapsed.i, i32 0, i32 16)
  %35 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %private_data.i, align 4
  %mgr.i = getelementptr inbounds %struct.snd_mixart, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %mgr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mgr.i, align 4
  %call.i = call i32 @snd_mixart_send_msg_nonblock(ptr noundef %38, ptr noundef nonnull %request.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request.i) #10
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %stream_state_req.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %mixart_set_stream_state.exit.cleanup_crit_edge

mixart_set_stream_state.exit.cleanup_crit_edge:   ; preds = %mixart_set_stream_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %mixart_set_stream_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  %status = getelementptr inbounds %struct.mixart_stream, ptr %3, i32 0, i32 3
  %39 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %status, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %stream_state_req.i93) #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %request.i94) #10
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 8
  %tobool.not.i95 = icmp eq ptr %41, null
  br i1 %tobool.not.i95, label %mixart_set_stream_state.exit110.thread, label %mixart_set_stream_state.exit110

mixart_set_stream_state.exit110.thread:           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request.i94) #10
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %stream_state_req.i93) #10
  br label %cleanup

mixart_set_stream_state.exit110:                  ; preds = %sw.bb7
  %42 = getelementptr inbounds %struct.mixart_msg, ptr %request.i94, i32 0, i32 3
  %43 = getelementptr inbounds %struct.mixart_msg, ptr %request.i94, i32 0, i32 2
  %44 = getelementptr inbounds %struct.mixart_msg, ptr %request.i94, i32 0, i32 1, i32 1
  %45 = getelementptr inbounds %struct.mixart_msg, ptr %request.i94, i32 0, i32 1
  %46 = call ptr @memset(ptr %stream_state_req.i93, i32 0, i32 116)
  %stream_count.i96 = getelementptr inbounds %struct.mixart_stream_state_req, ptr %stream_state_req.i93, i32 0, i32 3
  %47 = ptrtoint ptr %stream_count.i96 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 1, ptr %stream_count.i96, align 1
  %stream_info.i97 = getelementptr inbounds %struct.mixart_stream_state_req, ptr %stream_state_req.i93, i32 0, i32 4
  %pipe.i98 = getelementptr inbounds %struct.mixart_stream, ptr %3, i32 0, i32 1
  %48 = ptrtoint ptr %pipe.i98 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pipe.i98, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %49, align 4
  %52 = ptrtoint ptr %stream_info.i97 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 8)
  store i64 %51, ptr %stream_info.i97, align 1
  %number.i99 = getelementptr inbounds %struct.snd_pcm_substream, ptr %41, i32 0, i32 3
  %53 = ptrtoint ptr %number.i99 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %number.i99, align 4
  %stream_idx.i100 = getelementptr inbounds %struct.mixart_stream_state_req, ptr %stream_state_req.i93, i32 0, i32 4, i32 0, i32 1
  %55 = ptrtoint ptr %stream_idx.i100 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %54, ptr %stream_idx.i100, align 1
  %stream5.i101 = getelementptr inbounds %struct.snd_pcm_substream, ptr %41, i32 0, i32 5
  %56 = ptrtoint ptr %stream5.i101 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stream5.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i102 = icmp eq i32 %57, 0
  %storemerge.i103 = select i1 %cmp.i102, i32 1245194, i32 1245195
  %58 = ptrtoint ptr %request.i94 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %storemerge.i103, ptr %request.i94, align 4
  %59 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %45, align 4
  %60 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %44, align 4
  %61 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %stream_state_req.i93, ptr %43, align 4
  %62 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 116, ptr %42, align 4
  %abs_period_elapsed.i104 = getelementptr inbounds %struct.mixart_stream, ptr %3, i32 0, i32 4
  %private_data.i105 = getelementptr inbounds %struct.snd_pcm_substream, ptr %41, i32 0, i32 2
  %63 = call ptr @memset(ptr %abs_period_elapsed.i104, i32 0, i32 16)
  %64 = ptrtoint ptr %private_data.i105 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %private_data.i105, align 4
  %mgr.i106 = getelementptr inbounds %struct.snd_mixart, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %mgr.i106 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mgr.i106, align 4
  %call.i107 = call i32 @snd_mixart_send_msg_nonblock(ptr noundef %67, ptr noundef nonnull %request.i94) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request.i94) #10
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %stream_state_req.i93) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool9.not = icmp eq i32 %call.i107, 0
  br i1 %tobool9.not, label %if.end11, label %mixart_set_stream_state.exit110.cleanup_crit_edge

mixart_set_stream_state.exit110.cleanup_crit_edge: ; preds = %mixart_set_stream_state.exit110
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %mixart_set_stream_state.exit110
  call void @__sanitizer_cov_trace_pc() #12
  %status12 = getelementptr inbounds %struct.mixart_stream, ptr %3, i32 0, i32 3
  %68 = ptrtoint ptr %status12 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %status12, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_mixart_trigger.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_mixart_trigger, %if.then25)) #10
          to label %cleanup [label %if.then25], !srcloc !276

if.then25:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %subs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %subs, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 8
  %dev28 = getelementptr inbounds %struct.snd_card, ptr %72, i32 0, i32 27
  %73 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev28, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_mixart_trigger.__UNIQUE_ID_ddebug255, ptr noundef %74, ptr noundef nonnull @.str.61) #10
  br label %cleanup

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %status33 = getelementptr inbounds %struct.mixart_stream, ptr %3, i32 0, i32 3
  %75 = ptrtoint ptr %status33 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4, ptr %status33, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_mixart_trigger.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_mixart_trigger, %if.then46)) #10
          to label %cleanup [label %if.then46], !srcloc !276

if.then46:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %subs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %subs, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 8
  %dev49 = getelementptr inbounds %struct.snd_card, ptr %79, i32 0, i32 27
  %80 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev49, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_mixart_trigger.__UNIQUE_ID_ddebug256, ptr noundef %81, ptr noundef nonnull @.str.62) #10
  br label %cleanup

sw.bb53:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %status54 = getelementptr inbounds %struct.mixart_stream, ptr %3, i32 0, i32 3
  %82 = ptrtoint ptr %status54 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2, ptr %status54, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_mixart_trigger.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_mixart_trigger, %if.then67)) #10
          to label %cleanup [label %if.then67], !srcloc !276

if.then67:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %subs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %subs, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 8
  %dev70 = getelementptr inbounds %struct.snd_card, ptr %86, i32 0, i32 27
  %87 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev70, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_mixart_trigger.__UNIQUE_ID_ddebug257, ptr noundef %88, ptr noundef nonnull @.str.63) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %sw.bb53, %if.then46, %sw.bb32, %if.then25, %if.end11, %mixart_set_stream_state.exit110.cleanup_crit_edge, %mixart_set_stream_state.exit110.thread, %if.end6, %mixart_set_stream_state.exit.cleanup_crit_edge, %mixart_set_stream_state.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %mixart_set_stream_state.exit.cleanup_crit_edge ], [ -22, %mixart_set_stream_state.exit110.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then67 ], [ 0, %if.then46 ], [ 0, %if.then25 ], [ 0, %if.end6 ], [ -22, %mixart_set_stream_state.exit.thread ], [ -22, %mixart_set_stream_state.exit110.thread ], [ 0, %if.end11 ], [ 0, %sw.bb32 ], [ 0, %sw.bb53 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_mixart_stream_pointer(ptr nocapture noundef readonly %subs) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %buf_periods = getelementptr inbounds %struct.mixart_stream, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %buf_periods to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_periods, align 8
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period_size, align 4
  %mul = mul i32 %7, %5
  %buf_period_frag = getelementptr inbounds %struct.mixart_stream, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %buf_period_frag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_period_frag, align 4
  %add = add i32 %mul, %9
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mixart_update_playback_stream_level(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mixart_update_capture_stream_level(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mixart_set_format(ptr nocapture noundef readonly %stream, i32 noundef %format) unnamed_addr #0 align 64 {
entry:
  %request = alloca %struct.mixart_msg, align 4
  %stream_param = alloca %struct.mixart_stream_param_desc, align 4
  %resp = alloca %struct.mixart_return_uid, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %request) #10
  %0 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 2
  %3 = getelementptr inbounds %struct.mixart_msg, ptr %request, i32 0, i32 3
  %4 = call ptr @memset(ptr %request, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %stream_param) #10
  %5 = call ptr @memset(ptr %stream_param, i32 255, i32 204)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %resp) #10
  %6 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %resp, align 4, !annotation !277
  %7 = getelementptr inbounds %struct.mixart_return_uid, ptr %resp, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !277
  %9 = getelementptr inbounds %struct.mixart_return_uid, ptr %resp, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !277
  %11 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stream, align 8
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 4
  %15 = getelementptr inbounds i8, ptr %stream_param, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 200)
  %17 = ptrtoint ptr %stream_param to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %stream_param, align 4
  %channels = getelementptr inbounds %struct.mixart_stream, ptr %stream, i32 0, i32 7
  %18 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channels, align 8
  %number_of_channel = getelementptr inbounds %struct.mixart_stream_param_desc, ptr %stream_param, i32 0, i32 13
  %20 = ptrtoint ptr %number_of_channel to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %number_of_channel, align 4
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %14, i32 0, i32 1
  %21 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mgr, align 4
  %sample_rate = getelementptr inbounds %struct.mixart_mgr, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sample_rate, align 4
  %sampling_freq = getelementptr inbounds %struct.mixart_stream_param_desc, ptr %stream_param, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp = icmp eq i32 %24, 0
  %spec.select = select i1 %cmp, i32 44100, i32 %24
  %25 = ptrtoint ptr %sampling_freq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %spec.select, ptr %sampling_freq, align 4
  %26 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %format, label %do.end [
    i32 1, label %entry.do.body21_crit_edge
    i32 2, label %sw.bb3
    i32 3, label %sw.bb6
    i32 32, label %sw.bb9
    i32 33, label %sw.bb12
    i32 14, label %sw.bb15
    i32 15, label %sw.bb18
  ]

entry.do.body21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %14, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.49) #14
  br label %cleanup

do.body21:                                        ; preds = %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb3, %entry.do.body21_crit_edge
  %.sink63 = phi i32 [ 14, %sw.bb3 ], [ 13, %sw.bb6 ], [ 16, %sw.bb9 ], [ 15, %sw.bb12 ], [ 2, %sw.bb15 ], [ 1, %sw.bb18 ], [ 12, %entry.do.body21_crit_edge ]
  %.sink = phi i32 [ 16, %sw.bb3 ], [ 16, %sw.bb6 ], [ 24, %sw.bb9 ], [ 24, %sw.bb12 ], [ 32, %sw.bb15 ], [ 32, %sw.bb18 ], [ 8, %entry.do.body21_crit_edge ]
  %sample_type = getelementptr inbounds %struct.mixart_stream_param_desc, ptr %stream_param, i32 0, i32 1
  %31 = ptrtoint ptr %sample_type to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink63, ptr %sample_type, align 4
  %sample_size = getelementptr inbounds %struct.mixart_stream_param_desc, ptr %stream_param, i32 0, i32 5
  %32 = ptrtoint ptr %sample_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %sample_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mixart_set_format.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mixart_set_format, %if.then24)) #10
          to label %do.end33 [label %if.then24], !srcloc !276

if.then24:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %14, align 8
  %dev26 = getelementptr inbounds %struct.snd_card, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev26, align 8
  %sample_type27 = getelementptr inbounds %struct.mixart_stream_param_desc, ptr %stream_param, i32 0, i32 1
  %37 = ptrtoint ptr %sample_type27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sample_type27, align 4
  %sample_size28 = getelementptr inbounds %struct.mixart_stream_param_desc, ptr %stream_param, i32 0, i32 5
  %39 = ptrtoint ptr %sample_size28 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sample_size28, align 4
  %41 = ptrtoint ptr %sampling_freq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sampling_freq, align 4
  %43 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %channels, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mixart_set_format.__UNIQUE_ID_ddebug259, ptr noundef %36, ptr noundef nonnull @.str.51, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44) #10
  br label %do.end33

do.end33:                                         ; preds = %if.then24, %do.body21
  %pipe_count = getelementptr inbounds %struct.mixart_stream_param_desc, ptr %stream_param, i32 0, i32 18
  %45 = ptrtoint ptr %pipe_count to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %pipe_count, align 4
  %stream_count = getelementptr inbounds %struct.mixart_stream_param_desc, ptr %stream_param, i32 0, i32 19
  %46 = ptrtoint ptr %stream_count to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %stream_count, align 4
  %stream_desc = getelementptr inbounds %struct.mixart_stream_param_desc, ptr %stream_param, i32 0, i32 20
  %pipe = getelementptr inbounds %struct.mixart_stream, ptr %stream, i32 0, i32 1
  %47 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pipe, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %48, align 4
  %51 = ptrtoint ptr %stream_desc to i32
  call void @__asan_storeN_noabort(i32 %51, i32 8)
  store i64 %50, ptr %stream_desc, align 4
  %52 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stream, align 8
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %number, align 4
  %stream_idx = getelementptr inbounds %struct.mixart_stream_param_desc, ptr %stream_param, i32 0, i32 20, i32 0, i32 1
  %56 = ptrtoint ptr %stream_idx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %stream_idx, align 4
  %57 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1245199, ptr %request, align 4
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %0, align 4
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %1, align 4
  %60 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %stream_param, ptr %2, align 4
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 204, ptr %3, align 4
  %62 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mgr, align 4
  %call38 = call i32 @snd_mixart_send_msg(ptr noundef %63, ptr noundef nonnull %request, i32 noundef 12, ptr noundef nonnull %resp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end33.do.end44_crit_edge, label %lor.lhs.false

do.end33.do.end44_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

lor.lhs.false:                                    ; preds = %do.end33
  %64 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %resp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool40.not = icmp eq i32 %65, 0
  br i1 %tobool40.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end44_crit_edge

lor.lhs.false.do.end44_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end44

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end44:                                         ; preds = %lor.lhs.false.do.end44_crit_edge, %do.end33.do.end44_crit_edge
  %66 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %14, align 8
  %dev46 = getelementptr inbounds %struct.snd_card, ptr %67, i32 0, i32 27
  %68 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev46, align 8
  %70 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %resp, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.53, i32 noundef %call38, i32 noundef %71) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %lor.lhs.false.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end44 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %resp) #10
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %stream_param) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %request) #10
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mixart_send_msg_nonblock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixart_capture_open(ptr noundef %subs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr1 = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  %6 = ptrtoint ptr %subs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %subs, align 4
  %setup_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex, i32 noundef 0) #10
  %pcm4 = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %pcm4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm4, align 8
  %cmp = icmp eq ptr %7, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  %10 = call ptr @memcpy(ptr %hw, ptr @snd_mixart_analog_caps, i32 64)
  br label %if.end26

if.else:                                          ; preds = %entry
  %pcm_dig = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %pcm_dig to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcm_dig, align 4
  %cmp5.not = icmp eq ptr %7, %12
  br i1 %cmp5.not, label %if.else.if.end_crit_edge, label %do.end, !prof !278

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 800, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.else.if.end_crit_edge
  %hw25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  %13 = call ptr @memcpy(ptr %hw25, ptr @snd_mixart_digital_caps, i32 64)
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.then
  %pcm_number.0 = phi i32 [ 0, %if.then ], [ 1, %if.end ]
  %channels_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 5
  %14 = ptrtoint ptr %channels_min to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %channels_min, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_mixart_capture_open.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_mixart_capture_open, %if.then37)) #10
          to label %do.end40 [label %if.then37], !srcloc !276

if.then37:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %chip_idx = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chip_idx, align 8
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 3
  %21 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_mixart_capture_open.__UNIQUE_ID_ddebug262, ptr noundef %18, ptr noundef nonnull @.str.65, i32 noundef %20, i32 noundef %pcm_number.0, i32 noundef %22) #10
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %if.end26
  %arrayidx = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 11, i32 %pcm_number.0
  %status = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 11, i32 %pcm_number.0, i32 3
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp41.not = icmp eq i32 %24, 0
  br i1 %cmp41.not, label %if.end50, label %do.end45

do.end45:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %dev47 = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev47, align 8
  %chip_idx48 = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %chip_idx48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chip_idx48, align 8
  %number49 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 3
  %31 = ptrtoint ptr %number49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %number49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.66, i32 noundef %30, i32 noundef %pcm_number.0, i32 noundef %32) #14
  br label %_exit_open

if.end50:                                         ; preds = %do.end40
  %call51 = tail call ptr @snd_mixart_add_ref_pipe(ptr noundef %1, i32 noundef %pcm_number.0, i32 noundef 1, i32 noundef 0)
  %cmp52 = icmp eq ptr %call51, null
  br i1 %cmp52, label %if.end50._exit_open_crit_edge, label %if.end54

if.end50._exit_open_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %_exit_open

if.end54:                                         ; preds = %if.end50
  %33 = ptrtoint ptr %mgr1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mgr1, align 4
  %call56 = tail call fastcc i32 @mixart_set_pipe_state(ptr noundef %34, ptr noundef nonnull %call51, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.end61, label %if.end66

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %dev63 = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev63, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.42) #14
  %39 = ptrtoint ptr %mgr1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mgr1, align 4
  %call65 = tail call i32 @snd_mixart_kill_ref_pipe(ptr noundef %40, ptr noundef nonnull %call51, i32 noundef 0)
  br label %_exit_open

if.end66:                                         ; preds = %if.end54
  %pipe67 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 11, i32 %pcm_number.0, i32 1
  %41 = ptrtoint ptr %pipe67 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call51, ptr %pipe67, align 4
  %pcm_number68 = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 11, i32 %pcm_number.0, i32 2
  %42 = ptrtoint ptr %pcm_number68 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %pcm_number.0, ptr %pcm_number68, align 8
  %43 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %status, align 4
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %subs, ptr %arrayidx, align 8
  %channels = getelementptr %struct.snd_mixart, ptr %1, i32 0, i32 11, i32 %pcm_number.0, i32 7
  %45 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %channels, align 8
  %private_data70 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %46 = ptrtoint ptr %private_data70 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx, ptr %private_data70, align 8
  %call71 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %5, i32 noundef 0, i32 noundef 14, i32 noundef 32) #10
  %call72 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %5, i32 noundef 0, i32 noundef 17, i32 noundef 64) #10
  %ref_count_rate = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 20
  %47 = ptrtoint ptr %ref_count_rate to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ref_count_rate, align 4
  %inc = add i32 %48, 1
  store i32 %inc, ptr %ref_count_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool73.not = icmp eq i32 %48, 0
  br i1 %tobool73.not, label %if.end66._exit_open_crit_edge, label %if.then74

if.end66._exit_open_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %_exit_open

if.then74:                                        ; preds = %if.end66
  %sample_rate = getelementptr inbounds %struct.mixart_mgr, ptr %3, i32 0, i32 19
  %49 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sample_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool75.not = icmp eq i32 %50, 0
  br i1 %tobool75.not, label %if.then74._exit_open_crit_edge, label %if.then76

if.then74._exit_open_crit_edge:                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  br label %_exit_open

if.then76:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 4
  %51 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %rate_max, align 8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 3
  %52 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %50, ptr %rate_min, align 4
  br label %_exit_open

_exit_open:                                       ; preds = %if.then76, %if.then74._exit_open_crit_edge, %if.end66._exit_open_crit_edge, %do.end61, %if.end50._exit_open_crit_edge, %do.end45
  %err.0 = phi i32 [ -16, %do.end45 ], [ -22, %do.end61 ], [ %call56, %if.then76 ], [ %call56, %if.then74._exit_open_crit_edge ], [ %call56, %if.end66._exit_open_crit_edge ], [ -22, %if.end50._exit_open_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %setup_mutex) #10
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixart_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #0 align 64 {
entry:
  %card = alloca ptr, align 4
  %tmpid = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @snd_mixart_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %0)
  %cmp = icmp sgt i32 %0, 31
  br i1 %cmp, label %entry.cleanup145_crit_edge, label %if.end

entry.cleanup145_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup145

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1, !range !280
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @snd_mixart_probe.dev, align 4
  br label %cleanup145

if.end2:                                          ; preds = %if.end
  %call = tail call i32 @pci_enable_device(ptr noundef %pci) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.end2.cleanup145_crit_edge, label %if.end5

if.end2.cleanup145_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup145

if.end5:                                          ; preds = %if.end2
  tail call void @pci_set_master(ptr noundef %pci) #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %call6 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72) #14
  tail call void @pci_disable_device(ptr noundef %pci) #10
  br label %cleanup145

if.end10:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 640) #13
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_disable_device(ptr noundef %pci) #10
  br label %cleanup145

if.end14:                                         ; preds = %if.end10
  %pci15 = getelementptr inbounds %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %pci15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pci, ptr %pci15, align 4
  %irq = getelementptr inbounds %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %irq, align 8
  %call16 = tail call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.74) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end14
  %arrayidx21 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 0
  %6 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx21, align 8
  %arrayidx22 = getelementptr %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 4, i32 0
  %8 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx22, align 4
  %call23 = tail call ptr @pci_ioremap_bar(ptr noundef %pci, i32 noundef 0) #10
  %virt = getelementptr %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %9 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call23, ptr %virt, align 8
  %tobool29.not = icmp eq ptr %call23, null
  br i1 %tobool29.not, label %for.body.preheader.do.end33_crit_edge, label %for.cond

for.body.preheader.do.end33_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  tail call void @pci_disable_device(ptr noundef %pci) #10
  br label %cleanup145

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx21.1 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 1
  %10 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx21.1, align 8
  %arrayidx22.1 = getelementptr %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx22.1, align 8
  %call23.1 = tail call ptr @pci_ioremap_bar(ptr noundef %pci, i32 noundef 1) #10
  %virt.1 = getelementptr %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 4, i32 1, i32 1
  %13 = ptrtoint ptr %virt.1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call23.1, ptr %virt.1, align 4
  %tobool29.not.1 = icmp eq ptr %call23.1, null
  br i1 %tobool29.not.1, label %for.cond.do.end33_crit_edge, label %for.cond.1

for.cond.do.end33_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

for.cond.1:                                       ; preds = %for.cond
  %irq41 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %14 = ptrtoint ptr %irq41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq41, align 4
  %call42 = tail call i32 @request_threaded_irq(i32 noundef %15, ptr noundef nonnull @snd_mixart_interrupt, ptr noundef nonnull @snd_mixart_threaded_irq, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  %16 = ptrtoint ptr %irq41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq41, align 4
  br i1 %tobool43.not, label %for.body69.lr.ph, label %do.end47

do.end33:                                         ; preds = %for.cond.do.end33_crit_edge, %for.body.preheader.do.end33_crit_edge
  %arrayidx22.lcssa = phi ptr [ %arrayidx22, %for.body.preheader.do.end33_crit_edge ], [ %arrayidx22.1, %for.cond.do.end33_crit_edge ]
  %18 = ptrtoint ptr %arrayidx22.lcssa to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx22.lcssa, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76, i32 noundef %19) #14
  tail call fastcc void @snd_mixart_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup145

do.end47:                                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.79, i32 noundef %17) #14
  tail call fastcc void @snd_mixart_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup145

for.body69.lr.ph:                                 ; preds = %for.cond.1
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %irq, align 8
  %msg_fifo_readptr = getelementptr inbounds %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 8
  %21 = ptrtoint ptr %msg_fifo_readptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %msg_fifo_readptr, align 4
  %msg_fifo_writeptr = getelementptr inbounds %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 9
  %22 = ptrtoint ptr %msg_fifo_writeptr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %msg_fifo_writeptr, align 8
  %lock = getelementptr inbounds %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 11
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.81, ptr noundef nonnull @snd_mixart_probe.__key) #10
  %msg_lock = getelementptr inbounds %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %msg_lock, ptr noundef nonnull @.str.83, ptr noundef nonnull @snd_mixart_probe.__key.82) #10
  %msg_sleep = getelementptr inbounds %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %msg_sleep, ptr noundef nonnull @.str.85, ptr noundef nonnull @snd_mixart_probe.__key.84) #10
  %msg_processed = getelementptr inbounds %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %msg_processed, i32 noundef 4) #10
  %23 = ptrtoint ptr %msg_processed to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile i32 0, ptr %msg_processed, align 4
  %setup_mutex = getelementptr inbounds %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %setup_mutex, ptr noundef nonnull @.str.87, ptr noundef nonnull @snd_mixart_probe.__key.86) #10
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %call7.i.i, align 8
  %chip = getelementptr inbounds %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 1
  br label %for.body69

for.body69:                                       ; preds = %for.inc121.for.body69_crit_edge, %for.body69.lr.ph
  %i.1261 = phi i32 [ 0, %for.body69.lr.ph ], [ %inc122, %for.inc121.for.body69_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %25 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !277
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmpid) #10
  %26 = call ptr @memset(ptr %tmpid, i32 255, i32 16)
  %27 = load i32, ptr @snd_mixart_probe.dev, align 4
  %arrayidx70 = getelementptr [32 x i32], ptr @index, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp71 = icmp slt i32 %29, 0
  %add = select i1 %cmp71, i32 0, i32 %i.1261
  %idx.0 = add i32 %add, %29
  %arrayidx76 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %27
  %30 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx76, align 4
  %tobool77.not = icmp eq ptr %31, null
  %cond = select i1 %tobool77.not, ptr @.str.89, ptr %31
  %call79 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmpid, i32 noundef 16, ptr noundef nonnull @.str.88, ptr noundef nonnull %cond, i32 noundef %i.1261)
  %call82 = call i32 @snd_card_new(ptr noundef %dev, i32 noundef %idx.0, ptr noundef nonnull %tmpid, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %do.end87, label %if.end90

do.end87:                                         ; preds = %for.body69
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91, i32 noundef %i.1261) #14
  br label %cleanup.thread

if.end90:                                         ; preds = %for.body69
  %32 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 2
  %34 = call ptr @memcpy(ptr %driver, ptr @.str.74, i32 7)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 3
  %call94 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %shortname, i32 noundef 32, ptr noundef nonnull @.str.93, i32 noundef %i.1261)
  %35 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx22, align 4
  %39 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx22.1, align 8
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 8
  %call103 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.94, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %i.1261)
  %43 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 784) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end90.if.then106_crit_edge, label %if.end.i

if.end90.if.then106_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then106

if.end.i:                                         ; preds = %if.end90
  %46 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %call7.i.i.i, align 8
  %chip_idx.i = getelementptr inbounds %struct.snd_mixart, ptr %call7.i.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %chip_idx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %i.1261, ptr %chip_idx.i, align 8
  %mgr2.i = getelementptr inbounds %struct.snd_mixart, ptr %call7.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %mgr2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %mgr2.i, align 4
  %49 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq, align 8
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 33
  %51 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %sync_irq.i, align 4
  %call3.i = call i32 @snd_device_new(ptr noundef %44, i32 noundef 0, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @snd_mixart_create.ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end109

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %if.then106

if.then106:                                       ; preds = %if.then4.i, %if.end90.if.then106_crit_edge
  %retval.0.i.ph = phi i32 [ %call3.i, %if.then4.i ], [ -12, %if.end90.if.then106_crit_edge ]
  %52 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %card, align 4
  %call107 = call i32 @snd_card_free(ptr noundef %53) #10
  br label %cleanup.thread

if.end109:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 1, i32 %i.1261
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1261)
  %cmp110 = icmp eq i32 %i.1261, 0
  br i1 %cmp110, label %if.then111, label %if.end109.if.end113_crit_edge

if.end109.if.end113_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then111:                                       ; preds = %if.end109
  %55 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chip, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %call.i.i241 = call i32 @snd_card_rw_proc_new(ptr noundef %58, ptr noundef nonnull @.str.97, ptr noundef %56, ptr noundef nonnull @snd_mixart_proc_read, ptr noundef null) #10
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 8
  %proc_root.i.i = getelementptr inbounds %struct.snd_card, ptr %60, i32 0, i32 20
  %61 = ptrtoint ptr %proc_root.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %proc_root.i.i, align 8
  %call.i19.i = call ptr @snd_info_create_card_entry(ptr noundef %60, ptr noundef nonnull @.str.98, ptr noundef %62) #10
  %tobool.not.i.not.i = icmp eq ptr %call.i19.i, null
  br i1 %tobool.not.i.not.i, label %if.then111.if.end.i242_crit_edge, label %if.then.i

if.then111.if.end.i242_crit_edge:                 ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i242

if.then.i:                                        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  %content.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i19.i, i32 0, i32 3
  %63 = ptrtoint ptr %content.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1, ptr %content.i, align 4
  %mgr.i = getelementptr inbounds %struct.snd_mixart, ptr %56, i32 0, i32 1
  %64 = ptrtoint ptr %mgr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mgr.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i19.i, i32 0, i32 7
  %66 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %private_data.i, align 4
  %c.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i19.i, i32 0, i32 4
  %67 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @snd_mixart_proc_ops_BA0, ptr %c.i, align 4
  %size.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i19.i, i32 0, i32 2
  %68 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 16777216, ptr %size.i, align 4
  br label %if.end.i242

if.end.i242:                                      ; preds = %if.then.i, %if.then111.if.end.i242_crit_edge
  %69 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %56, align 8
  %proc_root.i20.i = getelementptr inbounds %struct.snd_card, ptr %70, i32 0, i32 20
  %71 = ptrtoint ptr %proc_root.i20.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %proc_root.i20.i, align 8
  %call.i21.i = call ptr @snd_info_create_card_entry(ptr noundef %70, ptr noundef nonnull @.str.99, ptr noundef %72) #10
  %tobool.not.i22.not.i = icmp eq ptr %call.i21.i, null
  br i1 %tobool.not.i22.not.i, label %if.end.i242.if.end113_crit_edge, label %if.then7.i

if.end.i242.if.end113_crit_edge:                  ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then7.i:                                       ; preds = %if.end.i242
  call void @__sanitizer_cov_trace_pc() #12
  %content8.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i21.i, i32 0, i32 3
  %73 = ptrtoint ptr %content8.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 1, ptr %content8.i, align 4
  %mgr9.i = getelementptr inbounds %struct.snd_mixart, ptr %56, i32 0, i32 1
  %74 = ptrtoint ptr %mgr9.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mgr9.i, align 4
  %private_data10.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i21.i, i32 0, i32 7
  %76 = ptrtoint ptr %private_data10.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %private_data10.i, align 4
  %c11.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i21.i, i32 0, i32 4
  %77 = ptrtoint ptr %c11.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @snd_mixart_proc_ops_BA1, ptr %c11.i, align 4
  %size12.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i21.i, i32 0, i32 2
  %78 = ptrtoint ptr %size12.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4096, ptr %size12.i, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then7.i, %if.end.i242.if.end113_crit_edge, %if.end109.if.end113_crit_edge
  %79 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %card, align 4
  %call114 = call i32 @snd_card_register(ptr noundef %80) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %if.end113.cleanup.thread_crit_edge, label %for.inc121

if.end113.cleanup.thread_crit_edge:               ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end113.cleanup.thread_crit_edge, %if.then106, %do.end87
  %retval.1.ph = phi i32 [ %retval.0.i.ph, %if.then106 ], [ %call82, %do.end87 ], [ %call114, %if.end113.cleanup.thread_crit_edge ]
  call fastcc void @snd_mixart_free(ptr noundef nonnull %call7.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmpid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  br label %cleanup145

for.inc121:                                       ; preds = %if.end113
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmpid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  %inc122 = add nuw i32 %i.1261, 1
  %81 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %call7.i.i, align 8
  %cmp68 = icmp ult i32 %inc122, %82
  br i1 %cmp68, label %for.inc121.for.body69_crit_edge, label %for.end123

for.inc121.for.body69_crit_edge:                  ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body69

for.end123:                                       ; preds = %for.inc121
  %board_type = getelementptr inbounds %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 15
  %83 = ptrtoint ptr %board_type to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %board_type, align 8
  %flowinfo = getelementptr inbounds %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 16
  %call.i = call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev, i32 noundef 0, i32 noundef 4096, ptr noundef %flowinfo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp126 = icmp slt i32 %call.i, 0
  br i1 %cmp126, label %if.then127, label %if.end129

if.then127:                                       ; preds = %for.end123
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @snd_mixart_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup145

if.end129:                                        ; preds = %for.end123
  %area = getelementptr inbounds %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 16, i32 1
  %84 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %area, align 4
  %86 = call ptr @memset(ptr %85, i32 0, i32 4096)
  %bufferinfo = getelementptr inbounds %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 17
  %call.i243 = call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev, i32 noundef 0, i32 noundef 4096, ptr noundef %bufferinfo) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i243)
  %cmp133 = icmp slt i32 %call.i243, 0
  br i1 %cmp133, label %if.then134, label %if.end136

if.then134:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @snd_mixart_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup145

if.end136:                                        ; preds = %if.end129
  %area138 = getelementptr inbounds %struct.mixart_mgr, ptr %call7.i.i, i32 0, i32 17, i32 1
  %87 = ptrtoint ptr %area138 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %area138, align 4
  %89 = call ptr @memset(ptr %88, i32 0, i32 4096)
  %call139 = call i32 @snd_mixart_setup_firmware(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %if.then141, label %if.end143

if.then141:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @snd_mixart_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup145

if.end143:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %90 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %91 = load i32, ptr @snd_mixart_probe.dev, align 4
  %inc144 = add i32 %91, 1
  store i32 %inc144, ptr @snd_mixart_probe.dev, align 4
  br label %cleanup145

cleanup145:                                       ; preds = %if.end143, %if.then141, %if.then134, %if.then127, %cleanup.thread, %do.end47, %do.end33, %if.then18, %if.then13, %do.end, %if.end2.cleanup145_crit_edge, %if.then1, %entry.cleanup145_crit_edge
  %retval.2 = phi i32 [ -6, %do.end ], [ %call16, %if.then18 ], [ -16, %do.end33 ], [ -16, %do.end47 ], [ -12, %if.then127 ], [ -12, %if.then134 ], [ %call139, %if.then141 ], [ 0, %if.end143 ], [ -12, %if.then13 ], [ -2, %if.then1 ], [ -19, %entry.cleanup145_crit_edge ], [ %call, %if.end2.cleanup145_crit_edge ], [ %retval.1.ph, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mixart_remove(ptr nocapture noundef readonly %pci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @snd_mixart_free(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_mixart_free(ptr noundef %mgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mgr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2.not = icmp eq i32 %1, 0
  br i1 %cmp2.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.03 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mixart_mgr, ptr %mgr, i32 0, i32 1, i32 %i.03
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call = tail call i32 @snd_card_free(ptr noundef %5) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.03, 1
  %6 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mgr, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @snd_mixart_exit_mailbox(ptr noundef %mgr) #10
  %irq = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 3
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp3 = icmp sgt i32 %9, -1
  br i1 %cmp3, label %if.then4, label %for.end.if.end7_crit_edge

for.end.if.end7_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then4:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %mgr) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %for.end.if.end7_crit_edge
  %dsp_loaded = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 14
  %10 = ptrtoint ptr %dsp_loaded to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dsp_loaded, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool8.not = icmp eq i32 %11, 0
  br i1 %tobool8.not, label %if.end7.if.end16_crit_edge, label %if.then9

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @snd_mixart_reset_board(ptr noundef %mgr) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_mixart_free.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_mixart_free, %if.then14)) #10
          to label %if.end16 [label %if.then14], !srcloc !276

if.then14:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %pci = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_mixart_free.__UNIQUE_ID_ddebug264, ptr noundef %dev, ptr noundef nonnull @.str.96) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.then9, %if.end7.if.end16_crit_edge
  %virt = getelementptr %struct.mixart_mgr, ptr %mgr, i32 0, i32 4, i32 0, i32 1
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt, align 4
  tail call void @iounmap(ptr noundef %15) #10
  %virt.1 = getelementptr %struct.mixart_mgr, ptr %mgr, i32 0, i32 4, i32 1, i32 1
  %16 = ptrtoint ptr %virt.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virt.1, align 4
  tail call void @iounmap(ptr noundef %17) #10
  %pci24 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 2
  %18 = ptrtoint ptr %pci24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci24, align 4
  tail call void @pci_release_regions(ptr noundef %19) #10
  %area = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 16, i32 1
  %20 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %area, align 4
  %tobool25.not = icmp eq ptr %21, null
  br i1 %tobool25.not, label %if.end16.if.end30_crit_edge, label %if.then26

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then26:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %flowinfo = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 16
  tail call void @snd_dma_free_pages(ptr noundef %flowinfo) #10
  %22 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %area, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end16.if.end30_crit_edge
  %area31 = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 17, i32 1
  %23 = ptrtoint ptr %area31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %area31, align 4
  %tobool32.not = icmp eq ptr %24, null
  br i1 %tobool32.not, label %if.end30.if.end37_crit_edge, label %if.then33

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %bufferinfo = getelementptr inbounds %struct.mixart_mgr, ptr %mgr, i32 0, i32 17
  tail call void @snd_dma_free_pages(ptr noundef %bufferinfo) #10
  %25 = ptrtoint ptr %area31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %area31, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end30.if.end37_crit_edge
  %26 = ptrtoint ptr %pci24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci24, align 4
  tail call void @pci_disable_device(ptr noundef %27) #10
  tail call void @kfree(ptr noundef %mgr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mixart_interrupt(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mixart_threaded_irq(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_mixart_setup_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_mixart_exit_mailbox(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_mixart_reset_board(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixart_chip_dev_free(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mixart_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %chip_idx = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_idx, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.100, i32 noundef %5) #10
  %mgr = getelementptr inbounds %struct.snd_mixart, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mgr, align 4
  %dsp_loaded = getelementptr inbounds %struct.mixart_mgr, ptr %7, i32 0, i32 14
  %8 = ptrtoint ptr %dsp_loaded to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dsp_loaded, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end40_crit_edge, label %if.then

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.101) #10
  %12 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mgr, align 4
  %board_type = getelementptr inbounds %struct.mixart_mgr, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %board_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %board_type, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %15, label %sw.default [
    i32 0, label %if.then.sw.epilog_crit_edge
    i32 14, label %sw.bb6
    i32 8, label %sw.bb8
  ]

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb6, %if.then.sw.epilog_crit_edge
  %.str.105.sink = phi ptr [ @.str.105, %sw.default ], [ @.str.104, %sw.bb8 ], [ @.str.103, %sw.bb6 ], [ @.str.102, %if.then.sw.epilog_crit_edge ]
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull %.str.105.sink) #10
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef nonnull @.str.106) #10
  %21 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mgr, align 4
  %virt = getelementptr inbounds %struct.mixart_mgr, ptr %22, i32 0, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 8312
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool13.not = icmp eq i32 %25, 0
  br i1 %tobool13.not, label %sw.epilog.if.end40_crit_edge, label %if.then14

sw.epilog.if.end40_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then14:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mgr, align 4
  %virt18 = getelementptr inbounds %struct.mixart_mgr, ptr %27, i32 0, i32 4, i32 0, i32 1
  %28 = ptrtoint ptr %virt18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %virt18, align 4
  %add.ptr19 = getelementptr i8, ptr %29, i32 8316
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #10, !srcloc !281
  %mul = mul i32 %30, 100
  %div = udiv i32 %mul, %25
  %31 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mgr, align 4
  %virt24 = getelementptr inbounds %struct.mixart_mgr, ptr %32, i32 0, i32 4, i32 0, i32 1
  %33 = ptrtoint ptr %virt24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %virt24, align 4
  %add.ptr25 = getelementptr i8, ptr %34, i32 8304
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #10, !srcloc !281
  %mul27 = mul i32 %35, 100
  %div28 = udiv i32 %mul27, %25
  %36 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mgr, align 4
  %virt32 = getelementptr inbounds %struct.mixart_mgr, ptr %37, i32 0, i32 4, i32 0, i32 1
  %38 = ptrtoint ptr %virt32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %virt32, align 4
  %add.ptr33 = getelementptr i8, ptr %39, i32 8308
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #10, !srcloc !281
  %mul35 = mul i32 %40, 100
  %div36 = udiv i32 %mul35, %25
  %41 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %42, ptr noundef nonnull @.str.107, i32 noundef %div28) #10
  %43 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %44, ptr noundef nonnull @.str.108, i32 noundef %div) #10
  %45 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %46, ptr noundef nonnull @.str.109, i32 noundef %div36) #10
  br label %if.end40

if.end40:                                         ; preds = %if.then14, %sw.epilog.if.end40_crit_edge, %entry.if.end40_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixart_BA0_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readnone %file_private_data, ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, i64 noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %and = and i32 %count, -4
  %virt = getelementptr inbounds %struct.mixart_mgr, ptr %1, i32 0, i32 4, i32 0, i32 1
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt, align 4
  %idx.ext = trunc i64 %pos to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.ext
  %call = tail call i32 @copy_to_user_fromio(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %and) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %and. = select i1 %tobool.not, i32 %and, i32 -14
  ret i32 %and.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_to_user_fromio(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixart_BA1_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readnone %file_private_data, ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, i64 noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %and = and i32 %count, -4
  %virt = getelementptr %struct.mixart_mgr, ptr %1, i32 0, i32 4, i32 1, i32 1
  %2 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt, align 4
  %idx.ext = trunc i64 %pos to i32
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.ext
  %call = tail call i32 @copy_to_user_fromio(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %and) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %and. = select i1 %tobool.not, i32 %and, i32 -14
  ret i32 %and.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !67, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !100, !101, !102, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !162, !163, !165, !166, !168, !170, !171, !172, !174, !175, !176, !178, !179, !181, !183, !184, !185, !186, !188, !190, !192, !194, !195, !196, !197, !199, !201, !202, !203, !205, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !223, !225, !226, !227, !229, !231, !233, !234, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265}
!llvm.module.flags = !{!267, !268, !269, !270, !271, !272, !273, !274}
!llvm.ident = !{!275}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/mixart/mixart.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/mixart/mixart.c", i32 33, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/mixart/mixart.c", i32 34, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/mixart/mixart.c", i32 40, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/mixart/mixart.c", i32 41, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/mixart/mixart.c", i32 42, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/mixart/mixart.c", i32 43, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/mixart/mixart.c", i32 44, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/mixart/mixart.c", i32 45, i32 1}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/mixart/mixart.c", i32 254, i32 3}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @snd_mixart_add_ref_pipe.__UNIQUE_ID_ddebug253, !23, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/pci/mixart/mixart.c", i32 306, i32 4}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @snd_mixart_add_ref_pipe._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @snd_mixart_add_ref_pipe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/pci/mixart/mixart.c", i32 349, i32 4}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @snd_mixart_kill_ref_pipe._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @snd_mixart_kill_ref_pipe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/mixart/mixart.c", i32 356, i32 4}
!41 = !{ptr @snd_mixart_kill_ref_pipe._entry.9, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @snd_mixart_kill_ref_pipe._entry_ptr.11, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/pci/mixart/mixart.c", i32 367, i32 4}
!45 = !{ptr @snd_mixart_kill_ref_pipe._entry.12, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @snd_mixart_kill_ref_pipe._entry_ptr.14, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @__initcall__kmod_snd_mixart__265_1408_mixart_driver_init6, !48, !"__initcall__kmod_snd_mixart__265_1408_mixart_driver_init6", i1 false, i1 false}
!48 = !{!"../sound/pci/mixart/mixart.c", i32 1408, i32 1}
!49 = !{ptr @__exitcall_mixart_driver_exit, !48, !"__exitcall_mixart_driver_exit", i1 false, i1 false}
!50 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!51 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!52 = !{ptr @index, !53, !"index", i1 false, i1 false}
!53 = !{!"../sound/pci/mixart/mixart.c", i32 36, i32 12}
!54 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!55 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!56 = !{ptr @id, !57, !"id", i1 false, i1 false}
!57 = !{!"../sound/pci/mixart/mixart.c", i32 37, i32 14}
!58 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!59 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!60 = !{ptr @enable, !61, !"enable", i1 false, i1 false}
!61 = !{!"../sound/pci/mixart/mixart.c", i32 38, i32 13}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/pci/mixart/mixart.c", i32 176, i32 4}
!64 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mixart_set_clock._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @mixart_set_clock._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/mixart/mixart.c", i32 190, i32 2}
!69 = !{ptr @mixart_set_clock.__UNIQUE_ID_ddebug252, !68, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/mixart/mixart.c", i32 199, i32 3}
!72 = !{ptr @mixart_set_clock._entry.18, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mixart_set_clock._entry_ptr.20, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/mixart/mixart.c", i32 76, i32 3}
!76 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @mixart_set_pipe_state._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @mixart_set_pipe_state._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/mixart/mixart.c", i32 92, i32 3}
!81 = !{ptr @mixart_set_pipe_state._entry.23, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @mixart_set_pipe_state._entry_ptr.25, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/pci/mixart/mixart.c", i32 114, i32 3}
!85 = !{ptr @mixart_set_pipe_state._entry.26, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @mixart_set_pipe_state._entry_ptr.28, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/pci/mixart/mixart.c", i32 127, i32 4}
!89 = !{ptr @mixart_set_pipe_state._entry.29, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @mixart_set_pipe_state._entry_ptr.31, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/pci/mixart/mixart.c", i32 142, i32 4}
!93 = !{ptr @mixart_set_pipe_state._entry.32, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @mixart_set_pipe_state._entry_ptr.34, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/mixart/mixart.c", i32 956, i32 16}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/pci/mixart/mixart.c", i32 961, i32 3}
!99 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @snd_mixart_pcm_analog._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @snd_mixart_pcm_analog._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @snd_mixart_playback_ops, !103, !"snd_mixart_playback_ops", i1 false, i1 false}
!103 = !{!"../sound/pci/mixart/mixart.c", i32 908, i32 33}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/mixart/mixart.c", i32 725, i32 2}
!106 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @snd_mixart_playback_open.__UNIQUE_ID_ddebug261, !105, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/mixart/mixart.c", i32 734, i32 3}
!110 = !{ptr @snd_mixart_playback_open._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @snd_mixart_playback_open._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.42, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/mixart/mixart.c", i32 752, i32 3}
!114 = !{ptr @snd_mixart_playback_open._entry.41, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @snd_mixart_playback_open._entry_ptr.43, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @snd_mixart_analog_caps, !117, !"snd_mixart_analog_caps", i1 false, i1 false}
!117 = !{!"../sound/pci/mixart/mixart.c", i32 661, i32 38}
!118 = !{ptr @snd_mixart_digital_caps, !119, !"snd_mixart_digital_caps", i1 false, i1 false}
!119 = !{!"../sound/pci/mixart/mixart.c", i32 682, i32 38}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/mixart/mixart.c", i32 873, i32 2}
!122 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @snd_mixart_close.__UNIQUE_ID_ddebug263, !121, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/mixart/mixart.c", i32 884, i32 3}
!126 = !{ptr @snd_mixart_close._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @snd_mixart_close._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/mixart/mixart.c", i32 638, i32 3}
!130 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @snd_mixart_hw_params.__UNIQUE_ID_ddebug260, !129, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/mixart/mixart.c", i32 552, i32 3}
!134 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @mixart_set_format._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @mixart_set_format._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/pci/mixart/mixart.c", i32 557, i32 2}
!139 = !{ptr @mixart_set_format.__UNIQUE_ID_ddebug259, !138, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!140 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/mixart/mixart.c", i32 578, i32 3}
!142 = !{ptr @mixart_set_format._entry.52, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @mixart_set_format._entry_ptr.54, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.55, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/mixart/mixart.c", i32 465, i32 4}
!146 = !{ptr @.str.56, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @mixart_sync_nonblock_events._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @mixart_sync_nonblock_events._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.57, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/pci/mixart/mixart.c", i32 484, i32 2}
!151 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @snd_mixart_prepare.__UNIQUE_ID_ddebug258, !150, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!153 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/pci/mixart/mixart.c", i32 423, i32 3}
!155 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @snd_mixart_trigger.__UNIQUE_ID_ddebug254, !154, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!157 = !{ptr @.str.61, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/pci/mixart/mixart.c", i32 440, i32 3}
!159 = !{ptr @snd_mixart_trigger.__UNIQUE_ID_ddebug255, !158, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!160 = !{ptr @.str.62, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/pci/mixart/mixart.c", i32 447, i32 3}
!162 = !{ptr @snd_mixart_trigger.__UNIQUE_ID_ddebug256, !161, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!163 = !{ptr @.str.63, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/pci/mixart/mixart.c", i32 452, i32 3}
!165 = !{ptr @snd_mixart_trigger.__UNIQUE_ID_ddebug257, !164, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!166 = !{ptr @snd_mixart_capture_ops, !167, !"snd_mixart_capture_ops", i1 false, i1 false}
!167 = !{!"../sound/pci/mixart/mixart.c", i32 918, i32 33}
!168 = !{ptr @.str.64, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/pci/mixart/mixart.c", i32 807, i32 2}
!170 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @snd_mixart_capture_open.__UNIQUE_ID_ddebug262, !169, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!172 = !{ptr @.str.66, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/pci/mixart/mixart.c", i32 815, i32 3}
!174 = !{ptr @snd_mixart_capture_open._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @snd_mixart_capture_open._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @snd_mixart_capture_open._entry.67, !177, !"_entry", i1 false, i1 false}
!177 = !{!"../sound/pci/mixart/mixart.c", i32 833, i32 3}
!178 = !{ptr @snd_mixart_capture_open._entry_ptr.68, !177, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.69, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/pci/mixart/mixart.c", i32 990, i32 16}
!181 = !{ptr @.str.70, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/pci/mixart/mixart.c", i32 995, i32 3}
!183 = !{ptr @.str.71, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @snd_mixart_pcm_digital._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @snd_mixart_pcm_digital._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @mixart_driver, !187, !"mixart_driver", i1 false, i1 false}
!187 = !{!"../sound/pci/mixart/mixart.c", i32 1401, i32 26}
!188 = !{ptr @snd_mixart_ids, !189, !"snd_mixart_ids", i1 false, i1 false}
!189 = !{!"../sound/pci/mixart/mixart.c", i32 50, i32 35}
!190 = !{ptr @snd_mixart_probe.dev, !191, !"dev", i1 false, i1 false}
!191 = !{!"../sound/pci/mixart/mixart.c", i32 1233, i32 13}
!192 = !{ptr @.str.72, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/pci/mixart/mixart.c", i32 1256, i32 3}
!194 = !{ptr @.str.73, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @snd_mixart_probe._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @snd_mixart_probe._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.74, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/pci/mixart/mixart.c", i32 1274, i32 33}
!199 = !{ptr @.str.76, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/pci/mixart/mixart.c", i32 1284, i32 4}
!201 = !{ptr @snd_mixart_probe._entry.75, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @snd_mixart_probe._entry_ptr.77, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.79, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/pci/mixart/mixart.c", i32 1294, i32 3}
!205 = !{ptr @snd_mixart_probe._entry.78, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @snd_mixart_probe._entry_ptr.80, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @snd_mixart_probe.__key, !208, !"__key", i1 false, i1 false}
!208 = !{!"../sound/pci/mixart/mixart.c", i32 1304, i32 2}
!209 = !{ptr @.str.81, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @snd_mixart_probe.__key.82, !211, !"__key", i1 false, i1 false}
!211 = !{!"../sound/pci/mixart/mixart.c", i32 1305, i32 2}
!212 = !{ptr @.str.83, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @snd_mixart_probe.__key.84, !214, !"__key", i1 false, i1 false}
!214 = !{!"../sound/pci/mixart/mixart.c", i32 1306, i32 2}
!215 = !{ptr @.str.85, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @snd_mixart_probe.__key.86, !217, !"__key", i1 false, i1 false}
!217 = !{!"../sound/pci/mixart/mixart.c", i32 1310, i32 2}
!218 = !{ptr @.str.87, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.88, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/pci/mixart/mixart.c", i32 1323, i32 34}
!221 = !{ptr @.str.89, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/pci/mixart/mixart.c", i32 1323, i32 63}
!223 = !{ptr @.str.91, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/pci/mixart/mixart.c", i32 1328, i32 4}
!225 = !{ptr @snd_mixart_probe._entry.90, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @snd_mixart_probe._entry_ptr.92, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.93, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/pci/mixart/mixart.c", i32 1335, i32 5}
!229 = !{ptr @.str.94, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/pci/mixart/mixart.c", i32 1337, i32 4}
!231 = !{ptr @.str.95, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/pci/mixart/mixart.c", i32 1097, i32 3}
!233 = !{ptr @.str.96, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @snd_mixart_free.__UNIQUE_ID_ddebug264, !232, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!235 = !{ptr @snd_mixart_create.ops, !236, !"ops", i1 false, i1 false}
!236 = !{!"../sound/pci/mixart/mixart.c", i32 1034, i32 37}
!237 = !{ptr @.str.97, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/pci/mixart/mixart.c", i32 1208, i32 35}
!239 = !{ptr @.str.98, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/pci/mixart/mixart.c", i32 1211, i32 38}
!241 = !{ptr @.str.99, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/pci/mixart/mixart.c", i32 1217, i32 38}
!243 = !{ptr @.str.100, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/pci/mixart/mixart.c", i32 1173, i32 2}
!245 = !{ptr @.str.101, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/pci/mixart/mixart.c", i32 1177, i32 3}
!247 = !{ptr @.str.102, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/pci/mixart/mixart.c", i32 1179, i32 40}
!249 = !{ptr @.str.103, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/pci/mixart/mixart.c", i32 1180, i32 40}
!251 = !{ptr @.str.104, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/pci/mixart/mixart.c", i32 1181, i32 40}
!253 = !{ptr @.str.105, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/pci/mixart/mixart.c", i32 1182, i32 40}
!255 = !{ptr @.str.106, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/pci/mixart/mixart.c", i32 1185, i32 3}
!257 = !{ptr @.str.107, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/pci/mixart/mixart.c", i32 1196, i32 4}
!259 = !{ptr @.str.108, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/pci/mixart/mixart.c", i32 1197, i32 4}
!261 = !{ptr @.str.109, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/pci/mixart/mixart.c", i32 1198, i32 4}
!263 = !{ptr @snd_mixart_proc_ops_BA0, !264, !"snd_mixart_proc_ops_BA0", i1 false, i1 false}
!264 = !{!"../sound/pci/mixart/mixart.c", i32 1158, i32 40}
!265 = !{ptr @snd_mixart_proc_ops_BA1, !266, !"snd_mixart_proc_ops_BA1", i1 false, i1 false}
!266 = !{!"../sound/pci/mixart/mixart.c", i32 1162, i32 40}
!267 = !{i32 1, !"wchar_size", i32 2}
!268 = !{i32 1, !"min_enum_size", i32 4}
!269 = !{i32 8, !"branch-target-enforcement", i32 0}
!270 = !{i32 8, !"sign-return-address", i32 0}
!271 = !{i32 8, !"sign-return-address-all", i32 0}
!272 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!273 = !{i32 7, !"uwtable", i32 1}
!274 = !{i32 7, !"frame-pointer", i32 2}
!275 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!276 = !{i64 2148753933, i64 2148753938, i64 2148753951, i64 2148753995, i64 2148754029, i64 2148754050}
!277 = !{!"auto-init"}
!278 = !{!"branch_weights", i32 2000, i32 1}
!279 = !{i32 0, i32 33}
!280 = !{i8 0, i8 2}
!281 = !{i64 4235159}
