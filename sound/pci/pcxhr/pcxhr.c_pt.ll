; ModuleID = '/llk/IR_all_yes/sound/pci/pcxhr/pcxhr.c_pt.bc'
source_filename = "../sound/pci/pcxhr/pcxhr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.board_parameters = type { ptr, i16, i16, i16, i16 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.pcxhr_rmh = type { i16, i16, i16, i16, [8 x i32], [16 x i32] }
%struct.pcxhr_mgr = type { i32, [6 x ptr], ptr, i32, i32, [3 x i32], [40 x i8], ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, %struct.snd_dma_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.83, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.83 = type { ptr }
%struct.snd_pcxhr = type { ptr, ptr, i32, ptr, %struct.pcxhr_pipe, [2 x %struct.pcxhr_pipe], [4 x %struct.pcxhr_stream], [2 x %struct.pcxhr_stream], i32, i32, [2 x i32], [2 x i32], [2 x i32], [4 x [2 x i32]], [4 x [2 x i32]], [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, [5 x i8] }
%struct.pcxhr_pipe = type { i32, i32, i32 }
%struct.pcxhr_stream = type { ptr, i32, ptr, i32, i64, i32, i32, i32, i32 }
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
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.72, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.72 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@__UNIQUE_ID_author242 = internal constant [98 x i8] c"snd_pcxhr.author=Markus Bollinger <bollinger@digigram.com>, Marc Titinger <titinger@digigram.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [43 x i8] c"snd_pcxhr.description=Digigram pcxhr 0.9.6\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [41 x i8] c"snd_pcxhr.file=sound/pci/pcxhr/snd-pcxhr\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [22 x i8] c"snd_pcxhr.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [16 x i8] c"snd_pcxhr.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype246 = internal constant [38 x i8] c"snd_pcxhr.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index247 = internal constant [62 x i8] c"snd_pcxhr.parm=index:Index value for Digigram pcxhr soundcard\00", section ".modinfo", align 1
@__param_str_id = internal constant [13 x i8] c"snd_pcxhr.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype248 = internal constant [37 x i8] c"snd_pcxhr.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id249 = internal constant [57 x i8] c"snd_pcxhr.parm=id:ID string for Digigram pcxhr soundcard\00", section ".modinfo", align 1
@__param_str_enable = internal constant [17 x i8] c"snd_pcxhr.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype250 = internal constant [40 x i8] c"snd_pcxhr.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable251 = internal constant [54 x i8] c"snd_pcxhr.parm=enable:Enable Digigram pcxhr soundcard\00", section ".modinfo", align 1
@__param_str_mono = internal constant [15 x i8] c"snd_pcxhr.mono\00", align 1
@__param_arr_mono = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @mono }, align 4
@__param_mono = internal constant %struct.kernel_param { ptr @__param_str_mono, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_mono } }, section "__param", align 4
@__UNIQUE_ID_monotype252 = internal constant [38 x i8] c"snd_pcxhr.parmtype=mono:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_mono253 = internal constant [58 x i8] c"snd_pcxhr.parm=mono:Mono capture mode (default is stereo)\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcxhr %d\00", [23 x i8] zeroinitializer }, align 32
@pcxhr_create_pcm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot create pcm %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcxhr_create_pcm\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/pci/pcxhr/pcxhr.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcxhr_create_pcm._entry_ptr = internal global ptr @pcxhr_create_pcm._entry, section ".printk_index", align 4
@pcxhr_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @pcxhr_open, ptr @pcxhr_close, ptr null, ptr @pcxhr_hw_params, ptr null, ptr @pcxhr_prepare, ptr @pcxhr_trigger, ptr null, ptr @pcxhr_stream_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_pcxhr__270_1666_pcxhr_driver_init6 = internal global ptr @pcxhr_driver_init, section ".initcall6.init", align 4
@pcxhr_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.6, ptr @pcxhr_ids, ptr @pcxhr_probe, ptr @pcxhr_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pcxhr_driver_exit = internal global ptr @pcxhr_driver_exit, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@mono = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@pcxhr_sub_set_clock.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"snd_pcxhr\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcxhr_sub_set_clock\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clock register : set %x\0A\00", [39 x i8] zeroinitializer }, align 32
@pcxhr_sub_set_clock.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.9, i8 0, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s to %dHz (realfreq=%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@pcxhr_get_clock_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"error CMD_ACCESS_IO_WRITE for PLL register : %x!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcxhr_get_clock_reg\00", [44 x i8] zeroinitializer }, align 32
@pcxhr_get_clock_reg._entry_ptr = internal global ptr @pcxhr_get_clock_reg._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pcxhr_sub_get_external_clock.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pcxhr_sub_get_external_clock\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"External clock is at %d Hz\0A\00", [36 x i8] zeroinitializer }, align 32
@pcxhr_caps = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 4194563, i64 12884918286, i32 1073750014, i32 8000, i32 192000, i32 1, i32 2, i32 32768, i32 192, i32 16384, i32 2, i32 341, i32 0 }, [32 x i8] zeroinitializer }, align 32
@pcxhr_open.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 -6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcxhr_open\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s playback chip%d subs%d\0A\00", [37 x i8] zeroinitializer }, align 32
@pcxhr_open.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.14, ptr @.str.3, ptr @.str.16, i8 0, i8 -5, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s capture chip%d subs%d\0A\00", [38 x i8] zeroinitializer }, align 32
@pcxhr_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.3, i32 1014, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s chip%d subs%d in use\0A\00", [39 x i8] zeroinitializer }, align 32
@pcxhr_open._entry_ptr = internal global ptr @pcxhr_open._entry, section ".printk_index", align 4
@pcxhr_close.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 1, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcxhr_close\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s chip%d subs%d\0A\00", [46 x i8] zeroinitializer }, align 32
@pcxhr_hardware_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 892, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"error %s err(%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcxhr_hardware_timer\00", [43 x i8] zeroinitializer }, align 32
@pcxhr_hardware_timer._entry_ptr = internal global ptr @pcxhr_hardware_timer._entry, section ".printk_index", align 4
@pcxhr_prepare.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcxhr_prepare\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s : period_size(%lx) periods(%x) buffer_size(%lx)\0A\00", [44 x i8] zeroinitializer }, align 32
@pcxhr_trigger.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 -49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcxhr_trigger\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SNDRV_PCM_TRIGGER_START\0A\00", [39 x i8] zeroinitializer }, align 32
@pcxhr_trigger.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.24, ptr @.str.3, ptr @.str.26, i8 0, i8 -45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Only one Substream %c %d\0A\00", [38 x i8] zeroinitializer }, align 32
@pcxhr_trigger.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.24, ptr @.str.3, ptr @.str.27, i8 0, i8 -42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SNDRV_PCM_TRIGGER_STOP\0A\00", [40 x i8] zeroinitializer }, align 32
@pcxhr_start_linked_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 724, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s : no pipes\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pcxhr_start_linked_stream\00", [38 x i8] zeroinitializer }, align 32
@pcxhr_start_linked_stream._entry_ptr = internal global ptr @pcxhr_start_linked_stream._entry, section ".printk_index", align 4
@pcxhr_start_linked_stream.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s : playback_mask=%x capture_mask=%x\0A\00", [57 x i8] zeroinitializer }, align 32
@pcxhr_start_linked_stream._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.3, i32 737, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s : error stop pipes (P%x C%x)\0A\00", [63 x i8] zeroinitializer }, align 32
@pcxhr_start_linked_stream._entry_ptr.33 = internal global ptr @pcxhr_start_linked_stream._entry.31, section ".printk_index", align 4
@pcxhr_start_linked_stream._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.29, ptr @.str.3, i32 782, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s : error start pipes (P%x C%x)\0A\00", [62 x i8] zeroinitializer }, align 32
@pcxhr_start_linked_stream._entry_ptr.36 = internal global ptr @pcxhr_start_linked_stream._entry.34, section ".printk_index", align 4
@pcxhr_start_linked_stream.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.29, ptr @.str.3, ptr @.str.37, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"***TRIGGER START*** TIME = %ld (err = %x)\0A\00", [53 x i8] zeroinitializer }, align 32
@pcxhr_set_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 573, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error %s() : unknown format\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcxhr_set_format\00", [47 x i8] zeroinitializer }, align 32
@pcxhr_set_format._entry_ptr = internal global ptr @pcxhr_set_format._entry, section ".printk_index", align 4
@pcxhr_set_format._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 618, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ERROR %s err=%x;\0A\00", [46 x i8] zeroinitializer }, align 32
@pcxhr_set_format._entry_ptr.42 = internal global ptr @pcxhr_set_format._entry.40, section ".printk_index", align 4
@pcxhr_update_r_buffer.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcxhr_update_r_buffer\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(pcm%c%d) : addr(%p) bytes(%zx) subs(%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@pcxhr_update_r_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 656, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ERROR CMD_UPDATE_R_BUFFERS err=%x;\0A\00", [60 x i8] zeroinitializer }, align 32
@pcxhr_update_r_buffer._entry_ptr = internal global ptr @pcxhr_update_r_buffer._entry, section ".printk_index", align 4
@pcxhr_set_stream_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s CANNOT be stopped\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcxhr_set_stream_state\00", [41 x i8] zeroinitializer }, align 32
@pcxhr_set_stream_state._entry_ptr = internal global ptr @pcxhr_set_stream_state._entry, section ".printk_index", align 4
@pcxhr_set_stream_state._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.47, ptr @.str.3, i32 527, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pcxhr_set_stream_state._entry_ptr.49 = internal global ptr @pcxhr_set_stream_state._entry.48, section ".printk_index", align 4
@pcxhr_ids = internal constant { [35 x %struct.pci_device_id], [256 x i8] } { [35 x %struct.pci_device_id] [%struct.pci_device_id { i32 4277, i32 38486, i32 4969, i32 45057, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4277, i32 38486, i32 4969, i32 45313, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4277, i32 38486, i32 4969, i32 45569, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4277, i32 38486, i32 4969, i32 45825, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 45089, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 45345, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 45601, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 45857, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4277, i32 38486, i32 4969, i32 46081, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4277, i32 38486, i32 4969, i32 46337, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4277, i32 38486, i32 4969, i32 46593, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4277, i32 38486, i32 4969, i32 46849, i32 0, i32 0, i32 11, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 46113, i32 0, i32 0, i32 12, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 46369, i32 0, i32 0, i32 13, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 46625, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 46881, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 47617, i32 0, i32 0, i32 16, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 47649, i32 0, i32 0, i32 17, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 48385, i32 0, i32 0, i32 18, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 48417, i32 0, i32 0, i32 19, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 48129, i32 0, i32 0, i32 20, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 48161, i32 0, i32 0, i32 21, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 47873, i32 0, i32 0, i32 22, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 47905, i32 0, i32 0, i32 23, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 48897, i32 0, i32 0, i32 24, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 48929, i32 0, i32 0, i32 25, i32 0 }, %struct.pci_device_id { i32 4277, i32 38486, i32 4969, i32 53249, i32 0, i32 0, i32 26, i32 0 }, %struct.pci_device_id { i32 4277, i32 38486, i32 4969, i32 53505, i32 0, i32 0, i32 27, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 53281, i32 0, i32 0, i32 28, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 53537, i32 0, i32 0, i32 29, i32 0 }, %struct.pci_device_id { i32 4277, i32 38486, i32 4969, i32 53761, i32 0, i32 0, i32 30, i32 0 }, %struct.pci_device_id { i32 4277, i32 38486, i32 4969, i32 54017, i32 0, i32 0, i32 31, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 53793, i32 0, i32 0, i32 32, i32 0 }, %struct.pci_device_id { i32 4277, i32 36950, i32 4969, i32 54049, i32 0, i32 0, i32 33, i32 0 }, %struct.pci_device_id zeroinitializer], [256 x i8] zeroinitializer }, align 32
@pcxhr_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pcxhr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 1504, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"architecture does not support 32bit PCI busmaster DMA\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcxhr_probe\00", [20 x i8] zeroinitializer }, align 32
@pcxhr_probe._entry_ptr = internal global ptr @pcxhr_probe._entry, section ".printk_index", align 4
@pcxhr_board_params = internal constant { [34 x %struct.board_parameters], [104 x i8] } { [34 x %struct.board_parameters] [%struct.board_parameters { ptr @.str.68, i16 4, i16 4, i16 0, i16 41 }, %struct.board_parameters { ptr @.str.69, i16 4, i16 4, i16 0, i16 41 }, %struct.board_parameters { ptr @.str.70, i16 4, i16 4, i16 0, i16 41 }, %struct.board_parameters { ptr @.str.71, i16 4, i16 4, i16 0, i16 41 }, %struct.board_parameters { ptr @.str.72, i16 4, i16 4, i16 1, i16 41 }, %struct.board_parameters { ptr @.str.73, i16 4, i16 4, i16 1, i16 41 }, %struct.board_parameters { ptr @.str.74, i16 4, i16 4, i16 1, i16 41 }, %struct.board_parameters { ptr @.str.75, i16 4, i16 4, i16 1, i16 41 }, %struct.board_parameters { ptr @.str.76, i16 6, i16 1, i16 2, i16 42 }, %struct.board_parameters { ptr @.str.77, i16 6, i16 1, i16 2, i16 42 }, %struct.board_parameters { ptr @.str.78, i16 6, i16 1, i16 2, i16 42 }, %struct.board_parameters { ptr @.str.79, i16 6, i16 1, i16 2, i16 42 }, %struct.board_parameters { ptr @.str.80, i16 6, i16 1, i16 3, i16 42 }, %struct.board_parameters { ptr @.str.81, i16 6, i16 1, i16 3, i16 42 }, %struct.board_parameters { ptr @.str.82, i16 6, i16 1, i16 3, i16 42 }, %struct.board_parameters { ptr @.str.83, i16 6, i16 1, i16 3, i16 42 }, %struct.board_parameters { ptr @.str.84, i16 1, i16 1, i16 4, i16 44 }, %struct.board_parameters { ptr @.str.85, i16 1, i16 1, i16 4, i16 44 }, %struct.board_parameters { ptr @.str.86, i16 1, i16 0, i16 4, i16 44 }, %struct.board_parameters { ptr @.str.87, i16 1, i16 0, i16 4, i16 44 }, %struct.board_parameters { ptr @.str.88, i16 1, i16 1, i16 5, i16 44 }, %struct.board_parameters { ptr @.str.89, i16 1, i16 1, i16 5, i16 44 }, %struct.board_parameters { ptr @.str.90, i16 1, i16 1, i16 5, i16 44 }, %struct.board_parameters { ptr @.str.91, i16 1, i16 1, i16 5, i16 44 }, %struct.board_parameters { ptr @.str.92, i16 1, i16 1, i16 5, i16 44 }, %struct.board_parameters { ptr @.str.93, i16 1, i16 1, i16 5, i16 44 }, %struct.board_parameters { ptr @.str.94, i16 2, i16 2, i16 0, i16 41 }, %struct.board_parameters { ptr @.str.95, i16 2, i16 2, i16 0, i16 41 }, %struct.board_parameters { ptr @.str.96, i16 2, i16 2, i16 1, i16 41 }, %struct.board_parameters { ptr @.str.97, i16 2, i16 2, i16 1, i16 41 }, %struct.board_parameters { ptr @.str.98, i16 4, i16 1, i16 2, i16 42 }, %struct.board_parameters { ptr @.str.99, i16 4, i16 1, i16 2, i16 42 }, %struct.board_parameters { ptr @.str.100, i16 4, i16 1, i16 3, i16 42 }, %struct.board_parameters { ptr @.str.101, i16 4, i16 1, i16 3, i16 42 }], [104 x i8] zeroinitializer }, align 32
@pcxhr_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 1557, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@pcxhr_probe._entry_ptr.54 = internal global ptr @pcxhr_probe._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Digigram at 0x%lx & 0x%lx, 0x%lx irq %i\00", [56 x i8] zeroinitializer }, align 32
@pcxhr_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mgr->lock\00", [21 x i8] zeroinitializer }, align 32
@pcxhr_probe.__key.57 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mgr->msg_lock\00", [17 x i8] zeroinitializer }, align 32
@pcxhr_probe.__key.59 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mgr->setup_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@pcxhr_probe._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.51, ptr @.str.3, i32 1603, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot allocate the card %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pcxhr_probe._entry_ptr.64 = internal global ptr @pcxhr_probe._entry.62, section ".printk_index", align 4
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pcxhr\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Digigram [PCM #%d]\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s [PCM #%d]\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VX882HR\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCX882HR\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VX881HR\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCX881HR\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VX882e\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCX882e\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VX881e\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCX881e\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VX1222HR\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCX1222HR\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VX1221HR\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCX1221HR\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VX1222e\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCX1222e\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VX1221e\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCX1221e\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VX222HR\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VX222e\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCX22HR\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCX22e\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VX222HR-Mic\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VX222e-Mic\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCX924HR\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCX924e\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PCX924HR-Mic\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PCX924e-Mic\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VX442HR\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCX442HR\00", [23 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VX442e\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCX442e\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VX822HR\00", [24 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PCX822HR\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VX822e\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCX822e\00", [24 x i8] zeroinitializer }, align 32
@pcxhr_free.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.102, ptr @.str.3, ptr @.str.103, i8 1, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcxhr_free\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reset pcxhr !\0A\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pcxhr_create.ops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @pcxhr_chip_dev_free, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sync\00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ltc\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0A%s\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"module version %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.9.6\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dsp version %d.%d.%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"analog io available\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"digital only board\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpu load    %d%%\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"buffer pool %d/%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dma granularity : %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dsp time errors : %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dsp async pipe xrun errors : %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dsp async stream xrun errors : %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dsp async last other error : %x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"debug[%02d] = %06x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no firmware loaded\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@pcxhr_proc_sync.textsHR22 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.124, ptr @.str.125, ptr @.str.126], [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Internal\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AES Sync\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AES 1\00", [26 x i8] zeroinitializer }, align 32
@pcxhr_proc_sync.textsPCXHR = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.124, ptr @.str.127, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130], [36 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Word\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AES 2\00", [26 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AES 3\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AES 4\00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Current Sample Clock\09: %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Current Sample Rate\09= %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s Clock\09\09= %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GPI: 0x%x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GPO: 0x%x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GPO: 0x%x\00", [22 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ltc not activated (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ltc read error (err=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timecode: %02u:%02u:%02u-%02u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"raw: 0x%04x%06x%06x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"warning: linear timecode not valid\0A\00", [60 x i8] zeroinitializer }, align 32
@switch.table.pcxhr_sub_get_external_clock = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 13, i32 8, i32 9, i32 10, i32 11, i32 12], [40 x i8] zeroinitializer }, align 32
@switch.table.pcxhr_sub_get_external_clock.142 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 32000, i32 44100, i32 48000, i32 64000, i32 88200, i32 96000, i32 128000, i32 176400, i32 192000], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.143 = internal global [17 x i64] [i64 15, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000, i64 128000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.145 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 14, i64 32, i64 33]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 48000]
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1135, i32 31 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1140, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant [10 x i8] c"pcxhr_ops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1118, i32 33 }
@___asan_gen_.172 = private unnamed_addr constant [13 x i8] c"pcxhr_driver\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1659, i32 26 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 39, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 40, i32 14 }
@___asan_gen_.181 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 41, i32 13 }
@___asan_gen_.184 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 42, i32 13 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 346, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 369, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 273, i32 5 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 469, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [11 x i8] c"pcxhr_caps\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 958, i32 38 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 999, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1003, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1013, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1079, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 891, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 905, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 831, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 844, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 859, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 724, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 728, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 735, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 780, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 814, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 572, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 617, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 632, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 655, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 501, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 526, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [10 x i8] c"pcxhr_ids\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 91, i32 35 }
@___asan_gen_.334 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1481, i32 13 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1503, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [19 x i8] c"pcxhr_board_params\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 138, i32 38 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1557, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1564, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1568, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1569, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1572, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1597, i32 34 }
@___asan_gen_.379 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1603, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1608, i32 24 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1610, i32 5 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1612, i32 5 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 139, i32 27 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 140, i32 27 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 141, i32 27 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 142, i32 27 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 143, i32 27 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 144, i32 27 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 145, i32 27 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 146, i32 27 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 147, i32 27 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 148, i32 27 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 149, i32 27 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 150, i32 27 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 151, i32 27 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 152, i32 27 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 153, i32 27 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 154, i32 27 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 155, i32 27 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 156, i32 27 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 157, i32 27 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 158, i32 27 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 159, i32 27 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 160, i32 27 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 161, i32 27 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 162, i32 27 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 163, i32 27 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 164, i32 27 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 165, i32 27 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 166, i32 27 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 167, i32 27 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 168, i32 27 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 169, i32 27 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 170, i32 27 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 171, i32 27 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 172, i32 27 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1453, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1181, i32 37 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1427, i32 35 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1428, i32 35 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1431, i32 36 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1434, i32 35 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1223, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1231, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1233, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1236, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1238, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1255, i32 5 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1256, i32 5 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1260, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1262, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1264, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1266, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1268, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1281, i32 5 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1285, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1286, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant [10 x i8] c"textsHR22\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1293, i32 21 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1294, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1294, i32 15 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1294, i32 27 }
@___asan_gen_.577 = private unnamed_addr constant [11 x i8] c"textsPCXHR\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1296, i32 21 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1297, i32 15 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1298, i32 12 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1298, i32 21 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1298, i32 30 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1311, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1313, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1322, i32 4 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1340, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1342, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1358, i32 20 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1393, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1406, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1414, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1416, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.623 = private constant [27 x i8] c"../sound/pci/pcxhr/pcxhr.c\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.623, i32 1421, i32 3 }
@___asan_gen_.625 = private unnamed_addr constant [42 x i8] c"switch.table.pcxhr_sub_get_external_clock\00", align 1
@___asan_gen_.626 = private unnamed_addr constant [46 x i8] c"switch.table.pcxhr_sub_get_external_clock.142\00", align 1
@llvm.compiler.used = appending global [195 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_enable251, ptr @__UNIQUE_ID_enabletype250, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_id249, ptr @__UNIQUE_ID_idtype248, ptr @__UNIQUE_ID_index247, ptr @__UNIQUE_ID_indextype246, ptr @__UNIQUE_ID_license245, ptr @__UNIQUE_ID_mono253, ptr @__UNIQUE_ID_monotype252, ptr @__exitcall_pcxhr_driver_exit, ptr @__initcall__kmod_snd_pcxhr__270_1666_pcxhr_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @__param_mono, ptr @pcxhr_create_pcm._entry, ptr @pcxhr_create_pcm._entry_ptr, ptr @pcxhr_driver_exit, ptr @pcxhr_get_clock_reg._entry, ptr @pcxhr_get_clock_reg._entry_ptr, ptr @pcxhr_hardware_timer._entry, ptr @pcxhr_hardware_timer._entry_ptr, ptr @pcxhr_open._entry, ptr @pcxhr_open._entry_ptr, ptr @pcxhr_probe._entry, ptr @pcxhr_probe._entry.52, ptr @pcxhr_probe._entry.62, ptr @pcxhr_probe._entry_ptr, ptr @pcxhr_probe._entry_ptr.54, ptr @pcxhr_probe._entry_ptr.64, ptr @pcxhr_set_format._entry, ptr @pcxhr_set_format._entry.40, ptr @pcxhr_set_format._entry_ptr, ptr @pcxhr_set_format._entry_ptr.42, ptr @pcxhr_set_stream_state._entry, ptr @pcxhr_set_stream_state._entry.48, ptr @pcxhr_set_stream_state._entry_ptr, ptr @pcxhr_set_stream_state._entry_ptr.49, ptr @pcxhr_start_linked_stream._entry, ptr @pcxhr_start_linked_stream._entry.31, ptr @pcxhr_start_linked_stream._entry.34, ptr @pcxhr_start_linked_stream._entry_ptr, ptr @pcxhr_start_linked_stream._entry_ptr.33, ptr @pcxhr_start_linked_stream._entry_ptr.36, ptr @pcxhr_update_r_buffer._entry, ptr @pcxhr_update_r_buffer._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pcxhr_ops, ptr @pcxhr_driver, ptr @index, ptr @id, ptr @enable, ptr @mono, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @pcxhr_caps, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @pcxhr_ids, ptr @pcxhr_probe.dev, ptr @.str.50, ptr @.str.51, ptr @pcxhr_board_params, ptr @.str.53, ptr @.str.55, ptr @pcxhr_probe.__key, ptr @.str.56, ptr @pcxhr_probe.__key.57, ptr @.str.58, ptr @pcxhr_probe.__key.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @pcxhr_create.ops, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @pcxhr_proc_sync.textsHR22, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @pcxhr_proc_sync.textsPCXHR, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @switch.table.pcxhr_sub_get_external_clock, ptr @switch.table.pcxhr_sub_get_external_clock.142], section "llvm.metadata"
@0 = internal global [161 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_create_pcm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mono to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_get_clock_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_caps to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_hardware_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_start_linked_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_start_linked_stream._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_start_linked_stream._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_set_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_set_format._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_update_r_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_set_stream_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_set_stream_state._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_ids to i32), i32 1120, i32 1376, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_board_params to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_probe.__key.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_probe.__key.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_probe._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_create.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_proc_sync.textsHR22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcxhr_proc_sync.textsPCXHR to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pcxhr_sub_get_external_clock to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pcxhr_sub_get_external_clock.142 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcxhr_set_clock(ptr noundef %mgr, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  %changed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #10
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %changed) #10
  %1 = ptrtoint ptr %changed to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %changed, align 4, !annotation !357
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp = icmp eq i32 %rate, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_hr_stereo = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 18
  %2 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = call i32 @hr222_sub_set_clock(ptr noundef %mgr, i32 noundef %rate, ptr noundef nonnull %changed) #10
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = call fastcc i32 @pcxhr_sub_set_clock(ptr noundef %mgr, i32 noundef %rate, ptr noundef nonnull %changed)
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %err.0 = phi i32 [ %call, %if.then1 ], [ %call2, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool4.not = icmp eq i32 %err.0, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %3 = ptrtoint ptr %changed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %changed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.end6.if.end23_crit_edge, label %if.then8

if.end6.if.end23_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then8:                                         ; preds = %if.end6
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 7) #10
  %cmd = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cmd, align 4
  %or = or i32 %6, 4
  store i32 %or, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 92000, i32 %rate)
  %cmp9 = icmp ult i32 %rate, 92000
  %spec.select = select i1 %cmp9, i32 48, i32 96
  %7 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %7, align 4
  %arrayidx18 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %rate, ptr %arrayidx18, align 4
  %10 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 3, ptr %rmh, align 4
  %call19 = call i32 @pcxhr_send_msg(ptr noundef %mgr, ptr noundef nonnull %rmh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then8.if.end23_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8.if.end23_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end23:                                         ; preds = %if.then8.if.end23_crit_edge, %if.end6.if.end23_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ 0, %entry.cleanup_crit_edge ], [ %err.0, %if.end3.cleanup_crit_edge ], [ %call19, %if.then8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %changed) #10
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hr222_sub_set_clock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcxhr_sub_set_clock(ptr noundef %mgr, i32 noundef %rate, ptr noundef %changed) unnamed_addr #0 align 64 {
entry:
  %realfreq.i = alloca i32, align 4
  %pllreg.i = alloca i32, align 4
  %rmh.i = alloca %struct.pcxhr_rmh, align 4
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #10
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %realfreq.i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pllreg.i) #10
  %1 = ptrtoint ptr %pllreg.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pllreg.i, align 4, !annotation !357
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh.i) #10
  %2 = call ptr @memset(ptr %rmh.i, i32 255, i32 104)
  %3 = ptrtoint ptr %realfreq.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %rate, ptr %realfreq.i, align 4
  %use_clock_type.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 20
  %4 = ptrtoint ptr %use_clock_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %use_clock_type.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.pcxhr_get_clock_reg.exit.thread_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %entry.if.end_crit_edge
    i32 2, label %sw.bb24.i
    i32 3, label %sw.bb25.i
    i32 4, label %sw.bb26.i
    i32 5, label %sw.bb27.i
    i32 6, label %sw.bb28.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.pcxhr_get_clock_reg.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pcxhr_get_clock_reg.exit.thread

sw.bb.i:                                          ; preds = %entry
  %7 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %rate, label %sw.default.i [
    i32 48000, label %sw.bb.i.if.end_crit_edge
    i32 24000, label %sw.bb2.i
    i32 12000, label %sw.bb3.i
    i32 32000, label %sw.bb4.i
    i32 16000, label %sw.bb5.i
    i32 8000, label %sw.bb6.i
    i32 44100, label %sw.bb7.i
    i32 22050, label %sw.bb8.i
    i32 11025, label %sw.bb9.i
    i32 192000, label %sw.bb10.i
    i32 96000, label %sw.bb11.i
    i32 176400, label %sw.bb12.i
    i32 88200, label %sw.bb13.i
    i32 128000, label %sw.bb14.i
    i32 64000, label %sw.bb15.i
  ]

sw.bb.i.if.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb2.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb3.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb4.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb5.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb6.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb7.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb8.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb9.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb10.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb11.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb12.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb13.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb14.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb15.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.default.i:                                     ; preds = %sw.bb.i
  %call.i = call fastcc i32 @pcxhr_pll_freq_register(i32 noundef %rate, ptr noundef nonnull %pllreg.i, ptr noundef nonnull %realfreq.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.default.i.pcxhr_get_clock_reg.exit.thread_crit_edge

sw.default.i.pcxhr_get_clock_reg.exit.thread_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pcxhr_get_clock_reg.exit.thread

if.end.i:                                         ; preds = %sw.default.i
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 4) #10
  %cmd.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 4
  %8 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd.i, align 4
  %or.i = or i32 %9, 1
  store i32 %or.i, ptr %cmd.i, align 4
  %10 = ptrtoint ptr %pllreg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pllreg.i, align 4
  %and.i = and i32 %11, 16777215
  %arrayidx17.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and.i, ptr %arrayidx17.i, align 4
  %shr.i = lshr i32 %11, 24
  %arrayidx19.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr.i, ptr %arrayidx19.i, align 4
  %14 = ptrtoint ptr %rmh.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 3, ptr %rmh.i, align 4
  %call20.i = call i32 @pcxhr_send_msg(ptr noundef %mgr, ptr noundef nonnull %rmh.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp.i = icmp slt i32 %call20.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pci.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %15 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10, i32 noundef %call20.i) #13
  br label %pcxhr_get_clock_reg.exit.thread

sw.bb24.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb25.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb26.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb27.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb28.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pcxhr_get_clock_reg.exit.thread:                  ; preds = %do.end.i, %sw.default.i.pcxhr_get_clock_reg.exit.thread_crit_edge, %entry.pcxhr_get_clock_reg.exit.thread_crit_edge
  %retval.0.i112.ph = phi i32 [ -22, %entry.pcxhr_get_clock_reg.exit.thread_crit_edge ], [ %call.i, %sw.default.i.pcxhr_get_clock_reg.exit.thread_crit_edge ], [ %call20.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pllreg.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %realfreq.i) #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb28.i, %sw.bb27.i, %sw.bb26.i, %sw.bb25.i, %sw.bb24.i, %if.end.i.if.end_crit_edge, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i.if.end_crit_edge, %entry.if.end_crit_edge
  %val.0.i = phi i32 [ 13, %sw.bb28.i ], [ 3, %sw.bb27.i ], [ 11, %sw.bb26.i ], [ 7, %sw.bb25.i ], [ 14, %sw.bb24.i ], [ 5, %if.end.i.if.end_crit_edge ], [ 26, %sw.bb15.i ], [ 18, %sw.bb14.i ], [ 28, %sw.bb13.i ], [ 20, %sw.bb12.i ], [ 24, %sw.bb11.i ], [ 16, %sw.bb10.i ], [ 6, %sw.bb9.i ], [ 10, %sw.bb8.i ], [ 2, %sw.bb7.i ], [ 12, %sw.bb6.i ], [ 4, %sw.bb5.i ], [ 8, %sw.bb4.i ], [ 9, %sw.bb3.i ], [ 1, %sw.bb2.i ], [ 0, %sw.bb.i.if.end_crit_edge ], [ 15, %entry.if.end_crit_edge ]
  %17 = ptrtoint ptr %realfreq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %realfreq.i, align 4
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pllreg.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %realfreq.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 55000, i32 %rate)
  %cmp = icmp ult i32 %rate, 55000
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %rate)
  %cmp2 = icmp ult i32 %rate, 100000
  %. = select i1 %cmp2, i32 1, i32 2
  %speed.0 = select i1 %cmp, i32 0, i32 %.
  %codec_speed = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 29
  %19 = ptrtoint ptr %codec_speed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %codec_speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %speed.0)
  %cmp7.not = icmp eq i32 %20, %speed.0
  br i1 %cmp7.not, label %if.end.do.body_crit_edge, label %if.then8

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then8:                                         ; preds = %if.end
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 4) #10
  %cmd = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %21 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cmd, align 4
  %or = or i32 %22, 2
  store i32 %or, ptr %cmd, align 4
  %dsp_version = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 13
  %23 = ptrtoint ptr %dsp_version to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dsp_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 75776, i32 %24)
  %cmp9 = icmp ugt i32 %24, 75776
  br i1 %cmp9, label %if.then10, label %if.then8.if.end13_crit_edge

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx12 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %arrayidx12, align 4
  %26 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2, ptr %rmh, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then8.if.end13_crit_edge
  %call14 = call i32 @pcxhr_send_msg(ptr noundef %mgr, ptr noundef nonnull %rmh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 4) #10
  %27 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cmd, align 4
  %or20 = or i32 %28, 4
  store i32 %or20, ptr %cmd, align 4
  %arrayidx22 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %speed.0, ptr %arrayidx22, align 4
  %30 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 2, ptr %rmh, align 4
  %call24 = call i32 @pcxhr_send_msg(ptr noundef %mgr, ptr noundef nonnull %rmh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end17.do.body_crit_edge, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %if.end17.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_sub_set_clock.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_sub_set_clock, %if.then33)) #10
          to label %do.end [label %if.then33], !srcloc !358

if.then33:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %31 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_sub_set_clock.__UNIQUE_ID_ddebug254, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %val.0.i) #10
  br label %do.end

do.end:                                           ; preds = %if.then33, %do.body
  %call35 = call i32 @pcxhr_write_io_num_reg_cont(ptr noundef %mgr, i32 noundef 31, i32 noundef %val.0.i, ptr noundef %changed) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %do.end
  %sample_rate_real = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 30
  %33 = ptrtoint ptr %sample_rate_real to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %18, ptr %sample_rate_real, align 4
  %34 = ptrtoint ptr %use_clock_type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %use_clock_type.i, align 4
  %cur_clock_type = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 21
  %36 = ptrtoint ptr %cur_clock_type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %cur_clock_type, align 4
  %37 = ptrtoint ptr %codec_speed to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %codec_speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %speed.0)
  %cmp40.not = icmp eq i32 %38, %speed.0
  br i1 %cmp40.not, label %if.end38.do.body58_crit_edge, label %if.then41

if.end38.do.body58_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body58

if.then41:                                        ; preds = %if.end38
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 5) #10
  %cmd42 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %39 = ptrtoint ptr %cmd42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cmd42, align 4
  %or44 = or i32 %40, 2
  store i32 %or44, ptr %cmd42, align 4
  %dsp_version45 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 13
  %41 = ptrtoint ptr %dsp_version45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dsp_version45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 75776, i32 %42)
  %cmp46 = icmp ugt i32 %42, 75776
  br i1 %cmp46, label %if.then47, label %if.then41.if.end51_crit_edge

if.then41.if.end51_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then47:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx49 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %arrayidx49, align 4
  %44 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 2, ptr %rmh, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.then41.if.end51_crit_edge
  %call52 = call i32 @pcxhr_send_msg(ptr noundef %mgr, ptr noundef nonnull %rmh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %codec_speed to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %speed.0, ptr %codec_speed, align 4
  br label %do.body58

do.body58:                                        ; preds = %if.end55, %if.end38.do.body58_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_sub_set_clock.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_sub_set_clock, %if.then70)) #10
          to label %cleanup [label %if.then70], !srcloc !358

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  %pci71 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %46 = ptrtoint ptr %pci71 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pci71, align 4
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_sub_set_clock.__UNIQUE_ID_ddebug255, ptr noundef %dev72, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %rate, i32 noundef %18) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %do.body58, %if.end51.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %pcxhr_get_clock_reg.exit.thread
  %retval.0 = phi i32 [ %call14, %if.end13.cleanup_crit_edge ], [ %call24, %if.end17.cleanup_crit_edge ], [ %call35, %do.end.cleanup_crit_edge ], [ %call52, %if.end51.cleanup_crit_edge ], [ 0, %if.then70 ], [ %retval.0.i112.ph, %pcxhr_get_clock_reg.exit.thread ], [ 0, %do.body58 ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcxhr_init_rmh(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_send_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcxhr_get_external_clock(ptr noundef %mgr, i32 noundef %clock_type, ptr noundef %sample_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %is_hr_stereo = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 18
  %0 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @hr222_get_external_clock(ptr noundef %mgr, i32 noundef %clock_type, ptr noundef %sample_rate) #10
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call fastcc i32 @pcxhr_sub_get_external_clock(ptr noundef %mgr, i32 noundef %clock_type, ptr noundef %sample_rate)
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call1, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hr222_get_external_clock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcxhr_sub_get_external_clock(ptr noundef %mgr, i32 noundef %clock_type, ptr nocapture noundef writeonly %sample_rate) unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #10
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  %switch.tableidx = add i32 %clock_type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 6
  br i1 %1, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.pcxhr_sub_get_external_clock, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 5) #10
  %3 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 2, ptr %rmh, align 4
  %cmd = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd, align 4
  %or = or i32 %5, 5
  store i32 %or, ptr %cmd, align 4
  %last_reg_stat = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 31
  %6 = ptrtoint ptr %last_reg_stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_reg_stat, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %switch.load)
  %cmp.not = icmp eq i32 %7, %switch.load
  br i1 %cmp.not, label %switch.lookup.if.end13_crit_edge, label %if.then

switch.lookup.if.end13_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then:                                          ; preds = %switch.lookup
  %arrayidx9 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %switch.load, ptr %arrayidx9, align 4
  %call = call i32 @pcxhr_send_msg(ptr noundef %mgr, ptr noundef nonnull %rmh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 21474800) #10
  %10 = ptrtoint ptr %last_reg_stat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %switch.load, ptr %last_reg_stat, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end, %switch.lookup.if.end13_crit_edge
  %arrayidx15 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 128, ptr %arrayidx15, align 4
  %call16 = call i32 @pcxhr_send_msg(ptr noundef %mgr, ptr noundef nonnull %rmh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %arrayidx20 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx20, align 4
  %and = and i32 %13, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and)
  %14 = icmp ult i32 %and, 9
  br i1 %14, label %switch.lookup52, label %if.end19.do.body_crit_edge

if.end19.do.body_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

switch.lookup52:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep53 = getelementptr inbounds [9 x i32], ptr @switch.table.pcxhr_sub_get_external_clock.142, i32 0, i32 %and
  %15 = ptrtoint ptr %switch.gep53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load54 = load i32, ptr %switch.gep53, align 4
  br label %do.body

do.body:                                          ; preds = %switch.lookup52, %if.end19.do.body_crit_edge
  %rate.0 = phi i32 [ %switch.load54, %switch.lookup52 ], [ 0, %if.end19.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_sub_get_external_clock.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_sub_get_external_clock, %if.then36)) #10
          to label %do.end [label %if.then36], !srcloc !358

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %16 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_sub_get_external_clock.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %rate.0) #10
  br label %do.end

do.end:                                           ; preds = %if.then36, %do.body
  %18 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %rate.0, ptr %sample_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end13.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call16, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcxhr_create_pcm(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #10
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !357
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #10
  %chip_idx = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 2
  %1 = call ptr @memset(ptr %name, i32 255, i32 32)
  %2 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_idx, align 8
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %3)
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %nb_streams_play = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 8
  %6 = ptrtoint ptr %nb_streams_play to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nb_streams_play, align 8
  %nb_streams_capt = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 9
  %8 = ptrtoint ptr %nb_streams_capt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nb_streams_capt, align 4
  %call2 = call i32 @snd_pcm_new(ptr noundef %5, ptr noundef nonnull %name, i32 noundef 0, i32 noundef %7, i32 noundef %9, ptr noundef nonnull %pcm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %chip, ptr %private_data, align 8
  %17 = ptrtoint ptr %nb_streams_play to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nb_streams_play, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @snd_pcm_set_ops(ptr noundef %15, i32 noundef 0, ptr noundef nonnull @pcxhr_ops) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %19 = ptrtoint ptr %nb_streams_capt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nb_streams_capt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool9.not = icmp eq i32 %20, 0
  br i1 %tobool9.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %22, i32 noundef 1, ptr noundef nonnull @pcxhr_ops) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %23 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcm, align 4
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %info_flags, align 8
  %nonatomic = getelementptr inbounds %struct.snd_pcm, ptr %24, i32 0, i32 14
  %26 = ptrtoint ptr %nonatomic to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %nonatomic, align 1
  %name12 = getelementptr inbounds %struct.snd_pcm, ptr %24, i32 0, i32 7
  %call15 = call ptr @strcpy(ptr noundef %name12, ptr noundef nonnull %name) #14
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 1
  %27 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mgr, align 4
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pci, align 4
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %call17 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %24, i32 noundef 2, ptr noundef %dev16, i32 noundef 32768, i32 noundef 32768) #10
  %31 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcm, align 4
  %pcm18 = getelementptr inbounds %struct.snd_pcxhr, ptr %chip, i32 0, i32 3
  %33 = ptrtoint ptr %pcm18 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %pcm18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_driver_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pcxhr_driver, ptr noundef null, ptr noundef nonnull @.str.6) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcxhr_driver_exit() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @pcxhr_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_write_io_num_reg_cont(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal fastcc i32 @pcxhr_pll_freq_register(i32 noundef %freq, ptr nocapture noundef writeonly %pllreg, ptr noundef writeonly %realfreq) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %freq, -110001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -103101, i32 %0)
  %1 = icmp ult i32 %0, -103101
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = udiv i32 56448000, %freq
  %sub = add nsw i32 %div, -1
  %div241 = lshr i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %sub)
  %cmp3 = icmp ult i32 %sub, 1024
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add = add nuw nsw i32 %div241, 2048
  %2 = ptrtoint ptr %pllreg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %pllreg, align 4
  br label %if.end20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %sub)
  %cmp5 = icmp ult i32 %sub, 2048
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %div241, 511
  %3 = ptrtoint ptr %pllreg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %pllreg, align 4
  br label %if.end20

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp8 = icmp ult i32 %sub, 4096
  br i1 %cmp8, label %if.then9, label %if.else13

if.then9:                                         ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  %shr = lshr i32 %sub, 2
  %and10 = and i32 %shr, 511
  %add11 = or i32 %and10, 512
  %4 = ptrtoint ptr %pllreg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add11, ptr %pllreg, align 4
  %and12 = and i32 %div241, 2147483646
  br label %if.end20

if.else13:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  %shr14 = lshr i32 %sub, 3
  %and15 = and i32 %shr14, 511
  %add16 = or i32 %and15, 1024
  %5 = ptrtoint ptr %pllreg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add16, ptr %pllreg, align 4
  %and17 = and i32 %div241, 2147483644
  br label %if.end20

if.end20:                                         ; preds = %if.else13, %if.then9, %if.then6, %if.then4
  %reg.0 = phi i32 [ %div241, %if.then4 ], [ %div241, %if.then6 ], [ %and12, %if.then9 ], [ %and17, %if.else13 ]
  %tobool.not = icmp eq ptr %realfreq, null
  br i1 %tobool.not, label %if.end20.cleanup_crit_edge, label %if.then21

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then21:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %add22 = add nuw nsw i32 %reg.0, 1
  %div23 = udiv i32 28224000, %add22
  %6 = ptrtoint ptr %realfreq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div23, ptr %realfreq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_open(ptr noundef %subs) #0 align 64 {
entry:
  %external_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr1 = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr1, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %4 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime2, align 4
  %setup_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex, i32 noundef 0) #10
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46
  %6 = call ptr @memcpy(ptr %hw, ptr @pcxhr_caps, i32 64)
  %stream3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 5
  %7 = ptrtoint ptr %stream3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %do.body, label %do.body8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_open.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_open, %if.then6)) #10
          to label %do.end [label %if.then6], !srcloc !358

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %chip_idx = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chip_idx, align 8
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 3
  %15 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_open.__UNIQUE_ID_ddebug264, ptr noundef %12, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef %14, i32 noundef %16) #10
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %number7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 3
  %17 = ptrtoint ptr %number7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %number7, align 4
  %arrayidx = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 6, i32 %18
  br label %if.end36

do.body8:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_open.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_open, %if.then20)) #10
          to label %do.end27 [label %if.then20], !srcloc !358

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %dev22 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev22, align 8
  %chip_idx23 = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %chip_idx23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chip_idx23, align 8
  %number24 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 3
  %25 = ptrtoint ptr %number24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %number24, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_open.__UNIQUE_ID_ddebug265, ptr noundef %22, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef %24, i32 noundef %26) #10
  br label %do.end27

do.end27:                                         ; preds = %if.then20, %do.body8
  %mono_capture = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 18
  %27 = ptrtoint ptr %mono_capture to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %mono_capture, align 4
  %28 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool28.not = icmp eq i8 %28, 0
  br i1 %tobool28.not, label %if.else31, label %if.then29

if.then29:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 6
  %29 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %channels_max, align 8
  br label %if.end33

if.else31:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  %channels_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 5
  %30 = ptrtoint ptr %channels_min to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %channels_min, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then29
  %number34 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 3
  %31 = ptrtoint ptr %number34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %number34, align 4
  %arrayidx35 = getelementptr %struct.snd_pcxhr, ptr %1, i32 0, i32 7, i32 %32
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %do.end
  %stream.0 = phi ptr [ %arrayidx, %do.end ], [ %arrayidx35, %if.end33 ]
  %status = getelementptr inbounds %struct.pcxhr_stream, ptr %stream.0, i32 0, i32 3
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp37.not = icmp eq i32 %34, 0
  br i1 %cmp37.not, label %if.end47, label %do.end41

do.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %dev43 = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev43, align 8
  %chip_idx44 = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %chip_idx44 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chip_idx44, align 8
  %number45 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 3
  %41 = ptrtoint ptr %number45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %number45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.14, i32 noundef %40, i32 noundef %42) #13
  tail call void @mutex_unlock(ptr noundef %setup_mutex) #10
  br label %cleanup86

if.end47:                                         ; preds = %if.end36
  %is_hr_stereo = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 18
  %43 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load48 = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load48)
  %tobool51.not = icmp sgt i8 %bf.load48, -1
  br i1 %tobool51.not, label %if.end47.if.end54_crit_edge, label %if.then52

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  %formats = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 1
  %44 = ptrtoint ptr %formats to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %formats, align 8
  %and = and i64 %45, -16385
  store i64 %and, ptr %formats, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end47.if.end54_crit_edge
  %call55 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %5, i32 noundef 15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %setup_mutex) #10
  br label %cleanup86

if.end59:                                         ; preds = %if.end54
  %sample_rate = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 22
  %46 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sample_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool60.not = icmp eq i32 %47, 0
  br i1 %tobool60.not, label %if.else65, label %if.then61

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 4
  %48 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %rate_max, align 8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 3
  %49 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %47, ptr %rate_min, align 4
  br label %if.end80

if.else65:                                        ; preds = %if.end59
  %use_clock_type = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 20
  %50 = ptrtoint ptr %use_clock_type to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %use_clock_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp66.not = icmp eq i32 %51, 0
  br i1 %cmp66.not, label %if.else65.if.end80_crit_edge, label %if.then67

if.else65.if.end80_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

if.then67:                                        ; preds = %if.else65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %external_rate) #10
  %52 = ptrtoint ptr %external_rate to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %external_rate, align 4, !annotation !357
  %53 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.i = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @hr222_get_external_clock(ptr noundef %3, i32 noundef %51, ptr noundef nonnull %external_rate) #10
  br label %pcxhr_get_external_clock.exit

if.else.i:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call fastcc i32 @pcxhr_sub_get_external_clock(ptr noundef %3, i32 noundef %51, ptr noundef nonnull %external_rate) #10
  br label %pcxhr_get_external_clock.exit

pcxhr_get_external_clock.exit:                    ; preds = %if.else.i, %if.then.i
  %retval.0.i140 = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i140)
  %tobool70.not = icmp eq i32 %retval.0.i140, 0
  br i1 %tobool70.not, label %lor.lhs.false, label %pcxhr_get_external_clock.exit.if.then72_crit_edge

pcxhr_get_external_clock.exit.if.then72_crit_edge: ; preds = %pcxhr_get_external_clock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then72

lor.lhs.false:                                    ; preds = %pcxhr_get_external_clock.exit
  %54 = ptrtoint ptr %external_rate to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %external_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp71 = icmp eq i32 %55, 0
  br i1 %cmp71, label %lor.lhs.false.if.then72_crit_edge, label %if.end74

lor.lhs.false.if.then72_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then72

if.then72:                                        ; preds = %lor.lhs.false.if.then72_crit_edge, %pcxhr_get_external_clock.exit.if.then72_crit_edge
  call void @mutex_unlock(ptr noundef %setup_mutex) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %external_rate) #10
  br label %cleanup86

if.end74:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %rate_min76 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 3
  %56 = ptrtoint ptr %rate_min76 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %rate_min76, align 4
  %rate_max78 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 46, i32 4
  %57 = ptrtoint ptr %rate_max78 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %55, ptr %rate_max78, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %external_rate) #10
  br label %if.end80

if.end80:                                         ; preds = %if.end74, %if.else65.if.end80_crit_edge, %if.then61
  %58 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %status, align 4
  %59 = ptrtoint ptr %stream.0 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %subs, ptr %stream.0, align 8
  %channels = getelementptr inbounds %struct.pcxhr_stream, ptr %stream.0, i32 0, i32 8
  %60 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %channels, align 4
  %private_data82 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %5, i32 0, i32 44
  %61 = ptrtoint ptr %private_data82 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %stream.0, ptr %private_data82, align 8
  %call83 = call i32 @snd_pcm_hw_constraint_step(ptr noundef %5, i32 noundef 0, i32 noundef 17, i32 noundef 32) #10
  %call84 = call i32 @snd_pcm_hw_constraint_step(ptr noundef %5, i32 noundef 0, i32 noundef 13, i32 noundef 32) #10
  call void @snd_pcm_set_sync(ptr noundef %subs) #10
  %ref_count_rate = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 23
  %62 = ptrtoint ptr %ref_count_rate to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ref_count_rate, align 4
  %inc = add i32 %63, 1
  store i32 %inc, ptr %ref_count_rate, align 4
  call void @mutex_unlock(ptr noundef %setup_mutex) #10
  br label %cleanup86

cleanup86:                                        ; preds = %if.end80, %if.then72, %if.then57, %do.end41
  %retval.1 = phi i32 [ -16, %do.end41 ], [ %call55, %if.then57 ], [ 0, %if.end80 ], [ -16, %if.then72 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_close(ptr nocapture noundef readonly %subs) #0 align 64 {
entry:
  %rmh.i = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr1 = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
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
  %setup_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex, i32 noundef 0) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_close.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_close, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %chip_idx = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chip_idx, align 8
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 3
  %14 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_close.__UNIQUE_ID_ddebug266, ptr noundef %11, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef %13, i32 noundef %15) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ref_count_rate = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 23
  %16 = ptrtoint ptr %ref_count_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ref_count_rate, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %ref_count_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then5, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %do.end
  %sample_rate = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 22
  %18 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %sample_rate, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh.i) #10
  %19 = call ptr @memset(ptr %rmh.i, i32 255, i32 104)
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 10) #10
  %call.i = call i32 @pcxhr_send_msg(ptr noundef %3, ptr noundef nonnull %rmh.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then5.pcxhr_hardware_timer.exit_crit_edge

if.then5.pcxhr_hardware_timer.exit_crit_edge:     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %pcxhr_hardware_timer.exit

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %pci.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %call.i) #13
  br label %pcxhr_hardware_timer.exit

pcxhr_hardware_timer.exit:                        ; preds = %do.end.i, %if.then5.pcxhr_hardware_timer.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh.i) #10
  br label %if.end7

if.end7:                                          ; preds = %pcxhr_hardware_timer.exit, %do.end.if.end7_crit_edge
  %status = getelementptr inbounds %struct.pcxhr_stream, ptr %7, i32 0, i32 3
  %22 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %status, align 4
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %7, align 8
  call void @mutex_unlock(ptr noundef %setup_mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_hw_params(ptr nocapture noundef readonly %subs, ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr1 = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
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
  %setup_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex, i32 noundef 0) #10
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %channels = getelementptr inbounds %struct.pcxhr_stream, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %channels, align 4
  %arrayidx.i.i9 = getelementptr %struct.snd_pcm_hw_params, ptr %hw, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %12, %entry.if.then.i.i_crit_edge ], [ %15, %for.inc.i.i.if.then.i.i_crit_edge ]
  %13 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #10, !range !359
  %add.i.i = or i32 %13, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw, i32 0, i32 1, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.1.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %format = getelementptr inbounds %struct.pcxhr_stream, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i.i, ptr %format, align 4
  tail call void @mutex_unlock(ptr noundef %setup_mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_prepare(ptr nocapture noundef readonly %subs) #0 align 64 {
entry:
  %rmh.i = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr1 = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_prepare.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_prepare, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %8 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 16
  %10 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period_size, align 4
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 17
  %12 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %periods, align 8
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 18
  %14 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buffer_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_prepare.__UNIQUE_ID_ddebug263, ptr noundef %7, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, i32 noundef %11, i32 noundef %13, i32 noundef %15) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %setup_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex, i32 noundef 0) #10
  %sample_rate = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 22
  %16 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sample_rate, align 4
  %runtime7 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %18 = ptrtoint ptr %runtime7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %runtime7, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp.not = icmp eq i32 %17, %21
  br i1 %cmp.not, label %do.end.do.end25_crit_edge, label %if.then8

do.end.do.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

if.then8:                                         ; preds = %do.end
  %call11 = tail call i32 @pcxhr_set_clock(ptr noundef %3, i32 noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then8.do.end25_crit_edge

if.then8.do.end25_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

if.end14:                                         ; preds = %if.then8
  %22 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sample_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp16 = icmp eq i32 %23, 0
  br i1 %cmp16, label %if.then17, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh.i) #10
  %24 = call ptr @memset(ptr %rmh.i, i32 255, i32 104)
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh.i, i32 noundef 10) #10
  %dsp_time_last.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 25
  %25 = ptrtoint ptr %dsp_time_last.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 268435456, ptr %dsp_time_last.i, align 4
  %granularity.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %granularity.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %granularity.i, align 4
  %cmd.i = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh.i, i32 0, i32 4
  %28 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cmd.i, align 4
  %or.i = or i32 %29, %27
  store i32 %or.i, ptr %cmd.i, align 4
  %call.i = call i32 @pcxhr_send_msg(ptr noundef %3, ptr noundef nonnull %rmh.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then17.pcxhr_hardware_timer.exit_crit_edge

if.then17.pcxhr_hardware_timer.exit_crit_edge:    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %pcxhr_hardware_timer.exit

do.end.i:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %pci.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pci.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %call.i) #13
  br label %pcxhr_hardware_timer.exit

pcxhr_hardware_timer.exit:                        ; preds = %do.end.i, %if.then17.pcxhr_hardware_timer.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh.i) #10
  br label %if.end19

if.end19:                                         ; preds = %pcxhr_hardware_timer.exit, %if.end14.if.end19_crit_edge
  %err.0 = phi i32 [ %call.i, %pcxhr_hardware_timer.exit ], [ 0, %if.end14.if.end19_crit_edge ]
  %32 = ptrtoint ptr %runtime7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %runtime7, align 4
  %rate21 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %33, i32 0, i32 14
  %34 = ptrtoint ptr %rate21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rate21, align 4
  %36 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %sample_rate, align 4
  br label %do.end25

do.end25:                                         ; preds = %if.end19, %if.then8.do.end25_crit_edge, %do.end.do.end25_crit_edge
  %err.1 = phi i32 [ %call11, %if.then8.do.end25_crit_edge ], [ %err.0, %if.end19 ], [ 0, %do.end.do.end25_crit_edge ]
  call void @mutex_unlock(ptr noundef %setup_mutex) #10
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_trigger(ptr noundef %subs, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %do.body
    i32 0, label %do.body59
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_trigger.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_trigger, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_trigger.__UNIQUE_ID_ddebug260, ptr noundef %6, ptr noundef nonnull @.str.25) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %group.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 18
  %7 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %group.i, align 4
  %self_group.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 17
  %cmp.i.not = icmp eq ptr %8, %self_group.i
  br i1 %cmp.i.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  %substreams = getelementptr inbounds %struct.snd_pcm_group, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn139155 = load ptr, ptr %substreams, align 4
  %10 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %group.i, align 4
  %substreams8156 = getelementptr inbounds %struct.snd_pcm_group, ptr %11, i32 0, i32 2
  %cmp.not157 = icmp eq ptr %.pn139155, %substreams8156
  br i1 %cmp.not157, label %if.then5.for.end_crit_edge, label %if.then5.for.body_crit_edge

if.then5.for.body_crit_edge:                      ; preds = %if.then5
  br label %for.body

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then5.for.body_crit_edge
  %.pn139158 = phi ptr [ %.pn139, %for.inc.for.body_crit_edge ], [ %.pn139155, %if.then5.for.body_crit_edge ]
  %private_data11 = getelementptr i8, ptr %.pn139158, i32 -132
  %12 = ptrtoint ptr %private_data11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data11, align 4
  %cmp12.not = icmp eq ptr %13, %1
  br i1 %cmp12.not, label %if.end14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end14:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %runtime = getelementptr i8, ptr %.pn139158, i32 -20
  %14 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime, align 4
  %private_data15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 44
  %16 = ptrtoint ptr %private_data15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data15, align 8
  %status = getelementptr inbounds %struct.pcxhr_stream, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %status, align 4
  %19 = load ptr, ptr %runtime, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %subs, ptr %19, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %.pn139158 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn139 = load ptr, ptr %.pn139158, align 4
  %22 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %group.i, align 4
  %substreams8 = getelementptr inbounds %struct.snd_pcm_group, ptr %23, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn139, %substreams8
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then5.for.end_crit_edge
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mgr, align 4
  tail call fastcc void @pcxhr_start_linked_stream(ptr noundef %25)
  br label %cleanup

if.else:                                          ; preds = %do.end
  %runtime21 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 11
  %26 = ptrtoint ptr %runtime21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %runtime21, align 4
  %private_data22 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %private_data22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %private_data22, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_trigger.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_trigger, %if.then35)) #10
          to label %do.end42 [label %if.then35], !srcloc !358

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %dev37 = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev37, align 8
  %pipe = getelementptr inbounds %struct.pcxhr_stream, ptr %29, i32 0, i32 2
  %34 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pipe, align 8
  %is_capture = getelementptr inbounds %struct.pcxhr_pipe, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %is_capture to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %is_capture, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool38.not = icmp eq i32 %37, 0
  %cond = select i1 %tobool38.not, i32 80, i32 67
  %first_audio = getelementptr inbounds %struct.pcxhr_pipe, ptr %35, i32 0, i32 2
  %38 = ptrtoint ptr %first_audio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %first_audio, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_trigger.__UNIQUE_ID_ddebug261, ptr noundef %33, ptr noundef nonnull @.str.26, i32 noundef %cond, i32 noundef %39) #10
  br label %do.end42

do.end42:                                         ; preds = %if.then35, %if.else
  %call43 = tail call fastcc i32 @pcxhr_set_format(ptr noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %do.end42.cleanup_crit_edge

do.end42.cleanup_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end46:                                         ; preds = %do.end42
  %call47 = tail call fastcc i32 @pcxhr_update_r_buffer(ptr noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %status51 = getelementptr inbounds %struct.pcxhr_stream, ptr %29, i32 0, i32 3
  %40 = ptrtoint ptr %status51 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %status51, align 4
  %call52 = tail call fastcc i32 @pcxhr_set_stream_state(ptr noundef %1, ptr noundef %29)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %status51 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %status51, align 4
  br label %cleanup

do.body59:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_trigger.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_trigger, %if.then71)) #10
          to label %do.end76 [label %if.then71], !srcloc !358

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %dev73 = getelementptr inbounds %struct.snd_card, ptr %43, i32 0, i32 27
  %44 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev73, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_trigger.__UNIQUE_ID_ddebug262, ptr noundef %45, ptr noundef nonnull @.str.27) #10
  br label %do.end76

do.end76:                                         ; preds = %if.then71, %do.body59
  %group78 = getelementptr inbounds %struct.snd_pcm_substream, ptr %subs, i32 0, i32 18
  %46 = ptrtoint ptr %group78 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %group78, align 4
  %substreams79 = getelementptr inbounds %struct.snd_pcm_group, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %substreams79 to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn150 = load ptr, ptr %substreams79, align 4
  %cmp87.not152 = icmp eq ptr %.pn150, %substreams79
  br i1 %cmp87.not152, label %do.end76.cleanup_crit_edge, label %do.end76.for.body90_crit_edge

do.end76.for.body90_crit_edge:                    ; preds = %do.end76
  br label %for.body90

do.end76.cleanup_crit_edge:                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body90:                                       ; preds = %if.end97.for.body90_crit_edge, %do.end76.for.body90_crit_edge
  %.pn153 = phi ptr [ %.pn, %if.end97.for.body90_crit_edge ], [ %.pn150, %do.end76.for.body90_crit_edge ]
  %runtime91 = getelementptr i8, ptr %.pn153, i32 -20
  %49 = ptrtoint ptr %runtime91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %runtime91, align 4
  %private_data92 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %50, i32 0, i32 44
  %51 = ptrtoint ptr %private_data92 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %private_data92, align 8
  %status93 = getelementptr inbounds %struct.pcxhr_stream, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %status93 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 5, ptr %status93, align 4
  %call94 = tail call fastcc i32 @pcxhr_set_stream_state(ptr noundef %1, ptr noundef %52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %for.body90.cleanup_crit_edge

for.body90.cleanup_crit_edge:                     ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end97:                                         ; preds = %for.body90
  %54 = ptrtoint ptr %runtime91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %runtime91, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %subs, ptr %55, align 8
  %57 = ptrtoint ptr %.pn153 to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn = load ptr, ptr %.pn153, align 4
  %58 = ptrtoint ptr %group78 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %group78, align 4
  %substreams86 = getelementptr inbounds %struct.snd_pcm_group, ptr %59, i32 0, i32 2
  %cmp87.not = icmp eq ptr %.pn, %substreams86
  br i1 %cmp87.not, label %if.end97.cleanup_crit_edge, label %if.end97.for.body90_crit_edge

if.end97.for.body90_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body90

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end97.cleanup_crit_edge, %for.body90.cleanup_crit_edge, %do.end76.cleanup_crit_edge, %if.end55, %if.end50.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %do.end42.cleanup_crit_edge, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end42.cleanup_crit_edge ], [ -22, %if.end46.cleanup_crit_edge ], [ -22, %if.end50.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.end ], [ 0, %if.end55 ], [ 0, %do.end76.cleanup_crit_edge ], [ -22, %for.body90.cleanup_crit_edge ], [ 0, %if.end97.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_stream_pointer(ptr nocapture noundef readonly %subs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mgr, align 4
  %lock = getelementptr inbounds %struct.pcxhr_mgr, ptr %7, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %timer_period_frag3 = getelementptr inbounds %struct.pcxhr_stream, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %timer_period_frag3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timer_period_frag3, align 8
  %timer_buf_periods4 = getelementptr inbounds %struct.pcxhr_stream, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %timer_buf_periods4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timer_buf_periods4, align 4
  %12 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mgr, align 4
  %lock6 = getelementptr inbounds %struct.pcxhr_mgr, ptr %13, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %lock6) #10
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %period_size, align 4
  %mul = mul i32 %15, %11
  %add = add i32 %mul, %9
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcxhr_start_linked_stream(ptr noundef %mgr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #10
  %setup_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %setup_mutex, i32 noundef 0) #10
  %0 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mgr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp366.not = icmp eq i32 %1, 0
  br i1 %cmp366.not, label %entry.for.end23_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23

for.body:                                         ; preds = %for.inc21.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0370 = phi i32 [ %inc22, %for.inc21.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %playback_mask.0369 = phi i32 [ %playback_mask.1, %for.inc21.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %capture_mask.0368 = phi i32 [ %capture_mask.1.lcssa, %for.inc21.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 1, i32 %i.0370
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %nb_streams_capt = getelementptr inbounds %struct.snd_pcxhr, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %nb_streams_capt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nb_streams_capt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3358 = icmp sgt i32 %5, 0
  br i1 %cmp3358, label %for.body.for.body4_crit_edge, label %for.body.for.cond7.preheader_crit_edge

for.body.for.cond7.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.cond7.preheader:                              ; preds = %for.inc.for.cond7.preheader_crit_edge, %for.body.for.cond7.preheader_crit_edge
  %capture_mask.1.lcssa = phi i32 [ %capture_mask.0368, %for.body.for.cond7.preheader_crit_edge ], [ %capture_mask.2, %for.inc.for.cond7.preheader_crit_edge ]
  %nb_streams_play = getelementptr inbounds %struct.snd_pcxhr, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %nb_streams_play to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nb_streams_play, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8364 = icmp sgt i32 %7, 0
  br i1 %cmp8364, label %for.cond7.preheader.for.body9_crit_edge, label %for.cond7.preheader.for.inc21_crit_edge

for.cond7.preheader.for.inc21_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21

for.cond7.preheader.for.body9_crit_edge:          ; preds = %for.cond7.preheader
  br label %for.body9

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %j.0361 = phi i32 [ %inc, %for.inc.for.body4_crit_edge ], [ 0, %for.body.for.body4_crit_edge ]
  %capture_mask.1360 = phi i32 [ %capture_mask.2, %for.inc.for.body4_crit_edge ], [ %capture_mask.0368, %for.body.for.body4_crit_edge ]
  %status.i = getelementptr %struct.snd_pcxhr, ptr %3, i32 0, i32 7, i32 %j.0361, i32 3
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp eq i32 %9, 2
  br i1 %cmp.i, label %if.then, label %for.body4.for.inc_crit_edge

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #12
  %pipe1.i = getelementptr %struct.snd_pcxhr, ptr %3, i32 0, i32 7, i32 %j.0361, i32 2
  %10 = ptrtoint ptr %pipe1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pipe1.i, align 8
  %first_audio = getelementptr inbounds %struct.pcxhr_pipe, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %first_audio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %first_audio, align 4
  %shl = shl nuw i32 1, %13
  %or = or i32 %shl, %capture_mask.1360
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body4.for.inc_crit_edge
  %capture_mask.2 = phi i32 [ %or, %if.then ], [ %capture_mask.1360, %for.body4.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %j.0361, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.cond7.preheader_crit_edge, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body4

for.inc.for.cond7.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond7.preheader

for.body9:                                        ; preds = %for.inc18.for.body9_crit_edge, %for.cond7.preheader.for.body9_crit_edge
  %j.1365 = phi i32 [ %inc19, %for.inc18.for.body9_crit_edge ], [ 0, %for.cond7.preheader.for.body9_crit_edge ]
  %status.i308 = getelementptr %struct.snd_pcxhr, ptr %3, i32 0, i32 6, i32 %j.1365, i32 3
  %14 = ptrtoint ptr %status.i308 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status.i308, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.i309 = icmp eq i32 %15, 2
  br i1 %cmp.i309, label %if.then13, label %for.inc18

if.then13:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #12
  %pipe1.i310 = getelementptr %struct.snd_pcxhr, ptr %3, i32 0, i32 6, i32 %j.1365, i32 2
  %16 = ptrtoint ptr %pipe1.i310 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pipe1.i310, align 8
  %first_audio14 = getelementptr inbounds %struct.pcxhr_pipe, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %first_audio14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %first_audio14, align 4
  %shl15 = shl nuw i32 1, %19
  %or16 = or i32 %shl15, %playback_mask.0369
  br label %for.inc21

for.inc18:                                        ; preds = %for.body9
  %inc19 = add nuw nsw i32 %j.1365, 1
  %exitcond397.not = icmp eq i32 %inc19, %7
  br i1 %exitcond397.not, label %for.inc18.for.inc21_crit_edge, label %for.inc18.for.body9_crit_edge

for.inc18.for.body9_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body9

for.inc18.for.inc21_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21

for.inc21:                                        ; preds = %for.inc18.for.inc21_crit_edge, %if.then13, %for.cond7.preheader.for.inc21_crit_edge
  %playback_mask.1 = phi i32 [ %or16, %if.then13 ], [ %playback_mask.0369, %for.cond7.preheader.for.inc21_crit_edge ], [ %playback_mask.0369, %for.inc18.for.inc21_crit_edge ]
  %inc22 = add nuw i32 %i.0370, 1
  %exitcond398.not = icmp eq i32 %inc22, %1
  br i1 %exitcond398.not, label %for.inc21.for.end23_crit_edge, label %for.inc21.for.body_crit_edge

for.inc21.for.body_crit_edge:                     ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc21.for.end23_crit_edge:                    ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23

for.end23:                                        ; preds = %for.inc21.for.end23_crit_edge, %entry.for.end23_crit_edge
  %capture_mask.0.lcssa = phi i32 [ 0, %entry.for.end23_crit_edge ], [ %capture_mask.1.lcssa, %for.inc21.for.end23_crit_edge ]
  %playback_mask.0.lcssa = phi i32 [ 0, %entry.for.end23_crit_edge ], [ %playback_mask.1, %for.inc21.for.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %capture_mask.0.lcssa)
  %cmp24 = icmp eq i32 %capture_mask.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %playback_mask.0.lcssa)
  %cmp25 = icmp eq i32 %playback_mask.0.lcssa, 0
  %or.cond = select i1 %cmp24, i1 %cmp25, i1 false
  br i1 %or.cond, label %if.then26, label %do.body29

if.then26:                                        ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %setup_mutex) #10
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %20 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #13
  br label %cleanup

do.body29:                                        ; preds = %for.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_start_linked_stream.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_start_linked_stream, %if.then34)) #10
          to label %do.end39 [label %if.then34], !srcloc !358

if.then34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #12
  %pci35 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %22 = ptrtoint ptr %pci35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci35, align 4
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_start_linked_stream.__UNIQUE_ID_ddebug258, ptr noundef %dev36, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef %playback_mask.0.lcssa, i32 noundef %capture_mask.0.lcssa) #10
  br label %do.end39

do.end39:                                         ; preds = %if.then34, %do.body29
  %call40 = tail call i32 @pcxhr_set_pipe_state(ptr noundef %mgr, i32 noundef %playback_mask.0.lcssa, i32 noundef %capture_mask.0.lcssa, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %for.cond50.preheader, label %if.then42

for.cond50.preheader:                             ; preds = %do.end39
  %24 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mgr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp52379.not = icmp eq i32 %25, 0
  br i1 %cmp52379.not, label %for.cond50.preheader.for.end126_crit_edge, label %for.cond50.preheader.for.body53_crit_edge

for.cond50.preheader.for.body53_crit_edge:        ; preds = %for.cond50.preheader
  br label %for.body53

for.cond50.preheader.for.end126_crit_edge:        ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end126

if.then42:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %setup_mutex) #10
  %pci47 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %26 = ptrtoint ptr %pci47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pci47, align 4
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.29, i32 noundef %playback_mask.0.lcssa, i32 noundef %capture_mask.0.lcssa) #13
  br label %cleanup

for.cond89.preheader:                             ; preds = %for.end85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp91387.not = icmp eq i32 %43, 0
  br i1 %cmp91387.not, label %for.cond89.preheader.for.end126_crit_edge, label %for.cond89.preheader.for.body92_crit_edge

for.cond89.preheader.for.body92_crit_edge:        ; preds = %for.cond89.preheader
  br label %for.body92

for.cond89.preheader.for.end126_crit_edge:        ; preds = %for.cond89.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end126

for.body53:                                       ; preds = %for.end85.for.body53_crit_edge, %for.cond50.preheader.for.body53_crit_edge
  %i.1380 = phi i32 [ %inc87, %for.end85.for.body53_crit_edge ], [ 0, %for.cond50.preheader.for.body53_crit_edge ]
  %arrayidx55 = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 1, i32 %i.1380
  %28 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx55, align 4
  %nb_streams_capt57 = getelementptr inbounds %struct.snd_pcxhr, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %nb_streams_capt57 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nb_streams_capt57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp58373 = icmp sgt i32 %31, 0
  br i1 %cmp58373, label %for.body53.for.body59_crit_edge, label %for.body53.for.cond71.preheader_crit_edge

for.body53.for.cond71.preheader_crit_edge:        ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond71.preheader

for.body53.for.body59_crit_edge:                  ; preds = %for.body53
  br label %for.body59

for.cond71.preheader:                             ; preds = %for.inc68.for.cond71.preheader_crit_edge, %for.body53.for.cond71.preheader_crit_edge
  %nb_streams_play72 = getelementptr inbounds %struct.snd_pcxhr, ptr %29, i32 0, i32 8
  %32 = ptrtoint ptr %nb_streams_play72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nb_streams_play72, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp73376 = icmp sgt i32 %33, 0
  br i1 %cmp73376, label %for.cond71.preheader.for.body74_crit_edge, label %for.cond71.preheader.for.end85_crit_edge

for.cond71.preheader.for.end85_crit_edge:         ; preds = %for.cond71.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end85

for.cond71.preheader.for.body74_crit_edge:        ; preds = %for.cond71.preheader
  br label %for.body74

for.body59:                                       ; preds = %for.inc68.for.body59_crit_edge, %for.body53.for.body59_crit_edge
  %j.2374 = phi i32 [ %inc69, %for.inc68.for.body59_crit_edge ], [ 0, %for.body53.for.body59_crit_edge ]
  %status.i314 = getelementptr %struct.snd_pcxhr, ptr %29, i32 0, i32 7, i32 %j.2374, i32 3
  %34 = ptrtoint ptr %status.i314 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status.i314, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp.i315 = icmp eq i32 %35, 2
  br i1 %cmp.i315, label %if.then64, label %for.body59.for.inc68_crit_edge

for.body59.for.inc68_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc68

if.then64:                                        ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx61 = getelementptr %struct.snd_pcxhr, ptr %29, i32 0, i32 7, i32 %j.2374
  %call65 = tail call fastcc i32 @pcxhr_set_format(ptr noundef %arrayidx61)
  %call66 = tail call fastcc i32 @pcxhr_update_r_buffer(ptr noundef %arrayidx61)
  br label %for.inc68

for.inc68:                                        ; preds = %if.then64, %for.body59.for.inc68_crit_edge
  %inc69 = add nuw nsw i32 %j.2374, 1
  %36 = ptrtoint ptr %nb_streams_capt57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nb_streams_capt57, align 4
  %cmp58 = icmp slt i32 %inc69, %37
  br i1 %cmp58, label %for.inc68.for.body59_crit_edge, label %for.inc68.for.cond71.preheader_crit_edge

for.inc68.for.cond71.preheader_crit_edge:         ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond71.preheader

for.inc68.for.body59_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body59

for.body74:                                       ; preds = %for.inc83.for.body74_crit_edge, %for.cond71.preheader.for.body74_crit_edge
  %j.3377 = phi i32 [ %inc84, %for.inc83.for.body74_crit_edge ], [ 0, %for.cond71.preheader.for.body74_crit_edge ]
  %status.i320 = getelementptr %struct.snd_pcxhr, ptr %29, i32 0, i32 6, i32 %j.3377, i32 3
  %38 = ptrtoint ptr %status.i320 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %status.i320, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp.i321 = icmp eq i32 %39, 2
  br i1 %cmp.i321, label %if.then79, label %for.body74.for.inc83_crit_edge

for.body74.for.inc83_crit_edge:                   ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc83

if.then79:                                        ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx76 = getelementptr %struct.snd_pcxhr, ptr %29, i32 0, i32 6, i32 %j.3377
  %call80 = tail call fastcc i32 @pcxhr_set_format(ptr noundef %arrayidx76)
  %call81 = tail call fastcc i32 @pcxhr_update_r_buffer(ptr noundef %arrayidx76)
  br label %for.inc83

for.inc83:                                        ; preds = %if.then79, %for.body74.for.inc83_crit_edge
  %inc84 = add nuw nsw i32 %j.3377, 1
  %40 = ptrtoint ptr %nb_streams_play72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nb_streams_play72, align 8
  %cmp73 = icmp slt i32 %inc84, %41
  br i1 %cmp73, label %for.inc83.for.body74_crit_edge, label %for.inc83.for.end85_crit_edge

for.inc83.for.end85_crit_edge:                    ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end85

for.inc83.for.body74_crit_edge:                   ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body74

for.end85:                                        ; preds = %for.inc83.for.end85_crit_edge, %for.cond71.preheader.for.end85_crit_edge
  %inc87 = add nuw i32 %i.1380, 1
  %42 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mgr, align 4
  %cmp52 = icmp ult i32 %inc87, %43
  br i1 %cmp52, label %for.end85.for.body53_crit_edge, label %for.cond89.preheader

for.end85.for.body53_crit_edge:                   ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body53

for.body92:                                       ; preds = %for.end123.for.body92_crit_edge, %for.cond89.preheader.for.body92_crit_edge
  %i.2388 = phi i32 [ %inc125, %for.end123.for.body92_crit_edge ], [ 0, %for.cond89.preheader.for.body92_crit_edge ]
  %arrayidx95 = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 1, i32 %i.2388
  %44 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx95, align 4
  %nb_streams_capt97 = getelementptr inbounds %struct.snd_pcxhr, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %nb_streams_capt97 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nb_streams_capt97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp98381 = icmp sgt i32 %47, 0
  br i1 %cmp98381, label %for.body92.for.body99_crit_edge, label %for.body92.for.cond110.preheader_crit_edge

for.body92.for.cond110.preheader_crit_edge:       ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond110.preheader

for.body92.for.body99_crit_edge:                  ; preds = %for.body92
  br label %for.body99

for.cond110.preheader:                            ; preds = %for.inc107.for.cond110.preheader_crit_edge, %for.body92.for.cond110.preheader_crit_edge
  %nb_streams_play111 = getelementptr inbounds %struct.snd_pcxhr, ptr %45, i32 0, i32 8
  %48 = ptrtoint ptr %nb_streams_play111 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nb_streams_play111, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp112384 = icmp sgt i32 %49, 0
  br i1 %cmp112384, label %for.cond110.preheader.for.body113_crit_edge, label %for.cond110.preheader.for.end123_crit_edge

for.cond110.preheader.for.end123_crit_edge:       ; preds = %for.cond110.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end123

for.cond110.preheader.for.body113_crit_edge:      ; preds = %for.cond110.preheader
  br label %for.body113

for.body99:                                       ; preds = %for.inc107.for.body99_crit_edge, %for.body92.for.body99_crit_edge
  %j.4382 = phi i32 [ %inc108, %for.inc107.for.body99_crit_edge ], [ 0, %for.body92.for.body99_crit_edge ]
  %status.i326 = getelementptr %struct.snd_pcxhr, ptr %45, i32 0, i32 7, i32 %j.4382, i32 3
  %50 = ptrtoint ptr %status.i326 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %status.i326, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp.i327 = icmp eq i32 %51, 2
  br i1 %cmp.i327, label %if.then104, label %for.body99.for.inc107_crit_edge

for.body99.for.inc107_crit_edge:                  ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc107

if.then104:                                       ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx101 = getelementptr %struct.snd_pcxhr, ptr %45, i32 0, i32 7, i32 %j.4382
  %call105 = tail call fastcc i32 @pcxhr_set_stream_state(ptr noundef %45, ptr noundef %arrayidx101)
  br label %for.inc107

for.inc107:                                       ; preds = %if.then104, %for.body99.for.inc107_crit_edge
  %inc108 = add nuw nsw i32 %j.4382, 1
  %52 = ptrtoint ptr %nb_streams_capt97 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nb_streams_capt97, align 4
  %cmp98 = icmp slt i32 %inc108, %53
  br i1 %cmp98, label %for.inc107.for.body99_crit_edge, label %for.inc107.for.cond110.preheader_crit_edge

for.inc107.for.cond110.preheader_crit_edge:       ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond110.preheader

for.inc107.for.body99_crit_edge:                  ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body99

for.body113:                                      ; preds = %for.inc121.for.body113_crit_edge, %for.cond110.preheader.for.body113_crit_edge
  %j.5385 = phi i32 [ %inc122, %for.inc121.for.body113_crit_edge ], [ 0, %for.cond110.preheader.for.body113_crit_edge ]
  %status.i332 = getelementptr %struct.snd_pcxhr, ptr %45, i32 0, i32 6, i32 %j.5385, i32 3
  %54 = ptrtoint ptr %status.i332 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %status.i332, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp.i333 = icmp eq i32 %55, 2
  br i1 %cmp.i333, label %if.then118, label %for.body113.for.inc121_crit_edge

for.body113.for.inc121_crit_edge:                 ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc121

if.then118:                                       ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx115 = getelementptr %struct.snd_pcxhr, ptr %45, i32 0, i32 6, i32 %j.5385
  %call119 = tail call fastcc i32 @pcxhr_set_stream_state(ptr noundef %45, ptr noundef %arrayidx115)
  br label %for.inc121

for.inc121:                                       ; preds = %if.then118, %for.body113.for.inc121_crit_edge
  %inc122 = add nuw nsw i32 %j.5385, 1
  %56 = ptrtoint ptr %nb_streams_play111 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nb_streams_play111, align 8
  %cmp112 = icmp slt i32 %inc122, %57
  br i1 %cmp112, label %for.inc121.for.body113_crit_edge, label %for.inc121.for.end123_crit_edge

for.inc121.for.end123_crit_edge:                  ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end123

for.inc121.for.body113_crit_edge:                 ; preds = %for.inc121
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body113

for.end123:                                       ; preds = %for.inc121.for.end123_crit_edge, %for.cond110.preheader.for.end123_crit_edge
  %inc125 = add nuw i32 %i.2388, 1
  %58 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mgr, align 4
  %cmp91 = icmp ult i32 %inc125, %59
  br i1 %cmp91, label %for.end123.for.body92_crit_edge, label %for.end123.for.end126_crit_edge

for.end123.for.end126_crit_edge:                  ; preds = %for.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end126

for.end123.for.body92_crit_edge:                  ; preds = %for.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body92

for.end126:                                       ; preds = %for.end123.for.end126_crit_edge, %for.cond89.preheader.for.end126_crit_edge, %for.cond50.preheader.for.end126_crit_edge
  %call127 = tail call i32 @pcxhr_set_pipe_state(ptr noundef %mgr, i32 noundef %playback_mask.0.lcssa, i32 noundef %capture_mask.0.lcssa, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end136, label %if.then129

if.then129:                                       ; preds = %for.end126
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %setup_mutex) #10
  %pci134 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %60 = ptrtoint ptr %pci134 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pci134, align 4
  %dev135 = getelementptr inbounds %struct.pci_dev, ptr %61, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev135, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.29, i32 noundef %playback_mask.0.lcssa, i32 noundef %capture_mask.0.lcssa) #13
  br label %cleanup

if.end136:                                        ; preds = %for.end126
  %lock = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %62 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mgr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp139394.not = icmp eq i32 %63, 0
  br i1 %cmp139394.not, label %if.end136.for.end173_crit_edge, label %for.body140.lr.ph

if.end136.for.end173_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end173

for.body140.lr.ph:                                ; preds = %if.end136
  %granularity = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 4
  br label %for.body140

for.body140:                                      ; preds = %for.end170.for.body140_crit_edge, %for.body140.lr.ph
  %i.3395 = phi i32 [ 0, %for.body140.lr.ph ], [ %inc172, %for.end170.for.body140_crit_edge ]
  %arrayidx143 = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 1, i32 %i.3395
  %64 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx143, align 4
  %nb_streams_capt145 = getelementptr inbounds %struct.snd_pcxhr, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %nb_streams_capt145 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nb_streams_capt145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp146389 = icmp sgt i32 %67, 0
  br i1 %cmp146389, label %for.body140.for.body147_crit_edge, label %for.body140.for.cond157.preheader_crit_edge

for.body140.for.cond157.preheader_crit_edge:      ; preds = %for.body140
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond157.preheader

for.body140.for.body147_crit_edge:                ; preds = %for.body140
  br label %for.body147

for.cond157.preheader:                            ; preds = %for.inc154.for.cond157.preheader_crit_edge, %for.body140.for.cond157.preheader_crit_edge
  %nb_streams_play158 = getelementptr inbounds %struct.snd_pcxhr, ptr %65, i32 0, i32 8
  %68 = ptrtoint ptr %nb_streams_play158 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nb_streams_play158, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp159391 = icmp sgt i32 %69, 0
  br i1 %cmp159391, label %for.cond157.preheader.for.body160_crit_edge, label %for.cond157.preheader.for.end170_crit_edge

for.cond157.preheader.for.end170_crit_edge:       ; preds = %for.cond157.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end170

for.cond157.preheader.for.body160_crit_edge:      ; preds = %for.cond157.preheader
  br label %for.body160

for.body147:                                      ; preds = %for.inc154.for.body147_crit_edge, %for.body140.for.body147_crit_edge
  %j.6390 = phi i32 [ %inc155, %for.inc154.for.body147_crit_edge ], [ 0, %for.body140.for.body147_crit_edge ]
  %status = getelementptr %struct.snd_pcxhr, ptr %65, i32 0, i32 7, i32 %j.6390, i32 3
  %70 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %71)
  %cmp150 = icmp eq i32 %71, 3
  br i1 %cmp150, label %if.then151, label %for.body147.for.inc154_crit_edge

for.body147.for.inc154_crit_edge:                 ; preds = %for.body147
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc154

if.then151:                                       ; preds = %for.body147
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 4, ptr %status, align 4
  br label %for.inc154

for.inc154:                                       ; preds = %if.then151, %for.body147.for.inc154_crit_edge
  %inc155 = add nuw nsw i32 %j.6390, 1
  %73 = ptrtoint ptr %nb_streams_capt145 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nb_streams_capt145, align 4
  %cmp146 = icmp slt i32 %inc155, %74
  br i1 %cmp146, label %for.inc154.for.body147_crit_edge, label %for.inc154.for.cond157.preheader_crit_edge

for.inc154.for.cond157.preheader_crit_edge:       ; preds = %for.inc154
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond157.preheader

for.inc154.for.body147_crit_edge:                 ; preds = %for.inc154
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body147

for.body160:                                      ; preds = %for.inc168.for.body160_crit_edge, %for.cond157.preheader.for.body160_crit_edge
  %j.7392 = phi i32 [ %inc169, %for.inc168.for.body160_crit_edge ], [ 0, %for.cond157.preheader.for.body160_crit_edge ]
  %status163 = getelementptr %struct.snd_pcxhr, ptr %65, i32 0, i32 6, i32 %j.7392, i32 3
  %75 = ptrtoint ptr %status163 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %status163, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %cmp164 = icmp eq i32 %76, 3
  br i1 %cmp164, label %if.then165, label %for.body160.for.inc168_crit_edge

for.body160.for.inc168_crit_edge:                 ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc168

if.then165:                                       ; preds = %for.body160
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %granularity to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %granularity, align 4
  %timer_period_frag = getelementptr %struct.snd_pcxhr, ptr %65, i32 0, i32 6, i32 %j.7392, i32 5
  %79 = ptrtoint ptr %timer_period_frag to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %timer_period_frag, align 8
  %add = add i32 %80, %78
  store i32 %add, ptr %timer_period_frag, align 8
  %81 = ptrtoint ptr %status163 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 4, ptr %status163, align 4
  br label %for.inc168

for.inc168:                                       ; preds = %if.then165, %for.body160.for.inc168_crit_edge
  %inc169 = add nuw nsw i32 %j.7392, 1
  %82 = ptrtoint ptr %nb_streams_play158 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nb_streams_play158, align 8
  %cmp159 = icmp slt i32 %inc169, %83
  br i1 %cmp159, label %for.inc168.for.body160_crit_edge, label %for.inc168.for.end170_crit_edge

for.inc168.for.end170_crit_edge:                  ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end170

for.inc168.for.body160_crit_edge:                 ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body160

for.end170:                                       ; preds = %for.inc168.for.end170_crit_edge, %for.cond157.preheader.for.end170_crit_edge
  %inc172 = add nuw i32 %i.3395, 1
  %84 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mgr, align 4
  %cmp139 = icmp ult i32 %inc172, %85
  br i1 %cmp139, label %for.end170.for.body140_crit_edge, label %for.end170.for.end173_crit_edge

for.end170.for.end173_crit_edge:                  ; preds = %for.end170
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end173

for.end170.for.body140_crit_edge:                 ; preds = %for.end170
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body140

for.end173:                                       ; preds = %for.end170.for.end173_crit_edge, %if.end136.for.end173_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  tail call void @mutex_unlock(ptr noundef %setup_mutex) #10
  %call176 = tail call i64 @ktime_get() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_start_linked_stream.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_start_linked_stream, %if.then189)) #10
          to label %cleanup [label %if.then189], !srcloc !358

if.then189:                                       ; preds = %for.end173
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i64 %call176, %call
  %pci190 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %86 = ptrtoint ptr %pci190 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pci190, align 4
  %dev191 = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %conv = trunc i64 %sub to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_start_linked_stream.__UNIQUE_ID_ddebug259, ptr noundef %dev191, ptr noundef nonnull @.str.37, i32 noundef %conv, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then189, %for.end173, %if.then129, %if.then42, %if.then26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcxhr_set_format(ptr nocapture noundef readonly %stream) unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #10
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  %1 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stream, align 8
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %format = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 1
  %5 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %format, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %6, label %do.end [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 32, label %sw.bb3
    i32 33, label %sw.bb4
    i32 14, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %4, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %header.0 = phi i32 [ -86999040, %sw.bb5 ], [ -19906560, %sw.bb4 ], [ -19873792, %sw.bb3 ], [ -19914752, %sw.bb2 ], [ -19881984, %sw.bb1 ], [ -19922944, %entry.sw.epilog_crit_edge ]
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mgr, align 4
  %sample_rate6 = getelementptr inbounds %struct.pcxhr_mgr, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %sample_rate6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sample_rate6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %15)
  %cmp = icmp sgt i32 %15, 32000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp7.not = icmp eq i32 %15, 0
  %or.cond = or i1 %cmp, %cmp7.not
  br i1 %or.cond, label %sw.epilog.if.end11_crit_edge, label %if.then

sw.epilog.if.end11_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 11026, i32 %15)
  %cmp8 = icmp slt i32 %15, 11026
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %header.0, 512
  br label %if.end11

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %or10 = or i32 %header.0, 256
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9, %sw.epilog.if.end11_crit_edge
  %header.1 = phi i32 [ %or, %if.then9 ], [ %or10, %if.else ], [ %header.0, %sw.epilog.if.end11_crit_edge ]
  %channels = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 8
  %16 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp12 = icmp eq i32 %17, 1
  %or14 = or i32 %header.1, 128
  %spec.select = select i1 %cmp12, i32 %or14, i32 %header.1
  %pipe = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 2
  %18 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pipe, align 8
  %is_capture16 = getelementptr inbounds %struct.pcxhr_pipe, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %is_capture16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %is_capture16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %cond.false, label %if.then22.critedge

cond.false:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 3
  %22 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %number, align 4
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 21) #10
  %24 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pipe, align 8
  %first_audio.c99 = getelementptr inbounds %struct.pcxhr_pipe, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %first_audio.c99 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %first_audio.c99, align 4
  call void @pcxhr_set_pipe_cmd_params(ptr noundef nonnull %rmh, i32 noundef 0, i32 noundef %27, i32 noundef %23, i32 noundef 0) #10
  br label %if.end32

if.then22.critedge:                               ; preds = %if.end11
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 22) #10
  %28 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pipe, align 8
  %first_audio.c = getelementptr inbounds %struct.pcxhr_pipe, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %first_audio.c to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %first_audio.c, align 4
  call void @pcxhr_set_pipe_cmd_params(ptr noundef nonnull %rmh, i32 noundef %21, i32 noundef %31, i32 noundef 0, i32 noundef 0) #10
  %32 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mgr, align 4
  %dsp_version = getelementptr inbounds %struct.pcxhr_mgr, ptr %33, i32 0, i32 13
  %34 = ptrtoint ptr %dsp_version to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dsp_version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 75776, i32 %35)
  %cmp24 = icmp ugt i32 %35, 75776
  %cmd = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %36 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cmd, align 4
  br i1 %cmp24, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.then22.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %or26 = or i32 %37, 1024
  %38 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or26, ptr %cmd, align 4
  br label %if.end32

if.else27:                                        ; preds = %if.then22.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %or30 = or i32 %37, 4096
  %39 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or30, ptr %cmd, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else27, %if.then25, %cond.false
  %arrayidx34 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %arrayidx34, align 4
  %41 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 2, ptr %rmh, align 4
  %42 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mgr, align 4
  %dsp_version36 = getelementptr inbounds %struct.pcxhr_mgr, ptr %43, i32 0, i32 13
  %44 = ptrtoint ptr %dsp_version36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dsp_version36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 75776, i32 %45)
  %cmp37 = icmp ugt i32 %45, 75776
  br i1 %cmp37, label %if.then38, label %if.end32.if.end51_crit_edge

if.end32.if.end51_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then38:                                        ; preds = %if.end32
  %46 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %channels, align 4
  %48 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx34, align 4
  br i1 %tobool.not, label %if.then43, label %if.then38.if.end51_crit_edge

if.then38.if.end51_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then43:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp45 = icmp eq i32 %47, 1
  %cond46 = select i1 %cmp45, i32 1, i32 3
  %arrayidx48 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 2
  %49 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cond46, ptr %arrayidx48, align 4
  %50 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 3, ptr %rmh, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then43, %if.then38.if.end51_crit_edge, %if.end32.if.end51_crit_edge
  %shr = lshr i32 %spec.select, 8
  %51 = ptrtoint ptr %rmh to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %rmh, align 4
  %inc = add i16 %52, 1
  %idxprom = zext i16 %52 to i32
  %arrayidx54 = getelementptr %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 %idxprom
  %53 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shr, ptr %arrayidx54, align 4
  %and = shl i32 %spec.select, 16
  %shl = and i32 %and, 16711680
  %inc57 = add i16 %52, 2
  store i16 %inc57, ptr %rmh, align 4
  %idxprom58 = zext i16 %inc to i32
  %arrayidx59 = getelementptr %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 %idxprom58
  %54 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shl, ptr %arrayidx59, align 4
  %55 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mgr, align 4
  %call = call i32 @pcxhr_send_msg(ptr noundef %56, ptr noundef nonnull %rmh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool61.not = icmp eq i32 %call, 0
  br i1 %tobool61.not, label %if.end51.cleanup_crit_edge, label %do.end65

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end65:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %4, align 8
  %dev67 = getelementptr inbounds %struct.snd_card, ptr %58, i32 0, i32 27
  %59 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev67, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %if.end51.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %do.end65 ], [ 0, %if.end51.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcxhr_update_r_buffer(ptr nocapture noundef readonly %stream) unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #10
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  %1 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stream, align 8
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %stream1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %stream1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  %conv = zext i1 %cmp to i32
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %number, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_update_r_buffer.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_update_r_buffer, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !358

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %cond6 = select i1 %cmp, i32 99, i32 112
  %chip_idx = getelementptr inbounds %struct.snd_pcxhr, ptr %4, i32 0, i32 2
  %13 = ptrtoint ptr %chip_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chip_idx, align 8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 11
  %15 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 51
  %17 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_addr, align 8
  %19 = inttoptr i32 %18 to ptr
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %16, i32 0, i32 52
  %20 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_bytes, align 4
  %number8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 3
  %22 = ptrtoint ptr %number8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %number8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_update_r_buffer.__UNIQUE_ID_ddebug257, ptr noundef %12, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef %cond6, i32 noundef %14, ptr noundef %19, i32 noundef %21, i32 noundef %23) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %cond.end
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 20) #10
  %pipe = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 2
  %24 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pipe, align 8
  %first_audio = getelementptr inbounds %struct.pcxhr_pipe, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %first_audio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %first_audio, align 4
  call void @pcxhr_set_pipe_cmd_params(ptr noundef nonnull %rmh, i32 noundef %conv, i32 noundef %27, i32 noundef %cond, i32 noundef 0) #10
  %runtime9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %2, i32 0, i32 11
  %28 = ptrtoint ptr %runtime9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %runtime9, align 4
  %dma_bytes10 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %29, i32 0, i32 52
  %30 = ptrtoint ptr %dma_bytes10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_bytes10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097151, i32 %31)
  %cmp11 = icmp ugt i32 %31, 2097151
  br i1 %cmp11, label %do.end28, label %do.end.if.end34_crit_edge, !prof !360

do.end.if.end34_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.end28:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 643, i32 noundef 9, ptr noundef null) #10
  br label %if.end34

if.end34:                                         ; preds = %do.end28, %do.end.if.end34_crit_edge
  %32 = ptrtoint ptr %runtime9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %runtime9, align 4
  %dma_bytes43 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %33, i32 0, i32 52
  %34 = ptrtoint ptr %dma_bytes43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_bytes43, align 4
  %mul = shl i32 %35, 3
  %arrayidx = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul, ptr %arrayidx, align 4
  %dma_addr45 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %33, i32 0, i32 51
  %37 = ptrtoint ptr %dma_addr45 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_addr45, align 8
  %shr = lshr i32 %38, 24
  %arrayidx47 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 2
  %or = or i32 %shr, 524288
  %39 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or, ptr %arrayidx47, align 4
  %and = and i32 %38, 16777215
  %arrayidx53 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4, i32 3
  %40 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and, ptr %arrayidx53, align 4
  %41 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 4, ptr %rmh, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %4, i32 0, i32 1
  %42 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mgr, align 4
  %call54 = call i32 @pcxhr_send_msg(ptr noundef %43, ptr noundef nonnull %rmh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end34.if.end62_crit_edge, label %do.end59

if.end34.if.end62_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end62

do.end59:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %4, align 8
  %dev61 = getelementptr inbounds %struct.snd_card, ptr %45, i32 0, i32 27
  %46 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev61, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.45, i32 noundef %call54) #13
  br label %if.end62

if.end62:                                         ; preds = %do.end59, %if.end34.if.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #10
  ret i32 %call54
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcxhr_set_stream_state(ptr nocapture noundef readonly %chip, ptr nocapture noundef %stream) unnamed_addr #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #10
  %0 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  %status = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 3
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp eq i32 %2, 2
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %2, label %do.end [
    i32 5, label %entry.if.end4_crit_edge
    i32 2, label %entry.if.end4_crit_edge46
  ]

entry.if.end4_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #13
  br label %cleanup

if.end4:                                          ; preds = %entry.if.end4_crit_edge, %entry.if.end4_crit_edge46
  %8 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %timer_abs_periods = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 4
  %pipe = getelementptr inbounds %struct.pcxhr_stream, ptr %stream, i32 0, i32 2
  %10 = call ptr @memset(ptr %timer_abs_periods, i32 0, i32 20)
  %11 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pipe, align 8
  %is_capture = getelementptr inbounds %struct.pcxhr_pipe, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %is_capture to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %is_capture, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool7.not = icmp eq i32 %14, 0
  br i1 %tobool7.not, label %cond.false, label %if.end6.cond.end_crit_edge

if.end6.cond.end_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %9, i32 0, i32 3
  %15 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %number, align 4
  %shl = shl nuw i32 1, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end6.cond.end_crit_edge
  %cond = phi i32 [ %shl, %cond.false ], [ 1, %if.end6.cond.end_crit_edge ]
  %cond10 = select i1 %cmp, i32 17, i32 19
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef %cond10) #10
  %17 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pipe, align 8
  %is_capture12 = getelementptr inbounds %struct.pcxhr_pipe, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %is_capture12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %is_capture12, align 4
  %first_audio = getelementptr inbounds %struct.pcxhr_pipe, ptr %18, i32 0, i32 2
  %21 = ptrtoint ptr %first_audio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %first_audio, align 4
  call void @pcxhr_set_pipe_cmd_params(ptr noundef nonnull %rmh, i32 noundef %20, i32 noundef %22, i32 noundef 0, i32 noundef %cond) #10
  %23 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stream, align 8
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private_data, align 4
  %mgr = getelementptr inbounds %struct.snd_pcxhr, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %mgr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mgr, align 4
  %call = call i32 @pcxhr_send_msg(ptr noundef %28, ptr noundef nonnull %rmh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %cond.end.if.end22_crit_edge, label %do.end19

cond.end.if.end22_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

do.end19:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %26, align 8
  %dev21 = getelementptr inbounds %struct.snd_card, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev21, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.47, i32 noundef %call) #13
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %cond.end.if.end22_crit_edge
  %cond24 = select i1 %cmp, i32 3, i32 6
  %33 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond24, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %if.end22 ], [ -22, %do.end ], [ -22, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_set_pipe_state(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcxhr_set_pipe_cmd_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_probe(ptr noundef %pci, ptr nocapture noundef readonly %pci_id) #0 align 64 {
entry:
  %card = alloca ptr, align 4
  %tmpid = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pcxhr_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %0)
  %cmp = icmp sgt i32 %0, 31
  br i1 %cmp, label %entry.cleanup240_crit_edge, label %if.end

entry.cleanup240_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup240

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %0
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @pcxhr_probe.dev, align 4
  br label %cleanup240

if.end2:                                          ; preds = %if.end
  %call = tail call i32 @pci_enable_device(ptr noundef %pci) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.end2.cleanup240_crit_edge, label %if.end5

if.end2.cleanup240_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup240

if.end5:                                          ; preds = %if.end2
  tail call void @pci_set_master(ptr noundef %pci) #10
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %call6 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #13
  tail call void @pci_disable_device(ptr noundef %pci) #10
  br label %cleanup240

if.end10:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 588) #15
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_disable_device(ptr noundef %pci) #10
  br label %cleanup240

if.end14:                                         ; preds = %if.end10
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pci_id, i32 0, i32 6
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %5)
  %cmp15 = icmp ugt i32 %5, 33
  br i1 %cmp15, label %do.end27, label %if.end42, !prof !360

do.end27:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1516, i32 noundef 9, ptr noundef null) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  tail call void @pci_disable_device(ptr noundef %pci) #10
  br label %cleanup240

if.end42:                                         ; preds = %if.end14
  %arrayidx44 = getelementptr [34 x %struct.board_parameters], ptr @pcxhr_board_params, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx44, align 4
  %playback_chips = getelementptr [34 x %struct.board_parameters], ptr @pcxhr_board_params, i32 0, i32 %5, i32 1
  %8 = ptrtoint ptr %playback_chips to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %playback_chips, align 4
  %conv = sext i16 %9 to i32
  %playback_chips47 = getelementptr inbounds %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 14
  %10 = ptrtoint ptr %playback_chips47 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %playback_chips47, align 8
  %capture_chips = getelementptr [34 x %struct.board_parameters], ptr @pcxhr_board_params, i32 0, i32 %5, i32 2
  %11 = ptrtoint ptr %capture_chips to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %capture_chips, align 2
  %conv50 = sext i16 %12 to i32
  %capture_chips51 = getelementptr inbounds %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 15
  %13 = ptrtoint ptr %capture_chips51 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv50, ptr %capture_chips51, align 4
  %fw_file_set = getelementptr [34 x %struct.board_parameters], ptr @pcxhr_board_params, i32 0, i32 %5, i32 3
  %14 = ptrtoint ptr %fw_file_set to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fw_file_set, align 4
  %conv54 = sext i16 %15 to i32
  %fw_file_set55 = getelementptr inbounds %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %fw_file_set55 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv54, ptr %fw_file_set55, align 8
  %firmware_num = getelementptr [34 x %struct.board_parameters], ptr @pcxhr_board_params, i32 0, i32 %5, i32 4
  %17 = ptrtoint ptr %firmware_num to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %firmware_num, align 2
  %conv58 = sext i16 %18 to i32
  %firmware_num59 = getelementptr inbounds %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 17
  %19 = ptrtoint ptr %firmware_num59 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv58, ptr %firmware_num59, align 4
  %20 = load i32, ptr @pcxhr_probe.dev, align 4
  %arrayidx60 = getelementptr [32 x i8], ptr @mono, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx60, align 1, !range !361
  %mono_capture = getelementptr inbounds %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 18
  %23 = ptrtoint ptr %mono_capture to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %mono_capture, align 8
  %bf.shl = shl nuw nsw i8 %22, 2
  %bf.clear = and i8 %bf.load, 59
  %bf.set = or i8 %bf.clear, %bf.shl
  %24 = add nsw i32 %5, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %24)
  %cmp64 = icmp ult i32 %24, 10
  %bf.shl68 = select i1 %cmp64, i8 -128, i8 0
  %bf.set70 = or i8 %bf.set, %bf.shl68
  %25 = and i32 %5, 1073741820
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %25)
  %cmp73.not = icmp eq i32 %25, 16
  %bf.shl77 = select i1 %cmp73.not, i8 0, i8 64
  %bf.set79 = or i8 %bf.set70, %bf.shl77
  %26 = and i32 %5, 1073741822
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %26)
  %27 = icmp eq i32 %26, 18
  %switch.and = and i32 %conv54, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %28 = select i1 %27, i1 true, i1 %switch.selectcmp
  %29 = select i1 %28, i8 0, i8 8
  %bf.clear95 = and i8 %bf.set79, -9
  %bf.set96 = or i8 %bf.clear95, %29
  %30 = ptrtoint ptr %mono_capture to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %bf.set96, ptr %mono_capture, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.set79)
  %tobool100.not = icmp sgt i8 %bf.set79, -1
  %spec.select = select i1 %tobool100.not, i32 96, i32 192
  %31 = getelementptr inbounds %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %spec.select, ptr %31, align 4
  %call104 = tail call i32 @pci_request_regions(ptr noundef %pci, ptr noundef %7) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.then107, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end42
  %arrayidx111 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 0
  %33 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx111, align 8
  %arrayidx112 = getelementptr %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 5, i32 0
  %35 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx112, align 8
  %arrayidx111.1 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 1
  %36 = ptrtoint ptr %arrayidx111.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx111.1, align 8
  %arrayidx112.1 = getelementptr %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %arrayidx112.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx112.1, align 4
  %arrayidx111.2 = getelementptr %struct.pci_dev, ptr %pci, i32 0, i32 47, i32 2
  %39 = ptrtoint ptr %arrayidx111.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx111.2, align 8
  %arrayidx112.2 = getelementptr %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 5, i32 2
  %41 = ptrtoint ptr %arrayidx112.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx112.2, align 8
  %pci114 = getelementptr inbounds %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %pci114 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %pci, ptr %pci114, align 4
  %irq = getelementptr inbounds %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 3
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %irq, align 8
  %irq115 = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %44 = ptrtoint ptr %irq115 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq115, align 4
  %call116 = tail call i32 @request_threaded_irq(i32 noundef %45, ptr noundef nonnull @pcxhr_interrupt, ptr noundef nonnull @pcxhr_threaded_irq, i32 noundef 128, ptr noundef nonnull @.str.6, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  %46 = ptrtoint ptr %irq115 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq115, align 4
  br i1 %tobool117.not, label %if.end125, label %do.end121

if.then107:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  tail call void @pci_disable_device(ptr noundef %pci) #10
  br label %cleanup240

do.end121:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %47) #13
  tail call fastcc void @pcxhr_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup240

if.end125:                                        ; preds = %for.body.preheader
  %48 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %irq, align 8
  %name = getelementptr inbounds %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx112, align 8
  %51 = ptrtoint ptr %arrayidx112.1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx112.1, align 4
  %53 = ptrtoint ptr %arrayidx112.2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx112.2, align 8
  %call135 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 40, ptr noundef nonnull @.str.55, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %47)
  %lock = getelementptr inbounds %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.56, ptr noundef nonnull @pcxhr_probe.__key) #10
  %msg_lock = getelementptr inbounds %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %msg_lock, ptr noundef nonnull @.str.58, ptr noundef nonnull @pcxhr_probe.__key.57) #10
  %setup_mutex = getelementptr inbounds %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %setup_mutex, ptr noundef nonnull @.str.60, ptr noundef nonnull @pcxhr_probe.__key.59) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3264, i32 noundef 1064) #15
  %prmh = getelementptr inbounds %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 7
  %56 = ptrtoint ptr %prmh to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i, ptr %prmh, align 4
  %tobool147.not = icmp eq ptr %call7.i, null
  br i1 %tobool147.not, label %if.then148, label %for.cond151.preheader

for.cond151.preheader:                            ; preds = %if.end125
  %chip = getelementptr inbounds %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 1
  br label %for.body154

if.then148:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @pcxhr_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup240

for.body154:                                      ; preds = %for.inc222.for.body154_crit_edge, %for.cond151.preheader
  %i.1377 = phi i32 [ 0, %for.cond151.preheader ], [ %inc223, %for.inc222.for.body154_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #10
  %57 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !357
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmpid) #10
  %58 = call ptr @memset(ptr %tmpid, i32 255, i32 16)
  %59 = ptrtoint ptr %playback_chips47 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %playback_chips47, align 8
  %61 = ptrtoint ptr %capture_chips51 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %capture_chips51, align 4
  %63 = call i32 @llvm.smax.i32(i32 %60, i32 %62)
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1377, i32 %63)
  %cmp160.not = icmp ult i32 %i.1377, %63
  br i1 %cmp160.not, label %if.end163, label %cleanup

if.end163:                                        ; preds = %for.body154
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %call7.i.i, align 8
  %inc164 = add i32 %65, 1
  store i32 %inc164, ptr %call7.i.i, align 8
  %66 = load i32, ptr @pcxhr_probe.dev, align 4
  %arrayidx165 = getelementptr [32 x i32], ptr @index, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx165 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp166 = icmp slt i32 %68, 0
  %add = select i1 %cmp166, i32 0, i32 %i.1377
  %idx.0 = add i32 %add, %68
  %arrayidx174 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %66
  %69 = ptrtoint ptr %arrayidx174 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx174, align 4
  %tobool175.not = icmp eq ptr %70, null
  %cond180 = select i1 %tobool175.not, ptr %7, ptr %70
  %call181 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %tmpid, i32 noundef 16, ptr noundef nonnull @.str.61, ptr noundef %cond180, i32 noundef %i.1377)
  %call184 = call i32 @snd_card_new(ptr noundef %dev, i32 noundef %idx.0, ptr noundef nonnull %tmpid, ptr noundef null, i32 noundef 0, ptr noundef nonnull %card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %cmp185 = icmp slt i32 %call184, 0
  br i1 %cmp185, label %do.end190, label %if.end193

do.end190:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %i.1377) #13
  br label %cleanup.thread

if.end193:                                        ; preds = %if.end163
  %71 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %72, i32 0, i32 2
  %73 = call ptr @memcpy(ptr %driver, ptr @.str.65, i32 6)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %72, i32 0, i32 3
  %call197 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %shortname, i32 noundef 32, ptr noundef nonnull @.str.66, i32 noundef %i.1377)
  %74 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %card, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 4
  %call201 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname, i32 noundef 80, ptr noundef nonnull @.str.67, ptr noundef %name, i32 noundef %i.1377)
  %76 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %card, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %78 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 3520, i32 noundef 448) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end193.if.then205_crit_edge, label %if.end.i

if.end193.if.then205_crit_edge:                   ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then205

if.end.i:                                         ; preds = %if.end193
  %79 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %77, ptr %call7.i.i.i, align 8
  %chip_idx.i = getelementptr inbounds %struct.snd_pcxhr, ptr %call7.i.i.i, i32 0, i32 2
  %80 = ptrtoint ptr %chip_idx.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %i.1377, ptr %chip_idx.i, align 8
  %mgr2.i = getelementptr inbounds %struct.snd_pcxhr, ptr %call7.i.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %mgr2.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call7.i.i, ptr %mgr2.i, align 4
  %82 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irq, align 8
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %77, i32 0, i32 33
  %84 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %sync_irq.i, align 4
  %85 = ptrtoint ptr %playback_chips47 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %playback_chips47, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %i.1377)
  %cmp.i = icmp sgt i32 %86, %i.1377
  br i1 %cmp.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %nb_streams_play.i = getelementptr inbounds %struct.snd_pcxhr, ptr %call7.i.i.i, i32 0, i32 8
  %87 = ptrtoint ptr %nb_streams_play.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 4, ptr %nb_streams_play.i, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %88 = ptrtoint ptr %capture_chips51 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %capture_chips51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %i.1377)
  %cmp5.i = icmp sgt i32 %89, %i.1377
  br i1 %cmp5.i, label %if.then6.i, label %if.end4.i.if.end11.i_crit_edge

if.end4.i.if.end11.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %mono_capture to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load.i = load i8, ptr %mono_capture, align 8
  %91 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool7.not.i = icmp eq i8 %91, 0
  %nb_streams_capt9.i = getelementptr inbounds %struct.snd_pcxhr, ptr %call7.i.i.i, i32 0, i32 9
  %..i = select i1 %tobool7.not.i, i32 1, i32 2
  %92 = ptrtoint ptr %nb_streams_capt9.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %..i, ptr %nb_streams_capt9.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then6.i, %if.end4.i.if.end11.i_crit_edge
  %call12.i = call i32 @snd_device_new(ptr noundef %77, i32 noundef 0, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @pcxhr_create.ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.then14.i, label %if.end208

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %if.then205

if.then205:                                       ; preds = %if.then14.i, %if.end193.if.then205_crit_edge
  %retval.0.i.ph = phi i32 [ %call12.i, %if.then14.i ], [ -12, %if.end193.if.then205_crit_edge ]
  %93 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %card, align 4
  %call206 = call i32 @snd_card_free(ptr noundef %94) #10
  br label %cleanup.thread

if.end208:                                        ; preds = %if.end11.i
  %arrayidx.i = getelementptr %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 1, i32 %i.1377
  %95 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1377)
  %cmp209 = icmp eq i32 %i.1377, 0
  br i1 %cmp209, label %if.then211, label %if.end208.if.end213_crit_edge

if.end208.if.end213_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end213

if.then211:                                       ; preds = %if.end208
  %96 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %chip, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 8
  %call.i.i = call i32 @snd_card_rw_proc_new(ptr noundef %99, ptr noundef nonnull @.str.104, ptr noundef %97, ptr noundef nonnull @pcxhr_proc_info, ptr noundef null) #10
  %100 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %97, align 8
  %call.i15.i = call i32 @snd_card_rw_proc_new(ptr noundef %101, ptr noundef nonnull @.str.105, ptr noundef %97, ptr noundef nonnull @pcxhr_proc_sync, ptr noundef null) #10
  %mgr.i = getelementptr inbounds %struct.snd_pcxhr, ptr %97, i32 0, i32 1
  %102 = ptrtoint ptr %mgr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mgr.i, align 4
  %is_hr_stereo.i = getelementptr inbounds %struct.pcxhr_mgr, ptr %103, i32 0, i32 18
  %104 = ptrtoint ptr %is_hr_stereo.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %bf.load.i353 = load i8, ptr %is_hr_stereo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i353)
  %tobool.not.i354 = icmp sgt i8 %bf.load.i353, -1
  br i1 %tobool.not.i354, label %if.then211.pcxhr_proc_init.exit_crit_edge, label %if.then.i

if.then211.pcxhr_proc_init.exit_crit_edge:        ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #12
  br label %pcxhr_proc_init.exit

if.then.i:                                        ; preds = %if.then211
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %97, align 8
  %call4.i = call i32 @snd_card_rw_proc_new(ptr noundef %106, ptr noundef nonnull @.str.106, ptr noundef %97, ptr noundef nonnull @pcxhr_proc_gpio_read, ptr noundef nonnull @pcxhr_proc_gpo_write) #10
  br label %pcxhr_proc_init.exit

pcxhr_proc_init.exit:                             ; preds = %if.then.i, %if.then211.pcxhr_proc_init.exit_crit_edge
  %107 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %97, align 8
  %call.i16.i = call i32 @snd_card_rw_proc_new(ptr noundef %108, ptr noundef nonnull @.str.107, ptr noundef %97, ptr noundef nonnull @pcxhr_proc_ltc, ptr noundef null) #10
  br label %if.end213

if.end213:                                        ; preds = %pcxhr_proc_init.exit, %if.end208.if.end213_crit_edge
  %109 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %card, align 4
  %call214 = call i32 @snd_card_register(ptr noundef %110) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %cmp215 = icmp slt i32 %call214, 0
  br i1 %cmp215, label %if.end213.cleanup.thread_crit_edge, label %for.inc222

if.end213.cleanup.thread_crit_edge:               ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end213.cleanup.thread_crit_edge, %if.then205, %do.end190
  %retval.1.ph = phi i32 [ %retval.0.i.ph, %if.then205 ], [ %call184, %do.end190 ], [ %call214, %if.end213.cleanup.thread_crit_edge ]
  call fastcc void @pcxhr_free(ptr noundef nonnull %call7.i.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmpid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  br label %cleanup240

cleanup:                                          ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmpid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  br label %for.end224

for.inc222:                                       ; preds = %if.end213
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmpid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #10
  %inc223 = add nuw nsw i32 %i.1377, 1
  %exitcond.not = icmp eq i32 %inc223, 6
  br i1 %exitcond.not, label %for.inc222.for.end224_crit_edge, label %for.inc222.for.body154_crit_edge

for.inc222.for.body154_crit_edge:                 ; preds = %for.inc222
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body154

for.inc222.for.end224_crit_edge:                  ; preds = %for.inc222
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end224

for.end224:                                       ; preds = %for.inc222.for.end224_crit_edge, %cleanup
  %hostport = getelementptr inbounds %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 19
  %call.i = call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev, i32 noundef 0, i32 noundef 4096, ptr noundef %hostport) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp227 = icmp slt i32 %call.i, 0
  br i1 %cmp227, label %if.then229, label %if.end231

if.then229:                                       ; preds = %for.end224
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @pcxhr_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup240

if.end231:                                        ; preds = %for.end224
  %area = getelementptr inbounds %struct.pcxhr_mgr, ptr %call7.i.i, i32 0, i32 19, i32 1
  %111 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %area, align 4
  %113 = call ptr @memset(ptr %112, i32 0, i32 4096)
  %call233 = call i32 @pcxhr_setup_firmware(ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %cmp234 = icmp slt i32 %call233, 0
  br i1 %cmp234, label %if.then236, label %if.end238

if.then236:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @pcxhr_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup240

if.end238:                                        ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %114 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %115 = load i32, ptr @pcxhr_probe.dev, align 4
  %inc239 = add i32 %115, 1
  store i32 %inc239, ptr @pcxhr_probe.dev, align 4
  br label %cleanup240

cleanup240:                                       ; preds = %if.end238, %if.then236, %if.then229, %cleanup.thread, %if.then148, %do.end121, %if.then107, %do.end27, %if.then13, %do.end, %if.end2.cleanup240_crit_edge, %if.then1, %entry.cleanup240_crit_edge
  %retval.2 = phi i32 [ -6, %do.end ], [ -19, %do.end27 ], [ %call104, %if.then107 ], [ -16, %do.end121 ], [ -12, %if.then229 ], [ %call233, %if.then236 ], [ 0, %if.end238 ], [ -12, %if.then148 ], [ -12, %if.then13 ], [ -2, %if.then1 ], [ -19, %entry.cleanup240_crit_edge ], [ %call, %if.end2.cleanup240_crit_edge ], [ %retval.1.ph, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcxhr_remove(ptr nocapture noundef readonly %pci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @pcxhr_free(ptr noundef %1)
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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_interrupt(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_threaded_irq(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcxhr_free(ptr noundef %mgr) unnamed_addr #0 align 64 {
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
  %arrayidx = getelementptr %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 1, i32 %i.03
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
  %dsp_loaded = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 12
  %8 = ptrtoint ptr %dsp_loaded to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dsp_loaded, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %for.end.if.end11_crit_edge, label %if.then4

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then4:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pcxhr_reset_board(ptr noundef %mgr) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcxhr_free.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcxhr_free, %if.then9)) #10
          to label %if.end11 [label %if.then9], !srcloc !358

if.then9:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %pci = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %10 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcxhr_free.__UNIQUE_ID_ddebug267, ptr noundef %dev, ptr noundef nonnull @.str.103) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.then4, %for.end.if.end11_crit_edge
  %irq = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 3
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp12 = icmp sgt i32 %13, -1
  br i1 %cmp12, label %if.then13, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %mgr) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  %pci17 = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 2
  %14 = ptrtoint ptr %pci17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pci17, align 4
  tail call void @pci_release_regions(ptr noundef %15) #10
  %area = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %area, align 4
  %tobool18.not = icmp eq ptr %17, null
  br i1 %tobool18.not, label %if.end16.if.end23_crit_edge, label %if.then19

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %hostport = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 19
  tail call void @snd_dma_free_pages(ptr noundef %hostport) #10
  %18 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %area, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end16.if.end23_crit_edge
  %prmh = getelementptr inbounds %struct.pcxhr_mgr, ptr %mgr, i32 0, i32 7
  %19 = ptrtoint ptr %prmh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prmh, align 4
  tail call void @kfree(ptr noundef %20) #10
  %21 = ptrtoint ptr %pci17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci17, align 4
  tail call void @pci_disable_device(ptr noundef %22) #10
  tail call void @kfree(ptr noundef %mgr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcxhr_setup_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcxhr_reset_board(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcxhr_chip_dev_free(ptr nocapture noundef readonly %device) #0 align 64 {
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
define internal void @pcxhr_proc_info(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr2 = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr2, align 4
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %name = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.108, ptr noundef %name) #10
  %dsp_loaded = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %dsp_loaded to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsp_loaded, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else75, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #10
  %8 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  %dsp_version = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 13
  %9 = ptrtoint ptr %dsp_version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dsp_version, align 4
  %shr = lshr i32 %10, 16
  %conv = and i32 %shr, 255
  %11 = lshr i32 %10, 8
  %conv11 = and i32 %10, 255
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110) #10
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %16 = and i32 %11, 255
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.111, i32 noundef %conv, i32 noundef %16, i32 noundef %conv11) #10
  %board_has_analog = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 18
  %17 = ptrtoint ptr %board_has_analog to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %board_has_analog, align 4
  %18 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool17.not = icmp eq i8 %18, 0
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  %.str.113..str.112 = select i1 %tobool17.not, ptr @.str.113, ptr @.str.112
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef nonnull %.str.113..str.112) #10
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 9) #10
  %call = call i32 @pcxhr_send_msg(ptr noundef %3, ptr noundef nonnull %rmh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool21.not = icmp eq i32 %call, 0
  br i1 %tobool21.not, label %if.then22, label %if.then.if.end50_crit_edge

if.then.if.end50_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then22:                                        ; preds = %if.then
  %stat = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5
  %21 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stat, align 4
  %arrayidx24 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5, i32 1
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp = icmp sgt i32 %24, 0
  br i1 %cmp, label %if.then26, label %if.then22.if.end50_crit_edge

if.then22.if.end50_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then26:                                        ; preds = %if.then22
  %sample_rate_real = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 30
  %25 = ptrtoint ptr %sample_rate_real to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sample_rate_real, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %26, label %if.then32 [
    i32 0, label %if.then26.if.end40_crit_edge
    i32 48000, label %if.then26.if.end40_crit_edge121
  ]

if.then26.if.end40_crit_edge121:                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then26.if.end40_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then32:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  %mul = mul i32 %24, 48000
  %div = udiv i32 %mul, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 91999, i32 %26)
  %cmp35 = icmp ugt i32 %26, 91999
  %mul38 = zext i1 %cmp35 to i32
  %spec.select = shl i32 %div, %mul38
  br label %if.end40

if.end40:                                         ; preds = %if.then32, %if.then26.if.end40_crit_edge, %if.then26.if.end40_crit_edge121
  %ref.0 = phi i32 [ %24, %if.then26.if.end40_crit_edge ], [ %24, %if.then26.if.end40_crit_edge121 ], [ %spec.select, %if.then32 ]
  %mul41 = mul i32 %22, 100
  %div42 = sdiv i32 %mul41, %ref.0
  %sub = sub i32 100, %div42
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.114, i32 noundef %sub) #10
  %30 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %buffer, align 4
  %arrayidx46 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5, i32 2
  %32 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx46, align 4
  %arrayidx48 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5, i32 3
  %34 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx48, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %31, ptr noundef nonnull @.str.115, i32 noundef %33, i32 noundef %35) #10
  br label %if.end50

if.end50:                                         ; preds = %if.end40, %if.then22.if.end50_crit_edge, %if.then.if.end50_crit_edge
  %36 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %buffer, align 4
  %granularity = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 4
  %38 = ptrtoint ptr %granularity to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %granularity, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %37, ptr noundef nonnull @.str.116, i32 noundef %39) #10
  %40 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer, align 4
  %dsp_time_err = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 26
  %42 = ptrtoint ptr %dsp_time_err to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dsp_time_err, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.117, i32 noundef %43) #10
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  %async_err_pipe_xrun = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 33
  %46 = ptrtoint ptr %async_err_pipe_xrun to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %async_err_pipe_xrun, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.118, i32 noundef %47) #10
  %48 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer, align 4
  %async_err_stream_xrun = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 32
  %50 = ptrtoint ptr %async_err_stream_xrun to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %async_err_stream_xrun, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %49, ptr noundef nonnull @.str.119, i32 noundef %51) #10
  %52 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buffer, align 4
  %async_err_other_last = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 34
  %54 = ptrtoint ptr %async_err_other_last to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %async_err_other_last, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %53, ptr noundef nonnull @.str.120, i32 noundef %55) #10
  %cmd = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %56 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 16912, ptr %cmd, align 4
  %57 = ptrtoint ptr %rmh to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %rmh, align 4
  %stat_len = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 1
  %58 = ptrtoint ptr %stat_len to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 16, ptr %stat_len, align 2
  %dsp_stat = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 2
  %59 = ptrtoint ptr %dsp_stat to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 0, ptr %dsp_stat, align 4
  %cmd_idx = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 3
  %60 = ptrtoint ptr %cmd_idx to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 27, ptr %cmd_idx, align 2
  %call57 = call i32 @pcxhr_send_msg(ptr noundef %3, ptr noundef nonnull %rmh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.then59, label %if.end50.if.end74_crit_edge

if.end50.if.end74_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then59:                                        ; preds = %if.end50
  %61 = ptrtoint ptr %stat_len to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %stat_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %62)
  %cmp62 = icmp ugt i16 %62, 8
  br i1 %cmp62, label %if.end66.thread, label %if.end66

if.end66.thread:                                  ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %stat_len to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 8, ptr %stat_len, align 2
  br label %for.body.preheader

if.end66:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %cmp69118.not = icmp eq i16 %62, 0
  br i1 %cmp69118.not, label %if.end66.if.end74_crit_edge, label %if.end66.for.body.preheader_crit_edge

if.end66.for.body.preheader_crit_edge:            ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

if.end66.if.end74_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

for.body.preheader:                               ; preds = %if.end66.for.body.preheader_crit_edge, %if.end66.thread
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0119 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %64 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer, align 4
  %arrayidx73 = getelementptr %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5, i32 %i.0119
  %66 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx73, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %65, ptr noundef nonnull @.str.121, i32 noundef %i.0119, i32 noundef %67) #10
  %inc = add nuw nsw i32 %i.0119, 1
  %68 = ptrtoint ptr %stat_len to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %stat_len, align 2
  %conv68 = zext i16 %69 to i32
  %cmp69 = icmp ult i32 %inc, %conv68
  br i1 %cmp69, label %for.body.for.body_crit_edge, label %for.body.if.end74_crit_edge

for.body.if.end74_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end74:                                         ; preds = %for.body.if.end74_crit_edge, %if.end66.if.end74_crit_edge, %if.end50.if.end74_crit_edge
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #10
  br label %if.end77

if.else75:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %71, ptr noundef nonnull @.str.122) #10
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.end74
  %72 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %73, ptr noundef nonnull @.str.123) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcxhr_proc_sync(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %sample_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr2 = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr2, align 4
  %is_hr_stereo = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %pcxhr_proc_sync.textsPCXHR.pcxhr_proc_sync.textsHR22 = select i1 %tobool.not, ptr @pcxhr_proc_sync.textsPCXHR, ptr @pcxhr_proc_sync.textsHR22
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  %name = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %6, ptr noundef nonnull @.str.108, ptr noundef %name) #10
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %cur_clock_type = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 21
  %9 = ptrtoint ptr %cur_clock_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur_clock_type, align 4
  %arrayidx = getelementptr ptr, ptr %pcxhr_proc_sync.textsPCXHR.pcxhr_proc_sync.textsHR22, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.131, ptr noundef %12) #10
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  %sample_rate_real = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 30
  %15 = ptrtoint ptr %sample_rate_real to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sample_rate_real, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %14, ptr noundef nonnull @.str.132, i32 noundef %16) #10
  %dsp_loaded = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 12
  %17 = ptrtoint ptr %dsp_loaded to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dsp_loaded, align 4
  %and = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else13, label %if.then7

if.then7:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sample_rate) #10
  %19 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %sample_rate, align 4, !annotation !357
  %20 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @hr222_get_external_clock(ptr noundef %3, i32 noundef 1, ptr noundef nonnull %sample_rate) #10
  br label %pcxhr_get_external_clock.exit

if.else.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = call fastcc i32 @pcxhr_sub_get_external_clock(ptr noundef %3, i32 noundef 1, ptr noundef nonnull %sample_rate) #10
  br label %pcxhr_get_external_clock.exit

pcxhr_get_external_clock.exit:                    ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %call1.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool8.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool8.not, label %if.end10, label %pcxhr_get_external_clock.exit.for.end_crit_edge

pcxhr_get_external_clock.exit.for.end_crit_edge:  ; preds = %pcxhr_get_external_clock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end10:                                         ; preds = %pcxhr_get_external_clock.exit
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %23 = select i1 %tobool.not, ptr @.str.127, ptr @.str.125
  %24 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sample_rate, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %22, ptr noundef nonnull @.str.133, ptr noundef nonnull %23, i32 noundef %25) #10
  %26 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i.1 = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.1)
  %tobool.not.i.1 = icmp sgt i8 %bf.load.i.1, -1
  br i1 %tobool.not.i.1, label %if.else.i.1, label %if.then.i.1

if.then.i.1:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.1 = call i32 @hr222_get_external_clock(ptr noundef %3, i32 noundef 2, ptr noundef nonnull %sample_rate) #10
  br label %pcxhr_get_external_clock.exit.1

if.else.i.1:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.1 = call fastcc i32 @pcxhr_sub_get_external_clock(ptr noundef %3, i32 noundef 2, ptr noundef nonnull %sample_rate) #10
  br label %pcxhr_get_external_clock.exit.1

pcxhr_get_external_clock.exit.1:                  ; preds = %if.else.i.1, %if.then.i.1
  %retval.0.i.1 = phi i32 [ %call.i.1, %if.then.i.1 ], [ %call1.i.1, %if.else.i.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.1)
  %tobool8.not.1 = icmp eq i32 %retval.0.i.1, 0
  br i1 %tobool8.not.1, label %if.end10.1, label %pcxhr_get_external_clock.exit.1.for.end_crit_edge

pcxhr_get_external_clock.exit.1.for.end_crit_edge: ; preds = %pcxhr_get_external_clock.exit.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end10.1:                                       ; preds = %pcxhr_get_external_clock.exit.1
  %27 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer, align 4
  %29 = select i1 %tobool.not, ptr @.str.125, ptr @.str.126
  %30 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sample_rate, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %28, ptr noundef nonnull @.str.133, ptr noundef nonnull %29, i32 noundef %31) #10
  br i1 %tobool.not, label %for.body.2, label %if.end10.1.for.end_crit_edge

if.end10.1.for.end_crit_edge:                     ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.2:                                       ; preds = %if.end10.1
  %32 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i.2 = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.2)
  %tobool.not.i.2 = icmp sgt i8 %bf.load.i.2, -1
  br i1 %tobool.not.i.2, label %if.else.i.2, label %if.then.i.2

if.then.i.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.2 = call i32 @hr222_get_external_clock(ptr noundef %3, i32 noundef 3, ptr noundef nonnull %sample_rate) #10
  br label %pcxhr_get_external_clock.exit.2

if.else.i.2:                                      ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.2 = call fastcc i32 @pcxhr_sub_get_external_clock(ptr noundef %3, i32 noundef 3, ptr noundef nonnull %sample_rate) #10
  br label %pcxhr_get_external_clock.exit.2

pcxhr_get_external_clock.exit.2:                  ; preds = %if.else.i.2, %if.then.i.2
  %retval.0.i.2 = phi i32 [ %call.i.2, %if.then.i.2 ], [ %call1.i.2, %if.else.i.2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.2)
  %tobool8.not.2 = icmp eq i32 %retval.0.i.2, 0
  br i1 %tobool8.not.2, label %if.end10.2, label %pcxhr_get_external_clock.exit.2.for.end_crit_edge

pcxhr_get_external_clock.exit.2.for.end_crit_edge: ; preds = %pcxhr_get_external_clock.exit.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end10.2:                                       ; preds = %pcxhr_get_external_clock.exit.2
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 4
  %arrayidx12.2 = select i1 %tobool.not, ptr getelementptr inbounds ([7 x ptr], ptr @pcxhr_proc_sync.textsPCXHR, i32 0, i32 3), ptr getelementptr inbounds ([3 x ptr], ptr @pcxhr_proc_sync.textsHR22, i32 1, i32 0)
  %35 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx12.2, align 4
  %37 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sample_rate, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull @.str.133, ptr noundef %36, i32 noundef %38) #10
  %39 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load.i.3 = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.3)
  %tobool.not.i.3 = icmp sgt i8 %bf.load.i.3, -1
  br i1 %tobool.not.i.3, label %if.else.i.3, label %if.then.i.3

if.then.i.3:                                      ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.3 = call i32 @hr222_get_external_clock(ptr noundef %3, i32 noundef 4, ptr noundef nonnull %sample_rate) #10
  br label %pcxhr_get_external_clock.exit.3

if.else.i.3:                                      ; preds = %if.end10.2
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.3 = call fastcc i32 @pcxhr_sub_get_external_clock(ptr noundef %3, i32 noundef 4, ptr noundef nonnull %sample_rate) #10
  br label %pcxhr_get_external_clock.exit.3

pcxhr_get_external_clock.exit.3:                  ; preds = %if.else.i.3, %if.then.i.3
  %retval.0.i.3 = phi i32 [ %call.i.3, %if.then.i.3 ], [ %call1.i.3, %if.else.i.3 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.3)
  %tobool8.not.3 = icmp eq i32 %retval.0.i.3, 0
  br i1 %tobool8.not.3, label %if.end10.3, label %pcxhr_get_external_clock.exit.3.for.end_crit_edge

pcxhr_get_external_clock.exit.3.for.end_crit_edge: ; preds = %pcxhr_get_external_clock.exit.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end10.3:                                       ; preds = %pcxhr_get_external_clock.exit.3
  %40 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer, align 4
  %arrayidx12.3 = select i1 %tobool.not, ptr getelementptr inbounds ([7 x ptr], ptr @pcxhr_proc_sync.textsPCXHR, i32 0, i32 4), ptr getelementptr ([3 x ptr], ptr @pcxhr_proc_sync.textsHR22, i32 1, i32 1)
  %42 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx12.3, align 4
  %44 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sample_rate, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.133, ptr noundef %43, i32 noundef %45) #10
  %46 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i.4 = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.4)
  %tobool.not.i.4 = icmp sgt i8 %bf.load.i.4, -1
  br i1 %tobool.not.i.4, label %if.else.i.4, label %if.then.i.4

if.then.i.4:                                      ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.4 = call i32 @hr222_get_external_clock(ptr noundef %3, i32 noundef 5, ptr noundef nonnull %sample_rate) #10
  br label %pcxhr_get_external_clock.exit.4

if.else.i.4:                                      ; preds = %if.end10.3
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.4 = call fastcc i32 @pcxhr_sub_get_external_clock(ptr noundef %3, i32 noundef 5, ptr noundef nonnull %sample_rate) #10
  br label %pcxhr_get_external_clock.exit.4

pcxhr_get_external_clock.exit.4:                  ; preds = %if.else.i.4, %if.then.i.4
  %retval.0.i.4 = phi i32 [ %call.i.4, %if.then.i.4 ], [ %call1.i.4, %if.else.i.4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.4)
  %tobool8.not.4 = icmp eq i32 %retval.0.i.4, 0
  br i1 %tobool8.not.4, label %if.end10.4, label %pcxhr_get_external_clock.exit.4.for.end_crit_edge

pcxhr_get_external_clock.exit.4.for.end_crit_edge: ; preds = %pcxhr_get_external_clock.exit.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end10.4:                                       ; preds = %pcxhr_get_external_clock.exit.4
  %47 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buffer, align 4
  %arrayidx12.4 = select i1 %tobool.not, ptr getelementptr inbounds ([7 x ptr], ptr @pcxhr_proc_sync.textsPCXHR, i32 0, i32 5), ptr getelementptr ([3 x ptr], ptr @pcxhr_proc_sync.textsHR22, i32 1, i32 2)
  %49 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx12.4, align 4
  %51 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sample_rate, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %48, ptr noundef nonnull @.str.133, ptr noundef %50, i32 noundef %52) #10
  %53 = ptrtoint ptr %is_hr_stereo to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.i.5 = load i8, ptr %is_hr_stereo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.5)
  %tobool.not.i.5 = icmp sgt i8 %bf.load.i.5, -1
  br i1 %tobool.not.i.5, label %if.else.i.5, label %if.then.i.5

if.then.i.5:                                      ; preds = %if.end10.4
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.5 = call i32 @hr222_get_external_clock(ptr noundef %3, i32 noundef 6, ptr noundef nonnull %sample_rate) #10
  br label %pcxhr_get_external_clock.exit.5

if.else.i.5:                                      ; preds = %if.end10.4
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.5 = call fastcc i32 @pcxhr_sub_get_external_clock(ptr noundef %3, i32 noundef 6, ptr noundef nonnull %sample_rate) #10
  br label %pcxhr_get_external_clock.exit.5

pcxhr_get_external_clock.exit.5:                  ; preds = %if.else.i.5, %if.then.i.5
  %retval.0.i.5 = phi i32 [ %call.i.5, %if.then.i.5 ], [ %call1.i.5, %if.else.i.5 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.5)
  %tobool8.not.5 = icmp eq i32 %retval.0.i.5, 0
  br i1 %tobool8.not.5, label %if.end10.5, label %pcxhr_get_external_clock.exit.5.for.end_crit_edge

pcxhr_get_external_clock.exit.5.for.end_crit_edge: ; preds = %pcxhr_get_external_clock.exit.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end10.5:                                       ; preds = %pcxhr_get_external_clock.exit.5
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %buffer, align 4
  %arrayidx12.5 = select i1 %tobool.not, ptr getelementptr inbounds ([7 x ptr], ptr @pcxhr_proc_sync.textsPCXHR, i32 0, i32 6), ptr getelementptr ([3 x ptr], ptr @pcxhr_proc_sync.textsHR22, i32 2, i32 0)
  %56 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx12.5, align 4
  %58 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sample_rate, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %55, ptr noundef nonnull @.str.133, ptr noundef %57, i32 noundef %59) #10
  br label %for.end

for.end:                                          ; preds = %if.end10.5, %pcxhr_get_external_clock.exit.5.for.end_crit_edge, %pcxhr_get_external_clock.exit.4.for.end_crit_edge, %pcxhr_get_external_clock.exit.3.for.end_crit_edge, %pcxhr_get_external_clock.exit.2.for.end_crit_edge, %if.end10.1.for.end_crit_edge, %pcxhr_get_external_clock.exit.1.for.end_crit_edge, %pcxhr_get_external_clock.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sample_rate) #10
  br label %if.end15

if.else13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %61, ptr noundef nonnull @.str.122) #10
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %for.end
  %62 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %63, ptr noundef nonnull @.str.123) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcxhr_proc_gpio_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr2 = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr2, align 4
  %dsp_loaded = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %dsp_loaded to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dsp_loaded, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %value, align 4
  %call = call i32 @hr222_read_gpio(ptr noundef %3, i32 noundef 1, ptr noundef nonnull %value) #10
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.134, i32 noundef %10) #10
  %call4 = call i32 @hr222_read_gpio(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %value) #10
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %value, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.135, i32 noundef %14) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.122) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.123) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcxhr_proc_gpo_write(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  %line = alloca [64 x i8], align 1
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr2 = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr2, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %line) #10
  %4 = call ptr @memset(ptr %line, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %value, align 4, !annotation !357
  %dsp_loaded = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %dsp_loaded to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dsp_loaded, align 4
  %and = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call13 = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool3.not14 = icmp eq i32 %call13, 0
  br i1 %tobool3.not14, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.cleanup_crit_edge

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call5 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %line, ptr noundef nonnull @.str.136, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 1
  br i1 %cmp.not, label %if.end7, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

if.end7:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 4
  %call8 = call i32 @hr222_write_gpo(ptr noundef %3, i32 noundef %9) #10
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end7, %while.body.while.cond.backedge_crit_edge
  %call = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 64) #10
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.cleanup_crit_edge

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %line) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcxhr_proc_ltc(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  %rmh = alloca %struct.pcxhr_rmh, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %mgr2 = getelementptr inbounds %struct.snd_pcxhr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mgr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mgr2, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %rmh) #10
  %4 = call ptr @memset(ptr %rmh, i32 255, i32 104)
  %dsp_loaded = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %dsp_loaded to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dsp_loaded, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.122) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %capture_ltc = getelementptr inbounds %struct.pcxhr_mgr, ptr %3, i32 0, i32 18
  %9 = ptrtoint ptr %capture_ltc to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %capture_ltc, align 4
  %10 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not = icmp eq i8 %10, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then5:                                         ; preds = %if.end
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 26) #10
  %cmd = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 4
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd, align 4
  %or = or i32 %12, 1
  store i32 %or, ptr %cmd, align 4
  %call = call i32 @pcxhr_send_msg(ptr noundef %3, ptr noundef nonnull %rmh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %14, ptr noundef nonnull @.str.137, i32 noundef %call) #10
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  %15 = ptrtoint ptr %capture_ltc to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load10 = load i8, ptr %capture_ltc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load10)
  %tobool13.not = icmp sgt i8 %bf.load10, -1
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = call i32 @hr222_manage_timecode(ptr noundef %3, i32 noundef 1) #10
  br label %if.end17

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = call i32 @pcxhr_write_io_num_reg_cont(ptr noundef %3, i32 noundef 2048, i32 noundef 2048, ptr noundef null) #10
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %16 = ptrtoint ptr %capture_ltc to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load19 = load i8, ptr %capture_ltc, align 4
  %bf.set = or i8 %bf.load19, 2
  store i8 %bf.set, ptr %capture_ltc, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.end.if.end21_crit_edge
  call void @pcxhr_init_rmh(ptr noundef nonnull %rmh, i32 noundef 25) #10
  %call22 = call i32 @pcxhr_send_msg(ptr noundef %3, ptr noundef nonnull %rmh) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end26, label %if.then24

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.138, i32 noundef %call22) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %stat = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5
  %19 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stat, align 4
  %shr = lshr i32 %20, 8
  %and28 = and i32 %shr, 3
  %mul = mul nuw nsw i32 %and28, 10
  %and31 = and i32 %20, 15
  %add = add nuw nsw i32 %mul, %and31
  %arrayidx33 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx33, align 4
  %shr34 = lshr i32 %22, 16
  %and35 = and i32 %shr34, 7
  %mul36 = mul nuw nsw i32 %and35, 10
  %shr39 = lshr i32 %22, 8
  %and40 = and i32 %shr39, 15
  %add41 = add nuw nsw i32 %mul36, %and40
  %and44 = and i32 %22, 7
  %mul45 = mul nuw nsw i32 %and44, 10
  %arrayidx47 = getelementptr inbounds %struct.pcxhr_rmh, ptr %rmh, i32 0, i32 5, i32 2
  %23 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx47, align 4
  %shr48 = lshr i32 %24, 16
  %and49 = and i32 %shr48, 15
  %add50 = add nuw nsw i32 %and49, %mul45
  %shr53 = lshr i32 %24, 8
  %and54 = and i32 %shr53, 3
  %mul55 = mul nuw nsw i32 %and54, 10
  %and58 = and i32 %24, 15
  %add59 = add nuw nsw i32 %mul55, %and58
  %25 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %26, ptr noundef nonnull @.str.139, i32 noundef %add, i32 noundef %add41, i32 noundef %add50, i32 noundef %add59) #10
  %27 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer, align 4
  %29 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stat, align 4
  %and64 = and i32 %30, 65535
  %31 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx33, align 4
  %and67 = and i32 %32, 16777215
  %33 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx47, align 4
  %and70 = and i32 %34, 16777215
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %28, ptr noundef nonnull @.str.140, i32 noundef %and64, i32 noundef %and67, i32 noundef %and70) #10
  %35 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %stat, align 4
  %and73 = and i32 %36, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.then75, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then75:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %38, ptr noundef nonnull @.str.141) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %if.end26.cleanup_crit_edge, %if.then24, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %rmh) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hr222_read_gpio(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_get_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hr222_write_gpo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hr222_manage_timecode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !61, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !77, !78, !79, !81, !82, !84, !85, !86, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !110, !111, !113, !114, !115, !116, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !157, !159, !161, !163, !164, !165, !166, !168, !169, !170, !172, !174, !175, !177, !178, !180, !181, !183, !185, !186, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !266, !267, !269, !271, !273, !275, !277, !279, !281, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346}
!llvm.module.flags = !{!348, !349, !350, !351, !352, !353, !354, !355}
!llvm.ident = !{!356}

!0 = !{ptr @__UNIQUE_ID_author242, !1, !"__UNIQUE_ID_author242", i1 false, i1 false}
!1 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_description243, !3, !"__UNIQUE_ID_description243", i1 false, i1 false}
!3 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 36, i32 1}
!4 = !{ptr @__UNIQUE_ID_file244, !5, !"__UNIQUE_ID_file244", i1 false, i1 false}
!5 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 37, i32 1}
!6 = !{ptr @__UNIQUE_ID_license245, !5, !"__UNIQUE_ID_license245", i1 false, i1 false}
!7 = !{ptr @__param_index, !8, !"__param_index", i1 false, i1 false}
!8 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 44, i32 1}
!9 = !{ptr @__UNIQUE_ID_indextype246, !8, !"__UNIQUE_ID_indextype246", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_index247, !11, !"__UNIQUE_ID_index247", i1 false, i1 false}
!11 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 45, i32 1}
!12 = !{ptr @__param_id, !13, !"__param_id", i1 false, i1 false}
!13 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 46, i32 1}
!14 = !{ptr @__UNIQUE_ID_idtype248, !13, !"__UNIQUE_ID_idtype248", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_id249, !16, !"__UNIQUE_ID_id249", i1 false, i1 false}
!16 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 47, i32 1}
!17 = !{ptr @__param_enable, !18, !"__param_enable", i1 false, i1 false}
!18 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 48, i32 1}
!19 = !{ptr @__UNIQUE_ID_enabletype250, !18, !"__UNIQUE_ID_enabletype250", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_enable251, !21, !"__UNIQUE_ID_enable251", i1 false, i1 false}
!21 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 49, i32 1}
!22 = !{ptr @__param_mono, !23, !"__param_mono", i1 false, i1 false}
!23 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 50, i32 1}
!24 = !{ptr @__UNIQUE_ID_monotype252, !23, !"__UNIQUE_ID_monotype252", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_mono253, !26, !"__UNIQUE_ID_mono253", i1 false, i1 false}
!26 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 51, i32 1}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1135, i32 31}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1140, i32 3}
!31 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pcxhr_create_pcm._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @pcxhr_create_pcm._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__initcall__kmod_snd_pcxhr__270_1666_pcxhr_driver_init6, !38, !"__initcall__kmod_snd_pcxhr__270_1666_pcxhr_driver_init6", i1 false, i1 false}
!38 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1666, i32 1}
!39 = !{ptr @__exitcall_pcxhr_driver_exit, !38, !"__exitcall_pcxhr_driver_exit", i1 false, i1 false}
!40 = !{ptr @__param_str_index, !8, !"__param_str_index", i1 false, i1 false}
!41 = !{ptr @__param_arr_index, !8, !"__param_arr_index", i1 false, i1 false}
!42 = !{ptr @index, !43, !"index", i1 false, i1 false}
!43 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 39, i32 12}
!44 = !{ptr @__param_str_id, !13, !"__param_str_id", i1 false, i1 false}
!45 = !{ptr @__param_arr_id, !13, !"__param_arr_id", i1 false, i1 false}
!46 = !{ptr @id, !47, !"id", i1 false, i1 false}
!47 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 40, i32 14}
!48 = !{ptr @__param_str_enable, !18, !"__param_str_enable", i1 false, i1 false}
!49 = !{ptr @__param_arr_enable, !18, !"__param_arr_enable", i1 false, i1 false}
!50 = !{ptr @enable, !51, !"enable", i1 false, i1 false}
!51 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 41, i32 13}
!52 = !{ptr @__param_str_mono, !23, !"__param_str_mono", i1 false, i1 false}
!53 = !{ptr @__param_arr_mono, !23, !"__param_arr_mono", i1 false, i1 false}
!54 = !{ptr @mono, !55, !"mono", i1 false, i1 false}
!55 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 42, i32 13}
!56 = !{ptr @.str.6, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 346, i32 2}
!58 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.8, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @pcxhr_sub_set_clock.__UNIQUE_ID_ddebug254, !57, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!61 = !{ptr @.str.9, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 369, i32 2}
!63 = !{ptr @pcxhr_sub_set_clock.__UNIQUE_ID_ddebug255, !62, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!64 = !{ptr @.str.10, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 273, i32 5}
!66 = !{ptr @.str.11, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @pcxhr_get_clock_reg._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @pcxhr_get_clock_reg._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.12, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 469, i32 2}
!71 = !{ptr @.str.13, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @pcxhr_sub_get_external_clock.__UNIQUE_ID_ddebug256, !70, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!73 = !{ptr @pcxhr_ops, !74, !"pcxhr_ops", i1 false, i1 false}
!74 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1118, i32 33}
!75 = !{ptr @.str.14, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 999, i32 3}
!77 = !{ptr @.str.15, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @pcxhr_open.__UNIQUE_ID_ddebug264, !76, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!79 = !{ptr @.str.16, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1003, i32 3}
!81 = !{ptr @pcxhr_open.__UNIQUE_ID_ddebug265, !80, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!82 = !{ptr @.str.17, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1013, i32 3}
!84 = !{ptr @pcxhr_open._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @pcxhr_open._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @pcxhr_caps, !87, !"pcxhr_caps", i1 false, i1 false}
!87 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 958, i32 38}
!88 = !{ptr @.str.18, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1079, i32 2}
!90 = !{ptr @.str.19, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @pcxhr_close.__UNIQUE_ID_ddebug266, !89, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!92 = !{ptr @.str.20, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 891, i32 3}
!94 = !{ptr @.str.21, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @pcxhr_hardware_timer._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @pcxhr_hardware_timer._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.22, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 905, i32 2}
!99 = !{ptr @.str.23, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @pcxhr_prepare.__UNIQUE_ID_ddebug263, !98, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!101 = !{ptr @.str.24, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 831, i32 3}
!103 = !{ptr @.str.25, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @pcxhr_trigger.__UNIQUE_ID_ddebug260, !102, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!105 = !{ptr @.str.26, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 844, i32 4}
!107 = !{ptr @pcxhr_trigger.__UNIQUE_ID_ddebug261, !106, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!108 = !{ptr @.str.27, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 859, i32 3}
!110 = !{ptr @pcxhr_trigger.__UNIQUE_ID_ddebug262, !109, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!111 = !{ptr @.str.28, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 724, i32 3}
!113 = !{ptr @.str.29, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @pcxhr_start_linked_stream._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @pcxhr_start_linked_stream._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.30, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 728, i32 2}
!118 = !{ptr @pcxhr_start_linked_stream.__UNIQUE_ID_ddebug258, !117, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!119 = !{ptr @.str.32, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 735, i32 3}
!121 = !{ptr @pcxhr_start_linked_stream._entry.31, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @pcxhr_start_linked_stream._entry_ptr.33, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.35, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 780, i32 3}
!125 = !{ptr @pcxhr_start_linked_stream._entry.34, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @pcxhr_start_linked_stream._entry_ptr.36, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.37, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 814, i32 2}
!129 = !{ptr @pcxhr_start_linked_stream.__UNIQUE_ID_ddebug259, !128, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!130 = !{ptr @.str.38, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 572, i32 3}
!132 = !{ptr @.str.39, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @pcxhr_set_format._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @pcxhr_set_format._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.41, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 617, i32 3}
!137 = !{ptr @pcxhr_set_format._entry.40, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @pcxhr_set_format._entry_ptr.42, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.43, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 632, i32 2}
!141 = !{ptr @.str.44, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @pcxhr_update_r_buffer.__UNIQUE_ID_ddebug257, !140, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!143 = !{ptr @.str.45, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 655, i32 3}
!145 = !{ptr @pcxhr_update_r_buffer._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @pcxhr_update_r_buffer._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.46, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 501, i32 4}
!149 = !{ptr @.str.47, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @pcxhr_set_stream_state._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @pcxhr_set_stream_state._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @pcxhr_set_stream_state._entry.48, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 526, i32 3}
!154 = !{ptr @pcxhr_set_stream_state._entry_ptr.49, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @pcxhr_driver, !156, !"pcxhr_driver", i1 false, i1 false}
!156 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1659, i32 26}
!157 = !{ptr @pcxhr_ids, !158, !"pcxhr_ids", i1 false, i1 false}
!158 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 91, i32 35}
!159 = !{ptr @pcxhr_probe.dev, !160, !"dev", i1 false, i1 false}
!160 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1481, i32 13}
!161 = !{ptr @.str.50, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1503, i32 3}
!163 = !{ptr @.str.51, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @pcxhr_probe._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @pcxhr_probe._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.53, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1557, i32 3}
!168 = !{ptr @pcxhr_probe._entry.52, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @pcxhr_probe._entry_ptr.54, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.55, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1564, i32 4}
!172 = !{ptr @pcxhr_probe.__key, !173, !"__key", i1 false, i1 false}
!173 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1568, i32 2}
!174 = !{ptr @.str.56, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @pcxhr_probe.__key.57, !176, !"__key", i1 false, i1 false}
!176 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1569, i32 2}
!177 = !{ptr @.str.58, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @pcxhr_probe.__key.59, !179, !"__key", i1 false, i1 false}
!179 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1572, i32 2}
!180 = !{ptr @.str.60, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.61, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1597, i32 34}
!183 = !{ptr @.str.63, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1603, i32 4}
!185 = !{ptr @pcxhr_probe._entry.62, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @pcxhr_probe._entry_ptr.64, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.65, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1608, i32 24}
!189 = !{ptr @.str.66, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1610, i32 5}
!191 = !{ptr @.str.67, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1612, i32 5}
!193 = !{ptr @.str.68, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 139, i32 27}
!195 = !{ptr @.str.69, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 140, i32 27}
!197 = !{ptr @.str.70, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 141, i32 27}
!199 = !{ptr @.str.71, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 142, i32 27}
!201 = !{ptr @.str.72, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 143, i32 27}
!203 = !{ptr @.str.73, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 144, i32 27}
!205 = !{ptr @.str.74, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 145, i32 27}
!207 = !{ptr @.str.75, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 146, i32 27}
!209 = !{ptr @.str.76, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 147, i32 27}
!211 = !{ptr @.str.77, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 148, i32 27}
!213 = !{ptr @.str.78, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 149, i32 27}
!215 = !{ptr @.str.79, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 150, i32 27}
!217 = !{ptr @.str.80, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 151, i32 27}
!219 = !{ptr @.str.81, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 152, i32 27}
!221 = !{ptr @.str.82, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 153, i32 27}
!223 = !{ptr @.str.83, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 154, i32 27}
!225 = !{ptr @.str.84, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 155, i32 27}
!227 = !{ptr @.str.85, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 156, i32 27}
!229 = !{ptr @.str.86, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 157, i32 27}
!231 = !{ptr @.str.87, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 158, i32 27}
!233 = !{ptr @.str.88, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 159, i32 27}
!235 = !{ptr @.str.89, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 160, i32 27}
!237 = !{ptr @.str.90, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 161, i32 27}
!239 = !{ptr @.str.91, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 162, i32 27}
!241 = !{ptr @.str.92, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 163, i32 27}
!243 = !{ptr @.str.93, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 164, i32 27}
!245 = !{ptr @.str.94, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 165, i32 27}
!247 = !{ptr @.str.95, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 166, i32 27}
!249 = !{ptr @.str.96, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 167, i32 27}
!251 = !{ptr @.str.97, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 168, i32 27}
!253 = !{ptr @.str.98, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 169, i32 27}
!255 = !{ptr @.str.99, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 170, i32 27}
!257 = !{ptr @.str.100, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 171, i32 27}
!259 = !{ptr @.str.101, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 172, i32 27}
!261 = !{ptr @pcxhr_board_params, !262, !"pcxhr_board_params", i1 false, i1 false}
!262 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 138, i32 38}
!263 = !{ptr @.str.102, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1453, i32 3}
!265 = !{ptr @.str.103, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @pcxhr_free.__UNIQUE_ID_ddebug267, !264, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!267 = !{ptr @pcxhr_create.ops, !268, !"ops", i1 false, i1 false}
!268 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1181, i32 37}
!269 = !{ptr @.str.104, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1427, i32 35}
!271 = !{ptr @.str.105, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1428, i32 35}
!273 = !{ptr @.str.106, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1431, i32 36}
!275 = !{ptr @.str.107, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1434, i32 35}
!277 = !{ptr @.str.108, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1223, i32 2}
!279 = !{ptr @.str.109, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1231, i32 3}
!281 = !{ptr @.str.110, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.111, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1233, i32 3}
!284 = !{ptr @.str.112, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1236, i32 4}
!286 = !{ptr @.str.113, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1238, i32 4}
!288 = !{ptr @.str.114, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1255, i32 5}
!290 = !{ptr @.str.115, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1256, i32 5}
!292 = !{ptr @.str.116, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1260, i32 3}
!294 = !{ptr @.str.117, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1262, i32 3}
!296 = !{ptr @.str.118, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1264, i32 3}
!298 = !{ptr @.str.119, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1266, i32 3}
!300 = !{ptr @.str.120, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1268, i32 3}
!302 = !{ptr @.str.121, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1281, i32 5}
!304 = !{ptr @.str.122, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1285, i32 3}
!306 = !{ptr @.str.123, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1286, i32 2}
!308 = !{ptr @.str.124, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1294, i32 3}
!310 = !{ptr @.str.125, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1294, i32 15}
!312 = !{ptr @.str.126, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1294, i32 27}
!314 = !{ptr @pcxhr_proc_sync.textsHR22, !315, !"textsHR22", i1 false, i1 false}
!315 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1293, i32 21}
!316 = !{ptr @.str.127, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1297, i32 15}
!318 = !{ptr @.str.128, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1298, i32 12}
!320 = !{ptr @.str.129, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1298, i32 21}
!322 = !{ptr @.str.130, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1298, i32 30}
!324 = !{ptr @pcxhr_proc_sync.textsPCXHR, !325, !"textsPCXHR", i1 false, i1 false}
!325 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1296, i32 21}
!326 = !{ptr @.str.131, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1311, i32 2}
!328 = !{ptr @.str.132, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1313, i32 2}
!330 = !{ptr @.str.133, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1322, i32 4}
!332 = !{ptr @.str.134, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1340, i32 3}
!334 = !{ptr @.str.135, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1342, i32 3}
!336 = !{ptr @.str.136, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1358, i32 20}
!338 = !{ptr @.str.137, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1393, i32 4}
!340 = !{ptr @.str.138, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1406, i32 3}
!342 = !{ptr @.str.139, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1414, i32 2}
!344 = !{ptr @.str.140, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1416, i32 2}
!346 = !{ptr @.str.141, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/pci/pcxhr/pcxhr.c", i32 1421, i32 3}
!348 = !{i32 1, !"wchar_size", i32 2}
!349 = !{i32 1, !"min_enum_size", i32 4}
!350 = !{i32 8, !"branch-target-enforcement", i32 0}
!351 = !{i32 8, !"sign-return-address", i32 0}
!352 = !{i32 8, !"sign-return-address-all", i32 0}
!353 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!354 = !{i32 7, !"uwtable", i32 1}
!355 = !{i32 7, !"frame-pointer", i32 2}
!356 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!357 = !{!"auto-init"}
!358 = !{i64 2148762327, i64 2148762332, i64 2148762345, i64 2148762389, i64 2148762423, i64 2148762444}
!359 = !{i32 0, i32 33}
!360 = !{!"branch_weights", i32 1, i32 2000}
!361 = !{i8 0, i8 2}
