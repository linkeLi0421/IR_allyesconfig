; ModuleID = '/llk/IR_all_yes/sound/usb/usx2y/us122l.c_pt.bc'
source_filename = "../sound/usb/usx2y/us122l.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_usb_midi_endpoint_info = type { i8, i8, i8, i8, i16, i16, [16 x i16], [16 x i16] }
%struct.snd_usb_audio_quirk = type { ptr, ptr, i16, i16, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.usb_stream_kernel = type { ptr, ptr, i32, [4 x ptr], ptr, ptr, [4 x ptr], ptr, ptr, ptr, i32, %struct.wait_queue_head, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.usb_stream = type { %struct.usb_stream_config, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.usb_stream_packet], i32, i32, i32, i32, i32, i32, [0 x %struct.usb_stream_packet] }
%struct.usb_stream_config = type { i32, i32, i32, i32 }
%struct.usb_stream_packet = type { i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.us122l = type { ptr, i32, i32, %struct.usb_stream_kernel, %struct.mutex, ptr, i32, ptr, ptr, %struct.list_head, %struct.atomic_t, i8 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.snd_hwdep = type { ptr, %struct.list_head, i32, [32 x i8], [80 x i8], i32, i32, i32, %struct.snd_hwdep_ops, %struct.wait_queue_head, ptr, ptr, %struct.device, %struct.mutex, i32, i32, i8 }
%struct.snd_hwdep_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%union.anon.14 = type { i32 }

@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/usb/usx2y/usb_stream.c\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014a size exceeds 128*PAGE_SIZE\0A\00", [32 x i8] zeroinitializer }, align 32
@usb_stream_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014us122l: couldn't allocate read buffer\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb_stream_new\00", [17 x i8] zeroinitializer }, align 32
@usb_stream_new._entry_ptr = internal global ptr @usb_stream_new._entry, section ".printk_index", align 4
@usb_stream_new._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014us122l: couldn't allocate write buffer\0A\00", [54 x i8] zeroinitializer }, align 32
@usb_stream_new._entry_ptr.6 = internal global ptr @usb_stream_new._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013usb_submit_urb(sk->inurb[%i]) returned %i\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013usb_submit_urb(sk->outurb[%i]) returned %i\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017u[%i] start_frames differ in:%u out:%u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\017%i %i\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017goto dotry;\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014couldn't start all urbs on the same start_frame.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\017%i\0A\00", [26 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author239 = internal constant [64 x i8] c"snd_usb_us122l.author=Karsten Wiese <fzu@wemgehoertderstaat.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [54 x i8] c"snd_usb_us122l.description=TASCAM US-122L Version 0.5\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [51 x i8] c"snd_usb_us122l.file=sound/usb/usx2y/snd-usb-us122l\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [27 x i8] c"snd_usb_us122l.license=GPL\00", section ".modinfo", align 1
@__param_str_index = internal constant [21 x i8] c"snd_usb_us122l.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype243 = internal constant [43 x i8] c"snd_usb_us122l.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index244 = internal constant [51 x i8] c"snd_usb_us122l.parm=index:Index value for US-122L.\00", section ".modinfo", align 1
@__param_str_id = internal constant [18 x i8] c"snd_usb_us122l.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype245 = internal constant [42 x i8] c"snd_usb_us122l.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id246 = internal constant [46 x i8] c"snd_usb_us122l.parm=id:ID string for US-122L.\00", section ".modinfo", align 1
@__param_str_enable = internal constant [22 x i8] c"snd_usb_us122l.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype247 = internal constant [45 x i8] c"snd_usb_us122l.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable248 = internal constant [43 x i8] c"snd_usb_us122l.parm=enable:Enable US-122L.\00", section ".modinfo", align 1
@__initcall__kmod_snd_usb_us122l__249_740_snd_us122l_usb_driver_init6 = internal global ptr @snd_us122l_usb_driver_init, section ".initcall6.init", align 4
@snd_us122l_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.26, ptr @snd_us122l_probe, ptr @snd_us122l_disconnect, ptr null, ptr @snd_us122l_suspend, ptr @snd_us122l_resume, ptr @snd_us122l_resume, ptr null, ptr null, ptr @snd_us122l_usb_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 64 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_snd_us122l_usb_driver_exit = internal global ptr @snd_us122l_usb_driver_exit, section ".exitcall.exit", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\014status=%i\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\014%i\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%i %i %i %i\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\014%i %i %i\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014invalid sync_packet = %i; p=%i nop=%i %i %x %x %x > %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014invalid outsize = %i\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\014idle=%i\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\013%i\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014underrun, status=%u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\017idle=%i ul=%i ps=%i\0A\00", [41 x i8] zeroinitializer }, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_usb_us122l\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd-usb-us122l\00", [17 x i8] zeroinitializer }, align 32
@snd_us122l_usb_id_table = internal constant { [5 x %struct.usb_device_id], [40 x i8] } { [5 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1604, i16 -32754, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1604, i16 -32753, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1604, i16 -32735, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1604, i16 -32736, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/usb/usx2y/us122l.c\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013disable ehci-hcd to run US-144\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\017%p:%i\0A\00", [23 x i8] zeroinitializer }, align 32
@snd_us122l_card_used = internal global { [32 x i32], [32 x i8] } zeroinitializer, align 32
@usx2y_create_card.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&US122L(card)->mutex\00", [43 x i8] zeroinitializer }, align 32
@usx2y_create_card.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&US122L(card)->sk.sleep\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"USB US-122L\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TASCAM US-122L\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s (%x:%x if %d at %03d/%03d)\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013usb_set_interface error\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013us122l_create_usbmidi error %i\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013us122l_set_sample_rate error\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013%s error %i\0A\00", [17 x i8] zeroinitializer }, align 32
@__func__.us122l_start = private unnamed_addr constant [13 x i8] c"us122l_start\00", align 1
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%d: cannot set freq %d to ep 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@us144_create_usbmidi.quirk_data = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 4, i8 0, i8 3, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@us144_create_usbmidi.quirk = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.41, ptr @.str.42, i16 0, i16 13, ptr @us144_create_usbmidi.quirk_data }, [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"US144\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"US-122L\00", [24 x i8] zeroinitializer }, align 32
@us122l_create_usbmidi.quirk_data = internal constant { %struct.snd_usb_midi_endpoint_info, [56 x i8] } { %struct.snd_usb_midi_endpoint_info { i8 4, i8 0, i8 3, i8 0, i16 1, i16 1, [16 x i16] zeroinitializer, [16 x i16] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@us122l_create_usbmidi.quirk = internal constant { %struct.snd_usb_audio_quirk, [16 x i8] } { %struct.snd_usb_audio_quirk { ptr @.str.43, ptr @.str.42, i16 1, i16 13, ptr @us122l_create_usbmidi.quirk_data }, [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"US122L\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"USB STREAM\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"/dev/bus/usb/%03d/%03d/hwdeppcm\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\017%p %p\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%lu %u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\014%lu > %u\0A\00", [20 x i8] zeroinitializer }, align 32
@usb_stream_hwdep_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @usb_stream_hwdep_vm_open, ptr @usb_stream_hwdep_vm_close, ptr null, ptr null, ptr null, ptr @usb_stream_hwdep_vm_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.52 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967188, i64 4294967294]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967188, i64 4294967294]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967188, i64 4294967294]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967188, i64 4294967294]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 44100, i64 48000, i64 88200]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 88200, i64 96000]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 194, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 201, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 220, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 713, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 720, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 727, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 733, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 740, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 743, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 758, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant [22 x i8] c"snd_us122l_usb_driver\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 729, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 623, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 633, i32 5 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 562, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 572, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 321, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 330, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 340, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 380, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 463, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant [32 x i8] c"../sound/usb/usx2y/usb_stream.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 43, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 24, i32 12 }
@___asan_gen_.137 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 25, i32 14 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 27, i32 13 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 740, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 730, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant [24 x i8] c"snd_us122l_usb_id_table\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 702, i32 35 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 575, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 579, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [21 x i8] c"snd_us122l_card_used\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 39, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 519, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 520, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 523, i32 23 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 524, i32 27 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 525, i32 26 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 448, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 469, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 329, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 335, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 292, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 65, i32 49 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 71, i32 42 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 72, i32 18 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 73, i32 19 }
@___asan_gen_.212 = private unnamed_addr constant [11 x i8] c"quirk_data\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 43, i32 49 }
@___asan_gen_.215 = private unnamed_addr constant [6 x i8] c"quirk\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 49, i32 42 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 50, i32 18 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 422, i32 28 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 435, i32 20 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 158, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 156, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 216, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 220, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [24 x i8] c"usb_stream_hwdep_vm_ops\00", align 1
@___asan_gen_.240 = private constant [28 x i8] c"../sound/usb/usx2y/us122l.c\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 147, i32 42 }
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 1160, i32 2 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_enable248, ptr @__UNIQUE_ID_enabletype247, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_id246, ptr @__UNIQUE_ID_idtype245, ptr @__UNIQUE_ID_index244, ptr @__UNIQUE_ID_indextype243, ptr @__UNIQUE_ID_license242, ptr @__exitcall_snd_us122l_usb_driver_exit, ptr @__initcall__kmod_snd_usb_us122l__249_740_snd_us122l_usb_driver_init6, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @snd_us122l_usb_driver_exit, ptr @usb_stream_new._entry, ptr @usb_stream_new._entry.4, ptr @usb_stream_new._entry_ptr, ptr @usb_stream_new._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @snd_us122l_usb_driver, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @index, ptr @id, ptr @enable, ptr @.str.25, ptr @.str.26, ptr @snd_us122l_usb_id_table, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @snd_us122l_card_used, ptr @usx2y_create_card.__key, ptr @.str.30, ptr @usx2y_create_card.__key.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @us144_create_usbmidi.quirk_data, ptr @us144_create_usbmidi.quirk, ptr @.str.41, ptr @.str.42, ptr @us122l_create_usbmidi.quirk_data, ptr @us122l_create_usbmidi.quirk, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @usb_stream_hwdep_vm_ops, ptr @.str.52], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stream_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stream_new._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us122l_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us122l_usb_id_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_us122l_card_used to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usx2y_create_card.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usx2y_create_card.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us144_create_usbmidi.quirk_data to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us144_create_usbmidi.quirk to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us122l_create_usbmidi.quirk_data to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @us122l_create_usbmidi.quirk to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_stream_hwdep_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_stream_free(ptr nocapture noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %1) #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 0
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx3, align 4
  tail call void @usb_free_urb(ptr noundef %4) #12
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx3, align 4
  %arrayidx.1 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_free_urb(ptr noundef %7) #12
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx.1, align 4
  %arrayidx3.1 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3.1, align 4
  tail call void @usb_free_urb(ptr noundef %10) #12
  %11 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx3.1, align 4
  %arrayidx.2 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_free_urb(ptr noundef %13) #12
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx.2, align 4
  %arrayidx3.2 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx3.2, align 4
  tail call void @usb_free_urb(ptr noundef %16) #12
  %17 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx3.2, align 4
  %arrayidx.3 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_free_urb(ptr noundef %19) #12
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx.3, align 4
  %arrayidx3.3 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 3
  %21 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx3.3, align 4
  tail call void @usb_free_urb(ptr noundef %22) #12
  %23 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx3.3, align 4
  %24 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %write_page = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 1
  %26 = ptrtoint ptr %write_page to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_page, align 4
  %tobool7.not = icmp eq ptr %27, null
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %write_size = getelementptr inbounds %struct.usb_stream, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %write_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %write_size, align 4
  tail call void @free_pages_exact(ptr noundef nonnull %27, i32 noundef %29) #12
  %30 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %write_page, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %read_size = getelementptr inbounds %struct.usb_stream, ptr %25, i32 0, i32 1
  %31 = ptrtoint ptr %read_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %read_size, align 4
  tail call void @free_pages_exact(ptr noundef nonnull %25, i32 noundef %32) #12
  %33 = ptrtoint ptr %sk to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %sk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usb_stream_new(ptr noundef %sk, ptr noundef %dev, i32 noundef %in_endpoint, i32 noundef %out_endpoint, i32 noundef %sample_rate, i32 noundef %use_packsize, i32 noundef %period_frames, i32 noundef %frame_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %speed = getelementptr inbounds %struct.usb_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %cond = select i1 %cmp, i32 8000, i32 1000
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 8
  %shl.i = shl i32 %3, 8
  %shl1.i = shl i32 %in_endpoint, 15
  %or.i = or i32 %shl.i, %shl1.i
  %or1 = or i32 %or.i, 128
  %shl1.i126 = shl i32 %out_endpoint, 15
  %or.i127 = or i32 %shl.i, %shl1.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_packsize)
  %tobool.not = icmp eq i32 %use_packsize, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = lshr i32 %or.i, 15
  %and.i = and i32 %4, 15
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %dev, i32 0, i32 21, i32 %and.i
  %5 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %ep.0.i = load ptr, ptr %arrayidx57.i, align 4
  %tobool59.not.i = icmp eq ptr %ep.0.i, null
  br i1 %tobool59.not.i, label %cond.false.cond.end_crit_edge, label %if.end61.i

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end61.i:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i, i32 0, i32 4
  %6 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %8 = and i16 %7, -249
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #12
  %phi.cast144 = zext i16 %9 to i32
  br label %cond.end

cond.end:                                         ; preds = %if.end61.i, %cond.false.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond5 = phi i32 [ %use_packsize, %entry.cond.end_crit_edge ], [ %phi.cast144, %if.end61.i ], [ 0, %cond.false.cond.end_crit_edge ]
  %mul = mul i32 %cond, %period_frames
  %div = udiv i32 %mul, %sample_rate
  %add = add i32 %div, 1
  %add9 = add i32 %div, 8
  %and = and i32 %add9, -8
  %packets.0 = select i1 %cmp, i32 %and, i32 %add
  %mul10 = shl i32 %packets.0, 2
  %add11 = add i32 %cond5, 8
  %mul12 = mul i32 %mul10, %add11
  %add13 = add i32 %mul12, 96
  %10 = lshr i32 %or.i127, 15
  %and.i128 = and i32 %10, 15
  %arrayidx.i = getelementptr %struct.usb_device, ptr %dev, i32 0, i32 22, i32 %and.i128
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %ep.0.i129 = load ptr, ptr %arrayidx.i, align 4
  %tobool59.not.i130 = icmp eq ptr %ep.0.i129, null
  br i1 %tobool59.not.i130, label %cond.end.usb_maxpacket.exit134_crit_edge, label %if.end61.i132

cond.end.usb_maxpacket.exit134_crit_edge:         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %usb_maxpacket.exit134

if.end61.i132:                                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %wMaxPacketSize.i.i131 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i129, i32 0, i32 4
  %12 = ptrtoint ptr %wMaxPacketSize.i.i131 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %wMaxPacketSize.i.i131, align 1
  %14 = and i16 %13, -249
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #12
  %phi.cast = zext i16 %15 to i32
  br label %usb_maxpacket.exit134

usb_maxpacket.exit134:                            ; preds = %if.end61.i132, %cond.end.usb_maxpacket.exit134_crit_edge
  %retval.0.i133 = phi i32 [ %phi.cast, %if.end61.i132 ], [ 0, %cond.end.usb_maxpacket.exit134_crit_edge ]
  %mul17 = mul i32 %mul10, %retval.0.i133
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %add13)
  %cmp18 = icmp ugt i32 %add13, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %mul17)
  %cmp20 = icmp ugt i32 %mul17, 1048575
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp20
  br i1 %or.cond, label %if.then22, label %if.end23

if.then22:                                        ; preds = %usb_maxpacket.exit134
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 194, ptr noundef nonnull @.str.1) #12
  br label %out

if.end23:                                         ; preds = %usb_maxpacket.exit134
  %call24 = tail call noalias ptr @alloc_pages_exact(i32 noundef %add13, i32 noundef 11712) #15
  %16 = ptrtoint ptr %sk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call24, ptr %sk, align 4
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %do.end, label %if.end29

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #16
  br label %out

if.end29:                                         ; preds = %if.end23
  %17 = ptrtoint ptr %call24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %call24, align 4
  %read_size32 = getelementptr inbounds %struct.usb_stream, ptr %call24, i32 0, i32 1
  %18 = ptrtoint ptr %read_size32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add13, ptr %read_size32, align 4
  %sample_rate35 = getelementptr inbounds %struct.usb_stream_config, ptr %call24, i32 0, i32 1
  %19 = ptrtoint ptr %sample_rate35 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sample_rate, ptr %sample_rate35, align 4
  %frame_size38 = getelementptr inbounds %struct.usb_stream_config, ptr %call24, i32 0, i32 3
  %20 = ptrtoint ptr %frame_size38 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %frame_size, ptr %frame_size38, align 4
  %n_o_ps = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 2
  %21 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %packets.0, ptr %n_o_ps, align 4
  %inpackets = getelementptr inbounds %struct.usb_stream, ptr %call24, i32 0, i32 12
  %22 = ptrtoint ptr %inpackets to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul10, ptr %inpackets, align 4
  %period_frames43 = getelementptr inbounds %struct.usb_stream_config, ptr %call24, i32 0, i32 2
  %23 = ptrtoint ptr %period_frames43 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %period_frames, ptr %period_frames43, align 4
  %mul44 = mul i32 %frame_size, %period_frames
  %period_size = getelementptr inbounds %struct.usb_stream, ptr %call24, i32 0, i32 3
  %24 = ptrtoint ptr %period_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul44, ptr %period_size, align 4
  %write_size47 = getelementptr inbounds %struct.usb_stream, ptr %call24, i32 0, i32 2
  %25 = ptrtoint ptr %write_size47 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul17, ptr %write_size47, align 4
  %call48 = tail call noalias ptr @alloc_pages_exact(i32 noundef %mul17, i32 noundef 11712) #15
  %write_page = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 1
  %26 = ptrtoint ptr %write_page to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call48, ptr %write_page, align 4
  %tobool50.not = icmp eq ptr %call48, null
  br i1 %tobool50.not, label %do.end54, label %if.end57

do.end54:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #16
  tail call void @usb_stream_free(ptr noundef %sk)
  br label %cleanup

if.end57:                                         ; preds = %if.end29
  %27 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp59 = icmp eq i32 %28, 2
  %. = select i1 %cmp59, i32 13, i32 10
  %shl.i136 = shl i32 %sample_rate, %.
  %div.i138.sink.in = or i32 %shl.i136, 62
  %div.i138.sink = udiv i32 %div.i138.sink.in, 125
  %29 = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 14
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div.i138.sink, ptr %29, align 4
  %31 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sk, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 96
  %inpackets.i = getelementptr inbounds %struct.usb_stream, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %inpackets.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %inpackets.i, align 4
  %mul.i = shl i32 %34, 3
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %35 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_o_ps, align 4
  %call.i = tail call ptr @usb_alloc_urb(i32 noundef %36, i32 noundef 3264) #12
  %arrayidx.i139 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 0
  %37 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %arrayidx.i139, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end57.if.then69_crit_edge, label %if.end.i140

if.end57.if.then69_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

for.cond.i:                                       ; preds = %if.end.i140
  %38 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n_o_ps, align 4
  %call.1.i = tail call ptr @usb_alloc_urb(i32 noundef %39, i32 noundef 3264) #12
  %arrayidx.1.i = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.1.i, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %call.1.i, null
  br i1 %tobool.not.1.i, label %for.cond.i.if.then69_crit_edge, label %if.end.1.i

for.cond.i.if.then69_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

if.end.1.i:                                       ; preds = %for.cond.i
  %41 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_o_ps, align 4
  %call6.1.i = tail call ptr @usb_alloc_urb(i32 noundef %42, i32 noundef 3264) #12
  %arrayidx7.1.i = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 1
  %43 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call6.1.i, ptr %arrayidx7.1.i, align 4
  %tobool10.not.1.i = icmp eq ptr %call6.1.i, null
  br i1 %tobool10.not.1.i, label %if.end.1.i.if.then69_crit_edge, label %for.cond.1.i

if.end.1.i.if.then69_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

for.cond.1.i:                                     ; preds = %if.end.1.i
  %44 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_o_ps, align 4
  %call.2.i = tail call ptr @usb_alloc_urb(i32 noundef %45, i32 noundef 3264) #12
  %arrayidx.2.i = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.2.i, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %call.2.i, null
  br i1 %tobool.not.2.i, label %for.cond.1.i.if.then69_crit_edge, label %if.end.2.i

for.cond.1.i.if.then69_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

if.end.2.i:                                       ; preds = %for.cond.1.i
  %47 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_o_ps, align 4
  %call6.2.i = tail call ptr @usb_alloc_urb(i32 noundef %48, i32 noundef 3264) #12
  %arrayidx7.2.i = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 2
  %49 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call6.2.i, ptr %arrayidx7.2.i, align 4
  %tobool10.not.2.i = icmp eq ptr %call6.2.i, null
  br i1 %tobool10.not.2.i, label %if.end.2.i.if.then69_crit_edge, label %for.cond.2.i

if.end.2.i.if.then69_crit_edge:                   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

for.cond.2.i:                                     ; preds = %if.end.2.i
  %50 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %n_o_ps, align 4
  %call.3.i = tail call ptr @usb_alloc_urb(i32 noundef %51, i32 noundef 3264) #12
  %arrayidx.3.i = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 3
  %52 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.3.i, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %call.3.i, null
  br i1 %tobool.not.3.i, label %for.cond.2.i.if.then69_crit_edge, label %if.end.3.i

for.cond.2.i.if.then69_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

if.end.3.i:                                       ; preds = %for.cond.2.i
  %53 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_o_ps, align 4
  %call6.3.i = tail call ptr @usb_alloc_urb(i32 noundef %54, i32 noundef 3264) #12
  %arrayidx7.3.i = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 3
  %55 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call6.3.i, ptr %arrayidx7.3.i, align 4
  %tobool10.not.3.i = icmp eq ptr %call6.3.i, null
  br i1 %tobool10.not.3.i, label %if.end.3.i.if.then69_crit_edge, label %for.cond.3.i

if.end.3.i.if.then69_crit_edge:                   ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

for.cond.3.i:                                     ; preds = %if.end.3.i
  %call14.i = tail call fastcc i32 @init_pipe_urbs(ptr noundef %sk, i32 noundef %use_packsize, ptr noundef %arrayidx.i139, ptr noundef %add.ptr2.i, ptr noundef %dev, i32 noundef %or1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %lor.lhs.false.i, label %for.cond.3.i.if.then69_crit_edge

for.cond.3.i.if.then69_crit_edge:                 ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

if.end.i140:                                      ; preds = %if.end57
  %56 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %n_o_ps, align 4
  %call6.i = tail call ptr @usb_alloc_urb(i32 noundef %57, i32 noundef 3264) #12
  %arrayidx7.i = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 0
  %58 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call6.i, ptr %arrayidx7.i, align 4
  %tobool10.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool10.not.i, label %if.end.i140.if.then69_crit_edge, label %for.cond.i

if.end.i140.if.then69_crit_edge:                  ; preds = %if.end.i140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

lor.lhs.false.i:                                  ; preds = %for.cond.3.i
  %59 = ptrtoint ptr %write_page to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %write_page, align 4
  %call18.i = tail call fastcc i32 @init_pipe_urbs(ptr noundef %sk, i32 noundef %use_packsize, ptr noundef %arrayidx7.i, ptr noundef %60, ptr noundef %dev, i32 noundef %or.i127) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end70, label %lor.lhs.false.i.if.then69_crit_edge

lor.lhs.false.i.if.then69_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

if.then69:                                        ; preds = %lor.lhs.false.i.if.then69_crit_edge, %if.end.i140.if.then69_crit_edge, %for.cond.3.i.if.then69_crit_edge, %if.end.3.i.if.then69_crit_edge, %for.cond.2.i.if.then69_crit_edge, %if.end.2.i.if.then69_crit_edge, %for.cond.1.i.if.then69_crit_edge, %if.end.1.i.if.then69_crit_edge, %for.cond.i.if.then69_crit_edge, %if.end57.if.then69_crit_edge
  tail call void @usb_stream_free(ptr noundef %sk)
  br label %cleanup

if.end70:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  %61 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sk, align 4
  %state = getelementptr inbounds %struct.usb_stream, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %state, align 4
  br label %out

out:                                              ; preds = %if.end70, %do.end, %if.then22
  %64 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sk, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then69, %do.end54
  %retval.0 = phi ptr [ %65, %out ], [ null, %if.then69 ], [ null, %do.end54 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @alloc_pages_exact(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_stream_start(ptr nocapture noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 4
  %state = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup57_crit_edge

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup57

if.end:                                           ; preds = %entry
  %inurb = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3
  %4 = ptrtoint ptr %inurb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inurb, align 4
  %complete1.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @i_capture_start, ptr %complete1.i, align 4
  %arrayidx.1.i = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1.i, align 4
  %complete1.1.i = getelementptr inbounds %struct.urb, ptr %8, i32 0, i32 28
  %9 = ptrtoint ptr %complete1.1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @i_capture_start, ptr %complete1.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2.i, align 4
  %complete1.2.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 28
  %12 = ptrtoint ptr %complete1.2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @i_capture_start, ptr %complete1.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.3.i, align 4
  %complete1.3.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 28
  %15 = ptrtoint ptr %complete1.3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @i_capture_start, ptr %complete1.3.i, align 4
  %outurb = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6
  %16 = ptrtoint ptr %outurb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %outurb, align 4
  %complete1.i121 = getelementptr inbounds %struct.urb, ptr %17, i32 0, i32 28
  %18 = ptrtoint ptr %complete1.i121 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @i_playback_start, ptr %complete1.i121, align 4
  %arrayidx.1.i122 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i122 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.1.i122, align 4
  %complete1.1.i123 = getelementptr inbounds %struct.urb, ptr %20, i32 0, i32 28
  %21 = ptrtoint ptr %complete1.1.i123 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @i_playback_start, ptr %complete1.1.i123, align 4
  %arrayidx.2.i124 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 2
  %22 = ptrtoint ptr %arrayidx.2.i124 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2.i124, align 4
  %complete1.2.i125 = getelementptr inbounds %struct.urb, ptr %23, i32 0, i32 28
  %24 = ptrtoint ptr %complete1.2.i125 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @i_playback_start, ptr %complete1.2.i125, align 4
  %arrayidx.3.i126 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 3
  %25 = ptrtoint ptr %arrayidx.3.i126 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.3.i126, align 4
  %complete1.3.i127 = getelementptr inbounds %struct.urb, ptr %26, i32 0, i32 28
  %27 = ptrtoint ptr %complete1.3.i127 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @i_playback_start, ptr %complete1.3.i127, align 4
  %write_page = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 1
  %28 = ptrtoint ptr %write_page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_page, align 4
  %write_size = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %write_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %write_size, align 4
  %32 = call ptr @memset(ptr %29, i32 0, i32 %31)
  %insize_done = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 8
  %idle_insize = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 5
  %idle_outsize = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 6
  %sync_packet = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 7
  %inpacket_head = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 13
  %iso_frame_balance = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 10
  br label %if.then13

if.then13:                                        ; preds = %if.then38, %if.end
  %iters.0 = phi i32 [ 0, %if.end ], [ %inc16, %if.then38 ]
  %try.0 = phi i32 [ 0, %if.end ], [ %inc, %if.then38 ]
  %33 = ptrtoint ptr %insize_done to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %insize_done, align 4
  %34 = ptrtoint ptr %idle_insize to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %idle_insize, align 4
  %35 = ptrtoint ptr %idle_outsize to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %idle_outsize, align 4
  %36 = ptrtoint ptr %sync_packet to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %sync_packet, align 4
  %37 = ptrtoint ptr %inpacket_head to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %inpacket_head, align 4
  %38 = ptrtoint ptr %iso_frame_balance to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %iso_frame_balance, align 4
  %inc = add nuw nsw i32 %try.0, 1
  %39 = ptrtoint ptr %inurb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %inurb, align 4
  %41 = ptrtoint ptr %outurb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %outurb, align 4
  tail call fastcc void @playback_prep_freqn(ptr noundef %sk, ptr noundef %42)
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 24
  %43 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %number_of_packets, align 4
  %number_of_packets9 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 24
  %45 = ptrtoint ptr %number_of_packets9 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %number_of_packets9, align 4
  %length = getelementptr inbounds %struct.urb, ptr %40, i32 1, i32 1
  %46 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %length, align 4
  %mul = mul i32 %47, %44
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 19
  %48 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul, ptr %transfer_buffer_length, align 4
  %dev14 = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 8
  %49 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev14, align 4
  %call = tail call i32 @usb_get_current_frame_number(ptr noundef %50) #12
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then13
  %iters.2 = phi i32 [ %iters.0, %if.then13 ], [ %inc16, %do.body.do.body_crit_edge ]
  %call15 = tail call i32 @usb_get_current_frame_number(ptr noundef %50) #12
  %inc16 = add i32 %iters.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15)
  %cmp17 = icmp sgt i32 %call15, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %call)
  %cmp18 = icmp eq i32 %call15, %call
  %or.cond = select i1 %cmp17, i1 %cmp18, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %if.end19

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end19:                                         ; preds = %do.body
  %call20 = tail call i32 @usb_submit_urb(ptr noundef %40, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.if.then22_crit_edge, label %if.end23

if.end19.if.then22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.then22:                                        ; preds = %if.end19.1.if.then22_crit_edge, %if.end19.if.then22_crit_edge
  %call20.lcssa = phi i32 [ %call20, %if.end19.if.then22_crit_edge ], [ %call20.1, %if.end19.1.if.then22_crit_edge ]
  %u.0159.lcssa = phi i32 [ 0, %if.end19.if.then22_crit_edge ], [ 1, %if.end19.1.if.then22_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 715, ptr noundef nonnull @.str.7, i32 noundef %u.0159.lcssa, i32 noundef %call20.lcssa) #12
  br label %cleanup57

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @usb_submit_urb(ptr noundef %42, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.if.then26_crit_edge, label %if.end27

if.end23.if.then26_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

if.then26:                                        ; preds = %if.end23.1.if.then26_crit_edge, %if.end23.if.then26_crit_edge
  %call24.lcssa = phi i32 [ %call24, %if.end23.if.then26_crit_edge ], [ %call24.1, %if.end23.1.if.then26_crit_edge ]
  %u.0159.lcssa163 = phi i32 [ 0, %if.end23.if.then26_crit_edge ], [ 1, %if.end23.1.if.then26_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 722, ptr noundef nonnull @.str.8, i32 noundef %u.0159.lcssa163, i32 noundef %call24.lcssa) #12
  br label %cleanup57

if.end27:                                         ; preds = %if.end23
  %start_frame = getelementptr inbounds %struct.urb, ptr %40, i32 0, i32 23
  %51 = ptrtoint ptr %start_frame to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %start_frame, align 4
  %start_frame28 = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 23
  %53 = ptrtoint ptr %start_frame28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %start_frame28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp29.not = icmp eq i32 %52, %54
  br i1 %cmp29.not, label %if.end19.1, label %if.end27.check_retry_crit_edge

if.end27.check_retry_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_retry

if.end19.1:                                       ; preds = %if.end27
  %55 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.1.i, align 4
  %57 = ptrtoint ptr %arrayidx.1.i122 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.1.i122, align 4
  tail call fastcc void @playback_prep_freqn(ptr noundef %sk, ptr noundef %58)
  %number_of_packets.1 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 24
  %59 = ptrtoint ptr %number_of_packets.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %number_of_packets.1, align 4
  %number_of_packets9.1 = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 24
  %61 = ptrtoint ptr %number_of_packets9.1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %number_of_packets9.1, align 4
  %length.1 = getelementptr inbounds %struct.urb, ptr %56, i32 1, i32 1
  %62 = ptrtoint ptr %length.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %length.1, align 4
  %mul.1 = mul i32 %63, %60
  %transfer_buffer_length.1 = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 19
  %64 = ptrtoint ptr %transfer_buffer_length.1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul.1, ptr %transfer_buffer_length.1, align 4
  %call20.1 = tail call i32 @usb_submit_urb(ptr noundef %56, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.1)
  %cmp21.1 = icmp slt i32 %call20.1, 0
  br i1 %cmp21.1, label %if.end19.1.if.then22_crit_edge, label %if.end23.1

if.end19.1.if.then22_crit_edge:                   ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then22

if.end23.1:                                       ; preds = %if.end19.1
  %call24.1 = tail call i32 @usb_submit_urb(ptr noundef %58, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.1)
  %cmp25.1 = icmp slt i32 %call24.1, 0
  br i1 %cmp25.1, label %if.end23.1.if.then26_crit_edge, label %if.end27.1

if.end23.1.if.then26_crit_edge:                   ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26

if.end27.1:                                       ; preds = %if.end23.1
  %start_frame.1 = getelementptr inbounds %struct.urb, ptr %56, i32 0, i32 23
  %65 = ptrtoint ptr %start_frame.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %start_frame.1, align 4
  %start_frame28.1 = getelementptr inbounds %struct.urb, ptr %58, i32 0, i32 23
  %67 = ptrtoint ptr %start_frame28.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %start_frame28.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp29.not.1 = icmp eq i32 %66, %68
  br i1 %cmp29.not.1, label %for.inc.1, label %if.end27.1.check_retry_crit_edge

if.end27.1.check_retry_crit_edge:                 ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_retry

for.inc.1:                                        ; preds = %if.end27.1
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 733, ptr noundef nonnull @.str.10, i32 noundef %call, i32 noundef %inc16) #12
  %69 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.2.i, align 4
  %idle_inurb = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 4
  %71 = ptrtoint ptr %idle_inurb to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %idle_inurb, align 4
  %72 = ptrtoint ptr %arrayidx.2.i124 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.2.i124, align 4
  %idle_outurb = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 7
  %74 = ptrtoint ptr %idle_outurb to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %idle_outurb, align 4
  %75 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.3.i, align 4
  %completed_inurb = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 5
  %77 = ptrtoint ptr %completed_inurb to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %76, ptr %completed_inurb, align 4
  %78 = ptrtoint ptr %arrayidx.3.i126 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.3.i126, align 4
  %completed_outurb = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 8
  %80 = ptrtoint ptr %completed_outurb to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %completed_outurb, align 4
  %81 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %82)
  %cmp50.not160.not = icmp eq i32 %82, 4
  br i1 %cmp50.not160.not, label %for.inc.1.cleanup57_crit_edge, label %for.inc.1.while.body_crit_edge

for.inc.1.while.body_crit_edge:                   ; preds = %for.inc.1
  br label %while.body

for.inc.1.cleanup57_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup57

check_retry:                                      ; preds = %if.end27.1.check_retry_crit_edge, %if.end27.check_retry_crit_edge
  %.lcssa179 = phi i32 [ %52, %if.end27.check_retry_crit_edge ], [ %66, %if.end27.1.check_retry_crit_edge ]
  %.lcssa177 = phi i32 [ %54, %if.end27.check_retry_crit_edge ], [ %68, %if.end27.1.check_retry_crit_edge ]
  %u.0159.lcssa164 = phi i32 [ 0, %if.end27.check_retry_crit_edge ], [ 1, %if.end27.1.check_retry_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 729, ptr noundef nonnull @.str.9, i32 noundef %u.0159.lcssa164, i32 noundef %.lcssa179, i32 noundef %.lcssa177) #12
  tail call void @usb_stream_stop(ptr noundef %sk)
  %exitcond.not = icmp eq i32 %try.0, 4
  br i1 %exitcond.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %check_retry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msleep(i32 noundef 1500) #12
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 740, ptr noundef nonnull @.str.11) #12
  br label %if.then13

if.end39:                                         ; preds = %check_retry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 744, ptr noundef nonnull @.str.12) #12
  br label %cleanup57

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.inc.1.while.body_crit_edge
  %83 = phi i32 [ %85, %while.body.while.body_crit_edge ], [ %82, %for.inc.1.while.body_crit_edge ]
  %wait_ms.0161 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ 3000, %for.inc.1.while.body_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 758, ptr noundef nonnull @.str.13, i32 noundef %83) #12
  tail call void @msleep(i32 noundef 200) #12
  %sub = add nsw i32 %wait_ms.0161, -200
  %84 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %85)
  %cmp50.not = icmp ne i32 %85, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %wait_ms.0161)
  %cmp52 = icmp ugt i32 %wait_ms.0161, 200
  %or.cond120 = select i1 %cmp50.not, i1 %cmp52, i1 false
  br i1 %or.cond120, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %85)
  %phi.cmp = icmp eq i32 %85, 4
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -14
  br label %cleanup57

cleanup57:                                        ; preds = %while.end.loopexit, %if.end39, %for.inc.1.cleanup57_crit_edge, %if.then26, %if.then22, %entry.cleanup57_crit_edge
  %retval.4 = phi i32 [ -14, %if.end39 ], [ -11, %entry.cleanup57_crit_edge ], [ %call24.lcssa, %if.then26 ], [ %call20.lcssa, %if.then22 ], [ 0, %for.inc.1.cleanup57_crit_edge ], [ %phi.sel, %while.end.loopexit ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i_capture_start(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iso_frame_desc = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 29
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %6 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp71 = icmp sgt i32 %7, 0
  br i1 %cmp71, label %for.body.lr.ph, label %for.cond.preheader.land.lhs.true_crit_edge

for.cond.preheader.land.lhs.true_crit_edge:       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %frame_size = getelementptr inbounds %struct.usb_stream_config, ptr %3, i32 0, i32 3
  %state = getelementptr inbounds %struct.usb_stream, ptr %3, i32 0, i32 4
  %inpacket_head = getelementptr inbounds %struct.usb_stream, ptr %3, i32 0, i32 13
  %inpackets = getelementptr inbounds %struct.usb_stream, ptr %3, i32 0, i32 12
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 623, ptr noundef nonnull @.str.15, i32 noundef %5) #12
  br label %cleanup28

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %empty.073 = phi i32 [ 0, %for.body.lr.ph ], [ %empty.1, %for.inc.for.body_crit_edge ]
  %p.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc18, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %p.072
  %actual_length = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %p.072, i32 2
  %8 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %actual_length, align 4
  %10 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frame_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3 = icmp ult i32 %9, %11
  br i1 %cmp3, label %if.then4, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then4:                                         ; preds = %for.body
  %inc = add i32 %empty.073, 1
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp5 = icmp ugt i32 %13, 1
  br i1 %cmp5, label %cleanup, label %if.then4.for.inc_crit_edge

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

cleanup:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 633, ptr noundef nonnull @.str.16, i32 noundef %9) #12
  br label %cleanup28

for.inc:                                          ; preds = %if.then4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %empty.1 = phi i32 [ %inc, %if.then4.for.inc_crit_edge ], [ %empty.073, %for.body.for.inc_crit_edge ]
  %14 = ptrtoint ptr %inpacket_head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inpacket_head, align 4
  %inc9 = add i32 %15, 1
  %16 = ptrtoint ptr %inpackets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %inpackets, align 4
  %rem = urem i32 %inc9, %17
  store i32 %rem, ptr %inpacket_head, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transfer_buffer, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %21 to i32
  %sub.ptr.sub = sub i32 %19, %sub.ptr.rhs.cast
  %add = add i32 %sub.ptr.sub, %sub.ptr.lhs.cast
  %arrayidx13 = getelementptr %struct.usb_stream, ptr %3, i32 0, i32 18, i32 %rem
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %arrayidx13, align 4
  %length = getelementptr %struct.usb_stream, ptr %3, i32 0, i32 18, i32 %rem, i32 1
  %23 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %9, ptr %length, align 4
  %inc18 = add nuw nsw i32 %p.072, 1
  %24 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %number_of_packets, align 4
  %cmp = icmp slt i32 %inc18, %25
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %empty.1)
  %tobool19.not = icmp eq i32 %empty.1, 0
  br i1 %tobool19.not, label %for.end.land.lhs.true_crit_edge, label %for.end.if.end25_crit_edge

for.end.if.end25_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

for.end.land.lhs.true_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.land.lhs.true_crit_edge, %for.cond.preheader.land.lhs.true_crit_edge
  %state20 = getelementptr inbounds %struct.usb_stream, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %state20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %27)
  %cmp21 = icmp ult i32 %27, 3
  br i1 %cmp21, label %if.then22, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %inc24 = add nuw nsw i32 %27, 1
  %28 = ptrtoint ptr %state20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc24, ptr %state20, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %land.lhs.true.if.end25_crit_edge, %for.end.if.end25_crit_edge
  %29 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %number_of_packets, align 4
  %iso_frame_balance.i = getelementptr inbounds %struct.usb_stream_kernel, ptr %1, i32 0, i32 10
  %31 = ptrtoint ptr %iso_frame_balance.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iso_frame_balance.i, align 4
  %sub.i = sub i32 %32, %30
  store i32 %sub.i, ptr %iso_frame_balance.i, align 4
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %34, label %if.then6.i.i [
    i32 0, label %if.end8.i.i
    i32 -108, label %if.end25.if.end.i.i_crit_edge
    i32 -2, label %if.end25.if.end.i.i_crit_edge81
  ], !prof !167

if.end25.if.end.i.i_crit_edge81:                  ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.end25.if.end.i.i_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then6.i.i:                                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 249, ptr noundef nonnull @.str.15, i32 noundef %34) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then6.i.i, %if.end25.if.end.i.i_crit_edge, %if.end25.if.end.i.i_crit_edge81
  %36 = ptrtoint ptr %iso_frame_balance.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2147483647, ptr %iso_frame_balance.i, align 4
  br label %cleanup28

if.end8.i.i:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp10.i.i = icmp eq i32 %32, %30
  %i_urb = getelementptr inbounds %struct.usb_stream_kernel, ptr %1, i32 0, i32 9
  br i1 %cmp10.i.i, label %if.then26, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %i_urb to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %urb, ptr %i_urb, align 4
  br label %cleanup28

if.then26:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %i_urb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i_urb, align 4
  tail call fastcc void @stream_start(ptr noundef %1, ptr noundef %urb, ptr noundef %39)
  br label %cleanup28

cleanup28:                                        ; preds = %if.then26, %if.then12.i.i, %if.end.i.i, %cleanup, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i_playback_start(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %2 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number_of_packets.i, align 4
  %iso_frame_balance.i = getelementptr inbounds %struct.usb_stream_kernel, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %iso_frame_balance.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iso_frame_balance.i, align 4
  %add.i = add i32 %5, %3
  store i32 %add.i, ptr %iso_frame_balance.i, align 4
  %status.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %7, label %if.then6.i.i [
    i32 0, label %if.end8.i.i
    i32 -108, label %entry.if.end.i.i_crit_edge
    i32 -2, label %entry.if.end.i.i_crit_edge6
  ], !prof !167

entry.if.end.i.i_crit_edge6:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then6.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 249, ptr noundef nonnull @.str.15, i32 noundef %7) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then6.i.i, %entry.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge6
  %9 = ptrtoint ptr %iso_frame_balance.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2147483647, ptr %iso_frame_balance.i, align 4
  br label %if.end

if.end8.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp10.i.i = icmp eq i32 %add.i, 0
  %i_urb = getelementptr inbounds %struct.usb_stream_kernel, ptr %1, i32 0, i32 9
  br i1 %cmp10.i.i, label %if.then, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %i_urb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %urb, ptr %i_urb, align 4
  br label %if.end

if.then:                                          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %i_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_urb, align 4
  tail call fastcc void @stream_start(ptr noundef %1, ptr noundef %12, ptr noundef %urb)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then12.i.i, %if.end.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @playback_prep_freqn(ptr nocapture noundef %sk, ptr nocapture noundef writeonly %urb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 4
  %n_o_ps = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 2
  %2 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_o_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp44.not = icmp eq i32 %3, 0
  br i1 %cmp44.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %out_phase.i = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 12
  %freqn.i = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 14
  %out_phase_peeked.i = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 13
  %idle_outsize = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 6
  %period_size = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %lb.046 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %pack.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk, align 4
  %6 = ptrtoint ptr %out_phase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out_phase.i, align 4
  %and.i = and i32 %7, 65535
  %8 = ptrtoint ptr %freqn.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %freqn.i, align 4
  %add.i = add i32 %and.i, %9
  %10 = ptrtoint ptr %out_phase_peeked.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %out_phase_peeked.i, align 4
  %shr.i = lshr i32 %add.i, 16
  %frame_size.i = getelementptr inbounds %struct.usb_stream_config, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %frame_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frame_size.i, align 4
  %mul.i = mul i32 %shr.i, %12
  %13 = ptrtoint ptr %idle_outsize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idle_outsize, align 4
  %add = add i32 %mul.i, %lb.046
  %add2 = add i32 %add, %14
  %15 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %16)
  %cmp3 = icmp sgt i32 %add2, %16
  br i1 %cmp3, label %for.body.check_crit_edge, label %for.inc

for.body.check_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %check

for.inc:                                          ; preds = %for.body
  %17 = ptrtoint ptr %out_phase.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i, ptr %out_phase.i, align 4
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %pack.045
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %lb.046, ptr %arrayidx, align 4
  %length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %pack.045, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul.i, ptr %length, align 4
  %inc = add nuw i32 %pack.045, 1
  %20 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_o_ps, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %pack.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %lb.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.inc.for.end_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 37, ptr noundef nonnull @.str.13, i32 noundef %lb.0.lcssa) #12
  br label %check

check:                                            ; preds = %for.end, %for.body.check_crit_edge
  %pack.043 = phi i32 [ %pack.0.lcssa, %for.end ], [ %pack.045, %for.body.check_crit_edge ]
  %lb.041 = phi i32 [ %lb.0.lcssa, %for.end ], [ %lb.046, %for.body.check_crit_edge ]
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %22 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %pack.043, ptr %number_of_packets, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %23 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %lb.041, ptr %transfer_buffer_length, align 4
  %period_size7 = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %period_size7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %period_size7, align 4
  %sub = sub i32 %lb.041, %25
  %idle_outsize8 = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %idle_outsize8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idle_outsize8, align 4
  %add9 = add i32 %27, %sub
  store i32 %add9, ptr %idle_outsize8, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 44, ptr noundef nonnull @.str.24, i32 noundef %add9, i32 noundef %lb.041, i32 noundef %25) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_current_frame_number(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_stream_stop(ptr nocapture noundef readonly %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %3) #12
  %arrayidx1 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 0
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  tail call void @usb_kill_urb(ptr noundef %5) #12
  %arrayidx.1 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_kill_urb(ptr noundef %7) #12
  %arrayidx1.1 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1.1, align 4
  tail call void @usb_kill_urb(ptr noundef %9) #12
  %arrayidx.2 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #12
  %arrayidx1.2 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx1.2, align 4
  tail call void @usb_kill_urb(ptr noundef %13) #12
  %arrayidx.3 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_kill_urb(ptr noundef %15) #12
  %arrayidx1.3 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx1.3, align 4
  tail call void @usb_kill_urb(ptr noundef %17) #12
  %18 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk, align 4
  %state = getelementptr inbounds %struct.usb_stream, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %state, align 4
  tail call void @msleep(i32 noundef 400) #12
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_us122l_usb_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @snd_us122l_usb_driver, ptr noundef null, ptr noundef nonnull @.str.25) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_us122l_usb_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usb_deregister(ptr noundef nonnull @snd_us122l_usb_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_pipe_urbs(ptr noundef %sk, i32 noundef %use_packsize, ptr nocapture noundef readonly %urbs, ptr noundef %transfer, ptr noundef %dev, i32 noundef %pipe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_packsize)
  %tobool.not = icmp eq i32 %use_packsize, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %.pre = and i32 %pipe, 128
  br label %cond.end

cond.false:                                       ; preds = %entry
  %0 = lshr i32 %pipe, 15
  %and.i = and i32 %0, 15
  %1 = and i32 %pipe, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.not = icmp eq i32 %1, 0
  %arrayidx.i = getelementptr %struct.usb_device, ptr %dev, i32 0, i32 22, i32 %and.i
  %arrayidx57.i = getelementptr %struct.usb_device, ptr %dev, i32 0, i32 21, i32 %and.i
  %ep.0.in.i = select i1 %tobool.not.i.not, ptr %arrayidx.i, ptr %arrayidx57.i
  %2 = ptrtoint ptr %ep.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %ep.0.i = load ptr, ptr %ep.0.in.i, align 4
  %tobool59.not.i = icmp eq ptr %ep.0.i, null
  br i1 %tobool59.not.i, label %cond.false.cond.end_crit_edge, label %if.end61.i

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end61.i:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #14
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep.0.i, i32 0, i32 4
  %3 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %5 = and i16 %4, -249
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #12
  %phi.cast = zext i16 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %if.end61.i, %cond.false.cond.end_crit_edge, %entry.cond.end_crit_edge
  %and6.pre-phi = phi i32 [ %.pre, %entry.cond.end_crit_edge ], [ %1, %if.end61.i ], [ %1, %cond.false.cond.end_crit_edge ]
  %cond = phi i32 [ %use_packsize, %entry.cond.end_crit_edge ], [ %phi.cast, %if.end61.i ], [ 0, %cond.false.cond.end_crit_edge ]
  %n_o_ps = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 2
  %7 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_o_ps, align 4
  %mul = mul i32 %8, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.pre-phi)
  %tobool7.not = icmp eq i32 %and6.pre-phi, 0
  %9 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %urbs, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %transfer, ptr %transfer_buffer, align 4
  %dev3 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 8
  %12 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %dev3, align 4
  %pipe4 = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 10
  %13 = ptrtoint ptr %pipe4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %pipe, ptr %pipe4, align 4
  %14 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_o_ps, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 24
  %16 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %number_of_packets, align 4
  %context = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 27
  %17 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %sk, ptr %context, align 4
  %interval = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 25
  %18 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %interval, align 4
  br i1 %tobool7.not, label %cond.end.for.inc24_crit_edge, label %if.end

cond.end.for.inc24_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc24

if.end:                                           ; preds = %cond.end
  %call8 = tail call i32 @usb_urb_ep_type_check(ptr noundef %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.cleanup27_crit_edge

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.end11:                                         ; preds = %if.end
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 19
  %19 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %transfer_buffer_length, align 4
  %iso_frame_desc = getelementptr inbounds %struct.urb, ptr %10, i32 0, i32 29
  %20 = ptrtoint ptr %iso_frame_desc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %iso_frame_desc, align 4
  %length = getelementptr inbounds %struct.urb, ptr %10, i32 1, i32 1
  %21 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond, ptr %length, align 4
  %22 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_o_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp1463 = icmp ugt i32 %23, 1
  br i1 %cmp1463, label %if.end11.for.body16_crit_edge, label %if.end11.for.inc24_crit_edge

if.end11.for.inc24_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc24

if.end11.for.body16_crit_edge:                    ; preds = %if.end11
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %if.end11.for.body16_crit_edge
  %p.064 = phi i32 [ %inc, %for.body16.for.body16_crit_edge ], [ 1, %if.end11.for.body16_crit_edge ]
  %sub = add i32 %p.064, -1
  %arrayidx17 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %sub
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx17, align 4
  %add = add i32 %25, %cond
  %arrayidx19 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %p.064
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add, ptr %arrayidx19, align 4
  %length22 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %p.064, i32 1
  %27 = ptrtoint ptr %length22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond, ptr %length22, align 4
  %inc = add nuw i32 %p.064, 1
  %28 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_o_ps, align 4
  %cmp14 = icmp ult i32 %inc, %29
  br i1 %cmp14, label %for.body16.for.body16_crit_edge, label %for.body16.for.inc24_crit_edge

for.body16.for.inc24_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc24

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16

for.inc24:                                        ; preds = %for.body16.for.inc24_crit_edge, %if.end11.for.inc24_crit_edge, %cond.end.for.inc24_crit_edge
  %add.ptr = getelementptr i8, ptr %transfer, i32 %mul
  %arrayidx.1 = getelementptr ptr, ptr %urbs, i32 1
  %30 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.1, align 4
  %transfer_buffer.1 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %transfer_buffer.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr, ptr %transfer_buffer.1, align 4
  %dev3.1 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 8
  %33 = ptrtoint ptr %dev3.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev, ptr %dev3.1, align 4
  %pipe4.1 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 10
  %34 = ptrtoint ptr %pipe4.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %pipe, ptr %pipe4.1, align 4
  %35 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_o_ps, align 4
  %number_of_packets.1 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 24
  %37 = ptrtoint ptr %number_of_packets.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %number_of_packets.1, align 4
  %context.1 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 27
  %38 = ptrtoint ptr %context.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %sk, ptr %context.1, align 4
  %interval.1 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 25
  %39 = ptrtoint ptr %interval.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %interval.1, align 4
  br i1 %tobool7.not, label %for.inc24.for.inc24.1_crit_edge, label %if.end.1

for.inc24.for.inc24.1_crit_edge:                  ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc24.1

if.end.1:                                         ; preds = %for.inc24
  %call8.1 = tail call i32 @usb_urb_ep_type_check(ptr noundef %31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %tobool9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool9.not.1, label %if.end11.1, label %if.end.1.cleanup27_crit_edge

if.end.1.cleanup27_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.end11.1:                                       ; preds = %if.end.1
  %transfer_buffer_length.1 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 19
  %40 = ptrtoint ptr %transfer_buffer_length.1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %mul, ptr %transfer_buffer_length.1, align 4
  %iso_frame_desc.1 = getelementptr inbounds %struct.urb, ptr %31, i32 0, i32 29
  %41 = ptrtoint ptr %iso_frame_desc.1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %iso_frame_desc.1, align 4
  %length.1 = getelementptr inbounds %struct.urb, ptr %31, i32 1, i32 1
  %42 = ptrtoint ptr %length.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond, ptr %length.1, align 4
  %43 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %n_o_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp1463.1 = icmp ugt i32 %44, 1
  br i1 %cmp1463.1, label %if.end11.1.for.body16.1_crit_edge, label %if.end11.1.for.inc24.1_crit_edge

if.end11.1.for.inc24.1_crit_edge:                 ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc24.1

if.end11.1.for.body16.1_crit_edge:                ; preds = %if.end11.1
  br label %for.body16.1

for.body16.1:                                     ; preds = %for.body16.1.for.body16.1_crit_edge, %if.end11.1.for.body16.1_crit_edge
  %p.064.1 = phi i32 [ %inc.1, %for.body16.1.for.body16.1_crit_edge ], [ 1, %if.end11.1.for.body16.1_crit_edge ]
  %sub.1 = add i32 %p.064.1, -1
  %arrayidx17.1 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc.1, i32 %sub.1
  %45 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx17.1, align 4
  %add.1 = add i32 %46, %cond
  %arrayidx19.1 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc.1, i32 %p.064.1
  %47 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add.1, ptr %arrayidx19.1, align 4
  %length22.1 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc.1, i32 %p.064.1, i32 1
  %48 = ptrtoint ptr %length22.1 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %cond, ptr %length22.1, align 4
  %inc.1 = add nuw i32 %p.064.1, 1
  %49 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %n_o_ps, align 4
  %cmp14.1 = icmp ult i32 %inc.1, %50
  br i1 %cmp14.1, label %for.body16.1.for.body16.1_crit_edge, label %for.body16.1.for.inc24.1_crit_edge

for.body16.1.for.inc24.1_crit_edge:               ; preds = %for.body16.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc24.1

for.body16.1.for.body16.1_crit_edge:              ; preds = %for.body16.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.1

for.inc24.1:                                      ; preds = %for.body16.1.for.inc24.1_crit_edge, %if.end11.1.for.inc24.1_crit_edge, %for.inc24.for.inc24.1_crit_edge
  %add.ptr.1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %arrayidx.2 = getelementptr ptr, ptr %urbs, i32 2
  %51 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.2, align 4
  %transfer_buffer.2 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 14
  %53 = ptrtoint ptr %transfer_buffer.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr.1, ptr %transfer_buffer.2, align 4
  %dev3.2 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 8
  %54 = ptrtoint ptr %dev3.2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %dev, ptr %dev3.2, align 4
  %pipe4.2 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 10
  %55 = ptrtoint ptr %pipe4.2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %pipe, ptr %pipe4.2, align 4
  %56 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %n_o_ps, align 4
  %number_of_packets.2 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 24
  %58 = ptrtoint ptr %number_of_packets.2 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %number_of_packets.2, align 4
  %context.2 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 27
  %59 = ptrtoint ptr %context.2 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %sk, ptr %context.2, align 4
  %interval.2 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 25
  %60 = ptrtoint ptr %interval.2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %interval.2, align 4
  br i1 %tobool7.not, label %for.inc24.1.for.inc24.2_crit_edge, label %if.end.2

for.inc24.1.for.inc24.2_crit_edge:                ; preds = %for.inc24.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc24.2

if.end.2:                                         ; preds = %for.inc24.1
  %call8.2 = tail call i32 @usb_urb_ep_type_check(ptr noundef %52) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %tobool9.not.2 = icmp eq i32 %call8.2, 0
  br i1 %tobool9.not.2, label %if.end11.2, label %if.end.2.cleanup27_crit_edge

if.end.2.cleanup27_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.end11.2:                                       ; preds = %if.end.2
  %transfer_buffer_length.2 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 19
  %61 = ptrtoint ptr %transfer_buffer_length.2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul, ptr %transfer_buffer_length.2, align 4
  %iso_frame_desc.2 = getelementptr inbounds %struct.urb, ptr %52, i32 0, i32 29
  %62 = ptrtoint ptr %iso_frame_desc.2 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %iso_frame_desc.2, align 4
  %length.2 = getelementptr inbounds %struct.urb, ptr %52, i32 1, i32 1
  %63 = ptrtoint ptr %length.2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %cond, ptr %length.2, align 4
  %64 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %n_o_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp1463.2 = icmp ugt i32 %65, 1
  br i1 %cmp1463.2, label %if.end11.2.for.body16.2_crit_edge, label %if.end11.2.for.inc24.2_crit_edge

if.end11.2.for.inc24.2_crit_edge:                 ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc24.2

if.end11.2.for.body16.2_crit_edge:                ; preds = %if.end11.2
  br label %for.body16.2

for.body16.2:                                     ; preds = %for.body16.2.for.body16.2_crit_edge, %if.end11.2.for.body16.2_crit_edge
  %p.064.2 = phi i32 [ %inc.2, %for.body16.2.for.body16.2_crit_edge ], [ 1, %if.end11.2.for.body16.2_crit_edge ]
  %sub.2 = add i32 %p.064.2, -1
  %arrayidx17.2 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc.2, i32 %sub.2
  %66 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx17.2, align 4
  %add.2 = add i32 %67, %cond
  %arrayidx19.2 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc.2, i32 %p.064.2
  %68 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add.2, ptr %arrayidx19.2, align 4
  %length22.2 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc.2, i32 %p.064.2, i32 1
  %69 = ptrtoint ptr %length22.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %cond, ptr %length22.2, align 4
  %inc.2 = add nuw i32 %p.064.2, 1
  %70 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %n_o_ps, align 4
  %cmp14.2 = icmp ult i32 %inc.2, %71
  br i1 %cmp14.2, label %for.body16.2.for.body16.2_crit_edge, label %for.body16.2.for.inc24.2_crit_edge

for.body16.2.for.inc24.2_crit_edge:               ; preds = %for.body16.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc24.2

for.body16.2.for.body16.2_crit_edge:              ; preds = %for.body16.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.2

for.inc24.2:                                      ; preds = %for.body16.2.for.inc24.2_crit_edge, %if.end11.2.for.inc24.2_crit_edge, %for.inc24.1.for.inc24.2_crit_edge
  %add.ptr.2 = getelementptr i8, ptr %add.ptr.1, i32 %mul
  %arrayidx.3 = getelementptr ptr, ptr %urbs, i32 3
  %72 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.3, align 4
  %transfer_buffer.3 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 14
  %74 = ptrtoint ptr %transfer_buffer.3 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr.2, ptr %transfer_buffer.3, align 4
  %dev3.3 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 8
  %75 = ptrtoint ptr %dev3.3 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %dev, ptr %dev3.3, align 4
  %pipe4.3 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 10
  %76 = ptrtoint ptr %pipe4.3 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %pipe, ptr %pipe4.3, align 4
  %77 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %n_o_ps, align 4
  %number_of_packets.3 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 24
  %79 = ptrtoint ptr %number_of_packets.3 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %number_of_packets.3, align 4
  %context.3 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 27
  %80 = ptrtoint ptr %context.3 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %sk, ptr %context.3, align 4
  %interval.3 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 25
  %81 = ptrtoint ptr %interval.3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %interval.3, align 4
  br i1 %tobool7.not, label %for.inc24.2.cleanup27_crit_edge, label %if.end.3

for.inc24.2.cleanup27_crit_edge:                  ; preds = %for.inc24.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.end.3:                                         ; preds = %for.inc24.2
  %call8.3 = tail call i32 @usb_urb_ep_type_check(ptr noundef %73) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.3)
  %tobool9.not.3 = icmp eq i32 %call8.3, 0
  br i1 %tobool9.not.3, label %if.end11.3, label %if.end.3.cleanup27_crit_edge

if.end.3.cleanup27_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.end11.3:                                       ; preds = %if.end.3
  %transfer_buffer_length.3 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 19
  %82 = ptrtoint ptr %transfer_buffer_length.3 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %mul, ptr %transfer_buffer_length.3, align 4
  %iso_frame_desc.3 = getelementptr inbounds %struct.urb, ptr %73, i32 0, i32 29
  %83 = ptrtoint ptr %iso_frame_desc.3 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %iso_frame_desc.3, align 4
  %length.3 = getelementptr inbounds %struct.urb, ptr %73, i32 1, i32 1
  %84 = ptrtoint ptr %length.3 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %cond, ptr %length.3, align 4
  %85 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %n_o_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp1463.3 = icmp ugt i32 %86, 1
  br i1 %cmp1463.3, label %if.end11.3.for.body16.3_crit_edge, label %if.end11.3.cleanup27_crit_edge

if.end11.3.cleanup27_crit_edge:                   ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

if.end11.3.for.body16.3_crit_edge:                ; preds = %if.end11.3
  br label %for.body16.3

for.body16.3:                                     ; preds = %for.body16.3.for.body16.3_crit_edge, %if.end11.3.for.body16.3_crit_edge
  %p.064.3 = phi i32 [ %inc.3, %for.body16.3.for.body16.3_crit_edge ], [ 1, %if.end11.3.for.body16.3_crit_edge ]
  %sub.3 = add i32 %p.064.3, -1
  %arrayidx17.3 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc.3, i32 %sub.3
  %87 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx17.3, align 4
  %add.3 = add i32 %88, %cond
  %arrayidx19.3 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc.3, i32 %p.064.3
  %89 = ptrtoint ptr %arrayidx19.3 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add.3, ptr %arrayidx19.3, align 4
  %length22.3 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc.3, i32 %p.064.3, i32 1
  %90 = ptrtoint ptr %length22.3 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %cond, ptr %length22.3, align 4
  %inc.3 = add nuw i32 %p.064.3, 1
  %91 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %n_o_ps, align 4
  %cmp14.3 = icmp ult i32 %inc.3, %92
  br i1 %cmp14.3, label %for.body16.3.for.body16.3_crit_edge, label %for.body16.3.cleanup27_crit_edge

for.body16.3.cleanup27_crit_edge:                 ; preds = %for.body16.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup27

for.body16.3.for.body16.3_crit_edge:              ; preds = %for.body16.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body16.3

cleanup27:                                        ; preds = %for.body16.3.cleanup27_crit_edge, %if.end11.3.cleanup27_crit_edge, %if.end.3.cleanup27_crit_edge, %for.inc24.2.cleanup27_crit_edge, %if.end.2.cleanup27_crit_edge, %if.end.1.cleanup27_crit_edge, %if.end.cleanup27_crit_edge
  %retval.2 = phi i32 [ -22, %if.end.cleanup27_crit_edge ], [ -22, %if.end.1.cleanup27_crit_edge ], [ -22, %if.end.2.cleanup27_crit_edge ], [ -22, %if.end.3.cleanup27_crit_edge ], [ 0, %if.end11.3.cleanup27_crit_edge ], [ 0, %for.inc24.2.cleanup27_crit_edge ], [ 0, %for.body16.3.cleanup27_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_ep_type_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stream_start(ptr nocapture noundef %sk, ptr noundef %inurb, ptr noundef %outurb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 4
  %state = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else79

if.then:                                          ; preds = %entry
  %period_size = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_size, align 4
  %idle_insize = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %idle_insize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idle_insize, align 4
  %sub = sub i32 %5, %7
  %shl = shl i32 %sub, 8
  %frame_size = getelementptr inbounds %struct.usb_stream_config, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_size, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %inurb, i32 0, i32 24
  %10 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number_of_packets, align 4
  %mul = mul i32 %11, %9
  %div = udiv i32 %shl, %mul
  %inc = add nuw i32 %div, 1
  %period_frames = getelementptr inbounds %struct.usb_stream_config, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %period_frames to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %period_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %13)
  %cmp5 = icmp ugt i32 %13, 255
  %shl7 = zext i1 %cmp5 to i32
  %spec.select = shl i32 %9, %shl7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %13)
  %cmp10 = icmp ugt i32 %13, 1023
  %shl12 = zext i1 %cmp10 to i32
  %max_diff_0.1 = shl i32 %spec.select, %shl12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp15174 = icmp sgt i32 %11, 0
  br i1 %cmp15174, label %for.body.lr.ph, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then
  %insize_done = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %for.body.lr.ph
  %14 = phi i32 [ %11, %for.body.lr.ph ], [ %22, %if.end27.for.body_crit_edge ]
  %min_frames.0178 = phi i32 [ 0, %for.body.lr.ph ], [ %add16, %if.end27.for.body_crit_edge ]
  %urb_size.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end27.for.body_crit_edge ]
  %max_diff.0176 = phi i32 [ %max_diff_0.1, %for.body.lr.ph ], [ %max_diff.1, %if.end27.for.body_crit_edge ]
  %p.0175 = phi i32 [ 0, %for.body.lr.ph ], [ %inc28, %if.end27.for.body_crit_edge ]
  %actual_length = getelementptr %struct.urb, ptr %inurb, i32 0, i32 29, i32 %p.0175, i32 2
  %15 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %actual_length, align 4
  %add = add i32 %16, %urb_size.0177
  %add16 = add i32 %inc, %min_frames.0178
  %shr = lshr i32 %add16, 8
  %17 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frame_size, align 4
  %mul19 = mul i32 %18, %shr
  %sub20 = sub i32 %add, %mul19
  call void @__sanitizer_cov_trace_cmp4(i32 %sub20, i32 %max_diff.0176)
  %cmp21 = icmp slt i32 %sub20, %max_diff.0176
  br i1 %cmp21, label %if.then22, label %for.body.if.end27_crit_edge

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then22:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %insize_done to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %insize_done, align 4
  %div25 = sdiv i32 %add, %18
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 565, ptr noundef nonnull @.str.17, i32 noundef %20, i32 noundef %div25, i32 noundef %14, i32 noundef %sub20) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %for.body.if.end27_crit_edge
  %max_diff.1 = phi i32 [ %sub20, %if.then22 ], [ %max_diff.0176, %for.body.if.end27_crit_edge ]
  %inc28 = add nuw nsw i32 %p.0175, 1
  %21 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %number_of_packets, align 4
  %cmp15 = icmp slt i32 %inc28, %22
  br i1 %cmp15, label %if.end27.for.body_crit_edge, label %if.end27.for.end_crit_edge

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %if.end27.for.end_crit_edge, %if.then.for.end_crit_edge
  %max_diff.0.lcssa = phi i32 [ %max_diff_0.1, %if.then.for.end_crit_edge ], [ %max_diff.1, %if.end27.for.end_crit_edge ]
  %urb_size.0.lcssa = phi i32 [ 0, %if.then.for.end_crit_edge ], [ %add, %if.end27.for.end_crit_edge ]
  %sub29.neg = sub i32 %max_diff_0.1, %max_diff.0.lcssa
  %23 = ptrtoint ptr %idle_insize to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %idle_insize, align 4
  %sub31 = add i32 %24, %sub29.neg
  %25 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %period_size, align 4
  %sub33 = sub i32 %urb_size.0.lcssa, %26
  %add35 = add i32 %sub33, %sub31
  store i32 %add35, ptr %idle_insize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add35)
  %cmp37 = icmp slt i32 %add35, 0
  br i1 %cmp37, label %if.then38, label %if.else

if.then38:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 573, ptr noundef nonnull @.str.18, i32 noundef %add35, i32 noundef %urb_size.0.lcssa, i32 noundef %26) #12
  br label %cleanup95

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add35)
  %cmp42 = icmp eq i32 %add35, 0
  %inpacket_head = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 13
  %27 = ptrtoint ptr %inpacket_head to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %inpacket_head, align 4
  br i1 %cmp42, label %if.then43, label %if.else45

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add44 = add i32 %28, 1
  %inpackets = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 12
  %29 = ptrtoint ptr %inpackets to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %inpackets, align 4
  %rem = urem i32 %add44, %30
  %next_inpacket_split = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 16
  %31 = ptrtoint ptr %next_inpacket_split to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %rem, ptr %next_inpacket_split, align 4
  br label %if.end67

if.else45:                                        ; preds = %if.else
  %length180 = getelementptr %struct.usb_stream, ptr %1, i32 0, i32 18, i32 %28, i32 1
  %32 = ptrtoint ptr %length180 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length180, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add35, i32 %33)
  %cmp49181 = icmp ugt i32 %add35, %33
  br i1 %cmp49181, label %while.body.lr.ph, label %if.else45.while.end_crit_edge

if.else45.while.end_crit_edge:                    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.else45
  %inpackets56 = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 12
  br label %while.body

while.body:                                       ; preds = %if.end59.while.body_crit_edge, %while.body.lr.ph
  %34 = phi i32 [ %33, %while.body.lr.ph ], [ %38, %if.end59.while.body_crit_edge ]
  %split.0183 = phi i32 [ %28, %while.body.lr.ph ], [ %split.1, %if.end59.while.body_crit_edge ]
  %l.0182 = phi i32 [ %add35, %while.body.lr.ph ], [ %sub53, %if.end59.while.body_crit_edge ]
  %sub53 = sub i32 %l.0182, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %split.0183)
  %cmp54 = icmp eq i32 %split.0183, 0
  br i1 %cmp54, label %if.then55, label %while.body.if.end59_crit_edge

while.body.if.end59_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.then55:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %inpackets56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %inpackets56, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %while.body.if.end59_crit_edge
  %split.1.in = phi i32 [ %36, %if.then55 ], [ %split.0183, %while.body.if.end59_crit_edge ]
  %split.1 = add i32 %split.1.in, -1
  %length = getelementptr %struct.usb_stream, ptr %1, i32 0, i32 18, i32 %split.1, i32 1
  %37 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %length, align 4
  %cmp49 = icmp ugt i32 %sub53, %38
  br i1 %cmp49, label %if.end59.while.body_crit_edge, label %if.end59.while.end_crit_edge

if.end59.while.end_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end59.while.body_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end59.while.end_crit_edge, %if.else45.while.end_crit_edge
  %l.0.lcssa = phi i32 [ %add35, %if.else45.while.end_crit_edge ], [ %sub53, %if.end59.while.end_crit_edge ]
  %split.0.lcssa = phi i32 [ %28, %if.else45.while.end_crit_edge ], [ %split.1, %if.end59.while.end_crit_edge ]
  %.lcssa = phi i32 [ %33, %if.else45.while.end_crit_edge ], [ %38, %if.end59.while.end_crit_edge ]
  %next_inpacket_split60 = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 16
  %39 = ptrtoint ptr %next_inpacket_split60 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %split.0.lcssa, ptr %next_inpacket_split60, align 4
  %sub64 = sub i32 %.lcssa, %l.0.lcssa
  br label %if.end67

if.end67:                                         ; preds = %while.end, %if.then43
  %.sink = phi i32 [ 0, %if.then43 ], [ %sub64, %while.end ]
  %next_inpacket_split_at = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 17
  %40 = ptrtoint ptr %next_inpacket_split_at to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink, ptr %next_inpacket_split_at, align 4
  %insize_done68 = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %insize_done68 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %insize_done68, align 4
  %add69 = add i32 %42, %urb_size.0.lcssa
  store i32 %add69, ptr %insize_done68, align 4
  %call = tail call fastcc i32 @usb_stream_prepare_playback(ptr noundef %sk, ptr noundef %inurb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp70 = icmp sgt i32 %call, -1
  br i1 %cmp70, label %if.end67.if.end80_crit_edge, label %if.end67.cleanup95_crit_edge

if.end67.cleanup95_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup95

if.end67.if.end80_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80

if.else79:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %idle_outurb = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 7
  %43 = ptrtoint ptr %idle_outurb to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %idle_outurb, align 4
  tail call fastcc void @playback_prep_freqn(ptr noundef %sk, ptr noundef %44)
  br label %if.end80

if.end80:                                         ; preds = %if.else79, %if.end67.if.end80_crit_edge
  %call81 = tail call fastcc i32 @submit_urbs(ptr noundef %sk, ptr noundef %inurb, ptr noundef %outurb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end80.cleanup95_crit_edge, label %if.end84

if.end80.cleanup95_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup95

if.end84:                                         ; preds = %if.end80
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp86 = icmp eq i32 %46, 3
  br i1 %cmp86, label %land.lhs.true, label %if.end84.cleanup95_crit_edge

if.end84.cleanup95_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup95

land.lhs.true:                                    ; preds = %if.end84
  %insize_done87 = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 8
  %47 = ptrtoint ptr %insize_done87 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %insize_done87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 360000, i32 %48)
  %cmp88 = icmp ugt i32 %48, 360000
  br i1 %cmp88, label %if.then89, label %land.lhs.true.cleanup95_crit_edge

land.lhs.true.cleanup95_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup95

if.then89:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %state, align 4
  %inurb91 = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3
  %50 = ptrtoint ptr %inurb91 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %inurb91, align 4
  %complete1.i = getelementptr inbounds %struct.urb, ptr %51, i32 0, i32 28
  %52 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @i_capture_idle, ptr %complete1.i, align 4
  %arrayidx.1.i = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 1
  %53 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.1.i, align 4
  %complete1.1.i = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 28
  %55 = ptrtoint ptr %complete1.1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @i_capture_idle, ptr %complete1.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 2
  %56 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.2.i, align 4
  %complete1.2.i = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 28
  %58 = ptrtoint ptr %complete1.2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @i_capture_idle, ptr %complete1.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 3, i32 3
  %59 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.3.i, align 4
  %complete1.3.i = getelementptr inbounds %struct.urb, ptr %60, i32 0, i32 28
  %61 = ptrtoint ptr %complete1.3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @i_capture_idle, ptr %complete1.3.i, align 4
  %outurb92 = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6
  %62 = ptrtoint ptr %outurb92 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %outurb92, align 4
  %complete1.i167 = getelementptr inbounds %struct.urb, ptr %63, i32 0, i32 28
  %64 = ptrtoint ptr %complete1.i167 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @i_playback_idle, ptr %complete1.i167, align 4
  %arrayidx.1.i168 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 1
  %65 = ptrtoint ptr %arrayidx.1.i168 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.1.i168, align 4
  %complete1.1.i169 = getelementptr inbounds %struct.urb, ptr %66, i32 0, i32 28
  %67 = ptrtoint ptr %complete1.1.i169 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @i_playback_idle, ptr %complete1.1.i169, align 4
  %arrayidx.2.i170 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 2
  %68 = ptrtoint ptr %arrayidx.2.i170 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.2.i170, align 4
  %complete1.2.i171 = getelementptr inbounds %struct.urb, ptr %69, i32 0, i32 28
  %70 = ptrtoint ptr %complete1.2.i171 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @i_playback_idle, ptr %complete1.2.i171, align 4
  %arrayidx.3.i172 = getelementptr %struct.usb_stream_kernel, ptr %sk, i32 0, i32 6, i32 3
  %71 = ptrtoint ptr %arrayidx.3.i172 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.3.i172, align 4
  %complete1.3.i173 = getelementptr inbounds %struct.urb, ptr %72, i32 0, i32 28
  %73 = ptrtoint ptr %complete1.3.i173 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @i_playback_idle, ptr %complete1.3.i173, align 4
  br label %cleanup95

cleanup95:                                        ; preds = %if.then89, %land.lhs.true.cleanup95_crit_edge, %if.end84.cleanup95_crit_edge, %if.end80.cleanup95_crit_edge, %if.end67.cleanup95_crit_edge, %if.then38
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb_stream_prepare_playback(ptr nocapture noundef readonly %sk, ptr nocapture noundef readonly %inurb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 4
  %idle_outurb = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 7
  %2 = ptrtoint ptr %idle_outurb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %idle_outurb, align 4
  %iso_frame_desc = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 29
  %sync_packet = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %sync_packet to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sync_packet, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp131 = icmp slt i32 %5, 0
  br i1 %cmp131, label %for.body.lr.ph, label %entry.for.cond9.preheader_crit_edge

entry.for.cond9.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond9.preheader

for.body.lr.ph:                                   ; preds = %entry
  %completed_inurb = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 5
  br label %for.body

for.cond9.preheader:                              ; preds = %for.body.for.cond9.preheader_crit_edge, %entry.for.cond9.preheader_crit_edge
  %p.0.lcssa = phi i32 [ 0, %entry.for.cond9.preheader_crit_edge ], [ %inc, %for.body.for.cond9.preheader_crit_edge ]
  %lb.0.lcssa = phi i32 [ 0, %entry.for.cond9.preheader_crit_edge ], [ %add, %for.body.for.cond9.preheader_crit_edge ]
  %l.0.lcssa = phi i32 [ 0, %entry.for.cond9.preheader_crit_edge ], [ %18, %for.body.for.cond9.preheader_crit_edge ]
  %n_o_ps = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 2
  %number_of_packets11 = getelementptr inbounds %struct.urb, ptr %inurb, i32 0, i32 24
  %6 = ptrtoint ptr %sync_packet to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sync_packet, align 4
  %8 = ptrtoint ptr %number_of_packets11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %number_of_packets11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp12137 = icmp slt i32 %7, %9
  br i1 %cmp12137, label %land.rhs.lr.ph, label %for.cond9.preheader.check_ok_crit_edge

for.cond9.preheader.check_ok_crit_edge:           ; preds = %for.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_ok

land.rhs.lr.ph:                                   ; preds = %for.cond9.preheader
  %idle_outsize = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 6
  %period_size = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_o_ps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %p.0.lcssa, i32 %11)
  %cmp13159 = icmp ult i32 %p.0.lcssa, %11
  br i1 %cmp13159, label %land.rhs.lr.ph.for.body14_crit_edge, label %land.rhs.lr.ph.check_ok_crit_edge

land.rhs.lr.ph.check_ok_crit_edge:                ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_ok

land.rhs.lr.ph.for.body14_crit_edge:              ; preds = %land.rhs.lr.ph
  br label %for.body14

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %12 = phi i32 [ %5, %for.body.lr.ph ], [ %inc8, %for.body.for.body_crit_edge ]
  %lb.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %p.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %13 = ptrtoint ptr %completed_inurb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %completed_inurb, align 4
  %iso_frame_desc2 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 29
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 24
  %15 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %number_of_packets, align 4
  %add.ptr = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc2, i32 %16
  %add.ptr5 = getelementptr %struct.usb_iso_packet_descriptor, ptr %add.ptr, i32 %12
  %actual_length = getelementptr inbounds %struct.usb_iso_packet_descriptor, ptr %add.ptr5, i32 0, i32 2
  %17 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length, align 4
  %arrayidx = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %p.0132
  %length = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %p.0132, i32 1
  %19 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %length, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %lb.0133, ptr %arrayidx, align 4
  %add = add i32 %18, %lb.0133
  %inc = add i32 %p.0132, 1
  %21 = ptrtoint ptr %sync_packet to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sync_packet, align 4
  %inc8 = add i32 %22, 1
  store i32 %inc8, ptr %sync_packet, align 4
  %cmp = icmp slt i32 %inc8, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond9.preheader_crit_edge

for.body.for.cond9.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond9.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

land.rhs:                                         ; preds = %if.end
  %23 = ptrtoint ptr %n_o_ps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_o_ps, align 4
  %cmp13 = icmp ult i32 %inc28, %24
  br i1 %cmp13, label %land.rhs.for.body14_crit_edge, label %land.rhs.check_ok_crit_edge

land.rhs.check_ok_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_ok

land.rhs.for.body14_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body14

for.body14:                                       ; preds = %land.rhs.for.body14_crit_edge, %land.rhs.lr.ph.for.body14_crit_edge
  %p.1138161 = phi i32 [ %inc28, %land.rhs.for.body14_crit_edge ], [ %p.0.lcssa, %land.rhs.lr.ph.for.body14_crit_edge ]
  %lb.1139160 = phi i32 [ %add19, %land.rhs.for.body14_crit_edge ], [ %lb.0.lcssa, %land.rhs.lr.ph.for.body14_crit_edge ]
  %25 = phi i32 [ %inc30, %land.rhs.for.body14_crit_edge ], [ %7, %land.rhs.lr.ph.for.body14_crit_edge ]
  %26 = phi i32 [ %38, %land.rhs.for.body14_crit_edge ], [ %9, %land.rhs.lr.ph.for.body14_crit_edge ]
  %actual_length18 = getelementptr %struct.urb, ptr %inurb, i32 0, i32 29, i32 %25, i32 2
  %27 = ptrtoint ptr %actual_length18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %actual_length18, align 4
  %29 = ptrtoint ptr %idle_outsize to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %idle_outsize, align 4
  %add19 = add i32 %28, %lb.1139160
  %add20 = add i32 %add19, %30
  %31 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %32)
  %cmp21 = icmp sgt i32 %add20, %32
  br i1 %cmp21, label %for.body14.check_ok_crit_edge, label %if.end

for.body14.check_ok_crit_edge:                    ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_ok

if.end:                                           ; preds = %for.body14
  %arrayidx22 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %p.1138161
  %length23 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %p.1138161, i32 1
  %33 = ptrtoint ptr %length23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %28, ptr %length23, align 4
  %34 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %lb.1139160, ptr %arrayidx22, align 4
  %inc28 = add nuw i32 %p.1138161, 1
  %35 = ptrtoint ptr %sync_packet to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sync_packet, align 4
  %inc30 = add i32 %36, 1
  store i32 %inc30, ptr %sync_packet, align 4
  %37 = ptrtoint ptr %number_of_packets11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %number_of_packets11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc30, i32 %38)
  %cmp12 = icmp slt i32 %inc30, %38
  br i1 %cmp12, label %land.rhs, label %if.end.check_ok_crit_edge

if.end.check_ok_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %check_ok

check_ok:                                         ; preds = %if.end.check_ok_crit_edge, %for.body14.check_ok_crit_edge, %land.rhs.check_ok_crit_edge, %land.rhs.lr.ph.check_ok_crit_edge, %for.cond9.preheader.check_ok_crit_edge
  %p.1.lcssa = phi i32 [ %p.0.lcssa, %for.cond9.preheader.check_ok_crit_edge ], [ %p.0.lcssa, %land.rhs.lr.ph.check_ok_crit_edge ], [ %p.1138161, %for.body14.check_ok_crit_edge ], [ %inc28, %if.end.check_ok_crit_edge ], [ %inc28, %land.rhs.check_ok_crit_edge ]
  %lb.1.lcssa = phi i32 [ %lb.0.lcssa, %for.cond9.preheader.check_ok_crit_edge ], [ %lb.0.lcssa, %land.rhs.lr.ph.check_ok_crit_edge ], [ %lb.1139160, %for.body14.check_ok_crit_edge ], [ %add19, %if.end.check_ok_crit_edge ], [ %add19, %land.rhs.check_ok_crit_edge ]
  %.lcssa130 = phi i32 [ %7, %for.cond9.preheader.check_ok_crit_edge ], [ %7, %land.rhs.lr.ph.check_ok_crit_edge ], [ %25, %for.body14.check_ok_crit_edge ], [ %inc30, %if.end.check_ok_crit_edge ], [ %inc30, %land.rhs.check_ok_crit_edge ]
  %.lcssa = phi i32 [ %9, %for.cond9.preheader.check_ok_crit_edge ], [ %9, %land.rhs.lr.ph.check_ok_crit_edge ], [ %26, %for.body14.check_ok_crit_edge ], [ %38, %if.end.check_ok_crit_edge ], [ %38, %land.rhs.check_ok_crit_edge ]
  %l.2 = phi i32 [ %l.0.lcssa, %for.cond9.preheader.check_ok_crit_edge ], [ %l.0.lcssa, %land.rhs.lr.ph.check_ok_crit_edge ], [ %28, %for.body14.check_ok_crit_edge ], [ %28, %if.end.check_ok_crit_edge ], [ %28, %land.rhs.check_ok_crit_edge ]
  %sub = sub i32 %.lcssa130, %.lcssa
  %39 = ptrtoint ptr %sync_packet to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub, ptr %sync_packet, align 4
  %40 = add i32 %sub, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %40)
  %41 = icmp ult i32 %40, -3
  br i1 %41, label %if.then39, label %if.end47, !prof !168

if.then39:                                        ; preds = %check_ok
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %number_of_packets11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %number_of_packets11, align 4
  %idle_outsize42 = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %idle_outsize42 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %idle_outsize42, align 4
  %add43 = add i32 %l.2, %lb.1.lcssa
  %add44 = add i32 %add43, %45
  %period_size46 = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %period_size46 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %period_size46, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 326, ptr noundef nonnull @.str.19, i32 noundef %sub, i32 noundef %p.1.lcssa, i32 noundef %43, i32 noundef %add44, i32 noundef %45, i32 noundef %lb.1.lcssa, i32 noundef %l.2, i32 noundef %47) #12
  br label %cleanup

if.end47:                                         ; preds = %check_ok
  %frame_size = getelementptr inbounds %struct.usb_stream_config, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %frame_size, align 4
  %rem = urem i32 %lb.1.lcssa, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool48.not = icmp eq i32 %rem, 0
  br i1 %tobool48.not, label %if.end56, label %if.then55, !prof !169

if.then55:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 331, ptr noundef nonnull @.str.20, i32 noundef %lb.1.lcssa) #12
  br label %cleanup

if.end56:                                         ; preds = %if.end47
  %period_size57 = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 3
  %50 = ptrtoint ptr %period_size57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %period_size57, align 4
  %sub58 = sub i32 %lb.1.lcssa, %51
  %idle_outsize59 = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %idle_outsize59 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %idle_outsize59, align 4
  %add60 = add i32 %sub58, %53
  store i32 %add60, ptr %idle_outsize59, align 4
  %number_of_packets61 = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 24
  %54 = ptrtoint ptr %number_of_packets61 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %p.1.lcssa, ptr %number_of_packets61, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %3, i32 0, i32 19
  %55 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %lb.1.lcssa, ptr %transfer_buffer_length, align 4
  %56 = load i32, ptr %idle_outsize59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp63 = icmp slt i32 %56, 1
  br i1 %cmp63, label %if.end56.cleanup_crit_edge, label %if.end65

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end65:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 340, ptr noundef nonnull @.str.21, i32 noundef %56) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end56.cleanup_crit_edge, %if.then55, %if.then39
  %retval.0 = phi i32 [ -1, %if.then39 ], [ -1, %if.then55 ], [ -1, %if.end65 ], [ 0, %if.end56.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @submit_urbs(ptr nocapture noundef %sk, ptr noundef %inurb, ptr noundef %outurb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_outurb = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 7
  %0 = ptrtoint ptr %idle_outurb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idle_outurb, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number_of_packets, align 4
  %idle_inurb = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 4
  %4 = ptrtoint ptr %idle_inurb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %idle_inurb, align 4
  %number_of_packets1.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 24
  %6 = ptrtoint ptr %number_of_packets1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %number_of_packets1.i, align 4
  %iso_frame_desc.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 29
  %7 = ptrtoint ptr %iso_frame_desc.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %iso_frame_desc.i, align 4
  %sub.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp23.i = icmp sgt i32 %sub.i, 0
  br i1 %cmp23.i, label %entry.for.body.i_crit_edge, label %entry.prepare_inurb.exit_crit_edge

entry.prepare_inurb.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %prepare_inurb.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %p.024.i = phi i32 [ %add5.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc.i, i32 %p.024.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %length.i = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc.i, i32 %p.024.i, i32 1
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 4
  %add.i = add i32 %11, %9
  %add5.i = add nuw nsw i32 %p.024.i, 1
  %arrayidx6.i = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc.i, i32 %add5.i
  %12 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i, ptr %arrayidx6.i, align 4
  %exitcond.not.i = icmp eq i32 %add5.i, %sub.i
  br i1 %exitcond.not.i, label %for.body.i.prepare_inurb.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.prepare_inurb.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %prepare_inurb.exit

prepare_inurb.exit:                               ; preds = %for.body.i.prepare_inurb.exit_crit_edge, %entry.prepare_inurb.exit_crit_edge
  %length9.i = getelementptr inbounds %struct.urb, ptr %5, i32 1, i32 1
  %13 = ptrtoint ptr %length9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length9.i, align 4
  %mul.i = mul i32 %14, %3
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %5, i32 0, i32 19
  %15 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul.i, ptr %transfer_buffer_length.i, align 4
  %16 = ptrtoint ptr %idle_inurb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %idle_inurb, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %17, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %prepare_inurb.exit.report_failure_crit_edge, label %if.end

prepare_inurb.exit.report_failure_crit_edge:      ; preds = %prepare_inurb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %report_failure

if.end:                                           ; preds = %prepare_inurb.exit
  %completed_inurb = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 5
  %18 = ptrtoint ptr %completed_inurb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %completed_inurb, align 4
  %20 = ptrtoint ptr %idle_inurb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %idle_inurb, align 4
  store ptr %inurb, ptr %completed_inurb, align 4
  %21 = ptrtoint ptr %idle_outurb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %idle_outurb, align 4
  %call5 = tail call i32 @usb_submit_urb(ptr noundef %22, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.report_failure_crit_edge, label %if.end8

if.end.report_failure_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %report_failure

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %completed_outurb = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 8
  %23 = ptrtoint ptr %completed_outurb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %completed_outurb, align 4
  %25 = ptrtoint ptr %idle_outurb to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %idle_outurb, align 4
  store ptr %outurb, ptr %completed_outurb, align 4
  br label %cleanup

report_failure:                                   ; preds = %if.end.report_failure_crit_edge, %prepare_inurb.exit.report_failure_crit_edge
  %err.0 = phi i32 [ %call, %prepare_inurb.exit.report_failure_crit_edge ], [ %call5, %if.end.report_failure_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 380, ptr noundef nonnull @.str.22, i32 noundef %err.0) #12
  br label %cleanup

cleanup:                                          ; preds = %report_failure, %if.end8
  %retval.0 = phi i32 [ %err.0, %report_failure ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i_capture_idle(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %2 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number_of_packets.i, align 4
  %iso_frame_balance.i = getelementptr inbounds %struct.usb_stream_kernel, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %iso_frame_balance.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iso_frame_balance.i, align 4
  %sub.i = sub i32 %5, %3
  store i32 %sub.i, ptr %iso_frame_balance.i, align 4
  %status.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %7, label %if.then6.i.i [
    i32 0, label %if.end8.i.i
    i32 -108, label %entry.if.end.i.i_crit_edge
    i32 -2, label %entry.if.end.i.i_crit_edge6
  ], !prof !167

entry.if.end.i.i_crit_edge6:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then6.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 249, ptr noundef nonnull @.str.15, i32 noundef %7) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then6.i.i, %entry.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge6
  %9 = ptrtoint ptr %iso_frame_balance.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2147483647, ptr %iso_frame_balance.i, align 4
  br label %if.end

if.end8.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp10.i.i = icmp eq i32 %5, %3
  %i_urb = getelementptr inbounds %struct.usb_stream_kernel, ptr %1, i32 0, i32 9
  br i1 %cmp10.i.i, label %if.then, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %i_urb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %urb, ptr %i_urb, align 4
  br label %if.end

if.then:                                          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %i_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_urb, align 4
  tail call fastcc void @stream_idle(ptr noundef %1, ptr noundef %urb, ptr noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then12.i.i, %if.end.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i_playback_idle(ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %2 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number_of_packets.i, align 4
  %iso_frame_balance.i = getelementptr inbounds %struct.usb_stream_kernel, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %iso_frame_balance.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iso_frame_balance.i, align 4
  %add.i = add i32 %5, %3
  store i32 %add.i, ptr %iso_frame_balance.i, align 4
  %status.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %6 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %7, label %if.then6.i.i [
    i32 0, label %if.end8.i.i
    i32 -108, label %entry.if.end.i.i_crit_edge
    i32 -2, label %entry.if.end.i.i_crit_edge6
  ], !prof !167

entry.if.end.i.i_crit_edge6:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then6.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 249, ptr noundef nonnull @.str.15, i32 noundef %7) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then6.i.i, %entry.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge6
  %9 = ptrtoint ptr %iso_frame_balance.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2147483647, ptr %iso_frame_balance.i, align 4
  br label %if.end

if.end8.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp10.i.i = icmp eq i32 %add.i, 0
  %i_urb = getelementptr inbounds %struct.usb_stream_kernel, ptr %1, i32 0, i32 9
  br i1 %cmp10.i.i, label %if.then, label %if.then12.i.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %i_urb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %urb, ptr %i_urb, align 4
  br label %if.end

if.then:                                          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %i_urb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i_urb, align 4
  tail call fastcc void @stream_idle(ptr noundef %1, ptr noundef %12, ptr noundef %urb)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then12.i.i, %if.end.i.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stream_idle(ptr noundef %sk, ptr noundef %inurb, ptr noundef %outurb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 4
  %idle_insize = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %idle_insize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idle_insize, align 4
  %next_inpacket_split = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %next_inpacket_split to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_inpacket_split, align 4
  %inpacket_split = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %inpacket_split to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %inpacket_split, align 4
  %next_inpacket_split_at = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %next_inpacket_split_at to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %next_inpacket_split_at, align 4
  %inpacket_split_at = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %inpacket_split_at to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %inpacket_split_at, align 4
  store i32 -1, ptr %next_inpacket_split, align 4
  store i32 0, ptr %next_inpacket_split_at, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %inurb, i32 0, i32 24
  %10 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp158 = icmp sgt i32 %11, 0
  br i1 %cmp158, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %iso_frame_desc = getelementptr inbounds %struct.urb, ptr %inurb, i32 0, i32 29
  %inpacket_head = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 13
  %inpackets = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 12
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %inurb, i32 0, i32 14
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i32
  %period_size = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %urb_size.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %add35, %for.inc.for.body_crit_edge ]
  %insize.0160 = phi i32 [ %3, %for.body.lr.ph ], [ %add24, %for.inc.for.body_crit_edge ]
  %p.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %inc36, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %p.0159
  %actual_length = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %p.0159, i32 2
  %12 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4 = icmp eq i32 %13, 0
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %lor.rhs, !prof !168

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.rhs:                                          ; preds = %for.body
  %status = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %p.0159, i32 3
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end, label %lor.rhs.cleanup_crit_edge, !prof !169

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %16 = ptrtoint ptr %inpacket_head to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %inpacket_head, align 4
  %inc = add i32 %17, 1
  %18 = ptrtoint ptr %inpackets to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inpackets, align 4
  %rem = urem i32 %inc, %19
  store i32 %rem, ptr %inpacket_head, align 4
  %20 = ptrtoint ptr %inpacket_split to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inpacket_split, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp12 = icmp eq i32 %21, -1
  br i1 %cmp12, label %if.then13, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %inpacket_split to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %rem, ptr %inpacket_split, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %25 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %transfer_buffer, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %26 to i32
  %sub.ptr.sub = sub i32 %24, %sub.ptr.rhs.cast
  %add = add i32 %sub.ptr.sub, %sub.ptr.lhs.cast
  %27 = ptrtoint ptr %inpacket_head to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %inpacket_head, align 4
  %arrayidx19 = getelementptr %struct.usb_stream, ptr %1, i32 0, i32 18, i32 %28
  %29 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %arrayidx19, align 4
  %length = getelementptr %struct.usb_stream, ptr %1, i32 0, i32 18, i32 %28, i32 1
  %30 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %13, ptr %length, align 4
  %add24 = add i32 %13, %insize.0160
  %31 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %period_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add24, i32 %32)
  %cmp25 = icmp sgt i32 %add24, %32
  br i1 %cmp25, label %land.lhs.true, label %if.end16.for.inc_crit_edge

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end16
  %33 = ptrtoint ptr %next_inpacket_split to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %next_inpacket_split, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp27 = icmp eq i32 %34, -1
  br i1 %cmp27, label %if.then28, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %inpacket_head to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %inpacket_head, align 4
  %37 = ptrtoint ptr %next_inpacket_split to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %next_inpacket_split, align 4
  %sub = sub i32 %32, %insize.0160
  %38 = ptrtoint ptr %next_inpacket_split_at to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub, ptr %next_inpacket_split_at, align 4
  br label %for.inc

cleanup:                                          ; preds = %lor.rhs.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %status9 = getelementptr %struct.usb_iso_packet_descriptor, ptr %iso_frame_desc, i32 %p.0159, i32 3
  %39 = ptrtoint ptr %status9 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %status9, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 464, ptr noundef nonnull @.str.23, i32 noundef %40) #12
  br label %err_out

for.inc:                                          ; preds = %if.then28, %land.lhs.true.for.inc_crit_edge, %if.end16.for.inc_crit_edge
  %add35 = add i32 %13, %urb_size.0161
  %inc36 = add nuw nsw i32 %p.0159, 1
  %41 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %number_of_packets, align 4
  %cmp = icmp slt i32 %inc36, %42
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %urb_size.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add35, %for.inc.for.end_crit_edge ]
  %period_size37 = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %period_size37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %period_size37, align 4
  %sub38 = sub i32 %urb_size.0.lcssa, %44
  %45 = ptrtoint ptr %idle_insize to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %idle_insize, align 4
  %add40 = add i32 %46, %sub38
  store i32 %add40, ptr %idle_insize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add40)
  %cmp42 = icmp slt i32 %add40, 0
  br i1 %cmp42, label %if.then43, label %if.end45

if.then43:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %frame_size = getelementptr inbounds %struct.usb_stream_config, ptr %1, i32 0, i32 3
  %47 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %frame_size, align 4
  %div = sdiv i32 %add40, %48
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 486, ptr noundef nonnull @.str.16, i32 noundef %div) #12
  br label %err_out

if.end45:                                         ; preds = %for.end
  %insize_done = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 8
  %49 = ptrtoint ptr %insize_done to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %insize_done, align 4
  %add46 = add i32 %50, %urb_size.0.lcssa
  store i32 %add46, ptr %insize_done, align 4
  %idle_outsize = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 6
  %51 = ptrtoint ptr %idle_outsize to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %idle_outsize, align 4
  %idle_outurb = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 7
  %53 = ptrtoint ptr %idle_outurb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %idle_outurb, align 4
  %transfer_buffer47 = getelementptr inbounds %struct.urb, ptr %54, i32 0, i32 14
  %55 = ptrtoint ptr %transfer_buffer47 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %transfer_buffer47, align 4
  %write_page = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 1
  %57 = ptrtoint ptr %write_page to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_page, align 4
  %sub.ptr.lhs.cast48 = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast49 = ptrtoint ptr %58 to i32
  %59 = add i32 %52, %sub.ptr.rhs.cast49
  %sub51 = sub i32 %sub.ptr.lhs.cast48, %59
  %outpacket = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 11
  %60 = ptrtoint ptr %outpacket to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub51, ptr %outpacket, align 4
  %call = tail call fastcc i32 @usb_stream_prepare_playback(ptr noundef %sk, ptr noundef %inurb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp54 = icmp slt i32 %call, 0
  br i1 %cmp54, label %if.end45.err_out_crit_edge, label %if.end56

if.end45.err_out_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

if.end56:                                         ; preds = %if.end45
  %61 = ptrtoint ptr %idle_outurb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %idle_outurb, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %62, i32 0, i32 19
  %63 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %transfer_buffer_length, align 4
  %add58 = add i32 %64, %52
  %length61 = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 11, i32 0, i32 1
  %65 = ptrtoint ptr %length61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add58, ptr %length61, align 4
  %completed_outurb = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 8
  %66 = ptrtoint ptr %completed_outurb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %completed_outurb, align 4
  %transfer_buffer62 = getelementptr inbounds %struct.urb, ptr %67, i32 0, i32 14
  %68 = ptrtoint ptr %transfer_buffer62 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %transfer_buffer62, align 4
  %70 = ptrtoint ptr %write_page to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %write_page, align 4
  %sub.ptr.lhs.cast64 = ptrtoint ptr %69 to i32
  %sub.ptr.rhs.cast65 = ptrtoint ptr %71 to i32
  %sub.ptr.sub66 = sub i32 %sub.ptr.lhs.cast64, %sub.ptr.rhs.cast65
  %arrayidx68 = getelementptr %struct.usb_stream, ptr %1, i32 0, i32 11, i32 1
  %72 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub.ptr.sub66, ptr %arrayidx68, align 4
  %call70 = tail call fastcc i32 @submit_urbs(ptr noundef %sk, ptr noundef %inurb, ptr noundef %outurb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.end56.err_out_crit_edge, label %if.end73

if.end56.err_out_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

if.end73:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %periods_done = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 9
  %73 = ptrtoint ptr %periods_done to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %periods_done, align 4
  %inc74 = add i32 %74, 1
  store i32 %inc74, ptr %periods_done, align 4
  br label %cleanup76

err_out:                                          ; preds = %if.end56.err_out_crit_edge, %if.end45.err_out_crit_edge, %if.then43, %cleanup
  %state = getelementptr inbounds %struct.usb_stream, ptr %1, i32 0, i32 4
  %75 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 6, ptr %state, align 4
  br label %cleanup76

cleanup76:                                        ; preds = %err_out, %if.end73
  %sleep75 = getelementptr inbounds %struct.usb_stream_kernel, ptr %sk, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %sleep75, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_us122l_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %hw.i.i.i = alloca ptr, align 4
  %card.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %0 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_info, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %speed = getelementptr i8, ptr %3, i32 -100
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef 575, ptr noundef nonnull @.str.28) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %6 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %9 to i32
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef 580, ptr noundef nonnull @.str.29, ptr noundef %intf, i32 noundef %conv) #12
  %10 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber3 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bInterfaceNumber3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bInterfaceNumber3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp5.not = icmp eq i8 %13, 1
  br i1 %cmp5.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @usb_get_intf(ptr noundef %intf) #12
  %parent.i.i = getelementptr inbounds %struct.usb_interface, ptr %call9, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 -128
  %16 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %driver_info, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card.i.i) #12
  %18 = ptrtoint ptr %card.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %card.i.i, align 4, !annotation !170
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end8
  %dev.050.i.i = phi i32 [ 0, %if.end8 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [32 x i8], ptr @enable, i32 0, i32 %dev.050.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %arrayidx1.i.i = getelementptr [32 x i32], ptr @snd_us122l_card_used, i32 0, i32 %dev.050.i.i
  %21 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool2.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool2.not.i.i, label %if.end5.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %dev.050.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.inc.i.i.usx2y_create_card.exit.thread.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.usx2y_create_card.exit.thread.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usx2y_create_card.exit.thread.i

if.end5.i.i:                                      ; preds = %land.lhs.true.i.i
  %dev6.i.i = getelementptr inbounds %struct.usb_interface, ptr %call9, i32 0, i32 7
  %arrayidx7.i.i = getelementptr [32 x i32], ptr @index, i32 0, i32 %dev.050.i.i
  %23 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx7.i.i, align 4
  %arrayidx8.i.i = getelementptr [32 x ptr], ptr @id, i32 0, i32 %dev.050.i.i
  %25 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx8.i.i, align 4
  %call.i.i = call i32 @snd_card_new(ptr noundef %dev6.i.i, i32 noundef %24, ptr noundef %26, ptr noundef null, i32 noundef 268, ptr noundef nonnull %card.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp9.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp9.i.i, label %if.end5.i.i.usx2y_create_card.exit.thread.i_crit_edge, label %if.end.i

if.end5.i.i.usx2y_create_card.exit.thread.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %usx2y_create_card.exit.thread.i

usx2y_create_card.exit.thread.i:                  ; preds = %if.end5.i.i.usx2y_create_card.exit.thread.i_crit_edge, %for.inc.i.i.usx2y_create_card.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i, %if.end5.i.i.usx2y_create_card.exit.thread.i_crit_edge ], [ -19, %for.inc.i.i.usx2y_create_card.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card.i.i) #12
  br label %if.then13

if.end.i:                                         ; preds = %if.end5.i.i
  %27 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_card, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %private_data.i.i, align 8
  %card_index.i.i = getelementptr inbounds %struct.us122l, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %card_index.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %dev.050.i.i, ptr %card_index.i.i, align 4
  %32 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %arrayidx1.i.i, align 4
  %private_free.i.i = getelementptr inbounds %struct.snd_card, ptr %28, i32 0, i32 10
  %33 = ptrtoint ptr %private_free.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @snd_us122l_free, ptr %private_free.i.i, align 4
  %34 = load ptr, ptr %private_data.i.i, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr.i.i, ptr %34, align 4
  %36 = load ptr, ptr %card.i.i, align 4
  %private_data15.i.i = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %private_data15.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %private_data15.i.i, align 8
  %mutex.i.i = getelementptr inbounds %struct.us122l, ptr %38, i32 0, i32 4
  call void @__mutex_init(ptr noundef %mutex.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @usx2y_create_card.__key) #12
  %39 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card.i.i, align 4
  %private_data17.i.i = getelementptr inbounds %struct.snd_card, ptr %40, i32 0, i32 9
  %41 = ptrtoint ptr %private_data17.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %private_data17.i.i, align 8
  %sleep.i.i = getelementptr inbounds %struct.us122l, ptr %42, i32 0, i32 3, i32 11
  call void @__init_waitqueue_head(ptr noundef %sleep.i.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @usx2y_create_card.__key.31) #12
  %43 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card.i.i, align 4
  %private_data21.i.i = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %private_data21.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %private_data21.i.i, align 8
  %is_us144.i.i = getelementptr inbounds %struct.us122l, ptr %46, i32 0, i32 11
  %47 = trunc i32 %17 to i8
  %48 = and i8 %47, 1
  %49 = ptrtoint ptr %is_us144.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %is_us144.i.i, align 4
  %50 = load ptr, ptr %private_data21.i.i, align 8
  %midi_list.i.i = getelementptr inbounds %struct.us122l, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %midi_list.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %midi_list.i.i, ptr %midi_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.us122l, ptr %50, i32 0, i32 9, i32 1
  %52 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %midi_list.i.i, ptr %prev.i.i.i, align 4
  %driver.i.i = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 2
  %53 = call ptr @memcpy(ptr %driver.i.i, ptr @.str.33, i32 12)
  %shortname.i.i = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 3
  %54 = call ptr @memcpy(ptr %shortname.i.i, ptr @.str.34, i32 15)
  %longname.i.i = getelementptr inbounds %struct.snd_card, ptr %44, i32 0, i32 4
  %idVendor.i.i = getelementptr i8, ptr %15, i32 936
  %55 = ptrtoint ptr %idVendor.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %idVendor.i.i, align 8
  %57 = call i16 @llvm.bswap.i16(i16 %56) #12
  %conv.i.i = zext i16 %57 to i32
  %idProduct.i.i = getelementptr i8, ptr %15, i32 938
  %58 = ptrtoint ptr %idProduct.i.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %idProduct.i.i, align 2
  %60 = call i16 @llvm.bswap.i16(i16 %59) #12
  %conv30.i.i = zext i16 %60 to i32
  %61 = ptrtoint ptr %private_data21.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %private_data21.i.i, align 8
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %bus.i.i = getelementptr inbounds %struct.usb_device, ptr %64, i32 0, i32 12
  %65 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bus.i.i, align 8
  %busnum.i.i = getelementptr inbounds %struct.usb_bus, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %busnum.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %busnum.i.i, align 4
  %69 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %64, align 8
  %call35.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname.i.i, ptr noundef nonnull @.str.35, ptr noundef %shortname.i.i, i32 noundef %conv.i.i, i32 noundef %conv30.i.i, i32 noundef 0, i32 noundef %68, i32 noundef %70) #12
  %71 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %card.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card.i.i) #12
  %private_data.i22.i = getelementptr inbounds %struct.snd_card, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %private_data.i22.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %private_data.i22.i, align 8
  %is_us144.i23.i = getelementptr inbounds %struct.us122l, ptr %74, i32 0, i32 11
  %75 = ptrtoint ptr %is_us144.i23.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %is_us144.i23.i, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i24.i = icmp eq i8 %76, 0
  br i1 %tobool.not.i24.i, label %if.end.i.if.end3.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end3.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %74, align 4
  %call.i25.i = call i32 @usb_set_interface(ptr noundef %78, i32 noundef 0, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool1.not.i.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i.if.end3.i.i_crit_edge, label %if.then2.i.i

if.then.i.i.if.end3.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef 448, ptr noundef nonnull @.str.36) #12
  br label %if.then3.i

if.end3.i.i:                                      ; preds = %if.then.i.i.if.end3.i.i_crit_edge, %if.end.i.if.end3.i.i_crit_edge
  %79 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %74, align 4
  %call5.i.i = call i32 @usb_set_interface(ptr noundef %80, i32 noundef 1, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef 454, ptr noundef nonnull @.str.36) #12
  br label %if.then3.i

if.end8.i.i:                                      ; preds = %if.end3.i.i
  %81 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %74, align 4
  %call.i.i.i = call i32 @usb_control_msg_send(ptr noundef %82, i8 noundef zeroext 0, i8 noundef zeroext 73, i8 noundef zeroext 64, i16 noundef zeroext 17, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3072) #12
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef 92, ptr noundef nonnull @.str.13, i32 noundef %call.i.i.i) #12
  %83 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %74, align 4
  %call.i49.i.i = call i32 @usb_control_msg_send(ptr noundef %84, i8 noundef zeroext 0, i8 noundef zeroext 73, i8 noundef zeroext 64, i16 noundef zeroext 16, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3072) #12
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef 92, ptr noundef nonnull @.str.13, i32 noundef %call.i49.i.i) #12
  %call11.i.i = call fastcc zeroext i1 @us122l_start(ptr noundef %74, i32 noundef 44100, i32 noundef 256) #12
  br i1 %call11.i.i, label %if.end13.i.i, label %if.end8.i.i.if.then3.i_crit_edge

if.end8.i.i.if.then3.i_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3.i

if.end13.i.i:                                     ; preds = %if.end8.i.i
  %85 = ptrtoint ptr %is_us144.i23.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %is_us144.i23.i, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool15.not.i.i = icmp eq i8 %86, 0
  %87 = ptrtoint ptr %private_data.i22.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %private_data.i22.i, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %91 = xor i8 %86, 1
  %92 = zext i8 %91 to i32
  %us122l_create_usbmidi.quirk.us144_create_usbmidi.quirk.i.i = select i1 %tobool15.not.i.i, ptr @us122l_create_usbmidi.quirk, ptr @us144_create_usbmidi.quirk
  %call.i52.i.i = call ptr @usb_ifnum_to_if(ptr noundef %90, i32 noundef %92) #12
  %93 = ptrtoint ptr %private_data.i22.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %private_data.i22.i, align 8
  %midi_list.i53.i.i = getelementptr inbounds %struct.us122l, ptr %94, i32 0, i32 9
  %call.i.i54.i.i = call i32 @__snd_usbmidi_create(ptr noundef %72, ptr noundef %call.i52.i.i, ptr noundef %midi_list.i53.i.i, ptr noundef nonnull %us122l_create_usbmidi.quirk.us144_create_usbmidi.quirk.i.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i54.i.i, 0
  br i1 %cmp.i.i, label %if.then20.i.i, label %if.end21.i.i

if.then20.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef 469, ptr noundef nonnull @.str.37, i32 noundef %call.i.i54.i.i) #12
  br label %stop.i.i

if.end21.i.i:                                     ; preds = %if.end13.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw.i.i.i) #12
  %95 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 -1 to ptr), ptr %hw.i.i.i, align 4, !annotation !170
  %96 = ptrtoint ptr %private_data.i22.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %private_data.i22.i, align 8
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %call.i56.i.i = call i32 @snd_hwdep_new(ptr noundef %72, ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef nonnull %hw.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i56.i.i, 0
  br i1 %cmp.i.i.i, label %if.then24.i.i, label %if.end5.i

if.then24.i.i:                                    ; preds = %if.end21.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw.i.i.i) #12
  %midi_list.i26.i = getelementptr inbounds %struct.us122l, ptr %74, i32 0, i32 9
  %100 = ptrtoint ptr %midi_list.i26.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %p.061.i.i = load ptr, ptr %midi_list.i26.i, align 4
  %cmp.i57.not62.i.i = icmp eq ptr %p.061.i.i, %midi_list.i26.i
  br i1 %cmp.i57.not62.i.i, label %if.then24.i.i.stop.i.i_crit_edge, label %if.then24.i.i.for.body.i27.i_crit_edge

if.then24.i.i.for.body.i27.i_crit_edge:           ; preds = %if.then24.i.i
  br label %for.body.i27.i

if.then24.i.i.stop.i.i_crit_edge:                 ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop.i.i

for.body.i27.i:                                   ; preds = %for.body.i27.i.for.body.i27.i_crit_edge, %if.then24.i.i.for.body.i27.i_crit_edge
  %p.063.i.i = phi ptr [ %p.0.i.i, %for.body.i27.i.for.body.i27.i_crit_edge ], [ %p.061.i.i, %if.then24.i.i.for.body.i27.i_crit_edge ]
  call void @snd_usbmidi_disconnect(ptr noundef %p.063.i.i) #12
  %101 = ptrtoint ptr %p.063.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %p.0.i.i = load ptr, ptr %p.063.i.i, align 4
  %cmp.i57.not.i.i = icmp eq ptr %p.0.i.i, %midi_list.i26.i
  br i1 %cmp.i57.not.i.i, label %for.body.i27.i.stop.i.i_crit_edge, label %for.body.i27.i.for.body.i27.i_crit_edge

for.body.i27.i.for.body.i27.i_crit_edge:          ; preds = %for.body.i27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i27.i

for.body.i27.i.stop.i.i_crit_edge:                ; preds = %for.body.i27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %stop.i.i

stop.i.i:                                         ; preds = %for.body.i27.i.stop.i.i_crit_edge, %if.then24.i.i.stop.i.i_crit_edge, %if.then20.i.i
  %midi_list.i58.i.i = getelementptr inbounds %struct.us122l, ptr %74, i32 0, i32 9
  %102 = ptrtoint ptr %midi_list.i58.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %p.09.i.i.i = load ptr, ptr %midi_list.i58.i.i, align 4
  %cmp.i.not10.i.i.i = icmp eq ptr %p.09.i.i.i, %midi_list.i58.i.i
  br i1 %cmp.i.not10.i.i.i, label %stop.i.i.us122l_stop.exit.i.i_crit_edge, label %stop.i.i.for.body.i.i.i_crit_edge

stop.i.i.for.body.i.i.i_crit_edge:                ; preds = %stop.i.i
  br label %for.body.i.i.i

stop.i.i.us122l_stop.exit.i.i_crit_edge:          ; preds = %stop.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %us122l_stop.exit.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %stop.i.i.for.body.i.i.i_crit_edge
  %p.011.i.i.i = phi ptr [ %p.0.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %p.09.i.i.i, %stop.i.i.for.body.i.i.i_crit_edge ]
  call void @snd_usbmidi_input_stop(ptr noundef %p.011.i.i.i) #12
  %103 = ptrtoint ptr %p.011.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %p.0.i.i.i = load ptr, ptr %p.011.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %p.0.i.i.i, %midi_list.i58.i.i
  br i1 %cmp.i.not.i.i.i, label %for.body.i.i.i.us122l_stop.exit.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

for.body.i.i.i.us122l_stop.exit.i.i_crit_edge:    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %us122l_stop.exit.i.i

us122l_stop.exit.i.i:                             ; preds = %for.body.i.i.i.us122l_stop.exit.i.i_crit_edge, %stop.i.i.us122l_stop.exit.i.i_crit_edge
  %sk.i.i.i = getelementptr inbounds %struct.us122l, ptr %74, i32 0, i32 3
  call void @usb_stream_stop(ptr noundef %sk.i.i.i) #12
  call void @usb_stream_free(ptr noundef %sk.i.i.i) #12
  br label %if.then3.i

if.then3.i:                                       ; preds = %us122l_stop.exit.i.i, %if.end8.i.i.if.then3.i_crit_edge, %if.then7.i.i, %if.then2.i.i
  %call4.i = call i32 @snd_card_free(ptr noundef %72) #12
  br label %if.then13

if.end5.i:                                        ; preds = %if.end21.i.i
  %104 = ptrtoint ptr %hw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw.i.i.i, align 4
  %iface.i.i.i = getelementptr inbounds %struct.snd_hwdep, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %iface.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 17, ptr %iface.i.i.i, align 8
  %107 = ptrtoint ptr %private_data.i22.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %private_data.i22.i, align 8
  %private_data3.i.i.i = getelementptr inbounds %struct.snd_hwdep, ptr %105, i32 0, i32 10
  %109 = ptrtoint ptr %private_data3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %private_data3.i.i.i, align 4
  %open.i.i.i = getelementptr inbounds %struct.snd_hwdep, ptr %105, i32 0, i32 8, i32 3
  %110 = ptrtoint ptr %open.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @usb_stream_hwdep_open, ptr %open.i.i.i, align 4
  %release.i.i.i = getelementptr inbounds %struct.snd_hwdep, ptr %105, i32 0, i32 8, i32 4
  %111 = ptrtoint ptr %release.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @usb_stream_hwdep_release, ptr %release.i.i.i, align 4
  %ioctl.i.i.i = getelementptr inbounds %struct.snd_hwdep, ptr %105, i32 0, i32 8, i32 6
  %112 = ptrtoint ptr %ioctl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @usb_stream_hwdep_ioctl, ptr %ioctl.i.i.i, align 4
  %ioctl_compat.i.i.i = getelementptr inbounds %struct.snd_hwdep, ptr %105, i32 0, i32 8, i32 7
  %113 = ptrtoint ptr %ioctl_compat.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @usb_stream_hwdep_ioctl, ptr %ioctl_compat.i.i.i, align 4
  %mmap.i.i.i = getelementptr inbounds %struct.snd_hwdep, ptr %105, i32 0, i32 8, i32 8
  %114 = ptrtoint ptr %mmap.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @usb_stream_hwdep_mmap, ptr %mmap.i.i.i, align 4
  %poll.i.i.i = getelementptr inbounds %struct.snd_hwdep, ptr %105, i32 0, i32 8, i32 5
  %115 = ptrtoint ptr %poll.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @usb_stream_hwdep_poll, ptr %poll.i.i.i, align 4
  %name.i.i.i = getelementptr inbounds %struct.snd_hwdep, ptr %105, i32 0, i32 4
  %bus.i.i.i = getelementptr inbounds %struct.usb_device, ptr %99, i32 0, i32 12
  %116 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bus.i.i.i, align 8
  %busnum.i.i.i = getelementptr inbounds %struct.usb_bus, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %busnum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %busnum.i.i.i, align 4
  %120 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %99, align 8
  %call9.i.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i.i.i, ptr noundef nonnull @.str.45, i32 noundef %119, i32 noundef %121) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw.i.i.i) #12
  %call6.i = call i32 @snd_card_register(ptr noundef %72) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.then8.i, label %if.end14

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i = call i32 @snd_card_free(ptr noundef %72) #12
  br label %if.then13

if.then13:                                        ; preds = %if.then8.i, %if.then3.i, %usx2y_create_card.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %usx2y_create_card.exit.thread.i ], [ -22, %if.then3.i ], [ %call6.i, %if.then8.i ]
  call void @usb_put_intf(ptr noundef %intf) #12
  br label %cleanup

if.end14:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #14
  %call11.i = call ptr @usb_ifnum_to_if(ptr noundef %add.ptr.i.i, i32 noundef 0) #12
  %call12.i = call ptr @usb_get_intf(ptr noundef %call11.i) #12
  %call13.i = call ptr @usb_get_dev(ptr noundef %add.ptr.i.i) #12
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %122 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %72, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ %retval.0.i.ph, %if.then13 ], [ 0, %if.end14 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_us122l_disconnect(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @snd_card_disconnect(ptr noundef nonnull %1) #12
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %mutex = getelementptr inbounds %struct.us122l, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %midi_list.i = getelementptr inbounds %struct.us122l, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %midi_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %p.09.i = load ptr, ptr %midi_list.i, align 4
  %cmp.i.not10.i = icmp eq ptr %p.09.i, %midi_list.i
  br i1 %cmp.i.not10.i, label %if.end.us122l_stop.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.us122l_stop.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %us122l_stop.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %p.011.i = phi ptr [ %p.0.i, %for.body.i.for.body.i_crit_edge ], [ %p.09.i, %if.end.for.body.i_crit_edge ]
  tail call void @snd_usbmidi_input_stop(ptr noundef %p.011.i) #12
  %5 = ptrtoint ptr %p.011.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %p.0.i = load ptr, ptr %p.011.i, align 4
  %cmp.i.not.i = icmp eq ptr %p.0.i, %midi_list.i
  br i1 %cmp.i.not.i, label %for.body.i.us122l_stop.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.us122l_stop.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %us122l_stop.exit

us122l_stop.exit:                                 ; preds = %for.body.i.us122l_stop.exit_crit_edge, %if.end.us122l_stop.exit_crit_edge
  %sk.i = getelementptr inbounds %struct.us122l, ptr %3, i32 0, i32 3
  tail call void @usb_stream_stop(ptr noundef %sk.i) #12
  tail call void @usb_stream_free(ptr noundef %sk.i) #12
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  %6 = ptrtoint ptr %midi_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %p.029 = load ptr, ptr %midi_list.i, align 4
  %cmp.i.not30 = icmp eq ptr %p.029, %midi_list.i
  br i1 %cmp.i.not30, label %us122l_stop.exit.for.end_crit_edge, label %us122l_stop.exit.for.body_crit_edge

us122l_stop.exit.for.body_crit_edge:              ; preds = %us122l_stop.exit
  br label %for.body

us122l_stop.exit.for.end_crit_edge:               ; preds = %us122l_stop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %us122l_stop.exit.for.body_crit_edge
  %p.031 = phi ptr [ %p.0, %for.body.for.body_crit_edge ], [ %p.029, %us122l_stop.exit.for.body_crit_edge ]
  tail call void @snd_usbmidi_disconnect(ptr noundef %p.031) #12
  %7 = ptrtoint ptr %p.031 to i32
  call void @__asan_load4_noabort(i32 %7)
  %p.0 = load ptr, ptr %p.031, align 4
  %cmp.i.not = icmp eq ptr %p.0, %midi_list.i
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %us122l_stop.exit.for.end_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call7 = tail call ptr @usb_ifnum_to_if(ptr noundef %9, i32 noundef 0) #12
  tail call void @usb_put_intf(ptr noundef %call7) #12
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call9 = tail call ptr @usb_ifnum_to_if(ptr noundef %11, i32 noundef 1) #12
  tail call void @usb_put_intf(ptr noundef %call9) #12
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  tail call void @usb_put_dev(ptr noundef %13) #12
  %mmap_count = getelementptr inbounds %struct.us122l, ptr %3, i32 0, i32 10
  %call.i.i32 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count, i32 noundef 4) #12
  %14 = ptrtoint ptr %mmap_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %mmap_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not33 = icmp eq i32 %15, 0
  br i1 %tobool12.not33, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  tail call void @msleep(i32 noundef 500) #12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count, i32 noundef 4) #12
  %16 = ptrtoint ptr %mmap_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %mmap_count, align 4
  %tobool12.not = icmp eq i32 %17, 0
  br i1 %tobool12.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end.while.end_crit_edge
  %call13 = tail call i32 @snd_card_free(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_us122l_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 768, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  tail call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 8
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %midi_list = getelementptr inbounds %struct.us122l, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %midi_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %p.020 = load ptr, ptr %midi_list, align 4
  %cmp.i.not21 = icmp eq ptr %p.020, %midi_list
  br i1 %cmp.i.not21, label %if.end3.for.end_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %p.022 = phi ptr [ %p.0, %for.body.for.body_crit_edge ], [ %p.020, %if.end3.for.body_crit_edge ]
  tail call void @snd_usbmidi_input_stop(ptr noundef %p.022) #12
  %6 = ptrtoint ptr %p.022 to i32
  call void @__asan_load4_noabort(i32 %6)
  %p.0 = load ptr, ptr %p.022, align 4
  %cmp.i.not = icmp eq ptr %p.0, %midi_list
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end3.for.end_crit_edge
  %mutex = getelementptr inbounds %struct.us122l, ptr %4, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %sk = getelementptr inbounds %struct.us122l, ptr %4, i32 0, i32 3
  tail call void @usb_stream_stop(ptr noundef %sk)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_us122l_resume(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mutex = getelementptr inbounds %struct.us122l, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %is_us144 = getelementptr inbounds %struct.us122l, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %is_us144 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_us144, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %if.end3.if.end10_crit_edge, label %if.then5

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then5:                                         ; preds = %if.end3
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call6 = tail call i32 @usb_set_interface(ptr noundef %7, i32 noundef 0, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then8

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef 671, ptr noundef nonnull @.str.36) #12
  br label %unlock

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.end3.if.end10_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call12 = tail call i32 @usb_set_interface(ptr noundef %9, i32 noundef 1, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef 677, ptr noundef nonnull @.str.36) #12
  br label %unlock

if.end15:                                         ; preds = %if.end10
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @usb_control_msg_send(ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext 73, i8 noundef zeroext 64, i16 noundef zeroext 17, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3072) #12
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef 92, ptr noundef nonnull @.str.13, i32 noundef %call.i) #12
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call.i55 = tail call i32 @usb_control_msg_send(ptr noundef %13, i8 noundef zeroext 0, i8 noundef zeroext 73, i8 noundef zeroext 64, i16 noundef zeroext 16, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000, i32 noundef 3072) #12
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef 92, ptr noundef nonnull @.str.13, i32 noundef %call.i55) #12
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %sk = getelementptr inbounds %struct.us122l, ptr %3, i32 0, i32 3
  %16 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk, align 4
  %sample_rate = getelementptr inbounds %struct.usb_stream_config, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sample_rate, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #12
  %20 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %21 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %conv.i = trunc i32 %19 to i8
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %data.i, align 1
  %23 = lshr i32 %19, 8
  %conv1.i = trunc i32 %23 to i8
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv1.i, ptr %20, align 1
  %25 = lshr i32 %19, 16
  %conv4.i = trunc i32 %25 to i8
  %26 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv4.i, ptr %21, align 1
  %call.i56 = call i32 @usb_control_msg_send(ptr noundef %15, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 34, i16 noundef zeroext 256, i16 noundef zeroext 129, ptr noundef nonnull %data.i, i16 noundef zeroext 3, i32 noundef 1000, i32 noundef 3072) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i, label %us122l_set_sample_rate.exit.thread, label %us122l_set_sample_rate.exit

us122l_set_sample_rate.exit.thread:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #12
  br label %if.end21

us122l_set_sample_rate.exit:                      ; preds = %if.end15
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %15, align 8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef 293, ptr noundef nonnull @.str.40, i32 noundef %28, i32 noundef %19, i32 noundef 129) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp = icmp slt i32 %call.i56, 0
  br i1 %cmp, label %if.then20, label %us122l_set_sample_rate.exit.if.end21_crit_edge

us122l_set_sample_rate.exit.if.end21_crit_edge:   ; preds = %us122l_set_sample_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then20:                                        ; preds = %us122l_set_sample_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef 687, ptr noundef nonnull @.str.38) #12
  br label %unlock

if.end21:                                         ; preds = %us122l_set_sample_rate.exit.if.end21_crit_edge, %us122l_set_sample_rate.exit.thread
  %call23 = call i32 @usb_stream_start(ptr noundef %sk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.unlock_crit_edge

if.end21.unlock_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end26:                                         ; preds = %if.end21
  %midi_list = getelementptr inbounds %struct.us122l, ptr %3, i32 0, i32 9
  %29 = ptrtoint ptr %midi_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %p.059 = load ptr, ptr %midi_list, align 4
  %cmp.i.not60 = icmp eq ptr %p.059, %midi_list
  br i1 %cmp.i.not60, label %if.end26.unlock_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

if.end26.unlock_crit_edge:                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end26.for.body_crit_edge
  %p.061 = phi ptr [ %p.0, %for.body.for.body_crit_edge ], [ %p.059, %if.end26.for.body_crit_edge ]
  call void @snd_usbmidi_input_start(ptr noundef %p.061) #12
  %30 = ptrtoint ptr %p.061 to i32
  call void @__asan_load4_noabort(i32 %30)
  %p.0 = load ptr, ptr %p.061, align 4
  %cmp.i.not = icmp eq ptr %p.0, %midi_list
  br i1 %cmp.i.not, label %for.body.unlock_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.unlock_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

unlock:                                           ; preds = %for.body.unlock_crit_edge, %if.end26.unlock_crit_edge, %if.end21.unlock_crit_edge, %if.then20, %if.then14, %if.then8
  %err.0 = phi i32 [ %call6, %if.then8 ], [ %call12, %if.then14 ], [ %call.i56, %if.then20 ], [ %call23, %if.end21.unlock_crit_edge ], [ 0, %if.end26.unlock_crit_edge ], [ 0, %for.body.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #12
  %power_state.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 38
  %31 = ptrtoint ptr %power_state.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %power_state.i, align 8
  %power_sleep.i = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 40
  call void @__wake_up(ptr noundef %power_sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %unlock ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_intf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_intf(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ifnum_to_if(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_us122l_free(ptr nocapture noundef readonly %card) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %card_index = getelementptr inbounds %struct.us122l, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %4 = icmp ult i32 %3, 32
  br i1 %4, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx = getelementptr [32 x i32], ptr @snd_us122l_card_used, i32 0, i32 %3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @us122l_start(ptr noundef %us122l, i32 noundef %rate, i32 noundef %period_frames) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %us122l to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %us122l, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %4 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %rate, label %if.then.if.end_crit_edge [
    i32 44100, label %sw.bb
    i32 48000, label %sw.bb1
    i32 88200, label %sw.bb2
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %sw.bb2, %sw.bb1, %sw.bb, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %use_packsize.0 = phi i32 [ 0, %if.then.if.end_crit_edge ], [ 72, %sw.bb2 ], [ 42, %sw.bb1 ], [ 36, %sw.bb ], [ 0, %entry.if.end_crit_edge ]
  %sk = getelementptr inbounds %struct.us122l, ptr %us122l, i32 0, i32 3
  %call = tail call ptr @usb_stream_new(ptr noundef %sk, ptr noundef %1, i32 noundef 1, i32 noundef 2, i32 noundef %rate, i32 noundef %use_packsize.0, i32 noundef %period_frames, i32 noundef 6)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %us122l to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %us122l, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i) #12
  %7 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 1
  %8 = getelementptr inbounds [3 x i8], ptr %data.i, i32 0, i32 2
  %conv.i = trunc i32 %rate to i8
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %data.i, align 1
  %10 = lshr i32 %rate, 8
  %conv1.i = trunc i32 %10 to i8
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv1.i, ptr %7, align 1
  %12 = lshr i32 %rate, 16
  %conv4.i = trunc i32 %12 to i8
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4.i, ptr %8, align 1
  %call.i = call i32 @usb_control_msg_send(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 34, i16 noundef zeroext 256, i16 noundef zeroext 129, ptr noundef nonnull %data.i, i16 noundef zeroext 3, i32 noundef 1000, i32 noundef 3072) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %us122l_set_sample_rate.exit.thread, label %us122l_set_sample_rate.exit

us122l_set_sample_rate.exit.thread:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #12
  br label %if.end10

us122l_set_sample_rate.exit:                      ; preds = %if.end5
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %6, align 8
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef 293, ptr noundef nonnull @.str.40, i32 noundef %15, i32 noundef %rate, i32 noundef 129) #12
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %if.then9, label %us122l_set_sample_rate.exit.if.end10_crit_edge

us122l_set_sample_rate.exit.if.end10_crit_edge:   ; preds = %us122l_set_sample_rate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %us122l_set_sample_rate.exit
  %midi_list.i = getelementptr inbounds %struct.us122l, ptr %us122l, i32 0, i32 9
  %16 = ptrtoint ptr %midi_list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %p.09.i = load ptr, ptr %midi_list.i, align 4
  %cmp.i.not10.i = icmp eq ptr %p.09.i, %midi_list.i
  br i1 %cmp.i.not10.i, label %if.then9.us122l_stop.exit_crit_edge, label %if.then9.for.body.i_crit_edge

if.then9.for.body.i_crit_edge:                    ; preds = %if.then9
  br label %for.body.i

if.then9.us122l_stop.exit_crit_edge:              ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %us122l_stop.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then9.for.body.i_crit_edge
  %p.011.i = phi ptr [ %p.0.i, %for.body.i.for.body.i_crit_edge ], [ %p.09.i, %if.then9.for.body.i_crit_edge ]
  call void @snd_usbmidi_input_stop(ptr noundef %p.011.i) #12
  %17 = ptrtoint ptr %p.011.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %p.0.i = load ptr, ptr %p.011.i, align 4
  %cmp.i.not.i = icmp eq ptr %p.0.i, %midi_list.i
  br i1 %cmp.i.not.i, label %for.body.i.us122l_stop.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.us122l_stop.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %us122l_stop.exit

us122l_stop.exit:                                 ; preds = %for.body.i.us122l_stop.exit_crit_edge, %if.then9.us122l_stop.exit_crit_edge
  call void @usb_stream_stop(ptr noundef %sk) #12
  call void @usb_stream_free(ptr noundef %sk) #12
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef 329, ptr noundef nonnull @.str.38) #12
  br label %out

if.end10:                                         ; preds = %us122l_set_sample_rate.exit.if.end10_crit_edge, %us122l_set_sample_rate.exit.thread
  %call12 = call i32 @usb_stream_start(ptr noundef %sk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  %midi_list.i35 = getelementptr inbounds %struct.us122l, ptr %us122l, i32 0, i32 9
  %18 = ptrtoint ptr %midi_list.i35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %p.09.i36 = load ptr, ptr %midi_list.i35, align 4
  %cmp.i.not10.i37 = icmp eq ptr %p.09.i36, %midi_list.i35
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end10
  br i1 %cmp.i.not10.i37, label %if.then14.us122l_stop.exit43_crit_edge, label %if.then14.for.body.i41_crit_edge

if.then14.for.body.i41_crit_edge:                 ; preds = %if.then14
  br label %for.body.i41

if.then14.us122l_stop.exit43_crit_edge:           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %us122l_stop.exit43

for.body.i41:                                     ; preds = %for.body.i41.for.body.i41_crit_edge, %if.then14.for.body.i41_crit_edge
  %p.011.i38 = phi ptr [ %p.0.i39, %for.body.i41.for.body.i41_crit_edge ], [ %p.09.i36, %if.then14.for.body.i41_crit_edge ]
  call void @snd_usbmidi_input_stop(ptr noundef %p.011.i38) #12
  %19 = ptrtoint ptr %p.011.i38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %p.0.i39 = load ptr, ptr %p.011.i38, align 4
  %cmp.i.not.i40 = icmp eq ptr %p.0.i39, %midi_list.i35
  br i1 %cmp.i.not.i40, label %for.body.i41.us122l_stop.exit43_crit_edge, label %for.body.i41.for.body.i41_crit_edge

for.body.i41.for.body.i41_crit_edge:              ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i41

for.body.i41.us122l_stop.exit43_crit_edge:        ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %us122l_stop.exit43

us122l_stop.exit43:                               ; preds = %for.body.i41.us122l_stop.exit43_crit_edge, %if.then14.us122l_stop.exit43_crit_edge
  call void @usb_stream_stop(ptr noundef %sk) #12
  call void @usb_stream_free(ptr noundef %sk) #12
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef 335, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.us122l_start, i32 noundef %call12) #12
  br label %out

if.end15:                                         ; preds = %if.end10
  br i1 %cmp.i.not10.i37, label %if.end15.out_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  br label %for.body

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end15.for.body_crit_edge
  %p.048 = phi ptr [ %p.0, %for.body.for.body_crit_edge ], [ %p.09.i36, %if.end15.for.body_crit_edge ]
  call void @snd_usbmidi_input_start(ptr noundef %p.048) #12
  %20 = ptrtoint ptr %p.048 to i32
  call void @__asan_load4_noabort(i32 %20)
  %p.0 = load ptr, ptr %p.048, align 4
  %cmp.i.not = icmp eq ptr %p.0, %midi_list.i35
  br i1 %cmp.i.not, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %if.end15.out_crit_edge, %us122l_stop.exit43, %us122l_stop.exit, %if.end.out_crit_edge
  %success.0.off0 = phi i1 [ false, %us122l_stop.exit ], [ false, %us122l_stop.exit43 ], [ false, %if.end.out_crit_edge ], [ true, %if.end15.out_crit_edge ], [ true, %for.body.out_crit_edge ]
  ret i1 %success.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usbmidi_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @us122l_stop(ptr noundef %us122l) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %midi_list = getelementptr inbounds %struct.us122l, ptr %us122l, i32 0, i32 9
  %0 = ptrtoint ptr %midi_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.09 = load ptr, ptr %midi_list, align 4
  %cmp.i.not10 = icmp eq ptr %p.09, %midi_list
  br i1 %cmp.i.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %p.011 = phi ptr [ %p.0, %for.body.for.body_crit_edge ], [ %p.09, %entry.for.body_crit_edge ]
  tail call void @snd_usbmidi_input_stop(ptr noundef %p.011) #12
  %1 = ptrtoint ptr %p.011 to i32
  call void @__asan_load4_noabort(i32 %1)
  %p.0 = load ptr, ptr %p.011, align 4
  %cmp.i.not = icmp eq ptr %p.0, %midi_list
  br i1 %cmp.i.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %sk = getelementptr inbounds %struct.us122l, ptr %us122l, i32 0, i32 3
  tail call void @usb_stream_stop(ptr noundef %sk)
  tail call void @usb_stream_free(ptr noundef %sk)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_send(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usbmidi_input_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__snd_usbmidi_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwdep_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_stream_hwdep_open(ptr noundef %hw, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef 158, ptr noundef nonnull @.str.46, ptr noundef %hw, ptr noundef %file) #12
  %used = getelementptr inbounds %struct.snd_hwdep, ptr %hw, i32 0, i32 14
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %first = getelementptr inbounds %struct.us122l, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %first, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %file, ptr %first, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %is_us144 = getelementptr inbounds %struct.us122l, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %is_us144 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_us144, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %10, i32 noundef 0) #12
  %call6 = tail call i32 @usb_autopm_get_interface(ptr noundef %call) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call9 = tail call ptr @usb_ifnum_to_if(ptr noundef %12, i32 noundef 1) #12
  %call10 = tail call i32 @usb_autopm_get_interface(ptr noundef %call9) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_stream_hwdep_release(ptr noundef %hw, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef 179, ptr noundef nonnull @.str.46, ptr noundef %hw, ptr noundef %file) #12
  %is_us144 = getelementptr inbounds %struct.us122l, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %is_us144 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_us144, align 4, !range !171
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call = tail call ptr @usb_ifnum_to_if(ptr noundef %5, i32 noundef 0) #12
  tail call void @usb_autopm_put_interface(ptr noundef %call) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call2 = tail call ptr @usb_ifnum_to_if(ptr noundef %7, i32 noundef 1) #12
  tail call void @usb_autopm_put_interface(ptr noundef %call2) #12
  %first = getelementptr inbounds %struct.us122l, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %first, align 4
  %cmp = icmp eq ptr %9, %file
  br i1 %cmp, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %first to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %first, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %mutex = getelementptr inbounds %struct.us122l, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %master = getelementptr inbounds %struct.us122l, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master, align 4
  %cmp6 = icmp eq ptr %12, %file
  br i1 %cmp6, label %if.then7, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %slave = getelementptr inbounds %struct.us122l, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slave, align 4
  %15 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %master, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5.if.end9_crit_edge
  %slave10 = getelementptr inbounds %struct.us122l, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %slave10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %slave10, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_stream_hwdep_ioctl(ptr nocapture noundef readonly %hw, ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %cfg = alloca %struct.usb_stream_config, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cfg) #12
  %0 = getelementptr inbounds %struct.usb_stream_config, ptr %cfg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.usb_stream_config, ptr %cfg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.usb_stream_config, ptr %cfg, i32 0, i32 3
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hw, i32 0, i32 10
  %3 = call ptr @memset(ptr %cfg, i32 255, i32 16)
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074808976, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 1074808976
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.49, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.then11.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 16, i32 -1226833920) #17, !srcloc !172
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !169

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cfg, i32 noundef 16) #12
  %8 = call i32 @llvm.read_register.i32(metadata !157) #12
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !173
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !174
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !175
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cfg, ptr noundef %6, i32 noundef 16) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #12, !srcloc !174
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !175
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !169

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %if.end.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %cfg, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp3.not = icmp eq i32 %13, 2
  br i1 %cmp3.not, label %if.end5, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp6 = icmp eq i32 %17, 3
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %19, label %land.lhs.true10 [
    i32 44100, label %if.end5.lor.lhs.false17_crit_edge
    i32 48000, label %if.end5.lor.lhs.false17_crit_edge98
  ]

if.end5.lor.lhs.false17_crit_edge98:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false17

if.end5.lor.lhs.false17_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false17

land.lhs.true10:                                  ; preds = %if.end5
  br i1 %cmp6, label %lor.lhs.false, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true10
  %21 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %19, label %lor.lhs.false.cleanup_crit_edge [
    i32 88200, label %lor.lhs.false.lor.lhs.false17_crit_edge
    i32 96000, label %lor.lhs.false.lor.lhs.false17_crit_edge99
  ]

lor.lhs.false.lor.lhs.false17_crit_edge99:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false17

lor.lhs.false.lor.lhs.false17_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false17

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false.lor.lhs.false17_crit_edge, %lor.lhs.false.lor.lhs.false17_crit_edge99, %if.end5.lor.lhs.false17_crit_edge, %if.end5.lor.lhs.false17_crit_edge98
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %23)
  %cmp18.not = icmp eq i32 %23, 6
  br i1 %cmp18.not, label %lor.lhs.false19, label %lor.lhs.false17.cleanup_crit_edge

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false19:                                  ; preds = %lor.lhs.false17
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %25)
  %cmp20 = icmp ugt i32 %25, 12288
  br i1 %cmp20, label %lor.lhs.false19.cleanup_crit_edge, label %if.end22

lor.lhs.false19.cleanup_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %19)
  %switch.selectcmp = icmp eq i32 %19, 48000
  %switch.select = select i1 %switch.selectcmp, i32 52, i32 104
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %19)
  %switch.selectcmp93 = icmp eq i32 %19, 44100
  %switch.select94 = select i1 %switch.selectcmp93, i32 48, i32 %switch.select
  %not.cmp6 = xor i1 %cmp6, true
  %shl = zext i1 %not.cmp6 to i32
  %min_period_frames.1 = shl nuw nsw i32 %switch.select94, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %min_period_frames.1)
  %cmp29 = icmp ult i32 %25, %min_period_frames.1
  br i1 %cmp29, label %if.end22.cleanup_crit_edge, label %if.end31

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 8
  %call32 = call i32 @snd_power_wait(ptr noundef %27) #12
  %mutex = getelementptr inbounds %struct.us122l, ptr %5, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %sk = getelementptr inbounds %struct.us122l, ptr %5, i32 0, i32 3
  %28 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sk, align 4
  %master = getelementptr inbounds %struct.us122l, ptr %5, i32 0, i32 7
  %30 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %master, align 4
  %tobool34.not = icmp eq ptr %31, null
  br i1 %tobool34.not, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %file, ptr %master, align 4
  br label %if.end48

if.else:                                          ; preds = %if.end31
  %cmp38.not = icmp eq ptr %31, %file
  br i1 %cmp38.not, label %if.else.if.end48_crit_edge, label %if.then39

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end48

if.then39:                                        ; preds = %if.else
  %tobool40.not = icmp eq ptr %29, null
  br i1 %tobool40.not, label %if.then39.unlock_crit_edge, label %lor.lhs.false41

if.then39.unlock_crit_edge:                       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

lor.lhs.false41:                                  ; preds = %if.then39
  %bcmp92 = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %cfg, ptr noundef nonnull dereferenceable(16) %29, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp92)
  %tobool44.not = icmp eq i32 %bcmp92, 0
  br i1 %tobool44.not, label %if.end48.thread, label %lor.lhs.false41.unlock_crit_edge

lor.lhs.false41.unlock_crit_edge:                 ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end48.thread:                                  ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #14
  %slave = getelementptr inbounds %struct.us122l, ptr %5, i32 0, i32 8
  %33 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %file, ptr %slave, align 4
  br label %lor.lhs.false50

if.end48:                                         ; preds = %if.else.if.end48_crit_edge, %if.then35
  %tobool49.not = icmp eq ptr %29, null
  br i1 %tobool49.not, label %if.end48.if.then56_crit_edge, label %if.end48.lor.lhs.false50_crit_edge

if.end48.lor.lhs.false50_crit_edge:               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false50

if.end48.if.then56_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

lor.lhs.false50:                                  ; preds = %if.end48.lor.lhs.false50_crit_edge, %if.end48.thread
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %cfg, ptr noundef nonnull dereferenceable(16) %29, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool53.not = icmp eq i32 %bcmp, 0
  br i1 %tobool53.not, label %lor.lhs.false54, label %lor.lhs.false50.if.then56_crit_edge

lor.lhs.false50.if.then56_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

lor.lhs.false54:                                  ; preds = %lor.lhs.false50
  %state = getelementptr inbounds %struct.usb_stream, ptr %29, i32 0, i32 4
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %35)
  %cmp55 = icmp eq i32 %35, 6
  br i1 %cmp55, label %lor.lhs.false54.if.then56_crit_edge, label %lor.lhs.false54.unlock_crit_edge

lor.lhs.false54.unlock_crit_edge:                 ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

lor.lhs.false54.if.then56_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

if.then56:                                        ; preds = %lor.lhs.false54.if.then56_crit_edge, %lor.lhs.false50.if.then56_crit_edge, %if.end48.if.then56_crit_edge
  call fastcc void @us122l_stop(ptr noundef %5)
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %0, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 4
  %call59 = call fastcc zeroext i1 @us122l_start(ptr noundef %5, i32 noundef %37, i32 noundef %39)
  %. = select i1 %call59, i32 1, i32 -5
  br label %unlock

unlock:                                           ; preds = %if.then56, %lor.lhs.false54.unlock_crit_edge, %lor.lhs.false41.unlock_crit_edge, %if.then39.unlock_crit_edge
  %err.0 = phi i32 [ 0, %lor.lhs.false54.unlock_crit_edge ], [ -5, %lor.lhs.false41.unlock_crit_edge ], [ -5, %if.then39.unlock_crit_edge ], [ %., %if.then56 ]
  call void @mutex_unlock(ptr noundef %mutex) #12
  %sleep = getelementptr inbounds %struct.us122l, ptr %5, i32 0, i32 3, i32 11
  call void @__wake_up(ptr noundef %sleep, i32 noundef 3, i32 noundef 0, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end22.cleanup_crit_edge, %lor.lhs.false19.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %unlock ], [ -25, %entry.cleanup_crit_edge ], [ -6, %if.end2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %lor.lhs.false19.cleanup_crit_edge ], [ -22, %lor.lhs.false17.cleanup_crit_edge ], [ -22, %land.lhs.true10.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cfg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_stream_hwdep_mmap(ptr nocapture noundef readonly %hw, ptr nocapture noundef readnone %filp, ptr nocapture noundef %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %area, i32 0, i32 1
  %0 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_end, align 4
  %2 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %area, align 4
  %sub = sub i32 %1, %3
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hw, i32 0, i32 10
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %area, i32 0, i32 13
  %6 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_pgoff, align 4
  %shl = shl i32 %7, 12
  %mutex = getelementptr inbounds %struct.us122l, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %sk = getelementptr inbounds %struct.us122l, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk, align 4
  %read_size = getelementptr inbounds %struct.usb_stream, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %read_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %read_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %11)
  %cmp = icmp ult i32 %shl, %11
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %area, i32 0, i32 8
  %12 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_flags, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.cond.end10_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true.cond.end10_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end10

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %write_size = getelementptr inbounds %struct.usb_stream, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %write_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond.c = load i32, ptr %write_size, align 4
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false, %land.lhs.true.cond.end10_crit_edge
  %cond.c.sink = phi i32 [ %cond.c, %cond.false ], [ %11, %land.lhs.true.cond.end10_crit_edge ]
  %cond11.in = phi ptr [ %write_size, %cond.false ], [ %read_size, %land.lhs.true.cond.end10_crit_edge ]
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef 217, ptr noundef nonnull @.str.50, i32 noundef %sub, i32 noundef %cond.c.sink) #12
  %15 = ptrtoint ptr %cond11.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %cond11 = load i32, ptr %cond11.in, align 4
  %add = add i32 %cond11, 4095
  %and12 = and i32 %add, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %and12)
  %cmp13 = icmp ugt i32 %sub, %and12
  br i1 %cmp13, label %if.then14, label %if.end22

if.then14:                                        ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #14
  %write_size19 = getelementptr inbounds %struct.usb_stream, ptr %9, i32 0, i32 2
  %cond21.in = select i1 %cmp, ptr %read_size, ptr %write_size19
  %16 = ptrtoint ptr %cond21.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond21 = load i32, ptr %cond21.in, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef 221, ptr noundef nonnull @.str.51, i32 noundef %sub, i32 noundef %cond21) #12
  br label %out

if.end22:                                         ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #14
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %area, i32 0, i32 12
  %17 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @usb_stream_hwdep_vm_ops, ptr %vm_ops, align 4
  %vm_flags23 = getelementptr inbounds %struct.vm_area_struct, ptr %area, i32 0, i32 8
  %18 = ptrtoint ptr %vm_flags23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_flags23, align 4
  %spec.select.v = select i1 %cmp, i32 67108864, i32 67371008
  %spec.select = or i32 %19, %spec.select.v
  store i32 %spec.select, ptr %vm_flags23, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %area, i32 0, i32 15
  %20 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %5, ptr %vm_private_data, align 4
  %mmap_count = getelementptr inbounds %struct.us122l, ptr %5, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mmap_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %mmap_count, i32 1, i32 3, i32 1) #12
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mmap_count, ptr %mmap_count, i32 1, ptr elementtype(i32) %mmap_count) #12, !srcloc !176
  br label %out

out:                                              ; preds = %if.end22, %if.then14, %land.lhs.true.out_crit_edge
  %err.0 = phi i32 [ -22, %if.then14 ], [ 0, %if.end22 ], [ -1, %land.lhs.true.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_stream_hwdep_poll(ptr nocapture noundef readonly %hw, ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_hwdep, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %sleep = getelementptr inbounds %struct.us122l, ptr %1, i32 0, i32 3, i32 11
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %sleep, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %3(ptr noundef %file, ptr noundef nonnull %sleep, ptr noundef nonnull %wait) #12
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %mutex = getelementptr inbounds %struct.us122l, ptr %1, i32 0, i32 4
  %call = tail call i32 @mutex_trylock(ptr noundef %mutex) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %poll_wait.exit.if.end14_crit_edge, label %if.then

poll_wait.exit.if.end14_crit_edge:                ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then:                                          ; preds = %poll_wait.exit
  %sk = getelementptr inbounds %struct.us122l, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.then.if.end12_crit_edge, label %land.lhs.true

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

land.lhs.true:                                    ; preds = %if.then
  %state = getelementptr inbounds %struct.usb_stream, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp = icmp eq i32 %7, 4
  br i1 %cmp, label %if.then4, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then4:                                         ; preds = %land.lhs.true
  %first = getelementptr inbounds %struct.us122l, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %first to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %first, align 4
  %cmp5 = icmp eq ptr %9, %file
  %periods_polled = getelementptr inbounds %struct.usb_stream, ptr %5, i32 0, i32 10
  %second_periods_polled = getelementptr inbounds %struct.us122l, ptr %1, i32 0, i32 6
  %polled.0 = select i1 %cmp5, ptr %periods_polled, ptr %second_periods_polled
  %10 = ptrtoint ptr %polled.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %polled.0, align 4
  %periods_done = getelementptr inbounds %struct.usb_stream, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %periods_done to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %periods_done, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp7.not = icmp eq i32 %11, %13
  br i1 %cmp7.not, label %if.then4.if.end12_crit_edge, label %if.then8

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %polled.0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %polled.0, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then4.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.then.if.end12_crit_edge
  %mask.0 = phi i32 [ 261, %if.then8 ], [ 269, %land.lhs.true.if.end12_crit_edge ], [ 269, %if.then.if.end12_crit_edge ], [ 0, %if.then4.if.end12_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %poll_wait.exit.if.end14_crit_edge
  %mask.1 = phi i32 [ %mask.0, %if.end12 ], [ 269, %poll_wait.exit.if.end14_crit_edge ]
  ret i32 %mask.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_autopm_get_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_autopm_put_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_power_wait(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_stream_hwdep_vm_open(ptr nocapture noundef readonly %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %area, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %mmap_count = getelementptr inbounds %struct.us122l, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mmap_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %mmap_count, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mmap_count, ptr %mmap_count, i32 1, ptr elementtype(i32) %mmap_count) #12, !srcloc !176
  %call.i.i3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count, i32 noundef 4) #12
  %3 = ptrtoint ptr %mmap_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %mmap_count, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef 100, ptr noundef nonnull @.str.13, i32 noundef %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_stream_hwdep_vm_close(ptr nocapture noundef readonly %area) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %area, i32 0, i32 15
  %0 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_private_data, align 4
  %mmap_count = getelementptr inbounds %struct.us122l, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mmap_count, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %mmap_count, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mmap_count, ptr %mmap_count, i32 1, ptr elementtype(i32) %mmap_count) #12, !srcloc !177
  %call.i.i3 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mmap_count, i32 noundef 4) #12
  %3 = ptrtoint ptr %mmap_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %mmap_count, align 4
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef 144, ptr noundef nonnull @.str.13, i32 noundef %4) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_stream_hwdep_vm_fault(ptr nocapture noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %mutex = getelementptr inbounds %struct.us122l, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %sk = getelementptr inbounds %struct.us122l, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end:                                           ; preds = %entry
  %pgoff = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 2
  %6 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pgoff, align 4
  %shl = shl i32 %7, 12
  %read_size = getelementptr inbounds %struct.usb_stream, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %read_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %read_size, align 4
  %add = add i32 %9, 4095
  %and = and i32 %add, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %and)
  %cmp = icmp ult i32 %shl, %and
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %5, i32 %shl
  br label %if.end13

if.else:                                          ; preds = %if.end
  %sub = sub i32 %shl, %and
  %write_size = getelementptr inbounds %struct.usb_stream, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %write_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %write_size, align 4
  %add6 = add i32 %11, 4095
  %and7 = and i32 %add6, -4096
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %and7)
  %cmp8.not = icmp ult i32 %sub, %and7
  br i1 %cmp8.not, label %if.end10, label %if.else.unlock_crit_edge

if.else.unlock_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlock

if.end10:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %write_page = getelementptr inbounds %struct.us122l, ptr %3, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %write_page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write_page, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 %sub
  br label %if.end13

if.end13:                                         ; preds = %if.end10, %if.then2
  %vaddr.0 = phi ptr [ %add.ptr, %if.then2 ], [ %add.ptr12, %if.end10 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %vaddr.0 to i32
  %sub14 = add i32 %15, 1073741824
  %shr = lshr i32 %sub14, 12
  %add.ptr17 = getelementptr %struct.page, ptr %14, i32 %shr
  %16 = getelementptr %struct.page, ptr %14, i32 %shr, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !169

if.then.i.i:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %18, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %add.ptr17 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %19, %if.end.i.i ]
  %20 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %21 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %22, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !168

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.52) #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #12, !srcloc !178
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !176
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@usb_stream_hwdep_vm_fault, %if.then.i.i.i.i)) #12
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !179

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__page_ref_mod(ptr noundef %20, i32 noundef 1) #12
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  %page19 = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %24 = ptrtoint ptr %page19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %add.ptr17, ptr %page19, align 4
  br label %cleanup

unlock:                                           ; preds = %if.else.unlock_crit_edge, %entry.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %unlock, %get_page.exit
  %retval.0 = phi i32 [ 0, %get_page.exit ], [ 2, %unlock ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_usbmidi_input_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !36, !38, !40, !41, !43, !45, !46, !48, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !90, !92, !93, !95, !97, !98, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !145, !147, !149, !151, !153, !155}
!llvm.named.register.sp = !{!157}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/usb/usx2y/usb_stream.c", i32 194, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../sound/usb/usx2y/usb_stream.c", i32 201, i32 3}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @usb_stream_new._entry, !4, !"_entry", i1 false, i1 false}
!7 = !{ptr @usb_stream_new._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/usb/usx2y/usb_stream.c", i32 220, i32 3}
!10 = !{ptr @usb_stream_new._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @usb_stream_new._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/usb/usx2y/usb_stream.c", i32 713, i32 4}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/usb/usx2y/usb_stream.c", i32 720, i32 4}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/usb/usx2y/usb_stream.c", i32 727, i32 4}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/usb/usx2y/usb_stream.c", i32 733, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/usb/usx2y/usb_stream.c", i32 740, i32 4}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/usb/usx2y/usb_stream.c", i32 743, i32 3}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/usb/usx2y/usb_stream.c", i32 758, i32 4}
!26 = !{ptr @__UNIQUE_ID_author239, !27, !"__UNIQUE_ID_author239", i1 false, i1 false}
!27 = !{!"../sound/usb/usx2y/us122l.c", i32 20, i32 1}
!28 = !{ptr @__UNIQUE_ID_description240, !29, !"__UNIQUE_ID_description240", i1 false, i1 false}
!29 = !{!"../sound/usb/usx2y/us122l.c", i32 21, i32 1}
!30 = !{ptr @__UNIQUE_ID_file241, !31, !"__UNIQUE_ID_file241", i1 false, i1 false}
!31 = !{!"../sound/usb/usx2y/us122l.c", i32 22, i32 1}
!32 = !{ptr @__UNIQUE_ID_license242, !31, !"__UNIQUE_ID_license242", i1 false, i1 false}
!33 = !{ptr @__param_index, !34, !"__param_index", i1 false, i1 false}
!34 = !{!"../sound/usb/usx2y/us122l.c", i32 29, i32 1}
!35 = !{ptr @__UNIQUE_ID_indextype243, !34, !"__UNIQUE_ID_indextype243", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_index244, !37, !"__UNIQUE_ID_index244", i1 false, i1 false}
!37 = !{!"../sound/usb/usx2y/us122l.c", i32 30, i32 1}
!38 = !{ptr @__param_id, !39, !"__param_id", i1 false, i1 false}
!39 = !{!"../sound/usb/usx2y/us122l.c", i32 31, i32 1}
!40 = !{ptr @__UNIQUE_ID_idtype245, !39, !"__UNIQUE_ID_idtype245", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_id246, !42, !"__UNIQUE_ID_id246", i1 false, i1 false}
!42 = !{!"../sound/usb/usx2y/us122l.c", i32 32, i32 1}
!43 = !{ptr @__param_enable, !44, !"__param_enable", i1 false, i1 false}
!44 = !{!"../sound/usb/usx2y/us122l.c", i32 33, i32 1}
!45 = !{ptr @__UNIQUE_ID_enabletype247, !44, !"__UNIQUE_ID_enabletype247", i1 false, i1 false}
!46 = !{ptr @__UNIQUE_ID_enable248, !47, !"__UNIQUE_ID_enable248", i1 false, i1 false}
!47 = !{!"../sound/usb/usx2y/us122l.c", i32 34, i32 1}
!48 = !{ptr @__initcall__kmod_snd_usb_us122l__249_740_snd_us122l_usb_driver_init6, !49, !"__initcall__kmod_snd_usb_us122l__249_740_snd_us122l_usb_driver_init6", i1 false, i1 false}
!49 = !{!"../sound/usb/usx2y/us122l.c", i32 740, i32 1}
!50 = !{ptr @__exitcall_snd_us122l_usb_driver_exit, !49, !"__exitcall_snd_us122l_usb_driver_exit", i1 false, i1 false}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/usb.h", i32 1981, i32 3}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/usb/usx2y/usb_stream.c", i32 623, i32 3}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/usb/usx2y/usb_stream.c", i32 633, i32 5}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/usb/usx2y/usb_stream.c", i32 562, i32 5}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/usb/usx2y/usb_stream.c", i32 572, i32 4}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/usb/usx2y/usb_stream.c", i32 321, i32 3}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/usb/usx2y/usb_stream.c", i32 330, i32 3}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/usb/usx2y/usb_stream.c", i32 340, i32 2}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/usb/usx2y/usb_stream.c", i32 380, i32 2}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/usb/usx2y/usb_stream.c", i32 463, i32 4}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/usb/usx2y/usb_stream.c", i32 43, i32 2}
!73 = !{ptr @__param_str_index, !34, !"__param_str_index", i1 false, i1 false}
!74 = !{ptr @__param_arr_index, !34, !"__param_arr_index", i1 false, i1 false}
!75 = !{ptr @index, !76, !"index", i1 false, i1 false}
!76 = !{!"../sound/usb/usx2y/us122l.c", i32 24, i32 12}
!77 = !{ptr @__param_str_id, !39, !"__param_str_id", i1 false, i1 false}
!78 = !{ptr @__param_arr_id, !39, !"__param_arr_id", i1 false, i1 false}
!79 = !{ptr @id, !80, !"id", i1 false, i1 false}
!80 = !{!"../sound/usb/usx2y/us122l.c", i32 25, i32 14}
!81 = !{ptr @__param_str_enable, !44, !"__param_str_enable", i1 false, i1 false}
!82 = !{ptr @__param_arr_enable, !44, !"__param_arr_enable", i1 false, i1 false}
!83 = !{ptr @enable, !84, !"enable", i1 false, i1 false}
!84 = !{!"../sound/usb/usx2y/us122l.c", i32 27, i32 13}
!85 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/usb/usx2y/us122l.c", i32 730, i32 11}
!88 = !{ptr @snd_us122l_usb_driver, !89, !"snd_us122l_usb_driver", i1 false, i1 false}
!89 = !{!"../sound/usb/usx2y/us122l.c", i32 729, i32 26}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/usb/usx2y/us122l.c", i32 575, i32 3}
!92 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/usb/usx2y/us122l.c", i32 579, i32 2}
!95 = !{ptr @usx2y_create_card.__key, !96, !"__key", i1 false, i1 false}
!96 = !{!"../sound/usb/usx2y/us122l.c", i32 519, i32 2}
!97 = !{ptr @.str.30, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @usx2y_create_card.__key.31, !99, !"__key", i1 false, i1 false}
!99 = !{!"../sound/usb/usx2y/us122l.c", i32 520, i32 2}
!100 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/usb/usx2y/us122l.c", i32 523, i32 23}
!103 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/usb/usx2y/us122l.c", i32 524, i32 27}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/usb/usx2y/us122l.c", i32 525, i32 26}
!107 = !{ptr @snd_us122l_card_used, !108, !"snd_us122l_card_used", i1 false, i1 false}
!108 = !{!"../sound/usb/usx2y/us122l.c", i32 39, i32 12}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/usb/usx2y/us122l.c", i32 448, i32 4}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/usb/usx2y/us122l.c", i32 469, i32 3}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/usb/usx2y/us122l.c", i32 329, i32 3}
!115 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/usb/usx2y/us122l.c", i32 335, i32 3}
!117 = !{ptr @__func__.us122l_start, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/usb/usx2y/us122l.c", i32 292, i32 3}
!120 = !{ptr @us144_create_usbmidi.quirk_data, !121, !"quirk_data", i1 false, i1 false}
!121 = !{!"../sound/usb/usx2y/us122l.c", i32 65, i32 49}
!122 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/usb/usx2y/us122l.c", i32 72, i32 18}
!124 = !{ptr @.str.42, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/usb/usx2y/us122l.c", i32 73, i32 19}
!126 = !{ptr @us144_create_usbmidi.quirk, !127, !"quirk", i1 false, i1 false}
!127 = !{!"../sound/usb/usx2y/us122l.c", i32 71, i32 42}
!128 = !{ptr @us122l_create_usbmidi.quirk_data, !129, !"quirk_data", i1 false, i1 false}
!129 = !{!"../sound/usb/usx2y/us122l.c", i32 43, i32 49}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/usb/usx2y/us122l.c", i32 50, i32 18}
!132 = !{ptr @us122l_create_usbmidi.quirk, !133, !"quirk", i1 false, i1 false}
!133 = !{!"../sound/usb/usx2y/us122l.c", i32 49, i32 42}
!134 = !{ptr @.str.44, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/usb/usx2y/us122l.c", i32 422, i32 28}
!136 = !{ptr @.str.45, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/usb/usx2y/us122l.c", i32 435, i32 20}
!138 = !{ptr @.str.46, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/usb/usx2y/us122l.c", i32 158, i32 2}
!140 = distinct !{null, !141, !"__already_done", i1 false, i1 false}
!141 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!142 = distinct !{null, !141, !"<string literal>", i1 false, i1 false}
!143 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!145 = !{ptr @.str.49, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!147 = !{ptr @.str.50, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/usb/usx2y/us122l.c", i32 216, i32 2}
!149 = !{ptr @.str.51, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/usb/usx2y/us122l.c", i32 220, i32 3}
!151 = !{ptr @usb_stream_hwdep_vm_ops, !152, !"usb_stream_hwdep_vm_ops", i1 false, i1 false}
!152 = !{!"../sound/usb/usx2y/us122l.c", i32 147, i32 42}
!153 = !{ptr @.str.52, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!155 = !{ptr @snd_us122l_usb_id_table, !156, !"snd_us122l_usb_id_table", i1 false, i1 false}
!156 = !{!"../sound/usb/usx2y/us122l.c", i32 702, i32 35}
!157 = !{!"sp"}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{!"branch_weights", i32 1, i32 8000, i32 2, i32 1}
!168 = !{!"branch_weights", i32 1, i32 2000}
!169 = !{!"branch_weights", i32 2000, i32 1}
!170 = !{!"auto-init"}
!171 = !{i8 0, i8 2}
!172 = !{i64 2153531392, i64 2153531417}
!173 = !{i64 6026947}
!174 = !{i64 6027144}
!175 = !{i64 2153512377}
!176 = !{i64 2148596290, i64 2148596316, i64 2148596345, i64 2148596379, i64 2148596410, i64 2148596433}
!177 = !{i64 2148598755, i64 2148598781, i64 2148598810, i64 2148598844, i64 2148598875, i64 2148598898}
!178 = !{i64 2154306427, i64 2154306911, i64 2154306464, i64 2154306520, i64 2154306554, i64 2154306578, i64 2154306619, i64 2154306640, i64 2154306668, i64 2154306702}
!179 = !{i64 2148217016, i64 2148217021, i64 2148217034, i64 2148217078, i64 2148217112, i64 2148217133}
