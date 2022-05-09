; ModuleID = '/llk/IR_all_yes/drivers/block/rnbd/rnbd-srv.c_pt.bc'
source_filename = "../drivers/block/rnbd/rnbd-srv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_string = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rtrs_srv_ops = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rnbd_io_private = type { ptr, ptr }
%struct.rnbd_srv_sess_dev = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, %struct.kobject, i32, i8, i32, %struct.kref, ptr, [255 x i8], i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rnbd_srv_session = type { %struct.list_head, ptr, [255 x i8], i32, %struct.bio_set, %struct.xarray, %struct.list_head, %struct.mutex, i8 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_list = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rnbd_srv_dev = type { %struct.list_head, %struct.kobject, ptr, %struct.kref, [255 x i8], %struct.list_head, %struct.mutex, i32 }
%struct.rnbd_msg_io = type { %struct.rnbd_msg_hdr, i32, i64, i32, i32, i16 }
%struct.rnbd_msg_hdr = type { i16, i16 }
%struct.rnbd_dev = type { ptr, ptr, i32, [32 x i8] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rnbd_msg_close = type { %struct.rnbd_msg_hdr, i32 }
%struct.rnbd_msg_sess_info = type { %struct.rnbd_msg_hdr, i8, [31 x i8] }
%struct.rnbd_msg_sess_info_rsp = type { %struct.rnbd_msg_hdr, i8, [31 x i8] }
%struct.rnbd_msg_open = type { %struct.rnbd_msg_hdr, i8, i8, [255 x i8], [3 x i8] }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.rnbd_msg_open_rsp = type { %struct.rnbd_msg_hdr, i32, i64, i32, i32, i32, i32, i32, i16, i16, i16, i16, i8, i8, [10 x i8] }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_description314 = internal constant [57 x i8] c"rnbd_server.description=RDMA Network Block Device Server\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [48 x i8] c"rnbd_server.file=drivers/block/rnbd/rnbd-server\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [24 x i8] c"rnbd_server.license=GPL\00", section ".modinfo", align 1
@__param_str_port_nr = internal constant [20 x i8] c"rnbd_server.port_nr\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@port_nr = internal global { i16, [30 x i8] } { i16 1234, [30 x i8] zeroinitializer }, align 32
@__param_port_nr = internal constant %struct.kernel_param { ptr @__param_str_port_nr, ptr null, ptr @param_ops_ushort, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @port_nr } }, section "__param", align 4
@__UNIQUE_ID_port_nrtype317 = internal constant [36 x i8] c"rnbd_server.parmtype=port_nr:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_port_nr318 = internal constant [84 x i8] c"rnbd_server.parm=port_nr:The port number the server is listening on (default: 1234)\00", section ".modinfo", align 1
@__param_str_dev_search_path = internal constant [28 x i8] c"rnbd_server.dev_search_path\00", align 1
@dev_search_path_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @dev_search_path_set, ptr @param_get_string, ptr null }, [16 x i8] zeroinitializer }, align 32
@dev_search_path_kparam_str = internal global { %struct.kparam_string, [24 x i8] } { %struct.kparam_string { i32 4096, ptr @dev_search_path }, [24 x i8] zeroinitializer }, align 32
@__param_dev_search_path = internal constant %struct.kernel_param { ptr @__param_str_dev_search_path, ptr null, ptr @dev_search_path_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @dev_search_path_kparam_str } }, section "__param", align 4
@__UNIQUE_ID_dev_search_path319 = internal constant [261 x i8] c"rnbd_server.parm=dev_search_path:Sets the dev_search_path. When a device is mapped this path is prepended to the device path from the map device operation.  If %SESSNAME% is specified in a path, then device will be searched in a session namespace. (default: /)\00", section ".modinfo", align 1
@rnbd_destroy_sess_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016rnbd_server L235: <%s@%s>: Device closed\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rnbd_destroy_sess_dev\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/block/rnbd/rnbd-srv.c\00", [34 x i8] zeroinitializer }, align 32
@rnbd_destroy_sess_dev._entry_ptr = internal global ptr @rnbd_destroy_sess_dev._entry, section ".printk_index", align 4
@rtrs_ctx = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sess_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @sess_list, ptr @sess_list }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_rnbd_server__330_870_rnbd_srv_init_module6 = internal global ptr @rnbd_srv_init_module, section ".initcall6.init", align 4
@__exitcall_rnbd_srv_cleanup_module = internal global ptr @rnbd_srv_cleanup_module, section ".exitcall.exit", align 4
@dev_search_path = internal global { [4096 x i8], [1024 x i8] } { [4096 x i8] c"/\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [1024 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%.*s\00", [27 x i8] zeroinitializer }, align 32
@dev_search_path_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016rnbd_server L42: dev_search_path changed to '%s'\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dev_search_path_set\00", [44 x i8] zeroinitializer }, align 32
@dev_search_path_set._entry_ptr = internal global ptr @dev_search_path_set._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@destroy_device.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Device %s is being destroyed but still in use!\0A\00", [48 x i8] zeroinitializer }, align 32
@dev_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dev_lock\00", [23 x i8] zeroinitializer }, align 32
@rtrs_ops = internal global { %struct.rtrs_srv_ops, [24 x i8] } zeroinitializer, align 32
@rnbd_srv_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013rnbd_server L849: rtrs_srv_open(), err: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rnbd_srv_init_module\00", [43 x i8] zeroinitializer }, align 32
@rnbd_srv_init_module._entry_ptr = internal global ptr @rnbd_srv_init_module._entry, section ".printk_index", align 4
@rnbd_srv_init_module._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 855, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013rnbd_server L855: rnbd_srv_create_sysfs_files(), err: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rnbd_srv_init_module._entry_ptr.13 = internal global ptr @rnbd_srv_init_module._entry.11, section ".printk_index", align 4
@rnbd_srv_rdma_ev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rnbd_srv_rdma_ev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\014rnbd_server L403: Received unexpected message type %d with dir %d from session %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rnbd_srv_rdma_ev\00", [47 x i8] zeroinitializer }, align 32
@rnbd_srv_rdma_ev._entry_ptr = internal global ptr @rnbd_srv_rdma_ev._entry, section ".printk_index", align 4
@process_rdma._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.process_rdma = private unnamed_addr constant [13 x i8] c"process_rdma\00", align 1
@process_rdma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.process_rdma, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013rnbd_server L139: Got I/O request on session %s for unknown device id %d\0A\00", [52 x i8] zeroinitializer }, align 32
@process_rdma._entry_ptr = internal global ptr @process_rdma._entry, section ".printk_index", align 4
@process_rdma._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.process_rdma, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013rnbd_server L151: <%s@%s>: Failed to generate bio, err: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@process_rdma._entry_ptr.20 = internal global ptr @process_rdma._entry.18, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/block/rnbd/rnbd-proto.h\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unknown RNBD type: %d (flags %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@process_msg_open.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rnbd_server\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"process_msg_open\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Open message received: session='%s' path='%s' access_mode=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"rnbd_server L708: Open message received: session='%s' path='%s' access_mode=%d\0A\00", [48 x i8] zeroinitializer }, align 32
@process_msg_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.2, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"\013rnbd_server L723: Opening device for session %s failed, device path too long. '%s/%s' is longer than PATH_MAX (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@process_msg_open._entry_ptr = internal global ptr @process_msg_open._entry, section ".printk_index", align 4
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"..\00", [29 x i8] zeroinitializer }, align 32
@process_msg_open._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.27, ptr @.str.2, i32 729, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\013rnbd_server L729: Opening device for session %s failed, device path %s contains relative path ..\0A\00", [60 x i8] zeroinitializer }, align 32
@process_msg_open._entry_ptr.34 = internal global ptr @process_msg_open._entry.32, section ".printk_index", align 4
@process_msg_open._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.27, ptr @.str.2, i32 737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\013rnbd_server L737: Opening device '%s' for client %s failed, failed to get device full path, err: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@process_msg_open._entry_ptr.37 = internal global ptr @process_msg_open._entry.35, section ".printk_index", align 4
@process_msg_open._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.27, ptr @.str.2, i32 745, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\013rnbd_server L745: Opening device '%s' on session %s failed, failed to open the block device, err: %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@process_msg_open._entry_ptr.40 = internal global ptr @process_msg_open._entry.38, section ".printk_index", align 4
@process_msg_open._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.27, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\013rnbd_server L754: Opening device '%s' on session %s failed, creating srv_dev failed, err: %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@process_msg_open._entry_ptr.43 = internal global ptr @process_msg_open._entry.41, section ".printk_index", align 4
@process_msg_open._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.27, ptr @.str.2, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\013rnbd_server L764: Opening device '%s' on session %s failed, creating sess_dev failed, err: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@process_msg_open._entry_ptr.46 = internal global ptr @process_msg_open._entry.44, section ".printk_index", align 4
@process_msg_open._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.27, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\013rnbd_server L781: <%s@%s>: Opening device failed, failed to create device sysfs files, err: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@process_msg_open._entry_ptr.49 = internal global ptr @process_msg_open._entry.47, section ".printk_index", align 4
@process_msg_open._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.27, ptr @.str.2, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\013rnbd_server L791: <%s@%s>: Opening device failed, failed to create dev client sysfs files, err: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@process_msg_open._entry_ptr.52 = internal global ptr @process_msg_open._entry.50, section ".printk_index", align 4
@process_msg_open._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.27, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016rnbd_server L800: <%s@%s>: Opened device '%s'\0A\00", [47 x i8] zeroinitializer }, align 32
@process_msg_open._entry_ptr.55 = internal global ptr @process_msg_open._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%SESSNAME%\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%.*s/%s/%s\00", [21 x i8] zeroinitializer }, align 32
@rnbd_srv_get_full_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013rnbd_server L625: Too long path: %s, %s, %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rnbd_srv_get_full_path\00", [41 x i8] zeroinitializer }, align 32
@rnbd_srv_get_full_path._entry_ptr = internal global ptr @rnbd_srv_get_full_path._entry, section ".printk_index", align 4
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s/%s\00", [26 x i8] zeroinitializer }, align 32
@rnbd_srv_init_srv_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@dev_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @dev_list, ptr @dev_list }, [24 x i8] zeroinitializer }, align 32
@rnbd_srv_check_update_open_perm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [147 x i8], [45 x i8] } { [147 x i8] c"\013rnbd_server L492: Mapping device '%s' for session %s with RW permissions failed. Device already opened as 'RW' by %d client(s), access mode %s.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rnbd_srv_check_update_open_perm\00", [32 x i8] zeroinitializer }, align 32
@rnbd_srv_check_update_open_perm._entry_ptr = internal global ptr @rnbd_srv_check_update_open_perm._entry, section ".printk_index", align 4
@rnbd_srv_check_update_open_perm._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [154 x i8], [38 x i8] } { [154 x i8] c"\013rnbd_server L503: Mapping device '%s' for session %s with migration permissions failed. Device already opened as 'RW' by %d client(s), access mode %s.\0A\00", [38 x i8] zeroinitializer }, align 32
@rnbd_srv_check_update_open_perm._entry_ptr.66 = internal global ptr @rnbd_srv_check_update_open_perm._entry.64, section ".printk_index", align 4
@rnbd_srv_check_update_open_perm._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\013rnbd_server L508: Received mapping request for device '%s' on session %s with invalid access mode: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@rnbd_srv_check_update_open_perm._entry_ptr.69 = internal global ptr @rnbd_srv_check_update_open_perm._entry.67, section ".printk_index", align 4
@rnbd_sess_dev_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014rnbd_server L424: Allocating idr failed, err: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rnbd_sess_dev_alloc\00", [44 x i8] zeroinitializer }, align 32
@rnbd_sess_dev_alloc._entry_ptr = internal global ptr @rnbd_sess_dev_alloc._entry, section ".printk_index", align 4
@process_msg_sess_info.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.72, ptr @.str.2, ptr @.str.73, i8 0, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"process_msg_sess_info\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Session %s using protocol version %d (client version: %d, server version: %d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"rnbd_server L662: Session %s using protocol version %d (client version: %d, server version: %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@rnbd_srv_link_ev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rnbd_srv_link_ev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014rnbd_server L326: Received unknown RTRS session event %d from session %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rnbd_srv_link_ev\00", [47 x i8] zeroinitializer }, align 32
@rnbd_srv_link_ev._entry_ptr = internal global ptr @rnbd_srv_link_ev._entry, section ".printk_index", align 4
@create_sess._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013rnbd_server L274: rtrs_srv_get_path_name(%s): %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"create_sess\00", [20 x i8] zeroinitializer }, align 32
@create_sess._entry_ptr = internal global ptr @create_sess._entry, section ".printk_index", align 4
@create_sess._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013rnbd_server L288: Allocating srv_session for path %s failed\0A\00", [33 x i8] zeroinitializer }, align 32
@create_sess._entry_ptr.81 = internal global ptr @create_sess._entry.79, section ".printk_index", align 4
@create_sess.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&srv_sess->lock\00", [16 x i8] zeroinitializer }, align 32
@sess_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.84, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @sess_lock, i64 52), ptr getelementptr (i8, ptr @sess_lock, i64 52) }, ptr @sess_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.85, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sess_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sess_lock\00", [22 x i8] zeroinitializer }, align 32
@destroy_sess._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016rnbd_server L256: RTRS Session %s disconnected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"destroy_sess\00", [19 x i8] zeroinitializer }, align 32
@destroy_sess._entry_ptr = internal global ptr @destroy_sess._entry, section ".printk_index", align 4
@switch.table.rnbd_srv_rdma_ev = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 262146, i32 3, i32 5, i32 7], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 47]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.91 = private unnamed_addr constant [8 x i8] c"port_nr\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 21, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"dev_search_path_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 52, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"dev_search_path_kparam_str\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 47, i32 29 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 235, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [9 x i8] c"rtrs_ctx\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 829, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant [10 x i8] c"sess_list\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 66, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant [16 x i8] c"dev_search_path\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 30, i32 13 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 39, i32 53 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 42, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 87, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 184, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [9 x i8] c"dev_lock\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 64, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant [9 x i8] c"rtrs_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 831, i32 28 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 849, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 855, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 402, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 138, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 151, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 695, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 723, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [35 x i8] c"../drivers/block/rnbd/rnbd-proto.h\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 256, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 706, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 721, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 727, i32 33 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 728, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 736, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 744, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 753, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 763, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 779, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 789, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 800, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 617, i32 31 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 621, i32 39 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 624, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 630, i32 33 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 443, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant [9 x i8] c"dev_list\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 67, i32 8 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 489, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 500, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 507, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 424, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 660, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 325, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 274, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 287, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 295, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [10 x i8] c"sess_lock\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.380, i32 378, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 63, i32 8 }
@___asan_gen_.388 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.395 = private constant [33 x i8] c"../drivers/block/rnbd/rnbd-srv.c\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.395, i32 256, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant [30 x i8] c"switch.table.rnbd_srv_rdma_ev\00", align 1
@llvm.compiler.used = appending global [139 x ptr] [ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_dev_search_path319, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__UNIQUE_ID_port_nr318, ptr @__UNIQUE_ID_port_nrtype317, ptr @__exitcall_rnbd_srv_cleanup_module, ptr @__initcall__kmod_rnbd_server__330_870_rnbd_srv_init_module6, ptr @__param_dev_search_path, ptr @__param_port_nr, ptr @create_sess._entry, ptr @create_sess._entry.79, ptr @create_sess._entry_ptr, ptr @create_sess._entry_ptr.81, ptr @destroy_sess._entry, ptr @destroy_sess._entry_ptr, ptr @dev_search_path_set._entry, ptr @dev_search_path_set._entry_ptr, ptr @process_msg_open._entry, ptr @process_msg_open._entry.32, ptr @process_msg_open._entry.35, ptr @process_msg_open._entry.38, ptr @process_msg_open._entry.41, ptr @process_msg_open._entry.44, ptr @process_msg_open._entry.47, ptr @process_msg_open._entry.50, ptr @process_msg_open._entry.53, ptr @process_msg_open._entry_ptr, ptr @process_msg_open._entry_ptr.34, ptr @process_msg_open._entry_ptr.37, ptr @process_msg_open._entry_ptr.40, ptr @process_msg_open._entry_ptr.43, ptr @process_msg_open._entry_ptr.46, ptr @process_msg_open._entry_ptr.49, ptr @process_msg_open._entry_ptr.52, ptr @process_msg_open._entry_ptr.55, ptr @process_rdma._entry, ptr @process_rdma._entry.18, ptr @process_rdma._entry_ptr, ptr @process_rdma._entry_ptr.20, ptr @rnbd_destroy_sess_dev._entry, ptr @rnbd_destroy_sess_dev._entry_ptr, ptr @rnbd_sess_dev_alloc._entry, ptr @rnbd_sess_dev_alloc._entry_ptr, ptr @rnbd_srv_check_update_open_perm._entry, ptr @rnbd_srv_check_update_open_perm._entry.64, ptr @rnbd_srv_check_update_open_perm._entry.67, ptr @rnbd_srv_check_update_open_perm._entry_ptr, ptr @rnbd_srv_check_update_open_perm._entry_ptr.66, ptr @rnbd_srv_check_update_open_perm._entry_ptr.69, ptr @rnbd_srv_cleanup_module, ptr @rnbd_srv_get_full_path._entry, ptr @rnbd_srv_get_full_path._entry_ptr, ptr @rnbd_srv_init_module._entry, ptr @rnbd_srv_init_module._entry.11, ptr @rnbd_srv_init_module._entry_ptr, ptr @rnbd_srv_init_module._entry_ptr.13, ptr @rnbd_srv_link_ev._entry, ptr @rnbd_srv_link_ev._entry_ptr, ptr @rnbd_srv_rdma_ev._entry, ptr @rnbd_srv_rdma_ev._entry_ptr, ptr @port_nr, ptr @dev_search_path_ops, ptr @dev_search_path_kparam_str, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @rtrs_ctx, ptr @sess_list, ptr @dev_search_path, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @init_completion.__key, ptr @.str.6, ptr @.str.7, ptr @dev_lock, ptr @.str.8, ptr @rtrs_ops, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @process_rdma._rs, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @rnbd_srv_init_srv_dev.__key, ptr @.str.61, ptr @dev_list, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @create_sess.__key, ptr @.str.82, ptr @sess_lock, ptr @xa_init_flags.__key, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @switch.table.rnbd_srv_rdma_ev], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_nr to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_search_path_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_search_path_kparam_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_destroy_sess_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_ctx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_search_path to i32), i32 4096, i32 5120, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_search_path_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_init_module._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_rdma_ev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_rdma._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_rdma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_rdma._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_msg_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_msg_open._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_msg_open._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_msg_open._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_msg_open._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_msg_open._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_msg_open._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_msg_open._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_msg_open._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_get_full_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_init_srv_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_check_update_open_perm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 147, i32 192, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_check_update_open_perm._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 154, i32 192, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_check_update_open_perm._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_sess_dev_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnbd_srv_link_ev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_sess._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_sess._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_sess.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sess_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @destroy_sess._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rnbd_srv_rdma_ev to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rnbd_endio(ptr noundef %priv, i32 noundef %error) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sess_dev1 = getelementptr inbounds %struct.rnbd_io_private, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %sess_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess_dev1, align 4
  %kref.i = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %1, i32 0, i32 9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.rnbd_put_sess_dev.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !219

if.end5.i.i.i.i.i.rnbd_put_sess_dev.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rnbd_put_sess_dev.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #12
  br label %rnbd_put_sess_dev.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !220
  %destroy_comp.i.i = getelementptr %struct.rnbd_srv_sess_dev, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %destroy_comp.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %destroy_comp.i.i, align 4
  tail call void @complete(ptr noundef %4) #12
  br label %rnbd_put_sess_dev.exit

rnbd_put_sess_dev.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.rnbd_put_sess_dev.exit_crit_edge
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %call = tail call zeroext i1 @rtrs_srv_resp_rdma(ptr noundef %6, i32 noundef %error) #12
  tail call void @kfree(ptr noundef %priv) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rtrs_srv_resp_rdma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rnbd_destroy_sess_dev(ptr noundef %sess_dev, i1 noundef zeroext %keep_id) local_unnamed_addr #0 align 64 {
entry:
  %dc = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %dc) #12
  %0 = getelementptr inbounds i8, ptr %dc, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %dc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dc, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %dc, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @init_completion.__key) #12
  %sess = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 3
  %3 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sess, align 4
  %index_idr = getelementptr inbounds %struct.rnbd_srv_session, ptr %4, i32 0, i32 5
  %device_id = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 6
  %5 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %device_id, align 4
  br i1 %keep_id, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_lock(ptr noundef %index_idr) #12
  %call.i = call ptr @__xa_cmpxchg(ptr noundef %index_idr, i32 noundef %6, ptr noundef %sess_dev, ptr noundef null, i32 noundef 0) #12
  call void @_raw_spin_unlock(ptr noundef %index_idr) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = call ptr @xa_erase(ptr noundef %index_idr, i32 noundef %6) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @synchronize_rcu() #12
  %destroy_comp = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 10
  %7 = ptrtoint ptr %destroy_comp to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dc, ptr %destroy_comp, align 4
  %kref.i = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 9
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !217
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %8 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.rnbd_put_sess_dev.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !219

if.end5.i.i.i.i.i.rnbd_put_sess_dev.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rnbd_put_sess_dev.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #12
  br label %rnbd_put_sess_dev.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !220
  %9 = ptrtoint ptr %destroy_comp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %destroy_comp, align 4
  call void @complete(ptr noundef %10) #12
  br label %rnbd_put_sess_dev.exit

rnbd_put_sess_dev.exit:                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.rnbd_put_sess_dev.exit_crit_edge
  call void @wait_for_completion(ptr noundef nonnull %dc) #12
  %rnbd_dev = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 2
  %11 = ptrtoint ptr %rnbd_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rnbd_dev, align 4
  call void @rnbd_dev_close(ptr noundef %12) #12
  %sess_list = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 1
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %sess_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %rnbd_put_sess_dev.exit.list_del.exit_crit_edge

rnbd_put_sess_dev.exit.list_del.exit_crit_edge:   ; preds = %rnbd_put_sess_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %rnbd_put_sess_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %sess_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sess_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %rnbd_put_sess_dev.exit.list_del.exit_crit_edge
  %19 = ptrtoint ptr %sess_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %sess_list, align 4
  %prev.i = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %dev = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 4
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %lock = getelementptr inbounds %struct.rnbd_srv_dev, ptr %22, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %call.i.i33 = call zeroext i1 @__list_del_entry_valid(ptr noundef %sess_dev) #12
  br i1 %call.i.i33, label %if.end.i.i36, label %list_del.exit.list_del.exit38_crit_edge

list_del.exit.list_del.exit38_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit38

if.end.i.i36:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i34 = getelementptr inbounds %struct.list_head, ptr %sess_dev, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i34, align 4
  %25 = ptrtoint ptr %sess_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sess_dev, align 4
  %prev1.i.i.i35 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i35, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit38

list_del.exit38:                                  ; preds = %if.end.i.i36, %list_del.exit.list_del.exit38_crit_edge
  %29 = ptrtoint ptr %sess_dev to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %sess_dev, align 4
  %prev.i37 = getelementptr inbounds %struct.list_head, ptr %sess_dev, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i37 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i37, align 4
  %open_flags = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 8
  %31 = ptrtoint ptr %open_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %open_flags, align 4
  %and = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %list_del.exit38.if.end8_crit_edge, label %if.then6

list_del.exit38.if.end8_crit_edge:                ; preds = %list_del.exit38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then6:                                         ; preds = %list_del.exit38
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %open_write_cnt = getelementptr inbounds %struct.rnbd_srv_dev, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %open_write_cnt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %open_write_cnt, align 4
  %dec = add i32 %36, -1
  store i32 %dec, ptr %open_write_cnt, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %list_del.exit38.if.end8_crit_edge
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  %lock10 = getelementptr inbounds %struct.rnbd_srv_dev, ptr %38, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %lock10) #12
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  call fastcc void @rnbd_put_srv_dev(ptr noundef %40)
  %pathname = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 11
  %sess13 = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 3
  %41 = ptrtoint ptr %sess13 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sess13, align 4
  %sessname = getelementptr inbounds %struct.rnbd_srv_session, ptr %42, i32 0, i32 2
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %pathname, ptr noundef %sessname) #15
  call void @kfree(ptr noundef %sess_dev) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %dc) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rnbd_dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rnbd_put_srv_dev(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %kref = getelementptr inbounds %struct.rnbd_srv_dev, ptr %dev, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #12, !srcloc !218
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !219

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !220
  %sess_dev_list.i = getelementptr %struct.rnbd_srv_dev, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %sess_dev_list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %sess_dev_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %2, %sess_dev_list.i
  br i1 %cmp.i.not.i, label %if.then.i.if.end30.i_crit_edge, label %land.rhs.i

if.then.i.if.end30.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b49.i = load i1, ptr @destroy_device.__already_done, align 1
  br i1 %.b49.i, label %land.rhs.i.if.end30.i_crit_edge, label %if.then.i1, !prof !219

land.rhs.i.if.end30.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

if.then.i1:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @destroy_device.__already_done, align 1
  %id.i = getelementptr %struct.rnbd_srv_dev, ptr %dev, i32 0, i32 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 186, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %id.i) #12
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then.i1, %land.rhs.i.if.end30.i_crit_edge, %if.then.i.if.end30.i_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @dev_lock) #12
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end30.i.list_del.exit.i_crit_edge

if.end30.i.list_del.exit.i_crit_edge:             ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr %struct.rnbd_srv_dev, ptr %dev, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end30.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %dev, align 4
  %prev.i.i = getelementptr %struct.rnbd_srv_dev, ptr %dev, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dev_lock) #12
  %lock.i = getelementptr %struct.rnbd_srv_dev, ptr %dev, i32 0, i32 6
  tail call void @mutex_destroy(ptr noundef %lock.i) #12
  %state_in_sysfs.i = getelementptr %struct.rnbd_srv_dev, ptr %dev, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %12 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool38.not.i = icmp eq i8 %12, 0
  br i1 %tobool38.not.i, label %if.else.i, label %if.then39.i

if.then39.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @rnbd_srv_destroy_dev_sysfs(ptr noundef %dev) #12
  br label %kref_put.exit

if.else.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %dev) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.else.i, %if.then39.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rnbd_srv_sess_dev_force_close(ptr noundef %sess_dev, ptr noundef %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 3
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %keep_id = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 7
  %2 = ptrtoint ptr %keep_id to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %keep_id, align 4
  %lock = getelementptr inbounds %struct.rnbd_srv_session, ptr %1, i32 0, i32 7
  %call = tail call i32 @mutex_trylock(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %kobj = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %sess_dev, i32 0, i32 5
  %call3 = tail call zeroext i1 @sysfs_remove_file_self(ptr noundef %kobj, ptr noundef %attr) #12
  tail call void @rnbd_srv_destroy_dev_session_sysfs(ptr noundef %sess_dev) #12
  tail call void @mutex_unlock(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_remove_file_self(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rnbd_srv_destroy_dev_session_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rnbd_srv_cleanup_module() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load ptr, ptr @rtrs_ctx, align 4
  tail call void @rtrs_srv_close(ptr noundef %0) #12
  %1 = load volatile ptr, ptr @sess_list, align 4
  %cmp.i.not = icmp eq ptr %1, @sess_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !219

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 866, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @rnbd_srv_destroy_sysfs_files() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtrs_srv_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rnbd_srv_destroy_sysfs_files() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_srv_init_module() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr @rnbd_srv_rdma_ev, ptr @rtrs_ops, align 4
  store ptr @rnbd_srv_link_ev, ptr getelementptr inbounds (%struct.rtrs_srv_ops, ptr @rtrs_ops, i32 0, i32 1), align 4
  %0 = load i16, ptr @port_nr, align 2
  %call = tail call ptr @rtrs_srv_open(ptr noundef nonnull @rtrs_ops, i16 noundef zeroext %0) #12
  store ptr %call, ptr @rtrs_ctx, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %1 = ptrtoint ptr %call to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %1) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call22 = tail call i32 @rnbd_srv_create_sysfs_files() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end26

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call22) #15
  %2 = load ptr, ptr @rtrs_ctx, align 4
  tail call void @rtrs_srv_close(ptr noundef %2) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call22, %do.end26 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dev_search_path_set(ptr noundef %val, ptr nocapture noundef readnone %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strrchr(ptr noundef %val, i32 noundef 10)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @strlen(ptr noundef %val) #16
  %add.ptr = getelementptr i8, ptr %val, i32 %call1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr, %cond.false ], [ %call, %entry.cond.end_crit_edge ]
  %call2 = tail call i32 @strlen(ptr noundef %val) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call2)
  %cmp = icmp ugt i32 %call2, 4095
  br i1 %cmp, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub.ptr.lhs.cast = ptrtoint ptr %cond to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %val to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @dev_search_path, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef %sub.ptr.sub, ptr noundef %val)
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @dev_search_path) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %cond.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_string(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_cmpxchg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rnbd_srv_destroy_dev_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_srv_rdma_ev(ptr noundef %priv, ptr noundef %id, i32 noundef %dir, ptr noundef %data, i32 noundef %datalen, ptr noundef %usr, i32 noundef %usrlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b79 = load i1, ptr @rnbd_srv_rdma_ev.__already_done, align 1
  br i1 %.b79, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !219

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rnbd_srv_rdma_ev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 383, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end39:                                         ; preds = %entry
  %0 = ptrtoint ptr %usr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %usr, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %do.end49 [
    i16 4, label %sw.bb
    i16 5, label %sw.bb41
    i16 2, label %sw.bb43
    i16 0, label %sw.bb45
  ]

sw.bb:                                            ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 8) #17
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %device_id.i = getelementptr inbounds %struct.rnbd_msg_io, ptr %usr, i32 0, i32 1
  %5 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %device_id.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  %call1.i = tail call fastcc ptr @rnbd_get_sess_dev(i32 noundef %7, ptr noundef nonnull %priv) #12
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then3.i, label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = tail call i32 @___ratelimit(ptr noundef nonnull @process_rdma._rs, ptr noundef nonnull @__func__.process_rdma) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.err38.i_crit_edge, label %do.end.i

if.then3.i.err38.i_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err38.i

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  %sessname.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %priv, i32 0, i32 2
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %sessname.i, i32 noundef %7) #15
  br label %err38.i

if.end9.i:                                        ; preds = %if.end.i
  %sess_dev10.i = getelementptr inbounds %struct.rnbd_io_private, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %sess_dev10.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1.i, ptr %sess_dev10.i, align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %id, ptr %call7.i.i, align 8
  %rnbd_dev.i = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %call1.i, i32 0, i32 2
  %10 = ptrtoint ptr %rnbd_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rnbd_dev.i, align 4
  %ibd_bio_set.i = getelementptr inbounds %struct.rnbd_dev, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ibd_bio_set.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ibd_bio_set.i, align 4
  %call12.i = tail call ptr @rnbd_bio_map_kern(ptr noundef %data, ptr noundef %13, i32 noundef %datalen, i32 noundef 3264) #12
  %cmp.i77.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77.i, label %if.then14.i, label %if.end24.i

if.then14.i:                                      ; preds = %if.end9.i
  %14 = ptrtoint ptr %call12.i to i32
  %pathname.i = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %call1.i, i32 0, i32 11
  %sess.i = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %call1.i, i32 0, i32 3
  %15 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sess.i, align 4
  %sessname21.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %16, i32 0, i32 2
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %pathname.i, ptr noundef %sessname21.i, i32 noundef %14) #15
  %kref.i.i = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %call1.i, i32 0, i32 9
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #12
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #12, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.err38.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !219

if.end5.i.i.i.i.i.i.err38.i_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err38.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 3) #12
  br label %err38.i

if.then.i.i.i:                                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !220
  %destroy_comp.i.i.i = getelementptr %struct.rnbd_srv_sess_dev, ptr %call1.i, i32 0, i32 10
  %18 = ptrtoint ptr %destroy_comp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %destroy_comp.i.i.i, align 4
  tail call void @complete(ptr noundef %19) #12
  br label %err38.i

if.end24.i:                                       ; preds = %if.end9.i
  %add.ptr.i = getelementptr i8, ptr %call12.i, i32 -8
  %20 = ptrtoint ptr %rnbd_dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rnbd_dev.i, align 4
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %add.ptr.i, align 8
  %priv27.i = getelementptr i8, ptr %call12.i, i32 -4
  %23 = ptrtoint ptr %priv27.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %priv27.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call12.i, i32 0, i32 10
  %24 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @rnbd_dev_bi_end_io, ptr %bi_end_io.i, align 8
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call12.i, i32 0, i32 11
  %25 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i, ptr %bi_private.i, align 4
  %rw.i = getelementptr inbounds %struct.rnbd_msg_io, ptr %usr, i32 0, i32 3
  %26 = ptrtoint ptr %rw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rw.i, align 8
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #12
  %trunc.i.i = trunc i32 %28 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %trunc.i.i)
  %29 = icmp ult i8 %trunc.i.i, 6
  br i1 %29, label %switch.lookup, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i.i = and i32 %28, 255
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 257, i32 noundef 9, ptr noundef nonnull @.str.25, i32 noundef %and.i.i.i, i32 noundef %28) #12
  br label %rnbd_to_bio_flags.exit.i

switch.lookup:                                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  %sext = shl i32 %28, 24
  %30 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.rnbd_srv_rdma_ev, i32 0, i32 %30
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %rnbd_to_bio_flags.exit.i

rnbd_to_bio_flags.exit.i:                         ; preds = %switch.lookup, %do.end.i.i
  %bio_opf.0.i.i = phi i32 [ 0, %do.end.i.i ], [ %switch.load, %switch.lookup ]
  %and.i.i = shl i32 %28, 3
  %32 = and i32 %and.i.i, 2048
  %and25.i.i = shl i32 %28, 8
  %33 = and i32 %and25.i.i, 131072
  %34 = or i32 %33, %32
  %35 = or i32 %34, %bio_opf.0.i.i
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call12.i, i32 0, i32 2
  %36 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %bi_opf.i, align 8
  %sector.i = getelementptr inbounds %struct.rnbd_msg_io, ptr %usr, i32 0, i32 2
  %37 = ptrtoint ptr %sector.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %sector.i, align 8
  %39 = tail call i64 @llvm.bswap.i64(i64 %38) #12
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call12.i, i32 0, i32 8
  %40 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %bi_iter.i, align 8
  %bi_size.i = getelementptr inbounds %struct.rnbd_msg_io, ptr %usr, i32 0, i32 4
  %41 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bi_size.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #12
  %bi_size30.i = getelementptr inbounds %struct.bio, ptr %call12.i, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %bi_size30.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %bi_size30.i, align 8
  %ver.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %priv, i32 0, i32 8
  %45 = ptrtoint ptr %ver.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %cmp.i = icmp ult i8 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %usrlen)
  %cmp32.i = icmp ult i32 %usrlen, 32
  %or.cond.i = or i1 %cmp32.i, %cmp.i
  br i1 %or.cond.i, label %rnbd_to_bio_flags.exit.i.cond.end.i_crit_edge, label %cond.false.i

rnbd_to_bio_flags.exit.i.cond.end.i_crit_edge:    ; preds = %rnbd_to_bio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.false.i:                                     ; preds = %rnbd_to_bio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prio34.i = getelementptr inbounds %struct.rnbd_msg_io, ptr %usr, i32 0, i32 5
  %47 = ptrtoint ptr %prio34.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %prio34.i, align 8
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #12
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %rnbd_to_bio_flags.exit.i.cond.end.i_crit_edge
  %cond.i = phi i16 [ %49, %cond.false.i ], [ 0, %rnbd_to_bio_flags.exit.i.cond.end.i_crit_edge ]
  %bi_ioprio.i = getelementptr inbounds %struct.bio, ptr %call12.i, i32 0, i32 4
  %50 = ptrtoint ptr %bi_ioprio.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %cond.i, ptr %bi_ioprio.i, align 2
  %51 = ptrtoint ptr %rnbd_dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rnbd_dev.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call12.i, i32 0, i32 3
  %55 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %56, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call12.i, i32 0, i32 1
  %57 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %58, %54
  br i1 %cmp.not.i.i, label %cond.end.i.bio_set_dev.exit.i_crit_edge, label %if.then.i.i

cond.end.i.bio_set_dev.exit.i_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bio_set_dev.exit.i

if.then.i.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv1.i8.i.i = and i16 %56, -2177
  %59 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_set_dev.exit.i

bio_set_dev.exit.i:                               ; preds = %if.then.i.i, %cond.end.i.bio_set_dev.exit.i_crit_edge
  %60 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %54, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call12.i) #12
  tail call void @submit_bio(ptr noundef %call12.i) #12
  br label %cleanup

err38.i:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.err38.i_crit_edge, %do.end.i, %if.then3.i.err38.i_crit_edge
  %err.0.i = phi i32 [ -107, %do.end.i ], [ -107, %if.then3.i.err38.i_crit_edge ], [ %14, %if.end5.i.i.i.i.i.i.err38.i_crit_edge ], [ %14, %if.then10.i.i.i.i.i.i ], [ %14, %if.then.i.i.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

sw.bb41:                                          ; preds = %if.end39
  %device_id.i81 = getelementptr inbounds %struct.rnbd_msg_close, ptr %usr, i32 0, i32 1
  %61 = ptrtoint ptr %device_id.i81 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %device_id.i81, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #12
  %call.i = tail call fastcc ptr @rnbd_get_sess_dev(i32 noundef %63, ptr noundef nonnull %priv) #12
  %cmp.i.i82 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i82, label %sw.bb41.sw.epilog_crit_edge, label %if.end.i87

sw.bb41.sw.epilog_crit_edge:                      ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end.i87:                                       ; preds = %sw.bb41
  %kref.i.i83 = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %call.i, i32 0, i32 9
  %call.i.i.i.i.i.i.i.i84 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i83, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !217
  tail call void @llvm.prefetch.p0(ptr %kref.i.i83, i32 1, i32 3, i32 1) #12
  %64 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i83, ptr %kref.i.i83, i32 1, ptr elementtype(i32) %kref.i.i83) #12, !srcloc !218
  %asmresult.i.i.i.i.i.i.i.i.i85 = extractvalue { i32, i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i85)
  %cmp.i.i.i.i.i.i86 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i85, 1
  br i1 %cmp.i.i.i.i.i.i86, label %if.then.i.i.i92, label %if.end5.i.i.i.i.i.i89

if.end5.i.i.i.i.i.i89:                            ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i85)
  %.not.i.i.i.i.i.i88 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i85, 0
  br i1 %.not.i.i.i.i.i.i88, label %if.end5.i.i.i.i.i.i89.rnbd_put_sess_dev.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i90, !prof !219

if.end5.i.i.i.i.i.i89.rnbd_put_sess_dev.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i89
  call void @__sanitizer_cov_trace_pc() #14
  br label %rnbd_put_sess_dev.exit.i

if.then10.i.i.i.i.i.i90:                          ; preds = %if.end5.i.i.i.i.i.i89
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref.i.i83, i32 noundef 3) #12
  br label %rnbd_put_sess_dev.exit.i

if.then.i.i.i92:                                  ; preds = %if.end.i87
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !220
  %destroy_comp.i.i.i91 = getelementptr %struct.rnbd_srv_sess_dev, ptr %call.i, i32 0, i32 10
  %65 = ptrtoint ptr %destroy_comp.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %destroy_comp.i.i.i91, align 4
  tail call void @complete(ptr noundef %66) #12
  br label %rnbd_put_sess_dev.exit.i

rnbd_put_sess_dev.exit.i:                         ; preds = %if.then.i.i.i92, %if.then10.i.i.i.i.i.i90, %if.end5.i.i.i.i.i.i89.rnbd_put_sess_dev.exit.i_crit_edge
  %lock.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %priv, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #12
  tail call void @rnbd_srv_destroy_dev_session_sysfs(ptr noundef %call.i) #12
  tail call void @mutex_unlock(ptr noundef %lock.i) #12
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %call44 = tail call fastcc i32 @process_msg_open(ptr noundef nonnull %priv, ptr noundef %usr, ptr noundef %data)
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end39
  %ver.i93 = getelementptr inbounds %struct.rnbd_msg_sess_info, ptr %usr, i32 0, i32 1
  %67 = ptrtoint ptr %ver.i93 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %ver.i93, align 2
  %69 = tail call i8 @llvm.umin.i8(i8 %68, i8 2) #12
  %ver6.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %priv, i32 0, i32 8
  %70 = ptrtoint ptr %ver6.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %ver6.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_msg_sess_info.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rnbd_srv_rdma_ev, %if.then.i)) #12
          to label %process_msg_sess_info.exit [label %if.then.i], !srcloc !221

if.then.i:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #14
  %sessname.i94 = getelementptr inbounds %struct.rnbd_srv_session, ptr %priv, i32 0, i32 2
  %71 = ptrtoint ptr %ver6.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ver6.i, align 4
  %conv11.i = zext i8 %72 to i32
  %73 = ptrtoint ptr %ver.i93 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %ver.i93, align 2
  %conv13.i = zext i8 %74 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_msg_sess_info.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.74, ptr noundef %sessname.i94, i32 noundef %conv11.i, i32 noundef %conv13.i, i32 noundef 2) #12
  br label %process_msg_sess_info.exit

process_msg_sess_info.exit:                       ; preds = %if.then.i, %sw.bb45
  %75 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 256, ptr %data, align 2
  %76 = ptrtoint ptr %ver6.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ver6.i, align 4
  %ver15.i = getelementptr inbounds %struct.rnbd_msg_sess_info_rsp, ptr %data, i32 0, i32 1
  %78 = ptrtoint ptr %ver15.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %ver15.i, align 2
  br label %sw.epilog

do.end49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i16 %2 to i32
  %sessname = getelementptr inbounds %struct.rnbd_srv_session, ptr %priv, i32 0, i32 2
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef %dir, ptr noundef %sessname) #15
  br label %cleanup

sw.epilog:                                        ; preds = %process_msg_sess_info.exit, %sw.bb43, %rnbd_put_sess_dev.exit.i, %sw.bb41.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %process_msg_sess_info.exit ], [ %call44, %sw.bb43 ], [ 0, %sw.bb41.sw.epilog_crit_edge ], [ 0, %rnbd_put_sess_dev.exit.i ]
  %call53 = tail call zeroext i1 @rtrs_srv_resp_rdma(ptr noundef %id, i32 noundef %ret.0) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end49, %err38.i, %bio_set_dev.exit.i, %sw.bb.cleanup_crit_edge, %if.then, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end49 ], [ 0, %sw.epilog ], [ -19, %if.then ], [ -19, %land.rhs.cleanup_crit_edge ], [ %err.0.i, %err38.i ], [ 0, %bio_set_dev.exit.i ], [ -12, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rnbd_srv_link_ev(ptr noundef %rtrs, i32 noundef %ev, ptr noundef %priv) #0 align 64 {
entry:
  %pathname.i = alloca [255 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %ev to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %ev, label %do.end43 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %pathname.i) #12
  %1 = call ptr @memset(ptr %pathname.i, i32 255, i32 255)
  %call.i = call i32 @rtrs_srv_get_path_name(ptr noundef %rtrs, ptr noundef nonnull %pathname.i, i32 noundef 255) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull %pathname.i, i32 noundef %call.i) #15
  br label %create_sess.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1032) #17
  %tobool4.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not.i, label %if.end.i.create_sess.exit_crit_edge, label %if.end6.i

if.end.i.create_sess.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %create_sess.exit

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = call i32 @rtrs_srv_get_queue_depth(ptr noundef %rtrs) #12
  %queue_depth.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %call7.i.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call7.i, ptr %queue_depth.i, align 4
  %sess_bio_set.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %call7.i.i.i, i32 0, i32 4
  %call9.i = call i32 @bioset_init(ptr noundef %sess_bio_set.i, i32 noundef %call7.i, i32 noundef 8, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end18.i, label %do.end14.i

do.end14.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull %pathname.i) #15
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %create_sess.exit

if.end18.i:                                       ; preds = %if.end6.i
  %index_idr.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %call7.i.i.i, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %index_idr.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 67108868, ptr %xa_flags.i.i, align 8
  %xa_head.i.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %call7.i.i.i, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %xa_head.i.i, align 4
  %sess_dev_list.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %call7.i.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %sess_dev_list.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %sess_dev_list.i, ptr %sess_dev_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sess_dev_list.i, ptr %prev.i.i, align 4
  %lock.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %call7.i.i.i, i32 0, i32 7
  call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.82, ptr noundef nonnull @create_sess.__key) #12
  call void @mutex_lock_nested(ptr noundef nonnull @sess_lock, i32 noundef 0) #12
  %8 = load ptr, ptr @sess_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @sess_list, ptr noundef %8) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end18.i.list_add.exit.i_crit_edge

if.end18.i.list_add.exit.i_crit_edge:             ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sess_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %call7.i.i.i, ptr @sess_list, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end18.i.list_add.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @sess_lock) #12
  %rtrs22.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %rtrs22.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rtrs, ptr %rtrs22.i, align 8
  %sessname.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %call7.i.i.i, i32 0, i32 2
  %call25.i = call i32 @strscpy(ptr noundef %sessname.i, ptr noundef nonnull %pathname.i, i32 noundef 255) #12
  call void @rtrs_srv_set_sess_priv(ptr noundef %rtrs, ptr noundef nonnull %call7.i.i.i) #12
  br label %create_sess.exit

create_sess.exit:                                 ; preds = %list_add.exit.i, %do.end14.i, %if.end.i.create_sess.exit_crit_edge, %do.end.i
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ %call9.i, %do.end14.i ], [ 0, %list_add.exit.i ], [ -12, %if.end.i.create_sess.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %pathname.i) #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %priv, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %sw.bb1
  %.b51 = load i1, ptr @rnbd_srv_link_ev.__already_done, align 1
  br i1 %.b51, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !219

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rnbd_srv_link_ev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 318, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end40:                                         ; preds = %sw.bb1
  %sess_dev_list.i53 = getelementptr inbounds %struct.rnbd_srv_session, ptr %priv, i32 0, i32 6
  %13 = ptrtoint ptr %sess_dev_list.i53 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %sess_dev_list.i53, align 4
  %cmp.i.not.i = icmp eq ptr %14, %sess_dev_list.i53
  br i1 %cmp.i.not.i, label %if.end40.out.i_crit_edge, label %if.end.i55

if.end40.out.i_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end.i55:                                       ; preds = %if.end40
  %lock.i54 = getelementptr inbounds %struct.rnbd_srv_session, ptr %priv, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock.i54, i32 noundef 0) #12
  %15 = ptrtoint ptr %sess_dev_list.i53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sess_dev_list.i53, align 4
  %cmp.not32.i = icmp eq ptr %16, %sess_dev_list.i53
  br i1 %cmp.not32.i, label %if.end.i55.for.end.i_crit_edge, label %if.end.i55.for.body.i_crit_edge

if.end.i55.for.body.i_crit_edge:                  ; preds = %if.end.i55
  br label %for.body.i

if.end.i55.for.end.i_crit_edge:                   ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i55.for.body.i_crit_edge
  %.pn.in33.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %16, %if.end.i55.for.body.i_crit_edge ]
  %sess_dev.0.i = getelementptr i8, ptr %.pn.in33.i, i32 -8
  %17 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %.pn.in33.i, align 4
  tail call void @rnbd_srv_destroy_dev_session_sysfs(ptr noundef %sess_dev.0.i) #12
  %cmp.not.i = icmp eq ptr %.pn.i, %sess_dev_list.i53
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i55.for.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i54) #12
  br label %out.i

out.i:                                            ; preds = %for.end.i, %if.end40.out.i_crit_edge
  %index_idr.i56 = getelementptr inbounds %struct.rnbd_srv_session, ptr %priv, i32 0, i32 5
  tail call void @xa_destroy(ptr noundef %index_idr.i56) #12
  %sess_bio_set.i57 = getelementptr inbounds %struct.rnbd_srv_session, ptr %priv, i32 0, i32 4
  tail call void @bioset_exit(ptr noundef %sess_bio_set.i57) #12
  %sessname.i58 = getelementptr inbounds %struct.rnbd_srv_session, ptr %priv, i32 0, i32 2
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %sessname.i58) #15
  tail call void @mutex_lock_nested(ptr noundef nonnull @sess_lock, i32 noundef 0) #12
  %call.i.i.i59 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %priv) #12
  br i1 %call.i.i.i59, label %if.end.i.i.i60, label %out.i.destroy_sess.exit_crit_edge

out.i.destroy_sess.exit_crit_edge:                ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %destroy_sess.exit

if.end.i.i.i60:                                   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %priv, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %destroy_sess.exit

destroy_sess.exit:                                ; preds = %if.end.i.i.i60, %out.i.destroy_sess.exit_crit_edge
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %priv, align 4
  %prev.i.i61 = getelementptr inbounds %struct.list_head, ptr %priv, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i61 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i61, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @sess_lock) #12
  %lock17.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %priv, i32 0, i32 7
  tail call void @mutex_destroy(ptr noundef %lock17.i) #12
  tail call void @kfree(ptr noundef nonnull %priv) #12
  br label %cleanup

do.end43:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sessname = getelementptr inbounds %struct.rnbd_srv_session, ptr %priv, i32 0, i32 2
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %ev, ptr noundef %sessname) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %destroy_sess.exit, %if.then, %land.rhs.cleanup_crit_edge, %create_sess.exit
  %retval.0 = phi i32 [ -22, %do.end43 ], [ 0, %destroy_sess.exit ], [ %retval.0.i, %create_sess.exit ], [ -22, %if.then ], [ -22, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtrs_srv_open(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rnbd_srv_create_sysfs_files() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @process_msg_open(ptr noundef %srv_sess, ptr noundef %msg, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @process_msg_open.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@process_msg_open, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !221

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %sessname = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 2
  %dev_name = getelementptr inbounds %struct.rnbd_msg_open, ptr %msg, i32 0, i32 3
  %access_mode = getelementptr inbounds %struct.rnbd_msg_open, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %access_mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %access_mode, align 2
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @process_msg_open.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.29, ptr noundef %sessname, ptr noundef %dev_name, i32 noundef %conv) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %access_mode4 = getelementptr inbounds %struct.rnbd_msg_open, ptr %msg, i32 0, i32 1
  %2 = ptrtoint ptr %access_mode4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %access_mode4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.not = icmp eq i8 %3, 0
  %spec.select = select i1 %cmp.not, i32 1, i32 3
  %lock = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %dev_name9 = getelementptr inbounds %struct.rnbd_msg_open, ptr %msg, i32 0, i32 3
  %sess_dev_list.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 6
  %4 = ptrtoint ptr %sess_dev_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sess_dev_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %5, %sess_dev_list.i
  br i1 %cmp.i.not.i, label %do.end.if.end14_crit_edge, label %do.end.for.cond.i_crit_edge

do.end.for.cond.i_crit_edge:                      ; preds = %do.end
  br label %for.cond.i

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %sess_dev_list.i, %do.end.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %sess_dev_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end14_crit_edge, label %for.body.i

for.cond.i.if.end14_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

for.body.i:                                       ; preds = %for.cond.i
  %pathname.i = getelementptr i8, ptr %.pn.i, i32 176
  %call3.i = tail call i32 @strcmp(ptr noundef %pathname.i, ptr noundef %dev_name9) #18
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %find_srv_sess_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

find_srv_sess_dev.exit:                           ; preds = %for.body.i
  %sess_dev.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %tobool12.not = icmp eq ptr %sess_dev.0.le.i, null
  br i1 %tobool12.not, label %find_srv_sess_dev.exit.if.end14_crit_edge, label %find_srv_sess_dev.exit.fill_response_crit_edge

find_srv_sess_dev.exit.fill_response_crit_edge:   ; preds = %find_srv_sess_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fill_response

find_srv_sess_dev.exit.if.end14_crit_edge:        ; preds = %find_srv_sess_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end14:                                         ; preds = %find_srv_sess_dev.exit.if.end14_crit_edge, %for.cond.i.if.end14_crit_edge, %do.end.if.end14_crit_edge
  %call15 = tail call i32 @strlen(ptr noundef nonnull @dev_search_path) #16
  %call18 = tail call i32 @strlen(ptr noundef %dev_name9) #16
  %add = add i32 %call18, %call15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %add)
  %cmp19 = icmp ugt i32 %add, 4095
  br i1 %cmp19, label %do.end24, label %if.end31

do.end24:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %sessname26 = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 2
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %sessname26, ptr noundef nonnull @dev_search_path, ptr noundef %dev_name9, i32 noundef 4096) #15
  br label %cleanup

if.end31:                                         ; preds = %if.end14
  %call34 = tail call ptr @strstr(ptr noundef %dev_name9, ptr noundef nonnull @.str.31)
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end46, label %do.end39

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %sessname41 = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 2
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %sessname41, ptr noundef %dev_name9) #15
  br label %cleanup

if.end46:                                         ; preds = %if.end31
  %call49 = tail call fastcc ptr @rnbd_srv_get_full_path(ptr noundef %srv_sess, ptr noundef %dev_name9)
  %cmp.i = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then51, label %if.end62

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call49 to i32
  %sessname59 = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 2
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %dev_name9, ptr noundef %sessname59, i32 noundef %7) #15
  br label %cleanup

if.end62:                                         ; preds = %if.end46
  %sess_bio_set = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 4
  %call63 = tail call ptr @rnbd_dev_open(ptr noundef %call49, i32 noundef %spec.select, ptr noundef %sess_bio_set) #12
  %cmp.i2 = icmp ugt ptr %call63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2, label %do.end68, label %if.end75

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  %sessname70 = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 2
  %8 = ptrtoint ptr %call63 to i32
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %call49, ptr noundef %sessname70, i32 noundef %8) #15
  br label %free_path

if.end75:                                         ; preds = %if.end62
  %9 = ptrtoint ptr %access_mode4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %access_mode4, align 2
  %conv77 = zext i8 %10 to i32
  %call78 = tail call fastcc ptr @rnbd_srv_get_or_create_srv_dev(ptr noundef %call63, ptr noundef %srv_sess, i32 noundef %conv77)
  %cmp.i3 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i3, label %do.end83, label %if.end90

do.end83:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  %sessname85 = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 2
  %11 = ptrtoint ptr %call78 to i32
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %call49, ptr noundef %sessname85, i32 noundef %11) #15
  br label %rnbd_dev_close

if.end90:                                         ; preds = %if.end75
  %call91 = tail call fastcc ptr @rnbd_srv_create_set_sess_dev(ptr noundef %srv_sess, ptr noundef %msg, ptr noundef %call63, i32 noundef %spec.select, ptr noundef %call78)
  %cmp.i4 = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i4, label %do.end96, label %if.end103

do.end96:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #14
  %sessname98 = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 2
  %12 = ptrtoint ptr %call91 to i32
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %call49, ptr noundef %sessname98, i32 noundef %12) #15
  br label %srv_dev_put

if.end103:                                        ; preds = %if.end90
  %lock104 = getelementptr inbounds %struct.rnbd_srv_dev, ptr %call78, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock104, i32 noundef 0) #12
  %state_in_sysfs = getelementptr inbounds %struct.rnbd_srv_dev, ptr %call78, i32 0, i32 1, i32 8
  %13 = ptrtoint ptr %state_in_sysfs to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %state_in_sysfs, align 4
  %14 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool105.not = icmp eq i8 %14, 0
  br i1 %tobool105.not, label %if.then106, label %if.end103.if.end121_crit_edge

if.end103.if.end121_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.then106:                                       ; preds = %if.end103
  %15 = ptrtoint ptr %call63 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call63, align 4
  %name = getelementptr inbounds %struct.rnbd_dev, ptr %call63, i32 0, i32 3
  %call108 = tail call i32 @rnbd_srv_create_dev_sysfs(ptr noundef %call78, ptr noundef %16, ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.then106.if.end121_crit_edge, label %if.then110

if.then106.if.end121_crit_edge:                   ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end121

if.then110:                                       ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %lock104) #12
  %pathname = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %call91, i32 0, i32 11
  %sess = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %call91, i32 0, i32 3
  %17 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sess, align 4
  %sessname117 = getelementptr inbounds %struct.rnbd_srv_session, ptr %18, i32 0, i32 2
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %pathname, ptr noundef %sessname117, i32 noundef %call108) #15
  br label %free_srv_sess_dev

if.end121:                                        ; preds = %if.then106.if.end121_crit_edge, %if.end103.if.end121_crit_edge
  %call122 = tail call i32 @rnbd_srv_create_dev_session_sysfs(ptr noundef %call91) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end136, label %if.then124

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %lock104) #12
  %pathname130 = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %call91, i32 0, i32 11
  %sess132 = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %call91, i32 0, i32 3
  %19 = ptrtoint ptr %sess132 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sess132, align 4
  %sessname133 = getelementptr inbounds %struct.rnbd_srv_session, ptr %20, i32 0, i32 2
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %pathname130, ptr noundef %sessname133, i32 noundef %call122) #15
  br label %free_srv_sess_dev

if.end136:                                        ; preds = %if.end121
  %sess_dev_list = getelementptr inbounds %struct.rnbd_srv_dev, ptr %call78, i32 0, i32 5
  %21 = ptrtoint ptr %sess_dev_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sess_dev_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call91, ptr noundef %sess_dev_list, ptr noundef %22) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end136.list_add.exit_crit_edge

if.end136.list_add.exit_crit_edge:                ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call91, ptr %prev1.i.i, align 4
  %24 = ptrtoint ptr %call91 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %call91, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call91, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %sess_dev_list, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %sess_dev_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call91, ptr %sess_dev_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end136.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock104) #12
  %sess_list = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %call91, i32 0, i32 1
  %27 = ptrtoint ptr %sess_dev_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sess_dev_list.i, align 4
  %call.i.i5 = tail call zeroext i1 @__list_add_valid(ptr noundef %sess_list, ptr noundef %sess_dev_list.i, ptr noundef %28) #12
  br i1 %call.i.i5, label %if.end.i.i8, label %list_add.exit.list_add.exit9_crit_edge

list_add.exit.list_add.exit9_crit_edge:           ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit9

if.end.i.i8:                                      ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i6 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %sess_list, ptr %prev1.i.i6, align 4
  %30 = ptrtoint ptr %sess_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %sess_list, align 4
  %prev3.i.i7 = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %call91, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev3.i.i7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %sess_dev_list.i, ptr %prev3.i.i7, align 4
  %32 = ptrtoint ptr %sess_dev_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %sess_list, ptr %sess_dev_list.i, align 4
  br label %list_add.exit9

list_add.exit9:                                   ; preds = %if.end.i.i8, %list_add.exit.list_add.exit9_crit_edge
  %pathname143 = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %call91, i32 0, i32 11
  %sess145 = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %call91, i32 0, i32 3
  %33 = ptrtoint ptr %sess145 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sess145, align 4
  %sessname146 = getelementptr inbounds %struct.rnbd_srv_session, ptr %34, i32 0, i32 2
  %id = getelementptr inbounds %struct.rnbd_srv_dev, ptr %call78, i32 0, i32 4
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %pathname143, ptr noundef %sessname146, ptr noundef %id) #15
  tail call void @kfree(ptr noundef %call49) #12
  br label %fill_response

fill_response:                                    ; preds = %list_add.exit9, %find_srv_sess_dev.exit.fill_response_crit_edge
  %srv_sess_dev.0 = phi ptr [ %sess_dev.0.le.i, %find_srv_sess_dev.exit.fill_response_crit_edge ], [ %call91, %list_add.exit9 ]
  %rnbd_dev1.i = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %srv_sess_dev.0, i32 0, i32 2
  %35 = ptrtoint ptr %rnbd_dev1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rnbd_dev1.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %38, i32 0, i32 18
  %39 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bd_queue.i.i, align 4
  %41 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 768, ptr %data, align 8
  %device_id.i = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %srv_sess_dev.0, i32 0, i32 6
  %42 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %device_id.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #12
  %device_id2.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %data, i32 0, i32 1
  %45 = ptrtoint ptr %device_id2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %device_id2.i, align 4
  %46 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %36, align 4
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bd_disk.i, align 8
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %49, i32 0, i32 7
  %50 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %part0.i.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %54 = tail call i64 @llvm.bswap.i64(i64 %53) #12
  %nsectors.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %data, i32 0, i32 2
  %55 = ptrtoint ptr %nsectors.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %nsectors.i, align 8
  %56 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %36, align 4
  %bd_queue.i.i.i = getelementptr inbounds %struct.block_device, ptr %57, i32 0, i32 18
  %58 = ptrtoint ptr %bd_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bd_queue.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i.i, label %fill_response.bdev_logical_block_size.exit.i_crit_edge, label %land.lhs.true.i.i.i

fill_response.bdev_logical_block_size.exit.i_crit_edge: ; preds = %fill_response
  call void @__sanitizer_cov_trace_pc() #14
  br label %bdev_logical_block_size.exit.i

land.lhs.true.i.i.i:                              ; preds = %fill_response
  call void @__sanitizer_cov_trace_pc() #14
  %logical_block_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %59, i32 0, i32 37, i32 9
  %60 = ptrtoint ptr %logical_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %logical_block_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool2.not.i.i.i = icmp eq i32 %61, 0
  %62 = trunc i32 %61 to i16
  %phi.cast.i = select i1 %tobool2.not.i.i.i, i16 512, i16 %62
  br label %bdev_logical_block_size.exit.i

bdev_logical_block_size.exit.i:                   ; preds = %land.lhs.true.i.i.i, %fill_response.bdev_logical_block_size.exit.i_crit_edge
  %retval1.0.i.i.i = phi i16 [ 512, %fill_response.bdev_logical_block_size.exit.i_crit_edge ], [ %phi.cast.i, %land.lhs.true.i.i.i ]
  %63 = tail call i16 @llvm.bswap.i16(i16 %retval1.0.i.i.i) #12
  %logical_block_size.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %data, i32 0, i32 9
  %64 = ptrtoint ptr %logical_block_size.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %logical_block_size.i, align 2
  %65 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %36, align 4
  %bd_queue.i.i69.i = getelementptr inbounds %struct.block_device, ptr %66, i32 0, i32 18
  %67 = ptrtoint ptr %bd_queue.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %bd_queue.i.i69.i, align 4
  %physical_block_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %68, i32 0, i32 37, i32 8
  %69 = ptrtoint ptr %physical_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %physical_block_size.i.i.i, align 4
  %conv9.i = trunc i32 %70 to i16
  %71 = tail call i16 @llvm.bswap.i16(i16 %conv9.i) #12
  %physical_block_size.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %data, i32 0, i32 8
  %72 = ptrtoint ptr %physical_block_size.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %physical_block_size.i, align 4
  %73 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %36, align 4
  %bd_queue.i.i70.i = getelementptr inbounds %struct.block_device, ptr %74, i32 0, i32 18
  %75 = ptrtoint ptr %bd_queue.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bd_queue.i.i70.i, align 4
  %max_segments.i.i.i = getelementptr inbounds %struct.request_queue, ptr %76, i32 0, i32 37, i32 21
  %77 = ptrtoint ptr %max_segments.i.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %max_segments.i.i.i, align 4
  %79 = tail call i16 @llvm.bswap.i16(i16 %78) #12
  %max_segments.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %data, i32 0, i32 10
  %80 = ptrtoint ptr %max_segments.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %max_segments.i, align 8
  %81 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %36, align 4
  %bd_queue.i.i71.i = getelementptr inbounds %struct.block_device, ptr %82, i32 0, i32 18
  %83 = ptrtoint ptr %bd_queue.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bd_queue.i.i71.i, align 4
  %max_hw_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %84, i32 0, i32 37, i32 3
  %85 = ptrtoint ptr %max_hw_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %max_hw_sectors.i.i.i, align 4
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #12
  %max_hw_sectors.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %data, i32 0, i32 3
  %88 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %max_hw_sectors.i, align 8
  %89 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %36, align 4
  %bd_queue.i.i72.i = getelementptr inbounds %struct.block_device, ptr %90, i32 0, i32 18
  %91 = ptrtoint ptr %bd_queue.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %bd_queue.i.i72.i, align 4
  %tobool.not.i.i = icmp eq ptr %92, null
  br i1 %tobool.not.i.i, label %bdev_logical_block_size.exit.i.bdev_write_same.exit.i_crit_edge, label %if.then.i.i

bdev_logical_block_size.exit.i.bdev_write_same.exit.i_crit_edge: ; preds = %bdev_logical_block_size.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %bdev_write_same.exit.i

if.then.i.i:                                      ; preds = %bdev_logical_block_size.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %max_write_same_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %92, i32 0, i32 37, i32 15
  %93 = ptrtoint ptr %max_write_same_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %max_write_same_sectors.i.i, align 4
  br label %bdev_write_same.exit.i

bdev_write_same.exit.i:                           ; preds = %if.then.i.i, %bdev_logical_block_size.exit.i.bdev_write_same.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %94, %if.then.i.i ], [ 0, %bdev_logical_block_size.exit.i.bdev_write_same.exit.i_crit_edge ]
  %95 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #12
  %max_write_same_sectors.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %data, i32 0, i32 4
  %96 = ptrtoint ptr %max_write_same_sectors.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %max_write_same_sectors.i, align 4
  %97 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %36, align 4
  %bd_queue.i.i73.i = getelementptr inbounds %struct.block_device, ptr %98, i32 0, i32 18
  %99 = ptrtoint ptr %bd_queue.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %bd_queue.i.i73.i, align 4
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %100, i32 0, i32 11
  %101 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %queue_flags.i.i, align 4
  %103 = and i32 %102, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i74.i = icmp eq i32 %103, 0
  br i1 %tobool.not.i74.i, label %bdev_write_same.exit.i.rnbd_dev_get_max_discard_sects.exit.i_crit_edge, label %if.end.i.i10

bdev_write_same.exit.i.rnbd_dev_get_max_discard_sects.exit.i_crit_edge: ; preds = %bdev_write_same.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rnbd_dev_get_max_discard_sects.exit.i

if.end.i.i10:                                     ; preds = %bdev_write_same.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %max_discard_sectors.i.i.i = getelementptr inbounds %struct.request_queue, ptr %100, i32 0, i32 37, i32 13
  %104 = ptrtoint ptr %max_discard_sectors.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %max_discard_sectors.i.i.i, align 4
  %106 = tail call i32 @llvm.umin.i32(i32 %105, i32 8388607) #12
  br label %rnbd_dev_get_max_discard_sects.exit.i

rnbd_dev_get_max_discard_sects.exit.i:            ; preds = %if.end.i.i10, %bdev_write_same.exit.i.rnbd_dev_get_max_discard_sects.exit.i_crit_edge
  %retval.0.i75.i = phi i32 [ %106, %if.end.i.i10 ], [ 0, %bdev_write_same.exit.i.rnbd_dev_get_max_discard_sects.exit.i_crit_edge ]
  %107 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i75.i) #12
  %max_discard_sectors.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %data, i32 0, i32 5
  %108 = ptrtoint ptr %max_discard_sectors.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %max_discard_sectors.i, align 8
  %109 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %36, align 4
  %bd_queue.i.i76.i = getelementptr inbounds %struct.block_device, ptr %110, i32 0, i32 18
  %111 = ptrtoint ptr %bd_queue.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bd_queue.i.i76.i, align 4
  %discard_granularity.i.i = getelementptr inbounds %struct.request_queue, ptr %112, i32 0, i32 37, i32 18
  %113 = ptrtoint ptr %discard_granularity.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %discard_granularity.i.i, align 4
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #12
  %discard_granularity.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %data, i32 0, i32 6
  %116 = ptrtoint ptr %discard_granularity.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %discard_granularity.i, align 4
  %117 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %36, align 4
  %bd_queue.i.i77.i = getelementptr inbounds %struct.block_device, ptr %118, i32 0, i32 18
  %119 = ptrtoint ptr %bd_queue.i.i77.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %bd_queue.i.i77.i, align 4
  %discard_alignment.i.i = getelementptr inbounds %struct.request_queue, ptr %120, i32 0, i32 37, i32 19
  %121 = ptrtoint ptr %discard_alignment.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %discard_alignment.i.i, align 4
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #12
  %discard_alignment.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %data, i32 0, i32 7
  %124 = ptrtoint ptr %discard_alignment.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %discard_alignment.i, align 8
  %125 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %36, align 4
  %bd_queue.i.i78.i = getelementptr inbounds %struct.block_device, ptr %126, i32 0, i32 18
  %127 = ptrtoint ptr %bd_queue.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bd_queue.i.i78.i, align 4
  %queue_flags.i79.i = getelementptr inbounds %struct.request_queue, ptr %128, i32 0, i32 11
  %129 = ptrtoint ptr %queue_flags.i79.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %queue_flags.i79.i, align 4
  %131 = trunc i32 %130 to i16
  %132 = lshr i16 %131, 3
  %133 = and i16 %132, 256
  %secure_discard.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %data, i32 0, i32 11
  %134 = ptrtoint ptr %secure_discard.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %secure_discard.i, align 2
  %queue_flags.i = getelementptr inbounds %struct.request_queue, ptr %40, i32 0, i32 11
  %135 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %queue_flags.i, align 4
  %137 = trunc i32 %136 to i8
  %138 = lshr i8 %137, 6
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  %rotational.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %data, i32 0, i32 12
  %141 = ptrtoint ptr %rotational.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %rotational.i, align 4
  %cache_policy.i = getelementptr inbounds %struct.rnbd_msg_open_rsp, ptr %data, i32 0, i32 13
  %142 = ptrtoint ptr %cache_policy.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %cache_policy.i, align 1
  %143 = load volatile i32, ptr %queue_flags.i, align 4
  %144 = and i32 %143, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool24.not.i = icmp eq i32 %144, 0
  br i1 %tobool24.not.i, label %rnbd_dev_get_max_discard_sects.exit.i.if.end.i_crit_edge, label %if.then.i

rnbd_dev_get_max_discard_sects.exit.i.if.end.i_crit_edge: ; preds = %rnbd_dev_get_max_discard_sects.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %rnbd_dev_get_max_discard_sects.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %145 = ptrtoint ptr %cache_policy.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 2, ptr %cache_policy.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %rnbd_dev_get_max_discard_sects.exit.i.if.end.i_crit_edge
  %146 = ptrtoint ptr %queue_flags.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %queue_flags.i, align 4
  %148 = and i32 %147, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool30.not.i = icmp eq i32 %148, 0
  br i1 %tobool30.not.i, label %if.end.i.cleanup_crit_edge, label %if.then31.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then31.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %149 = ptrtoint ptr %cache_policy.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %cache_policy.i, align 1
  %151 = or i8 %150, 1
  store i8 %151, ptr %cache_policy.i, align 1
  br label %cleanup

free_srv_sess_dev:                                ; preds = %if.then124, %if.then110
  %ret.0 = phi i32 [ %call122, %if.then124 ], [ %call108, %if.then110 ]
  %index_idr = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 5
  %device_id = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %call91, i32 0, i32 6
  %152 = ptrtoint ptr %device_id to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %device_id, align 4
  %call151 = tail call ptr @xa_erase(ptr noundef %index_idr, i32 noundef %153) #12
  tail call void @synchronize_rcu() #12
  tail call void @kfree(ptr noundef %call91) #12
  br label %srv_dev_put

srv_dev_put:                                      ; preds = %free_srv_sess_dev, %do.end96
  %ret.1 = phi i32 [ %12, %do.end96 ], [ %ret.0, %free_srv_sess_dev ]
  %154 = ptrtoint ptr %access_mode4 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %access_mode4, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %cmp154.not = icmp eq i8 %155, 0
  br i1 %cmp154.not, label %srv_dev_put.if.end159_crit_edge, label %if.then156

srv_dev_put.if.end159_crit_edge:                  ; preds = %srv_dev_put
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end159

if.then156:                                       ; preds = %srv_dev_put
  call void @__sanitizer_cov_trace_pc() #14
  %lock157 = getelementptr inbounds %struct.rnbd_srv_dev, ptr %call78, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock157, i32 noundef 0) #12
  %open_write_cnt = getelementptr inbounds %struct.rnbd_srv_dev, ptr %call78, i32 0, i32 7
  %156 = ptrtoint ptr %open_write_cnt to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %open_write_cnt, align 4
  %dec = add i32 %157, -1
  store i32 %dec, ptr %open_write_cnt, align 4
  tail call void @mutex_unlock(ptr noundef %lock157) #12
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %srv_dev_put.if.end159_crit_edge
  tail call fastcc void @rnbd_put_srv_dev(ptr noundef %call78)
  br label %rnbd_dev_close

rnbd_dev_close:                                   ; preds = %if.end159, %do.end83
  %ret.2 = phi i32 [ %11, %do.end83 ], [ %ret.1, %if.end159 ]
  tail call void @rnbd_dev_close(ptr noundef %call63) #12
  br label %free_path

free_path:                                        ; preds = %rnbd_dev_close, %do.end68
  %ret.3 = phi i32 [ %8, %do.end68 ], [ %ret.2, %rnbd_dev_close ]
  tail call void @kfree(ptr noundef %call49) #12
  br label %cleanup

cleanup:                                          ; preds = %free_path, %if.then31.i, %if.end.i.cleanup_crit_edge, %if.then51, %do.end39, %do.end24
  %retval.0 = phi i32 [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then31.i ], [ -22, %do.end24 ], [ -22, %do.end39 ], [ %7, %if.then51 ], [ %ret.3, %free_path ]
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rnbd_get_sess_dev(i32 noundef %dev_id, ptr noundef %srv_sess) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !207) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !222
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %index_idr = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 5
  %call = tail call ptr @xa_load(ptr noundef %index_idr, i32 noundef %dev_id) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %kref = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %call, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #12
  %4 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %kref, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %if.then
  %6 = phi i32 [ %5, %if.then ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #12
  %8 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 %9, i32 %add.i.i.i.i, ptr elementtype(i32) %kref) #12, !srcloc !223
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !219

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge, label %if.then10.i.i.i.i, !prof !219

if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge: ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 0) #12
  br label %kref_get_unless_zero.exit

kref_get_unless_zero.exit:                        ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.kref_get_unless_zero.exit_crit_edge
  %14 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.i.i.i.i = icmp ne i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #12
  %conv.i = zext i1 %tobool12.i.i.i.i to i32
  br label %if.end

if.end:                                           ; preds = %kref_get_unless_zero.exit, %rcu_read_lock.exit.if.end_crit_edge
  %ret.0 = phi i32 [ %conv.i, %kref_get_unless_zero.exit ], [ 0, %rcu_read_lock.exit.if.end_crit_edge ]
  %call.i11 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i11, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %if.end
  %call1.i12 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !224
  %16 = call i32 @llvm.read_register.i32(metadata !207) #12
  %and.i.i.i.i.i18 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool3.not = icmp eq i32 %ret.0, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %spec.select = select i1 %or.cond, ptr inttoptr (i32 -6 to ptr), ptr %call
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rnbd_bio_map_kern(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rnbd_dev_bi_end_io(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rnbd_srv_get_full_path(ptr noundef %srv_sess, ptr noundef %dev_name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup29_crit_edge, label %if.end

entry.cleanup29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup29

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @strnstr(ptr noundef nonnull @dev_search_path, ptr noundef nonnull @.str.56, i32 noundef 4096) #12
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint ptr %call2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @dev_search_path to i32)
  %sessname = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 2
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 4096, ptr noundef nonnull @.str.57, i32 noundef %sub.ptr.sub, ptr noundef nonnull @dev_search_path, ptr noundef %sessname, ptr noundef %dev_name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call5)
  %cmp = icmp sgt i32 %call5, 4095
  br i1 %cmp, label %cleanup.thread, label %if.then4.if.end13_crit_edge

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

cleanup.thread:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @dev_search_path, ptr noundef %sessname, ptr noundef %dev_name) #15
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup29

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i, i32 noundef 4096, ptr noundef nonnull @.str.60, ptr noundef nonnull @dev_search_path, ptr noundef %dev_name)
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then4.if.end13_crit_edge
  %call14 = tail call ptr @strchr(ptr noundef nonnull %call7.i, i32 noundef 47)
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %if.end13
  %a.0 = phi ptr [ %call14, %if.end13 ], [ %a.1, %if.end27 ]
  %b.0 = phi ptr [ %call14, %if.end13 ], [ %b.1, %if.end27 ]
  %1 = ptrtoint ptr %b.0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %b.0, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %2, label %while.cond.if.else24_crit_edge [
    i8 0, label %while.end
    i8 47, label %land.lhs.true
  ]

while.cond.if.else24_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else24

land.lhs.true:                                    ; preds = %while.cond
  %4 = ptrtoint ptr %a.0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %a.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %5)
  %cmp21 = icmp eq i8 %5, 47
  br i1 %cmp21, label %land.lhs.true.if.end27_crit_edge, label %land.lhs.true.if.else24_crit_edge

land.lhs.true.if.else24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else24

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.else24:                                        ; preds = %land.lhs.true.if.else24_crit_edge, %while.cond.if.else24_crit_edge
  %incdec.ptr25 = getelementptr i8, ptr %a.0, i32 1
  %6 = ptrtoint ptr %incdec.ptr25 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %2, ptr %incdec.ptr25, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %land.lhs.true.if.end27_crit_edge
  %a.1 = phi ptr [ %incdec.ptr25, %if.else24 ], [ %a.0, %land.lhs.true.if.end27_crit_edge ]
  %b.1 = getelementptr i8, ptr %b.0, i32 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr28 = getelementptr i8, ptr %a.0, i32 1
  %7 = ptrtoint ptr %incdec.ptr28 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %incdec.ptr28, align 1
  br label %cleanup29

cleanup29:                                        ; preds = %while.end, %cleanup.thread, %entry.cleanup29_crit_edge
  %retval.1 = phi ptr [ %call7.i, %while.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup29_crit_edge ], [ inttoptr (i32 -22 to ptr), %cleanup.thread ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rnbd_dev_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rnbd_srv_get_or_create_srv_dev(ptr noundef %rnbd_dev, ptr noundef %srv_sess, i32 noundef %access_mode) unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 512) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %rnbd_srv_init_srv_dev.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

rnbd_srv_init_srv_dev.exit:                       ; preds = %entry
  %name = getelementptr inbounds %struct.rnbd_dev, ptr %rnbd_dev, i32 0, i32 3
  %id2.i = getelementptr inbounds %struct.rnbd_srv_dev, ptr %call7.i.i.i, i32 0, i32 4
  %call3.i = tail call i32 @strscpy(ptr noundef %id2.i, ptr noundef %name, i32 noundef 255) #12
  %kref.i = getelementptr inbounds %struct.rnbd_srv_dev, ptr %call7.i.i.i, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  %1 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %kref.i, align 4
  %sess_dev_list.i = getelementptr inbounds %struct.rnbd_srv_dev, ptr %call7.i.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %sess_dev_list.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %sess_dev_list.i, ptr %sess_dev_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.rnbd_srv_dev, ptr %call7.i.i.i, i32 0, i32 5, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sess_dev_list.i, ptr %prev.i.i, align 4
  %lock.i = getelementptr inbounds %struct.rnbd_srv_dev, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @rnbd_srv_init_srv_dev.__key) #12
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %rnbd_srv_init_srv_dev.exit.cleanup_crit_edge, label %if.end

rnbd_srv_init_srv_dev.exit.cleanup_crit_edge:     ; preds = %rnbd_srv_init_srv_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %rnbd_srv_init_srv_dev.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull @dev_lock) #12
  %dev.019.i = load ptr, ptr @dev_list, align 4
  %cmp.not20.i = icmp eq ptr %dev.019.i, @dev_list
  br i1 %cmp.not20.i, label %if.end.for.end.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %dev.021.i = phi ptr [ %dev.0.i, %for.inc.i.for.body.i_crit_edge ], [ %dev.019.i, %if.end.for.body.i_crit_edge ]
  %id.i = getelementptr inbounds %struct.rnbd_srv_dev, ptr %dev.021.i, i32 0, i32 4
  %call.i = call i32 @strncmp(ptr noundef %id.i, ptr noundef %id2.i, i32 noundef 255) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i19 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i19, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %kref.i20 = getelementptr inbounds %struct.rnbd_srv_dev, ptr %dev.021.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %kref.i20, i32 noundef 4) #12
  %4 = ptrtoint ptr %kref.i20 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %kref.i20, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.then.i
  %6 = phi i32 [ %5, %if.then.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %7 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %6, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i20, i32 noundef 4) #12
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #12
  %8 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %kref.i20, i32 1, i32 3, i32 1) #12
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %10 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %kref.i20, ptr %kref.i20, i32 %9, i32 %add.i.i.i.i.i, ptr elementtype(i32) %kref.i20) #12, !srcloc !223
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %9
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !219

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %11 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %12, 1
  %13 = or i32 %add5.i.i.i.i.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !219

if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_get_unless_zero.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %kref.i20, i32 noundef 0) #12
  %14 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge
  %15 = phi i32 [ %12, %if.end4.i.i.i.i.i.kref_get_unless_zero.exit.i_crit_edge ], [ %.pr.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.i.i.i.i.not.i = icmp eq i32 %15, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #12
  br i1 %tobool12.i.i.i.i.not.i, label %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, label %rnbd_srv_find_or_add_srv_dev.exit

kref_get_unless_zero.exit.i.for.inc.i_crit_edge:  ; preds = %kref_get_unless_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %kref_get_unless_zero.exit.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %16 = ptrtoint ptr %dev.021.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %dev.0.i = load ptr, ptr %dev.021.i, align 4
  %cmp.not.i = icmp eq ptr %dev.0.i, @dev_list
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %17 = load ptr, ptr @dev_list, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @dev_list, ptr noundef %17) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.rnbd_srv_find_or_add_srv_dev.exit.thread_crit_edge

for.end.i.rnbd_srv_find_or_add_srv_dev.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rnbd_srv_find_or_add_srv_dev.exit.thread

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @dev_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %call7.i.i.i, ptr @dev_list, align 4
  br label %rnbd_srv_find_or_add_srv_dev.exit.thread

rnbd_srv_find_or_add_srv_dev.exit.thread:         ; preds = %if.end.i.i.i, %for.end.i.rnbd_srv_find_or_add_srv_dev.exit.thread_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @dev_lock) #12
  br label %if.end4

rnbd_srv_find_or_add_srv_dev.exit:                ; preds = %kref_get_unless_zero.exit.i
  call void @_raw_spin_unlock(ptr noundef nonnull @dev_lock) #12
  %cmp.not = icmp eq ptr %dev.021.i, %call7.i.i.i
  br i1 %cmp.not, label %rnbd_srv_find_or_add_srv_dev.exit.if.end4_crit_edge, label %if.then3

rnbd_srv_find_or_add_srv_dev.exit.if.end4_crit_edge: ; preds = %rnbd_srv_find_or_add_srv_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then3:                                         ; preds = %rnbd_srv_find_or_add_srv_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %rnbd_srv_find_or_add_srv_dev.exit.if.end4_crit_edge, %rnbd_srv_find_or_add_srv_dev.exit.thread
  %retval.0.i2131 = phi ptr [ %call7.i.i.i, %rnbd_srv_find_or_add_srv_dev.exit.thread ], [ %dev.021.i, %if.then3 ], [ %call7.i.i.i, %rnbd_srv_find_or_add_srv_dev.exit.if.end4_crit_edge ]
  %lock.i22 = getelementptr inbounds %struct.rnbd_srv_dev, ptr %retval.0.i2131, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %lock.i22, i32 noundef 0) #12
  %21 = zext i32 %access_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %access_mode, label %do.end27.i [
    i32 0, label %if.end4.rnbd_srv_check_update_open_perm.exit.thread_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb6.i
  ]

if.end4.rnbd_srv_check_update_open_perm.exit.thread_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %rnbd_srv_check_update_open_perm.exit.thread

sw.bb1.i:                                         ; preds = %if.end4
  %open_write_cnt.i = getelementptr inbounds %struct.rnbd_srv_dev, ptr %retval.0.i2131, i32 0, i32 7
  %22 = ptrtoint ptr %open_write_cnt.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %open_write_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i23 = icmp eq i32 %23, 0
  br i1 %cmp.i23, label %if.then.i24, label %do.end.i

if.then.i24:                                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %open_write_cnt.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %open_write_cnt.i, align 4
  br label %rnbd_srv_check_update_open_perm.exit.thread

do.end.i:                                         ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #14
  %id.i25 = getelementptr inbounds %struct.rnbd_srv_dev, ptr %retval.0.i2131, i32 0, i32 4
  %sessname.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 2
  %call.i26 = call ptr @rnbd_access_mode_str(i32 noundef 1) #12
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %id.i25, ptr noundef %sessname.i, i32 noundef %23, ptr noundef %call.i26) #15
  br label %if.then6

sw.bb6.i:                                         ; preds = %if.end4
  %open_write_cnt7.i = getelementptr inbounds %struct.rnbd_srv_dev, ptr %retval.0.i2131, i32 0, i32 7
  %25 = ptrtoint ptr %open_write_cnt7.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %open_write_cnt7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp8.i = icmp slt i32 %26, 2
  br i1 %cmp8.i, label %if.then9.i, label %do.end15.i

if.then9.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc11.i = add nsw i32 %26, 1
  %27 = ptrtoint ptr %open_write_cnt7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %inc11.i, ptr %open_write_cnt7.i, align 4
  br label %rnbd_srv_check_update_open_perm.exit.thread

do.end15.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  %id17.i = getelementptr inbounds %struct.rnbd_srv_dev, ptr %retval.0.i2131, i32 0, i32 4
  %sessname19.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 2
  %call22.i = call ptr @rnbd_access_mode_str(i32 noundef 2) #12
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %id17.i, ptr noundef %sessname19.i, i32 noundef %26, ptr noundef %call22.i) #15
  br label %if.then6

do.end27.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %id29.i = getelementptr inbounds %struct.rnbd_srv_dev, ptr %retval.0.i2131, i32 0, i32 4
  %sessname31.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 2
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %id29.i, ptr noundef %sessname31.i, i32 noundef %access_mode) #15
  br label %if.then6

rnbd_srv_check_update_open_perm.exit.thread:      ; preds = %if.then9.i, %if.then.i24, %if.end4.rnbd_srv_check_update_open_perm.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i22) #12
  br label %cleanup

if.then6:                                         ; preds = %do.end27.i, %do.end15.i, %do.end.i
  %ret.0.i = phi ptr [ inttoptr (i32 -22 to ptr), %do.end27.i ], [ inttoptr (i32 -1 to ptr), %do.end15.i ], [ inttoptr (i32 -1 to ptr), %do.end.i ]
  call void @mutex_unlock(ptr noundef %lock.i22) #12
  call fastcc void @rnbd_put_srv_dev(ptr noundef %retval.0.i2131)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %rnbd_srv_check_update_open_perm.exit.thread, %rnbd_srv_init_srv_dev.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0.i, %if.then6 ], [ %call7.i.i.i, %rnbd_srv_init_srv_dev.exit.cleanup_crit_edge ], [ %retval.0.i2131, %rnbd_srv_check_update_open_perm.exit.thread ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rnbd_srv_create_set_sess_dev(ptr noundef %srv_sess, ptr noundef %open_msg, ptr noundef %rnbd_dev, i32 noundef %open_flags, ptr noundef %srv_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 444) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %index_idr.i = getelementptr inbounds %struct.rnbd_srv_session, ptr %srv_sess, i32 0, i32 5
  %device_id.i = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %index_idr.i) #12
  %call.i.i = tail call i32 @__xa_alloc(ptr noundef %index_idr.i, ptr noundef %device_id.i, ptr noundef nonnull %call7.i.i.i, [2 x i32] [i32 -1, i32 0], i32 noundef 2048) #12
  tail call void @_raw_spin_unlock(ptr noundef %index_idr.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i.rnbd_sess_dev_alloc.exit_crit_edge

if.end.i.rnbd_sess_dev_alloc.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rnbd_sess_dev_alloc.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %call.i.i) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  %1 = inttoptr i32 %call.i.i to ptr
  br label %rnbd_sess_dev_alloc.exit

rnbd_sess_dev_alloc.exit:                         ; preds = %do.end.i, %if.end.i.rnbd_sess_dev_alloc.exit_crit_edge
  %retval.0.i = phi ptr [ %1, %do.end.i ], [ %call7.i.i.i, %if.end.i.rnbd_sess_dev_alloc.exit_crit_edge ]
  %cmp.i18 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i18, label %rnbd_sess_dev_alloc.exit.cleanup_crit_edge, label %if.end

rnbd_sess_dev_alloc.exit.cleanup_crit_edge:       ; preds = %rnbd_sess_dev_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %rnbd_sess_dev_alloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %kref = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %retval.0.i, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  %2 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %kref, align 4
  %pathname = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %retval.0.i, i32 0, i32 11
  %dev_name = getelementptr inbounds %struct.rnbd_msg_open, ptr %open_msg, i32 0, i32 3
  %call3 = tail call i32 @strscpy(ptr noundef %pathname, ptr noundef %dev_name, i32 noundef 255) #12
  %rnbd_dev4 = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %retval.0.i, i32 0, i32 2
  %3 = ptrtoint ptr %rnbd_dev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %rnbd_dev, ptr %rnbd_dev4, align 4
  %sess = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %retval.0.i, i32 0, i32 3
  %4 = ptrtoint ptr %sess to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %srv_sess, ptr %sess, align 4
  %dev = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %retval.0.i, i32 0, i32 4
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %srv_dev, ptr %dev, align 4
  %open_flags5 = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %retval.0.i, i32 0, i32 8
  %6 = ptrtoint ptr %open_flags5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %open_flags, ptr %open_flags5, align 4
  %access_mode = getelementptr inbounds %struct.rnbd_msg_open, ptr %open_msg, i32 0, i32 1
  %7 = ptrtoint ptr %access_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %access_mode, align 2
  %conv = zext i8 %8 to i32
  %access_mode6 = getelementptr inbounds %struct.rnbd_srv_sess_dev, ptr %retval.0.i, i32 0, i32 12
  %9 = ptrtoint ptr %access_mode6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %access_mode6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %rnbd_sess_dev_alloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.i21 = phi ptr [ %retval.0.i, %rnbd_sess_dev_alloc.exit.cleanup_crit_edge ], [ %retval.0.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0.i21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rnbd_srv_create_dev_sysfs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rnbd_srv_create_dev_session_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rnbd_access_mode_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc(ptr noundef, ptr noundef, ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_srv_get_path_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_srv_get_queue_depth(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtrs_srv_set_sess_priv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !27, !29, !30, !32, !34, !36, !37, !38, !39, !41, !43, !45, !46, !48, !49, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !95, !96, !97, !98, !99, !101, !102, !103, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !141, !143, !144, !145, !146, !148, !150, !151, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !171, !173, !174, !175, !176, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !197, !198, !200, !201, !202, !204, !205, !206}
!llvm.named.register.sp = !{!207}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !{ptr @__UNIQUE_ID_description314, !1, !"__UNIQUE_ID_description314", i1 false, i1 false}
!1 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_file315, !3, !"__UNIQUE_ID_file315", i1 false, i1 false}
!3 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 19, i32 1}
!4 = !{ptr @__UNIQUE_ID_license316, !3, !"__UNIQUE_ID_license316", i1 false, i1 false}
!5 = !{ptr @__param_port_nr, !6, !"__param_port_nr", i1 false, i1 false}
!6 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 23, i32 1}
!7 = !{ptr @__UNIQUE_ID_port_nrtype317, !6, !"__UNIQUE_ID_port_nrtype317", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_port_nr318, !9, !"__UNIQUE_ID_port_nr318", i1 false, i1 false}
!9 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 24, i32 1}
!10 = !{ptr @__param_dev_search_path, !11, !"__param_dev_search_path", i1 false, i1 false}
!11 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 57, i32 1}
!12 = !{ptr @__UNIQUE_ID_dev_search_path319, !13, !"__UNIQUE_ID_dev_search_path319", i1 false, i1 false}
!13 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 59, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 235, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rnbd_destroy_sess_dev._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @rnbd_destroy_sess_dev._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__initcall__kmod_rnbd_server__330_870_rnbd_srv_init_module6, !21, !"__initcall__kmod_rnbd_server__330_870_rnbd_srv_init_module6", i1 false, i1 false}
!21 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 870, i32 1}
!22 = !{ptr @__exitcall_rnbd_srv_cleanup_module, !23, !"__exitcall_rnbd_srv_cleanup_module", i1 false, i1 false}
!23 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 871, i32 1}
!24 = !{ptr @rtrs_ctx, !25, !"rtrs_ctx", i1 false, i1 false}
!25 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 829, i32 29}
!26 = !{ptr @__param_str_port_nr, !6, !"__param_str_port_nr", i1 false, i1 false}
!27 = !{ptr @port_nr, !28, !"port_nr", i1 false, i1 false}
!28 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 21, i32 12}
!29 = !{ptr @__param_str_dev_search_path, !11, !"__param_str_dev_search_path", i1 false, i1 false}
!30 = !{ptr @dev_search_path_ops, !31, !"dev_search_path_ops", i1 false, i1 false}
!31 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 52, i32 38}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 39, i32 53}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 42, i32 2}
!36 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dev_search_path_set._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @dev_search_path_set._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @dev_search_path, !40, !"dev_search_path", i1 false, i1 false}
!40 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 30, i32 13}
!41 = !{ptr @dev_search_path_kparam_str, !42, !"dev_search_path_kparam_str", i1 false, i1 false}
!42 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 47, i32 29}
!43 = !{ptr @init_completion.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../include/linux/completion.h", i32 87, i32 2}
!45 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 184, i32 2}
!48 = !{ptr @.str.7, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 64, i32 8}
!51 = !{ptr @dev_lock, !50, !"dev_lock", i1 false, i1 false}
!52 = !{ptr @sess_list, !53, !"sess_list", i1 false, i1 false}
!53 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 66, i32 8}
!54 = !{ptr @.str.9, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 849, i32 3}
!56 = !{ptr @.str.10, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @rnbd_srv_init_module._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @rnbd_srv_init_module._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 855, i32 3}
!61 = !{ptr @rnbd_srv_init_module._entry.11, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @rnbd_srv_init_module._entry_ptr.13, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @rtrs_ops, !64, !"rtrs_ops", i1 false, i1 false}
!64 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 831, i32 28}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 383, i32 6}
!67 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 402, i32 3}
!69 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @rnbd_srv_rdma_ev._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @rnbd_srv_rdma_ev._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.16, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 138, i32 3}
!74 = !{ptr @process_rdma._rs, !73, !"_rs", i1 false, i1 false}
!75 = !{ptr @__func__.process_rdma, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @process_rdma._entry, !73, !"_entry", i1 false, i1 false}
!78 = !{ptr @process_rdma._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.19, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 151, i32 3}
!81 = !{ptr @process_rdma._entry.18, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @process_rdma._entry_ptr.20, !80, !"_entry_ptr", i1 false, i1 false}
!83 = distinct !{null, !84, !"__warned", i1 false, i1 false}
!84 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!85 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.22, !84, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"__warned", i1 false, i1 false}
!88 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!89 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.24, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/block/rnbd/rnbd-proto.h", i32 256, i32 3}
!92 = !{ptr @.str.25, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 706, i32 2}
!95 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @process_msg_open.__UNIQUE_ID_ddebug323, !94, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!98 = !{ptr @.str.29, !94, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 721, i32 3}
!101 = !{ptr @process_msg_open._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @process_msg_open._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.31, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 727, i32 33}
!105 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 728, i32 3}
!107 = !{ptr @process_msg_open._entry.32, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @process_msg_open._entry_ptr.34, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 736, i32 3}
!111 = !{ptr @process_msg_open._entry.35, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @process_msg_open._entry_ptr.37, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.39, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 744, i32 3}
!115 = !{ptr @process_msg_open._entry.38, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @process_msg_open._entry_ptr.40, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.42, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 753, i32 3}
!119 = !{ptr @process_msg_open._entry.41, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @process_msg_open._entry_ptr.43, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 763, i32 3}
!123 = !{ptr @process_msg_open._entry.44, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @process_msg_open._entry_ptr.46, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.48, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 779, i32 4}
!127 = !{ptr @process_msg_open._entry.47, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @process_msg_open._entry_ptr.49, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 789, i32 3}
!131 = !{ptr @process_msg_open._entry.50, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @process_msg_open._entry_ptr.52, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 800, i32 2}
!135 = !{ptr @process_msg_open._entry.53, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @process_msg_open._entry_ptr.55, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 617, i32 31}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 621, i32 39}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 624, i32 4}
!143 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @rnbd_srv_get_full_path._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @rnbd_srv_get_full_path._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 630, i32 33}
!148 = !{ptr @rnbd_srv_init_srv_dev.__key, !149, !"__key", i1 false, i1 false}
!149 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 443, i32 2}
!150 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @dev_list, !152, !"dev_list", i1 false, i1 false}
!152 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 67, i32 8}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 489, i32 4}
!155 = !{ptr @.str.63, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @rnbd_srv_check_update_open_perm._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @rnbd_srv_check_update_open_perm._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 500, i32 4}
!160 = !{ptr @rnbd_srv_check_update_open_perm._entry.64, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @rnbd_srv_check_update_open_perm._entry_ptr.66, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.68, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 507, i32 3}
!164 = !{ptr @rnbd_srv_check_update_open_perm._entry.67, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @rnbd_srv_check_update_open_perm._entry_ptr.69, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.70, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 424, i32 3}
!168 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @rnbd_sess_dev_alloc._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @rnbd_sess_dev_alloc._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.72, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 660, i32 2}
!173 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @process_msg_sess_info.__UNIQUE_ID_ddebug322, !172, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!175 = !{ptr @.str.74, !172, !"<string literal>", i1 false, i1 false}
!176 = distinct !{null, !177, !"__already_done", i1 false, i1 false}
!177 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 318, i32 7}
!178 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 325, i32 3}
!180 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @rnbd_srv_link_ev._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @rnbd_srv_link_ev._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.77, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 274, i32 3}
!185 = !{ptr @.str.78, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @create_sess._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @create_sess._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.80, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 287, i32 3}
!190 = !{ptr @create_sess._entry.79, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @create_sess._entry_ptr.81, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @create_sess.__key, !193, !"__key", i1 false, i1 false}
!193 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 295, i32 2}
!194 = !{ptr @.str.82, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @xa_init_flags.__key, !196, !"__key", i1 false, i1 false}
!196 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!197 = !{ptr @.str.83, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.84, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 63, i32 8}
!200 = !{ptr @.str.85, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @sess_lock, !199, !"sess_lock", i1 false, i1 false}
!202 = !{ptr @.str.86, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/block/rnbd/rnbd-srv.c", i32 256, i32 2}
!204 = !{ptr @.str.87, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @destroy_sess._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @destroy_sess._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{!"sp"}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{i32 7, !"frame-pointer", i32 2}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = !{i64 2148450877}
!218 = !{i64 2148365317, i64 2148365349, i64 2148365378, i64 2148365412, i64 2148365443, i64 2148365466}
!219 = !{!"branch_weights", i32 2000, i32 1}
!220 = !{i64 2149326991}
!221 = !{i64 2148974699, i64 2148974704, i64 2148974717, i64 2148974761, i64 2148974795, i64 2148974816}
!222 = !{i64 2149377481}
!223 = !{i64 845855, i64 845879, i64 845900, i64 845917, i64 845934}
!224 = !{i64 2149377747}
