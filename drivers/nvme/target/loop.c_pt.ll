; ModuleID = '/llk/IR_all_yes/drivers/nvme/target/loop.c_pt.bc'
source_filename = "../drivers/nvme/target/loop.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvmf_transport_ops = type { %struct.list_head, ptr, ptr, i32, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvmet_fabrics_ops = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvme_ctrl_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvme_loop_ctrl = type { ptr, %struct.blk_mq_tag_set, %struct.list_head, %struct.blk_mq_tag_set, %struct.nvme_loop_iod, %struct.nvme_ctrl, ptr }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.nvme_loop_iod = type { %struct.nvme_request, %struct.nvme_command, %struct.nvme_completion, %struct.nvmet_req, ptr, %struct.work_struct, %struct.sg_table, [0 x %struct.scatterlist] }
%struct.nvme_request = type { ptr, %union.nvme_result, i8, i8, i8, i16, ptr }
%union.nvme_result = type { i64 }
%struct.nvme_command = type { %union.anon.83 }
%union.anon.83 = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.84 }
%struct.anon.84 = type { i64, i64 }
%struct.nvme_completion = type { %union.nvme_result, i16, i16, i16, i16 }
%struct.nvmet_req = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x %struct.bio_vec], %union.anon.88, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.88 = type { %struct.anon.91 }
%struct.anon.91 = type { %struct.bio, ptr, %struct.work_struct, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.nvme_ctrl = type { i8, i32, i8, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.device, ptr, ptr, %struct.cdev, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.list_head, ptr, [12 x i8], i16, i32, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, [3 x i16], i16, i16, i16, i16, i16, i32, %struct.atomic_t, i8, i32, i32, i16, i8, i8, i16, i16, i32, i32, i32, i32, i32, i8, i32, [32 x %struct.nvme_id_power_state], ptr, %struct.xarray, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.nvme_command, %struct.work_struct, i32, i8, i8, i32, i32, %struct.mutex, ptr, i32, %struct.timer_list, %struct.work_struct, i64, i8, i32, i32, i32, i16, i32, i32, i16, i16, i32, i32, ptr, ptr, i32, %struct.nvme_fault_inject }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvme_id_power_state = type { i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, i8, i8, i16, i8, [9 x i8] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.nvme_fault_inject = type { %struct.fault_attr, ptr, i8, i16 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.nvmf_ctrl_options = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, i8, i32, ptr, i32, i8, i8, i8, i32, i32, i32, i32 }
%struct.nvmet_port = type { %struct.list_head, %struct.nvmf_disc_rsp_page_entry, %struct.config_group, %struct.config_group, %struct.list_head, %struct.config_group, %struct.list_head, %struct.list_head, %struct.config_group, %struct.nvmet_ana_group, ptr, ptr, i8, i32, ptr, i8 }
%struct.nvmf_disc_rsp_page_entry = type { i8, i8, i8, i8, i16, i16, i16, i16, [20 x i8], [32 x i8], [192 x i8], [256 x i8], [256 x i8], %union.tsas }
%union.tsas = type { %struct.rdma }
%struct.rdma = type { i8, i8, i8, [5 x i8], i16, [246 x i8] }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.nvmet_ana_group = type { %struct.config_group, ptr, i32 }
%struct.nvme_loop_queue = type { %struct.nvmet_cq, %struct.nvmet_sq, ptr, i32 }
%struct.nvmet_cq = type { i16, i16 }
%struct.nvmet_sq = type { ptr, %struct.percpu_ref, i16, i16, i32, i8, %struct.completion, %struct.completion }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_mq_hw_ctx = type { %struct.anon.78, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.78 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.nvmet_ctrl = type { ptr, ptr, i8, %struct.mutex, i64, i32, i32, %struct.uuid_t, i16, i32, ptr, i32, i32, [4 x ptr], i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.kref, %struct.delayed_work, %struct.work_struct, ptr, ptr, i32, [256 x i8], [256 x i8], ptr, %struct.xarray, %struct.spinlock, i64, [128 x %struct.nvme_error_slot], i8 }
%struct.uuid_t = type { [16 x i8] }
%struct.nvme_error_slot = type { i64, i16, i16, i16, i16, i64, i32, i8, [3 x i8], i64, [24 x i8] }

@nvme_loop_transport = internal global { %struct.nvmf_transport_ops, [36 x i8] } { %struct.nvmf_transport_ops { %struct.list_head zeroinitializer, ptr null, ptr @.str, i32 0, i32 4, ptr @nvme_loop_create_ctrl }, [36 x i8] zeroinitializer }, align 32
@nvme_loop_ops = internal constant { %struct.nvmet_fabrics_ops, [44 x i8] } { %struct.nvmet_fabrics_ops { ptr null, i32 254, i32 0, i32 0, ptr @nvme_loop_queue_response, ptr @nvme_loop_add_port, ptr @nvme_loop_remove_port, ptr @nvme_loop_delete_ctrl, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@nvme_loop_ctrl_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nvme_loop_ctrl_mutex, i64 52), ptr getelementptr (i8, ptr @nvme_loop_ctrl_mutex, i64 52) }, ptr @nvme_loop_ctrl_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.32, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nvme_loop_ctrl_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nvme_loop_ctrl_list, ptr @nvme_loop_ctrl_list }, [24 x i8] zeroinitializer }, align 32
@nvme_delete_wq = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_nvme_loop__369_735_nvme_loop_init_module6 = internal global ptr @nvme_loop_init_module, section ".initcall6.init", align 4
@__exitcall_nvme_loop_cleanup_module = internal global ptr @nvme_loop_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file370 = internal constant [45 x i8] c"nvme_loop.file=drivers/nvme/target/nvme-loop\00", section ".modinfo", align 1
@__UNIQUE_ID_license371 = internal constant [25 x i8] c"nvme_loop.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias372 = internal constant [36 x i8] c"nvme_loop.alias=nvmet-transport-254\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"loop\00", [27 x i8] zeroinitializer }, align 32
@nvme_loop_create_ctrl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&ctrl->ctrl.reset_work)\00", [54 x i8] zeroinitializer }, align 32
@nvme_loop_ctrl_ops = internal constant { %struct.nvme_ctrl_ops, [56 x i8] } { %struct.nvme_ctrl_ops { ptr @.str, ptr null, i32 1, ptr @nvmf_reg_read32, ptr @nvmf_reg_write32, ptr @nvmf_reg_read64, ptr @nvme_loop_free_ctrl, ptr @nvme_loop_submit_async_event, ptr @nvme_loop_delete_ctrl_host, ptr @nvmf_get_address }, [56 x i8] zeroinitializer }, align 32
@nvme_loop_create_ctrl.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/nvme/target/loop.c\00", [37 x i8] zeroinitializer }, align 32
@nvme_loop_create_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 627, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"queue_size %zu > ctrl maxcmd %u, clamping down\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvme_loop_create_ctrl\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvme_loop_create_ctrl._entry_ptr = internal global ptr @nvme_loop_create_ctrl._entry, section ".printk_index", align 4
@nvme_loop_create_ctrl._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.2, i32 640, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"new ctrl: \22%s\22\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nvme_loop_create_ctrl._entry_ptr.10 = internal global ptr @nvme_loop_create_ctrl._entry.7, section ".printk_index", align 4
@nvme_loop_create_ctrl.__already_done.11 = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvme_loop_reset_ctrl_work.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_loop_reset_ctrl_work.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nvme_loop_reset_ctrl_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 504, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Removing after reset failure\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvme_loop_reset_ctrl_work\00", [38 x i8] zeroinitializer }, align 32
@nvme_loop_reset_ctrl_work._entry_ptr = internal global ptr @nvme_loop_reset_ctrl_work._entry, section ".printk_index", align 4
@nvme_loop_init_io_queues._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 317, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"creating %d I/O queues.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvme_loop_init_io_queues\00", [39 x i8] zeroinitializer }, align 32
@nvme_loop_init_io_queues._entry_ptr = internal global ptr @nvme_loop_init_io_queues._entry, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@nvme_loop_submit_async_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 186, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed async event work\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nvme_loop_submit_async_event\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvme_loop_submit_async_event._entry_ptr = internal global ptr @nvme_loop_submit_async_event._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvme_loop_ports_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.20, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nvme_loop_ports_mutex, i64 52), ptr getelementptr (i8, ptr @nvme_loop_ports_mutex, i64 52) }, ptr @nvme_loop_ports_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nvme_loop_ports = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @nvme_loop_ports, ptr @nvme_loop_ports }, [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nvme_loop_ports_mutex.wait_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvme_loop_ports_mutex\00", [42 x i8] zeroinitializer }, align 32
@nvme_loop_admin_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @nvme_loop_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvme_loop_complete_rq, ptr @nvme_loop_init_admin_hctx, ptr null, ptr @nvme_loop_init_request, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@admin_timeout = external dso_local local_unnamed_addr global i32, align 4
@nvme_loop_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @nvme_loop_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvme_loop_complete_rq, ptr @nvme_loop_init_hctx, ptr null, ptr @nvme_loop_init_request, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@nvme_io_timeout = external dso_local local_unnamed_addr global i32, align 4
@loop_hctx_fq_lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nvme_loop_init_iod.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&iod->work)\00", [34 x i8] zeroinitializer }, align 32
@nvme_loop_queue_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 114, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"got bad command_id %#x on queue %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvme_loop_queue_response\00", [39 x i8] zeroinitializer }, align 32
@nvme_loop_queue_response._entry_ptr = internal global ptr @nvme_loop_queue_response._entry, section ".printk_index", align 4
@nvme_find_rq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.27, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013nvme_loop: could not locate request for tag %#x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvme_find_rq\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/nvme/target/../host/nvme.h\00", [61 x i8] zeroinitializer }, align 32
@nvme_find_rq._entry_ptr = internal global ptr @nvme_find_rq._entry, section ".printk_index", align 4
@nvme_find_rq._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.27, i32 530, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"request %#x genctr mismatch (got %#x expected %#x)\0A\00", [44 x i8] zeroinitializer }, align 32
@nvme_find_rq._entry_ptr.30 = internal global ptr @nvme_find_rq._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nvme_loop_ctrl_mutex.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvme_loop_ctrl_mutex\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [20 x i8] c"nvme_loop_transport\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 698, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"nvme_loop_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 689, i32 39 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"nvme_loop_ctrl_mutex\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c"nvme_loop_ctrl_list\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 61, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 699, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 596, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [19 x i8] c"nvme_loop_ctrl_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 508, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 606, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 625, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 639, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 504, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 317, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 186, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [22 x i8] c"nvme_loop_ports_mutex\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [16 x i8] c"nvme_loop_ports\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 58, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 59, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant [23 x i8] c"nvme_loop_admin_mq_ops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 257, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"nvme_loop_mq_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 250, i32 32 }
@___asan_gen_.132 = private unnamed_addr constant [22 x i8] c"loop_hctx_fq_lock_key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 216, i32 30 }
@___asan_gen_.135 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 199, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 112, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 523, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [38 x i8] c"../drivers/nvme/target/../host/nvme.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 528, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.172 = private constant [30 x i8] c"../drivers/nvme/target/loop.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 62, i32 8 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_alias372, ptr @__UNIQUE_ID_file370, ptr @__UNIQUE_ID_license371, ptr @__exitcall_nvme_loop_cleanup_module, ptr @__initcall__kmod_nvme_loop__369_735_nvme_loop_init_module6, ptr @nvme_find_rq._entry, ptr @nvme_find_rq._entry.28, ptr @nvme_find_rq._entry_ptr, ptr @nvme_find_rq._entry_ptr.30, ptr @nvme_loop_cleanup_module, ptr @nvme_loop_create_ctrl._entry, ptr @nvme_loop_create_ctrl._entry.7, ptr @nvme_loop_create_ctrl._entry_ptr, ptr @nvme_loop_create_ctrl._entry_ptr.10, ptr @nvme_loop_init_io_queues._entry, ptr @nvme_loop_init_io_queues._entry_ptr, ptr @nvme_loop_queue_response._entry, ptr @nvme_loop_queue_response._entry_ptr, ptr @nvme_loop_reset_ctrl_work._entry, ptr @nvme_loop_reset_ctrl_work._entry_ptr, ptr @nvme_loop_submit_async_event._entry, ptr @nvme_loop_submit_async_event._entry_ptr, ptr @nvme_loop_transport, ptr @nvme_loop_ops, ptr @nvme_loop_ctrl_mutex, ptr @nvme_loop_ctrl_list, ptr @.str, ptr @nvme_loop_create_ctrl.__key, ptr @.str.1, ptr @nvme_loop_ctrl_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @nvme_loop_ports_mutex, ptr @nvme_loop_ports, ptr @.str.20, ptr @.str.21, ptr @nvme_loop_admin_mq_ops, ptr @nvme_loop_mq_ops, ptr @loop_hctx_fq_lock_key, ptr @nvme_loop_init_iod.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_transport to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_ctrl_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_ctrl_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_create_ctrl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_ctrl_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_create_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_create_ctrl._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_reset_ctrl_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_init_io_queues._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_submit_async_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_ports_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_ports to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_admin_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @loop_hctx_fq_lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_init_iod.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_loop_queue_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_find_rq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_find_rq._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nvme_loop_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvmf_unregister_transport(ptr noundef nonnull @nvme_loop_transport) #9
  tail call void @nvmet_unregister_transport(ptr noundef nonnull @nvme_loop_ops) #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvme_loop_ctrl_mutex, i32 noundef 0) #9
  %0 = load ptr, ptr @nvme_loop_ctrl_list, align 4
  %cmp.not16 = icmp eq ptr %0, @nvme_loop_ctrl_list
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in17 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %.pn.in17 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in17, align 4
  %ctrl6 = getelementptr i8, ptr %.pn.in17, i32 708
  %call = tail call i32 @nvme_delete_ctrl(ptr noundef %ctrl6) #9
  %cmp.not = icmp eq ptr %.pn, @nvme_loop_ctrl_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_loop_ctrl_mutex) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_delete_wq to i32))
  %2 = load ptr, ptr @nvme_delete_wq, align 4
  tail call void @flush_workqueue(ptr noundef %2) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmf_unregister_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_unregister_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_delete_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_loop_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvmet_register_transport(ptr noundef nonnull @nvme_loop_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nvmf_register_transport(ptr noundef nonnull @nvme_loop_transport) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvmet_unregister_transport(ptr noundef nonnull @nvme_loop_ops) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvme_loop_create_ctrl(ptr noundef %dev, ptr noundef %opts) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4464) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl2 = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5
  %opts3 = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 93
  %1 = ptrtoint ptr %opts3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %opts, ptr %opts3, align 8
  %list = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 8
  %reset_work = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 20
  tail call void @__init_work(ptr noundef %reset_work, i32 noundef 0) #9
  %4 = ptrtoint ptr %reset_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %reset_work, align 8
  %lockdep_map = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 20, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @nvme_loop_create_ctrl.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry11 = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 20, i32 1
  %5 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i226 = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 20, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i226 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry11, ptr %prev.i226, align 8
  %func = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 20, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nvme_loop_reset_ctrl_work, ptr %func, align 4
  %call15 = tail call i32 @nvme_init_ctrl(ptr noundef %ctrl2, ptr noundef %dev, ptr noundef nonnull @nvme_loop_ctrl_ops, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %out

if.end18:                                         ; preds = %if.end
  %call20 = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl2, i32 noundef 3) #9
  br i1 %call20, label %if.end18.if.end60_crit_edge, label %land.end

if.end18.if.end60_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

land.end:                                         ; preds = %if.end18
  %.b224 = load i1, ptr @nvme_loop_create_ctrl.__already_done, align 1
  br i1 %.b224, label %land.end.if.end60_crit_edge, label %if.then27, !prof !102

land.end.if.end60_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then27:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nvme_loop_create_ctrl.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 606, i32 noundef 9, ptr noundef null) #9
  br label %if.end60

if.end60:                                         ; preds = %if.then27, %land.end.if.end60_crit_edge, %if.end18.if.end60_crit_edge
  %queue_size = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 7
  %8 = ptrtoint ptr %queue_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_size, align 4
  %10 = trunc i32 %9 to i16
  %conv = add i16 %10, -1
  %sqsize = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 44
  %11 = ptrtoint ptr %sqsize to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %sqsize, align 2
  %kato = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 12
  %12 = ptrtoint ptr %kato to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %kato, align 4
  %kato63 = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 59
  %14 = ptrtoint ptr %kato63 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %kato63, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvme_loop_ports_mutex, i32 noundef 0) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %if.end60
  %p.0.in.i = phi ptr [ @nvme_loop_ports, %if.end60 ], [ %p.0.i, %land.lhs.true.i.for.cond.i_crit_edge ]
  %15 = ptrtoint ptr %p.0.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %p.0.i = load ptr, ptr %p.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, @nvme_loop_ports
  br i1 %cmp.not.i, label %for.cond.i.nvme_loop_find_port.exit_crit_edge, label %for.body.i

for.cond.i.nvme_loop_find_port.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvme_loop_find_port.exit

for.body.i:                                       ; preds = %for.cond.i
  %16 = ptrtoint ptr %opts3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %opts3, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %and.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.nvme_loop_find_port.exit_crit_edge, label %land.lhs.true.i

for.body.i.nvme_loop_find_port.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvme_loop_find_port.exit

land.lhs.true.i:                                  ; preds = %for.body.i
  %traddr.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %traddr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %traddr.i, align 4
  %traddr3.i = getelementptr inbounds %struct.nvmet_port, ptr %p.0.i, i32 0, i32 1, i32 12
  %call.i = tail call i32 @strcmp(ptr noundef %21, ptr noundef %traddr3.i) #13
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.nvme_loop_find_port.exit_crit_edge, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

land.lhs.true.i.nvme_loop_find_port.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvme_loop_find_port.exit

nvme_loop_find_port.exit:                         ; preds = %land.lhs.true.i.nvme_loop_find_port.exit_crit_edge, %for.body.i.nvme_loop_find_port.exit_crit_edge, %for.cond.i.nvme_loop_find_port.exit_crit_edge
  %found.0.i = phi ptr [ null, %for.cond.i.nvme_loop_find_port.exit_crit_edge ], [ %p.0.i, %land.lhs.true.i.nvme_loop_find_port.exit_crit_edge ], [ %p.0.i, %for.body.i.nvme_loop_find_port.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_loop_ports_mutex) #9
  %port = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %found.0.i, ptr %port, align 8
  %nr_io_queues = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %opts, i32 0, i32 8
  %23 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_io_queues, align 4
  %add = add i32 %24, 1
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 148) #9
  %26 = extractvalue { i32, i1 } %25, 1
  br i1 %26, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !103

kcalloc.exit.thread:                              ; preds = %nvme_loop_find_port.exit
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %call7.i.i, align 8
  br label %out_uninit_ctrl

if.end7.i.i:                                      ; preds = %nvme_loop_find_port.exit
  %28 = extractvalue { i32, i1 } %25, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #14
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %tobool68.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool68.not, label %if.end7.i.i.out_uninit_ctrl_crit_edge, label %if.end70

if.end7.i.i.out_uninit_ctrl_crit_edge:            ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_uninit_ctrl

if.end70:                                         ; preds = %if.end7.i.i
  %call71 = tail call fastcc i32 @nvme_loop_configure_admin_queue(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end70.out_free_queues_crit_edge

if.end70.out_free_queues_crit_edge:               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_queues

if.end74:                                         ; preds = %if.end70
  %30 = ptrtoint ptr %queue_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %queue_size, align 4
  %maxcmd = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 90
  %32 = ptrtoint ptr %maxcmd to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %maxcmd, align 2
  %conv77 = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %conv77)
  %cmp = icmp ugt i32 %31, %conv77
  br i1 %cmp, label %do.end82, label %if.end74.if.end92_crit_edge

if.end74.if.end92_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

do.end82:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 17
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.3, i32 noundef %31, i32 noundef %conv77) #15
  %36 = ptrtoint ptr %maxcmd to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %maxcmd, align 2
  %conv90 = zext i16 %37 to i32
  %38 = ptrtoint ptr %queue_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv90, ptr %queue_size, align 4
  br label %if.end92

if.end92:                                         ; preds = %do.end82, %if.end74.if.end92_crit_edge
  %39 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_io_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool94.not = icmp eq i32 %40, 0
  br i1 %tobool94.not, label %if.end92.if.end100_crit_edge, label %if.then95

if.end92.if.end100_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then95:                                        ; preds = %if.end92
  %call.i227 = tail call fastcc i32 @nvme_loop_init_io_queues(ptr noundef %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %tobool.not.i228 = icmp eq i32 %call.i227, 0
  br i1 %tobool.not.i228, label %if.end.i, label %if.then95.out_remove_admin_queue_crit_edge

if.then95.out_remove_admin_queue_crit_edge:       ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_remove_admin_queue

if.end.i:                                         ; preds = %if.then95
  %tag_set.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 3
  %41 = call ptr @memset(ptr %tag_set.i, i32 0, i32 184)
  %ops.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @nvme_loop_mq_ops, ptr %ops.i, align 4
  %43 = ptrtoint ptr %opts3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %opts3, align 8
  %queue_size.i = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %queue_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %queue_size.i, align 4
  %queue_depth.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 3, i32 4
  %47 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %queue_depth.i, align 4
  %reserved_tags.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 3, i32 5
  %48 = ptrtoint ptr %reserved_tags.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %reserved_tags.i, align 8
  %numa_node.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 11
  %49 = ptrtoint ptr %numa_node.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %numa_node.i, align 4
  %numa_node7.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 3, i32 7
  %51 = ptrtoint ptr %numa_node7.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %numa_node7.i, align 8
  %flags.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 3, i32 9
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %flags.i, align 8
  %cmd_size.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 3, i32 6
  %53 = ptrtoint ptr %cmd_size.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 552, ptr %cmd_size.i, align 4
  %driver_data.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 3, i32 10
  %54 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %queue_count.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 30
  %55 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %queue_count.i, align 4
  %sub.i = add i32 %56, -1
  %nr_hw_queues.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 3, i32 3
  %57 = ptrtoint ptr %nr_hw_queues.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub.i, ptr %nr_hw_queues.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_io_timeout to i32))
  %58 = load i32, ptr @nvme_io_timeout, align 4
  %mul.i = mul i32 %58, 100
  %timeout.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 3, i32 8
  %59 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mul.i, ptr %timeout.i, align 4
  %tagset.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 12
  %60 = ptrtoint ptr %tagset.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %tag_set.i, ptr %tagset.i, align 8
  %call17.i = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %tag_set.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end.i.out_destroy_queues.i_crit_edge

if.end.i.out_destroy_queues.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_destroy_queues.i

if.end20.i:                                       ; preds = %if.end.i
  %call22.i = tail call ptr @blk_mq_init_queue(ptr noundef %tag_set.i) #9
  %connect_q.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 7
  %61 = ptrtoint ptr %connect_q.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call22.i, ptr %connect_q.i, align 4
  %cmp.i.i = icmp ugt ptr %call22.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then27.i, label %if.end31.i

if.then27.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %call22.i to i32
  br label %out_free_tagset.i

if.end31.i:                                       ; preds = %if.end20.i
  %63 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp10.i.i = icmp ugt i32 %64, 1
  br i1 %cmp10.i.i, label %if.end31.i.for.body.i.i_crit_edge, label %if.end31.i.if.end100_crit_edge

if.end31.i.if.end100_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.end31.i.for.body.i.i_crit_edge:                ; preds = %if.end31.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i230.for.body.i.i_crit_edge, %if.end31.i.for.body.i.i_crit_edge
  %i.011.i.i = phi i32 [ %inc.i.i, %if.end.i.i230.for.body.i.i_crit_edge ], [ 1, %if.end31.i.for.body.i.i_crit_edge ]
  %conv.i.i = trunc i32 %i.011.i.i to i16
  %call.i.i = tail call i32 @nvmf_connect_io_queue(ptr noundef %ctrl2, i16 noundef zeroext %conv.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i230, label %out_cleanup_connect_q.i

if.end.i.i230:                                    ; preds = %for.body.i.i
  %65 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call7.i.i, align 8
  %flags.i.i = getelementptr %struct.nvme_loop_queue, ptr %66, i32 %i.011.i.i, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i.i) #9
  %inc.i.i = add nuw i32 %i.011.i.i, 1
  %67 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %queue_count.i, align 4
  %cmp.i68.i = icmp ult i32 %inc.i.i, %68
  br i1 %cmp.i68.i, label %if.end.i.i230.for.body.i.i_crit_edge, label %if.end.i.i230.if.end100_crit_edge

if.end.i.i230.if.end100_crit_edge:                ; preds = %if.end.i.i230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.end.i.i230.for.body.i.i_crit_edge:             ; preds = %if.end.i.i230
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

out_cleanup_connect_q.i:                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %connect_q.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %connect_q.i, align 4
  tail call void @blk_cleanup_queue(ptr noundef %70) #9
  br label %out_free_tagset.i

out_free_tagset.i:                                ; preds = %out_cleanup_connect_q.i, %if.then27.i
  %ret.0.i = phi i32 [ %62, %if.then27.i ], [ %call.i.i, %out_cleanup_connect_q.i ]
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set.i) #9
  br label %out_destroy_queues.i

out_destroy_queues.i:                             ; preds = %out_free_tagset.i, %if.end.i.out_destroy_queues.i_crit_edge
  %ret.1.i = phi i32 [ %call17.i, %if.end.i.out_destroy_queues.i_crit_edge ], [ %ret.0.i, %out_free_tagset.i ]
  %71 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp12.i.i = icmp ugt i32 %72, 1
  br i1 %cmp12.i.i, label %out_destroy_queues.i.for.body.i73.i_crit_edge, label %out_destroy_queues.i.nvme_loop_create_io_queues.exit_crit_edge

out_destroy_queues.i.nvme_loop_create_io_queues.exit_crit_edge: ; preds = %out_destroy_queues.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvme_loop_create_io_queues.exit

out_destroy_queues.i.for.body.i73.i_crit_edge:    ; preds = %out_destroy_queues.i
  br label %for.body.i73.i

for.body.i73.i:                                   ; preds = %for.body.i73.i.for.body.i73.i_crit_edge, %out_destroy_queues.i.for.body.i73.i_crit_edge
  %i.013.i.i = phi i32 [ %inc.i71.i, %for.body.i73.i.for.body.i73.i_crit_edge ], [ 1, %out_destroy_queues.i.for.body.i73.i_crit_edge ]
  %73 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call7.i.i, align 8
  %flags.i70.i = getelementptr %struct.nvme_loop_queue, ptr %74, i32 %i.013.i.i, i32 3
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i70.i) #9
  %75 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call7.i.i, align 8
  %nvme_sq.i.i = getelementptr %struct.nvme_loop_queue, ptr %76, i32 %i.013.i.i, i32 1
  tail call void @nvmet_sq_destroy(ptr noundef %nvme_sq.i.i) #9
  %inc.i71.i = add nuw i32 %i.013.i.i, 1
  %77 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %queue_count.i, align 4
  %cmp.i72.i = icmp ult i32 %inc.i71.i, %78
  br i1 %cmp.i72.i, label %for.body.i73.i.for.body.i73.i_crit_edge, label %for.body.i73.i.nvme_loop_create_io_queues.exit_crit_edge

for.body.i73.i.nvme_loop_create_io_queues.exit_crit_edge: ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvme_loop_create_io_queues.exit

for.body.i73.i.for.body.i73.i_crit_edge:          ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i73.i

nvme_loop_create_io_queues.exit:                  ; preds = %for.body.i73.i.nvme_loop_create_io_queues.exit_crit_edge, %out_destroy_queues.i.nvme_loop_create_io_queues.exit_crit_edge
  %79 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool97.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool97.not, label %nvme_loop_create_io_queues.exit.if.end100_crit_edge, label %nvme_loop_create_io_queues.exit.out_remove_admin_queue_crit_edge

nvme_loop_create_io_queues.exit.out_remove_admin_queue_crit_edge: ; preds = %nvme_loop_create_io_queues.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_remove_admin_queue

nvme_loop_create_io_queues.exit.if.end100_crit_edge: ; preds = %nvme_loop_create_io_queues.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.end100:                                        ; preds = %nvme_loop_create_io_queues.exit.if.end100_crit_edge, %if.end.i.i230.if.end100_crit_edge, %if.end31.i.if.end100_crit_edge, %if.end92.if.end100_crit_edge
  %async_event_iod = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 4
  tail call fastcc void @nvme_loop_init_iod(ptr noundef nonnull %call7.i.i, ptr noundef %async_event_iod, i32 noundef 0)
  %device106 = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 17
  %80 = ptrtoint ptr %device106 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %device106, align 8
  %82 = ptrtoint ptr %opts3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %opts3, align 8
  %subsysnqn = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %subsysnqn to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %subsysnqn, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull @.str.8, ptr noundef %85) #15
  %call110 = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl2, i32 noundef 1) #9
  br i1 %call110, label %if.end100.if.end161_crit_edge, label %land.end119

if.end100.if.end161_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

land.end119:                                      ; preds = %if.end100
  %.b223225 = load i1, ptr @nvme_loop_create_ctrl.__already_done.11, align 1
  br i1 %.b223225, label %land.end119.if.end161_crit_edge, label %if.then126, !prof !102

land.end119.if.end161_crit_edge:                  ; preds = %land.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161

if.then126:                                       ; preds = %land.end119
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nvme_loop_create_ctrl.__already_done.11, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 643, i32 noundef 9, ptr noundef null) #9
  br label %if.end161

if.end161:                                        ; preds = %if.then126, %land.end119.if.end161_crit_edge, %if.end100.if.end161_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvme_loop_ctrl_mutex, i32 noundef 0) #9
  %86 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nvme_loop_ctrl_list, i32 0, i32 1), align 4
  %call.i.i231 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %86, ptr noundef nonnull @nvme_loop_ctrl_list) #9
  br i1 %call.i.i231, label %if.end.i.i232, label %if.end161.list_add_tail.exit_crit_edge

if.end161.list_add_tail.exit_crit_edge:           ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i232:                                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @nvme_loop_ctrl_list, i32 0, i32 1), align 4
  %87 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @nvme_loop_ctrl_list, ptr %list, align 4
  %88 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %86, ptr %prev.i, align 8
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %list, ptr %86, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i232, %if.end161.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_loop_ctrl_mutex) #9
  tail call void @nvme_start_ctrl(ptr noundef %ctrl2) #9
  br label %cleanup

out_remove_admin_queue:                           ; preds = %nvme_loop_create_io_queues.exit.out_remove_admin_queue_crit_edge, %if.then95.out_remove_admin_queue_crit_edge
  %retval.0.i247 = phi i32 [ %ret.1.i, %nvme_loop_create_io_queues.exit.out_remove_admin_queue_crit_edge ], [ %call.i227, %if.then95.out_remove_admin_queue_crit_edge ]
  %90 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call7.i.i, align 8
  %flags.i233 = getelementptr inbounds %struct.nvme_loop_queue, ptr %91, i32 0, i32 3
  %call.i234 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i233) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %tobool.not.i235 = icmp eq i32 %call.i234, 0
  br i1 %tobool.not.i235, label %out_remove_admin_queue.out_free_queues_crit_edge, label %if.end.i236

out_remove_admin_queue.out_free_queues_crit_edge: ; preds = %out_remove_admin_queue
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_queues

if.end.i236:                                      ; preds = %out_remove_admin_queue
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call7.i.i, align 8
  %nvme_sq.i = getelementptr inbounds %struct.nvme_loop_queue, ptr %93, i32 0, i32 1
  tail call void @nvmet_sq_destroy(ptr noundef %nvme_sq.i) #9
  %admin_q.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 6
  %94 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %admin_q.i, align 8
  tail call void @blk_cleanup_queue(ptr noundef %95) #9
  %fabrics_q.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 8
  %96 = ptrtoint ptr %fabrics_q.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fabrics_q.i, align 8
  tail call void @blk_cleanup_queue(ptr noundef %97) #9
  %admin_tag_set.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 1
  tail call void @blk_mq_free_tag_set(ptr noundef %admin_tag_set.i) #9
  br label %out_free_queues

out_free_queues:                                  ; preds = %if.end.i236, %out_remove_admin_queue.out_free_queues_crit_edge, %if.end70.out_free_queues_crit_edge
  %ret.0 = phi i32 [ %call71, %if.end70.out_free_queues_crit_edge ], [ %retval.0.i247, %out_remove_admin_queue.out_free_queues_crit_edge ], [ %retval.0.i247, %if.end.i236 ]
  %98 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %99) #9
  br label %out_uninit_ctrl

out_uninit_ctrl:                                  ; preds = %out_free_queues, %if.end7.i.i.out_uninit_ctrl_crit_edge, %kcalloc.exit.thread
  %ret.1 = phi i32 [ %ret.0, %out_free_queues ], [ -12, %if.end7.i.i.out_uninit_ctrl_crit_edge ], [ -12, %kcalloc.exit.thread ]
  tail call void @nvme_uninit_ctrl(ptr noundef %ctrl2) #9
  %device.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %call7.i.i, i32 0, i32 5, i32 17
  %100 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %device.i, align 8
  tail call void @put_device(ptr noundef %101) #9
  br label %out

out:                                              ; preds = %out_uninit_ctrl, %if.then17
  %ret.2 = phi i32 [ %call15, %if.then17 ], [ %ret.1, %out_uninit_ctrl ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp168 = icmp sgt i32 %ret.2, 0
  %spec.store.select = select i1 %cmp168, i32 -5, i32 %ret.2
  %102 = inttoptr i32 %spec.store.select to ptr
  br label %cleanup

cleanup:                                          ; preds = %out, %list_add_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %102, %out ], [ %ctrl2, %list_add_tail.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_loop_reset_ctrl_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2280
  %ctrl1 = getelementptr i8, ptr %work, i32 -1384
  tail call void @nvme_stop_ctrl(ptr noundef %ctrl1) #9
  tail call fastcc void @nvme_loop_shutdown_ctrl(ptr noundef %add.ptr)
  %call = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl1, i32 noundef 3) #9
  br i1 %call, label %if.end43, label %if.then

if.then:                                          ; preds = %entry
  %state = getelementptr i8, ptr %work, i32 -1380
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %switch = icmp eq i32 %2, 4
  br i1 %switch, label %if.then.cleanup_crit_edge, label %land.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.end:                                         ; preds = %if.then
  %.b138 = load i1, ptr @nvme_loop_reset_ctrl_work.__already_done, align 1
  br i1 %.b138, label %land.end.cleanup_crit_edge, label %if.then12, !prof !102

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nvme_loop_reset_ctrl_work.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 473, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end43:                                         ; preds = %entry
  %call44 = tail call fastcc i32 @nvme_loop_configure_admin_queue(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.do.end112_crit_edge

if.end43.do.end112_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end112

if.end47:                                         ; preds = %if.end43
  %call48 = tail call fastcc i32 @nvme_loop_init_io_queues(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end47.out_destroy_admin_crit_edge

if.end47.out_destroy_admin_crit_edge:             ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_destroy_admin

if.end51:                                         ; preds = %if.end47
  %queue_count.i = getelementptr i8, ptr %work, i32 180
  %3 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp10.i = icmp ugt i32 %4, 1
  br i1 %cmp10.i, label %if.end51.for.body.i_crit_edge, label %if.end51.if.end55_crit_edge

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end51.for.body.i_crit_edge:                    ; preds = %if.end51
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end51.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 1, %if.end51.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.011.i to i16
  %call.i = tail call i32 @nvmf_connect_io_queue(ptr noundef %ctrl1, i16 noundef zeroext %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %out_destroy_io

if.end.i:                                         ; preds = %for.body.i
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  %flags.i = getelementptr %struct.nvme_loop_queue, ptr %6, i32 %i.011.i, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags.i) #9
  %inc.i = add nuw i32 %i.011.i, 1
  %7 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %queue_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %8
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end55_crit_edge

if.end.i.if.end55_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end55:                                         ; preds = %if.end.i.if.end55_crit_edge, %if.end51.if.end55_crit_edge
  %tag_set = getelementptr i8, ptr %work, i32 -2084
  %9 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %queue_count.i, align 4
  %sub = add i32 %10, -1
  tail call void @blk_mq_update_nr_hw_queues(ptr noundef %tag_set, i32 noundef %sub) #9
  %call58 = tail call zeroext i1 @nvme_change_ctrl_state(ptr noundef %ctrl1, i32 noundef 1) #9
  br i1 %call58, label %if.end55.if.end108_crit_edge, label %land.end66

if.end55.if.end108_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

land.end66:                                       ; preds = %if.end55
  %.b137139 = load i1, ptr @nvme_loop_reset_ctrl_work.__already_done.12, align 1
  br i1 %.b137139, label %land.end66.if.end108_crit_edge, label %if.then73, !prof !102

land.end66.if.end108_crit_edge:                   ; preds = %land.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end108

if.then73:                                        ; preds = %land.end66
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nvme_loop_reset_ctrl_work.__already_done.12, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 493, i32 noundef 9, ptr noundef null) #9
  br label %if.end108

if.end108:                                        ; preds = %if.then73, %land.end66.if.end108_crit_edge, %if.end55.if.end108_crit_edge
  tail call void @nvme_start_ctrl(ptr noundef %ctrl1) #9
  br label %cleanup

out_destroy_io:                                   ; preds = %for.body.i
  %11 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %queue_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp12.i = icmp ugt i32 %12, 1
  br i1 %cmp12.i, label %out_destroy_io.for.body.i144_crit_edge, label %out_destroy_io.nvme_loop_destroy_io_queues.exit_crit_edge

out_destroy_io.nvme_loop_destroy_io_queues.exit_crit_edge: ; preds = %out_destroy_io
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvme_loop_destroy_io_queues.exit

out_destroy_io.for.body.i144_crit_edge:           ; preds = %out_destroy_io
  br label %for.body.i144

for.body.i144:                                    ; preds = %for.body.i144.for.body.i144_crit_edge, %out_destroy_io.for.body.i144_crit_edge
  %i.013.i = phi i32 [ %inc.i142, %for.body.i144.for.body.i144_crit_edge ], [ 1, %out_destroy_io.for.body.i144_crit_edge ]
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %flags.i141 = getelementptr %struct.nvme_loop_queue, ptr %14, i32 %i.013.i, i32 3
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i141) #9
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 8
  %nvme_sq.i = getelementptr %struct.nvme_loop_queue, ptr %16, i32 %i.013.i, i32 1
  tail call void @nvmet_sq_destroy(ptr noundef %nvme_sq.i) #9
  %inc.i142 = add nuw i32 %i.013.i, 1
  %17 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %queue_count.i, align 4
  %cmp.i143 = icmp ult i32 %inc.i142, %18
  br i1 %cmp.i143, label %for.body.i144.for.body.i144_crit_edge, label %for.body.i144.nvme_loop_destroy_io_queues.exit_crit_edge

for.body.i144.nvme_loop_destroy_io_queues.exit_crit_edge: ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvme_loop_destroy_io_queues.exit

for.body.i144.for.body.i144_crit_edge:            ; preds = %for.body.i144
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i144

nvme_loop_destroy_io_queues.exit:                 ; preds = %for.body.i144.nvme_loop_destroy_io_queues.exit_crit_edge, %out_destroy_io.nvme_loop_destroy_io_queues.exit_crit_edge
  %19 = ptrtoint ptr %queue_count.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %queue_count.i, align 4
  br label %out_destroy_admin

out_destroy_admin:                                ; preds = %nvme_loop_destroy_io_queues.exit, %if.end47.out_destroy_admin_crit_edge
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 8
  %flags.i145 = getelementptr inbounds %struct.nvme_loop_queue, ptr %21, i32 0, i32 3
  %call.i146 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i145) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool.not.i147 = icmp eq i32 %call.i146, 0
  br i1 %tobool.not.i147, label %out_destroy_admin.do.end112_crit_edge, label %if.end.i149

out_destroy_admin.do.end112_crit_edge:            ; preds = %out_destroy_admin
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end112

if.end.i149:                                      ; preds = %out_destroy_admin
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 8
  %nvme_sq.i148 = getelementptr inbounds %struct.nvme_loop_queue, ptr %23, i32 0, i32 1
  tail call void @nvmet_sq_destroy(ptr noundef %nvme_sq.i148) #9
  %admin_q.i = getelementptr i8, ptr %work, i32 -1232
  %24 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %admin_q.i, align 8
  tail call void @blk_cleanup_queue(ptr noundef %25) #9
  %fabrics_q.i = getelementptr i8, ptr %work, i32 -1224
  %26 = ptrtoint ptr %fabrics_q.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fabrics_q.i, align 8
  tail call void @blk_cleanup_queue(ptr noundef %27) #9
  %admin_tag_set.i = getelementptr i8, ptr %work, i32 -2276
  tail call void @blk_mq_free_tag_set(ptr noundef %admin_tag_set.i) #9
  br label %do.end112

do.end112:                                        ; preds = %if.end.i149, %out_destroy_admin.do.end112_crit_edge, %if.end43.do.end112_crit_edge
  %device = getelementptr i8, ptr %work, i32 -168
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.13) #15
  tail call void @nvme_uninit_ctrl(ptr noundef %ctrl1) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end112, %if.end108, %if.then12, %land.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_init_ctrl(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvme_change_ctrl_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_loop_configure_admin_queue(ptr noundef %ctrl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %admin_tag_set = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 1
  %0 = call ptr @memset(ptr %admin_tag_set, i32 0, i32 184)
  %ops = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @nvme_loop_admin_mq_ops, ptr %ops, align 4
  %queue_depth = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %queue_depth to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 30, ptr %queue_depth, align 4
  %reserved_tags = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 1, i32 5
  %3 = ptrtoint ptr %reserved_tags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %reserved_tags, align 4
  %ctrl4 = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5
  %numa_node = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5, i32 11
  %4 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numa_node, align 4
  %numa_node6 = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %numa_node6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %numa_node6, align 4
  %cmd_size = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 1, i32 6
  %7 = ptrtoint ptr %cmd_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 552, ptr %cmd_size, align 4
  %driver_data = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 1, i32 10
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ctrl, ptr %driver_data, align 4
  %nr_hw_queues = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %nr_hw_queues, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @admin_timeout to i32))
  %10 = load i32, ptr @admin_timeout, align 4
  %mul = mul i32 %10, 100
  %timeout = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mul, ptr %timeout, align 4
  %flags = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 1, i32 9
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %flags, align 4
  %13 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl, align 8
  %ctrl12 = getelementptr inbounds %struct.nvme_loop_queue, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %ctrl12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ctrl, ptr %ctrl12, align 4
  %16 = load ptr, ptr %ctrl, align 8
  %nvme_sq = getelementptr inbounds %struct.nvme_loop_queue, ptr %16, i32 0, i32 1
  %call = tail call i32 @nvmet_sq_init(ptr noundef %nvme_sq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %queue_count = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5, i32 30
  %17 = ptrtoint ptr %queue_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %queue_count, align 4
  %call17 = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %admin_tag_set) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end.out_free_sq_crit_edge

if.end.out_free_sq_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_sq

if.end20:                                         ; preds = %if.end
  %admin_tagset = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5, i32 13
  %18 = ptrtoint ptr %admin_tagset to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %admin_tag_set, ptr %admin_tagset, align 4
  %call24 = tail call ptr @blk_mq_init_queue(ptr noundef %admin_tag_set) #9
  %fabrics_q = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5, i32 8
  %19 = ptrtoint ptr %fabrics_q to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call24, ptr %fabrics_q, align 8
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %call24 to i32
  br label %out_free_tagset

if.end33:                                         ; preds = %if.end20
  %call35 = tail call ptr @blk_mq_init_queue(ptr noundef %admin_tag_set) #9
  %admin_q = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5, i32 6
  %21 = ptrtoint ptr %admin_q to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call35, ptr %admin_q, align 8
  %cmp.i122 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i122, label %if.then40, label %if.end44

if.then40:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %call35 to i32
  br label %out_cleanup_fabrics_q

if.end44:                                         ; preds = %if.end33
  %flags46 = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5, i32 92
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags46) #9
  %call48 = tail call i32 @nvmf_connect_admin_queue(ptr noundef %ctrl4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end44.out_cleanup_queue_crit_edge

if.end44.out_cleanup_queue_crit_edge:             ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_cleanup_queue

if.end51:                                         ; preds = %if.end44
  %23 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctrl, align 8
  %flags54 = getelementptr inbounds %struct.nvme_loop_queue, ptr %24, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags54) #9
  %call56 = tail call i32 @nvme_enable_ctrl(ptr noundef %ctrl4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end51.out_cleanup_queue_crit_edge

if.end51.out_cleanup_queue_crit_edge:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_cleanup_queue

if.end59:                                         ; preds = %if.end51
  %max_hw_sectors = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5, i32 32
  %25 = ptrtoint ptr %max_hw_sectors to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2040, ptr %max_hw_sectors, align 8
  tail call void @nvme_start_admin_queue(ptr noundef %ctrl4) #9
  %call63 = tail call i32 @nvme_init_ctrl_finish(ptr noundef %ctrl4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end59.cleanup_crit_edge, label %if.end59.out_cleanup_queue_crit_edge

if.end59.out_cleanup_queue_crit_edge:             ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_cleanup_queue

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_cleanup_queue:                                ; preds = %if.end59.out_cleanup_queue_crit_edge, %if.end51.out_cleanup_queue_crit_edge, %if.end44.out_cleanup_queue_crit_edge
  %error.0 = phi i32 [ %call48, %if.end44.out_cleanup_queue_crit_edge ], [ %call56, %if.end51.out_cleanup_queue_crit_edge ], [ %call63, %if.end59.out_cleanup_queue_crit_edge ]
  %26 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl, align 8
  %flags69 = getelementptr inbounds %struct.nvme_loop_queue, ptr %27, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags69) #9
  %28 = ptrtoint ptr %admin_q to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %admin_q, align 8
  tail call void @blk_cleanup_queue(ptr noundef %29) #9
  br label %out_cleanup_fabrics_q

out_cleanup_fabrics_q:                            ; preds = %out_cleanup_queue, %if.then40
  %error.1 = phi i32 [ %22, %if.then40 ], [ %error.0, %out_cleanup_queue ]
  %30 = ptrtoint ptr %fabrics_q to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fabrics_q, align 8
  tail call void @blk_cleanup_queue(ptr noundef %31) #9
  br label %out_free_tagset

out_free_tagset:                                  ; preds = %out_cleanup_fabrics_q, %if.then29
  %error.2 = phi i32 [ %20, %if.then29 ], [ %error.1, %out_cleanup_fabrics_q ]
  tail call void @blk_mq_free_tag_set(ptr noundef %admin_tag_set) #9
  br label %out_free_sq

out_free_sq:                                      ; preds = %out_free_tagset, %if.end.out_free_sq_crit_edge
  %error.3 = phi i32 [ %call17, %if.end.out_free_sq_crit_edge ], [ %error.2, %out_free_tagset ]
  %32 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl, align 8
  %nvme_sq77 = getelementptr inbounds %struct.nvme_loop_queue, ptr %33, i32 0, i32 1
  tail call void @nvmet_sq_destroy(ptr noundef %nvme_sq77) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free_sq, %if.end59.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.3, %out_free_sq ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_loop_init_iod(ptr nocapture noundef readonly %ctrl, ptr noundef %iod, i32 noundef %queue_idx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd = getelementptr inbounds %struct.nvme_loop_iod, ptr %iod, i32 0, i32 1
  %req = getelementptr inbounds %struct.nvme_loop_iod, ptr %iod, i32 0, i32 3
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cmd, ptr %req, align 8
  %cqe = getelementptr inbounds %struct.nvme_loop_iod, ptr %iod, i32 0, i32 2
  %cqe3 = getelementptr inbounds %struct.nvme_loop_iod, ptr %iod, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %cqe3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cqe, ptr %cqe3, align 4
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 8
  %arrayidx = getelementptr %struct.nvme_loop_queue, ptr %3, i32 %queue_idx
  %queue = getelementptr inbounds %struct.nvme_loop_iod, ptr %iod, i32 0, i32 4
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %queue, align 8
  %work = getelementptr inbounds %struct.nvme_loop_iod, ptr %iod, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %5 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.nvme_loop_iod, ptr %iod, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @nvme_loop_init_iod.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry7 = getelementptr inbounds %struct.nvme_loop_iod, ptr %iod, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.nvme_loop_iod, ptr %iod, i32 0, i32 5, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nvme_loop_iod, ptr %iod, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nvme_loop_execute_work, ptr %func, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_uninit_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_loop_shutdown_ctrl(ptr noundef %ctrl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5
  %queue_count = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5, i32 30
  %0 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @nvme_stop_queues(ptr noundef %ctrl1) #9
  %tag_set = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 3
  tail call void @blk_mq_tagset_busy_iter(ptr noundef %tag_set, ptr noundef nonnull @nvme_cancel_request, ptr noundef %ctrl1) #9
  tail call void @blk_mq_tagset_wait_completed_request(ptr noundef %tag_set) #9
  %2 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp12.i = icmp ugt i32 %3, 1
  br i1 %cmp12.i, label %if.then.for.body.i_crit_edge, label %if.then.nvme_loop_destroy_io_queues.exit_crit_edge

if.then.nvme_loop_destroy_io_queues.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvme_loop_destroy_io_queues.exit

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.then.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 8
  %flags.i = getelementptr %struct.nvme_loop_queue, ptr %5, i32 %i.013.i, i32 3
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #9
  %6 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl, align 8
  %nvme_sq.i = getelementptr %struct.nvme_loop_queue, ptr %7, i32 %i.013.i, i32 1
  tail call void @nvmet_sq_destroy(ptr noundef %nvme_sq.i) #9
  %inc.i = add nuw i32 %i.013.i, 1
  %8 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_count, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.nvme_loop_destroy_io_queues.exit_crit_edge

for.body.i.nvme_loop_destroy_io_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvme_loop_destroy_io_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

nvme_loop_destroy_io_queues.exit:                 ; preds = %for.body.i.nvme_loop_destroy_io_queues.exit_crit_edge, %if.then.nvme_loop_destroy_io_queues.exit_crit_edge
  %10 = ptrtoint ptr %queue_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %queue_count, align 4
  br label %if.end

if.end:                                           ; preds = %nvme_loop_destroy_io_queues.exit, %entry.if.end_crit_edge
  tail call void @nvme_stop_admin_queue(ptr noundef %ctrl1) #9
  %state = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp7 = icmp eq i32 %12, 1
  br i1 %cmp7, label %if.then8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @nvme_shutdown_ctrl(ptr noundef %ctrl1) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %admin_tag_set = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 1
  tail call void @blk_mq_tagset_busy_iter(ptr noundef %admin_tag_set, ptr noundef nonnull @nvme_cancel_request, ptr noundef %ctrl1) #9
  tail call void @blk_mq_tagset_wait_completed_request(ptr noundef %admin_tag_set) #9
  %13 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl, align 8
  %flags.i25 = getelementptr inbounds %struct.nvme_loop_queue, ptr %14, i32 0, i32 3
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %flags.i25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end10.nvme_loop_destroy_admin_queue.exit_crit_edge, label %if.end.i

if.end10.nvme_loop_destroy_admin_queue.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvme_loop_destroy_admin_queue.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl, align 8
  %nvme_sq.i26 = getelementptr inbounds %struct.nvme_loop_queue, ptr %16, i32 0, i32 1
  tail call void @nvmet_sq_destroy(ptr noundef %nvme_sq.i26) #9
  %admin_q.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5, i32 6
  %17 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %admin_q.i, align 8
  tail call void @blk_cleanup_queue(ptr noundef %18) #9
  %fabrics_q.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5, i32 8
  %19 = ptrtoint ptr %fabrics_q.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fabrics_q.i, align 8
  tail call void @blk_cleanup_queue(ptr noundef %20) #9
  tail call void @blk_mq_free_tag_set(ptr noundef %admin_tag_set) #9
  br label %nvme_loop_destroy_admin_queue.exit

nvme_loop_destroy_admin_queue.exit:               ; preds = %if.end.i, %if.end10.nvme_loop_destroy_admin_queue.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvme_loop_init_io_queues(ptr noundef %ctrl) unnamed_addr #3 align 64 {
entry:
  %nr_io_queues = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5
  %opts2 = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5, i32 93
  %0 = ptrtoint ptr %opts2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opts2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_io_queues) #9
  %nr_io_queues3 = getelementptr inbounds %struct.nvmf_ctrl_options, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %nr_io_queues3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_io_queues3, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %4 = load volatile i32, ptr @__num_online_cpus, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %3, i32 %4)
  %6 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %nr_io_queues, align 4
  %call5 = call i32 @nvme_set_queue_count(ptr noundef %ctrl1, ptr noundef nonnull %nr_io_queues) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_io_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  %device = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5, i32 17
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef %8) #15
  %11 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_io_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp8.not37 = icmp eq i32 %12, 0
  br i1 %cmp8.not37, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %queue_count = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5, i32 30
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 1, %for.body.lr.ph ], [ %inc17, %if.end15.for.body_crit_edge ]
  %13 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl, align 8
  %ctrl9 = getelementptr %struct.nvme_loop_queue, ptr %14, i32 %i.038, i32 2
  %15 = ptrtoint ptr %ctrl9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ctrl, ptr %ctrl9, align 4
  %16 = load ptr, ptr %ctrl, align 8
  %nvme_sq = getelementptr %struct.nvme_loop_queue, ptr %16, i32 %i.038, i32 1
  %call12 = call i32 @nvmet_sq_init(ptr noundef %nvme_sq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %out_destroy_queues

if.end15:                                         ; preds = %for.body
  %17 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %queue_count, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %queue_count, align 4
  %inc17 = add i32 %i.038, 1
  %19 = ptrtoint ptr %nr_io_queues to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_io_queues, align 4
  %cmp8.not = icmp ugt i32 %inc17, %20
  br i1 %cmp8.not, label %if.end15.cleanup_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out_destroy_queues:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @nvme_loop_destroy_io_queues(ptr noundef %ctrl)
  br label %cleanup

cleanup:                                          ; preds = %out_destroy_queues, %if.end15.cleanup_crit_edge, %do.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %out_destroy_queues ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ %call5, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_io_queues) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_update_nr_hw_queues(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvme_loop_destroy_io_queues(ptr nocapture noundef %ctrl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_count = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %ctrl, i32 0, i32 5, i32 30
  %0 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp12 = icmp ugt i32 %1, 1
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 8
  %flags = getelementptr %struct.nvme_loop_queue, ptr %3, i32 %i.013, i32 3
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #9
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 8
  %nvme_sq = getelementptr %struct.nvme_loop_queue, ptr %5, i32 %i.013, i32 1
  tail call void @nvmet_sq_destroy(ptr noundef %nvme_sq) #9
  %inc = add nuw i32 %i.013, 1
  %6 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue_count, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %8 = ptrtoint ptr %queue_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %queue_count, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tagset_busy_iter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvme_cancel_request(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_tagset_wait_completed_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_stop_admin_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_shutdown_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_set_queue_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_sq_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_connect_io_queue(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_sq_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_reg_read32(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_reg_write32(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_reg_read64(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_loop_free_ctrl(ptr noundef %nctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %nctrl, i32 -896
  %list = getelementptr i8, ptr %nctrl, i32 -708
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %1, %list
  br i1 %cmp.i.not, label %entry.free_ctrl_crit_edge, label %if.end

entry.free_ctrl_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_ctrl

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvme_loop_ctrl_mutex, i32 noundef 0) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr i8, ptr %nctrl, i32 -704
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr i8, ptr %nctrl, i32 -704
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_loop_ctrl_mutex) #9
  %tagset = getelementptr inbounds %struct.nvme_ctrl, ptr %nctrl, i32 0, i32 12
  %10 = ptrtoint ptr %tagset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tagset, align 8
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %list_del.exit.if.end6_crit_edge, label %if.then4

list_del.exit.if.end6_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %connect_q = getelementptr i8, ptr %nctrl, i32 156
  %12 = ptrtoint ptr %connect_q to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %connect_q, align 4
  tail call void @blk_cleanup_queue(ptr noundef %13) #9
  %tag_set = getelementptr i8, ptr %nctrl, i32 -700
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %list_del.exit.if.end6_crit_edge
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  tail call void @kfree(ptr noundef %15) #9
  %opts = getelementptr inbounds %struct.nvme_ctrl, ptr %nctrl, i32 0, i32 93
  %16 = ptrtoint ptr %opts to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %opts, align 8
  tail call void @nvmf_free_options(ptr noundef %17) #9
  br label %free_ctrl

free_ctrl:                                        ; preds = %if.end6, %entry.free_ctrl_crit_edge
  tail call void @kfree(ptr noundef %add.ptr.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_loop_submit_async_event(ptr noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %arg, i32 -896
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %cmd = getelementptr i8, ptr %arg, i32 -480
  %2 = call ptr @memset(ptr %cmd, i32 0, i32 64)
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 12, ptr %cmd, align 8
  %command_id = getelementptr i8, ptr %arg, i32 -478
  %4 = ptrtoint ptr %command_id to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 31, ptr %command_id, align 2
  %flags = getelementptr i8, ptr %arg, i32 -479
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 64, ptr %flags, align 1
  %req = getelementptr i8, ptr %arg, i32 -400
  %nvme_sq = getelementptr inbounds %struct.nvme_loop_queue, ptr %1, i32 0, i32 1
  %call5 = tail call zeroext i1 @nvmet_req_init(ptr noundef %req, ptr noundef %1, ptr noundef %nvme_sq, ptr noundef nonnull @nvme_loop_ops) #9
  br i1 %call5, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %device = getelementptr i8, ptr %arg, i32 1216
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %work = getelementptr i8, ptr %arg, i32 -60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_loop_delete_ctrl_host(ptr noundef %ctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ctrl, i32 -896
  tail call fastcc void @nvme_loop_shutdown_ctrl(ptr noundef %add.ptr.i)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_get_address(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmf_free_options(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmet_req_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_init_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_connect_admin_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_enable_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_start_admin_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_init_ctrl_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @nvme_loop_queue_rq(ptr nocapture noundef readonly %hctx, ptr nocapture noundef readonly %bd) #3 align 64 {
entry:
  %last_sg.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data, align 128
  %6 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bd, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %7, i32 1
  %flags = getelementptr inbounds %struct.nvme_loop_queue, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool = icmp ne i32 %and1.i, 0
  %ctrl = getelementptr inbounds %struct.nvme_loop_queue, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl, align 4
  %ctrl3 = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %11, i32 0, i32 5
  %state.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %11, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i = icmp eq i32 %13, 1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !102

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %ops.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %11, i32 0, i32 5, i32 5
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.nvme_ctrl_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp4.i = icmp eq i32 %13, 4
  %or.cond.i = select i1 %tobool2.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %nvme_check_ready.exit, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__nvme_check_ready(ptr noundef %ctrl3, ptr noundef %7, i1 noundef zeroext %tobool) #9
  br i1 %call.i, label %if.end7.i.if.end_crit_edge, label %if.end7.i.if.then_crit_edge

if.end7.i.if.then_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end7.i.if.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

nvme_check_ready.exit:                            ; preds = %if.end.i
  br i1 %tobool, label %nvme_check_ready.exit.if.end_crit_edge, label %nvme_check_ready.exit.if.then_crit_edge

nvme_check_ready.exit.if.then_crit_edge:          ; preds = %nvme_check_ready.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

nvme_check_ready.exit.if.end_crit_edge:           ; preds = %nvme_check_ready.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %nvme_check_ready.exit.if.then_crit_edge, %if.end7.i.if.then_crit_edge
  %18 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl, align 4
  %ctrl7 = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %19, i32 0, i32 5
  %call8 = tail call zeroext i8 @nvme_fail_nonready_command(ptr noundef %ctrl7, ptr noundef %7) #9
  br label %cleanup

if.end:                                           ; preds = %nvme_check_ready.exit.if.end_crit_edge, %if.end7.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call9 = tail call zeroext i8 @nvme_setup_cmd(ptr noundef %3, ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9)
  %tobool10.not = icmp eq i8 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  tail call void @blk_mq_start_request(ptr noundef %7) #9
  %flags13 = getelementptr inbounds %struct.nvme_loop_iod, ptr %add.ptr.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %flags13 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flags13, align 1
  %22 = or i8 %21, 64
  store i8 %22, ptr %flags13, align 1
  %23 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctrl, align 4
  %port = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port, align 8
  %req16 = getelementptr %struct.request, ptr %7, i32 1, i32 23
  %port17 = getelementptr %struct.request, ptr %7, i32 3, i32 8
  %27 = ptrtoint ptr %port17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %port17, align 8
  %nvme_sq = getelementptr inbounds %struct.nvme_loop_queue, ptr %5, i32 0, i32 1
  %call19 = tail call zeroext i1 @nvmet_req_init(ptr noundef %req16, ptr noundef %5, ptr noundef %nvme_sq, ptr noundef nonnull @nvme_loop_ops) #9
  br i1 %call19, label %if.end21, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %rq_flags.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 4
  %28 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rq_flags.i, align 8
  %and.i79 = and i32 %29, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool.not.i = icmp eq i32 %and.i79, 0
  br i1 %tobool.not.i, label %blk_rq_nr_phys_segments.exit, label %if.then24

blk_rq_nr_phys_segments.exit:                     ; preds = %if.end21
  %nr_phys_segments.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 19
  %30 = ptrtoint ptr %nr_phys_segments.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %nr_phys_segments.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool23.not = icmp eq i16 %31, 0
  br i1 %tobool23.not, label %blk_rq_nr_phys_segments.exit.if.end43_crit_edge, label %if.end.i86

blk_rq_nr_phys_segments.exit.if.end43_crit_edge:  ; preds = %blk_rq_nr_phys_segments.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %first_sgl = getelementptr %struct.request, ptr %7, i32 3, i32 27
  %sg_table = getelementptr %struct.request, ptr %7, i32 3, i32 23
  %32 = ptrtoint ptr %sg_table to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %first_sgl, ptr %sg_table, align 8
  br label %blk_rq_nr_phys_segments.exit88

if.end.i86:                                       ; preds = %blk_rq_nr_phys_segments.exit
  call void @__sanitizer_cov_trace_pc() #11
  %first_sgl97 = getelementptr %struct.request, ptr %7, i32 3, i32 27
  %sg_table98 = getelementptr %struct.request, ptr %7, i32 3, i32 23
  %33 = ptrtoint ptr %sg_table98 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %first_sgl97, ptr %sg_table98, align 8
  %34 = ptrtoint ptr %nr_phys_segments.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %nr_phys_segments.i, align 4
  %phi.cast = zext i16 %35 to i32
  br label %blk_rq_nr_phys_segments.exit88

blk_rq_nr_phys_segments.exit88:                   ; preds = %if.end.i86, %if.then24
  %sg_table101 = phi ptr [ %sg_table98, %if.end.i86 ], [ %sg_table, %if.then24 ]
  %first_sgl99 = phi ptr [ %first_sgl97, %if.end.i86 ], [ %first_sgl, %if.then24 ]
  %retval.0.i87 = phi i32 [ %phi.cast, %if.end.i86 ], [ 1, %if.then24 ]
  %call30 = tail call i32 @sg_alloc_table_chained(ptr noundef %sg_table101, i32 noundef %retval.0.i87, ptr noundef %first_sgl99, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.then32

if.then32:                                        ; preds = %blk_rq_nr_phys_segments.exit88
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @nvme_cleanup_cmd(ptr noundef %7) #9
  br label %cleanup

if.end33:                                         ; preds = %blk_rq_nr_phys_segments.exit88
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %sg_table101 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sg_table101, align 8
  %sg = getelementptr %struct.request, ptr %7, i32 1, i32 28, i32 0, i32 1
  %38 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %sg, align 4
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_sg.i) #9
  %41 = ptrtoint ptr %last_sg.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %last_sg.i, align 4
  %call.i89 = call i32 @__blk_rq_map_sg(ptr noundef %40, ptr noundef %7, ptr noundef %37, ptr noundef nonnull %last_sg.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_sg.i) #9
  %sg_cnt = getelementptr %struct.request, ptr %7, i32 3, i32 4
  %42 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.i89, ptr %sg_cnt, align 8
  %43 = ptrtoint ptr %rq_flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rq_flags.i, align 8
  %and.i91 = and i32 %44, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %tobool.not.i92 = icmp eq i32 %and.i91, 0
  %bv_len.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 29, i32 0, i32 1
  %__data_len.i.i = getelementptr inbounds %struct.request, ptr %7, i32 0, i32 8
  %retval.0.in.i = select i1 %tobool.not.i92, ptr %__data_len.i.i, ptr %bv_len.i
  %45 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %retval.0.i93 = load i32, ptr %retval.0.in.i, align 4
  %transfer_len = getelementptr %struct.request, ptr %7, i32 3, i32 6
  %46 = ptrtoint ptr %transfer_len to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %retval.0.i93, ptr %transfer_len, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.end33, %blk_rq_nr_phys_segments.exit.if.end43_crit_edge
  %work = getelementptr inbounds %struct.nvme_loop_iod, ptr %add.ptr.i, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %47 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %47, ptr noundef %work) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then32, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i8 [ 9, %if.then32 ], [ 0, %if.end43 ], [ %call8, %if.then ], [ %call9, %if.end.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_loop_complete_rq(ptr noundef %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_table = getelementptr %struct.request, ptr %req, i32 3, i32 23
  tail call void @sg_free_table_chained(ptr noundef %sg_table, i32 noundef 2) #9
  tail call void @nvme_complete_rq(ptr noundef %req) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_loop_init_admin_hctx(ptr nocapture noundef writeonly %hctx, ptr nocapture noundef readonly %data, i32 noundef %hctx_idx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hctx_idx)
  %cmp.not = icmp eq i32 %hctx_idx, 0
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !102

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/nvme/target/loop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 244, 0\0A.popsection", ""() #9, !srcloc !104
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %driver_data, align 128
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_loop_init_request(ptr noundef readonly %set, ptr noundef %req, i32 noundef %hctx_idx, i32 noundef %numa_node) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %add.ptr.i = getelementptr %struct.request, ptr %req, i32 1
  %ctrl1 = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %1, i32 0, i32 5
  %ctrl3 = getelementptr %struct.request, ptr %req, i32 1, i32 6
  %2 = ptrtoint ptr %ctrl3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ctrl1, ptr %ctrl3, align 8
  %cmd = getelementptr %struct.request, ptr %req, i32 1, i32 8
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cmd, ptr %add.ptr.i, align 8
  %tag_set = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %1, i32 0, i32 3
  %cmp = icmp eq ptr %tag_set, %set
  %add = add i32 %hctx_idx, 1
  %spec.select = select i1 %cmp, i32 %add, i32 0
  %req.i = getelementptr %struct.request, ptr %req, i32 1, i32 23
  %4 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmd, ptr %req.i, align 8
  %cqe.i = getelementptr %struct.request, ptr %req, i32 1, i32 17
  %cqe3.i = getelementptr %struct.request, ptr %req, i32 1, i32 25
  %5 = ptrtoint ptr %cqe3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cqe.i, ptr %cqe3.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %arrayidx.i = getelementptr %struct.nvme_loop_queue, ptr %7, i32 %spec.select
  %queue.i = getelementptr %struct.request, ptr %req, i32 3, i32 13
  %8 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.i, ptr %queue.i, align 8
  %work.i = getelementptr inbounds %struct.nvme_loop_iod, ptr %add.ptr.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #9
  %9 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.nvme_loop_iod, ptr %add.ptr.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @nvme_loop_init_iod.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry7.i = getelementptr %struct.request, ptr %req, i32 3, i32 14
  %10 = ptrtoint ptr %entry7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry7.i, ptr %entry7.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nvme_loop_iod, ptr %add.ptr.i, i32 0, i32 5, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry7.i, ptr %prev.i.i, align 4
  %func.i = getelementptr %struct.request, ptr %req, i32 3, i32 15
  %12 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @nvme_loop_execute_work, ptr %func.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvme_fail_nonready_command(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvme_setup_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_chained(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_cleanup_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__nvme_check_ready(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table_chained(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_complete_rq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_loop_init_hctx(ptr noundef %hctx, ptr nocapture noundef readonly %data, i32 noundef %hctx_idx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_count = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %data, i32 0, i32 5, i32 30
  %0 = ptrtoint ptr %queue_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %hctx_idx)
  %cmp.not = icmp ugt i32 %1, %hctx_idx
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !102

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/nvme/target/loop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 224, 0\0A.popsection", ""() #9, !srcloc !105
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %add = add nuw i32 %hctx_idx, 1
  %arrayidx = getelementptr %struct.nvme_loop_queue, ptr %3, i32 %add
  tail call void @blk_mq_hctx_set_fq_lock_class(ptr noundef %hctx, ptr noundef nonnull @loop_hctx_fq_lock_key) #9
  %driver_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 9
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %driver_data, align 128
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_hctx_set_fq_lock_class(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_loop_execute_work(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %req = getelementptr i8, ptr %work, i32 -340
  %execute = getelementptr i8, ptr %work, i32 -32
  %0 = ptrtoint ptr %execute to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %execute, align 4
  tail call void %1(ptr noundef %req) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_loop_queue_response(ptr nocapture noundef readonly %req) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sq, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %cqe1 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %cqe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cqe1, align 4
  %ctrl.i = getelementptr i8, ptr %1, i32 136
  %4 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 148
  %conv = trunc i32 %sub.ptr.div.i to i16
  %command_id = getelementptr inbounds %struct.nvme_completion, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %command_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %command_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not.i = icmp eq i16 %conv, 0
  %10 = and i16 %9, 4095
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %10)
  %cmp.i = icmp ugt i16 %10, 30
  %11 = and i1 %cmp.i, %tobool.not.i
  br i1 %11, label %if.then, label %if.else, !prof !103

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl.i, align 4
  %ctrl4 = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %13, i32 0, i32 5
  %status = getelementptr inbounds %struct.nvme_completion, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %status, align 2
  tail call void @nvme_complete_async_event(ptr noundef %ctrl4, i16 noundef zeroext %15, ptr noundef %3) #9
  br label %cleanup21

if.else:                                          ; preds = %entry
  %16 = icmp eq ptr %7, %add.ptr
  br i1 %16, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %tags.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %5, i32 0, i32 1, i32 11
  %17 = ptrtoint ptr %tags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tags.i, align 4
  br label %nvme_loop_tagset.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %tags2.i = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %5, i32 0, i32 3, i32 11
  %19 = ptrtoint ptr %tags2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tags2.i, align 4
  %sub.i = add nsw i32 %sub.ptr.div.i, -1
  %arrayidx3.i = getelementptr ptr, ptr %20, i32 %sub.i
  br label %nvme_loop_tagset.exit

nvme_loop_tagset.exit:                            ; preds = %if.end.i, %if.then.i
  %retval.0.in.i = phi ptr [ %18, %if.then.i ], [ %arrayidx3.i, %if.end.i ]
  %21 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %retval.0.i = load ptr, ptr %retval.0.in.i, align 4
  %conv5.i = zext i16 %10 to i32
  %22 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %retval.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv5.i)
  %cmp.i.i = icmp ugt i32 %23, %conv5.i
  br i1 %cmp.i.i, label %blk_mq_tag_to_rq.exit.i, label %nvme_loop_tagset.exit.do.end.i_crit_edge

nvme_loop_tagset.exit.do.end.i_crit_edge:         ; preds = %nvme_loop_tagset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

blk_mq_tag_to_rq.exit.i:                          ; preds = %nvme_loop_tagset.exit
  %rqs.i.i = getelementptr inbounds %struct.blk_mq_tags, ptr %retval.0.i, i32 0, i32 5
  %24 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %25, i32 %conv5.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  tail call void asm sideeffect "pld\09${0:a}", "r"(ptr %27) #9, !srcloc !106
  %28 = ptrtoint ptr %rqs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rqs.i.i, align 4
  %arrayidx2.i.i = getelementptr ptr, ptr %29, i32 %conv5.i
  %30 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool.not.i39 = icmp eq ptr %31, null
  br i1 %tobool.not.i39, label %blk_mq_tag_to_rq.exit.i.do.end.i_crit_edge, label %if.end.i40, !prof !103

blk_mq_tag_to_rq.exit.i.do.end.i_crit_edge:       ; preds = %blk_mq_tag_to_rq.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %blk_mq_tag_to_rq.exit.i.do.end.i_crit_edge, %nvme_loop_tagset.exit.do.end.i_crit_edge
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv5.i) #15
  br label %do.end

if.end.i40:                                       ; preds = %blk_mq_tag_to_rq.exit.i
  %32 = lshr i16 %9, 12
  %genctr12.i = getelementptr %struct.request, ptr %31, i32 1, i32 4
  %33 = ptrtoint ptr %genctr12.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %genctr12.i, align 8
  %35 = and i8 %34, 15
  %36 = zext i8 %35 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %32, i16 %36)
  %cmp.not.i = icmp eq i16 %32, %36
  br i1 %cmp.not.i, label %if.end, label %do.end26.i, !prof !102

do.end26.i:                                       ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #11
  %conv1.i = zext i16 %32 to i32
  %ctrl.i41 = getelementptr %struct.request, ptr %31, i32 1, i32 6
  %37 = ptrtoint ptr %ctrl.i41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ctrl.i41, align 8
  %device.i = getelementptr inbounds %struct.nvme_ctrl, ptr %38, i32 0, i32 17
  %39 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device.i, align 8
  %and33.i = zext i8 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.29, i32 noundef %conv5.i, i32 noundef %conv1.i, i32 noundef %and33.i) #15
  br label %do.end

do.end:                                           ; preds = %do.end26.i, %do.end.i
  %41 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctrl.i, align 4
  %device = getelementptr inbounds %struct.nvme_loop_ctrl, ptr %42, i32 0, i32 5, i32 17
  %43 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %device, align 8
  %45 = ptrtoint ptr %command_id to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %command_id, align 4
  %conv13 = zext i16 %46 to i32
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %42, align 8
  %sub.ptr.rhs.cast.i45 = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i46 = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i45
  %sub.ptr.div.i47 = sdiv exact i32 %sub.ptr.sub.i46, 148
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.23, i32 noundef %conv13, i32 noundef %sub.ptr.div.i47) #15
  br label %cleanup21

if.end:                                           ; preds = %if.end.i40
  %status15 = getelementptr inbounds %struct.nvme_completion, ptr %3, i32 0, i32 4
  %49 = ptrtoint ptr %status15 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %status15, align 2
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %51)
  %.unpack = load i64, ptr %3, align 8
  %ctrl1.i = getelementptr %struct.request, ptr %31, i32 1, i32 6
  %52 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ctrl1.i, align 8
  %quirks.i = getelementptr inbounds %struct.nvme_ctrl, ptr %53, i32 0, i32 61
  %54 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %55, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i48 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i48, label %if.then.i49, label %if.end.if.end.i50_crit_edge

if.end.if.end.i50_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i50

if.then.i49:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %genctr12.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %genctr12.i, align 8
  %inc.i = add i8 %57, 1
  store i8 %inc.i, ptr %genctr12.i, align 8
  br label %if.end.i50

if.end.i50:                                       ; preds = %if.then.i49, %if.end.if.end.i50_crit_edge
  %58 = tail call i16 @llvm.bswap.i16(i16 %50) #9
  %59 = lshr i16 %58, 1
  %status3.i = getelementptr %struct.request, ptr %31, i32 1, i32 5
  %60 = ptrtoint ptr %status3.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %status3.i, align 4
  %result4.i = getelementptr %struct.request, ptr %31, i32 1, i32 2
  %61 = ptrtoint ptr %result4.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %.unpack, ptr %result4.i, align 8
  tail call void @nvme_should_fail(ptr noundef nonnull %31) #9
  %62 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %31, align 8
  %queue_flags.i.i = getelementptr inbounds %struct.request_queue, ptr %63, i32 0, i32 11
  %64 = ptrtoint ptr %queue_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %queue_flags.i.i, align 4
  %66 = and i32 %65, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i.i, label %if.end.i50.nvme_try_complete_req.exit_crit_edge, label %blk_should_fake_timeout.exit.i

if.end.i50.nvme_try_complete_req.exit_crit_edge:  ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvme_try_complete_req.exit

blk_should_fake_timeout.exit.i:                   ; preds = %if.end.i50
  %call1.i.i = tail call zeroext i1 @__blk_should_fake_timeout(ptr noundef %63) #9
  br i1 %call1.i.i, label %blk_should_fake_timeout.exit.i.cleanup21_crit_edge, label %blk_should_fake_timeout.exit.i.nvme_try_complete_req.exit_crit_edge, !prof !103

blk_should_fake_timeout.exit.i.nvme_try_complete_req.exit_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nvme_try_complete_req.exit

blk_should_fake_timeout.exit.i.cleanup21_crit_edge: ; preds = %blk_should_fake_timeout.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

nvme_try_complete_req.exit:                       ; preds = %blk_should_fake_timeout.exit.i.nvme_try_complete_req.exit_crit_edge, %if.end.i50.nvme_try_complete_req.exit_crit_edge
  %call10.i51 = tail call zeroext i1 @blk_mq_complete_request_remote(ptr noundef nonnull %31) #9
  br i1 %call10.i51, label %nvme_try_complete_req.exit.cleanup21_crit_edge, label %if.then18

nvme_try_complete_req.exit.cleanup21_crit_edge:   ; preds = %nvme_try_complete_req.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

if.then18:                                        ; preds = %nvme_try_complete_req.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sg_table.i = getelementptr %struct.request, ptr %31, i32 3, i32 23
  tail call void @sg_free_table_chained(ptr noundef %sg_table.i, i32 noundef 2) #9
  tail call void @nvme_complete_rq(ptr noundef nonnull %31) #9
  br label %cleanup21

cleanup21:                                        ; preds = %if.then18, %nvme_try_complete_req.exit.cleanup21_crit_edge, %blk_should_fake_timeout.exit.i.cleanup21_crit_edge, %do.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvme_loop_add_port(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvme_loop_ports_mutex, i32 noundef 0) #9
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @nvme_loop_ports, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %port, ptr noundef %0, ptr noundef nonnull @nvme_loop_ports) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %port, ptr getelementptr inbounds (%struct.list_head, ptr @nvme_loop_ports, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @nvme_loop_ports, ptr %port, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %port, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_loop_ports_mutex) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_loop_remove_port(ptr noundef %port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvme_loop_ports_mutex, i32 noundef 0) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %port) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %port, ptr %port, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %port, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %port, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_loop_ports_mutex) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvme_delete_wq to i32))
  %8 = load ptr, ptr @nvme_delete_wq, align 4
  tail call void @flush_workqueue(ptr noundef %8) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvme_loop_delete_ctrl(ptr nocapture noundef readonly %nctrl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @nvme_loop_ctrl_mutex, i32 noundef 0) #9
  %.pn14 = load ptr, ptr @nvme_loop_ctrl_list, align 4
  %cmp.not15 = icmp eq ptr %.pn14, @nvme_loop_ctrl_list
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cntlid2 = getelementptr inbounds %struct.nvmet_ctrl, ptr %nctrl, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn16 = phi ptr [ %.pn14, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %cntlid = getelementptr i8, ptr %.pn16, i32 2260
  %0 = ptrtoint ptr %cntlid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cntlid, align 8
  %2 = ptrtoint ptr %cntlid2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cntlid2, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp4 = icmp eq i16 %1, %3
  br i1 %cmp4, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %ctrl1 = getelementptr i8, ptr %.pn16, i32 708
  %call = tail call i32 @nvme_delete_ctrl(ptr noundef %ctrl1) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %4 = ptrtoint ptr %.pn16 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn16, align 4
  %cmp.not = icmp eq ptr %.pn, @nvme_loop_ctrl_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nvme_loop_ctrl_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_complete_async_event(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvme_should_fail(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_mq_complete_request_remote(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_should_fake_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_register_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmf_register_transport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !19, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !51, !52, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_nvme_loop__369_735_nvme_loop_init_module6, !1, !"__initcall__kmod_nvme_loop__369_735_nvme_loop_init_module6", i1 false, i1 false}
!1 = !{!"../drivers/nvme/target/loop.c", i32 735, i32 1}
!2 = !{ptr @__exitcall_nvme_loop_cleanup_module, !3, !"__exitcall_nvme_loop_cleanup_module", i1 false, i1 false}
!3 = !{!"../drivers/nvme/target/loop.c", i32 736, i32 1}
!4 = !{ptr @__UNIQUE_ID_file370, !5, !"__UNIQUE_ID_file370", i1 false, i1 false}
!5 = !{!"../drivers/nvme/target/loop.c", i32 738, i32 1}
!6 = !{ptr @__UNIQUE_ID_license371, !5, !"__UNIQUE_ID_license371", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias372, !8, !"__UNIQUE_ID_alias372", i1 false, i1 false}
!8 = !{!"../drivers/nvme/target/loop.c", i32 739, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/nvme/target/loop.c", i32 699, i32 11}
!11 = !{ptr @nvme_loop_transport, !12, !"nvme_loop_transport", i1 false, i1 false}
!12 = !{!"../drivers/nvme/target/loop.c", i32 698, i32 34}
!13 = !{ptr @nvme_loop_create_ctrl.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/nvme/target/loop.c", i32 596, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../drivers/nvme/target/loop.c", i32 606, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/nvme/target/loop.c", i32 625, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nvme_loop_create_ctrl._entry, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @nvme_loop_create_ctrl._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/nvme/target/loop.c", i32 639, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nvme_loop_create_ctrl._entry.7, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @nvme_loop_create_ctrl._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../drivers/nvme/target/loop.c", i32 643, i32 3}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/nvme/target/loop.c", i32 473, i32 4}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../drivers/nvme/target/loop.c", i32 493, i32 3}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/nvme/target/loop.c", i32 504, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @nvme_loop_reset_ctrl_work._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @nvme_loop_reset_ctrl_work._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/nvme/target/loop.c", i32 317, i32 2}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nvme_loop_init_io_queues._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @nvme_loop_init_io_queues._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @nvme_loop_ctrl_ops, !48, !"nvme_loop_ctrl_ops", i1 false, i1 false}
!48 = !{!"../drivers/nvme/target/loop.c", i32 508, i32 35}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/nvme/target/loop.c", i32 186, i32 3}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @nvme_loop_submit_async_event._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @nvme_loop_submit_async_event._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/nvme/target/loop.c", i32 59, i32 8}
!57 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @nvme_loop_ports_mutex, !56, !"nvme_loop_ports_mutex", i1 false, i1 false}
!59 = !{ptr @nvme_loop_ports, !60, !"nvme_loop_ports", i1 false, i1 false}
!60 = !{!"../drivers/nvme/target/loop.c", i32 58, i32 8}
!61 = !{ptr @nvme_loop_admin_mq_ops, !62, !"nvme_loop_admin_mq_ops", i1 false, i1 false}
!62 = !{!"../drivers/nvme/target/loop.c", i32 257, i32 32}
!63 = !{ptr @nvme_loop_mq_ops, !64, !"nvme_loop_mq_ops", i1 false, i1 false}
!64 = !{!"../drivers/nvme/target/loop.c", i32 250, i32 32}
!65 = !{ptr @loop_hctx_fq_lock_key, !66, !"loop_hctx_fq_lock_key", i1 false, i1 false}
!66 = !{!"../drivers/nvme/target/loop.c", i32 216, i32 30}
!67 = !{ptr @nvme_loop_init_iod.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/nvme/target/loop.c", i32 199, i32 2}
!69 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @nvme_loop_ops, !71, !"nvme_loop_ops", i1 false, i1 false}
!71 = !{!"../drivers/nvme/target/loop.c", i32 689, i32 39}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/nvme/target/loop.c", i32 112, i32 4}
!74 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @nvme_loop_queue_response._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @nvme_loop_queue_response._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/nvme/target/../host/nvme.h", i32 523, i32 3}
!79 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @nvme_find_rq._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @nvme_find_rq._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/nvme/target/../host/nvme.h", i32 528, i32 3}
!85 = !{ptr @nvme_find_rq._entry.28, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @nvme_find_rq._entry_ptr.30, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/nvme/target/loop.c", i32 62, i32 8}
!89 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @nvme_loop_ctrl_mutex, !88, !"nvme_loop_ctrl_mutex", i1 false, i1 false}
!91 = !{ptr @nvme_loop_ctrl_list, !92, !"nvme_loop_ctrl_list", i1 false, i1 false}
!92 = !{!"../drivers/nvme/target/loop.c", i32 61, i32 8}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i64 2156480254, i64 2156480745, i64 2156480291, i64 2156480347, i64 2156480381, i64 2156480405, i64 2156480446, i64 2156480467, i64 2156480495, i64 2156480529}
!105 = !{i64 2156478651, i64 2156479142, i64 2156478688, i64 2156478744, i64 2156478778, i64 2156478802, i64 2156478843, i64 2156478864, i64 2156478892, i64 2156478926}
!106 = !{i64 1214035}
