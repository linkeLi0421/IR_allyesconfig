; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/ipa_qmi.c_pt.bc'
source_filename = "../drivers/net/ipa/ipa_qmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qmi_msg_handler = type { i32, i32, ptr, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.qmi_elem_info = type { i32, i32, i32, i32, i8, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ipa_init_modem_driver_req = type { i8, i32, i8, %struct.ipa_mem_bounds, i8, %struct.ipa_mem_array, i8, %struct.ipa_mem_array, i8, i32, i8, i32, i8, %struct.ipa_mem_range, i8, i32, i8, i8, i8, %struct.ipa_mem_bounds, i8, %struct.ipa_mem_bounds, i8, %struct.ipa_mem_array, i8, %struct.ipa_mem_array, i8, i32, i8, i32, i8, i32, i8, i32, i8, i32, i8, i32 }
%struct.ipa_mem_range = type { i32, i32 }
%struct.ipa_mem_bounds = type { i32, i32 }
%struct.ipa_mem_array = type { i32, i32 }
%struct.ipa = type { %struct.gsi, i32, ptr, %struct.completion, %struct.notifier_block, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.ipa_endpoint], [23 x ptr], [10 x ptr], i8, %struct.atomic_t, ptr, %struct.ipa_qmi, [24 x i8] }
%struct.gsi = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, %struct.mutex, [23 x %struct.gsi_channel], [24 x %struct.gsi_evt_ring], %struct.net_device }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gsi_channel = type { ptr, i8, i8, i8, i16, i16, %struct.gsi_ring, i32, i64, i64, i64, i64, i64, i64, %struct.gsi_trans_info, %struct.napi_struct }
%struct.gsi_ring = type { ptr, i32, i32, i32 }
%struct.gsi_trans_info = type { %struct.atomic_t, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.gsi_trans_pool = type { ptr, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.gsi_evt_ring = type { ptr, %struct.gsi_ring }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ipa_endpoint = type { ptr, i32, i32, i32, i8, ptr, i32, i32, ptr, [1 x i32], i32, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work }
%struct.atomic_t = type { i32 }
%struct.ipa_qmi = type { %struct.qmi_handle, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, i8, i8, i8, i8, i8 }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.qmi_txn = type { ptr, i16, %struct.mutex, %struct.completion, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ipa_mem = type { i32, i32, i16, i16 }
%struct.ipa_indication_register_rsp = type { %struct.qmi_response_type_v01 }
%struct.qmi_response_type_v01 = type { i16, i16 }
%struct.ipa_driver_init_complete_rsp = type { %struct.qmi_response_type_v01 }
%struct.ipa_init_complete_ind = type { %struct.qmi_response_type_v01 }
%struct.qmi_service = type { i32, i32, i32, i32, i32, ptr, %struct.list_head }

@ipa_server_ops = internal constant { %struct.qmi_ops, [40 x i8] } { %struct.qmi_ops { ptr null, ptr null, ptr null, ptr null, ptr @ipa_server_bye, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipa_server_msg_handlers = internal constant { [3 x %struct.qmi_msg_handler], [36 x i8] } { [3 x %struct.qmi_msg_handler] [%struct.qmi_msg_handler { i32 0, i32 32, ptr @ipa_indication_register_req_ei, i32 20, ptr @ipa_server_indication_register }, %struct.qmi_msg_handler { i32 0, i32 53, ptr @ipa_driver_init_complete_req_ei, i32 4, ptr @ipa_server_driver_init_complete }, %struct.qmi_msg_handler zeroinitializer], [36 x i8] zeroinitializer }, align 32
@ipa_client_ops = internal constant { %struct.qmi_ops, [40 x i8] } { %struct.qmi_ops { ptr @ipa_client_new_server, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ipa_client_msg_handlers = internal constant { [2 x %struct.qmi_msg_handler], [56 x i8] } { [2 x %struct.qmi_msg_handler] [%struct.qmi_msg_handler { i32 2, i32 33, ptr @ipa_init_modem_driver_rsp_ei, i32 25, ptr @ipa_client_init_driver }, %struct.qmi_msg_handler zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ipa_qmi_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&ipa_qmi->init_driver_work)\00", [50 x i8] zeroinitializer }, align 32
@ipa_indication_register_req_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@ipa_driver_init_complete_req_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@ipa_indication_register_rsp_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@ipa_server_indication_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 203, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"error %d sending register indication response\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ipa_server_indication_register\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/ipa/ipa_qmi.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipa_server_indication_register._entry_ptr = internal global ptr @ipa_server_indication_register._entry, section ".printk_index", align 4
@ipa_qmi_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"error %d starting modem\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipa_qmi_ready\00", [18 x i8] zeroinitializer }, align 32
@ipa_qmi_ready._entry_ptr = internal global ptr @ipa_qmi_ready._entry, section ".printk_index", align 4
@ipa_init_complete_ind_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@ipa_server_init_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 100, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"error %d sending init complete indication\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ipa_server_init_complete\00", [39 x i8] zeroinitializer }, align 32
@ipa_server_init_complete._entry_ptr = internal global ptr @ipa_server_init_complete._entry, section ".printk_index", align 4
@ipa_driver_init_complete_rsp_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@ipa_server_driver_init_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 232, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"error %d sending init complete response\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ipa_server_driver_init_complete\00", [32 x i8] zeroinitializer }, align 32
@ipa_server_driver_init_complete._entry_ptr = internal global ptr @ipa_server_driver_init_complete._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ipa_init_modem_driver_rsp_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@ipa_client_init_driver_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 423, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error %d preparing init driver request\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ipa_client_init_driver_work\00", [36 x i8] zeroinitializer }, align 32
@ipa_client_init_driver_work._entry_ptr = internal global ptr @ipa_client_init_driver_work._entry, section ".printk_index", align 4
@ipa_init_modem_driver_req_ei = external dso_local global [0 x %struct.qmi_elem_info], align 4
@ipa_client_init_driver_work._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 433, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"error %d sending init driver request\0A\00", [58 x i8] zeroinitializer }, align 32
@ipa_client_init_driver_work._entry_ptr.16 = internal global ptr @ipa_client_init_driver_work._entry.14, section ".printk_index", align 4
@ipa_client_init_driver_work._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error %d awaiting init driver response\0A\00", [56 x i8] zeroinitializer }, align 32
@ipa_client_init_driver_work._entry_ptr.19 = internal global ptr @ipa_client_init_driver_work._entry.17, section ".printk_index", align 4
@init_modem_driver_req.req = internal global { %struct.ipa_init_modem_driver_req, [48 x i8] } zeroinitializer, align 32
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"ipa_server_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 171, i32 29 }
@___asan_gen_.23 = private unnamed_addr constant [24 x i8] c"ipa_server_msg_handlers\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 237, i32 37 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"ipa_client_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 466, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant [24 x i8] c"ipa_client_msg_handlers\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 265, i32 37 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 505, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 202, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 151, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 99, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 231, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 423, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 433, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 435, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@___asan_gen_.105 = private constant [29 x i8] c"../drivers/net/ipa/ipa_qmi.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 287, i32 42 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @ipa_client_init_driver_work._entry, ptr @ipa_client_init_driver_work._entry.14, ptr @ipa_client_init_driver_work._entry.17, ptr @ipa_client_init_driver_work._entry_ptr, ptr @ipa_client_init_driver_work._entry_ptr.16, ptr @ipa_client_init_driver_work._entry_ptr.19, ptr @ipa_qmi_ready._entry, ptr @ipa_qmi_ready._entry_ptr, ptr @ipa_server_driver_init_complete._entry, ptr @ipa_server_driver_init_complete._entry_ptr, ptr @ipa_server_indication_register._entry, ptr @ipa_server_indication_register._entry_ptr, ptr @ipa_server_init_complete._entry, ptr @ipa_server_init_complete._entry_ptr, ptr @ipa_server_ops, ptr @ipa_server_msg_handlers, ptr @ipa_client_ops, ptr @ipa_client_msg_handlers, ptr @ipa_qmi_setup.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @init_modem_driver_req.req], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_server_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_server_msg_handlers to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_client_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_client_msg_handlers to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_qmi_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_server_indication_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_qmi_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_server_init_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_server_driver_init_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_client_init_driver_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_client_init_driver_work._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_client_init_driver_work._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_modem_driver_req.req to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipa_qmi_setup(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %qmi = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 39
  %initial_boot = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 39, i32 4
  %0 = ptrtoint ptr %initial_boot to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %initial_boot, align 4
  %server_handle = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 39, i32 1
  %call = tail call i32 @qmi_handle_init(ptr noundef %server_handle, i32 noundef 8, ptr noundef nonnull @ipa_server_ops, ptr noundef nonnull @ipa_server_msg_handlers) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @qmi_add_server(ptr noundef %server_handle, i32 noundef 49, i32 noundef 1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_server_handle_release_crit_edge

if.end.err_server_handle_release_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_server_handle_release

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @qmi_handle_init(ptr noundef %qmi, i32 noundef 25, ptr noundef nonnull @ipa_client_ops, ptr noundef nonnull @ipa_client_msg_handlers) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.body, label %if.end5.err_server_handle_release_crit_edge

if.end5.err_server_handle_release_crit_edge:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_server_handle_release

do.body:                                          ; preds = %if.end5
  %init_driver_work = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 39, i32 3
  tail call void @__init_work(ptr noundef %init_driver_work, i32 noundef 0) #5
  %1 = ptrtoint ptr %init_driver_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %init_driver_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 39, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @ipa_qmi_setup.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry13 = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 39, i32 3, i32 1
  %2 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 39, i32 3, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 39, i32 3, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ipa_client_init_driver_work, ptr %func, align 4
  %call16 = tail call i32 @qmi_add_lookup(ptr noundef %qmi, i32 noundef 49, i32 noundef 1, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %do.body.cleanup_crit_edge, label %err_client_handle_release

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_client_handle_release:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @qmi_handle_release(ptr noundef %qmi) #5
  %5 = call ptr @memset(ptr %qmi, i32 0, i32 368)
  br label %err_server_handle_release

err_server_handle_release:                        ; preds = %err_client_handle_release, %if.end5.err_server_handle_release_crit_edge, %if.end.err_server_handle_release_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.err_server_handle_release_crit_edge ], [ %call6, %if.end5.err_server_handle_release_crit_edge ], [ %call16, %err_client_handle_release ]
  tail call void @qmi_handle_release(ptr noundef %server_handle) #5
  %6 = call ptr @memset(ptr %server_handle, i32 0, i32 368)
  br label %cleanup

cleanup:                                          ; preds = %err_server_handle_release, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_server_handle_release ], [ %call, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_handle_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_add_server(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipa_client_init_driver_work(ptr noundef %work) #0 align 64 {
entry:
  %txn = alloca %struct.qmi_txn, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %txn) #5
  %0 = call ptr @memset(ptr %txn, i32 255, i32 168)
  %add.ptr = getelementptr i8, ptr %work, i32 -748
  %pdev = getelementptr i8, ptr %work, i32 -5936
  %1 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %call5 = call i32 @qmi_txn_init(ptr noundef %add.ptr, ptr noundef nonnull %txn, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.12, i32 noundef %call5) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %work, i32 -20148
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 16), align 4
  %uc_loaded.i = getelementptr i8, ptr %work, i32 -5839
  %3 = ptrtoint ptr %uc_loaded.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %uc_loaded.i, align 1, !range !58
  store i8 %4, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 17), align 1
  %5 = load i8, ptr @init_modem_driver_req.req, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.end.init_modem_driver_req.exit_crit_edge

if.end.init_modem_driver_req.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_modem_driver_req.exit

if.end.i:                                         ; preds = %if.end
  store i8 1, ptr @init_modem_driver_req.req, align 4
  store i32 3, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 1), align 4
  %call.i = call ptr @ipa_mem_find(ptr noundef %add.ptr.i, i32 noundef 10) #5
  %size.i = getelementptr inbounds %struct.ipa_mem, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool2.not.i = icmp eq i16 %7, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then3.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 2), align 4
  %mem_offset.i = getelementptr i8, ptr %work, i32 -5820
  %8 = ptrtoint ptr %mem_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mem_offset.i, align 8
  %offset.i = getelementptr inbounds %struct.ipa_mem, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %11, %9
  store i32 %add.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 3), align 4
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %size.i, align 4
  %conv5.i = zext i16 %13 to i32
  %add6.i = add i32 %add.i, -1
  %sub.i = add i32 %add6.i, %conv5.i
  store i32 %sub.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 3, i32 1), align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then3.i, %if.end.i.if.end7.i_crit_edge
  %call8.i = call ptr @ipa_mem_find(ptr noundef %add.ptr.i, i32 noundef 7) #5
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 4), align 4
  %mem_offset9.i = getelementptr i8, ptr %work, i32 -5820
  %14 = ptrtoint ptr %mem_offset9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mem_offset9.i, align 8
  %offset10.i = getelementptr inbounds %struct.ipa_mem, ptr %call8.i, i32 0, i32 1
  %16 = ptrtoint ptr %offset10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset10.i, align 4
  %add11.i = add i32 %17, %15
  store i32 %add11.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 5), align 4
  %size12.i = getelementptr inbounds %struct.ipa_mem, ptr %call8.i, i32 0, i32 2
  %18 = ptrtoint ptr %size12.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %size12.i, align 4
  %20 = lshr i16 %19, 3
  %div.i = zext i16 %20 to i32
  store i32 %div.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 5, i32 1), align 4
  %call14.i = call ptr @ipa_mem_find(ptr noundef %add.ptr.i, i32 noundef 9) #5
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 6), align 4
  %21 = ptrtoint ptr %mem_offset9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mem_offset9.i, align 8
  %offset16.i = getelementptr inbounds %struct.ipa_mem, ptr %call14.i, i32 0, i32 1
  %23 = ptrtoint ptr %offset16.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset16.i, align 4
  %add17.i = add i32 %24, %22
  store i32 %add17.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 7), align 4
  %size18.i = getelementptr inbounds %struct.ipa_mem, ptr %call14.i, i32 0, i32 2
  %25 = ptrtoint ptr %size18.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %size18.i, align 4
  %27 = lshr i16 %26, 3
  %div20.i = zext i16 %27 to i32
  store i32 %div20.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 7, i32 1), align 4
  %call21.i = call ptr @ipa_mem_find(ptr noundef %add.ptr.i, i32 noundef 3) #5
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 8), align 4
  %28 = ptrtoint ptr %mem_offset9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mem_offset9.i, align 8
  %offset23.i = getelementptr inbounds %struct.ipa_mem, ptr %call21.i, i32 0, i32 1
  %30 = ptrtoint ptr %offset23.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %offset23.i, align 4
  %add24.i = add i32 %31, %29
  store i32 %add24.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 9), align 4
  %call25.i = call ptr @ipa_mem_find(ptr noundef %add.ptr.i, i32 noundef 5) #5
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 10), align 4
  %32 = ptrtoint ptr %mem_offset9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mem_offset9.i, align 8
  %offset27.i = getelementptr inbounds %struct.ipa_mem, ptr %call25.i, i32 0, i32 1
  %34 = ptrtoint ptr %offset27.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset27.i, align 4
  %add28.i = add i32 %35, %33
  store i32 %add28.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 11), align 4
  %call29.i = call ptr @ipa_mem_find(ptr noundef %add.ptr.i, i32 noundef 14) #5
  %size30.i = getelementptr inbounds %struct.ipa_mem, ptr %call29.i, i32 0, i32 2
  %36 = ptrtoint ptr %size30.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %size30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool31.not.i = icmp eq i16 %37, 0
  br i1 %tobool31.not.i, label %if.end7.i.if.end38.i_crit_edge, label %if.then32.i

if.end7.i.if.end38.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.then32.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 12), align 4
  %38 = ptrtoint ptr %mem_offset9.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mem_offset9.i, align 8
  %offset34.i = getelementptr inbounds %struct.ipa_mem, ptr %call29.i, i32 0, i32 1
  %40 = ptrtoint ptr %offset34.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset34.i, align 4
  %add35.i = add i32 %41, %39
  store i32 %add35.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 13), align 4
  %42 = ptrtoint ptr %size30.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %size30.i, align 4
  %conv37.i = zext i16 %43 to i32
  store i32 %conv37.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 13, i32 1), align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then32.i, %if.end7.i.if.end38.i_crit_edge
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 14), align 4
  %arrayidx.i = getelementptr i8, ptr %work, i32 -788
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 4
  %endpoint_id.i = getelementptr inbounds %struct.ipa_endpoint, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %endpoint_id.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %endpoint_id.i, align 4
  store i32 %47, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 15), align 4
  %call39.i = call ptr @ipa_mem_find(ptr noundef %add.ptr.i, i32 noundef 12) #5
  %size40.i = getelementptr inbounds %struct.ipa_mem, ptr %call39.i, i32 0, i32 2
  %48 = ptrtoint ptr %size40.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %size40.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool41.not.i = icmp eq i16 %49, 0
  br i1 %tobool41.not.i, label %if.end38.i.if.end50.i_crit_edge, label %if.then42.i

if.end38.i.if.end50.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.i

if.then42.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 18), align 2
  %50 = ptrtoint ptr %mem_offset9.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mem_offset9.i, align 8
  %offset44.i = getelementptr inbounds %struct.ipa_mem, ptr %call39.i, i32 0, i32 1
  %52 = ptrtoint ptr %offset44.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offset44.i, align 4
  %add45.i = add i32 %53, %51
  store i32 %add45.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 19), align 4
  %54 = ptrtoint ptr %size40.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %size40.i, align 4
  %conv47.i = zext i16 %55 to i32
  %add48.i = add i32 %add45.i, -1
  %sub49.i = add i32 %add48.i, %conv47.i
  store i32 %sub49.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 19, i32 1), align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then42.i, %if.end38.i.if.end50.i_crit_edge
  %call51.i = call ptr @ipa_mem_find(ptr noundef %add.ptr.i, i32 noundef 6) #5
  %size52.i = getelementptr inbounds %struct.ipa_mem, ptr %call51.i, i32 0, i32 2
  %56 = ptrtoint ptr %size52.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %size52.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool53.not.i = icmp eq i16 %57, 0
  br i1 %tobool53.not.i, label %if.end50.i.if.end61.i_crit_edge, label %if.then54.i

if.end50.i.if.end61.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61.i

if.then54.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #7
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 22), align 4
  %58 = ptrtoint ptr %mem_offset9.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mem_offset9.i, align 8
  %offset56.i = getelementptr inbounds %struct.ipa_mem, ptr %call51.i, i32 0, i32 1
  %60 = ptrtoint ptr %offset56.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset56.i, align 4
  %add57.i = add i32 %61, %59
  store i32 %add57.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 23), align 4
  %62 = ptrtoint ptr %size52.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %size52.i, align 4
  %64 = lshr i16 %63, 3
  %div60.i = zext i16 %64 to i32
  store i32 %div60.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 23, i32 1), align 4
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then54.i, %if.end50.i.if.end61.i_crit_edge
  %call62.i = call ptr @ipa_mem_find(ptr noundef %add.ptr.i, i32 noundef 8) #5
  %size63.i = getelementptr inbounds %struct.ipa_mem, ptr %call62.i, i32 0, i32 2
  %65 = ptrtoint ptr %size63.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %size63.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool64.not.i = icmp eq i16 %66, 0
  br i1 %tobool64.not.i, label %if.end61.i.if.end72.i_crit_edge, label %if.then65.i

if.end61.i.if.end72.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72.i

if.then65.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #7
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 24), align 4
  %67 = ptrtoint ptr %mem_offset9.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mem_offset9.i, align 8
  %offset67.i = getelementptr inbounds %struct.ipa_mem, ptr %call62.i, i32 0, i32 1
  %69 = ptrtoint ptr %offset67.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %offset67.i, align 4
  %add68.i = add i32 %70, %68
  store i32 %add68.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 25), align 4
  %71 = ptrtoint ptr %size63.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %size63.i, align 4
  %73 = lshr i16 %72, 3
  %div71.i = zext i16 %73 to i32
  store i32 %div71.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 25, i32 1), align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then65.i, %if.end61.i.if.end72.i_crit_edge
  %call73.i = call ptr @ipa_mem_find(ptr noundef %add.ptr.i, i32 noundef 2) #5
  %size74.i = getelementptr inbounds %struct.ipa_mem, ptr %call73.i, i32 0, i32 2
  %74 = ptrtoint ptr %size74.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %size74.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool75.not.i = icmp eq i16 %75, 0
  br i1 %tobool75.not.i, label %if.end72.i.if.end80.i_crit_edge, label %if.then76.i

if.end72.i.if.end80.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80.i

if.then76.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #7
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 26), align 4
  %76 = ptrtoint ptr %mem_offset9.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mem_offset9.i, align 8
  %offset78.i = getelementptr inbounds %struct.ipa_mem, ptr %call73.i, i32 0, i32 1
  %78 = ptrtoint ptr %offset78.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offset78.i, align 4
  %add79.i = add i32 %79, %77
  store i32 %add79.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 27), align 4
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.then76.i, %if.end72.i.if.end80.i_crit_edge
  %call81.i = call ptr @ipa_mem_find(ptr noundef %add.ptr.i, i32 noundef 4) #5
  %size82.i = getelementptr inbounds %struct.ipa_mem, ptr %call81.i, i32 0, i32 2
  %80 = ptrtoint ptr %size82.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %size82.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool83.not.i = icmp eq i16 %81, 0
  br i1 %tobool83.not.i, label %if.end80.i.if.end88.i_crit_edge, label %if.then84.i

if.end80.i.if.end88.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88.i

if.then84.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #7
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 28), align 4
  %82 = ptrtoint ptr %mem_offset9.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mem_offset9.i, align 8
  %offset86.i = getelementptr inbounds %struct.ipa_mem, ptr %call81.i, i32 0, i32 1
  %84 = ptrtoint ptr %offset86.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %offset86.i, align 4
  %add87.i = add i32 %85, %83
  store i32 %add87.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 29), align 4
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then84.i, %if.end80.i.if.end88.i_crit_edge
  %version.i = getelementptr i8, ptr %work, i32 -5940
  %86 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %version.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %87)
  %cmp.i = icmp ugt i32 %87, 3
  br i1 %cmp.i, label %if.then90.i, label %if.end88.i.init_modem_driver_req.exit_crit_edge

if.end88.i.init_modem_driver_req.exit_crit_edge:  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_modem_driver_req.exit

if.then90.i:                                      ; preds = %if.end88.i
  %call91.i = call ptr @ipa_mem_find(ptr noundef %add.ptr.i, i32 noundef 17) #5
  %size92.i = getelementptr inbounds %struct.ipa_mem, ptr %call91.i, i32 0, i32 2
  %88 = ptrtoint ptr %size92.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %size92.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %89)
  %tobool93.not.i = icmp eq i16 %89, 0
  br i1 %tobool93.not.i, label %if.then90.i.if.end102.i_crit_edge, label %if.then94.i

if.then90.i.if.end102.i_crit_edge:                ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end102.i

if.then94.i:                                      ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #7
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 30), align 4
  %90 = ptrtoint ptr %mem_offset9.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mem_offset9.i, align 8
  %offset96.i = getelementptr inbounds %struct.ipa_mem, ptr %call91.i, i32 0, i32 1
  %92 = ptrtoint ptr %offset96.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %offset96.i, align 4
  %add97.i = add i32 %93, %91
  store i32 %add97.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 31), align 4
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 32), align 4
  %94 = load i32, ptr %mem_offset9.i, align 8
  %95 = ptrtoint ptr %size92.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %size92.i, align 4
  %conv100.i = zext i16 %96 to i32
  %add101.i = add i32 %94, %conv100.i
  store i32 %add101.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 33), align 4
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then94.i, %if.then90.i.if.end102.i_crit_edge
  %call103.i = call ptr @ipa_mem_find(ptr noundef %add.ptr.i, i32 noundef 20) #5
  %tobool104.not.i = icmp eq ptr %call103.i, null
  br i1 %tobool104.not.i, label %if.end102.i.init_modem_driver_req.exit_crit_edge, label %land.lhs.true.i

if.end102.i.init_modem_driver_req.exit_crit_edge: ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_modem_driver_req.exit

land.lhs.true.i:                                  ; preds = %if.end102.i
  %size105.i = getelementptr inbounds %struct.ipa_mem, ptr %call103.i, i32 0, i32 2
  %97 = ptrtoint ptr %size105.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %size105.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %tobool107.not.i = icmp eq i16 %98, 0
  br i1 %tobool107.not.i, label %land.lhs.true.i.init_modem_driver_req.exit_crit_edge, label %if.then108.i

land.lhs.true.i.init_modem_driver_req.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %init_modem_driver_req.exit

if.then108.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 34), align 4
  %99 = ptrtoint ptr %mem_offset9.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mem_offset9.i, align 8
  %offset110.i = getelementptr inbounds %struct.ipa_mem, ptr %call103.i, i32 0, i32 1
  %101 = ptrtoint ptr %offset110.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %offset110.i, align 4
  %add111.i = add i32 %102, %100
  store i32 %add111.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 35), align 4
  store i8 1, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 36), align 4
  %103 = load i32, ptr %mem_offset9.i, align 8
  %104 = ptrtoint ptr %size105.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %size105.i, align 4
  %conv114.i = zext i16 %105 to i32
  %add115.i = add i32 %103, %conv114.i
  store i32 %add115.i, ptr getelementptr inbounds (%struct.ipa_init_modem_driver_req, ptr @init_modem_driver_req.req, i32 0, i32 37), align 4
  br label %init_modem_driver_req.exit

init_modem_driver_req.exit:                       ; preds = %if.then108.i, %land.lhs.true.i.init_modem_driver_req.exit_crit_edge, %if.end102.i.init_modem_driver_req.exit_crit_edge, %if.end88.i.init_modem_driver_req.exit_crit_edge, %if.end.init_modem_driver_req.exit_crit_edge
  %modem_sq = getelementptr i8, ptr %work, i32 -12
  %call7 = call i32 @qmi_send_request(ptr noundef %add.ptr, ptr noundef %modem_sq, ptr noundef nonnull %txn, i32 noundef 33, i32 noundef 162, ptr noundef nonnull @ipa_init_modem_driver_req_ei, ptr noundef nonnull @init_modem_driver_req.req) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.else, label %do.end11

do.end11:                                         ; preds = %init_modem_driver_req.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.15, i32 noundef %call7) #8
  br label %if.else22

if.else:                                          ; preds = %init_modem_driver_req.exit
  %call12 = call i32 @qmi_txn_wait(ptr noundef nonnull %txn, i32 noundef 6000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then21.critedge, label %do.end17

do.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.18, i32 noundef %call12) #8
  br label %if.else22

if.then21.critedge:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %modem_ready = getelementptr i8, ptr %work, i32 46
  %106 = ptrtoint ptr %modem_ready to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %modem_ready, align 2
  call fastcc void @ipa_qmi_ready(ptr noundef %add.ptr)
  br label %cleanup

if.else22:                                        ; preds = %do.end17, %do.end11
  call void @qmi_txn_cancel(ptr noundef nonnull %txn) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else22, %if.then21.critedge, %do.end
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %txn) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_add_lookup(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qmi_handle_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_qmi_teardown(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %qmi = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 39
  %init_driver_work = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 39, i32 3
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %init_driver_work) #5
  tail call void @qmi_handle_release(ptr noundef %qmi) #5
  %0 = call ptr @memset(ptr %qmi, i32 0, i32 368)
  %server_handle = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 39, i32 1
  tail call void @qmi_handle_release(ptr noundef %server_handle) #5
  %1 = call ptr @memset(ptr %server_handle, i32 0, i32 368)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ipa_server_bye(ptr nocapture noundef writeonly %qmi, i32 noundef %node) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %modem_sq = getelementptr i8, ptr %qmi, i32 368
  %0 = call ptr @memset(ptr %modem_sq, i32 0, i32 12)
  %modem_ready = getelementptr i8, ptr %qmi, i32 426
  %1 = ptrtoint ptr %modem_ready to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %modem_ready, align 2
  %indication_requested = getelementptr i8, ptr %qmi, i32 427
  %2 = ptrtoint ptr %indication_requested to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %indication_requested, align 1
  %indication_sent = getelementptr i8, ptr %qmi, i32 428
  %3 = ptrtoint ptr %indication_sent to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %indication_sent, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipa_server_indication_register(ptr noundef %qmi, ptr noundef %sq, ptr noundef %txn, ptr nocapture noundef readnone %decoded) #0 align 64 {
entry:
  %rsp = alloca %struct.ipa_indication_register_rsp, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp) #5
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rsp, align 4
  %call = call i32 @qmi_send_response(ptr noundef %qmi, ptr noundef %sq, ptr noundef %txn, i32 noundef 32, i32 noundef 7, ptr noundef nonnull @ipa_indication_register_rsp_ei, ptr noundef nonnull %rsp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %qmi, i32 -368
  %indication_requested = getelementptr i8, ptr %qmi, i32 427
  %1 = ptrtoint ptr %indication_requested to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %indication_requested, align 1
  call fastcc void @ipa_qmi_ready(ptr noundef %add.ptr)
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr i8, ptr %qmi, i32 -5556
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipa_server_driver_init_complete(ptr noundef %qmi, ptr noundef %sq, ptr noundef %txn, ptr nocapture noundef readnone %decoded) #0 align 64 {
entry:
  %rsp = alloca %struct.ipa_driver_init_complete_rsp, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsp) #5
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rsp, align 4
  %call = call i32 @qmi_send_response(ptr noundef %qmi, ptr noundef %sq, ptr noundef %txn, i32 noundef 53, i32 noundef 7, ptr noundef nonnull @ipa_driver_init_complete_rsp_ei, ptr noundef nonnull %rsp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %qmi, i32 -368
  %uc_ready = getelementptr i8, ptr %qmi, i32 425
  %1 = ptrtoint ptr %uc_ready to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %uc_ready, align 1
  call fastcc void @ipa_qmi_ready(ptr noundef %add.ptr)
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr i8, ptr %qmi, i32 -5556
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsp) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_send_response(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipa_qmi_ready(ptr noundef %ipa_qmi) unnamed_addr #0 align 64 {
entry:
  %ind.i.i = alloca %struct.ipa_init_complete_ind, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %modem_ready = getelementptr inbounds %struct.ipa_qmi, ptr %ipa_qmi, i32 0, i32 6
  %0 = ptrtoint ptr %modem_ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %modem_ready, align 2, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %uc_ready = getelementptr inbounds %struct.ipa_qmi, ptr %ipa_qmi, i32 0, i32 5
  %2 = ptrtoint ptr %uc_ready to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %uc_ready, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %indication_requested.i = getelementptr inbounds %struct.ipa_qmi, ptr %ipa_qmi, i32 0, i32 7
  %4 = ptrtoint ptr %indication_requested.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %indication_requested.i, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.ipa_qmi_indication.exit_crit_edge, label %if.end.i

if.end.ipa_qmi_indication.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_qmi_indication.exit

if.end.i:                                         ; preds = %if.end
  %indication_sent.i = getelementptr inbounds %struct.ipa_qmi, ptr %ipa_qmi, i32 0, i32 8
  %6 = ptrtoint ptr %indication_sent.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %indication_sent.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not.i = icmp eq i8 %7, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.ipa_qmi_indication.exit_crit_edge

if.end.i.ipa_qmi_indication.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_qmi_indication.exit

if.end3.i:                                        ; preds = %if.end.i
  %server_handle.i.i = getelementptr inbounds %struct.ipa_qmi, ptr %ipa_qmi, i32 0, i32 1
  %modem_sq.i.i = getelementptr inbounds %struct.ipa_qmi, ptr %ipa_qmi, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ind.i.i) #5
  %8 = ptrtoint ptr %ind.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ind.i.i, align 4
  %call.i.i = call i32 @qmi_send_indication(ptr noundef %server_handle.i.i, ptr noundef %modem_sq.i.i, i32 noundef 34, i32 noundef 7, ptr noundef nonnull @ipa_init_complete_ind_ei, ptr noundef nonnull %ind.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %pdev.i.i = getelementptr i8, ptr %ipa_qmi, i32 -5188
  %9 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.8, i32 noundef %call.i.i) #8
  br label %ipa_server_init_complete.exit.i

if.else.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %indication_sent.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %indication_sent.i, align 4
  br label %ipa_server_init_complete.exit.i

ipa_server_init_complete.exit.i:                  ; preds = %if.else.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ind.i.i) #5
  br label %ipa_qmi_indication.exit

ipa_qmi_indication.exit:                          ; preds = %ipa_server_init_complete.exit.i, %if.end.i.ipa_qmi_indication.exit_crit_edge, %if.end.ipa_qmi_indication.exit_crit_edge
  %initial_boot = getelementptr inbounds %struct.ipa_qmi, ptr %ipa_qmi, i32 0, i32 4
  %12 = ptrtoint ptr %initial_boot to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %initial_boot, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not = icmp eq i8 %13, 0
  br i1 %tobool2.not, label %ipa_qmi_indication.exit.if.end8_crit_edge, label %if.then3

ipa_qmi_indication.exit.if.end8_crit_edge:        ; preds = %ipa_qmi_indication.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then3:                                         ; preds = %ipa_qmi_indication.exit
  %indication_sent = getelementptr inbounds %struct.ipa_qmi, ptr %ipa_qmi, i32 0, i32 8
  %14 = ptrtoint ptr %indication_sent to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %indication_sent, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not = icmp eq i8 %15, 0
  br i1 %tobool4.not, label %if.then3.cleanup_crit_edge, label %if.end6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %initial_boot to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %initial_boot, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %ipa_qmi_indication.exit.if.end8_crit_edge
  %add.ptr11 = getelementptr i8, ptr %ipa_qmi, i32 -19400
  %call = call i32 @ipa_modem_start(ptr noundef %add.ptr11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %do.end

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr i8, ptr %ipa_qmi, i32 -5188
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipa_modem_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_send_indication(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipa_client_new_server(ptr noundef %qmi, ptr nocapture noundef readonly %svc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %modem_sq = getelementptr inbounds %struct.ipa_qmi, ptr %qmi, i32 0, i32 2
  %0 = ptrtoint ptr %modem_sq to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 42, ptr %modem_sq, align 4
  %node = getelementptr inbounds %struct.qmi_service, ptr %svc, i32 0, i32 3
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node, align 4
  %sq_node = getelementptr inbounds %struct.ipa_qmi, ptr %qmi, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %sq_node to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %sq_node, align 4
  %port = getelementptr inbounds %struct.qmi_service, ptr %svc, i32 0, i32 4
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %sq_port = getelementptr inbounds %struct.ipa_qmi, ptr %qmi, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %sq_port to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %sq_port, align 4
  %init_driver_work = getelementptr inbounds %struct.ipa_qmi, ptr %qmi, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %init_driver_work) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipa_client_init_driver(ptr nocapture noundef readnone %qmi, ptr nocapture noundef readnone %sq, ptr noundef %txn, ptr nocapture noundef readnone %decoded) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %result = getelementptr inbounds %struct.qmi_txn, ptr %txn, i32 0, i32 4
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %result, align 4
  %completion = getelementptr inbounds %struct.qmi_txn, ptr %txn, i32 0, i32 3
  tail call void @complete(ptr noundef %completion) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_txn_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_send_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qmi_txn_wait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qmi_txn_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipa_mem_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @ipa_qmi_setup.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ipa/ipa_qmi.c", i32 505, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @ipa_server_ops, !4, !"ipa_server_ops", i1 false, i1 false}
!4 = !{!"../drivers/net/ipa/ipa_qmi.c", i32 171, i32 29}
!5 = !{ptr @ipa_server_msg_handlers, !6, !"ipa_server_msg_handlers", i1 false, i1 false}
!6 = !{!"../drivers/net/ipa/ipa_qmi.c", i32 237, i32 37}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ipa/ipa_qmi.c", i32 202, i32 3}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ipa_server_indication_register._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @ipa_server_indication_register._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ipa/ipa_qmi.c", i32 151, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ipa_qmi_ready._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @ipa_qmi_ready._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ipa/ipa_qmi.c", i32 99, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ipa_server_init_complete._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @ipa_server_init_complete._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ipa/ipa_qmi.c", i32 231, i32 3}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ipa_server_driver_init_complete._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @ipa_server_driver_init_complete._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ipa_client_ops, !31, !"ipa_client_ops", i1 false, i1 false}
!31 = !{!"../drivers/net/ipa/ipa_qmi.c", i32 466, i32 29}
!32 = !{ptr @ipa_client_msg_handlers, !33, !"ipa_client_msg_handlers", i1 false, i1 false}
!33 = !{!"../drivers/net/ipa/ipa_qmi.c", i32 265, i32 37}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ipa/ipa_qmi.c", i32 423, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ipa_client_init_driver_work._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @ipa_client_init_driver_work._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ipa/ipa_qmi.c", i32 433, i32 3}
!41 = !{ptr @ipa_client_init_driver_work._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ipa_client_init_driver_work._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ipa/ipa_qmi.c", i32 435, i32 3}
!45 = !{ptr @ipa_client_init_driver_work._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ipa_client_init_driver_work._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @init_modem_driver_req.req, !48, !"req", i1 false, i1 false}
!48 = !{!"../drivers/net/ipa/ipa_qmi.c", i32 287, i32 42}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i8 0, i8 2}
