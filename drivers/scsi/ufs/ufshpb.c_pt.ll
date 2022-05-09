; ModuleID = '/llk/IR_all_yes/drivers/scsi/ufs/ufshpb.c_pt.bc'
source_filename = "../drivers/scsi/ufs/ufshpb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.19 }
%union.anon.19 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ufs_hba = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.device_attribute, %struct.device_attribute, i32, i32, ptr, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.blk_mq_tag_set, ptr, ptr, ptr, %struct.mutex, ptr, i32, i32, i32, i16, i16, i16, %struct.mutex, i8, i8, %struct.semaphore, ptr, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.ufs_stats, i8, i8, i8, %struct.ufs_dev_cmd, i64, i32, %struct.ufs_dev_info, i8, %struct.ufs_vreg_info, %struct.list_head, i32, i32, %struct.ufs_pa_layer_attr, %struct.ufs_pwr_mode_info, %struct.ufs_clk_gating, i32, ptr, %struct.ufs_clk_scaling, i8, i32, i8, %struct.rw_semaphore, [10 x i8], %struct.atomic_t, %struct.device, ptr, %struct.delayed_work, %struct.ufshpb_dev_info, %struct.ufs_hba_monitor, %union.ufs_crypto_capabilities, ptr, i32, %struct.blk_crypto_profile, ptr, %struct.delayed_work, i32, i32, i8 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.ufs_stats = type { i32, i64, i32, i64, [15 x %struct.ufs_event_hist] }
%struct.ufs_event_hist = type { i32, [8 x i32], [8 x i64], i64 }
%struct.ufs_dev_cmd = type { i32, %struct.mutex, ptr, %struct.ufs_query }
%struct.ufs_query = type { %struct.ufs_query_req, ptr, %struct.ufs_query_res }
%struct.ufs_query_req = type { i8, %struct.utp_upiu_query }
%struct.utp_upiu_query = type { i8, i8, i8, i8, i16, i16, i32, [2 x i32] }
%struct.ufs_query_res = type { i8, %struct.utp_upiu_query }
%struct.ufs_dev_info = type { i8, i8, i8, i16, ptr, i16, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ufs_vreg_info = type { ptr, ptr, ptr, ptr }
%struct.ufs_pa_layer_attr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ufs_pwr_mode_info = type { i8, %struct.ufs_pa_layer_attr }
%struct.ufs_clk_gating = type { %struct.delayed_work, %struct.work_struct, i32, i32, i8, %struct.device_attribute, %struct.device_attribute, i8, i8, i32, ptr }
%struct.ufs_clk_scaling = type { i32, i32, i64, i64, %struct.device_attribute, %struct.ufs_saved_pwr_info, ptr, %struct.work_struct, %struct.work_struct, i32, i8, i8, i8, i8, i8 }
%struct.ufs_saved_pwr_info = type { %struct.ufs_pa_layer_attr, i8 }
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
%struct.ufshpb_dev_info = type { i32, i32, i32, %struct.atomic_t, i8, i8, i8, i8 }
%struct.ufs_hba_monitor = type { i32, [2 x i32], [2 x i64], [2 x i32], [2 x i64], [2 x i64], [2 x i64], [2 x i32], [2 x i64], i64, i8 }
%union.ufs_crypto_capabilities = type { i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ufshcd_lrb = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i8, i8, i64, i64, i32, i64, i8 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.ufshpb_lu = type { i32, ptr, %struct.spinlock, ptr, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, i32, %struct.work_struct, %struct.victim_select_info, %struct.work_struct, %struct.delayed_work, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.ufshpb_stats, %struct.ufshpb_params, ptr, ptr, %struct.list_head }
%struct.victim_select_info = type { %struct.list_head, i32, %struct.atomic_t }
%struct.ufshpb_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ufshpb_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ufshpb_region = type { ptr, ptr, i32, i32, i32, %struct.list_head, %struct.list_head, i32, %struct.spinlock, i32, i64, i32, %struct.list_head }
%struct.ufshpb_subregion = type { ptr, i32, i32, i32, i8, i32, %struct.list_head }
%struct.ufshpb_map_ctx = type { ptr, ptr }
%struct.utp_upiu_rsp = type { %struct.utp_upiu_header, %union.anon.90 }
%struct.utp_upiu_header = type { i32, i32, i32 }
%union.anon.90 = type { %struct.utp_cmd_rsp }
%struct.utp_cmd_rsp = type { i32, [4 x i32], i16, [18 x i8] }
%struct.utp_hpb_rsp = type { i32, [4 x i32], i16, i8, i8, i8, i8, i8, i8, [2 x %struct.ufshpb_active_field], [2 x i16] }
%struct.ufshpb_active_field = type { i16, i16 }
%struct.ufshpb_req = type { ptr, ptr, ptr, %struct.list_head, %union.anon.100 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { ptr, i32, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.33, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.34, %union.anon.35, %union.anon.36, %union.anon.41, ptr, ptr }
%union.anon.33 = type { %struct.list_head }
%union.anon.34 = type { %struct.hlist_node }
%union.anon.35 = type { %struct.rb_node }
%union.anon.36 = type { %struct.anon.40 }
%struct.anon.40 = type { i32, %struct.list_head, ptr }
%union.anon.41 = type { i64, [8 x i8] }

@ufshpb_prep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 367, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: ufshpb state is not PRESENT\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufshpb_prep\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/scsi/ufs/ufshpb.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ufshpb_prep._entry_ptr = internal global ptr @ufshpb_prep._entry, section ".printk_index", align 4
@ufshpb_prep._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 426, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"get ppn failed. err %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ufshpb_prep._entry_ptr.8 = internal global ptr @ufshpb_prep._entry.5, section ".printk_index", align 4
@ufshpb_rsp_upiu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1290, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: ufshpb state is not PRESENT/SUSPEND\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ufshpb_rsp_upiu\00", [16 x i8] zeroinitializer }, align 32
@ufshpb_rsp_upiu._entry_ptr = internal global ptr @ufshpb_rsp_upiu._entry, section ".printk_index", align 4
@ufshpb_rsp_upiu._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 1318, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: data seg length is not same.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ufshpb_rsp_upiu._entry_ptr.14 = internal global ptr @ufshpb_rsp_upiu._entry.11, section ".printk_index", align 4
@ufshpb_rsp_upiu._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 1323, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"UFS device lost HPB information during PM.\0A\00", [52 x i8] zeroinitializer }, align 32
@ufshpb_rsp_upiu._entry_ptr.17 = internal global ptr @ufshpb_rsp_upiu._entry.15, section ".printk_index", align 4
@ufshpb_rsp_upiu._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.2, i32 1340, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hpb_op is not available: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ufshpb_rsp_upiu._entry_ptr.20 = internal global ptr @ufshpb_rsp_upiu._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hpb_stats\00", [22 x i8] zeroinitializer }, align 32
@hpb_dev_stat_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @dev_attr_hit_cnt, ptr @dev_attr_miss_cnt, ptr @dev_attr_rb_noti_cnt, ptr @dev_attr_rb_active_cnt, ptr @dev_attr_rb_inactive_cnt, ptr @dev_attr_map_req_cnt, ptr @dev_attr_umap_req_cnt, ptr null], [32 x i8] zeroinitializer }, align 32
@ufs_sysfs_hpb_stat_group = dso_local global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.21, ptr null, ptr null, ptr @hpb_dev_stat_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hpb_params\00", [21 x i8] zeroinitializer }, align 32
@hpb_dev_param_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @dev_attr_requeue_timeout_ms, ptr @dev_attr_activation_thld, ptr @dev_attr_normalization_factor, ptr @dev_attr_eviction_thld_enter, ptr @dev_attr_eviction_thld_exit, ptr @dev_attr_read_timeout_ms, ptr @dev_attr_read_timeout_expiries, ptr @dev_attr_timeout_polling_interval_ms, ptr @dev_attr_inflight_map_req, ptr null], [56 x i8] zeroinitializer }, align 32
@ufs_sysfs_hpb_param_group = dso_local global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.22, ptr null, ptr null, ptr @hpb_dev_param_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@tot_active_srgn_pages = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ufshpb_get_geo_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 2560, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No HPB LU supported\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufshpb_get_geo_info\00", [44 x i8] zeroinitializer }, align 32
@ufshpb_get_geo_info._entry_ptr = internal global ptr @ufshpb_get_geo_info._entry, section ".printk_index", align 4
@ufshpb_get_geo_info._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 2572, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No HPB supported device\0A\00", [39 x i8] zeroinitializer }, align 32
@ufshpb_get_geo_info._entry_ptr.27 = internal global ptr @ufshpb_get_geo_info._entry.25, section ".printk_index", align 4
@ufshpb_get_dev_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 2590, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: HPB %x version is not supported.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufshpb_get_dev_info\00", [44 x i8] zeroinitializer }, align 32
@ufshpb_get_dev_info._entry_ptr = internal global ptr @ufshpb_get_dev_info._entry, section ".printk_index", align 4
@ufshpb_page_pool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ufshpb_mctx_pool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ufshpb_mctx_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ufshpb_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_str_ufshpb_host_map_kbytes = internal constant [35 x i8] c"ufshcd_core.ufshpb_host_map_kbytes\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@ufshpb_host_map_kbytes = internal global { i32, [28 x i8] } { i32 2048, [28 x i8] zeroinitializer }, align 32
@__param_ufshpb_host_map_kbytes = internal constant %struct.kernel_param { ptr @__param_str_ufshpb_host_map_kbytes, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.19 { ptr @ufshpb_host_map_kbytes } }, section "__param", align 4
@__UNIQUE_ID_ufshpb_host_map_kbytestype335 = internal constant [49 x i8] c"ufshcd_core.parmtype=ufshpb_host_map_kbytes:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_ufshpb_host_map_kbytes336 = internal constant [101 x i8] c"ufshcd_core.parm=ufshpb_host_map_kbytes:ufshpb host mapping memory kilo-bytes for ufshpb memory-pool\00", section ".modinfo", align 1
@ufshpb_iterate_rgn.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ufshcd_core\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufshpb_iterate_rgn\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"activate region %d-%d\0A\00", [41 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ufshpb_test_ppn_dirty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 252, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no mctx in region %d subregion %d.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ufshpb_test_ppn_dirty\00", [42 x i8] zeroinitializer }, align 32
@ufshpb_test_ppn_dirty._entry_ptr = internal global ptr @ufshpb_test_ppn_dirty._entry, section ".printk_index", align 4
@ufshpb_fill_ppn_from_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 302, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error. cannot find page in mctx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ufshpb_fill_ppn_from_page\00", [38 x i8] zeroinitializer }, align 32
@ufshpb_fill_ppn_from_page._entry_ptr = internal global ptr @ufshpb_fill_ppn_from_page._entry, section ".printk_index", align 4
@ufshpb_is_hpb_rsp_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 139, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ufshpb: lun(%d) not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ufshpb_is_hpb_rsp_valid\00", [40 x i8] zeroinitializer }, align 32
@ufshpb_is_hpb_rsp_valid._entry_ptr = internal global ptr @ufshpb_is_hpb_rsp_valid._entry, section ".printk_index", align 4
@ufshpb_rsp_req_region_update.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 1, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ufshpb_rsp_req_region_update\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"activate(%d) region %d - %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ufshpb_rsp_req_region_update.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 1, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"inactivate(%d) region %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ufshpb_rsp_req_region_update.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.39, ptr @.str.2, ptr @.str.42, i8 1, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Noti: #ACT %u #INACT %u\0A\00", [39 x i8] zeroinitializer }, align 32
@dev_attr_hit_cnt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hit_cnt_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_miss_cnt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @miss_cnt_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rb_noti_cnt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rb_noti_cnt_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rb_active_cnt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rb_active_cnt_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rb_inactive_cnt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rb_inactive_cnt_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_map_req_cnt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @map_req_cnt_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_umap_req_cnt = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @umap_req_cnt_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hit_cnt\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"miss_cnt\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rb_noti_cnt\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rb_active_cnt\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rb_inactive_cnt\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"map_req_cnt\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"umap_req_cnt\00", [19 x i8] zeroinitializer }, align 32
@dev_attr_requeue_timeout_ms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @requeue_timeout_ms_show, ptr @requeue_timeout_ms_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_activation_thld = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @activation_thld_show, ptr @activation_thld_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_normalization_factor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @normalization_factor_show, ptr @normalization_factor_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_eviction_thld_enter = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @eviction_thld_enter_show, ptr @eviction_thld_enter_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_eviction_thld_exit = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @eviction_thld_exit_show, ptr @eviction_thld_exit_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_read_timeout_ms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @read_timeout_ms_show, ptr @read_timeout_ms_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_read_timeout_expiries = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @read_timeout_expiries_show, ptr @read_timeout_expiries_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_timeout_polling_interval_ms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @timeout_polling_interval_ms_show, ptr @timeout_polling_interval_ms_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_inflight_map_req = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @inflight_map_req_show, ptr @inflight_map_req_store }, [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"requeue_timeout_ms\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"activation_thld\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"normalization_factor\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"eviction_thld_enter\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"eviction_thld_exit\00", [45 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"read_timeout_ms\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read_timeout_expiries\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"timeout_polling_interval_ms\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"inflight_map_req\00", [47 x i8] zeroinitializer }, align 32
@ufshpb_get_lu_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 2380, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: idn: %d lun: %d  query request failed\00", [54 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufshpb_get_lu_info\00", [45 x i8] zeroinitializer }, align 32
@ufshpb_get_lu_info._entry_ptr = internal global ptr @ufshpb_get_lu_info._entry, section ".printk_index", align 4
@ufshpb_get_lu_info._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 2392, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"lun %d wrong number of max active regions\0A\00", [53 x i8] zeroinitializer }, align 32
@ufshpb_get_lu_info._entry_ptr.65 = internal global ptr @ufshpb_get_lu_info._entry.63, section ".printk_index", align 4
@ufshpb_alloc_hpb_lu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 2203, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hpb lu init failed. ret %d\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufshpb_alloc_hpb_lu\00", [44 x i8] zeroinitializer }, align 32
@ufshpb_alloc_hpb_lu._entry_ptr = internal global ptr @ufshpb_alloc_hpb_lu._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ufshpb_lu_hpb_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&hpb->rgn_state_lock\00", [43 x i8] zeroinitializer }, align 32
@ufshpb_lu_hpb_init.__key.69 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&hpb->rsp_list_lock\00", [44 x i8] zeroinitializer }, align 32
@ufshpb_lu_hpb_init.__key.71 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&hpb->param_lock\00", [47 x i8] zeroinitializer }, align 32
@ufshpb_lu_hpb_init.__key.73 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&hpb->map_work)\00", [62 x i8] zeroinitializer }, align 32
@ufshpb_lu_hpb_init.__key.75 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.76 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&hpb->ufshpb_normalization_work)\00", [45 x i8] zeroinitializer }, align 32
@ufshpb_lu_hpb_init.__key.77 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"(work_completion)(&(&hpb->ufshpb_read_to_work)->work)\00", [42 x i8] zeroinitializer }, align 32
@ufshpb_lu_hpb_init.__key.79 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&(&hpb->ufshpb_read_to_work)->timer\00", [60 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ufshpb_req_cache\00", [47 x i8] zeroinitializer }, align 32
@ufshpb_lu_hpb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 2137, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ufshpb(%d) ufshpb_req_cache create fail\00", [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufshpb_lu_hpb_init\00", [45 x i8] zeroinitializer }, align 32
@ufshpb_lu_hpb_init._entry_ptr = internal global ptr @ufshpb_lu_hpb_init._entry, section ".printk_index", align 4
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufshpb_m_page_cache\00", [44 x i8] zeroinitializer }, align 32
@ufshpb_lu_hpb_init._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.83, ptr @.str.2, i32 2146, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ufshpb(%d) ufshpb_m_page_cache create fail\00", [53 x i8] zeroinitializer }, align 32
@ufshpb_lu_hpb_init._entry_ptr.87 = internal global ptr @ufshpb_lu_hpb_init._entry.85, section ".printk_index", align 4
@ufshpb_lu_hpb_init._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.83, ptr @.str.2, i32 2154, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ufshpb(%d) pre_req_mempool init fail\00", [59 x i8] zeroinitializer }, align 32
@ufshpb_lu_hpb_init._entry_ptr.90 = internal global ptr @ufshpb_lu_hpb_init._entry.88, section ".printk_index", align 4
@ufshpb_map_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 1487, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: ufshpb state is not PRESENT\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ufshpb_map_work_handler\00", [40 x i8] zeroinitializer }, align 32
@ufshpb_map_work_handler._entry_ptr = internal global ptr @ufshpb_map_work_handler._entry, section ".printk_index", align 4
@ufshpb_evict_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 967, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pinned region cannot drop-out. region %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ufshpb_evict_region\00", [44 x i8] zeroinitializer }, align 32
@ufshpb_evict_region._entry_ptr = internal global ptr @ufshpb_evict_region._entry, section ".printk_index", align 4
@__ufshpb_evict_region.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.95, ptr @.str.2, ptr @.str.96, i8 0, i8 -19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__ufshpb_evict_region\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"evict region %d\0A\00", [47 x i8] zeroinitializer }, align 32
@ufshpb_run_active_subregion_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.2, i32 1403, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"issue map_req failed. ret %d, region %d - %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ufshpb_run_active_subregion_list\00", [63 x i8] zeroinitializer }, align 32
@ufshpb_run_active_subregion_list._entry_ptr = internal global ptr @ufshpb_run_active_subregion_list._entry, section ".printk_index", align 4
@ufshpb_run_active_subregion_list._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.2, i32 1413, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to activate region %d - %d, will retry\0A\00", [49 x i8] zeroinitializer }, align 32
@ufshpb_run_active_subregion_list._entry_ptr.101 = internal global ptr @ufshpb_run_active_subregion_list._entry.99, section ".printk_index", align 4
@ufshpb_add_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 1112, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot get victim region %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufshpb_add_region\00", [46 x i8] zeroinitializer }, align 32
@ufshpb_add_region._entry_ptr = internal global ptr @ufshpb_add_region._entry, section ".printk_index", align 4
@.str.104 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@ufshpb_add_region.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.103, ptr @.str.2, ptr @.str.106, i8 1, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"LRU full (%d), choose victim %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ufshpb_victim_lru_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.108, ptr @.str.2, i32 875, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: no region allocated\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufshpb_victim_lru_info\00", [41 x i8] zeroinitializer }, align 32
@ufshpb_victim_lru_info._entry_ptr = internal global ptr @ufshpb_victim_lru_info._entry, section ".printk_index", align 4
@ufshpb_issue_map_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.109, ptr @.str.2, i32 1007, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ufshpb_issue_map_req\00", [43 x i8] zeroinitializer }, align 32
@ufshpb_issue_map_req._entry_ptr = internal global ptr @ufshpb_issue_map_req._entry, section ".printk_index", align 4
@ufshpb_issue_map_req._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.2, i32 1039, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"get map_ctx failed. region %d - %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ufshpb_issue_map_req._entry_ptr.112 = internal global ptr @ufshpb_issue_map_req._entry.110, section ".printk_index", align 4
@ufshpb_issue_map_req._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.109, ptr @.str.2, i32 1054, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: issue map_req failed: %d, region %d - %d\0A\00", [50 x i8] zeroinitializer }, align 32
@ufshpb_issue_map_req._entry_ptr.115 = internal global ptr @ufshpb_issue_map_req._entry.113, section ".printk_index", align 4
@ufshpb_get_map_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.117, ptr @.str.2, i32 489, ptr @.str.118, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"map_req throttle. inflight %d throttle %d\00", [54 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufshpb_get_map_req\00", [45 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ufshpb_get_map_req._entry_ptr = internal global ptr @ufshpb_get_map_req._entry, section ".printk_index", align 4
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@ufshpb_execute_map_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 701, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bio_add_pc_page fail %d - %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufshpb_execute_map_req\00", [41 x i8] zeroinitializer }, align 32
@ufshpb_execute_map_req._entry_ptr = internal global ptr @ufshpb_execute_map_req._entry, section ".printk_index", align 4
@ufshpb_clear_dirty_bitmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.121, ptr @.str.2, i32 537, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ufshpb_clear_dirty_bitmap\00", [38 x i8] zeroinitializer }, align 32
@ufshpb_clear_dirty_bitmap._entry_ptr = internal global ptr @ufshpb_clear_dirty_bitmap._entry, section ".printk_index", align 4
@ufshpb_activate_subregion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.122, ptr @.str.2, i32 600, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ufshpb_activate_subregion\00", [38 x i8] zeroinitializer }, align 32
@ufshpb_activate_subregion._entry_ptr = internal global ptr @ufshpb_activate_subregion._entry, section ".printk_index", align 4
@ufshpb_activate_subregion._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.2, i32 610, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"region %d subregion %d evicted\0A\00", [32 x i8] zeroinitializer }, align 32
@ufshpb_activate_subregion._entry_ptr.125 = internal global ptr @ufshpb_activate_subregion._entry.123, section ".printk_index", align 4
@ufshpb_alloc_region_tbl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&rgn->rgn_lock\00", [17 x i8] zeroinitializer }, align 32
@ufshpb_init_pinned_active_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.2, i32 1513, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"alloc mctx for pinned region failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ufshpb_init_pinned_active_region\00", [63 x i8] zeroinitializer }, align 32
@ufshpb_init_pinned_active_region._entry_ptr = internal global ptr @ufshpb_init_pinned_active_region._entry, section ".printk_index", align 4
@ufshpb_hpb_lu_prepared._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 2464, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"destroy HPB lu %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ufshpb_hpb_lu_prepared\00", [41 x i8] zeroinitializer }, align 32
@ufshpb_hpb_lu_prepared._entry_ptr = internal global ptr @ufshpb_hpb_lu_prepared._entry, section ".printk_index", align 4
@ufshpb_check_hpb_reset_query.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.132, ptr @.str.2, ptr @.str.133, i8 2, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ufshpb_check_hpb_reset_query\00", [35 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s start flag reset polling %d times\0A\00", [58 x i8] zeroinitializer }, align 32
@ufshpb_check_hpb_reset_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.2, i32 2265, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s reading fHpbReset flag failed with error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ufshpb_check_hpb_reset_query._entry_ptr = internal global ptr @ufshpb_check_hpb_reset_query._entry, section ".printk_index", align 4
@ufshpb_check_hpb_reset_query._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.132, ptr @.str.2, i32 2277, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s fHpbReset was not cleared by the device\0A\00", [52 x i8] zeroinitializer }, align 32
@ufshpb_check_hpb_reset_query._entry_ptr.137 = internal global ptr @ufshpb_check_hpb_reset_query._entry.135, section ".printk_index", align 4
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ufshpb_mctx_cache\00", [46 x i8] zeroinitializer }, align 32
@ufshpb_init_mem_wq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 2510, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ufshpb: cannot init mctx cache\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ufshpb_init_mem_wq\00", [45 x i8] zeroinitializer }, align 32
@ufshpb_init_mem_wq._entry_ptr = internal global ptr @ufshpb_init_mem_wq._entry, section ".printk_index", align 4
@ufshpb_init_mem_wq._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.140, ptr @.str.2, i32 2516, ptr @.str.118, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s:%d ufshpb_host_map_kbytes %u pool_size %u\0A\00", [50 x i8] zeroinitializer }, align 32
@ufshpb_init_mem_wq._entry_ptr.143 = internal global ptr @ufshpb_init_mem_wq._entry.141, section ".printk_index", align 4
@ufshpb_init_mem_wq._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.140, ptr @.str.2, i32 2521, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ufshpb: cannot init mctx pool\0A\00", [33 x i8] zeroinitializer }, align 32
@ufshpb_init_mem_wq._entry_ptr.146 = internal global ptr @ufshpb_init_mem_wq._entry.144, section ".printk_index", align 4
@ufshpb_init_mem_wq._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.140, ptr @.str.2, i32 2528, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ufshpb: cannot init page pool\0A\00", [33 x i8] zeroinitializer }, align 32
@ufshpb_init_mem_wq._entry_ptr.149 = internal global ptr @ufshpb_init_mem_wq._entry.147, section ".printk_index", align 4
@.str.150 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ufshpb-wq\00", [22 x i8] zeroinitializer }, align 32
@ufshpb_init_mem_wq._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.140, ptr @.str.2, i32 2536, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ufshpb: alloc workqueue failed\0A\00", [32 x i8] zeroinitializer }, align 32
@ufshpb_init_mem_wq._entry_ptr.153 = internal global ptr @ufshpb_init_mem_wq._entry.151, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 366, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 426, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1288, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1316, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1322, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1338, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1742, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant [19 x i8] c"hpb_dev_stat_attrs\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1730, i32 26 }
@___asan_gen_.220 = private unnamed_addr constant [25 x i8] c"ufs_sysfs_hpb_stat_group\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1741, i32 24 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2029, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant [20 x i8] c"hpb_dev_param_attrs\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2015, i32 26 }
@___asan_gen_.229 = private unnamed_addr constant [26 x i8] c"ufs_sysfs_hpb_param_group\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2028, i32 24 }
@___asan_gen_.232 = private unnamed_addr constant [22 x i8] c"tot_active_srgn_pages\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 30, i32 12 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2560, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2572, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2589, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"ufshpb_page_pool\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 27, i32 19 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"ufshpb_mctx_pool\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 26, i32 19 }
@___asan_gen_.265 = private unnamed_addr constant [18 x i8] c"ufshpb_mctx_cache\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 25, i32 27 }
@___asan_gen_.268 = private unnamed_addr constant [10 x i8] c"ufshpb_wq\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 32, i32 33 }
@___asan_gen_.271 = private unnamed_addr constant [23 x i8] c"ufshpb_host_map_kbytes\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 29, i32 21 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 206, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 250, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 301, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 138, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1181, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1207, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1229, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [17 x i8] c"dev_attr_hit_cnt\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [18 x i8] c"dev_attr_miss_cnt\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [21 x i8] c"dev_attr_rb_noti_cnt\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [23 x i8] c"dev_attr_rb_active_cnt\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [25 x i8] c"dev_attr_rb_inactive_cnt\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [21 x i8] c"dev_attr_map_req_cnt\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [22 x i8] c"dev_attr_umap_req_cnt\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1722, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1723, i32 1 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1724, i32 1 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1725, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1726, i32 1 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1727, i32 1 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1728, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant [28 x i8] c"dev_attr_requeue_timeout_ms\00", align 1
@___asan_gen_.370 = private unnamed_addr constant [25 x i8] c"dev_attr_activation_thld\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [30 x i8] c"dev_attr_normalization_factor\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [29 x i8] c"dev_attr_eviction_thld_enter\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [28 x i8] c"dev_attr_eviction_thld_exit\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [25 x i8] c"dev_attr_read_timeout_ms\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [31 x i8] c"dev_attr_read_timeout_expiries\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [37 x i8] c"dev_attr_timeout_polling_interval_ms\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [26 x i8] c"dev_attr_inflight_map_req\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1782, i32 8 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1760, i32 1 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1809, i32 8 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1836, i32 8 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1863, i32 8 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1890, i32 8 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1918, i32 8 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1945, i32 8 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1974, i32 8 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2001, i32 8 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2378, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2391, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2203, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2116, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2117, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2118, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2125, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2127, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2129, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2133, i32 41 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2136, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2141, i32 40 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2145, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2153, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1486, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 965, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 950, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1401, i32 4 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1412, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1110, i32 5 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1117, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 873, i32 4 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1006, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1037, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1052, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 486, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 699, i32 4 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 535, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 598, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 608, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1632, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 1512, i32 4 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2464, i32 4 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2254, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2263, i32 4 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2275, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2506, i32 40 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2510, i32 3 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2515, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2521, i32 3 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2528, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2533, i32 30 }
@___asan_gen_.715 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.718 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.719 = private constant [29 x i8] c"../drivers/scsi/ufs/ufshpb.c\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 2536, i32 3 }
@llvm.compiler.used = appending global [232 x ptr] [ptr @__UNIQUE_ID_ufshpb_host_map_kbytes336, ptr @__UNIQUE_ID_ufshpb_host_map_kbytestype335, ptr @__param_ufshpb_host_map_kbytes, ptr @ufshpb_activate_subregion._entry, ptr @ufshpb_activate_subregion._entry.123, ptr @ufshpb_activate_subregion._entry_ptr, ptr @ufshpb_activate_subregion._entry_ptr.125, ptr @ufshpb_add_region._entry, ptr @ufshpb_add_region._entry_ptr, ptr @ufshpb_alloc_hpb_lu._entry, ptr @ufshpb_alloc_hpb_lu._entry_ptr, ptr @ufshpb_check_hpb_reset_query._entry, ptr @ufshpb_check_hpb_reset_query._entry.135, ptr @ufshpb_check_hpb_reset_query._entry_ptr, ptr @ufshpb_check_hpb_reset_query._entry_ptr.137, ptr @ufshpb_clear_dirty_bitmap._entry, ptr @ufshpb_clear_dirty_bitmap._entry_ptr, ptr @ufshpb_evict_region._entry, ptr @ufshpb_evict_region._entry_ptr, ptr @ufshpb_execute_map_req._entry, ptr @ufshpb_execute_map_req._entry_ptr, ptr @ufshpb_fill_ppn_from_page._entry, ptr @ufshpb_fill_ppn_from_page._entry_ptr, ptr @ufshpb_get_dev_info._entry, ptr @ufshpb_get_dev_info._entry_ptr, ptr @ufshpb_get_geo_info._entry, ptr @ufshpb_get_geo_info._entry.25, ptr @ufshpb_get_geo_info._entry_ptr, ptr @ufshpb_get_geo_info._entry_ptr.27, ptr @ufshpb_get_lu_info._entry, ptr @ufshpb_get_lu_info._entry.63, ptr @ufshpb_get_lu_info._entry_ptr, ptr @ufshpb_get_lu_info._entry_ptr.65, ptr @ufshpb_get_map_req._entry, ptr @ufshpb_get_map_req._entry_ptr, ptr @ufshpb_hpb_lu_prepared._entry, ptr @ufshpb_hpb_lu_prepared._entry_ptr, ptr @ufshpb_init_mem_wq._entry, ptr @ufshpb_init_mem_wq._entry.141, ptr @ufshpb_init_mem_wq._entry.144, ptr @ufshpb_init_mem_wq._entry.147, ptr @ufshpb_init_mem_wq._entry.151, ptr @ufshpb_init_mem_wq._entry_ptr, ptr @ufshpb_init_mem_wq._entry_ptr.143, ptr @ufshpb_init_mem_wq._entry_ptr.146, ptr @ufshpb_init_mem_wq._entry_ptr.149, ptr @ufshpb_init_mem_wq._entry_ptr.153, ptr @ufshpb_init_pinned_active_region._entry, ptr @ufshpb_init_pinned_active_region._entry_ptr, ptr @ufshpb_is_hpb_rsp_valid._entry, ptr @ufshpb_is_hpb_rsp_valid._entry_ptr, ptr @ufshpb_issue_map_req._entry, ptr @ufshpb_issue_map_req._entry.110, ptr @ufshpb_issue_map_req._entry.113, ptr @ufshpb_issue_map_req._entry_ptr, ptr @ufshpb_issue_map_req._entry_ptr.112, ptr @ufshpb_issue_map_req._entry_ptr.115, ptr @ufshpb_lu_hpb_init._entry, ptr @ufshpb_lu_hpb_init._entry.85, ptr @ufshpb_lu_hpb_init._entry.88, ptr @ufshpb_lu_hpb_init._entry_ptr, ptr @ufshpb_lu_hpb_init._entry_ptr.87, ptr @ufshpb_lu_hpb_init._entry_ptr.90, ptr @ufshpb_map_work_handler._entry, ptr @ufshpb_map_work_handler._entry_ptr, ptr @ufshpb_prep._entry, ptr @ufshpb_prep._entry.5, ptr @ufshpb_prep._entry_ptr, ptr @ufshpb_prep._entry_ptr.8, ptr @ufshpb_rsp_upiu._entry, ptr @ufshpb_rsp_upiu._entry.11, ptr @ufshpb_rsp_upiu._entry.15, ptr @ufshpb_rsp_upiu._entry.18, ptr @ufshpb_rsp_upiu._entry_ptr, ptr @ufshpb_rsp_upiu._entry_ptr.14, ptr @ufshpb_rsp_upiu._entry_ptr.17, ptr @ufshpb_rsp_upiu._entry_ptr.20, ptr @ufshpb_run_active_subregion_list._entry, ptr @ufshpb_run_active_subregion_list._entry.99, ptr @ufshpb_run_active_subregion_list._entry_ptr, ptr @ufshpb_run_active_subregion_list._entry_ptr.101, ptr @ufshpb_test_ppn_dirty._entry, ptr @ufshpb_test_ppn_dirty._entry_ptr, ptr @ufshpb_victim_lru_info._entry, ptr @ufshpb_victim_lru_info._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @hpb_dev_stat_attrs, ptr @ufs_sysfs_hpb_stat_group, ptr @.str.22, ptr @hpb_dev_param_attrs, ptr @ufs_sysfs_hpb_param_group, ptr @tot_active_srgn_pages, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @ufshpb_page_pool, ptr @ufshpb_mctx_pool, ptr @ufshpb_mctx_cache, ptr @ufshpb_wq, ptr @ufshpb_host_map_kbytes, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @dev_attr_hit_cnt, ptr @dev_attr_miss_cnt, ptr @dev_attr_rb_noti_cnt, ptr @dev_attr_rb_active_cnt, ptr @dev_attr_rb_inactive_cnt, ptr @dev_attr_map_req_cnt, ptr @dev_attr_umap_req_cnt, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @dev_attr_requeue_timeout_ms, ptr @dev_attr_activation_thld, ptr @dev_attr_normalization_factor, ptr @dev_attr_eviction_thld_enter, ptr @dev_attr_eviction_thld_exit, ptr @dev_attr_read_timeout_ms, ptr @dev_attr_read_timeout_expiries, ptr @dev_attr_timeout_polling_interval_ms, ptr @dev_attr_inflight_map_req, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @ufshpb_lu_hpb_init.__key, ptr @.str.68, ptr @ufshpb_lu_hpb_init.__key.69, ptr @.str.70, ptr @ufshpb_lu_hpb_init.__key.71, ptr @.str.72, ptr @ufshpb_lu_hpb_init.__key.73, ptr @.str.74, ptr @ufshpb_lu_hpb_init.__key.75, ptr @.str.76, ptr @ufshpb_lu_hpb_init.__key.77, ptr @.str.78, ptr @ufshpb_lu_hpb_init.__key.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @ufshpb_alloc_region_tbl.__key, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.150, ptr @.str.152], section "llvm.metadata"
@0 = internal global [188 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_prep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_prep._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_rsp_upiu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_rsp_upiu._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_rsp_upiu._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_rsp_upiu._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpb_dev_stat_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_hpb_stat_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpb_dev_param_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_sysfs_hpb_param_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tot_active_srgn_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_get_geo_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_get_geo_info._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_get_dev_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_page_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_mctx_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_mctx_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_host_map_kbytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_test_ppn_dirty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_fill_ppn_from_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_is_hpb_rsp_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hit_cnt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_miss_cnt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rb_noti_cnt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rb_active_cnt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rb_inactive_cnt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_map_req_cnt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_umap_req_cnt to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_requeue_timeout_ms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_activation_thld to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_normalization_factor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_eviction_thld_enter to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_eviction_thld_exit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_read_timeout_ms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_read_timeout_expiries to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_timeout_polling_interval_ms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inflight_map_req to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_get_lu_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_get_lu_info._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_alloc_hpb_lu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_lu_hpb_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_lu_hpb_init.__key.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_lu_hpb_init.__key.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_lu_hpb_init.__key.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_lu_hpb_init.__key.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_lu_hpb_init.__key.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_lu_hpb_init.__key.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_lu_hpb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_lu_hpb_init._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_lu_hpb_init._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_map_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_evict_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_run_active_subregion_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_run_active_subregion_list._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_add_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_victim_lru_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_issue_map_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_issue_map_req._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_issue_map_req._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_get_map_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_execute_map_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_clear_dirty_bitmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_activate_subregion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_activate_subregion._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_alloc_region_tbl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_init_pinned_active_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_hpb_lu_prepared._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_check_hpb_reset_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_check_hpb_reset_query._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_init_mem_wq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_init_mem_wq._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_init_mem_wq._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_init_mem_wq._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshpb_init_mem_wq._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ufshpb_is_allowed(ptr nocapture noundef readonly %hba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hpb_disabled = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 4
  %0 = ptrtoint ptr %hpb_disabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hpb_disabled, align 8, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  ret i1 %tobool.not
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ufshpb_is_legacy(ptr nocapture noundef readonly %hba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %is_legacy = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 6
  %0 = ptrtoint ptr %is_legacy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_legacy, align 2, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufshpb_prep(ptr nocapture noundef readonly %hba, ptr nocapture noundef readonly %lrbp) local_unnamed_addr #1 align 64 {
entry:
  %ppn = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd1 = getelementptr inbounds %struct.ufshcd_lrb, ptr %lrbp, i32 0, i32 8
  %0 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppn) #9
  %2 = ptrtoint ptr %ppn to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %ppn, align 8, !annotation !343
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %hostdata.i = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hpb_state.i = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %7 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i.i.i127 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp6.not = icmp eq i32 %10, 1
  br i1 %cmp6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %sdev_ufs_lu = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %sdev_ufs_lu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdev_ufs_lu, align 4
  %sdev_dev = getelementptr inbounds %struct.scsi_device, ptr %12, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %sdev_dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %cmd_flags.i = getelementptr i8, ptr %1, i32 -180
  %13 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmd_flags.i, align 4
  %15 = and i32 %14, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %15)
  %16 = icmp eq i32 %15, 34
  br i1 %16, label %if.end8.cleanup_crit_edge, label %lor.lhs.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  %17 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd_flags.i, align 4
  %and.i = and i32 %18, 255
  %and.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp.i.i = icmp eq i32 %and.i, 3
  %spec.select.i = or i1 %tobool.i.i, %cmp.i.i
  %19 = freeze i1 %tobool.i.i
  br i1 %19, label %lor.lhs.false.if.end14_crit_edge, label %switch.early.test

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

switch.early.test:                                ; preds = %lor.lhs.false
  %trunc = trunc i32 %18 to i8
  %20 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %switch.early.test.cleanup_crit_edge [
    i8 3, label %switch.early.test.if.end14_crit_edge
    i8 0, label %switch.early.test.if.end14_crit_edge217
  ]

switch.early.test.if.end14_crit_edge217:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

switch.early.test.if.end14_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %switch.early.test.if.end14_crit_edge, %switch.early.test.if.end14_crit_edge217, %lor.lhs.false.if.end14_crit_edge
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %sector_size.i = getelementptr inbounds %struct.scsi_device, ptr %22, i32 0, i32 20
  %23 = ptrtoint ptr %sector_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sector_size.i, align 4
  %__data_len.i.i = getelementptr i8, ptr %1, i32 -160
  %25 = ptrtoint ptr %__data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %__data_len.i.i, align 8
  %shr.i = lshr i32 %26, 9
  %conv = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i.i = icmp eq i32 %24, 0
  %27 = tail call i32 @llvm.ctlz.i32(i32 %24, i1 true) #9, !range !344
  %sub.i.op.i.i.op = sub nsw i32 22, %27
  %sub8.i173 = select i1 %tobool.not.i.i.i, i32 -10, i32 %sub.i.op.i.i.op
  %sh_prom.i174 = zext i32 %sub8.i173 to i64
  %shr.i133175 = lshr i64 %conv, %sh_prom.i174
  %conv19176 = trunc i64 %shr.i133175 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv19176)
  %tobool20.not177 = icmp eq i32 %conv19176, 0
  br i1 %tobool20.not177, label %if.end14.cleanup_crit_edge, label %cond.false4.i143, !prof !345

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false4.i143:                                 ; preds = %if.end14
  %extract.t191 = trunc i64 %shr.i133175 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i.i140 = icmp eq i32 %24, 0
  %.in = getelementptr i8, ptr %1, i32 -152
  %28 = ptrtoint ptr %.in to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %.in, align 8
  %sub.i.op.i.i141.op = sub nsw i32 22, %27
  %sub8.i145 = select i1 %tobool.not.i.i.i140, i32 -10, i32 %sub.i.op.i.i141.op
  %sh_prom.i146 = zext i32 %sub8.i145 to i64
  %shr.i147 = lshr i64 %29, %sh_prom.i146
  %conv30 = trunc i64 %shr.i147 to i32
  %entries_per_rgn_shift.i = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 28
  %30 = ptrtoint ptr %entries_per_rgn_shift.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %entries_per_rgn_shift.i, align 8
  %shr.i149 = lshr i32 %conv30, %31
  %entries_per_rgn_mask.i = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 27
  %32 = ptrtoint ptr %entries_per_rgn_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %entries_per_rgn_mask.i, align 4
  %and.i150 = and i32 %33, %conv30
  %entries_per_srgn_shift.i = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 31
  %34 = ptrtoint ptr %entries_per_srgn_shift.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %entries_per_srgn_shift.i, align 4
  %shr1.i = ashr i32 %and.i150, %35
  %entries_per_srgn_mask.i = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 30
  %36 = ptrtoint ptr %entries_per_srgn_mask.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %entries_per_srgn_mask.i, align 8
  %and2.i = and i32 %and.i150, %37
  %rgn_tbl = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 3
  %38 = ptrtoint ptr %rgn_tbl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rgn_tbl, align 4
  %srgn_tbl = getelementptr %struct.ufshpb_region, ptr %39, i32 %shr.i149, i32 1
  %40 = ptrtoint ptr %srgn_tbl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %srgn_tbl, align 4
  %add.ptr31 = getelementptr %struct.ufshpb_subregion, ptr %41, i32 %shr1.i
  br i1 %spec.select.i, label %if.then33, label %if.end34

if.then33:                                        ; preds = %cond.false4.i143
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ufshpb_iterate_rgn(ptr noundef nonnull %6, i32 noundef %shr.i149, i32 noundef %shr1.i, i32 noundef %and2.i, i32 noundef %conv19176, i1 noundef zeroext true)
  br label %cleanup

if.end34:                                         ; preds = %cond.false4.i143
  %pre_req_max_tr_len.i = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 14
  %42 = ptrtoint ptr %pre_req_max_tr_len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pre_req_max_tr_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %conv19176)
  %cmp.i157.not = icmp slt i32 %43, %conv19176
  br i1 %cmp.i157.not, label %if.end34.cleanup_crit_edge, label %if.end37

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %if.end34
  %is_hcm = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 33
  %44 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool38.not = icmp eq i8 %45, 0
  br i1 %tobool38.not, label %if.end37.do.body47_crit_edge, label %if.then39

if.end37.do.body47_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body47

if.then39:                                        ; preds = %if.end37
  tail call fastcc void @ufshpb_iterate_rgn(ptr noundef nonnull %6, i32 noundef %shr.i149, i32 noundef %shr1.i, i32 noundef %and2.i, i32 noundef %conv19176, i1 noundef zeroext false)
  %reads = getelementptr %struct.ufshpb_region, ptr %39, i32 %shr.i149, i32 9
  %46 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reads, align 4
  %entries_per_srgn = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 29
  %48 = ptrtoint ptr %entries_per_srgn to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %entries_per_srgn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp40 = icmp ugt i32 %47, %49
  br i1 %cmp40, label %if.then42, label %if.then39.do.body47_crit_edge

if.then39.do.body47_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body47

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %ufshpb_normalization_work = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %50 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %50, ptr noundef %ufshpb_normalization_work) #9
  br label %do.body47

do.body47:                                        ; preds = %if.then42, %if.then39.do.body47_crit_edge, %if.end37.do.body47_crit_edge
  %rgn_state_lock = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 2
  %call51 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rgn_state_lock) #9
  %last_srgn_entries.i = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 24
  %entries_per_srgn.i = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 29
  %srgns_per_rgn.i = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 25
  br label %next_srgn.i

next_srgn.i:                                      ; preds = %if.end30.i.next_srgn.i_crit_edge, %do.body47
  %rgn_idx.addr.0.i = phi i32 [ %shr.i149, %do.body47 ], [ %spec.select.i160, %if.end30.i.next_srgn.i_crit_edge ]
  %srgn_idx.addr.0.i = phi i32 [ %shr1.i, %do.body47 ], [ %spec.select64.i, %if.end30.i.next_srgn.i_crit_edge ]
  %srgn_offset.addr.0.i = phi i32 [ %and2.i, %do.body47 ], [ 0, %if.end30.i.next_srgn.i_crit_edge ]
  %cnt.addr.0.i = phi i32 [ %conv19176, %do.body47 ], [ %sub35.i, %if.end30.i.next_srgn.i_crit_edge ]
  %51 = ptrtoint ptr %rgn_tbl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rgn_tbl, align 4
  %srgn_tbl.i = getelementptr %struct.ufshpb_region, ptr %52, i32 %rgn_idx.addr.0.i, i32 1
  %53 = ptrtoint ptr %srgn_tbl.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %srgn_tbl.i, align 4
  %add.ptr1.i = getelementptr %struct.ufshpb_subregion, ptr %54, i32 %srgn_idx.addr.0.i
  %is_last.i = getelementptr %struct.ufshpb_subregion, ptr %54, i32 %srgn_idx.addr.0.i, i32 4
  %55 = ptrtoint ptr %is_last.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %is_last.i, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  %entries_per_srgn.last_srgn_entries.i = select i1 %tobool.not.i, ptr %entries_per_srgn.i, ptr %last_srgn_entries.i, !prof !346
  %57 = ptrtoint ptr %entries_per_srgn.last_srgn_entries.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %bitmap_len.0.i = load i32, ptr %entries_per_srgn.last_srgn_entries.i, align 4
  %rgn_state.i.i = getelementptr %struct.ufshpb_region, ptr %52, i32 %rgn_idx.addr.0.i, i32 2
  %58 = ptrtoint ptr %rgn_state.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rgn_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.not.i.i = icmp eq i32 %59, 0
  br i1 %cmp.not.i.i, label %next_srgn.i.if.then57_crit_edge, label %ufshpb_is_valid_srgn.exit.i

next_srgn.i.if.then57_crit_edge:                  ; preds = %next_srgn.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

ufshpb_is_valid_srgn.exit.i:                      ; preds = %next_srgn.i
  %srgn_state.i.i = getelementptr %struct.ufshpb_subregion, ptr %54, i32 %srgn_idx.addr.0.i, i32 1
  %60 = ptrtoint ptr %srgn_state.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %srgn_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp1.i.not.i = icmp eq i32 %61, 2
  br i1 %cmp1.i.not.i, label %if.end7.i, label %ufshpb_is_valid_srgn.exit.i.if.then57_crit_edge

ufshpb_is_valid_srgn.exit.i.if.then57_crit_edge:  ; preds = %ufshpb_is_valid_srgn.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

if.end7.i:                                        ; preds = %ufshpb_is_valid_srgn.exit.i
  %62 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr1.i, align 4
  %tobool8.not.i = icmp eq ptr %63, null
  br i1 %tobool8.not.i, label %do.end.i, label %if.end20.i, !prof !345

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %sdev_ufs_lu.i = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 1
  %64 = ptrtoint ptr %sdev_ufs_lu.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sdev_ufs_lu.i, align 4
  %sdev_dev.i = getelementptr inbounds %struct.scsi_device, ptr %65, i32 0, i32 56
  %rgn_idx18.i = getelementptr %struct.ufshpb_subregion, ptr %54, i32 %srgn_idx.addr.0.i, i32 2
  %66 = ptrtoint ptr %rgn_idx18.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rgn_idx18.i, align 4
  %srgn_idx19.i = getelementptr %struct.ufshpb_subregion, ptr %54, i32 %srgn_idx.addr.0.i, i32 3
  %68 = ptrtoint ptr %srgn_idx19.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %srgn_idx19.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev_dev.i, ptr noundef nonnull @.str.33, i32 noundef %67, i32 noundef %69) #12
  br label %if.then57

if.end20.i:                                       ; preds = %if.end7.i
  %add.i = add i32 %cnt.addr.0.i, %srgn_offset.addr.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %bitmap_len.0.i)
  %cmp.i158 = icmp sgt i32 %add.i, %bitmap_len.0.i
  %sub.i159 = sub i32 %bitmap_len.0.i, %srgn_offset.addr.0.i
  %bit_len.0.i = select i1 %cmp.i158, i32 %sub.i159, i32 %cnt.addr.0.i
  %ppn_dirty.i = getelementptr inbounds %struct.ufshpb_map_ctx, ptr %63, i32 0, i32 1
  %70 = ptrtoint ptr %ppn_dirty.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ppn_dirty.i, align 4
  %add25.i = add i32 %bit_len.0.i, %srgn_offset.addr.0.i
  %call26.i = tail call i32 @_find_next_bit_be(ptr noundef %71, i32 noundef %add25.i, i32 noundef %srgn_offset.addr.0.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call26.i, i32 %add25.i)
  %cmp28.i = icmp slt i32 %call26.i, %add25.i
  br i1 %cmp28.i, label %if.end20.i.if.then57_crit_edge, label %if.end30.i

if.end20.i.if.then57_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

if.end30.i:                                       ; preds = %if.end20.i
  %inc.i = add i32 %srgn_idx.addr.0.i, 1
  %72 = ptrtoint ptr %srgns_per_rgn.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %srgns_per_rgn.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %73)
  %cmp31.i = icmp eq i32 %inc.i, %73
  %inc33.i = zext i1 %cmp31.i to i32
  %spec.select.i160 = add i32 %rgn_idx.addr.0.i, %inc33.i
  %spec.select64.i = select i1 %cmp31.i, i32 0, i32 %inc.i
  %sub35.i = sub i32 %cnt.addr.0.i, %bit_len.0.i
  %cmp36.i = icmp sgt i32 %sub35.i, 0
  br i1 %cmp36.i, label %if.end30.i.next_srgn.i_crit_edge, label %if.end59

if.end30.i.next_srgn.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_srgn.i

if.then57:                                        ; preds = %if.end20.i.if.then57_crit_edge, %do.end.i, %ufshpb_is_valid_srgn.exit.i.if.then57_crit_edge, %next_srgn.i.if.then57_crit_edge
  %miss_cnt = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 34, i32 1
  %74 = ptrtoint ptr %miss_cnt to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %miss_cnt, align 8
  %inc = add i64 %75, 1
  store i64 %inc, ptr %miss_cnt, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rgn_state_lock, i32 noundef %call51) #9
  br label %cleanup

if.end59:                                         ; preds = %if.end30.i
  %76 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr31, align 4
  %call60 = call fastcc i32 @ufshpb_fill_ppn_from_page(ptr noundef nonnull %6, ptr noundef %77, i32 noundef %and2.i, ptr noundef nonnull %ppn)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rgn_state_lock, i32 noundef %call51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp62 = icmp slt i32 %call60, 0
  br i1 %cmp62, label %do.end73, label %if.end74, !prof !345

do.end73:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.6, i32 noundef %call60) #12
  br label %cleanup

if.end74:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %ppn to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %ppn, align 8
  %82 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cmd1, align 8
  %cmnd.i = getelementptr inbounds %struct.scsi_cmnd, ptr %83, i32 0, i32 16
  %84 = ptrtoint ptr %cmnd.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %cmnd.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -8, ptr %85, align 1
  %dev_quirks.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 35
  %87 = ptrtoint ptr %dev_quirks.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dev_quirks.i, align 4
  %and.i161 = and i32 %88, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i161)
  %tobool.not.i162 = icmp eq i32 %and.i161, 0
  %89 = tail call i64 @llvm.bswap.i64(i64 %81) #9
  %ppn_tmp.0.i = select i1 %tobool.not.i162, i64 %81, i64 %89
  %arrayidx1.i = getelementptr i8, ptr %85, i32 6
  %90 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 8)
  store i64 %ppn_tmp.0.i, ptr %arrayidx1.i, align 1
  %arrayidx2.i = getelementptr i8, ptr %85, i32 14
  %91 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %extract.t191, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %85, i32 15
  %92 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %arrayidx3.i, align 1
  %93 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cmd1, align 8
  %cmd_len.i = getelementptr inbounds %struct.scsi_cmnd, ptr %94, i32 0, i32 14
  %95 = ptrtoint ptr %cmd_len.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 16, ptr %cmd_len.i, align 4
  %stats76 = getelementptr inbounds %struct.ufshpb_lu, ptr %6, i32 0, i32 34
  %96 = ptrtoint ptr %stats76 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %stats76, align 8
  %inc77 = add i64 %97, 1
  store i64 %inc77, ptr %stats76, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %do.end73, %if.then57, %if.end34.cleanup_crit_edge, %if.then33, %if.end14.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.then33 ], [ 0, %if.then57 ], [ %call60, %do.end73 ], [ 0, %if.end74 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %switch.early.test.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppn) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufshpb_iterate_rgn(ptr noundef %hpb, i32 noundef %rgn_idx, i32 noundef %srgn_idx, i32 noundef %srgn_offset, i32 noundef %cnt, i1 noundef zeroext %set_dirty) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rgn_tbl = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 3
  %rgn_state_lock = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 2
  %last_srgn_entries = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 24
  %entries_per_srgn = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 29
  %is_hcm = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 33
  %activation_thld = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 35, i32 1
  %rsp_list_lock = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 5
  %lh_act_srgn.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 6, i32 1
  %rb_active_cnt.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 34, i32 3
  %sdev_ufs_lu = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 1
  %srgns_per_rgn = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 25
  br label %next_srgn

next_srgn:                                        ; preds = %if.end95.next_srgn_crit_edge, %entry
  %prev_srgn.0 = phi ptr [ null, %entry ], [ %prev_srgn.1, %if.end95.next_srgn_crit_edge ]
  %cnt.addr.0 = phi i32 [ %cnt, %entry ], [ %sub102, %if.end95.next_srgn_crit_edge ]
  %srgn_offset.addr.0 = phi i32 [ %srgn_offset, %entry ], [ 0, %if.end95.next_srgn_crit_edge ]
  %srgn_idx.addr.0 = phi i32 [ %srgn_idx, %entry ], [ %spec.select153, %if.end95.next_srgn_crit_edge ]
  %rgn_idx.addr.0 = phi i32 [ %rgn_idx, %entry ], [ %spec.select154, %if.end95.next_srgn_crit_edge ]
  %0 = ptrtoint ptr %rgn_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rgn_tbl, align 4
  %add.ptr = getelementptr %struct.ufshpb_region, ptr %1, i32 %rgn_idx.addr.0
  %srgn_tbl = getelementptr %struct.ufshpb_region, ptr %1, i32 %rgn_idx.addr.0, i32 1
  %2 = ptrtoint ptr %srgn_tbl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %srgn_tbl, align 4
  %add.ptr1 = getelementptr %struct.ufshpb_subregion, ptr %3, i32 %srgn_idx.addr.0
  %is_last = getelementptr %struct.ufshpb_subregion, ptr %3, i32 %srgn_idx.addr.0, i32 4
  %4 = ptrtoint ptr %is_last to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_last, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %entries_per_srgn.last_srgn_entries = select i1 %tobool.not, ptr %entries_per_srgn, ptr %last_srgn_entries, !prof !346
  %6 = ptrtoint ptr %entries_per_srgn.last_srgn_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %bitmap_len.0 = load i32, ptr %entries_per_srgn.last_srgn_entries, align 4
  %add = add i32 %srgn_offset.addr.0, %cnt.addr.0
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %bitmap_len.0)
  %cmp = icmp sgt i32 %add, %bitmap_len.0
  %sub = sub i32 %bitmap_len.0, %srgn_offset.addr.0
  %set_bit_len.0 = select i1 %cmp, i32 %sub, i32 %cnt.addr.0
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rgn_state_lock) #9
  %rgn_state = getelementptr %struct.ufshpb_region, ptr %1, i32 %rgn_idx.addr.0, i32 2
  %7 = ptrtoint ptr %rgn_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rgn_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp13.not = icmp eq i32 %8, 0
  br i1 %cmp13.not, label %next_srgn.if.end34_crit_edge, label %if.then15

next_srgn.if.end34_crit_edge:                     ; preds = %next_srgn
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then15:                                        ; preds = %next_srgn
  br i1 %set_dirty, label %if.then17, label %if.else22

if.then17:                                        ; preds = %if.then15
  %srgn_state = getelementptr %struct.ufshpb_subregion, ptr %3, i32 %srgn_idx.addr.0, i32 1
  %9 = ptrtoint ptr %srgn_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %srgn_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp18 = icmp eq i32 %10, 2
  br i1 %cmp18, label %if.then20, label %if.then17.if.end34_crit_edge

if.then17.if.end34_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then20:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr1, align 4
  %ppn_dirty = getelementptr inbounds %struct.ufshpb_map_ctx, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ppn_dirty to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ppn_dirty, align 4
  tail call void @__bitmap_set(ptr noundef %14, i32 noundef %srgn_offset.addr.0, i32 noundef %set_bit_len.0) #9
  br label %if.end34

if.else22:                                        ; preds = %if.then15
  %15 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool23.not = icmp eq i8 %16, 0
  br i1 %tobool23.not, label %if.else22.if.end34_crit_edge, label %if.then24

if.else22.if.end34_crit_edge:                     ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then24:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i64 @ktime_get() #9
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  %read_timeout_ms = getelementptr inbounds %struct.ufshpb_lu, ptr %18, i32 0, i32 35, i32 5
  %19 = ptrtoint ptr %read_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %read_timeout_ms, align 4
  %conv27 = zext i32 %20 to i64
  %mul.i = mul nuw nsw i64 %conv27, 1000000
  %add.i = add i64 %mul.i, %call25
  %read_timeout = getelementptr %struct.ufshpb_region, ptr %1, i32 %rgn_idx.addr.0, i32 10
  %21 = ptrtoint ptr %read_timeout to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %add.i, ptr %read_timeout, align 8
  %read_timeout_expiries = getelementptr inbounds %struct.ufshpb_lu, ptr %18, i32 0, i32 35, i32 6
  %22 = ptrtoint ptr %read_timeout_expiries to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %read_timeout_expiries, align 8
  %read_timeout_expiries31 = getelementptr %struct.ufshpb_region, ptr %1, i32 %rgn_idx.addr.0, i32 11
  %24 = ptrtoint ptr %read_timeout_expiries31 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %read_timeout_expiries31, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then24, %if.else22.if.end34_crit_edge, %if.then20, %if.then17.if.end34_crit_edge, %next_srgn.if.end34_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rgn_state_lock, i32 noundef %call10) #9
  %25 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool37.not = icmp eq i8 %26, 0
  %cmp39.not = icmp eq ptr %prev_srgn.0, %add.ptr1
  %or.cond = select i1 %tobool37.not, i1 true, i1 %cmp39.not
  br i1 %or.cond, label %if.end34.if.end95_crit_edge, label %if.then41

if.end34.if.end95_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then41:                                        ; preds = %if.end34
  %rgn_lock = getelementptr %struct.ufshpb_region, ptr %1, i32 %rgn_idx.addr.0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %rgn_lock) #9
  %reads = getelementptr %struct.ufshpb_subregion, ptr %3, i32 %srgn_idx.addr.0, i32 5
  %27 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reads, align 4
  br i1 %set_dirty, label %if.then43, label %if.else47

if.then43:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %reads44 = getelementptr %struct.ufshpb_region, ptr %1, i32 %rgn_idx.addr.0, i32 9
  %29 = ptrtoint ptr %reads44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reads44, align 4
  %sub45 = sub i32 %30, %28
  store i32 %sub45, ptr %reads44, align 4
  %31 = ptrtoint ptr %reads to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %reads, align 4
  %rgn_flags = getelementptr %struct.ufshpb_region, ptr %1, i32 %rgn_idx.addr.0, i32 7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %rgn_flags) #9
  tail call void @_raw_spin_unlock(ptr noundef %rgn_lock) #9
  br label %lor.lhs.false

if.else47:                                        ; preds = %if.then41
  %inc = add i32 %28, 1
  %32 = ptrtoint ptr %reads to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %inc, ptr %reads, align 4
  %reads49 = getelementptr %struct.ufshpb_region, ptr %1, i32 %rgn_idx.addr.0, i32 9
  %33 = ptrtoint ptr %reads49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %reads49, align 4
  %inc50 = add i32 %34, 1
  store i32 %inc50, ptr %reads49, align 4
  %35 = load i32, ptr %reads, align 4
  %36 = ptrtoint ptr %activation_thld to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %activation_thld, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp53 = icmp eq i32 %35, %37
  tail call void @_raw_spin_unlock(ptr noundef %rgn_lock) #9
  br i1 %cmp53, label %if.else47.do.body66_crit_edge, label %if.else47.lor.lhs.false_crit_edge

if.else47.lor.lhs.false_crit_edge:                ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

if.else47.do.body66_crit_edge:                    ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body66

lor.lhs.false:                                    ; preds = %if.else47.lor.lhs.false_crit_edge, %if.then43
  %rgn_flags61 = getelementptr %struct.ufshpb_region, ptr %1, i32 %rgn_idx.addr.0, i32 7
  %call62 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %rgn_flags61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %lor.lhs.false.if.end95_crit_edge, label %lor.lhs.false.do.body66_crit_edge

lor.lhs.false.do.body66_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body66

lor.lhs.false.if.end95_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

do.body66:                                        ; preds = %lor.lhs.false.do.body66_crit_edge, %if.else47.do.body66_crit_edge
  %call73 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsp_list_lock) #9
  %38 = ptrtoint ptr %rgn_tbl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rgn_tbl, align 4
  %srgn_tbl.i = getelementptr %struct.ufshpb_region, ptr %39, i32 %rgn_idx.addr.0, i32 1
  %40 = ptrtoint ptr %srgn_tbl.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %srgn_tbl.i, align 4
  %list_inact_rgn.i = getelementptr %struct.ufshpb_region, ptr %39, i32 %rgn_idx.addr.0, i32 5
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_inact_rgn.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body66.list_del_init.exit.i_crit_edge

do.body66.list_del_init.exit.i_crit_edge:         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr %struct.ufshpb_region, ptr %39, i32 %rgn_idx.addr.0, i32 5, i32 1
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %list_inact_rgn.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %list_inact_rgn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %do.body66.list_del_init.exit.i_crit_edge
  %48 = ptrtoint ptr %list_inact_rgn.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %list_inact_rgn.i, ptr %list_inact_rgn.i, align 4
  %prev.i3.i.i = getelementptr %struct.ufshpb_region, ptr %39, i32 %rgn_idx.addr.0, i32 5, i32 1
  %49 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %list_inact_rgn.i, ptr %prev.i3.i.i, align 4
  %list_act_srgn.i = getelementptr %struct.ufshpb_subregion, ptr %41, i32 %srgn_idx.addr.0, i32 6
  %50 = ptrtoint ptr %list_act_srgn.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %list_act_srgn.i, align 4
  %cmp.i.not.i = icmp eq ptr %51, %list_act_srgn.i
  br i1 %cmp.i.not.i, label %if.then.i155, label %list_del_init.exit.i.ufshpb_update_active_info.exit_crit_edge

list_del_init.exit.i.ufshpb_update_active_info.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_update_active_info.exit

if.then.i155:                                     ; preds = %list_del_init.exit.i
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i, align 4
  %call.i.i7.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_act_srgn.i, ptr noundef %53, ptr noundef %lh_act_srgn.i) #9
  br i1 %call.i.i7.i, label %if.end.i.i8.i, label %if.then.i155.ufshpb_update_active_info.exit_crit_edge

if.then.i155.ufshpb_update_active_info.exit_crit_edge: ; preds = %if.then.i155
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_update_active_info.exit

if.end.i.i8.i:                                    ; preds = %if.then.i155
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %list_act_srgn.i, ptr %prev.i.i, align 4
  %55 = ptrtoint ptr %list_act_srgn.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %lh_act_srgn.i, ptr %list_act_srgn.i, align 4
  %prev3.i.i.i = getelementptr %struct.ufshpb_subregion, ptr %41, i32 %srgn_idx.addr.0, i32 6, i32 1
  %56 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev3.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %list_act_srgn.i, ptr %53, align 4
  br label %ufshpb_update_active_info.exit

ufshpb_update_active_info.exit:                   ; preds = %if.end.i.i8.i, %if.then.i155.ufshpb_update_active_info.exit_crit_edge, %list_del_init.exit.i.ufshpb_update_active_info.exit_crit_edge
  %58 = ptrtoint ptr %rb_active_cnt.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %rb_active_cnt.i, align 8
  %inc.i = add i64 %59, 1
  store i64 %inc.i, ptr %rb_active_cnt.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsp_list_lock, i32 noundef %call73) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufshpb_iterate_rgn.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufshpb_iterate_rgn, %if.then90)) #9
          to label %if.end95 [label %if.then90], !srcloc !347

if.then90:                                        ; preds = %ufshpb_update_active_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %sdev_ufs_lu to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sdev_ufs_lu, align 4
  %sdev_dev = getelementptr inbounds %struct.scsi_device, ptr %61, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufshpb_iterate_rgn.__UNIQUE_ID_ddebug322, ptr noundef %sdev_dev, ptr noundef nonnull @.str.32, i32 noundef %rgn_idx.addr.0, i32 noundef %srgn_idx.addr.0) #9
  br label %if.end95

if.end95:                                         ; preds = %if.then90, %ufshpb_update_active_info.exit, %lor.lhs.false.if.end95_crit_edge, %if.end34.if.end95_crit_edge
  %prev_srgn.1 = phi ptr [ %prev_srgn.0, %if.end34.if.end95_crit_edge ], [ %add.ptr1, %if.then90 ], [ %add.ptr1, %lor.lhs.false.if.end95_crit_edge ], [ %add.ptr1, %ufshpb_update_active_info.exit ]
  %inc96 = add i32 %srgn_idx.addr.0, 1
  %62 = ptrtoint ptr %srgns_per_rgn to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %srgns_per_rgn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc96, i32 %63)
  %cmp97 = icmp eq i32 %inc96, %63
  %spec.select153 = select i1 %cmp97, i32 0, i32 %inc96
  %inc100 = zext i1 %cmp97 to i32
  %spec.select154 = add i32 %rgn_idx.addr.0, %inc100
  %sub102 = sub i32 %cnt.addr.0, %set_bit_len.0
  %cmp103 = icmp sgt i32 %sub102, 0
  br i1 %cmp103, label %if.end95.next_srgn_crit_edge, label %if.end106

if.end95.next_srgn_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %next_srgn

if.end106:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufshpb_fill_ppn_from_page(ptr nocapture noundef readonly %hpb, ptr nocapture noundef readonly %mctx, i32 noundef %pos, ptr nocapture noundef writeonly %ppn_buf) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div1 = lshr i32 %pos, 9
  %0 = ptrtoint ptr %mctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mctx, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %div1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end5, !prof !345

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sdev_ufs_lu = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 1
  %4 = ptrtoint ptr %sdev_ufs_lu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev_ufs_lu, align 4
  %sdev_dev = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev_dev, ptr noundef nonnull @.str.35) #12
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @page_address(ptr noundef nonnull %3) #9
  %rem = shl i32 %pos, 3
  %mul = and i32 %rem, 4088
  %add.ptr = getelementptr i8, ptr %call, i32 %mul
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %add.ptr, align 1
  %8 = ptrtoint ptr %ppn_buf to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %ppn_buf, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 1, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufshpb_rsp_upiu(ptr nocapture noundef readonly %hba, ptr nocapture noundef readonly %lrbp) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ucd_rsp_ptr = getelementptr inbounds %struct.ufshcd_lrb, ptr %lrbp, i32 0, i32 2
  %0 = ptrtoint ptr %ucd_rsp_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ucd_rsp_ptr, align 8
  %2 = getelementptr inbounds %struct.utp_upiu_rsp, ptr %1, i32 0, i32 1
  %lun = getelementptr inbounds %struct.ufshcd_lrb, ptr %lrbp, i32 0, i32 14
  %3 = ptrtoint ptr %lun to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %lun, align 8
  %lun1 = getelementptr inbounds %struct.utp_upiu_rsp, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %lun1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lun1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp.not = icmp eq i8 %4, %6
  br i1 %cmp.not, label %if.end30, label %if.then, !prof !346

if.then:                                          ; preds = %entry
  %host = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 7
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn151165 = load ptr, ptr %8, align 8
  %cmp7.not166 = icmp eq ptr %.pn151165, %8
  br i1 %cmp7.not166, label %if.then.cleanup113_crit_edge, label %for.body.lr.ph

if.then.cleanup113_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

for.body.lr.ph:                                   ; preds = %if.then
  %conv15 = zext i8 %6 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn151167 = phi ptr [ %.pn151165, %for.body.lr.ph ], [ %.pn151, %for.inc.for.body_crit_edge ]
  %hostdata.i152 = getelementptr i8, ptr %.pn151167, i32 144
  %10 = ptrtoint ptr %hostdata.i152 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hostdata.i152, align 8
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv15)
  %cmp17 = icmp eq i32 %13, %conv15
  br i1 %cmp17, label %if.end.if.end33_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.if.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn151167 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn151 = load ptr, ptr %.pn151167, align 8
  %cmp7.not = icmp eq ptr %.pn151, %8
  br i1 %cmp7.not, label %for.inc.cleanup113_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup113_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

if.end30:                                         ; preds = %entry
  %cmd = getelementptr inbounds %struct.ufshcd_lrb, ptr %lrbp, i32 0, i32 8
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd, align 8
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device, align 4
  %hostdata.i = getelementptr inbounds %struct.scsi_device, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hostdata.i, align 8
  %tobool31.not = icmp eq ptr %20, null
  br i1 %tobool31.not, label %if.end30.cleanup113_crit_edge, label %if.end30.if.end33_crit_edge

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.end30.cleanup113_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

if.end33:                                         ; preds = %if.end30.if.end33_crit_edge, %if.end.if.end33_crit_edge
  %hpb.2162 = phi ptr [ %20, %if.end30.if.end33_crit_edge ], [ %11, %if.end.if.end33_crit_edge ]
  %hpb_state.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb.2162, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %21 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp35 = icmp eq i32 %22, 0
  br i1 %cmp35, label %if.end33.cleanup113_crit_edge, label %if.end38

if.end33.cleanup113_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

if.end38:                                         ; preds = %if.end33
  %call.i.i.i154 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %23 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp40.not = icmp eq i32 %24, 1
  br i1 %cmp40.not, label %if.end38.if.end46_crit_edge, label %land.lhs.true

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end38
  %call.i.i.i156 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %25 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp43.not = icmp eq i32 %26, 2
  br i1 %cmp43.not, label %land.lhs.true.if.end46_crit_edge, label %do.end

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %sdev_ufs_lu = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb.2162, i32 0, i32 1
  %27 = ptrtoint ptr %sdev_ufs_lu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev_ufs_lu, align 4
  %sdev_dev = getelementptr inbounds %struct.scsi_device, ptr %28, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %sdev_dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #12
  br label %cleanup113

if.end46:                                         ; preds = %land.lhs.true.if.end46_crit_edge, %if.end38.if.end46_crit_edge
  %29 = ptrtoint ptr %ucd_rsp_ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ucd_rsp_ptr, align 8
  %dword_2 = getelementptr inbounds %struct.utp_upiu_header, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dword_2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dword_2, align 4
  %and = and i32 %32, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %if.then49, label %do.end57

if.then49:                                        ; preds = %if.end46
  %33 = ptrtoint ptr %hpb.2162 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hpb.2162, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %34)
  %cmp.i = icmp slt i32 %34, 127
  br i1 %cmp.i, label %if.end53, label %if.then49.cleanup113_crit_edge

if.then49.cleanup113_crit_edge:                   ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

if.end53:                                         ; preds = %if.then49
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %35 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.not.i = icmp eq i32 %36, 1
  br i1 %cmp.not.i, label %do.body1.i, label %if.end53.cleanup113_crit_edge

if.end53.cleanup113_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

do.body1.i:                                       ; preds = %if.end53
  %rsp_list_lock.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb.2162, i32 0, i32 5
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsp_list_lock.i) #9
  %lh_inact_rgn.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb.2162, i32 0, i32 7
  %37 = ptrtoint ptr %lh_inact_rgn.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %lh_inact_rgn.i, align 4
  %cmp.i.not.i = icmp eq ptr %38, %lh_inact_rgn.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %do.body1.i.if.then10.i_crit_edge

do.body1.i.if.then10.i_crit_edge:                 ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

lor.lhs.false.i:                                  ; preds = %do.body1.i
  %lh_act_srgn.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb.2162, i32 0, i32 6
  %39 = ptrtoint ptr %lh_act_srgn.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %lh_act_srgn.i, align 4
  %cmp.i23.not.i = icmp eq ptr %40, %lh_act_srgn.i
  br i1 %cmp.i23.not.i, label %if.end16.critedge.i, label %lor.lhs.false.i.if.then10.i_crit_edge

lor.lhs.false.i.if.then10.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

if.then10.i:                                      ; preds = %lor.lhs.false.i.if.then10.i_crit_edge, %do.body1.i.if.then10.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsp_list_lock.i, i32 noundef %call4.i) #9
  %41 = load ptr, ptr @ufshpb_wq, align 4
  %map_work.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb.2162, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %41, ptr noundef %map_work.i) #9
  br label %cleanup113

if.end16.critedge.i:                              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsp_list_lock.i, i32 noundef %call4.i) #9
  br label %cleanup113

do.end57:                                         ; preds = %if.end46
  %and.i = and i32 %32, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end57.cleanup113_crit_edge, label %if.end.i

do.end57.cleanup113_crit_edge:                    ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

if.end.i:                                         ; preds = %do.end57
  %sense_data_len.i = getelementptr inbounds %struct.utp_upiu_rsp, ptr %1, i32 0, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %sense_data_len.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sense_data_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %43)
  %cmp.not.i157 = icmp eq i16 %43, 18
  br i1 %cmp.not.i157, label %lor.lhs.false.i158, label %if.end.i.cleanup113_crit_edge

if.end.i.cleanup113_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

lor.lhs.false.i158:                               ; preds = %if.end.i
  %desc_type.i = getelementptr inbounds %struct.utp_upiu_rsp, ptr %1, i32 0, i32 1, i32 0, i32 3
  %44 = ptrtoint ptr %desc_type.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %desc_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %45)
  %cmp3.not.i = icmp eq i8 %45, -128
  br i1 %cmp3.not.i, label %lor.lhs.false5.i, label %lor.lhs.false.i158.cleanup113_crit_edge

lor.lhs.false.i158.cleanup113_crit_edge:          ; preds = %lor.lhs.false.i158
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false.i158
  %additional_len.i = getelementptr inbounds %struct.utp_upiu_rsp, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %additional_len.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %additional_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %47)
  %cmp7.not.i = icmp eq i8 %47, 16
  br i1 %cmp7.not.i, label %lor.lhs.false9.i, label %lor.lhs.false5.i.cleanup113_crit_edge

lor.lhs.false5.i.cleanup113_crit_edge:            ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false5.i
  %active_rgn_cnt.i = getelementptr inbounds %struct.utp_upiu_rsp, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 4
  %48 = ptrtoint ptr %active_rgn_cnt.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %active_rgn_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %49)
  %cmp11.i = icmp ugt i8 %49, 2
  br i1 %cmp11.i, label %lor.lhs.false9.i.cleanup113_crit_edge, label %lor.lhs.false13.i

lor.lhs.false9.i.cleanup113_crit_edge:            ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

lor.lhs.false13.i:                                ; preds = %lor.lhs.false9.i
  %inactive_rgn_cnt.i = getelementptr inbounds %struct.utp_upiu_rsp, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 5
  %50 = ptrtoint ptr %inactive_rgn_cnt.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %inactive_rgn_cnt.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %51)
  %cmp15.i = icmp ugt i8 %51, 2
  br i1 %cmp15.i, label %lor.lhs.false13.i.cleanup113_crit_edge, label %lor.lhs.false17.i

lor.lhs.false13.i.cleanup113_crit_edge:           ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

lor.lhs.false17.i:                                ; preds = %lor.lhs.false13.i
  %hpb_op.i = getelementptr inbounds %struct.utp_upiu_rsp, ptr %1, i32 0, i32 1, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %hpb_op.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %hpb_op.i, align 4
  %54 = zext i8 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.154)
  switch i8 %53, label %lor.lhs.false17.i.if.end32.i_crit_edge [
    i8 0, label %lor.lhs.false17.i.cleanup113_crit_edge
    i8 1, label %land.lhs.true.i
  ]

lor.lhs.false17.i.cleanup113_crit_edge:           ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

lor.lhs.false17.i.if.end32.i_crit_edge:           ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool27.not.i = icmp eq i8 %49, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool30.not.i = icmp eq i8 %51, 0
  %or.cond.i = select i1 %tobool27.not.i, i1 %tobool30.not.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i.cleanup113_crit_edge, label %land.lhs.true.i.if.end32.i_crit_edge

land.lhs.true.i.if.end32.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32.i

land.lhs.true.i.cleanup113_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

if.end32.i:                                       ; preds = %land.lhs.true.i.if.end32.i_crit_edge, %lor.lhs.false17.i.if.end32.i_crit_edge
  %55 = ptrtoint ptr %lun1 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %lun1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %56)
  %cmp.i.i = icmp ult i8 %56, 127
  br i1 %cmp.i.i, label %if.end60, label %do.end.i

do.end.i:                                         ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 8
  %59 = ptrtoint ptr %lun to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %lun, align 8
  %conv36.i = zext i8 %60 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.37, i32 noundef %conv36.i) #12
  br label %cleanup113

if.end60:                                         ; preds = %if.end32.i
  %rb_noti_cnt = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb.2162, i32 0, i32 34, i32 2
  %61 = ptrtoint ptr %rb_noti_cnt to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %rb_noti_cnt, align 8
  %inc = add i64 %62, 1
  store i64 %inc, ptr %rb_noti_cnt, align 8
  %63 = ptrtoint ptr %hpb_op.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %hpb_op.i, align 4
  %65 = zext i8 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.155)
  switch i8 %64, label %do.end108 [
    i8 1, label %sw.bb
    i8 2, label %do.end74
  ]

sw.bb:                                            ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %and)
  %cmp62.not = icmp eq i32 %and, 20
  br i1 %cmp62.not, label %sw.bb.if.end70_crit_edge, label %do.end67

sw.bb.if.end70_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

do.end67:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %sdev_ufs_lu68 = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb.2162, i32 0, i32 1
  %66 = ptrtoint ptr %sdev_ufs_lu68 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sdev_ufs_lu68, align 4
  %sdev_dev69 = getelementptr inbounds %struct.scsi_device, ptr %67, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %sdev_dev69, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10) #12
  br label %if.end70

if.end70:                                         ; preds = %do.end67, %sw.bb.if.end70_crit_edge
  tail call fastcc void @ufshpb_rsp_req_region_update(ptr noundef nonnull %hpb.2162, ptr noundef %2)
  br label %cleanup113

do.end74:                                         ; preds = %if.end60
  %sdev_ufs_lu75 = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb.2162, i32 0, i32 1
  %68 = ptrtoint ptr %sdev_ufs_lu75 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sdev_ufs_lu75, align 4
  %sdev_dev76 = getelementptr inbounds %struct.scsi_device, ptr %69, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %sdev_dev76, ptr noundef nonnull @.str.16) #12
  %is_hcm = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb.2162, i32 0, i32 33
  %70 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool77.not = icmp eq i8 %71, 0
  br i1 %tobool77.not, label %do.end74.cleanup113_crit_edge, label %if.then78

do.end74.cleanup113_crit_edge:                    ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

if.then78:                                        ; preds = %do.end74
  %host81 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 7
  %72 = ptrtoint ptr %host81 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %host81, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pn168 = load ptr, ptr %73, align 8
  %cmp90.not169 = icmp eq ptr %.pn168, %73
  br i1 %cmp90.not169, label %if.then78.cleanup113_crit_edge, label %if.then78.for.body94_crit_edge

if.then78.for.body94_crit_edge:                   ; preds = %if.then78
  br label %for.body94

if.then78.cleanup113_crit_edge:                   ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

for.body94:                                       ; preds = %if.end97.for.body94_crit_edge, %if.then78.for.body94_crit_edge
  %.pn170 = phi ptr [ %.pn, %if.end97.for.body94_crit_edge ], [ %.pn168, %if.then78.for.body94_crit_edge ]
  %hostdata = getelementptr i8, ptr %.pn170, i32 144
  %75 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hostdata, align 8
  %tobool95.not = icmp eq ptr %76, null
  br i1 %tobool95.not, label %for.body94.if.end97_crit_edge, label %if.then96

for.body94.if.end97_crit_edge:                    ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then96:                                        ; preds = %for.body94
  %lru_info1.i = getelementptr inbounds %struct.ufshpb_lu, ptr %76, i32 0, i32 16
  %rgn_state_lock.i = getelementptr inbounds %struct.ufshpb_lu, ptr %76, i32 0, i32 2
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rgn_state_lock.i) #9
  %77 = ptrtoint ptr %lru_info1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn21.i = load ptr, ptr %lru_info1.i, align 4
  %cmp8.not22.i = icmp eq ptr %.pn21.i, %lru_info1.i
  br i1 %cmp8.not22.i, label %if.then96.ufshpb_dev_reset_handler.exit_crit_edge, label %if.then96.for.body.i_crit_edge

if.then96.for.body.i_crit_edge:                   ; preds = %if.then96
  br label %for.body.i

if.then96.ufshpb_dev_reset_handler.exit_crit_edge: ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_dev_reset_handler.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then96.for.body.i_crit_edge
  %.pn23.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn21.i, %if.then96.for.body.i_crit_edge ]
  %rgn_flags.i = getelementptr i8, ptr %.pn23.i, i32 8
  tail call void @_set_bit(i32 noundef 1, ptr noundef %rgn_flags.i) #9
  %78 = ptrtoint ptr %.pn23.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn.i = load ptr, ptr %.pn23.i, align 4
  %cmp8.not.i = icmp eq ptr %.pn.i, %lru_info1.i
  br i1 %cmp8.not.i, label %for.body.i.ufshpb_dev_reset_handler.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.ufshpb_dev_reset_handler.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_dev_reset_handler.exit

ufshpb_dev_reset_handler.exit:                    ; preds = %for.body.i.ufshpb_dev_reset_handler.exit_crit_edge, %if.then96.ufshpb_dev_reset_handler.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rgn_state_lock.i, i32 noundef %call3.i) #9
  br label %if.end97

if.end97:                                         ; preds = %ufshpb_dev_reset_handler.exit, %for.body94.if.end97_crit_edge
  %79 = ptrtoint ptr %.pn170 to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pn = load ptr, ptr %.pn170, align 8
  %80 = ptrtoint ptr %host81 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %host81, align 4
  %cmp90.not = icmp eq ptr %.pn, %81
  br i1 %cmp90.not, label %if.end97.cleanup113_crit_edge, label %if.end97.for.body94_crit_edge

if.end97.for.body94_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body94

if.end97.cleanup113_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup113

do.end108:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %conv61 = zext i8 %64 to i32
  %sdev_ufs_lu109 = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb.2162, i32 0, i32 1
  %82 = ptrtoint ptr %sdev_ufs_lu109 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sdev_ufs_lu109, align 4
  %sdev_dev110 = getelementptr inbounds %struct.scsi_device, ptr %83, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %sdev_dev110, ptr noundef nonnull @.str.19, i32 noundef %conv61) #12
  br label %cleanup113

cleanup113:                                       ; preds = %do.end108, %if.end97.cleanup113_crit_edge, %if.then78.cleanup113_crit_edge, %do.end74.cleanup113_crit_edge, %if.end70, %do.end.i, %land.lhs.true.i.cleanup113_crit_edge, %lor.lhs.false17.i.cleanup113_crit_edge, %lor.lhs.false13.i.cleanup113_crit_edge, %lor.lhs.false9.i.cleanup113_crit_edge, %lor.lhs.false5.i.cleanup113_crit_edge, %lor.lhs.false.i158.cleanup113_crit_edge, %if.end.i.cleanup113_crit_edge, %do.end57.cleanup113_crit_edge, %if.end16.critedge.i, %if.then10.i, %if.end53.cleanup113_crit_edge, %if.then49.cleanup113_crit_edge, %do.end, %if.end33.cleanup113_crit_edge, %if.end30.cleanup113_crit_edge, %for.inc.cleanup113_crit_edge, %if.then.cleanup113_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufshpb_rsp_req_region_update(ptr noundef %hpb, ptr nocapture noundef readonly %rsp_field) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %active_rgn_cnt = getelementptr inbounds %struct.utp_hpb_rsp, ptr %rsp_field, i32 0, i32 7
  %0 = ptrtoint ptr %active_rgn_cnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %active_rgn_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp174.not = icmp eq i8 %1, 0
  br i1 %cmp174.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rgn_tbl = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 3
  %is_hcm = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 33
  %sdev_ufs_lu = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 1
  %rsp_list_lock = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 5
  %lh_act_srgn.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 6, i32 1
  %rb_active_cnt.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 34, i32 3
  %rgn_state_lock = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0175 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.utp_hpb_rsp, ptr %rsp_field, i32 0, i32 9, i32 %i.0175
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %conv2 = zext i16 %3 to i32
  %active_srgn = getelementptr %struct.utp_hpb_rsp, ptr %rsp_field, i32 0, i32 9, i32 %i.0175, i32 1
  %4 = ptrtoint ptr %active_srgn to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %active_srgn, align 2
  %conv5 = zext i16 %5 to i32
  %6 = ptrtoint ptr %rgn_tbl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rgn_tbl, align 4
  %8 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %for.body.do.body10_crit_edge, label %land.lhs.true

for.body.do.body10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

land.lhs.true:                                    ; preds = %for.body
  %rgn_state = getelementptr %struct.ufshpb_region, ptr %7, i32 %conv2, i32 2
  %10 = ptrtoint ptr %rgn_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rgn_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp7.not = icmp eq i32 %11, 1
  br i1 %cmp7.not, label %lor.lhs.false, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %land.lhs.true
  %rgn_flags.i = getelementptr %struct.ufshpb_region, ptr %7, i32 %conv2, i32 7
  %12 = ptrtoint ptr %rgn_flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %rgn_flags.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.do.body10_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false.do.body10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

do.body10:                                        ; preds = %lor.lhs.false.do.body10_crit_edge, %for.body.do.body10_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufshpb_rsp_req_region_update.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufshpb_rsp_req_region_update, %if.then15)) #9
          to label %do.end18 [label %if.then15], !srcloc !347

if.then15:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %sdev_ufs_lu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev_ufs_lu, align 4
  %sdev_dev = getelementptr inbounds %struct.scsi_device, ptr %15, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufshpb_rsp_req_region_update.__UNIQUE_ID_ddebug326, ptr noundef %sdev_dev, ptr noundef nonnull @.str.40, i32 noundef %i.0175, i32 noundef %conv2, i32 noundef %conv5) #9
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.body10
  tail call void @_raw_spin_lock(ptr noundef %rsp_list_lock) #9
  %16 = ptrtoint ptr %rgn_tbl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rgn_tbl, align 4
  %srgn_tbl.i = getelementptr %struct.ufshpb_region, ptr %17, i32 %conv2, i32 1
  %18 = ptrtoint ptr %srgn_tbl.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %srgn_tbl.i, align 4
  %list_inact_rgn.i = getelementptr %struct.ufshpb_region, ptr %17, i32 %conv2, i32 5
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_inact_rgn.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end18.list_del_init.exit.i_crit_edge

do.end18.list_del_init.exit.i_crit_edge:          ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr %struct.ufshpb_region, ptr %17, i32 %conv2, i32 5, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %list_inact_rgn.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list_inact_rgn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %do.end18.list_del_init.exit.i_crit_edge
  %26 = ptrtoint ptr %list_inact_rgn.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list_inact_rgn.i, ptr %list_inact_rgn.i, align 4
  %prev.i3.i.i = getelementptr %struct.ufshpb_region, ptr %17, i32 %conv2, i32 5, i32 1
  %27 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %list_inact_rgn.i, ptr %prev.i3.i.i, align 4
  %list_act_srgn.i = getelementptr %struct.ufshpb_subregion, ptr %19, i32 %conv5, i32 6
  %28 = ptrtoint ptr %list_act_srgn.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %list_act_srgn.i, align 4
  %cmp.i.not.i = icmp eq ptr %29, %list_act_srgn.i
  br i1 %cmp.i.not.i, label %if.then.i, label %list_del_init.exit.i.ufshpb_update_active_info.exit_crit_edge

list_del_init.exit.i.ufshpb_update_active_info.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_update_active_info.exit

if.then.i:                                        ; preds = %list_del_init.exit.i
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i, align 4
  %call.i.i7.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_act_srgn.i, ptr noundef %31, ptr noundef %lh_act_srgn.i) #9
  br i1 %call.i.i7.i, label %if.end.i.i8.i, label %if.then.i.ufshpb_update_active_info.exit_crit_edge

if.then.i.ufshpb_update_active_info.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_update_active_info.exit

if.end.i.i8.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %list_act_srgn.i, ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %list_act_srgn.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %lh_act_srgn.i, ptr %list_act_srgn.i, align 4
  %prev3.i.i.i = getelementptr %struct.ufshpb_subregion, ptr %19, i32 %conv5, i32 6, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %list_act_srgn.i, ptr %31, align 4
  br label %ufshpb_update_active_info.exit

ufshpb_update_active_info.exit:                   ; preds = %if.end.i.i8.i, %if.then.i.ufshpb_update_active_info.exit_crit_edge, %list_del_init.exit.i.ufshpb_update_active_info.exit_crit_edge
  %36 = ptrtoint ptr %rb_active_cnt.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %rb_active_cnt.i, align 8
  %inc.i = add i64 %37, 1
  store i64 %inc.i, ptr %rb_active_cnt.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %rsp_list_lock) #9
  %srgn_tbl = getelementptr %struct.ufshpb_region, ptr %7, i32 %conv2, i32 1
  %38 = ptrtoint ptr %srgn_tbl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %srgn_tbl, align 4
  tail call void @_raw_spin_lock(ptr noundef %rgn_state_lock) #9
  %srgn_state = getelementptr %struct.ufshpb_subregion, ptr %39, i32 %conv5, i32 1
  %40 = ptrtoint ptr %srgn_state to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %srgn_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp21 = icmp eq i32 %41, 2
  br i1 %cmp21, label %if.then23, label %ufshpb_update_active_info.exit.if.end25_crit_edge

ufshpb_update_active_info.exit.if.end25_crit_edge: ; preds = %ufshpb_update_active_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then23:                                        ; preds = %ufshpb_update_active_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %srgn_state to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %srgn_state, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %ufshpb_update_active_info.exit.if.end25_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rgn_state_lock) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0175, 1
  %43 = ptrtoint ptr %active_rgn_cnt to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %active_rgn_cnt, align 2
  %conv = zext i8 %44 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %is_hcm27 = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 33
  %45 = ptrtoint ptr %is_hcm27 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %is_hcm27, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool28.not = icmp eq i8 %46, 0
  br i1 %tobool28.not, label %for.cond31.preheader, label %for.end.do.body85_crit_edge

for.end.do.body85_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body85

for.cond31.preheader:                             ; preds = %for.end
  %inactive_rgn_cnt = getelementptr inbounds %struct.utp_hpb_rsp, ptr %rsp_field, i32 0, i32 8
  %47 = ptrtoint ptr %inactive_rgn_cnt to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %inactive_rgn_cnt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp33179.not = icmp eq i8 %48, 0
  br i1 %cmp33179.not, label %for.cond31.preheader.do.body85_crit_edge, label %for.body35.lr.ph

for.cond31.preheader.do.body85_crit_edge:         ; preds = %for.cond31.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body85

for.body35.lr.ph:                                 ; preds = %for.cond31.preheader
  %sdev_ufs_lu51 = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 1
  %rsp_list_lock56 = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 5
  %rgn_tbl58 = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 3
  %rgn_state_lock60 = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 2
  br label %for.body35

for.body35:                                       ; preds = %if.end80.for.body35_crit_edge, %for.body35.lr.ph
  %i.1180 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc83, %if.end80.for.body35_crit_edge ]
  %arrayidx36 = getelementptr %struct.utp_hpb_rsp, ptr %rsp_field, i32 0, i32 10, i32 %i.1180
  %49 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx36, align 2
  %conv37 = zext i16 %50 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufshpb_rsp_req_region_update.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufshpb_rsp_req_region_update, %if.then50)) #9
          to label %do.end55 [label %if.then50], !srcloc !347

if.then50:                                        ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %sdev_ufs_lu51 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sdev_ufs_lu51, align 4
  %sdev_dev52 = getelementptr inbounds %struct.scsi_device, ptr %52, i32 0, i32 56
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufshpb_rsp_req_region_update.__UNIQUE_ID_ddebug327, ptr noundef %sdev_dev52, ptr noundef nonnull @.str.41, i32 noundef %i.1180, i32 noundef %conv37) #9
  br label %do.end55

do.end55:                                         ; preds = %if.then50, %for.body35
  tail call void @_raw_spin_lock(ptr noundef %rsp_list_lock56) #9
  tail call fastcc void @ufshpb_update_inactive_info(ptr noundef %hpb, i32 noundef %conv37)
  tail call void @_raw_spin_unlock(ptr noundef %rsp_list_lock56) #9
  %53 = ptrtoint ptr %rgn_tbl58 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rgn_tbl58, align 4
  tail call void @_raw_spin_lock(ptr noundef %rgn_state_lock60) #9
  %rgn_state61 = getelementptr %struct.ufshpb_region, ptr %54, i32 %conv37, i32 2
  %55 = ptrtoint ptr %rgn_state61 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rgn_state61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp62.not = icmp eq i32 %56, 0
  br i1 %cmp62.not, label %do.end55.if.end80_crit_edge, label %for.cond65.preheader

do.end55.if.end80_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

for.cond65.preheader:                             ; preds = %do.end55
  %srgn_cnt = getelementptr %struct.ufshpb_region, ptr %54, i32 %conv37, i32 4
  %57 = ptrtoint ptr %srgn_cnt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %srgn_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp66176 = icmp sgt i32 %58, 0
  br i1 %cmp66176, label %for.body68.lr.ph, label %for.cond65.preheader.if.end80_crit_edge

for.cond65.preheader.if.end80_crit_edge:          ; preds = %for.cond65.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

for.body68.lr.ph:                                 ; preds = %for.cond65.preheader
  %srgn_tbl69 = getelementptr %struct.ufshpb_region, ptr %54, i32 %conv37, i32 1
  br label %for.body68

for.body68:                                       ; preds = %for.inc77.for.body68_crit_edge, %for.body68.lr.ph
  %srgn_i.0177 = phi i32 [ 0, %for.body68.lr.ph ], [ %inc78, %for.inc77.for.body68_crit_edge ]
  %59 = ptrtoint ptr %srgn_tbl69 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %srgn_tbl69, align 4
  %srgn_state71 = getelementptr %struct.ufshpb_subregion, ptr %60, i32 %srgn_i.0177, i32 1
  %61 = ptrtoint ptr %srgn_state71 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %srgn_state71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp72 = icmp eq i32 %62, 2
  br i1 %cmp72, label %if.then74, label %for.body68.for.inc77_crit_edge

for.body68.for.inc77_crit_edge:                   ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc77

if.then74:                                        ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %srgn_state71 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %srgn_state71, align 4
  br label %for.inc77

for.inc77:                                        ; preds = %if.then74, %for.body68.for.inc77_crit_edge
  %inc78 = add nuw nsw i32 %srgn_i.0177, 1
  %64 = ptrtoint ptr %srgn_cnt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %srgn_cnt, align 8
  %cmp66 = icmp slt i32 %inc78, %65
  br i1 %cmp66, label %for.inc77.for.body68_crit_edge, label %for.inc77.if.end80_crit_edge

for.inc77.if.end80_crit_edge:                     ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

for.inc77.for.body68_crit_edge:                   ; preds = %for.inc77
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body68

if.end80:                                         ; preds = %for.inc77.if.end80_crit_edge, %for.cond65.preheader.if.end80_crit_edge, %do.end55.if.end80_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rgn_state_lock60) #9
  %inc83 = add nuw nsw i32 %i.1180, 1
  %66 = ptrtoint ptr %inactive_rgn_cnt to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %inactive_rgn_cnt, align 1
  %conv32 = zext i8 %67 to i32
  %cmp33 = icmp ult i32 %inc83, %conv32
  br i1 %cmp33, label %if.end80.for.body35_crit_edge, label %if.end80.do.body85_crit_edge

if.end80.do.body85_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body85

if.end80.for.body35_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35

do.body85:                                        ; preds = %if.end80.do.body85_crit_edge, %for.cond31.preheader.do.body85_crit_edge, %for.end.do.body85_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufshpb_rsp_req_region_update.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufshpb_rsp_req_region_update, %if.then97)) #9
          to label %do.end106 [label %if.then97], !srcloc !347

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  %sdev_ufs_lu98 = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 1
  %68 = ptrtoint ptr %sdev_ufs_lu98 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sdev_ufs_lu98, align 4
  %sdev_dev99 = getelementptr inbounds %struct.scsi_device, ptr %69, i32 0, i32 56
  %70 = ptrtoint ptr %active_rgn_cnt to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %active_rgn_cnt, align 2
  %conv101 = zext i8 %71 to i32
  %inactive_rgn_cnt102 = getelementptr inbounds %struct.utp_hpb_rsp, ptr %rsp_field, i32 0, i32 8
  %72 = ptrtoint ptr %inactive_rgn_cnt102 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %inactive_rgn_cnt102, align 1
  %conv103 = zext i8 %73 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufshpb_rsp_req_region_update.__UNIQUE_ID_ddebug328, ptr noundef %sdev_dev99, ptr noundef nonnull @.str.42, i32 noundef %conv101, i32 noundef %conv103) #9
  br label %do.end106

do.end106:                                        ; preds = %if.then97, %do.body85
  %hpb_state.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 4
  %call.i.i.i169 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %74 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp108 = icmp eq i32 %75, 1
  br i1 %cmp108, label %if.then110, label %do.end106.if.end112_crit_edge

do.end106.if.end112_crit_edge:                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then110:                                       ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  %76 = load ptr, ptr @ufshpb_wq, align 4
  %map_work = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 15
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %76, ptr noundef %map_work) #9
  br label %if.end112

if.end112:                                        ; preds = %if.then110, %do.end106.if.end112_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufshpb_reset(ptr nocapture noundef readonly %hba) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 7
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %call = tail call ptr @__scsi_iterate_devices(ptr noundef %1, ptr noundef null) #9
  %tobool.not15 = icmp eq ptr %call, null
  br i1 %tobool.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %sdev.016 = phi ptr [ %call7, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.016, i32 0, i32 21
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %hpb_state.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.not = icmp eq i32 %5, 4
  br i1 %cmp.not, label %if.end5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 1, ptr %hpb_state.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end5, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %call7 = tail call ptr @__scsi_iterate_devices(ptr noundef %8, ptr noundef nonnull %sdev.016) #9
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__scsi_iterate_devices(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufshpb_reset_host(ptr nocapture noundef readonly %hba) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 7
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %call = tail call ptr @__scsi_iterate_devices(ptr noundef %1, ptr noundef null) #9
  %tobool.not19 = icmp eq ptr %call, null
  br i1 %tobool.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %sdev.020 = phi ptr [ %call7, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.020, i32 0, i32 21
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %hpb_state.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %call.i.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 4, ptr %hpb_state.i, align 4
  %is_hcm.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 33
  %7 = ptrtoint ptr %is_hcm.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_hcm.i, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end5.ufshpb_cancel_jobs.exit_crit_edge, label %if.then.i

if.end5.ufshpb_cancel_jobs.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_cancel_jobs.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %ufshpb_read_to_work.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 18
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ufshpb_read_to_work.i) #9
  %ufshpb_normalization_work.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 17
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %ufshpb_normalization_work.i) #9
  br label %ufshpb_cancel_jobs.exit

ufshpb_cancel_jobs.exit:                          ; preds = %if.then.i, %if.end5.ufshpb_cancel_jobs.exit_crit_edge
  %map_work.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 15
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %map_work.i) #9
  %rsp_list_lock.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 5
  %call2.i17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsp_list_lock.i) #9
  %lh_inact_rgn.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %lh_inact_rgn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lh_inact_rgn.i, align 8
  %cmp12.not62.i = icmp eq ptr %10, %lh_inact_rgn.i
  br i1 %cmp12.not62.i, label %ufshpb_cancel_jobs.exit.for.end.i_crit_edge, label %ufshpb_cancel_jobs.exit.for.body.i_crit_edge

ufshpb_cancel_jobs.exit.for.body.i_crit_edge:     ; preds = %ufshpb_cancel_jobs.exit
  br label %for.body.i

ufshpb_cancel_jobs.exit.for.end.i_crit_edge:      ; preds = %ufshpb_cancel_jobs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %ufshpb_cancel_jobs.exit.for.body.i_crit_edge
  %11 = phi ptr [ %.pn.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %10, %ufshpb_cancel_jobs.exit.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %11, align 4
  %call.i.i.i18 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #9
  br i1 %call.i.i.i18, label %if.end.i.i.i, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %11, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_del_init.exit.i_crit_edge
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %11, ptr %11, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %11, ptr %prev.i3.i.i, align 4
  %cmp12.not.i = icmp eq ptr %.pn.i, %lh_inact_rgn.i
  br i1 %cmp12.not.i, label %list_del_init.exit.i.for.end.i_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del_init.exit.i.for.end.i_crit_edge:         ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %list_del_init.exit.i.for.end.i_crit_edge, %ufshpb_cancel_jobs.exit.for.end.i_crit_edge
  %lh_act_srgn.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %lh_act_srgn.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lh_act_srgn.i, align 8
  %cmp31.not63.i = icmp eq ptr %22, %lh_act_srgn.i
  br i1 %cmp31.not63.i, label %for.end.i.ufshpb_discard_rsp_lists.exit_crit_edge, label %for.end.i.for.body34.i_crit_edge

for.end.i.for.body34.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body34.i

for.end.i.ufshpb_discard_rsp_lists.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_discard_rsp_lists.exit

for.body34.i:                                     ; preds = %list_del_init.exit61.i.for.body34.i_crit_edge, %for.end.i.for.body34.i_crit_edge
  %23 = phi ptr [ %.pn55.i, %list_del_init.exit61.i.for.body34.i_crit_edge ], [ %22, %for.end.i.for.body34.i_crit_edge ]
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn55.i = load ptr, ptr %23, align 4
  %call.i.i56.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %23) #9
  br i1 %call.i.i56.i, label %if.end.i.i59.i, label %for.body34.i.list_del_init.exit61.i_crit_edge

for.body34.i.list_del_init.exit61.i_crit_edge:    ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit61.i

if.end.i.i59.i:                                   ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i57.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i57.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %23, align 4
  %prev1.i.i.i58.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i58.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del_init.exit61.i

list_del_init.exit61.i:                           ; preds = %if.end.i.i59.i, %for.body34.i.list_del_init.exit61.i_crit_edge
  %31 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %23, ptr %23, align 4
  %prev.i3.i60.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i3.i60.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %23, ptr %prev.i3.i60.i, align 4
  %cmp31.not.i = icmp eq ptr %.pn55.i, %lh_act_srgn.i
  br i1 %cmp31.not.i, label %list_del_init.exit61.i.ufshpb_discard_rsp_lists.exit_crit_edge, label %list_del_init.exit61.i.for.body34.i_crit_edge

list_del_init.exit61.i.for.body34.i_crit_edge:    ; preds = %list_del_init.exit61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.i

list_del_init.exit61.i.ufshpb_discard_rsp_lists.exit_crit_edge: ; preds = %list_del_init.exit61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_discard_rsp_lists.exit

ufshpb_discard_rsp_lists.exit:                    ; preds = %list_del_init.exit61.i.ufshpb_discard_rsp_lists.exit_crit_edge, %for.end.i.ufshpb_discard_rsp_lists.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsp_list_lock.i, i32 noundef %call2.i17) #9
  br label %for.inc

for.inc:                                          ; preds = %ufshpb_discard_rsp_lists.exit, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %33 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %host, align 4
  %call7 = tail call ptr @__scsi_iterate_devices(ptr noundef %34, ptr noundef nonnull %sdev.020) #9
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufshpb_suspend(ptr nocapture noundef readonly %hba) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 7
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %call = tail call ptr @__scsi_iterate_devices(ptr noundef %1, ptr noundef null) #9
  %tobool.not16 = icmp eq ptr %call, null
  br i1 %tobool.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %sdev.017 = phi ptr [ %call7, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.017, i32 0, i32 21
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %hpb_state.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %call.i.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 2, ptr %hpb_state.i, align 4
  %is_hcm.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 33
  %7 = ptrtoint ptr %is_hcm.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_hcm.i, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end5.ufshpb_cancel_jobs.exit_crit_edge, label %if.then.i

if.end5.ufshpb_cancel_jobs.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_cancel_jobs.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %ufshpb_read_to_work.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 18
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ufshpb_read_to_work.i) #9
  %ufshpb_normalization_work.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 17
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %ufshpb_normalization_work.i) #9
  br label %ufshpb_cancel_jobs.exit

ufshpb_cancel_jobs.exit:                          ; preds = %if.then.i, %if.end5.ufshpb_cancel_jobs.exit_crit_edge
  %map_work.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 15
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %map_work.i) #9
  br label %for.inc

for.inc:                                          ; preds = %ufshpb_cancel_jobs.exit, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host, align 4
  %call7 = tail call ptr @__scsi_iterate_devices(ptr noundef %10, ptr noundef nonnull %sdev.017) #9
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufshpb_resume(ptr nocapture noundef readonly %hba) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 7
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %call = tail call ptr @__scsi_iterate_devices(ptr noundef %1, ptr noundef null) #9
  %tobool.not30 = icmp eq ptr %call, null
  br i1 %tobool.not30, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %sdev.031 = phi ptr [ %call14, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %hostdata.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.031, i32 0, i32 21
  %2 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostdata.i, align 8
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %hpb_state.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %call.i.i.i26 = tail call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp5.not = icmp eq i32 %7, 2
  br i1 %cmp5.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %call.i.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %8 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %hpb_state.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 1
  br i1 %cmp.not.i, label %do.body1.i, label %if.end7.ufshpb_kick_map_work.exit_crit_edge

if.end7.ufshpb_kick_map_work.exit_crit_edge:      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_kick_map_work.exit

do.body1.i:                                       ; preds = %if.end7
  %rsp_list_lock.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 5
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsp_list_lock.i) #9
  %lh_inact_rgn.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %lh_inact_rgn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %lh_inact_rgn.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %lh_inact_rgn.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %do.body1.i.if.then10.i_crit_edge

do.body1.i.if.then10.i_crit_edge:                 ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

lor.lhs.false.i:                                  ; preds = %do.body1.i
  %lh_act_srgn.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %lh_act_srgn.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %lh_act_srgn.i, align 4
  %cmp.i23.not.i = icmp eq ptr %14, %lh_act_srgn.i
  br i1 %cmp.i23.not.i, label %if.end16.critedge.i, label %lor.lhs.false.i.if.then10.i_crit_edge

lor.lhs.false.i.if.then10.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

if.then10.i:                                      ; preds = %lor.lhs.false.i.if.then10.i_crit_edge, %do.body1.i.if.then10.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsp_list_lock.i, i32 noundef %call4.i) #9
  %15 = load ptr, ptr @ufshpb_wq, align 4
  %map_work.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %map_work.i) #9
  br label %ufshpb_kick_map_work.exit

if.end16.critedge.i:                              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsp_list_lock.i, i32 noundef %call4.i) #9
  br label %ufshpb_kick_map_work.exit

ufshpb_kick_map_work.exit:                        ; preds = %if.end16.critedge.i, %if.then10.i, %if.end7.ufshpb_kick_map_work.exit_crit_edge
  %is_hcm = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 33
  %16 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  br i1 %tobool8.not, label %ufshpb_kick_map_work.exit.for.inc_crit_edge, label %if.then9

ufshpb_kick_map_work.exit.for.inc_crit_edge:      ; preds = %ufshpb_kick_map_work.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then9:                                         ; preds = %ufshpb_kick_map_work.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ufshpb_read_to_work = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 18
  %timeout_polling_interval_ms = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 35, i32 7
  %18 = ptrtoint ptr %timeout_polling_interval_ms to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timeout_polling_interval_ms, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %19) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %20 = load ptr, ptr @system_wq, align 4
  %call.i.i29 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %20, ptr noundef %ufshpb_read_to_work, i32 noundef %call2.i) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %ufshpb_kick_map_work.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %host, align 4
  %call14 = tail call ptr @__scsi_iterate_devices(ptr noundef %22, ptr noundef nonnull %sdev.031) #9
  %tobool.not = icmp eq ptr %call14, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufshpb_destroy_lu(ptr nocapture readnone %hba, ptr nocapture noundef readonly %sdev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hpb_state.i = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 3, ptr %hpb_state.i, align 4
  %sdev_ufs_lu = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %sdev_ufs_lu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sdev_ufs_lu, align 4
  %hostdata = getelementptr inbounds %struct.scsi_device, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %hostdata, align 8
  %is_hcm.i = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 33
  %6 = ptrtoint ptr %is_hcm.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_hcm.i, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.ufshpb_cancel_jobs.exit_crit_edge, label %if.then.i

if.end.ufshpb_cancel_jobs.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_cancel_jobs.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ufshpb_read_to_work.i = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 18
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %ufshpb_read_to_work.i) #9
  %ufshpb_normalization_work.i = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 17
  %call1.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %ufshpb_normalization_work.i) #9
  br label %ufshpb_cancel_jobs.exit

ufshpb_cancel_jobs.exit:                          ; preds = %if.then.i, %if.end.ufshpb_cancel_jobs.exit_crit_edge
  %map_work.i = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 15
  %call2.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %map_work.i) #9
  tail call fastcc void @ufshpb_pre_req_mempool_destroy(ptr noundef nonnull %1)
  %rgns_per_lu.i = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %rgns_per_lu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rgns_per_lu.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp12.not.i = icmp eq i32 %9, 0
  br i1 %cmp12.not.i, label %ufshpb_cancel_jobs.exit.ufshpb_destroy_region_tbl.exit_crit_edge, label %for.body.lr.ph.i

ufshpb_cancel_jobs.exit.ufshpb_destroy_region_tbl.exit_crit_edge: ; preds = %ufshpb_cancel_jobs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_destroy_region_tbl.exit

for.body.lr.ph.i:                                 ; preds = %ufshpb_cancel_jobs.exit
  %rgn_tbl.i = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 3
  %pages_per_srgn.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 32
  %m_page_cache.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 37
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rgn_idx.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %rgn_tbl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rgn_tbl.i, align 4
  %rgn_state.i = getelementptr %struct.ufshpb_region, ptr %11, i32 %rgn_idx.013.i, i32 2
  %12 = ptrtoint ptr %rgn_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rgn_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.not.i = icmp eq i32 %13, 0
  br i1 %cmp1.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i11

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i11:                                      ; preds = %for.body.i
  %14 = ptrtoint ptr %rgn_state.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %rgn_state.i, align 8
  %srgn_tbl.i.i = getelementptr %struct.ufshpb_region, ptr %11, i32 %rgn_idx.013.i, i32 1
  %srgn_cnt.i.i = getelementptr %struct.ufshpb_region, ptr %11, i32 %rgn_idx.013.i, i32 4
  %15 = ptrtoint ptr %srgn_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %srgn_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp8.i.i = icmp sgt i32 %16, 0
  br i1 %cmp8.i.i, label %if.then.i11.land.rhs.i.i_crit_edge, label %if.then.i11.if.end.i_crit_edge

if.then.i11.if.end.i_crit_edge:                   ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i11.land.rhs.i.i_crit_edge:               ; preds = %if.then.i11
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %if.then.i11.land.rhs.i.i_crit_edge
  %srgn_idx.09.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ 0, %if.then.i11.land.rhs.i.i_crit_edge ]
  %17 = ptrtoint ptr %srgn_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %srgn_tbl.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.ufshpb_subregion, ptr %18, i32 %srgn_idx.09.i.i
  %tobool.not.i.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i.i, label %land.rhs.i.i.if.end.i_crit_edge, label %for.body.i.i

land.rhs.i.i.if.end.i_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %srgn_state.i.i = getelementptr %struct.ufshpb_subregion, ptr %18, i32 %srgn_idx.09.i.i, i32 1
  %19 = ptrtoint ptr %srgn_state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %srgn_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp1.not.i.i = icmp eq i32 %20, 0
  br i1 %cmp1.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %21 = ptrtoint ptr %srgn_state.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %srgn_state.i.i, align 4
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  %24 = ptrtoint ptr %pages_per_srgn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pages_per_srgn.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp8.not.i.i.i = icmp eq i32 %25, 0
  br i1 %cmp8.not.i.i.i, label %if.then.i.i.ufshpb_put_map_ctx.exit.i.i_crit_edge, label %if.then.i.i.for.body.i.i.i_crit_edge

if.then.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %for.body.i.i.i

if.then.i.i.ufshpb_put_map_ctx.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_put_map_ctx.exit.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.then.i.i.for.body.i.i.i_crit_edge
  %i.09.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i.i.for.body.i.i.i_crit_edge ]
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %23, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %27, i32 %i.09.i.i.i
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i.i, align 4
  %30 = load ptr, ptr @ufshpb_page_pool, align 4
  tail call void @mempool_free(ptr noundef %29, ptr noundef %30) #9
  %inc.i.i.i = add nuw i32 %i.09.i.i.i, 1
  %31 = ptrtoint ptr %pages_per_srgn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pages_per_srgn.i.i.i, align 8
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %32
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.ufshpb_put_map_ctx.exit.i.i_crit_edge

for.body.i.i.i.ufshpb_put_map_ctx.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_put_map_ctx.exit.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

ufshpb_put_map_ctx.exit.i.i:                      ; preds = %for.body.i.i.i.ufshpb_put_map_ctx.exit.i.i_crit_edge, %if.then.i.i.ufshpb_put_map_ctx.exit.i.i_crit_edge
  %ppn_dirty.i.i.i = getelementptr inbounds %struct.ufshpb_map_ctx, ptr %23, i32 0, i32 1
  %33 = ptrtoint ptr %ppn_dirty.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ppn_dirty.i.i.i, align 4
  tail call void @bitmap_free(ptr noundef %34) #9
  %35 = ptrtoint ptr %m_page_cache.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %m_page_cache.i.i.i, align 8
  %37 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %23, align 4
  tail call void @kmem_cache_free(ptr noundef %36, ptr noundef %38) #9
  %39 = load ptr, ptr @ufshpb_mctx_pool, align 4
  tail call void @mempool_free(ptr noundef %23, ptr noundef %39) #9
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %ufshpb_put_map_ctx.exit.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %srgn_idx.09.i.i, 1
  %40 = ptrtoint ptr %srgn_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %srgn_cnt.i.i, align 8
  %cmp.i.i = icmp slt i32 %inc.i.i, %41
  br i1 %cmp.i.i, label %for.inc.i.i.land.rhs.i.i_crit_edge, label %for.inc.i.i.if.end.i_crit_edge

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %land.rhs.i.i.if.end.i_crit_edge, %if.then.i11.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %srgn_tbl.i = getelementptr %struct.ufshpb_region, ptr %11, i32 %rgn_idx.013.i, i32 1
  %42 = ptrtoint ptr %srgn_tbl.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %srgn_tbl.i, align 4
  tail call void @kvfree(ptr noundef %43) #9
  %inc.i = add nuw i32 %rgn_idx.013.i, 1
  %44 = ptrtoint ptr %rgns_per_lu.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rgns_per_lu.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %45
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.ufshpb_destroy_region_tbl.exit_crit_edge

if.end.i.ufshpb_destroy_region_tbl.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_destroy_region_tbl.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ufshpb_destroy_region_tbl.exit:                   ; preds = %if.end.i.ufshpb_destroy_region_tbl.exit_crit_edge, %ufshpb_cancel_jobs.exit.ufshpb_destroy_region_tbl.exit_crit_edge
  %rgn_tbl3.i = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %rgn_tbl3.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rgn_tbl3.i, align 4
  tail call void @kvfree(ptr noundef %47) #9
  %map_req_cache = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 36
  %48 = ptrtoint ptr %map_req_cache to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map_req_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %49) #9
  %m_page_cache = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 37
  %50 = ptrtoint ptr %m_page_cache to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %m_page_cache, align 8
  tail call void @kmem_cache_destroy(ptr noundef %51) #9
  %list_hpb_lu = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 38
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_hpb_lu) #9
  br i1 %call.i.i, label %if.end.i.i, label %ufshpb_destroy_region_tbl.exit.list_del_init.exit_crit_edge

ufshpb_destroy_region_tbl.exit.list_del_init.exit_crit_edge: ; preds = %ufshpb_destroy_region_tbl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %ufshpb_destroy_region_tbl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 38, i32 1
  %52 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i, align 4
  %54 = ptrtoint ptr %list_hpb_lu to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %list_hpb_lu, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %ufshpb_destroy_region_tbl.exit.list_del_init.exit_crit_edge
  %58 = ptrtoint ptr %list_hpb_lu to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %list_hpb_lu, ptr %list_hpb_lu, align 4
  %prev.i3.i = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 38, i32 1
  %59 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %list_hpb_lu, ptr %prev.i3.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %list_del_init.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufshpb_pre_req_mempool_destroy(ptr nocapture noundef readonly %hpb) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %throttle_pre_req = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 10
  %0 = ptrtoint ptr %throttle_pre_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %throttle_pre_req, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp16 = icmp sgt i32 %1, 0
  br i1 %cmp16, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pre_req1 = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_del_init.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %pre_req1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pre_req1, align 8
  %bio = getelementptr %struct.ufshpb_req, ptr %3, i32 %i.017, i32 1
  %4 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bio, align 4
  tail call void @bio_put(ptr noundef %5) #9
  %6 = getelementptr %struct.ufshpb_req, ptr %3, i32 %i.017, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %pre_req1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pre_req1, align 8
  %11 = getelementptr %struct.ufshpb_req, ptr %10, i32 %i.017, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  tail call void @__free_pages(ptr noundef %13, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %list_req = getelementptr %struct.ufshpb_req, ptr %3, i32 %i.017, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_req) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr %struct.ufshpb_req, ptr %3, i32 %i.017, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %list_req to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %list_req, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %list_req to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %list_req, ptr %list_req, align 4
  %prev.i3.i = getelementptr %struct.ufshpb_req, ptr %3, i32 %i.017, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list_req, ptr %prev.i3.i, align 4
  %inc = add nuw nsw i32 %i.017, 1
  %22 = ptrtoint ptr %throttle_pre_req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %throttle_pre_req, align 8
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %list_del_init.exit.for.body_crit_edge, label %list_del_init.exit.for.end_crit_edge

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %pre_req6 = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 8
  %24 = ptrtoint ptr %pre_req6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pre_req6, align 8
  tail call void @kfree(ptr noundef %25) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufshpb_init_hpb_lu(ptr noundef %hba, ptr noundef %sdev) local_unnamed_addr #1 align 64 {
entry:
  %size.i = alloca i32, align 4
  %desc_buf.i = alloca [255 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lun1 = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 18
  %0 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %lun1, align 8
  %conv = trunc i64 %1 to i32
  %max_lu_supported = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 66, i32 2
  %2 = ptrtoint ptr %max_lu_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_lu_supported, align 2
  %conv2 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv2)
  %cmp.not = icmp slt i32 %conv, %conv2
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #9
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %size.i, align 4, !annotation !343
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %desc_buf.i) #9
  %5 = call ptr @memset(ptr %desc_buf.i, i32 255, i32 255)
  call void @ufshcd_map_desc_id_to_length(ptr noundef %hba, i32 noundef 2, ptr noundef nonnull %size.i) #9
  %sdev_ufs_device.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 9
  %6 = ptrtoint ptr %sdev_ufs_device.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev_ufs_device.i.i, align 4
  %sdev_gendev.i.i = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 55
  %call.i.i.i = call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i.i, i32 noundef 4) #9
  %conv.i = trunc i64 %1 to i8
  %call1.i = call i32 @ufshcd_query_descriptor_retry(ptr noundef %hba, i32 noundef 1, i32 noundef 2, i8 noundef zeroext %conv.i, i8 noundef zeroext 0, ptr noundef nonnull %desc_buf.i, ptr noundef nonnull %size.i) #9
  %8 = ptrtoint ptr %sdev_ufs_device.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev_ufs_device.i.i, align 4
  %sdev_gendev.i47.i = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 55
  %call.i.i48.i = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i47.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, i32 noundef 2, i32 noundef %conv) #12
  br label %ufshpb_get_lu_info.exit.thread

if.end.i:                                         ; preds = %if.end
  %arrayidx.i = getelementptr inbounds [255 x i8], ptr %desc_buf.i, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %13)
  %cmp.not.i = icmp eq i8 %13, 2
  br i1 %cmp.not.i, label %if.end6.i, label %if.end.i.ufshpb_get_lu_info.exit.thread_crit_edge

if.end.i.ufshpb_get_lu_info.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_get_lu_info.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr inbounds i8, ptr %desc_buf.i, i32 35
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool9.not.i = icmp eq i16 %15, 0
  br i1 %tobool9.not.i, label %do.end13.i, label %if.end5

do.end13.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev14.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %16 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev14.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.64, i32 noundef %conv) #12
  br label %ufshpb_get_lu_info.exit.thread

ufshpb_get_lu_info.exit.thread:                   ; preds = %do.end13.i, %if.end.i.ufshpb_get_lu_info.exit.thread_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %desc_buf.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #9
  br label %out

if.end5:                                          ; preds = %if.end6.i
  %add.ptr17.i = getelementptr inbounds i8, ptr %desc_buf.i, i32 11
  %18 = ptrtoint ptr %add.ptr17.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %add.ptr17.i, align 1
  %conv19.i = trunc i64 %19 to i32
  %add.ptr21.i = getelementptr inbounds i8, ptr %desc_buf.i, i32 37
  %20 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %add.ptr21.i, align 1
  %conv23.i = zext i16 %21 to i32
  %add.ptr25.i = getelementptr inbounds i8, ptr %desc_buf.i, i32 39
  %22 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %add.ptr25.i, align 1
  %conv27.i = zext i16 %23 to i32
  %conv28.i = zext i16 %15 to i32
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %desc_buf.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 576) #13
  %tobool.not.i24 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i24, label %if.end5.out_crit_edge, label %if.end.i26

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i26:                                       ; preds = %if.end5
  %25 = ptrtoint ptr %lun1 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %lun1, align 8
  %conv.i25 = trunc i64 %26 to i32
  %27 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i25, ptr %call7.i.i.i, align 8
  %sdev_ufs_lu.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %sdev_ufs_lu.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sdev, ptr %sdev_ufs_lu.i, align 4
  %is_legacy.i.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 6
  %29 = ptrtoint ptr %is_legacy.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %is_legacy.i.i.i, align 2, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.i.not.i.i = icmp eq i8 %30, 0
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %if.end.i26.if.end.i.i_crit_edge

if.end.i26.if.end.i.i_crit_edge:                  ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  %max_hpb_single_cmd.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 5
  %31 = ptrtoint ptr %max_hpb_single_cmd.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %max_hpb_single_cmd.i.i, align 1
  %conv.i.i = zext i8 %32 to i32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.end.i26.if.end.i.i_crit_edge
  %.sink.i.i = phi i32 [ %conv.i.i, %if.else.i.i ], [ 1, %if.end.i26.if.end.i.i_crit_edge ]
  %33 = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 14
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink.i.i, ptr %33, align 4
  %lu_pinned_start.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 20
  %35 = ptrtoint ptr %lu_pinned_start.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv23.i, ptr %lu_pinned_start.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i.i = icmp eq i16 %23, 0
  %add.i.i = add nsw i32 %conv23.i, -1
  %sub.i.i = add nsw i32 %add.i.i, %conv27.i
  %cond.i.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.i
  %lu_pinned_end.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 21
  %36 = ptrtoint ptr %lu_pinned_end.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond.i.i, ptr %lu_pinned_end.i.i, align 4
  %sub5.i.i = sub nsw i32 %conv28.i, %conv27.i
  %max_lru_active_cnt.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 16, i32 1
  %37 = ptrtoint ptr %max_lru_active_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub5.i.i, ptr %max_lru_active_cnt.i.i, align 4
  %rgn_size.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 1
  %38 = ptrtoint ptr %rgn_size.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rgn_size.i.i, align 4
  %sh_prom.i.i = zext i32 %39 to i64
  %mul6.i.i = shl i64 4096, %sh_prom.i.i
  %shr.i.i = lshr exact i64 %mul6.i.i, 12
  %srgn_size.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 2
  %40 = ptrtoint ptr %srgn_size.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %srgn_size.i.i, align 4
  %sh_prom203.i.i = zext i32 %41 to i64
  %mul205.i.i = shl i64 512, %sh_prom203.i.i
  %42 = lshr exact i64 %mul205.i.i, 9
  %43 = trunc i64 %42 to i32
  %conv208.i.i = and i32 %43, -8
  %srgn_mem_size.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 26
  %44 = ptrtoint ptr %srgn_mem_size.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv208.i.i, ptr %srgn_mem_size.i.i, align 8
  %shr234.i.i = lshr i64 %mul6.i.i, 15
  %conv430.i.i = trunc i64 %shr234.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv430.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %conv430.i.i, 0
  %45 = call i32 @llvm.ctlz.i32(i32 %conv430.i.i, i1 true) #9, !range !344
  %sub.i.op.i.i.i = xor i32 %45, 31
  %sub.i.i.i = select i1 %tobool.not.i.i.i.i, i32 -1, i32 %sub.i.op.i.i.i
  %entries_per_rgn_shift.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 28
  %46 = ptrtoint ptr %entries_per_rgn_shift.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i.i.i, ptr %entries_per_rgn_shift.i.i, align 8
  %sub445.i.i = add i32 %conv430.i.i, -1
  %entries_per_rgn_mask.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 27
  %47 = ptrtoint ptr %entries_per_rgn_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub445.i.i, ptr %entries_per_rgn_mask.i.i, align 4
  %div4471000.i.i = lshr i32 %43, 3
  %entries_per_srgn.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 29
  %48 = ptrtoint ptr %entries_per_srgn.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div4471000.i.i, ptr %entries_per_srgn.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %43)
  %tobool.not.i.i1008.i.i = icmp ult i32 %43, 8
  %49 = call i32 @llvm.ctlz.i32(i32 %div4471000.i.i, i1 true) #9, !range !344
  %sub.i.op.i1009.i.i = xor i32 %49, 31
  %sub.i1010.i.i = select i1 %tobool.not.i.i1008.i.i, i32 -1, i32 %sub.i.op.i1009.i.i
  %entries_per_srgn_shift.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 31
  %50 = ptrtoint ptr %entries_per_srgn_shift.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub.i1010.i.i, ptr %entries_per_srgn_shift.i.i, align 4
  %sub467.i.i = add nsw i32 %div4471000.i.i, -1
  %entries_per_srgn_mask.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 30
  %51 = ptrtoint ptr %entries_per_srgn_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub467.i.i, ptr %entries_per_srgn_mask.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186044416, i64 %mul6.i.i)
  %cmp670.i.i = icmp ult i64 %mul6.i.i, 17592186044416
  br i1 %cmp670.i.i, label %if.then678.i.i, label %if.else684.i.i, !prof !346

if.then678.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv679.i.i = trunc i64 %shr.i.i to i32
  %div682.i.i = udiv i32 %conv679.i.i, %conv208.i.i
  br label %if.end688.i.i

if.else684.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv208.i.i, i64 %shr.i.i) #14, !srcloc !348
  %asmresult1.i.i.i = extractvalue { i64, i64 } %52, 1
  %extract.t1045.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %if.end688.i.i

if.end688.i.i:                                    ; preds = %if.else684.i.i, %if.then678.i.i
  %tmp.0.off0.i.i = phi i32 [ %div682.i.i, %if.then678.i.i ], [ %extract.t1045.i.i, %if.else684.i.i ]
  %srgns_per_rgn.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 25
  %53 = ptrtoint ptr %srgns_per_rgn.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %tmp.0.off0.i.i, ptr %srgns_per_rgn.i.i, align 4
  %sub692.i.i = add i32 %sub445.i.i, %conv19.i
  %div693.i.i = udiv i32 %sub692.i.i, %conv430.i.i
  %rgns_per_lu.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 22
  %54 = ptrtoint ptr %rgns_per_lu.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div693.i.i, ptr %rgns_per_lu.i.i, align 8
  %sub698.i.i = add i32 %sub467.i.i, %conv19.i
  %div701.i.i = udiv i32 %sub698.i.i, %div4471000.i.i
  %srgns_per_lu.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 23
  %55 = ptrtoint ptr %srgns_per_lu.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div701.i.i, ptr %srgns_per_lu.i.i, align 4
  %rem705.i.i = urem i32 %conv19.i, %div4471000.i.i
  %last_srgn_entries.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 24
  %56 = ptrtoint ptr %last_srgn_entries.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %rem705.i.i, ptr %last_srgn_entries.i.i, align 8
  %sub708.i.i = add i32 %conv208.i.i, 4095
  %div7091003.i.i = lshr i32 %sub708.i.i, 12
  %pages_per_srgn.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 32
  %57 = ptrtoint ptr %pages_per_srgn.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %div7091003.i.i, ptr %pages_per_srgn.i.i, align 8
  %control_mode.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 7
  %58 = ptrtoint ptr %control_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %control_mode.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp711.i.i = icmp eq i8 %59, 0
  br i1 %cmp711.i.i, label %if.then713.i.i, label %if.end688.i.i.ufshpb_lu_parameter_init.exit.i_crit_edge

if.end688.i.i.ufshpb_lu_parameter_init.exit.i_crit_edge: ; preds = %if.end688.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_lu_parameter_init.exit.i

if.then713.i.i:                                   ; preds = %if.end688.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_hcm.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 33
  %60 = ptrtoint ptr %is_hcm.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %is_hcm.i.i, align 4
  br label %ufshpb_lu_parameter_init.exit.i

ufshpb_lu_parameter_init.exit.i:                  ; preds = %if.then713.i.i, %if.end688.i.i.ufshpb_lu_parameter_init.exit.i_crit_edge
  %rgn_state_lock.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %rgn_state_lock.i.i, ptr noundef nonnull @.str.68, ptr noundef nonnull @ufshpb_lu_hpb_init.__key, i16 noundef signext 3) #9
  %rsp_list_lock.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %rsp_list_lock.i.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @ufshpb_lu_hpb_init.__key.69, i16 noundef signext 3) #9
  %param_lock.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 12
  call void @__raw_spin_lock_init(ptr noundef %param_lock.i.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @ufshpb_lu_hpb_init.__key.71, i16 noundef signext 3) #9
  %lru_info.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 16
  %61 = ptrtoint ptr %lru_info.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %lru_info.i.i, ptr %lru_info.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 16, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %lru_info.i.i, ptr %prev.i.i.i, align 8
  %lh_act_srgn.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 6
  %63 = ptrtoint ptr %lh_act_srgn.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %lh_act_srgn.i.i, ptr %lh_act_srgn.i.i, align 8
  %prev.i140.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %64 = ptrtoint ptr %prev.i140.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %lh_act_srgn.i.i, ptr %prev.i140.i.i, align 4
  %lh_inact_rgn.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 7
  %65 = ptrtoint ptr %lh_inact_rgn.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %lh_inact_rgn.i.i, ptr %lh_inact_rgn.i.i, align 8
  %prev.i141.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %66 = ptrtoint ptr %prev.i141.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %lh_inact_rgn.i.i, ptr %prev.i141.i.i, align 4
  %list_hpb_lu.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 38
  %67 = ptrtoint ptr %list_hpb_lu.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %list_hpb_lu.i.i, ptr %list_hpb_lu.i.i, align 4
  %prev.i142.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 38, i32 1
  %68 = ptrtoint ptr %prev.i142.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %list_hpb_lu.i.i, ptr %prev.i142.i.i, align 8
  %map_work.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 15
  call void @__init_work(ptr noundef %map_work.i.i, i32 noundef 0) #9
  %69 = ptrtoint ptr %map_work.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -64, ptr %map_work.i.i, align 8
  %lockdep_map.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 15, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.74, ptr noundef nonnull @ufshpb_lu_hpb_init.__key.73, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry13.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 15, i32 1
  %70 = ptrtoint ptr %entry13.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %entry13.i.i, ptr %entry13.i.i, align 4
  %prev.i143.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 15, i32 1, i32 1
  %71 = ptrtoint ptr %prev.i143.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %entry13.i.i, ptr %prev.i143.i.i, align 8
  %func.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 15, i32 2
  %72 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @ufshpb_map_work_handler, ptr %func.i.i, align 4
  %is_hcm.i19.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 33
  %73 = ptrtoint ptr %is_hcm.i19.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %is_hcm.i19.i, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i20.i = icmp eq i8 %74, 0
  br i1 %tobool.not.i20.i, label %ufshpb_lu_parameter_init.exit.i.if.end.i21.i_crit_edge, label %do.body17.i.i

ufshpb_lu_parameter_init.exit.i.if.end.i21.i_crit_edge: ; preds = %ufshpb_lu_parameter_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i21.i

do.body17.i.i:                                    ; preds = %ufshpb_lu_parameter_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %ufshpb_normalization_work.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 17
  call void @__init_work(ptr noundef %ufshpb_normalization_work.i.i, i32 noundef 0) #9
  %75 = ptrtoint ptr %ufshpb_normalization_work.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -64, ptr %ufshpb_normalization_work.i.i, align 4
  %lockdep_map23.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 17, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map23.i.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @ufshpb_lu_hpb_init.__key.75, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry25.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 17, i32 1
  %76 = ptrtoint ptr %entry25.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %entry25.i.i, ptr %entry25.i.i, align 8
  %prev.i144.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 17, i32 1, i32 1
  %77 = ptrtoint ptr %prev.i144.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %entry25.i.i, ptr %prev.i144.i.i, align 4
  %func27.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 17, i32 2
  %78 = ptrtoint ptr %func27.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @ufshpb_normalization_work_handler, ptr %func27.i.i, align 8
  %ufshpb_read_to_work.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 18
  call void @__init_work(ptr noundef %ufshpb_read_to_work.i.i, i32 noundef 0) #9
  %79 = ptrtoint ptr %ufshpb_read_to_work.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -64, ptr %ufshpb_read_to_work.i.i, align 8
  %lockdep_map39.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 18, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map39.i.i, ptr noundef nonnull @.str.78, ptr noundef nonnull @ufshpb_lu_hpb_init.__key.77, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry42.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 18, i32 0, i32 1
  %80 = ptrtoint ptr %entry42.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %entry42.i.i, ptr %entry42.i.i, align 4
  %prev.i145.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 18, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %prev.i145.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %entry42.i.i, ptr %prev.i145.i.i, align 8
  %func45.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 18, i32 0, i32 2
  %82 = ptrtoint ptr %func45.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @ufshpb_read_to_handler, ptr %func45.i.i, align 4
  %timer.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 18, i32 1
  call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.80, ptr noundef nonnull @ufshpb_lu_hpb_init.__key.79) #9
  br label %if.end.i21.i

if.end.i21.i:                                     ; preds = %do.body17.i.i, %ufshpb_lu_parameter_init.exit.i.if.end.i21.i_crit_edge
  %call54.i.i = call ptr @kmem_cache_create(ptr noundef nonnull @.str.81, i32 noundef 36, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %map_req_cache.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 36
  %83 = ptrtoint ptr %map_req_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call54.i.i, ptr %map_req_cache.i.i, align 4
  %tobool56.not.i.i = icmp eq ptr %call54.i.i, null
  br i1 %tobool56.not.i.i, label %do.end60.i.i, label %if.end61.i.i

do.end60.i.i:                                     ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %84 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i.i, align 8
  %86 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %call7.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.82, i32 noundef %87) #12
  br label %do.end.i28

if.end61.i.i:                                     ; preds = %if.end.i21.i
  %88 = ptrtoint ptr %pages_per_srgn.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pages_per_srgn.i.i, align 8
  %mul.i.i = shl i32 %89, 2
  %call62.i.i = call ptr @kmem_cache_create(ptr noundef nonnull @.str.84, i32 noundef %mul.i.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %m_page_cache.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 37
  %90 = ptrtoint ptr %m_page_cache.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call62.i.i, ptr %m_page_cache.i.i, align 8
  %tobool64.not.i.i = icmp eq ptr %call62.i.i, null
  br i1 %tobool64.not.i.i, label %do.end68.i.i, label %if.end71.i.i

do.end68.i.i:                                     ; preds = %if.end61.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev69.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %91 = ptrtoint ptr %dev69.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev69.i.i, align 8
  %93 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %call7.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.86, i32 noundef %94) #12
  br label %release_req_cache.i.i

if.end71.i.i:                                     ; preds = %if.end61.i.i
  %95 = ptrtoint ptr %sdev_ufs_lu.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sdev_ufs_lu.i, align 4
  %queue_depth.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %96, i32 0, i32 9
  %97 = ptrtoint ptr %queue_depth.i.i.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %queue_depth.i.i.i, align 4
  %99 = lshr i16 %98, 1
  %div.i.i.i = zext i16 %99 to i32
  %lh_pre_req_free.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 13
  %100 = ptrtoint ptr %lh_pre_req_free.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %lh_pre_req_free.i.i.i, ptr %lh_pre_req_free.i.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 13, i32 1
  %101 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %lh_pre_req_free.i.i.i, ptr %prev.i.i.i.i, align 8
  %102 = mul nuw nsw i32 %div.i.i.i, 36
  %call8.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %102, i32 noundef 3520) #15
  %pre_req1.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 8
  %103 = ptrtoint ptr %pre_req1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call8.i.i.i.i.i, ptr %pre_req1.i.i.i, align 8
  %throttle_pre_req.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 10
  %104 = ptrtoint ptr %throttle_pre_req.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %div.i.i.i, ptr %throttle_pre_req.i.i.i, align 8
  %num_inflight_pre_req.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 9
  %105 = ptrtoint ptr %num_inflight_pre_req.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %num_inflight_pre_req.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %call8.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end71.i.i.release_mem.i.i.i_crit_edge, label %for.cond.preheader.i.i.i

if.end71.i.i.release_mem.i.i.i_crit_edge:         ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_mem.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %98)
  %cmp85.not.i.i.i = icmp ult i16 %98, 2
  br i1 %cmp85.not.i.i.i, label %for.cond.preheader.i.i.i.if.end80.i.i_crit_edge, label %for.body.preheader.i.i.i

for.cond.preheader.i.i.i.if.end80.i.i_crit_edge:  ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i.i

for.body.preheader.i.i.i:                         ; preds = %for.cond.preheader.i.i.i
  %umax.i.i.i = call i32 @llvm.umax.i32(i32 %div.i.i.i, i32 1) #9
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %list_add_tail.exit.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.086.i.i.i = phi i32 [ %inc.i.i.i, %list_add_tail.exit.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %106 = ptrtoint ptr %pre_req1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pre_req1.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr %struct.ufshpb_req, ptr %107, i32 %i.086.i.i.i
  %list_req.i.i.i = getelementptr %struct.ufshpb_req, ptr %107, i32 %i.086.i.i.i, i32 3
  %108 = ptrtoint ptr %list_req.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %list_req.i.i.i, ptr %list_req.i.i.i, align 4
  %prev.i73.i.i.i = getelementptr %struct.ufshpb_req, ptr %107, i32 %i.086.i.i.i, i32 3, i32 1
  %109 = ptrtoint ptr %prev.i73.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %list_req.i.i.i, ptr %prev.i73.i.i.i, align 4
  %110 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %add.ptr.i.i.i, align 4
  %call.i.i.i.i = call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext 1, ptr noundef nonnull @fs_bio_set) #9
  %bio.i.i.i = getelementptr %struct.ufshpb_req, ptr %107, i32 %i.086.i.i.i, i32 1
  %111 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call.i.i.i.i, ptr %bio.i.i.i, align 4
  %tobool7.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool7.not.i.i.i, label %for.body.i.i.i.release_mem.i.i.i_crit_edge, label %if.end9.i.i.i

for.body.i.i.i.release_mem.i.i.i_crit_edge:       ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_mem.i.i.i

if.end9.i.i.i:                                    ; preds = %for.body.i.i.i
  %call38.i.i.i.i.i.i = call ptr @__alloc_pages(i32 noundef 3520, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %112 = getelementptr %struct.ufshpb_req, ptr %107, i32 %i.086.i.i.i, i32 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call38.i.i.i.i.i.i, ptr %112, align 4
  %tobool12.not.i.i.i = icmp eq ptr %call38.i.i.i.i.i.i, null
  br i1 %tobool12.not.i.i.i, label %if.then13.i.i.i, label %if.end15.i.i.i

if.then13.i.i.i:                                  ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %114 = ptrtoint ptr %bio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %bio.i.i.i, align 4
  call void @bio_put(ptr noundef %115) #9
  br label %release_mem.i.i.i

if.end15.i.i.i:                                   ; preds = %if.end9.i.i.i
  %116 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prev.i.i.i.i, align 8
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list_req.i.i.i, ptr noundef %117, ptr noundef %lh_pre_req_free.i.i.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i75.i.i.i, label %if.end15.i.i.i.list_add_tail.exit.i.i.i_crit_edge

if.end15.i.i.i.list_add_tail.exit.i.i.i_crit_edge: ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i.i.i

if.end.i.i75.i.i.i:                               ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %118 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %list_req.i.i.i, ptr %prev.i.i.i.i, align 8
  %119 = ptrtoint ptr %list_req.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %lh_pre_req_free.i.i.i, ptr %list_req.i.i.i, align 4
  %120 = ptrtoint ptr %prev.i73.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %117, ptr %prev.i73.i.i.i, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %list_req.i.i.i, ptr %117, align 4
  br label %list_add_tail.exit.i.i.i

list_add_tail.exit.i.i.i:                         ; preds = %if.end.i.i75.i.i.i, %if.end15.i.i.i.list_add_tail.exit.i.i.i_crit_edge
  %inc.i.i.i = add nuw nsw i32 %i.086.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %list_add_tail.exit.i.i.i.if.end80.i.i_crit_edge, label %list_add_tail.exit.i.i.i.for.body.i.i.i_crit_edge

list_add_tail.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

list_add_tail.exit.i.i.i.if.end80.i.i_crit_edge:  ; preds = %list_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i.i

release_mem.i.i.i:                                ; preds = %if.then13.i.i.i, %for.body.i.i.i.release_mem.i.i.i_crit_edge, %if.end71.i.i.release_mem.i.i.i_crit_edge
  %122 = ptrtoint ptr %lh_pre_req_free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %lh_pre_req_free.i.i.i, align 4
  %cmp28.not87.i.i.i = icmp eq ptr %123, %lh_pre_req_free.i.i.i
  br i1 %cmp28.not87.i.i.i, label %release_mem.i.i.i.do.end77.i.i_crit_edge, label %release_mem.i.i.i.for.body30.i.i.i_crit_edge

release_mem.i.i.i.for.body30.i.i.i_crit_edge:     ; preds = %release_mem.i.i.i
  br label %for.body30.i.i.i

release_mem.i.i.i.do.end77.i.i_crit_edge:         ; preds = %release_mem.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end77.i.i

for.body30.i.i.i:                                 ; preds = %list_del_init.exit.i.i.i.for.body30.i.i.i_crit_edge, %release_mem.i.i.i.for.body30.i.i.i_crit_edge
  %.pn.in88.i.i.i = phi ptr [ %.pn.i.i.i, %list_del_init.exit.i.i.i.for.body30.i.i.i_crit_edge ], [ %123, %release_mem.i.i.i.for.body30.i.i.i_crit_edge ]
  %124 = ptrtoint ptr %.pn.in88.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pn.i.i.i = load ptr, ptr %.pn.in88.i.i.i, align 4
  %call.i.i76.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in88.i.i.i) #9
  br i1 %call.i.i76.i.i.i, label %if.end.i.i77.i.i.i, label %for.body30.i.i.i.list_del_init.exit.i.i.i_crit_edge

for.body30.i.i.i.list_del_init.exit.i.i.i_crit_edge: ; preds = %for.body30.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i.i.i

if.end.i.i77.i.i.i:                               ; preds = %for.body30.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in88.i.i.i, i32 0, i32 1
  %125 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %127 = ptrtoint ptr %.pn.in88.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %.pn.in88.i.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %126, ptr %prev1.i.i.i.i.i.i, align 4
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %128, ptr %126, align 4
  br label %list_del_init.exit.i.i.i

list_del_init.exit.i.i.i:                         ; preds = %if.end.i.i77.i.i.i, %for.body30.i.i.i.list_del_init.exit.i.i.i_crit_edge
  %131 = ptrtoint ptr %.pn.in88.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile ptr %.pn.in88.i.i.i, ptr %.pn.in88.i.i.i, align 4
  %prev.i3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in88.i.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %prev.i3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %.pn.in88.i.i.i, ptr %prev.i3.i.i.i.i, align 4
  %bio32.i.i.i = getelementptr i8, ptr %.pn.in88.i.i.i, i32 -8
  %133 = ptrtoint ptr %bio32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bio32.i.i.i, align 4
  call void @bio_put(ptr noundef %134) #9
  %135 = getelementptr i8, ptr %.pn.in88.i.i.i, i32 8
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 4
  call void @__free_pages(ptr noundef %137, i32 noundef 0) #9
  %cmp28.not.i.i.i = icmp eq ptr %.pn.i.i.i, %lh_pre_req_free.i.i.i
  br i1 %cmp28.not.i.i.i, label %list_del_init.exit.i.i.i.do.end77.i.i_crit_edge, label %list_del_init.exit.i.i.i.for.body30.i.i.i_crit_edge

list_del_init.exit.i.i.i.for.body30.i.i.i_crit_edge: ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body30.i.i.i

list_del_init.exit.i.i.i.do.end77.i.i_crit_edge:  ; preds = %list_del_init.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end77.i.i

do.end77.i.i:                                     ; preds = %list_del_init.exit.i.i.i.do.end77.i.i_crit_edge, %release_mem.i.i.i.do.end77.i.i_crit_edge
  %138 = ptrtoint ptr %pre_req1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pre_req1.i.i.i, align 8
  call void @kfree(ptr noundef %139) #9
  %dev78.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %140 = ptrtoint ptr %dev78.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev78.i.i, align 8
  %142 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %call7.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.89, i32 noundef %143) #12
  br label %release_m_page_cache.i.i

if.end80.i.i:                                     ; preds = %list_add_tail.exit.i.i.i.if.end80.i.i_crit_edge, %for.cond.preheader.i.i.i.if.end80.i.i_crit_edge
  %144 = ptrtoint ptr %rgns_per_lu.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %rgns_per_lu.i.i, align 8
  %146 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %145, i32 112) #9
  %147 = extractvalue { i32, i1 } %146, 1
  br i1 %147, label %if.end80.i.i.release_pre_req_mempool.i.i_crit_edge, label %kvcalloc.exit.i.i.i, !prof !345

if.end80.i.i.release_pre_req_mempool.i.i_crit_edge: ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_pre_req_mempool.i.i

kvcalloc.exit.i.i.i:                              ; preds = %if.end80.i.i
  %148 = extractvalue { i32, i1 } %146, 0
  %call.i.i.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %148, i32 noundef 3520, i32 noundef -1) #15
  %tobool.not.i147.i.i = icmp eq ptr %call.i.i.i.i.i.i, null
  br i1 %tobool.not.i147.i.i, label %kvcalloc.exit.i.i.i.release_pre_req_mempool.i.i_crit_edge, label %for.cond.preheader.i148.i.i

kvcalloc.exit.i.i.i.release_pre_req_mempool.i.i_crit_edge: ; preds = %kvcalloc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_pre_req_mempool.i.i

for.cond.preheader.i148.i.i:                      ; preds = %kvcalloc.exit.i.i.i
  %149 = ptrtoint ptr %rgns_per_lu.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %rgns_per_lu.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp110.not.i.i.i = icmp eq i32 %150, 0
  br i1 %cmp110.not.i.i.i, label %for.cond.preheader.i148.i.i.if.end84.i.i_crit_edge, label %for.cond.preheader.i148.i.i.for.body.i151.i.i_crit_edge

for.cond.preheader.i148.i.i.for.body.i151.i.i_crit_edge: ; preds = %for.cond.preheader.i148.i.i
  br label %for.body.i151.i.i

for.cond.preheader.i148.i.i.if.end84.i.i_crit_edge: ; preds = %for.cond.preheader.i148.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i.i

for.body.i151.i.i:                                ; preds = %for.inc.i.i.i.for.body.i151.i.i_crit_edge, %for.cond.preheader.i148.i.i.for.body.i151.i.i_crit_edge
  %rgn_idx.0111.i.i.i = phi i32 [ %inc.i156.i.i, %for.inc.i.i.i.for.body.i151.i.i_crit_edge ], [ 0, %for.cond.preheader.i148.i.i.for.body.i151.i.i_crit_edge ]
  %151 = ptrtoint ptr %srgns_per_rgn.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %srgns_per_rgn.i.i, align 4
  %add.ptr.i149.i.i = getelementptr %struct.ufshpb_region, ptr %call.i.i.i.i.i.i, i32 %rgn_idx.0111.i.i.i
  %rgn_idx2.i.i.i = getelementptr %struct.ufshpb_region, ptr %call.i.i.i.i.i.i, i32 %rgn_idx.0111.i.i.i, i32 3
  %153 = ptrtoint ptr %rgn_idx2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %rgn_idx.0111.i.i.i, ptr %rgn_idx2.i.i.i, align 4
  %rgn_lock.i.i.i = getelementptr %struct.ufshpb_region, ptr %call.i.i.i.i.i.i, i32 %rgn_idx.0111.i.i.i, i32 8
  call void @__raw_spin_lock_init(ptr noundef %rgn_lock.i.i.i, ptr noundef nonnull @.str.127, ptr noundef nonnull @ufshpb_alloc_region_tbl.__key, i16 noundef signext 3) #9
  %list_inact_rgn.i.i.i = getelementptr %struct.ufshpb_region, ptr %call.i.i.i.i.i.i, i32 %rgn_idx.0111.i.i.i, i32 5
  %154 = ptrtoint ptr %list_inact_rgn.i.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %list_inact_rgn.i.i.i, ptr %list_inact_rgn.i.i.i, align 4
  %prev.i.i150.i.i = getelementptr %struct.ufshpb_region, ptr %call.i.i.i.i.i.i, i32 %rgn_idx.0111.i.i.i, i32 5, i32 1
  %155 = ptrtoint ptr %prev.i.i150.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %list_inact_rgn.i.i.i, ptr %prev.i.i150.i.i, align 4
  %list_lru_rgn.i.i.i = getelementptr %struct.ufshpb_region, ptr %call.i.i.i.i.i.i, i32 %rgn_idx.0111.i.i.i, i32 6
  %156 = ptrtoint ptr %list_lru_rgn.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %list_lru_rgn.i.i.i, ptr %list_lru_rgn.i.i.i, align 4
  %prev.i70.i.i.i = getelementptr %struct.ufshpb_region, ptr %call.i.i.i.i.i.i, i32 %rgn_idx.0111.i.i.i, i32 6, i32 1
  %157 = ptrtoint ptr %prev.i70.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %list_lru_rgn.i.i.i, ptr %prev.i70.i.i.i, align 4
  %list_expired_rgn.i.i.i = getelementptr %struct.ufshpb_region, ptr %call.i.i.i.i.i.i, i32 %rgn_idx.0111.i.i.i, i32 12
  %158 = ptrtoint ptr %list_expired_rgn.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %list_expired_rgn.i.i.i, ptr %list_expired_rgn.i.i.i, align 4
  %prev.i71.i.i.i = getelementptr %struct.ufshpb_region, ptr %call.i.i.i.i.i.i, i32 %rgn_idx.0111.i.i.i, i32 12, i32 1
  %159 = ptrtoint ptr %prev.i71.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %list_expired_rgn.i.i.i, ptr %prev.i71.i.i.i, align 4
  %160 = ptrtoint ptr %rgns_per_lu.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %rgns_per_lu.i.i, align 8
  %sub.i.i23.i = add i32 %161, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %rgn_idx.0111.i.i.i, i32 %sub.i.i23.i)
  %cmp5.i.i.i = icmp eq i32 %rgn_idx.0111.i.i.i, %sub.i.i23.i
  br i1 %cmp5.i.i.i, label %if.then6.i.i.i, label %for.body.i151.i.i.if.end9.i152.i.i_crit_edge

for.body.i151.i.i.if.end9.i152.i.i_crit_edge:     ; preds = %for.body.i151.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i152.i.i

if.then6.i.i.i:                                   ; preds = %for.body.i151.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %162 = ptrtoint ptr %srgns_per_lu.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %srgns_per_lu.i.i, align 4
  %sub7.i.i.i = add i32 %163, -1
  %164 = ptrtoint ptr %srgns_per_rgn.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %srgns_per_rgn.i.i, align 4
  %rem.i.i.i = urem i32 %sub7.i.i.i, %165
  %add.i.i.i = add nuw i32 %rem.i.i.i, 1
  br label %if.end9.i152.i.i

if.end9.i152.i.i:                                 ; preds = %if.then6.i.i.i, %for.body.i151.i.i.if.end9.i152.i.i_crit_edge
  %srgn_cnt.0.i.i.i = phi i32 [ %add.i.i.i, %if.then6.i.i.i ], [ %152, %for.body.i151.i.i.if.end9.i152.i.i_crit_edge ]
  %166 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %srgn_cnt.0.i.i.i, i32 32) #9
  %167 = extractvalue { i32, i1 } %166, 1
  br i1 %167, label %kvcalloc.exit.thread.i.i.i.i, label %kvcalloc.exit.i.i.i.i, !prof !345

kvcalloc.exit.thread.i.i.i.i:                     ; preds = %if.end9.i152.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %srgn_tbl2.i.i.i.i = getelementptr %struct.ufshpb_region, ptr %call.i.i.i.i.i.i, i32 %rgn_idx.0111.i.i.i, i32 1
  %168 = ptrtoint ptr %srgn_tbl2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %srgn_tbl2.i.i.i.i, align 4
  br label %cleanup.i.i.i

kvcalloc.exit.i.i.i.i:                            ; preds = %if.end9.i152.i.i
  %169 = extractvalue { i32, i1 } %166, 0
  %call.i.i.i.i.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %169, i32 noundef 3520, i32 noundef -1) #15
  %srgn_tbl.i.i.i.i = getelementptr %struct.ufshpb_region, ptr %call.i.i.i.i.i.i, i32 %rgn_idx.0111.i.i.i, i32 1
  %170 = ptrtoint ptr %srgn_tbl.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call.i.i.i.i.i.i.i, ptr %srgn_tbl.i.i.i.i, align 4
  %tobool.not.i.i.i24.i = icmp eq ptr %call.i.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i24.i, label %kvcalloc.exit.i.i.i.i.cleanup.i.i.i_crit_edge, label %if.end13.i.i.i

kvcalloc.exit.i.i.i.i.cleanup.i.i.i_crit_edge:    ; preds = %kvcalloc.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i.i

if.end13.i.i.i:                                   ; preds = %kvcalloc.exit.i.i.i.i
  %srgn_cnt2.i.i.i.i = getelementptr %struct.ufshpb_region, ptr %call.i.i.i.i.i.i, i32 %rgn_idx.0111.i.i.i, i32 4
  %171 = ptrtoint ptr %srgn_cnt2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %srgn_cnt.0.i.i.i, ptr %srgn_cnt2.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srgn_cnt.0.i.i.i)
  %cmp18.i.not.i.i.i = icmp eq i32 %srgn_cnt.0.i.i.i, 0
  br i1 %cmp18.i.not.i.i.i, label %if.end13.i.i.i.for.end.i.i.i.i_crit_edge, label %if.end13.i.i.i.land.rhs.i.i.i.i_crit_edge

if.end13.i.i.i.land.rhs.i.i.i.i_crit_edge:        ; preds = %if.end13.i.i.i
  br label %land.rhs.i.i.i.i

if.end13.i.i.i.for.end.i.i.i.i_crit_edge:         ; preds = %if.end13.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.land.rhs.i.i.i.i_crit_edge, %if.end13.i.i.i.land.rhs.i.i.i.i_crit_edge
  %srgn_idx.019.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i.i.land.rhs.i.i.i.i_crit_edge ], [ 0, %if.end13.i.i.i.land.rhs.i.i.i.i_crit_edge ]
  %172 = ptrtoint ptr %srgn_tbl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %srgn_tbl.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.ufshpb_subregion, ptr %173, i32 %srgn_idx.019.i.i.i.i
  %tobool.not.i73.i.i.i = icmp eq ptr %arrayidx.i.i.i.i, null
  br i1 %tobool.not.i73.i.i.i, label %land.rhs.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.body.i.i.i.i

land.rhs.i.i.i.i.for.end.i.i.i.i_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %land.rhs.i.i.i.i
  %list_act_srgn.i.i.i.i = getelementptr %struct.ufshpb_subregion, ptr %173, i32 %srgn_idx.019.i.i.i.i, i32 6
  %174 = ptrtoint ptr %list_act_srgn.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %list_act_srgn.i.i.i.i, ptr %list_act_srgn.i.i.i.i, align 4
  %prev.i.i.i153.i.i = getelementptr %struct.ufshpb_subregion, ptr %173, i32 %srgn_idx.019.i.i.i.i, i32 6, i32 1
  %175 = ptrtoint ptr %prev.i.i.i153.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %list_act_srgn.i.i.i.i, ptr %prev.i.i.i153.i.i, align 4
  %176 = ptrtoint ptr %rgn_idx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %rgn_idx2.i.i.i, align 4
  %rgn_idx1.i.i.i.i = getelementptr %struct.ufshpb_subregion, ptr %173, i32 %srgn_idx.019.i.i.i.i, i32 2
  %178 = ptrtoint ptr %rgn_idx1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %rgn_idx1.i.i.i.i, align 4
  %srgn_idx2.i.i.i.i = getelementptr %struct.ufshpb_subregion, ptr %173, i32 %srgn_idx.019.i.i.i.i, i32 3
  %179 = ptrtoint ptr %srgn_idx2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %srgn_idx.019.i.i.i.i, ptr %srgn_idx2.i.i.i.i, align 4
  %srgn_state.i.i.i.i = getelementptr %struct.ufshpb_subregion, ptr %173, i32 %srgn_idx.019.i.i.i.i, i32 1
  %180 = ptrtoint ptr %srgn_state.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %srgn_state.i.i.i.i, align 4
  %inc.i.i.i.i = add nuw nsw i32 %srgn_idx.019.i.i.i.i, 1
  %181 = ptrtoint ptr %srgn_cnt2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %srgn_cnt2.i.i.i.i, align 8
  %cmp.i.i.i.i = icmp slt i32 %inc.i.i.i.i, %182
  br i1 %cmp.i.i.i.i, label %for.body.i.i.i.i.land.rhs.i.i.i.i_crit_edge, label %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge

for.body.i.i.i.i.for.end.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i.i

for.body.i.i.i.i.land.rhs.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge, %land.rhs.i.i.i.i.for.end.i.i.i.i_crit_edge, %if.end13.i.i.i.for.end.i.i.i.i_crit_edge
  %srgn.1.i.i.i.i = phi ptr [ inttoptr (i32 -1 to ptr), %if.end13.i.i.i.for.end.i.i.i.i_crit_edge ], [ %arrayidx.i.i.i.i, %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ null, %land.rhs.i.i.i.i.for.end.i.i.i.i_crit_edge ]
  br i1 %cmp5.i.i.i, label %land.rhs4.i.i.i.i, label %for.end.i.i.i.i.ufshpb_init_subregion_tbl.exit.i.i.i_crit_edge

for.end.i.i.i.i.ufshpb_init_subregion_tbl.exit.i.i.i_crit_edge: ; preds = %for.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_init_subregion_tbl.exit.i.i.i

land.rhs4.i.i.i.i:                                ; preds = %for.end.i.i.i.i
  %183 = ptrtoint ptr %last_srgn_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %last_srgn_entries.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool5.not.i.i.i.i = icmp eq i32 %184, 0
  br i1 %tobool5.not.i.i.i.i, label %land.rhs4.i.i.i.i.ufshpb_init_subregion_tbl.exit.i.i.i_crit_edge, label %if.then.i.i.i.i, !prof !346

land.rhs4.i.i.i.i.ufshpb_init_subregion_tbl.exit.i.i.i_crit_edge: ; preds = %land.rhs4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_init_subregion_tbl.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %is_last.i.i.i.i = getelementptr inbounds %struct.ufshpb_subregion, ptr %srgn.1.i.i.i.i, i32 0, i32 4
  %185 = ptrtoint ptr %is_last.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 1, ptr %is_last.i.i.i.i, align 4
  br label %ufshpb_init_subregion_tbl.exit.i.i.i

ufshpb_init_subregion_tbl.exit.i.i.i:             ; preds = %if.then.i.i.i.i, %land.rhs4.i.i.i.i.ufshpb_init_subregion_tbl.exit.i.i.i_crit_edge, %for.end.i.i.i.i.ufshpb_init_subregion_tbl.exit.i.i.i_crit_edge
  %186 = ptrtoint ptr %lu_pinned_end.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %lu_pinned_end.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %187)
  %cmp.not.i.i.i.i = icmp eq i32 %187, -1
  br i1 %cmp.not.i.i.i.i, label %ufshpb_init_subregion_tbl.exit.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

ufshpb_init_subregion_tbl.exit.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %ufshpb_init_subregion_tbl.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %ufshpb_init_subregion_tbl.exit.i.i.i
  %188 = ptrtoint ptr %lu_pinned_start.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %lu_pinned_start.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %189, i32 %rgn_idx.0111.i.i.i)
  %cmp1.not.i.i.i.i = icmp ugt i32 %189, %rgn_idx.0111.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %187, i32 %rgn_idx.0111.i.i.i)
  %cmp4.not.i.i.i.i = icmp ult i32 %187, %rgn_idx.0111.i.i.i
  %or.cond.i.i.i.i = select i1 %cmp1.not.i.i.i.i, i1 true, i1 %cmp4.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %land.lhs.true.i.i.i.i.for.inc.i.i.i_crit_edge, label %if.then16.i.i.i

land.lhs.true.i.i.i.i.for.inc.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.then16.i.i.i:                                  ; preds = %land.lhs.true.i.i.i.i
  %190 = ptrtoint ptr %srgn_cnt2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %srgn_cnt2.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %cmp31.i.i.i.i = icmp sgt i32 %191, 0
  br i1 %cmp31.i.i.i.i, label %if.then16.i.i.i.land.rhs.i83.i.i.i_crit_edge, label %if.then16.i.i.i.for.inc.i.i.i_crit_edge

if.then16.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %if.then16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.then16.i.i.i.land.rhs.i83.i.i.i_crit_edge:     ; preds = %if.then16.i.i.i
  br label %land.rhs.i83.i.i.i

land.rhs.i83.i.i.i:                               ; preds = %list_add_tail.exit.i.i.i.i.land.rhs.i83.i.i.i_crit_edge, %if.then16.i.i.i.land.rhs.i83.i.i.i_crit_edge
  %srgn_idx.032.i.i.i.i = phi i32 [ %inc.i91.i.i.i, %list_add_tail.exit.i.i.i.i.land.rhs.i83.i.i.i_crit_edge ], [ 0, %if.then16.i.i.i.land.rhs.i83.i.i.i_crit_edge ]
  %192 = ptrtoint ptr %srgn_tbl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %srgn_tbl.i.i.i.i, align 4
  %arrayidx.i81.i.i.i = getelementptr %struct.ufshpb_subregion, ptr %193, i32 %srgn_idx.032.i.i.i.i
  %tobool.not.i82.i.i.i = icmp eq ptr %arrayidx.i81.i.i.i, null
  br i1 %tobool.not.i82.i.i.i, label %land.rhs.i83.i.i.i.for.inc.i.i.i_crit_edge, label %for.body.i86.i.i.i

land.rhs.i83.i.i.i.for.inc.i.i.i_crit_edge:       ; preds = %land.rhs.i83.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

for.body.i86.i.i.i:                               ; preds = %land.rhs.i83.i.i.i
  %is_last.i84.i.i.i = getelementptr %struct.ufshpb_subregion, ptr %193, i32 %srgn_idx.032.i.i.i.i, i32 4
  %194 = ptrtoint ptr %is_last.i84.i.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %is_last.i84.i.i.i, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool1.i.i.i.i = icmp ne i8 %195, 0
  %call.i.i154.i.i = call fastcc ptr @ufshpb_get_map_ctx(ptr noundef %call7.i.i.i, i1 noundef zeroext %tobool1.i.i.i.i) #9
  %196 = ptrtoint ptr %arrayidx.i81.i.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %call.i.i154.i.i, ptr %arrayidx.i81.i.i.i, align 4
  %srgn_state.i85.i.i.i = getelementptr %struct.ufshpb_subregion, ptr %193, i32 %srgn_idx.032.i.i.i.i, i32 1
  %197 = ptrtoint ptr %srgn_state.i85.i.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 1, ptr %srgn_state.i85.i.i.i, align 4
  %tobool3.not.i.i.i.i = icmp eq ptr %call.i.i154.i.i, null
  br i1 %tobool3.not.i.i.i.i, label %if.then.i87.i.i.i, label %if.end.i90.i.i.i

if.then.i87.i.i.i:                                ; preds = %for.body.i86.i.i.i
  %dev.i.i.i.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %198 = ptrtoint ptr %dev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev.i.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %199, ptr noundef nonnull @.str.128) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srgn_idx.032.i.i.i.i)
  %cmp534.not.i.i.i.i = icmp eq i32 %srgn_idx.032.i.i.i.i, 0
  br i1 %cmp534.not.i.i.i.i, label %if.then.i87.i.i.i.cleanup.i.i.i_crit_edge, label %if.then.i87.i.i.i.for.body6.i.i.i.i_crit_edge

if.then.i87.i.i.i.for.body6.i.i.i.i_crit_edge:    ; preds = %if.then.i87.i.i.i
  br label %for.body6.i.i.i.i

if.then.i87.i.i.i.cleanup.i.i.i_crit_edge:        ; preds = %if.then.i87.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i.i

if.end.i90.i.i.i:                                 ; preds = %for.body.i86.i.i.i
  %list_act_srgn.i88.i.i.i = getelementptr %struct.ufshpb_subregion, ptr %193, i32 %srgn_idx.032.i.i.i.i, i32 6
  %200 = ptrtoint ptr %prev.i140.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %prev.i140.i.i, align 4
  %call.i.i.i89.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list_act_srgn.i88.i.i.i, ptr noundef %201, ptr noundef %lh_act_srgn.i.i) #9
  br i1 %call.i.i.i89.i.i.i, label %if.end.i.i.i.i155.i.i, label %if.end.i90.i.i.i.list_add_tail.exit.i.i.i.i_crit_edge

if.end.i90.i.i.i.list_add_tail.exit.i.i.i.i_crit_edge: ; preds = %if.end.i90.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i.i.i.i

if.end.i.i.i.i155.i.i:                            ; preds = %if.end.i90.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %202 = ptrtoint ptr %prev.i140.i.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %list_act_srgn.i88.i.i.i, ptr %prev.i140.i.i, align 4
  %203 = ptrtoint ptr %list_act_srgn.i88.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %lh_act_srgn.i.i, ptr %list_act_srgn.i88.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr %struct.ufshpb_subregion, ptr %193, i32 %srgn_idx.032.i.i.i.i, i32 6, i32 1
  %204 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %201, ptr %prev3.i.i.i.i.i.i, align 4
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %list_act_srgn.i88.i.i.i, ptr %201, align 4
  br label %list_add_tail.exit.i.i.i.i

list_add_tail.exit.i.i.i.i:                       ; preds = %if.end.i.i.i.i155.i.i, %if.end.i90.i.i.i.list_add_tail.exit.i.i.i.i_crit_edge
  %inc.i91.i.i.i = add nuw nsw i32 %srgn_idx.032.i.i.i.i, 1
  %206 = ptrtoint ptr %srgn_cnt2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %srgn_cnt2.i.i.i.i, align 8
  %cmp.i92.i.i.i = icmp slt i32 %inc.i91.i.i.i, %207
  br i1 %cmp.i92.i.i.i, label %list_add_tail.exit.i.i.i.i.land.rhs.i83.i.i.i_crit_edge, label %list_add_tail.exit.i.i.i.i.for.inc.i.i.i_crit_edge

list_add_tail.exit.i.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %list_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

list_add_tail.exit.i.i.i.i.land.rhs.i83.i.i.i_crit_edge: ; preds = %list_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i83.i.i.i

for.body6.i.i.i.i:                                ; preds = %ufshpb_put_map_ctx.exit.i.i.i.i.for.body6.i.i.i.i_crit_edge, %if.then.i87.i.i.i.for.body6.i.i.i.i_crit_edge
  %i.035.i.i.i.i = phi i32 [ %inc10.i.i.i.i, %ufshpb_put_map_ctx.exit.i.i.i.i.for.body6.i.i.i.i_crit_edge ], [ 0, %if.then.i87.i.i.i.for.body6.i.i.i.i_crit_edge ]
  %208 = ptrtoint ptr %srgn_tbl.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %srgn_tbl.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.ufshpb_subregion, ptr %209, i32 %i.035.i.i.i.i
  %210 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %add.ptr.i.i.i.i, align 4
  %212 = ptrtoint ptr %pages_per_srgn.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %pages_per_srgn.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp8.not.i.i.i.i.i = icmp eq i32 %213, 0
  br i1 %cmp8.not.i.i.i.i.i, label %for.body6.i.i.i.i.ufshpb_put_map_ctx.exit.i.i.i.i_crit_edge, label %for.body6.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.body6.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %for.body6.i.i.i.i
  br label %for.body.i.i.i.i.i

for.body6.i.i.i.i.ufshpb_put_map_ctx.exit.i.i.i.i_crit_edge: ; preds = %for.body6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_put_map_ctx.exit.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %for.body6.i.i.i.i.for.body.i.i.i.i.i_crit_edge
  %i.09.i.i.i.i.i = phi i32 [ %inc.i.i.i.i.i, %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ 0, %for.body6.i.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %214 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %211, align 4
  %arrayidx.i.i.i.i.i = getelementptr ptr, ptr %215, i32 %i.09.i.i.i.i.i
  %216 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %arrayidx.i.i.i.i.i, align 4
  %218 = load ptr, ptr @ufshpb_page_pool, align 4
  call void @mempool_free(ptr noundef %217, ptr noundef %218) #9
  %inc.i.i.i.i.i = add nuw i32 %i.09.i.i.i.i.i, 1
  %219 = ptrtoint ptr %pages_per_srgn.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %pages_per_srgn.i.i, align 8
  %cmp.i.i.i.i.i = icmp ult i32 %inc.i.i.i.i.i, %220
  br i1 %cmp.i.i.i.i.i, label %for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, label %for.body.i.i.i.i.i.ufshpb_put_map_ctx.exit.i.i.i.i_crit_edge

for.body.i.i.i.i.i.ufshpb_put_map_ctx.exit.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_put_map_ctx.exit.i.i.i.i

for.body.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:  ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i.i

ufshpb_put_map_ctx.exit.i.i.i.i:                  ; preds = %for.body.i.i.i.i.i.ufshpb_put_map_ctx.exit.i.i.i.i_crit_edge, %for.body6.i.i.i.i.ufshpb_put_map_ctx.exit.i.i.i.i_crit_edge
  %ppn_dirty.i.i.i.i.i = getelementptr inbounds %struct.ufshpb_map_ctx, ptr %211, i32 0, i32 1
  %221 = ptrtoint ptr %ppn_dirty.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %ppn_dirty.i.i.i.i.i, align 4
  call void @bitmap_free(ptr noundef %222) #9
  %223 = ptrtoint ptr %m_page_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %m_page_cache.i.i, align 8
  %225 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %211, align 4
  call void @kmem_cache_free(ptr noundef %224, ptr noundef %226) #9
  %227 = load ptr, ptr @ufshpb_mctx_pool, align 4
  call void @mempool_free(ptr noundef %211, ptr noundef %227) #9
  %inc10.i.i.i.i = add nuw nsw i32 %i.035.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc10.i.i.i.i, %srgn_idx.032.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %ufshpb_put_map_ctx.exit.i.i.i.i.cleanup.i.i.i_crit_edge, label %ufshpb_put_map_ctx.exit.i.i.i.i.for.body6.i.i.i.i_crit_edge

ufshpb_put_map_ctx.exit.i.i.i.i.for.body6.i.i.i.i_crit_edge: ; preds = %ufshpb_put_map_ctx.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6.i.i.i.i

ufshpb_put_map_ctx.exit.i.i.i.i.cleanup.i.i.i_crit_edge: ; preds = %ufshpb_put_map_ctx.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %ufshpb_put_map_ctx.exit.i.i.i.i.cleanup.i.i.i_crit_edge, %if.then.i87.i.i.i.cleanup.i.i.i_crit_edge, %kvcalloc.exit.i.i.i.i.cleanup.i.i.i_crit_edge, %kvcalloc.exit.thread.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rgn_idx.0111.i.i.i)
  %cmp25.not116.i.i.i = icmp slt i32 %rgn_idx.0111.i.i.i, 0
  br i1 %cmp25.not116.i.i.i, label %cleanup.i.i.i.for.end29.i.i.i_crit_edge, label %cleanup.i.i.i.for.body26.i.i.i_crit_edge

cleanup.i.i.i.for.body26.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  br label %for.body26.i.i.i

cleanup.i.i.i.for.end29.i.i.i_crit_edge:          ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29.i.i.i

for.inc.i.i.i:                                    ; preds = %list_add_tail.exit.i.i.i.i.for.inc.i.i.i_crit_edge, %land.rhs.i83.i.i.i.for.inc.i.i.i_crit_edge, %if.then16.i.i.i.for.inc.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.for.inc.i.i.i_crit_edge, %ufshpb_init_subregion_tbl.exit.i.i.i.for.inc.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then16.i.i.i.for.inc.i.i.i_crit_edge ], [ 0, %land.lhs.true.i.i.i.i.for.inc.i.i.i_crit_edge ], [ 0, %ufshpb_init_subregion_tbl.exit.i.i.i.for.inc.i.i.i_crit_edge ], [ 2, %land.rhs.i83.i.i.i.for.inc.i.i.i_crit_edge ], [ 2, %list_add_tail.exit.i.i.i.i.for.inc.i.i.i_crit_edge ]
  %rgn_state.i.i.i = getelementptr %struct.ufshpb_region, ptr %call.i.i.i.i.i.i, i32 %rgn_idx.0111.i.i.i, i32 2
  %228 = ptrtoint ptr %rgn_state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %.sink.i.i.i, ptr %rgn_state.i.i.i, align 8
  %rgn_flags.i.i.i = getelementptr %struct.ufshpb_region, ptr %call.i.i.i.i.i.i, i32 %rgn_idx.0111.i.i.i, i32 7
  %229 = ptrtoint ptr %rgn_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 0, ptr %rgn_flags.i.i.i, align 4
  %230 = ptrtoint ptr %add.ptr.i149.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %call7.i.i.i, ptr %add.ptr.i149.i.i, align 8
  %inc.i156.i.i = add nuw i32 %rgn_idx.0111.i.i.i, 1
  %231 = ptrtoint ptr %rgns_per_lu.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %rgns_per_lu.i.i, align 8
  %cmp.i157.i.i = icmp ult i32 %inc.i156.i.i, %232
  br i1 %cmp.i157.i.i, label %for.inc.i.i.i.for.body.i151.i.i_crit_edge, label %for.inc.i.i.i.if.end84.i.i_crit_edge

for.inc.i.i.i.if.end84.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84.i.i

for.inc.i.i.i.for.body.i151.i.i_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i151.i.i

for.body26.i.i.i:                                 ; preds = %for.body26.i.i.i.for.body26.i.i.i_crit_edge, %cleanup.i.i.i.for.body26.i.i.i_crit_edge
  %i.0117.i.i.i = phi i32 [ %inc28.i.i.i, %for.body26.i.i.i.for.body26.i.i.i_crit_edge ], [ 0, %cleanup.i.i.i.for.body26.i.i.i_crit_edge ]
  %srgn_tbl.i.i.i = getelementptr %struct.ufshpb_region, ptr %call.i.i.i.i.i.i, i32 %i.0117.i.i.i, i32 1
  %233 = ptrtoint ptr %srgn_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %srgn_tbl.i.i.i, align 4
  call void @kvfree(ptr noundef %234) #9
  %inc28.i.i.i = add i32 %i.0117.i.i.i, 1
  %cmp25.not.i.i.i = icmp sgt i32 %inc28.i.i.i, %rgn_idx.0111.i.i.i
  br i1 %cmp25.not.i.i.i, label %for.body26.i.i.i.for.end29.i.i.i_crit_edge, label %for.body26.i.i.i.for.body26.i.i.i_crit_edge

for.body26.i.i.i.for.body26.i.i.i_crit_edge:      ; preds = %for.body26.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body26.i.i.i

for.body26.i.i.i.for.end29.i.i.i_crit_edge:       ; preds = %for.body26.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29.i.i.i

for.end29.i.i.i:                                  ; preds = %for.body26.i.i.i.for.end29.i.i.i_crit_edge, %cleanup.i.i.i.for.end29.i.i.i_crit_edge
  call void @kvfree(ptr noundef nonnull %call.i.i.i.i.i.i) #9
  br label %release_pre_req_mempool.i.i

if.end84.i.i:                                     ; preds = %for.inc.i.i.i.if.end84.i.i_crit_edge, %for.cond.preheader.i148.i.i.if.end84.i.i_crit_edge
  %rgn_tbl.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 3
  %235 = ptrtoint ptr %rgn_tbl.i.i.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %call.i.i.i.i.i.i, ptr %rgn_tbl.i.i.i, align 4
  %stats.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 34
  %umap_req_cnt.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 34, i32 7
  %236 = ptrtoint ptr %umap_req_cnt.i.i.i to i32
  call void @__asan_store8_noabort(i32 %236)
  store i64 0, ptr %umap_req_cnt.i.i.i, align 8
  %237 = call ptr @memset(ptr %stats.i.i.i, i32 0, i32 48)
  %params.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 35
  %238 = ptrtoint ptr %params.i.i.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 0, ptr %params.i.i.i, align 8
  %239 = ptrtoint ptr %is_hcm.i19.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %is_hcm.i19.i, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool.not.i159.i.i = icmp eq i8 %240, 0
  br i1 %tobool.not.i159.i.i, label %if.end84.i.i.if.end9_crit_edge, label %if.then87.i.i

if.end84.i.i.if.end9_crit_edge:                   ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then87.i.i:                                    ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %activation_thld.i.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 35, i32 1
  %241 = ptrtoint ptr %activation_thld.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 8, ptr %activation_thld.i.i.i.i, align 4
  %normalization_factor.i.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 35, i32 2
  %242 = ptrtoint ptr %normalization_factor.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 1, ptr %normalization_factor.i.i.i.i, align 8
  %eviction_thld_enter.i.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 35, i32 3
  %243 = ptrtoint ptr %eviction_thld_enter.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 256, ptr %eviction_thld_enter.i.i.i.i, align 4
  %eviction_thld_exit.i.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 35, i32 4
  %244 = ptrtoint ptr %eviction_thld_exit.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 128, ptr %eviction_thld_exit.i.i.i.i, align 8
  %read_timeout_ms.i.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 35, i32 5
  %245 = ptrtoint ptr %read_timeout_ms.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 1000, ptr %read_timeout_ms.i.i.i.i, align 4
  %read_timeout_expiries.i.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 35, i32 6
  %246 = ptrtoint ptr %read_timeout_expiries.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 100, ptr %read_timeout_expiries.i.i.i.i, align 8
  %timeout_polling_interval_ms.i.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 35, i32 7
  %247 = ptrtoint ptr %timeout_polling_interval_ms.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 200, ptr %timeout_polling_interval_ms.i.i.i.i, align 4
  %inflight_map_req.i.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 35, i32 8
  %248 = ptrtoint ptr %inflight_map_req.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 1, ptr %inflight_map_req.i.i.i.i, align 8
  %ufshpb_read_to_work88.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %call7.i.i.i, i32 0, i32 18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %249 = load ptr, ptr @system_wq, align 4
  %call.i.i162.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %249, ptr noundef %ufshpb_read_to_work88.i.i, i32 noundef 20) #9
  br label %if.end9

release_pre_req_mempool.i.i:                      ; preds = %for.end29.i.i.i, %kvcalloc.exit.i.i.i.release_pre_req_mempool.i.i_crit_edge, %if.end80.i.i.release_pre_req_mempool.i.i_crit_edge
  call fastcc void @ufshpb_pre_req_mempool_destroy(ptr noundef %call7.i.i.i) #9
  br label %release_m_page_cache.i.i

release_m_page_cache.i.i:                         ; preds = %release_pre_req_mempool.i.i, %do.end77.i.i
  %250 = ptrtoint ptr %m_page_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %m_page_cache.i.i, align 8
  call void @kmem_cache_destroy(ptr noundef %251) #9
  br label %release_req_cache.i.i

release_req_cache.i.i:                            ; preds = %release_m_page_cache.i.i, %do.end68.i.i
  %252 = ptrtoint ptr %map_req_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %map_req_cache.i.i, align 4
  call void @kmem_cache_destroy(ptr noundef %253) #9
  br label %do.end.i28

do.end.i28:                                       ; preds = %release_req_cache.i.i, %do.end60.i.i
  %dev.i27 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %254 = ptrtoint ptr %dev.i27 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev.i27, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %255, ptr noundef nonnull @.str.66, i32 noundef -12) #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %out

if.end9:                                          ; preds = %if.then87.i.i, %if.end84.i.i.if.end9_crit_edge
  %hostdata.i = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 21
  %256 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %call7.i.i.i, ptr %hostdata.i, align 8
  %257 = ptrtoint ptr %srgns_per_rgn.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %srgns_per_rgn.i.i, align 4
  %mul = mul i32 %258, %conv28.i
  %259 = ptrtoint ptr %pages_per_srgn.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %pages_per_srgn.i.i, align 8
  %mul10 = mul i32 %mul, %260
  %261 = load i32, ptr @tot_active_srgn_pages, align 4
  %add = add i32 %261, %mul10
  store i32 %add, ptr @tot_active_srgn_pages, align 4
  br label %out

out:                                              ; preds = %if.end9, %do.end.i28, %if.end5.out_crit_edge, %ufshpb_get_lu_info.exit.thread, %entry.out_crit_edge
  %slave_conf_cnt = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %slave_conf_cnt, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !349
  call void @llvm.prefetch.p0(ptr %slave_conf_cnt, i32 1, i32 3, i32 1) #9
  %262 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %slave_conf_cnt, ptr %slave_conf_cnt, i32 1, ptr elementtype(i32) %slave_conf_cnt) #9, !srcloc !350
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %262, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !351
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then13, label %out.if.end14_crit_edge

out.if.end14_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %out
  %263 = load i32, ptr @tot_active_srgn_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %263)
  %cmp.i = icmp eq i32 %263, 0
  br i1 %cmp.i, label %if.then13.cleanup.sink.split.i_crit_edge, label %if.end.i30

if.then13.cleanup.sink.split.i_crit_edge:         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

if.end.i30:                                       ; preds = %if.then13
  %call.i = call fastcc zeroext i1 @ufshpb_check_hpb_reset_query(ptr noundef %hba) #9
  %264 = load i32, ptr @ufshpb_host_map_kbytes, align 4
  %mul.i = shl i32 %264, 10
  %add.i = add i32 %mul.i, 4095
  %div47.i = lshr i32 %add.i, 12
  %265 = load i32, ptr @tot_active_srgn_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div47.i, i32 %265)
  %cmp1.i = icmp sgt i32 %div47.i, %265
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i30.if.end5.i31_crit_edge

if.end.i30.if.end5.i31_crit_edge:                 ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i31

if.then2.i:                                       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #11
  %266 = load ptr, ptr @ufshpb_mctx_pool, align 4
  %call3.i = call i32 @mempool_resize(ptr noundef %266, i32 noundef %265) #9
  %267 = load ptr, ptr @ufshpb_page_pool, align 4
  %268 = load i32, ptr @tot_active_srgn_pages, align 4
  %call4.i = call i32 @mempool_resize(ptr noundef %267, i32 noundef %268) #9
  br label %if.end5.i31

if.end5.i31:                                      ; preds = %if.then2.i, %if.end.i30.if.end5.i31_crit_edge
  %host.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 7
  %269 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %host.i, align 4
  %call6.i = call ptr @__scsi_iterate_devices(ptr noundef %270, ptr noundef null) #9
  %tobool.not48.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not48.i, label %if.end5.i31.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end5.i31.for.end.i_crit_edge:                  ; preds = %if.end5.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end5.i31
  %dev.i32 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sdev.049.i = phi ptr [ %call6.i, %for.body.lr.ph.i ], [ %call23.i, %for.inc.i.for.body.i_crit_edge ]
  %hostdata.i.i = getelementptr inbounds %struct.scsi_device, ptr %sdev.049.i, i32 0, i32 21
  %271 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %hostdata.i.i, align 8
  %tobool8.not.i = icmp eq ptr %272, null
  br i1 %tobool8.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end10.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end10.i:                                       ; preds = %for.body.i
  br i1 %call.i, label %do.end.i37, label %if.then12.i

if.then12.i:                                      ; preds = %if.end10.i
  %hpb_state.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %272, i32 0, i32 4
  %call.i.i.i.i33 = call zeroext i1 @__kasan_check_write(ptr noundef %hpb_state.i.i, i32 noundef 4) #9
  %273 = ptrtoint ptr %hpb_state.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store volatile i32 1, ptr %hpb_state.i.i, align 4
  %lu_pinned_end.i = getelementptr inbounds %struct.ufshpb_lu, ptr %272, i32 0, i32 21
  %274 = ptrtoint ptr %lu_pinned_end.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %lu_pinned_end.i, align 4
  %lu_pinned_start.i = getelementptr inbounds %struct.ufshpb_lu, ptr %272, i32 0, i32 20
  %276 = ptrtoint ptr %lu_pinned_start.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %lu_pinned_start.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %275, i32 %277)
  %cmp13.not.i = icmp eq i32 %275, %277
  br i1 %cmp13.not.i, label %if.then12.i.if.end16.i_crit_edge, label %if.then14.i

if.then12.i.if.end16.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  %278 = load ptr, ptr @ufshpb_wq, align 4
  %map_work.i = getelementptr inbounds %struct.ufshpb_lu, ptr %272, i32 0, i32 15
  %call.i.i34 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %278, ptr noundef %map_work.i) #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.then12.i.if.end16.i_crit_edge
  %is_hcm.i = getelementptr inbounds %struct.ufshpb_lu, ptr %272, i32 0, i32 33
  %279 = ptrtoint ptr %is_hcm.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %is_hcm.i, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %280)
  %tobool17.not.i = icmp eq i8 %280, 0
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end16.i.for.inc.i_crit_edge

if.end16.i.for.inc.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then18.i:                                      ; preds = %if.end16.i
  %call.i.i.i35 = call fastcc ptr @ufshpb_get_req(ptr noundef nonnull %272, i32 noundef 0, i32 noundef 35, i1 noundef zeroext false) #9
  %tobool3.not.i.i.i = icmp eq ptr %call.i.i.i35, null
  br i1 %tobool3.not.i.i.i, label %if.then18.i.for.inc.i_crit_edge, label %if.end.i.i.i

if.then18.i.for.inc.i_crit_edge:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i.i.i:                                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  %281 = ptrtoint ptr %call.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %call.i.i.i35, align 4
  %timeout.i.i.i.i = getelementptr inbounds %struct.request, ptr %282, i32 0, i32 7
  %283 = ptrtoint ptr %timeout.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 0, ptr %timeout.i.i.i.i, align 4
  %end_io_data.i.i.i.i = getelementptr inbounds %struct.request, ptr %282, i32 0, i32 33
  %284 = ptrtoint ptr %end_io_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %call.i.i.i35, ptr %end_io_data.i.i.i.i, align 4
  %cmd.i.i.i.i = getelementptr %struct.request, ptr %282, i32 1, i32 4
  %285 = ptrtoint ptr %cmd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %cmd.i.i.i.i, align 4
  %287 = ptrtoint ptr %286 to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 -6, ptr %286, align 1
  %arrayidx1.i.i.i.i.i = getelementptr i8, ptr %286, i32 1
  %288 = ptrtoint ptr %arrayidx1.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 3, ptr %arrayidx1.i.i.i.i.i, align 1
  %arrayidx5.i.i.i.i.i = getelementptr i8, ptr %286, i32 9
  %289 = ptrtoint ptr %arrayidx5.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 0, ptr %arrayidx5.i.i.i.i.i, align 1
  %cmd_len.i.i.i.i = getelementptr %struct.request, ptr %282, i32 1, i32 5
  %290 = ptrtoint ptr %cmd_len.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %290)
  store i16 10, ptr %cmd_len.i.i.i.i, align 4
  call void @blk_execute_rq_nowait(ptr noundef %282, i1 noundef zeroext true, ptr noundef nonnull @ufshpb_umap_req_compl_fn) #9
  %umap_req_cnt.i.i.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %272, i32 0, i32 34, i32 7
  %291 = ptrtoint ptr %umap_req_cnt.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %291)
  %292 = load i64, ptr %umap_req_cnt.i.i.i.i, align 8
  %inc.i.i.i.i36 = add i64 %292, 1
  store i64 %inc.i.i.i.i36, ptr %umap_req_cnt.i.i.i.i, align 8
  br label %for.inc.i

do.end.i37:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %293 = ptrtoint ptr %dev.i32 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %dev.i32, align 8
  %295 = ptrtoint ptr %272 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %272, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %294, ptr noundef nonnull @.str.130, i32 noundef %296) #12
  call void @ufshpb_destroy_lu(ptr undef, ptr noundef nonnull %sdev.049.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i37, %if.end.i.i.i, %if.then18.i.for.inc.i_crit_edge, %if.end16.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %297 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %host.i, align 4
  %call23.i = call ptr @__scsi_iterate_devices(ptr noundef %298, ptr noundef nonnull %sdev.049.i) #9
  %tobool.not.i38 = icmp eq ptr %call23.i, null
  br i1 %tobool.not.i38, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end5.i31.for.end.i_crit_edge
  br i1 %call.i, label %for.end.i.cleanup.sink.split.i_crit_edge, label %for.end.i.if.end14_crit_edge

for.end.i.if.end14_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.end.i.cleanup.sink.split.i_crit_edge, %if.then13.cleanup.sink.split.i_crit_edge
  %299 = load ptr, ptr @ufshpb_page_pool, align 4
  call void @mempool_destroy(ptr noundef %299) #9
  %300 = load ptr, ptr @ufshpb_mctx_pool, align 4
  call void @mempool_destroy(ptr noundef %300) #9
  %301 = load ptr, ptr @ufshpb_mctx_cache, align 4
  call void @kmem_cache_destroy(ptr noundef %301) #9
  %302 = load ptr, ptr @ufshpb_wq, align 4
  call void @destroy_workqueue(ptr noundef %302) #9
  br label %if.end14

if.end14:                                         ; preds = %cleanup.sink.split.i, %for.end.i.if.end14_crit_edge, %out.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufshpb_get_geo_info(ptr nocapture noundef %hba, ptr nocapture noundef readonly %geo_buf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %geo_buf, i32 73
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %geo_buf, i32 72
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %rgn_size = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 1
  %4 = ptrtoint ptr %rgn_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv3, ptr %rgn_size, align 4
  %arrayidx4 = getelementptr i8, ptr %geo_buf, i32 74
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  %srgn_size = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 2
  %7 = ptrtoint ptr %srgn_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv5, ptr %srgn_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp8 = icmp eq i8 %3, 0
  br i1 %cmp8, label %if.end.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %geo_buf, i32 75
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp11 = icmp eq i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp14 = icmp eq i16 %9, 0
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp14
  br i1 %or.cond, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.26.sink = phi ptr [ @.str.23, %entry.cleanup.sink.split_crit_edge ], [ @.str.26, %if.end.cleanup.sink.split_crit_edge ], [ @.str.26, %lor.lhs.false.cleanup.sink.split_crit_edge ]
  %dev20 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %10 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull %.str.26.sink) #12
  %hpb_disabled21 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 4
  %12 = ptrtoint ptr %hpb_disabled21 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %hpb_disabled21, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufshpb_get_dev_info(ptr noundef %hba, ptr nocapture noundef readonly %desc_buf) local_unnamed_addr #1 align 64 {
entry:
  %max_single_cmd = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ufshpb_dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_single_cmd) #9
  %0 = ptrtoint ptr %max_single_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %max_single_cmd, align 4, !annotation !343
  %arrayidx = getelementptr i8, ptr %desc_buf, i32 66
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %control_mode = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 7
  %3 = ptrtoint ptr %control_mode to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %control_mode, align 1
  %add.ptr = getelementptr i8, ptr %desc_buf, i32 64
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %add.ptr, align 1
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.156)
  switch i16 %5, label %do.end [
    i16 256, label %if.then6
    i16 512, label %entry.if.end7_crit_edge
  ]

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %5 to i32
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %conv) #12
  %hpb_disabled = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 4
  %9 = ptrtoint ptr %hpb_disabled to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %hpb_disabled, align 4
  br label %cleanup

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %is_legacy = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 6
  %10 = ptrtoint ptr %is_legacy to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %is_legacy, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %entry.if.end7_crit_edge
  %arrayidx8 = getelementptr i8, ptr %desc_buf, i32 6
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %12 to i32
  %13 = ptrtoint ptr %ufshpb_dev to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv9, ptr %ufshpb_dev, align 4
  %is_legacy10 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 6
  %14 = ptrtoint ptr %is_legacy10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_legacy10, align 2, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call13 = call i32 @ufshcd_query_attr_retry(ptr noundef %hba, i32 noundef 3, i32 noundef 1, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %max_single_cmd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %max_hpb_single_cmd = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 5
  %16 = ptrtoint ptr %max_hpb_single_cmd to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %max_hpb_single_cmd, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %max_single_cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_single_cmd, align 4
  %add = add i32 %18, 1
  %19 = call i32 @llvm.smin.i32(i32 %add, i32 255)
  %20 = trunc i32 %19 to i8
  %max_hpb_single_cmd19 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 5
  %21 = ptrtoint ptr %max_hpb_single_cmd19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %max_hpb_single_cmd19, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then15, %if.end7.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_single_cmd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_query_attr_retry(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufshpb_init(ptr noundef %hba) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ufshpb_dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87
  %hpb_disabled.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 4
  %0 = ptrtoint ptr %hpb_disabled.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hpb_disabled.i, align 8, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hpb_enabled = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 66, i32 7
  %2 = ptrtoint ptr %hpb_enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hpb_enabled, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.138, i32 noundef 8, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  store ptr %call.i, ptr @ufshpb_mctx_cache, align 4
  %tobool.not.i18 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i18, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.139) #12
  br label %if.then3

if.end.i:                                         ; preds = %if.end
  %6 = load i32, ptr @ufshpb_host_map_kbytes, align 4
  %mul.i = shl i32 %6, 10
  %add.i = add i32 %mul.i, 4095
  %div36.i = lshr i32 %add.i, 12
  %dev4.i = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %7 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev4.i, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.140, i32 noundef 2516, i32 noundef %6, i32 noundef %div36.i) #12
  %9 = load ptr, ptr @ufshpb_mctx_cache, align 4
  %call.i.i19 = tail call ptr @mempool_create(i32 noundef %div36.i, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %9) #9
  store ptr %call.i.i19, ptr @ufshpb_mctx_pool, align 4
  %tobool6.not.i = icmp eq ptr %call.i.i19, null
  br i1 %tobool6.not.i, label %do.end10.i, label %if.end12.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.145) #12
  br label %release_mctx_cache.i

if.end12.i:                                       ; preds = %if.end.i
  %call.i37.i = tail call ptr @mempool_create(i32 noundef %div36.i, ptr noundef nonnull @mempool_alloc_pages, ptr noundef nonnull @mempool_free_pages, ptr noundef null) #9
  store ptr %call.i37.i, ptr @ufshpb_page_pool, align 4
  %tobool14.not.i = icmp eq ptr %call.i37.i, null
  br i1 %tobool14.not.i, label %do.end18.i, label %if.end20.i

do.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.148) #12
  br label %release_mctx_pool.i

if.end20.i:                                       ; preds = %if.end12.i
  %call21.i = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.150, i32 noundef 10, i32 noundef 0) #9
  store ptr %call21.i, ptr @ufshpb_wq, align 4
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %do.end26.i, label %if.end4

do.end26.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev4.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.152) #12
  %16 = load ptr, ptr @ufshpb_page_pool, align 4
  tail call void @mempool_destroy(ptr noundef %16) #9
  br label %release_mctx_pool.i

release_mctx_pool.i:                              ; preds = %do.end26.i, %do.end18.i
  %17 = load ptr, ptr @ufshpb_mctx_pool, align 4
  tail call void @mempool_destroy(ptr noundef %17) #9
  br label %release_mctx_cache.i

release_mctx_cache.i:                             ; preds = %release_mctx_pool.i, %do.end10.i
  %18 = load ptr, ptr @ufshpb_mctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %18) #9
  br label %if.then3

if.then3:                                         ; preds = %release_mctx_cache.i, %do.end.i
  %19 = ptrtoint ptr %hpb_disabled.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %hpb_disabled.i, align 4
  br label %cleanup

if.end4:                                          ; preds = %if.end20.i
  %slave_conf_cnt = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 87, i32 3
  %20 = ptrtoint ptr %ufshpb_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ufshpb_dev, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %slave_conf_cnt, i32 noundef 4) #9
  %22 = ptrtoint ptr %slave_conf_cnt to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %21, ptr %slave_conf_cnt, align 4
  store i32 0, ptr @tot_active_srgn_pages, align 4
  %call5 = tail call i32 @ufshcd_query_flag(ptr noundef %hba, i32 noundef 6, i32 noundef 17, i8 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %for.cond

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %if.end4
  %call5.1 = tail call i32 @ufshcd_query_flag(ptr noundef %hba, i32 noundef 6, i32 noundef 17, i8 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %tobool6.not.1 = icmp eq i32 %call5.1, 0
  br i1 %tobool6.not.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %call5.2 = tail call i32 @ufshcd_query_flag(ptr noundef %hba, i32 noundef 6, i32 noundef 17, i8 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %tobool6.not.2 = icmp eq i32 %call5.2, 0
  br i1 %tobool6.not.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %call5.3 = tail call i32 @ufshcd_query_flag(ptr noundef %hba, i32 noundef 6, i32 noundef 17, i8 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3)
  %tobool6.not.3 = icmp eq i32 %call5.3, 0
  br i1 %tobool6.not.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %call5.4 = tail call i32 @ufshcd_query_flag(ptr noundef %hba, i32 noundef 6, i32 noundef 17, i8 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4)
  %tobool6.not.4 = icmp eq i32 %call5.4, 0
  br i1 %tobool6.not.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %call5.5 = tail call i32 @ufshcd_query_flag(ptr noundef %hba, i32 noundef 6, i32 noundef 17, i8 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.5)
  %tobool6.not.5 = icmp eq i32 %call5.5, 0
  br i1 %tobool6.not.5, label %for.cond.4.cleanup_crit_edge, label %for.cond.5

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %call5.6 = tail call i32 @ufshcd_query_flag(ptr noundef %hba, i32 noundef 6, i32 noundef 17, i8 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.6)
  %tobool6.not.6 = icmp eq i32 %call5.6, 0
  br i1 %tobool6.not.6, label %for.cond.5.cleanup_crit_edge, label %for.cond.6

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %call5.7 = tail call i32 @ufshcd_query_flag(ptr noundef %hba, i32 noundef 6, i32 noundef 17, i8 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.7)
  %tobool6.not.7 = icmp eq i32 %call5.7, 0
  br i1 %tobool6.not.7, label %for.cond.6.cleanup_crit_edge, label %for.cond.7

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %call5.8 = tail call i32 @ufshcd_query_flag(ptr noundef %hba, i32 noundef 6, i32 noundef 17, i8 noundef zeroext 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.8)
  %tobool6.not.8 = icmp eq i32 %call5.8, 0
  br i1 %tobool6.not.8, label %for.cond.7.cleanup_crit_edge, label %for.cond.8

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #11
  %call5.9 = tail call i32 @ufshcd_query_flag(ptr noundef %hba, i32 noundef 6, i32 noundef 17, i8 noundef zeroext 0, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %for.cond.8, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_query_flag(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufshpb_remove(ptr nocapture readnone %hba) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ufshpb_page_pool, align 4
  tail call void @mempool_destroy(ptr noundef %0) #9
  %1 = load ptr, ptr @ufshpb_mctx_pool, align 4
  tail call void @mempool_destroy(ptr noundef %1) #9
  %2 = load ptr, ptr @ufshpb_mctx_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %2) #9
  %3 = load ptr, ptr @ufshpb_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufshpb_update_inactive_info(ptr noundef %hpb, i32 noundef %rgn_idx) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rgn_tbl = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 3
  %0 = ptrtoint ptr %rgn_tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rgn_tbl, align 4
  %srgn_tbl = getelementptr %struct.ufshpb_region, ptr %1, i32 %rgn_idx, i32 1
  %srgn_cnt = getelementptr %struct.ufshpb_region, ptr %1, i32 %rgn_idx, i32 4
  %2 = ptrtoint ptr %srgn_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %srgn_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13 = icmp sgt i32 %3, 0
  br i1 %cmp13, label %entry.land.rhs_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %list_del_init.exit.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %srgn_idx.014 = phi i32 [ %inc, %list_del_init.exit.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %srgn_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %srgn_tbl, align 4
  %arrayidx = getelementptr %struct.ufshpb_subregion, ptr %5, i32 %srgn_idx.014
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %list_act_srgn = getelementptr %struct.ufshpb_subregion, ptr %5, i32 %srgn_idx.014, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_act_srgn) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr %struct.ufshpb_subregion, ptr %5, i32 %srgn_idx.014, i32 6, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %list_act_srgn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list_act_srgn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %12 = ptrtoint ptr %list_act_srgn to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list_act_srgn, ptr %list_act_srgn, align 4
  %prev.i3.i = getelementptr %struct.ufshpb_subregion, ptr %5, i32 %srgn_idx.014, i32 6, i32 1
  %13 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list_act_srgn, ptr %prev.i3.i, align 4
  %inc = add nuw nsw i32 %srgn_idx.014, 1
  %14 = ptrtoint ptr %srgn_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %srgn_cnt, align 8
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %list_del_init.exit.land.rhs_crit_edge, label %list_del_init.exit.for.end_crit_edge

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

list_del_init.exit.land.rhs_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %list_inact_rgn = getelementptr %struct.ufshpb_region, ptr %1, i32 %rgn_idx, i32 5
  %16 = ptrtoint ptr %list_inact_rgn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %list_inact_rgn, align 4
  %cmp.i.not = icmp eq ptr %17, %list_inact_rgn
  br i1 %cmp.i.not, label %if.then, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.end
  %lh_inact_rgn = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i11 = tail call zeroext i1 @__list_add_valid(ptr noundef %list_inact_rgn, ptr noundef %19, ptr noundef %lh_inact_rgn) #9
  br i1 %call.i.i11, label %if.end.i.i12, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i12:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list_inact_rgn, ptr %prev.i, align 4
  %21 = ptrtoint ptr %list_inact_rgn to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %lh_inact_rgn, ptr %list_inact_rgn, align 4
  %prev3.i.i = getelementptr %struct.ufshpb_region, ptr %1, i32 %rgn_idx, i32 5, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list_inact_rgn, ptr %19, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i12, %if.then.if.end_crit_edge, %for.end.if.end_crit_edge
  %rb_inactive_cnt = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 34, i32 4
  %24 = ptrtoint ptr %rb_inactive_cnt to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %rb_inactive_cnt, align 8
  %inc3 = add i64 %25, 1
  store i64 %inc3, ptr %rb_inactive_cnt, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hit_cnt_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %stats = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 34
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %stats, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, i64 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @miss_cnt_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %miss_cnt = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 34, i32 1
  %2 = ptrtoint ptr %miss_cnt to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %miss_cnt, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, i64 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rb_noti_cnt_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rb_noti_cnt = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 34, i32 2
  %2 = ptrtoint ptr %rb_noti_cnt to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rb_noti_cnt, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, i64 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rb_active_cnt_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rb_active_cnt = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 34, i32 3
  %2 = ptrtoint ptr %rb_active_cnt to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rb_active_cnt, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, i64 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rb_inactive_cnt_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rb_inactive_cnt = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 34, i32 4
  %2 = ptrtoint ptr %rb_inactive_cnt to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rb_inactive_cnt, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, i64 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @map_req_cnt_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %map_req_cnt = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 34, i32 5
  %2 = ptrtoint ptr %map_req_cnt to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %map_req_cnt, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, i64 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @umap_req_cnt_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %umap_req_cnt = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 34, i32 7
  %2 = ptrtoint ptr %umap_req_cnt to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %umap_req_cnt, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, i64 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @requeue_timeout_ms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %params = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %params, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @requeue_timeout_ms_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !343
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %params = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35
  %5 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %params, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end6 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @activation_thld_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %activation_thld = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 1
  %2 = ptrtoint ptr %activation_thld to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %activation_thld, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @activation_thld_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !343
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_hcm = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp slt i32 %6, 1
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %activation_thld = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 1
  %7 = ptrtoint ptr %activation_thld to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %activation_thld, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end9 ], [ -19, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @normalization_factor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %normalization_factor = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 2
  %2 = ptrtoint ptr %normalization_factor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %normalization_factor, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @normalization_factor_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !343
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_hcm = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp slt i32 %6, 1
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %cond.end15

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.end15:                                       ; preds = %if.end7
  %entries_per_srgn = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 29
  %7 = ptrtoint ptr %entries_per_srgn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %entries_per_srgn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  %9 = call i32 @llvm.ctlz.i32(i32 %8, i1 true) #9, !range !344
  %sub.i.op.i = xor i32 %9, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub.i)
  %cmp17 = icmp sgt i32 %6, %sub.i
  br i1 %cmp17, label %cond.end15.cleanup_crit_edge, label %if.end20

cond.end15.cleanup_crit_edge:                     ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %cond.end15
  call void @__sanitizer_cov_trace_pc() #11
  %normalization_factor = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 2
  %10 = ptrtoint ptr %normalization_factor to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %6, ptr %normalization_factor, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %cond.end15.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end20 ], [ -19, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %cond.end15.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eviction_thld_enter_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %eviction_thld_enter = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 3
  %2 = ptrtoint ptr %eviction_thld_enter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eviction_thld_enter, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eviction_thld_enter_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !343
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_hcm = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %eviction_thld_exit = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 4
  %7 = ptrtoint ptr %eviction_thld_exit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eviction_thld_exit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp ugt i32 %6, %8
  br i1 %cmp.not, label %if.end9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %eviction_thld_enter = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 3
  %9 = ptrtoint ptr %eviction_thld_enter to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %eviction_thld_enter, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end9 ], [ -19, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eviction_thld_exit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %eviction_thld_exit = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 4
  %2 = ptrtoint ptr %eviction_thld_exit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eviction_thld_exit, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eviction_thld_exit_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !343
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_hcm = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %activation_thld = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 1
  %7 = ptrtoint ptr %activation_thld to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %activation_thld, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp ugt i32 %6, %8
  br i1 %cmp.not, label %if.end9, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %eviction_thld_exit = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 4
  %9 = ptrtoint ptr %eviction_thld_exit to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %eviction_thld_exit, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end9 ], [ -19, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_timeout_ms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %read_timeout_ms = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 5
  %2 = ptrtoint ptr %read_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %read_timeout_ms, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_timeout_ms_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !343
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_hcm = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %timeout_polling_interval_ms = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 7
  %7 = ptrtoint ptr %timeout_polling_interval_ms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timeout_polling_interval_ms, align 4
  %mul = shl i32 %8, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %mul)
  %cmp = icmp ult i32 %6, %mul
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %read_timeout_ms = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 5
  %9 = ptrtoint ptr %read_timeout_ms to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %read_timeout_ms, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end9 ], [ -19, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_timeout_expiries_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %read_timeout_expiries = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 6
  %2 = ptrtoint ptr %read_timeout_expiries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %read_timeout_expiries, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_timeout_expiries_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !343
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_hcm = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp slt i32 %6, 1
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %read_timeout_expiries = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 6
  %7 = ptrtoint ptr %read_timeout_expiries to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %read_timeout_expiries, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end9 ], [ -19, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timeout_polling_interval_ms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %timeout_polling_interval_ms = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 7
  %2 = ptrtoint ptr %timeout_polling_interval_ms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timeout_polling_interval_ms, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @timeout_polling_interval_ms_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !343
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_hcm = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp slt i32 %6, 1
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %lor.lhs.false

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %read_timeout_ms = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 5
  %7 = ptrtoint ptr %read_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %read_timeout_ms, align 4
  %div17 = lshr i32 %8, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %div17)
  %cmp8 = icmp ugt i32 %6, %div17
  br i1 %cmp8, label %lor.lhs.false.cleanup_crit_edge, label %if.end10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %timeout_polling_interval_ms = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 7
  %9 = ptrtoint ptr %timeout_polling_interval_ms to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %timeout_polling_interval_ms, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %lor.lhs.false.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end10 ], [ -19, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inflight_map_req_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %inflight_map_req = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 8
  %2 = ptrtoint ptr %inflight_map_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inflight_map_req, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inflight_map_req_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata.i = getelementptr i8, ptr %dev, i32 -256
  %0 = ptrtoint ptr %hostdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !343
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_hcm = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 33
  %3 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp slt i32 %6, 1
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %lor.lhs.false

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end7
  %sdev_ufs_lu = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %sdev_ufs_lu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sdev_ufs_lu, align 4
  %queue_depth = getelementptr inbounds %struct.scsi_device, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %queue_depth, align 4
  %conv = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp8.not = icmp ult i32 %6, %conv
  br i1 %cmp8.not, label %if.end11, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %inflight_map_req = getelementptr inbounds %struct.ufshpb_lu, ptr %1, i32 0, i32 35, i32 8
  %11 = ptrtoint ptr %inflight_map_req to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %6, ptr %inflight_map_req, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end11 ], [ -19, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_map_desc_id_to_length(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_query_descriptor_retry(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufshpb_map_work_handler(ptr noundef %work) #1 align 64 {
entry:
  %pending_list.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -192
  %hpb_state.i = getelementptr i8, ptr %work, i32 -136
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sdev_ufs_lu = getelementptr i8, ptr %work, i32 -188
  %2 = ptrtoint ptr %sdev_ufs_lu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev_ufs_lu, align 4
  %sdev_dev = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %sdev_dev, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pending_list.i) #9
  %4 = getelementptr inbounds %struct.list_head, ptr %pending_list.i, i32 0, i32 1
  %5 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pending_list.i, ptr %pending_list.i, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pending_list.i, ptr %4, align 4
  %rsp_list_lock.i = getelementptr i8, ptr %work, i32 -132
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rsp_list_lock.i) #9
  %lh_inact_rgn.i = getelementptr i8, ptr %work, i32 -80
  %7 = ptrtoint ptr %lh_inact_rgn.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %lh_inact_rgn.i, align 4
  %cmp11.not78.i = icmp eq ptr %8, %lh_inact_rgn.i
  %add.ptr79.i = getelementptr i8, ptr %8, i32 -20
  %tobool.not7780.i = icmp eq ptr %add.ptr79.i, null
  %tobool.not81.i = or i1 %cmp11.not78.i, %tobool.not7780.i
  br i1 %tobool.not81.i, label %if.end.while.end.i_crit_edge, label %while.body.lr.ph.i

if.end.while.end.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end
  %rgn_state_lock.i.i = getelementptr i8, ptr %work, i32 -184
  %is_hcm.i.i = getelementptr i8, ptr %work, i32 260
  %sdev_ufs_lu.i.i = getelementptr i8, ptr %work, i32 -188
  br label %while.body.i

while.body.i:                                     ; preds = %do.body38.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %add.ptr83.i = phi ptr [ %add.ptr79.i, %while.body.lr.ph.i ], [ %add.ptr.i, %do.body38.i.while.body.i_crit_edge ]
  %9 = phi ptr [ %8, %while.body.lr.ph.i ], [ %51, %do.body38.i.while.body.i_crit_edge ]
  %flags.082.i = phi i32 [ %call2.i, %while.body.lr.ph.i ], [ %call46.i, %do.body38.i.while.body.i_crit_edge ]
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %10 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp15.i = icmp eq i32 %11, 2
  br i1 %cmp15.i, label %while.body.i.while.end.i_crit_edge, label %if.end.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  %call.i.i.i4 = call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #9
  br i1 %call.i.i.i4, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i.i = getelementptr %struct.list_head, ptr %9, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %9, ptr %prev.i3.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsp_list_lock.i, i32 noundef %flags.082.i) #9
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rgn_state_lock.i.i) #9
  %rgn_state.i.i = getelementptr i8, ptr %9, i32 -12
  %20 = ptrtoint ptr %rgn_state.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rgn_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp5.i.i = icmp eq i32 %21, 2
  br i1 %cmp5.i.i, label %do.end9.i.i, label %if.end.i.i

do.end9.i.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %sdev_ufs_lu.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sdev_ufs_lu.i.i, align 4
  %sdev_dev.i.i = getelementptr inbounds %struct.scsi_device, ptr %23, i32 0, i32 56
  %rgn_idx.i.i = getelementptr i8, ptr %9, i32 -8
  %24 = ptrtoint ptr %rgn_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rgn_idx.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %sdev_dev.i.i, ptr noundef nonnull @.str.93, i32 noundef %25) #12
  br label %ufshpb_evict_region.exit.thread.i

if.end.i.i:                                       ; preds = %list_del_init.exit.i
  %list_lru_rgn.i.i = getelementptr i8, ptr %9, i32 8
  %26 = ptrtoint ptr %list_lru_rgn.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %list_lru_rgn.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %27, %list_lru_rgn.i.i
  br i1 %cmp.i.not.i.i, label %if.end.i.i.ufshpb_evict_region.exit.thread.i_crit_edge, label %if.then11.i.i

if.end.i.i.ufshpb_evict_region.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_evict_region.exit.thread.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  %srgn_cnt.i.i.i = getelementptr i8, ptr %9, i32 -4
  %28 = ptrtoint ptr %srgn_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %srgn_cnt.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp2.i.i.i = icmp sgt i32 %29, 0
  br i1 %cmp2.i.i.i, label %land.rhs.lr.ph.i.i.i, label %if.then11.i.i.if.end15.i.i_crit_edge

if.then11.i.i.if.end15.i.i_crit_edge:             ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.rhs.lr.ph.i.i.i:                             ; preds = %if.then11.i.i
  %srgn_tbl.i.i.i = getelementptr i8, ptr %9, i32 -16
  %30 = ptrtoint ptr %srgn_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %srgn_tbl.i.i.i, align 4
  br label %land.rhs.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %srgn_idx.03.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %29
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.if.end15.i.i_crit_edge, label %for.cond.i.i.i.land.rhs.i.i.i_crit_edge

for.cond.i.i.i.land.rhs.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i.i

for.cond.i.i.i.if.end15.i.i_crit_edge:            ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

land.rhs.i.i.i:                                   ; preds = %for.cond.i.i.i.land.rhs.i.i.i_crit_edge, %land.rhs.lr.ph.i.i.i
  %srgn_idx.03.i.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i.i ], [ %inc.i.i.i, %for.cond.i.i.i.land.rhs.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.ufshpb_subregion, ptr %31, i32 %srgn_idx.03.i.i.i
  %tobool.not.i.i.i = icmp eq ptr %arrayidx.i.i.i, null
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i.if.end15.i.i_crit_edge, label %for.body.i.i.i

land.rhs.i.i.i.if.end15.i.i_crit_edge:            ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

for.body.i.i.i:                                   ; preds = %land.rhs.i.i.i
  %srgn_state.i.i.i = getelementptr %struct.ufshpb_subregion, ptr %31, i32 %srgn_idx.03.i.i.i, i32 1
  %32 = ptrtoint ptr %srgn_state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %srgn_state.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp1.i.i.i = icmp eq i32 %33, 3
  br i1 %cmp1.i.i.i, label %for.body.i.i.i.do.body22.i_crit_edge, label %for.cond.i.i.i

for.body.i.i.i.do.body22.i_crit_edge:             ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i

if.end15.i.i:                                     ; preds = %land.rhs.i.i.i.if.end15.i.i_crit_edge, %for.cond.i.i.i.if.end15.i.i_crit_edge, %if.then11.i.i.if.end15.i.i_crit_edge
  %34 = ptrtoint ptr %is_hcm.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_hcm.i.i, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool16.not.i.i = icmp eq i8 %35, 0
  br i1 %tobool16.not.i.i, label %if.end15.i.i.if.end37.i.i_crit_edge, label %if.then17.i.i

if.end15.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i.i

if.then17.i.i:                                    ; preds = %if.end15.i.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rgn_state_lock.i.i, i32 noundef %call2.i.i) #9
  %call19.i.i = call fastcc i32 @ufshpb_issue_umap_single_req(ptr noundef %add.ptr, ptr noundef %add.ptr83.i) #9
  %call29.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rgn_state_lock.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool34.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool34.not.i.i, label %if.then17.i.i.if.end37.i.i_crit_edge, label %if.then17.i.i.do.body22.i_crit_edge

if.then17.i.i.do.body22.i_crit_edge:              ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22.i

if.then17.i.i.if.end37.i.i_crit_edge:             ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then17.i.i.if.end37.i.i_crit_edge, %if.end15.i.i.if.end37.i.i_crit_edge
  %flags.0.i.i = phi i32 [ %call29.i.i, %if.then17.i.i.if.end37.i.i_crit_edge ], [ %call2.i.i, %if.end15.i.i.if.end37.i.i_crit_edge ]
  call fastcc void @__ufshpb_evict_region(ptr noundef %add.ptr, ptr noundef %add.ptr83.i) #9
  br label %ufshpb_evict_region.exit.thread.i

ufshpb_evict_region.exit.thread.i:                ; preds = %if.end37.i.i, %if.end.i.i.ufshpb_evict_region.exit.thread.i_crit_edge, %do.end9.i.i
  %flags.1.i.ph.i = phi i32 [ %flags.0.i.i, %if.end37.i.i ], [ %call2.i.i, %if.end.i.i.ufshpb_evict_region.exit.thread.i_crit_edge ], [ %call2.i.i, %do.end9.i.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rgn_state_lock.i.i, i32 noundef %flags.1.i.ph.i) #9
  br label %do.body38.i

do.body22.i:                                      ; preds = %if.then17.i.i.do.body22.i_crit_edge, %for.body.i.i.i.do.body22.i_crit_edge
  %flags.1.i.i = phi i32 [ %call29.i.i, %if.then17.i.i.do.body22.i_crit_edge ], [ %call2.i.i, %for.body.i.i.i.do.body22.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rgn_state_lock.i.i, i32 noundef %flags.1.i.i) #9
  %call30.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rsp_list_lock.i) #9
  %36 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %9, align 4
  %cmp.i.not.i69.i = icmp eq ptr %37, %9
  br i1 %cmp.i.not.i69.i, label %for.cond.preheader.i.i, label %do.body22.i.ufshpb_add_pending_evict_list.exit.i_crit_edge

do.body22.i.ufshpb_add_pending_evict_list.exit.i_crit_edge: ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_add_pending_evict_list.exit.i

for.cond.preheader.i.i:                           ; preds = %do.body22.i
  %38 = ptrtoint ptr %srgn_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %srgn_cnt.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp3.i.i = icmp sgt i32 %39, 0
  br i1 %cmp3.i.i, label %land.rhs.lr.ph.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

land.rhs.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %srgn_tbl.i.i = getelementptr i8, ptr %9, i32 -16
  %40 = ptrtoint ptr %srgn_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %srgn_tbl.i.i, align 4
  br label %land.rhs.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %srgn_idx.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %39
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.end.i.i_crit_edge, label %for.cond.i.i.land.rhs.i.i_crit_edge

for.cond.i.i.land.rhs.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

for.cond.i.i.for.end.i.i_crit_edge:               ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

land.rhs.i.i:                                     ; preds = %for.cond.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %srgn_idx.04.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.land.rhs.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ufshpb_subregion, ptr %41, i32 %srgn_idx.04.i.i
  %tobool1.not.i.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.for.end.i.i_crit_edge, label %for.body.i.i

land.rhs.i.i.for.end.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %list_act_srgn.i.i = getelementptr %struct.ufshpb_subregion, ptr %41, i32 %srgn_idx.04.i.i, i32 6
  %42 = ptrtoint ptr %list_act_srgn.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %list_act_srgn.i.i, align 4
  %cmp.i1.not.i.i = icmp eq ptr %43, %list_act_srgn.i.i
  br i1 %cmp.i1.not.i.i, label %for.cond.i.i, label %for.body.i.i.ufshpb_add_pending_evict_list.exit.i_crit_edge

for.body.i.i.ufshpb_add_pending_evict_list.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_add_pending_evict_list.exit.i

for.end.i.i:                                      ; preds = %land.rhs.i.i.for.end.i.i_crit_edge, %for.cond.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %4, align 4
  %call.i.i.i71.i = call zeroext i1 @__list_add_valid(ptr noundef %9, ptr noundef %45, ptr noundef nonnull %pending_list.i) #9
  br i1 %call.i.i.i71.i, label %if.end.i.i.i.i, label %for.end.i.i.ufshpb_add_pending_evict_list.exit.i_crit_edge

for.end.i.i.ufshpb_add_pending_evict_list.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_add_pending_evict_list.exit.i

if.end.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %9, ptr %4, align 4
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %pending_list.i, ptr %9, align 4
  %48 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev.i3.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %9, ptr %45, align 4
  br label %ufshpb_add_pending_evict_list.exit.i

ufshpb_add_pending_evict_list.exit.i:             ; preds = %if.end.i.i.i.i, %for.end.i.i.ufshpb_add_pending_evict_list.exit.i_crit_edge, %for.body.i.i.ufshpb_add_pending_evict_list.exit.i_crit_edge, %do.body22.i.ufshpb_add_pending_evict_list.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsp_list_lock.i, i32 noundef %call30.i) #9
  br label %do.body38.i

do.body38.i:                                      ; preds = %ufshpb_add_pending_evict_list.exit.i, %ufshpb_evict_region.exit.thread.i
  %call46.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rsp_list_lock.i) #9
  %50 = ptrtoint ptr %lh_inact_rgn.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %lh_inact_rgn.i, align 4
  %cmp11.not.i = icmp eq ptr %51, %lh_inact_rgn.i
  %add.ptr.i = getelementptr i8, ptr %51, i32 -20
  %tobool.not77.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp11.not.i, %tobool.not77.i
  br i1 %tobool.not.i, label %do.body38.i.while.end.i_crit_edge, label %do.body38.i.while.body.i_crit_edge

do.body38.i.while.body.i_crit_edge:               ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

do.body38.i.while.end.i_crit_edge:                ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.end.i:                                      ; preds = %do.body38.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %if.end.while.end.i_crit_edge
  %flags.0.lcssa.i = phi i32 [ %call2.i, %if.end.while.end.i_crit_edge ], [ %call46.i, %do.body38.i.while.end.i_crit_edge ], [ %flags.082.i, %while.body.i.while.end.i_crit_edge ]
  %52 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %pending_list.i, align 4
  %cmp.i.not.i72.i = icmp eq ptr %53, %pending_list.i
  br i1 %cmp.i.not.i72.i, label %while.end.i.ufshpb_run_inactive_region_list.exit_crit_edge, label %if.then.i.i

while.end.i.ufshpb_run_inactive_region_list.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_run_inactive_region_list.exit

if.then.i.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %lh_inact_rgn.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lh_inact_rgn.i, align 4
  %56 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %4, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %lh_inact_rgn.i, ptr %prev3.i.i.i, align 4
  store ptr %53, ptr %lh_inact_rgn.i, align 4
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %55, ptr %57, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev6.i.i.i, align 4
  br label %ufshpb_run_inactive_region_list.exit

ufshpb_run_inactive_region_list.exit:             ; preds = %if.then.i.i, %while.end.i.ufshpb_run_inactive_region_list.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsp_list_lock.i, i32 noundef %flags.0.lcssa.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pending_list.i) #9
  %call2.i6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rsp_list_lock.i) #9
  %lh_act_srgn.i = getelementptr i8, ptr %work, i32 -88
  %61 = ptrtoint ptr %lh_act_srgn.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %lh_act_srgn.i, align 4
  %cmp10.not191.i = icmp eq ptr %62, %lh_act_srgn.i
  %add.ptr192.i = getelementptr i8, ptr %62, i32 -24
  %tobool.not113193.i = icmp eq ptr %add.ptr192.i, null
  %tobool.not194.i = or i1 %cmp10.not191.i, %tobool.not113193.i
  br i1 %tobool.not194.i, label %ufshpb_run_inactive_region_list.exit.ufshpb_run_active_subregion_list.exit_crit_edge, label %while.body.lr.ph.i9

ufshpb_run_inactive_region_list.exit.ufshpb_run_active_subregion_list.exit_crit_edge: ; preds = %ufshpb_run_inactive_region_list.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_run_active_subregion_list.exit

while.body.lr.ph.i9:                              ; preds = %ufshpb_run_inactive_region_list.exit
  %rgn_tbl.i = getelementptr i8, ptr %work, i32 -140
  %rgn_state_lock.i.i8 = getelementptr i8, ptr %work, i32 -184
  %is_hcm.i.i.i = getelementptr i8, ptr %work, i32 260
  %num_inflight_map_req.i.i.i = getelementptr i8, ptr %work, i32 -60
  %inflight_map_req.i.i.i = getelementptr i8, ptr %work, i32 360
  %pages_per_srgn.i.i.i = getelementptr i8, ptr %work, i32 256
  %param_lock.i.i.i = getelementptr i8, ptr %work, i32 -56
  %srgn_mem_size.i.i.i = getelementptr i8, ptr %work, i32 232
  %sdev_ufs_lu.i108.i.i = getelementptr i8, ptr %work, i32 -188
  %last_srgn_entries.i.i.i = getelementptr i8, ptr %work, i32 224
  %map_req_cnt.i.i.i = getelementptr i8, ptr %work, i32 304
  br label %while.body.i11

while.body.i11:                                   ; preds = %do.body31.i.while.body.i11_crit_edge, %while.body.lr.ph.i9
  %add.ptr196.i = phi ptr [ %add.ptr192.i, %while.body.lr.ph.i9 ], [ %add.ptr.i29, %do.body31.i.while.body.i11_crit_edge ]
  %63 = phi ptr [ %62, %while.body.lr.ph.i9 ], [ %188, %do.body31.i.while.body.i11_crit_edge ]
  %flags.0195.i = phi i32 [ %call2.i6, %while.body.lr.ph.i9 ], [ %call39.i, %do.body31.i.while.body.i11_crit_edge ]
  %call.i.i.i.i10 = call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %64 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp14.i = icmp eq i32 %65, 2
  br i1 %cmp14.i, label %while.body.i11.ufshpb_run_active_subregion_list.exit_crit_edge, label %if.end.i13

while.body.i11.ufshpb_run_active_subregion_list.exit_crit_edge: ; preds = %while.body.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_run_active_subregion_list.exit

if.end.i13:                                       ; preds = %while.body.i11
  %call.i.i.i12 = call zeroext i1 @__list_del_entry_valid(ptr noundef %63) #9
  br i1 %call.i.i.i12, label %if.end.i.i.i16, label %if.end.i13.list_del_init.exit.i18_crit_edge

if.end.i13.list_del_init.exit.i18_crit_edge:      ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i18

if.end.i.i.i16:                                   ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i14 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i.i14, align 4
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %63, align 4
  %prev1.i.i.i.i15 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i.i15 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev1.i.i.i.i15, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %69, ptr %67, align 4
  br label %list_del_init.exit.i18

list_del_init.exit.i18:                           ; preds = %if.end.i.i.i16, %if.end.i13.list_del_init.exit.i18_crit_edge
  %72 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %63, ptr %63, align 4
  %prev.i3.i.i17 = getelementptr %struct.list_head, ptr %63, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i3.i.i17 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %63, ptr %prev.i3.i.i17, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsp_list_lock.i, i32 noundef %flags.0195.i) #9
  %74 = ptrtoint ptr %rgn_tbl.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rgn_tbl.i, align 4
  %rgn_idx.i = getelementptr i8, ptr %63, i32 -16
  %76 = ptrtoint ptr %rgn_idx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rgn_idx.i, align 4
  %add.ptr17.i = getelementptr %struct.ufshpb_region, ptr %75, i32 %77
  %call18.i = call fastcc i32 @ufshpb_add_region(ptr noundef %add.ptr, ptr noundef %add.ptr17.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %list_del_init.exit.i18.do.end47.i_crit_edge

list_del_init.exit.i18.do.end47.i_crit_edge:      ; preds = %list_del_init.exit.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47.i

if.end21.i:                                       ; preds = %list_del_init.exit.i18
  %call2.i.i19 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rgn_state_lock.i.i8) #9
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i, i32 noundef 4) #9
  %78 = ptrtoint ptr %hpb_state.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %hpb_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp6.not.i.i = icmp eq i32 %79, 1
  br i1 %cmp6.not.i.i, label %if.end.i.i22, label %do.end10.i.i

do.end10.i.i:                                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %sdev_ufs_lu.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sdev_ufs_lu.i108.i.i, align 4
  %sdev_dev.i.i20 = getelementptr inbounds %struct.scsi_device, ptr %81, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %sdev_dev.i.i20, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.109) #12
  br label %do.end27.i

if.end.i.i22:                                     ; preds = %if.end21.i
  %rgn_state.i.i21 = getelementptr %struct.ufshpb_region, ptr %75, i32 %77, i32 2
  %82 = ptrtoint ptr %rgn_state.i.i21 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rgn_state.i.i21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp11.i.i = icmp eq i32 %83, 0
  br i1 %cmp11.i.i, label %land.lhs.true.i.i, label %if.end.i.i22.if.end16.i.i_crit_edge

if.end.i.i22.if.end16.i.i_crit_edge:              ; preds = %if.end.i.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i22
  %srgn_state.i.i = getelementptr i8, ptr %63, i32 -20
  %84 = ptrtoint ptr %srgn_state.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %srgn_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %cmp13.i.i = icmp eq i32 %85, 1
  br i1 %cmp13.i.i, label %ufshpb_issue_map_req.exit.i, label %land.lhs.true.i.i.if.end16.i.i_crit_edge

land.lhs.true.i.i.if.end16.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %land.lhs.true.i.i.if.end16.i.i_crit_edge, %if.end.i.i22.if.end16.i.i_crit_edge
  %srgn_state17.i.i = getelementptr i8, ptr %63, i32 -20
  %86 = ptrtoint ptr %srgn_state17.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %srgn_state17.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %87)
  %cmp23.i.i = icmp eq i32 %87, 3
  br i1 %cmp23.i.i, label %if.end16.i.i.do.end27.i_crit_edge, label %if.end26.i.i

if.end16.i.i.do.end27.i_crit_edge:                ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end27.i

if.end26.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp18.i.i = icmp eq i32 %87, 0
  %88 = ptrtoint ptr %srgn_state17.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 3, ptr %srgn_state17.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rgn_state_lock.i.i8, i32 noundef %call2.i.i19) #9
  br i1 %cmp18.i.i, label %if.then29.i.i, label %if.end26.i.i.if.end41.i.i_crit_edge

if.end26.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i.i

if.then29.i.i:                                    ; preds = %if.end26.i.i
  %is_last.i.i = getelementptr i8, ptr %63, i32 -8
  %89 = ptrtoint ptr %is_last.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %is_last.i.i, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool30.i.i = icmp ne i8 %90, 0
  %call31.i.i = call fastcc ptr @ufshpb_get_map_ctx(ptr noundef %add.ptr, i1 noundef zeroext %tobool30.i.i) #9
  %91 = ptrtoint ptr %add.ptr196.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call31.i.i, ptr %add.ptr196.i, align 4
  %tobool33.not.i.i = icmp eq ptr %call31.i.i, null
  br i1 %tobool33.not.i.i, label %do.end37.i.i, label %if.then29.i.i.if.end41.i.i_crit_edge

if.then29.i.i.if.end41.i.i_crit_edge:             ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i.i

do.end37.i.i:                                     ; preds = %if.then29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %sdev_ufs_lu.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sdev_ufs_lu.i108.i.i, align 4
  %sdev_dev39.i.i = getelementptr inbounds %struct.scsi_device, ptr %93, i32 0, i32 56
  %rgn_idx.i.i23 = getelementptr %struct.ufshpb_region, ptr %75, i32 %77, i32 3
  %94 = ptrtoint ptr %rgn_idx.i.i23 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rgn_idx.i.i23, align 4
  %srgn_idx.i.i = getelementptr i8, ptr %63, i32 -12
  %96 = ptrtoint ptr %srgn_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %srgn_idx.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev_dev39.i.i, ptr noundef nonnull @.str.111, i32 noundef %95, i32 noundef %97) #12
  br label %do.body60.i.i

if.end41.i.i:                                     ; preds = %if.then29.i.i.if.end41.i.i_crit_edge, %if.end26.i.i.if.end41.i.i_crit_edge
  %98 = ptrtoint ptr %is_hcm.i.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %is_hcm.i.i.i, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i.i.i24 = icmp eq i8 %99, 0
  br i1 %tobool.not.i.i.i24, label %if.end41.i.i.if.end.i.i99.i_crit_edge, label %land.lhs.true.i.i.i

if.end41.i.i.if.end.i.i99.i_crit_edge:            ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i99.i

land.lhs.true.i.i.i:                              ; preds = %if.end41.i.i
  %100 = ptrtoint ptr %num_inflight_map_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_inflight_map_req.i.i.i, align 4
  %102 = ptrtoint ptr %inflight_map_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %inflight_map_req.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %103)
  %cmp.not.i.i.i = icmp ult i32 %101, %103
  br i1 %cmp.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i99.i_crit_edge, label %do.end.i.i.i

land.lhs.true.i.i.i.if.end.i.i99.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i99.i

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %sdev_ufs_lu.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sdev_ufs_lu.i108.i.i, align 4
  %sdev_dev.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %105, i32 0, i32 56
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %sdev_dev.i.i.i, ptr noundef nonnull @.str.116, i32 noundef %101, i32 noundef %103) #12
  br label %do.body60.i.i

if.end.i.i99.i:                                   ; preds = %land.lhs.true.i.i.i.if.end.i.i99.i_crit_edge, %if.end41.i.i.if.end.i.i99.i_crit_edge
  %106 = ptrtoint ptr %rgn_idx.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rgn_idx.i, align 4
  %call.i.i98.i = call fastcc ptr @ufshpb_get_req(ptr noundef %add.ptr, i32 noundef %107, i32 noundef 34, i1 noundef zeroext false) #9
  %tobool4.not.i.i.i = icmp eq ptr %call.i.i98.i, null
  br i1 %tobool4.not.i.i.i, label %if.end.i.i99.i.do.body60.i.i_crit_edge, label %if.end6.i.i.i

if.end.i.i99.i.do.body60.i.i_crit_edge:           ; preds = %if.end.i.i99.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body60.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i99.i
  %108 = ptrtoint ptr %pages_per_srgn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pages_per_srgn.i.i.i, align 8
  %conv.i.i.i = trunc i32 %109 to i16
  %call.i.i.i100.i = call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext %conv.i.i.i, ptr noundef nonnull @fs_bio_set) #9
  %tobool8.not.i.i.i = icmp eq ptr %call.i.i.i100.i, null
  br i1 %tobool8.not.i.i.i, label %if.then9.i.i.i, label %if.end45.i.i

if.then9.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %call.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call.i.i98.i, align 4
  call void @blk_mq_free_request(ptr noundef %111) #9
  %map_req_cache.i.i.i.i = getelementptr i8, ptr %work, i32 364
  %112 = ptrtoint ptr %map_req_cache.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %map_req_cache.i.i.i.i, align 4
  call void @kmem_cache_free(ptr noundef %113, ptr noundef nonnull %call.i.i98.i) #9
  br label %do.body60.i.i

if.end45.i.i:                                     ; preds = %if.end6.i.i.i
  %bio11.i.i.i = getelementptr inbounds %struct.ufshpb_req, ptr %call.i.i98.i, i32 0, i32 1
  %114 = ptrtoint ptr %bio11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call.i.i.i100.i, ptr %bio11.i.i.i, align 4
  %srgn_idx.i.i.i = getelementptr i8, ptr %63, i32 -12
  %115 = ptrtoint ptr %srgn_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %srgn_idx.i.i.i, align 4
  %117 = getelementptr inbounds %struct.ufshpb_req, ptr %call.i.i98.i, i32 0, i32 4
  %srgn_idx12.i.i.i = getelementptr inbounds %struct.ufshpb_req, ptr %call.i.i98.i, i32 0, i32 4, i32 0, i32 2
  %118 = ptrtoint ptr %srgn_idx12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %116, ptr %srgn_idx12.i.i.i, align 4
  %119 = ptrtoint ptr %add.ptr196.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr196.i, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %117, align 4
  %call19.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %param_lock.i.i.i) #9
  %122 = ptrtoint ptr %num_inflight_map_req.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_inflight_map_req.i.i.i, align 4
  %inc.i.i.i25 = add i32 %123, 1
  store i32 %inc.i.i.i25, ptr %num_inflight_map_req.i.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %param_lock.i.i.i, i32 noundef %call19.i.i.i) #9
  %is_last46.i.i = getelementptr i8, ptr %63, i32 -8
  %124 = ptrtoint ptr %is_last46.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %is_last46.i.i, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool47.not.i.i = icmp eq i8 %125, 0
  %126 = ptrtoint ptr %srgn_mem_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %srgn_mem_size.i.i.i, align 8
  %128 = ptrtoint ptr %sdev_ufs_lu.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sdev_ufs_lu.i108.i.i, align 4
  %request_queue.i.i.i = getelementptr inbounds %struct.scsi_device, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %request_queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %request_queue.i.i.i, align 4
  %132 = ptrtoint ptr %pages_per_srgn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %pages_per_srgn.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp39.not.i.i.i = icmp eq i32 %133, 0
  br i1 %cmp39.not.i.i.i, label %if.end45.i.i.for.end.i.i.i_crit_edge, label %if.end45.i.i.for.body.i.i.i28_crit_edge

if.end45.i.i.for.body.i.i.i28_crit_edge:          ; preds = %if.end45.i.i
  br label %for.body.i.i.i28

if.end45.i.i.for.end.i.i.i_crit_edge:             ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.cond.i.i.i26:                                 ; preds = %for.body.i.i.i28
  %inc.i110.i.i = add nuw i32 %i.040.i.i.i, 1
  %134 = ptrtoint ptr %pages_per_srgn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pages_per_srgn.i.i.i, align 8
  %cmp.i.i.i = icmp ult i32 %inc.i110.i.i, %135
  br i1 %cmp.i.i.i, label %for.cond.i.i.i26.for.body.i.i.i28_crit_edge, label %for.cond.i.i.i26.for.end.i.i.i_crit_edge

for.cond.i.i.i26.for.end.i.i.i_crit_edge:         ; preds = %for.cond.i.i.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.cond.i.i.i26.for.body.i.i.i28_crit_edge:      ; preds = %for.cond.i.i.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i28

for.body.i.i.i28:                                 ; preds = %for.cond.i.i.i26.for.body.i.i.i28_crit_edge, %if.end45.i.i.for.body.i.i.i28_crit_edge
  %i.040.i.i.i = phi i32 [ %inc.i110.i.i, %for.cond.i.i.i26.for.body.i.i.i28_crit_edge ], [ 0, %if.end45.i.i.for.body.i.i.i28_crit_edge ]
  %136 = ptrtoint ptr %bio11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %bio11.i.i.i, align 4
  %138 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %117, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %arrayidx.i.i.i27 = getelementptr ptr, ptr %141, i32 %i.040.i.i.i
  %142 = ptrtoint ptr %arrayidx.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %arrayidx.i.i.i27, align 4
  %call.i111.i.i = call i32 @bio_add_pc_page(ptr noundef %131, ptr noundef %137, ptr noundef %143, i32 noundef 4096, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call.i111.i.i)
  %cmp1.not.i.i.i = icmp eq i32 %call.i111.i.i, 4096
  br i1 %cmp1.not.i.i.i, label %for.cond.i.i.i26, label %ufshpb_execute_map_req.exit.i.i

for.end.i.i.i:                                    ; preds = %for.cond.i.i.i26.for.end.i.i.i_crit_edge, %if.end45.i.i.for.end.i.i.i_crit_edge
  %144 = ptrtoint ptr %call.i.i98.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %call.i.i98.i, align 4
  %146 = ptrtoint ptr %bio11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %bio11.i.i.i, align 4
  %call5.i.i.i = call i32 @blk_rq_append_bio(ptr noundef %145, ptr noundef %147) #9
  %end_io_data.i.i.i = getelementptr inbounds %struct.request, ptr %145, i32 0, i32 33
  %148 = ptrtoint ptr %end_io_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call.i.i98.i, ptr %end_io_data.i.i.i, align 4
  br i1 %tobool47.not.i.i, label %for.end.i.i.i.ufshpb_execute_map_req.exit.thread.i.i_crit_edge, label %if.then9.i116.i.i, !prof !346

for.end.i.i.i.ufshpb_execute_map_req.exit.thread.i.i_crit_edge: ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_execute_map_req.exit.thread.i.i

if.then9.i116.i.i:                                ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %149 = ptrtoint ptr %last_srgn_entries.i.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %last_srgn_entries.i.i.i, align 8
  %mul.i.i.i = shl i32 %150, 3
  br label %ufshpb_execute_map_req.exit.thread.i.i

ufshpb_execute_map_req.exit.thread.i.i:           ; preds = %if.then9.i116.i.i, %for.end.i.i.i.ufshpb_execute_map_req.exit.thread.i.i_crit_edge
  %mem_size.0.i.i.i = phi i32 [ %mul.i.i.i, %if.then9.i116.i.i ], [ %127, %for.end.i.i.i.ufshpb_execute_map_req.exit.thread.i.i_crit_edge ]
  %cmd.i.i.i = getelementptr %struct.request, ptr %145, i32 1, i32 4
  %151 = ptrtoint ptr %cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cmd.i.i.i, align 4
  %rgn_idx11.i.i.i = getelementptr inbounds %struct.ufshpb_req, ptr %call.i.i98.i, i32 0, i32 4, i32 0, i32 1
  %153 = ptrtoint ptr %rgn_idx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %rgn_idx11.i.i.i, align 4
  %155 = ptrtoint ptr %srgn_idx12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %srgn_idx12.i.i.i, align 4
  %157 = ptrtoint ptr %152 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 -7, ptr %152, align 1
  %arrayidx1.i.i.i.i = getelementptr i8, ptr %152, i32 1
  %158 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %arrayidx1.i.i.i.i, align 1
  %conv.i.i.i.i = trunc i32 %154 to i16
  %arrayidx2.i.i.i.i = getelementptr i8, ptr %152, i32 2
  %159 = ptrtoint ptr %arrayidx2.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %159, i32 2)
  store i16 %conv.i.i.i.i, ptr %arrayidx2.i.i.i.i, align 1
  %conv3.i.i.i.i = trunc i32 %156 to i16
  %arrayidx4.i.i.i.i = getelementptr i8, ptr %152, i32 4
  %160 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %160, i32 2)
  store i16 %conv3.i.i.i.i, ptr %arrayidx4.i.i.i.i, align 1
  %arrayidx5.i.i.i.i = getelementptr i8, ptr %152, i32 6
  %shr.i.i.i.i.i.i = lshr i32 %mem_size.0.i.i.i, 16
  %conv.i.i.i.i.i.i = trunc i32 %shr.i.i.i.i.i.i to i8
  %incdec.ptr.i.i.i.i.i.i = getelementptr i8, ptr %152, i32 7
  %161 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv.i.i.i.i.i.i, ptr %arrayidx5.i.i.i.i, align 1
  %shr1.i.i.i.i.i.i = lshr i32 %mem_size.0.i.i.i, 8
  %conv2.i.i.i.i.i.i = trunc i32 %shr1.i.i.i.i.i.i to i8
  %incdec.ptr3.i.i.i.i.i.i = getelementptr i8, ptr %152, i32 8
  %162 = ptrtoint ptr %incdec.ptr.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv2.i.i.i.i.i.i, ptr %incdec.ptr.i.i.i.i.i.i, align 1
  %conv4.i.i.i.i.i.i = trunc i32 %mem_size.0.i.i.i to i8
  %163 = ptrtoint ptr %incdec.ptr3.i.i.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv4.i.i.i.i.i.i, ptr %incdec.ptr3.i.i.i.i.i.i, align 1
  %arrayidx6.i.i.i.i = getelementptr i8, ptr %152, i32 9
  %164 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %arrayidx6.i.i.i.i, align 1
  %cmd_len.i.i.i = getelementptr %struct.request, ptr %145, i32 1, i32 5
  %165 = ptrtoint ptr %cmd_len.i.i.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 10, ptr %cmd_len.i.i.i, align 4
  call void @blk_execute_rq_nowait(ptr noundef %145, i1 noundef zeroext true, ptr noundef nonnull @ufshpb_map_req_compl_fn) #9
  %166 = ptrtoint ptr %map_req_cnt.i.i.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %map_req_cnt.i.i.i, align 8
  %inc13.i.i.i = add i64 %167, 1
  store i64 %inc13.i.i.i, ptr %map_req_cnt.i.i.i, align 8
  br label %do.body31.i

ufshpb_execute_map_req.exit.i.i:                  ; preds = %for.body.i.i.i28
  %168 = ptrtoint ptr %sdev_ufs_lu.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %sdev_ufs_lu.i108.i.i, align 4
  %sdev_dev.i112.i.i = getelementptr inbounds %struct.scsi_device, ptr %169, i32 0, i32 56
  %rgn_idx.i113.i.i = getelementptr inbounds %struct.ufshpb_req, ptr %call.i.i98.i, i32 0, i32 4, i32 0, i32 1
  %170 = ptrtoint ptr %rgn_idx.i113.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %rgn_idx.i113.i.i, align 4
  %172 = ptrtoint ptr %srgn_idx12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %srgn_idx12.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev_dev.i112.i.i, ptr noundef nonnull @.str.119, i32 noundef %171, i32 noundef %173) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111.i.i)
  %tobool49.not.i.i = icmp eq i32 %call.i111.i.i, 0
  br i1 %tobool49.not.i.i, label %ufshpb_execute_map_req.exit.i.i.do.body31.i_crit_edge, label %do.end53.i.i

ufshpb_execute_map_req.exit.i.i.do.body31.i_crit_edge: ; preds = %ufshpb_execute_map_req.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31.i

do.end53.i.i:                                     ; preds = %ufshpb_execute_map_req.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %srgn_idx.i.i.i.le = getelementptr i8, ptr %63, i32 -12
  %174 = ptrtoint ptr %sdev_ufs_lu.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %sdev_ufs_lu.i108.i.i, align 4
  %sdev_dev55.i.i = getelementptr inbounds %struct.scsi_device, ptr %175, i32 0, i32 56
  %176 = ptrtoint ptr %rgn_idx.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %rgn_idx.i, align 4
  %178 = ptrtoint ptr %srgn_idx.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %srgn_idx.i.i.i.le, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev_dev55.i.i, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.109, i32 noundef %call.i111.i.i, i32 noundef %177, i32 noundef %179) #12
  call fastcc void @ufshpb_put_map_req(ptr noundef %add.ptr, ptr noundef nonnull %call.i.i98.i) #9
  br label %do.body60.i.i

do.body60.i.i:                                    ; preds = %do.end53.i.i, %if.then9.i.i.i, %if.end.i.i99.i.do.body60.i.i_crit_edge, %do.end.i.i.i, %do.end37.i.i
  %state.0.i.i = phi i32 [ 1, %do.end53.i.i ], [ 0, %do.end37.i.i ], [ 1, %do.end.i.i.i ], [ 1, %if.then9.i.i.i ], [ 1, %if.end.i.i99.i.do.body60.i.i_crit_edge ]
  %call68.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rgn_state_lock.i.i8) #9
  %180 = ptrtoint ptr %srgn_state17.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %state.0.i.i, ptr %srgn_state17.i.i, align 4
  br label %do.end27.i

ufshpb_issue_map_req.exit.i:                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rgn_state_lock.i.i8, i32 noundef %call2.i.i19) #9
  br label %do.body31.i

do.end27.i:                                       ; preds = %do.body60.i.i, %if.end16.i.i.do.end27.i_crit_edge, %do.end10.i.i
  %flags.0.i.ph.i = phi i32 [ %call68.i.i, %do.body60.i.i ], [ %call2.i.i19, %do.end10.i.i ], [ %call2.i.i19, %if.end16.i.i.do.end27.i_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rgn_state_lock.i.i8, i32 noundef %flags.0.i.ph.i) #9
  %181 = ptrtoint ptr %sdev_ufs_lu.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %sdev_ufs_lu.i108.i.i, align 4
  %sdev_dev.i = getelementptr inbounds %struct.scsi_device, ptr %182, i32 0, i32 56
  %rgn_idx28.i = getelementptr %struct.ufshpb_region, ptr %75, i32 %77, i32 3
  %183 = ptrtoint ptr %rgn_idx28.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %rgn_idx28.i, align 4
  %srgn_idx.i = getelementptr i8, ptr %63, i32 -12
  %185 = ptrtoint ptr %srgn_idx.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %srgn_idx.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev_dev.i, ptr noundef nonnull @.str.97, i32 noundef -11, i32 noundef %184, i32 noundef %186) #12
  br label %do.end47.i

do.body31.i:                                      ; preds = %ufshpb_issue_map_req.exit.i, %ufshpb_execute_map_req.exit.i.i.do.body31.i_crit_edge, %ufshpb_execute_map_req.exit.thread.i.i
  %call39.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rsp_list_lock.i) #9
  %187 = ptrtoint ptr %lh_act_srgn.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile ptr, ptr %lh_act_srgn.i, align 4
  %cmp10.not.i = icmp eq ptr %188, %lh_act_srgn.i
  %add.ptr.i29 = getelementptr i8, ptr %188, i32 -24
  %tobool.not113.i = icmp eq ptr %add.ptr.i29, null
  %tobool.not.i30 = or i1 %cmp10.not.i, %tobool.not113.i
  br i1 %tobool.not.i30, label %do.body31.i.ufshpb_run_active_subregion_list.exit_crit_edge, label %do.body31.i.while.body.i11_crit_edge

do.body31.i.while.body.i11_crit_edge:             ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i11

do.body31.i.ufshpb_run_active_subregion_list.exit_crit_edge: ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_run_active_subregion_list.exit

do.end47.i:                                       ; preds = %do.end27.i, %list_del_init.exit.i18.do.end47.i_crit_edge
  %prev.i3.i.i17187 = getelementptr %struct.list_head, ptr %63, i32 0, i32 1
  %189 = ptrtoint ptr %sdev_ufs_lu.i108.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %sdev_ufs_lu.i108.i.i, align 4
  %sdev_dev49.i = getelementptr inbounds %struct.scsi_device, ptr %190, i32 0, i32 56
  %rgn_idx50.i = getelementptr %struct.ufshpb_region, ptr %75, i32 %77, i32 3
  %191 = ptrtoint ptr %rgn_idx50.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %rgn_idx50.i, align 4
  %srgn_idx51.i = getelementptr i8, ptr %63, i32 -12
  %193 = ptrtoint ptr %srgn_idx51.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %srgn_idx51.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev_dev49.i, ptr noundef nonnull @.str.100, i32 noundef %192, i32 noundef %194) #12
  %call61.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rsp_list_lock.i) #9
  %list_inact_rgn.i.i = getelementptr %struct.ufshpb_region, ptr %75, i32 %77, i32 5
  %195 = ptrtoint ptr %list_inact_rgn.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load volatile ptr, ptr %list_inact_rgn.i.i, align 4
  %cmp.i.not.i.i31 = icmp eq ptr %196, %list_inact_rgn.i.i
  br i1 %cmp.i.not.i.i31, label %if.end.i101.i, label %do.end47.i.ufshpb_run_active_subregion_list.exit_crit_edge

do.end47.i.ufshpb_run_active_subregion_list.exit_crit_edge: ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_run_active_subregion_list.exit

if.end.i101.i:                                    ; preds = %do.end47.i
  %197 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load volatile ptr, ptr %63, align 4
  %cmp.i11.not.i.i = icmp eq ptr %198, %63
  br i1 %cmp.i11.not.i.i, label %if.end5.i.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i101.i
  %call.i.i.i102.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %63) #9
  br i1 %call.i.i.i102.i, label %if.end.i.i.i.i32, label %if.then3.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.then3.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i32:                                 ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %199 = ptrtoint ptr %prev.i3.i.i17187 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %prev.i3.i.i17187, align 4
  %201 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %63, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %200, ptr %prev1.i.i.i.i.i, align 4
  %204 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile ptr %202, ptr %200, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i32, %if.then3.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %205 = ptrtoint ptr %lh_act_srgn.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %lh_act_srgn.i, align 4
  %call.i.i.i.i103.i = call zeroext i1 @__list_add_valid(ptr noundef %63, ptr noundef %lh_act_srgn.i, ptr noundef %206) #9
  br i1 %call.i.i.i.i103.i, label %__list_del_entry.exit.i.i.i.return.sink.split.i.i_crit_edge, label %__list_del_entry.exit.i.i.i.ufshpb_run_active_subregion_list.exit_crit_edge

__list_del_entry.exit.i.i.i.ufshpb_run_active_subregion_list.exit_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_run_active_subregion_list.exit

__list_del_entry.exit.i.i.i.return.sink.split.i.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i.i

if.end5.i.i:                                      ; preds = %if.end.i101.i
  %207 = ptrtoint ptr %lh_act_srgn.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %lh_act_srgn.i, align 4
  %call.i.i13.i.i = call zeroext i1 @__list_add_valid(ptr noundef %63, ptr noundef %lh_act_srgn.i, ptr noundef %208) #9
  br i1 %call.i.i13.i.i, label %if.end5.i.i.return.sink.split.i.i_crit_edge, label %if.end5.i.i.ufshpb_run_active_subregion_list.exit_crit_edge

if.end5.i.i.ufshpb_run_active_subregion_list.exit_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_run_active_subregion_list.exit

if.end5.i.i.return.sink.split.i.i_crit_edge:      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split.i.i

return.sink.split.i.i:                            ; preds = %if.end5.i.i.return.sink.split.i.i_crit_edge, %__list_del_entry.exit.i.i.i.return.sink.split.i.i_crit_edge
  %.sink15.i.i = phi ptr [ %206, %__list_del_entry.exit.i.i.i.return.sink.split.i.i_crit_edge ], [ %208, %if.end5.i.i.return.sink.split.i.i_crit_edge ]
  %prev1.i.i.i104.i = getelementptr inbounds %struct.list_head, ptr %.sink15.i.i, i32 0, i32 1
  %209 = ptrtoint ptr %prev1.i.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr %63, ptr %prev1.i.i.i104.i, align 4
  %210 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %.sink15.i.i, ptr %63, align 4
  %211 = ptrtoint ptr %prev.i3.i.i17187 to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %lh_act_srgn.i, ptr %prev.i3.i.i17187, align 4
  %212 = ptrtoint ptr %lh_act_srgn.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store volatile ptr %63, ptr %lh_act_srgn.i, align 4
  br label %ufshpb_run_active_subregion_list.exit

ufshpb_run_active_subregion_list.exit:            ; preds = %return.sink.split.i.i, %if.end5.i.i.ufshpb_run_active_subregion_list.exit_crit_edge, %__list_del_entry.exit.i.i.i.ufshpb_run_active_subregion_list.exit_crit_edge, %do.end47.i.ufshpb_run_active_subregion_list.exit_crit_edge, %do.body31.i.ufshpb_run_active_subregion_list.exit_crit_edge, %while.body.i11.ufshpb_run_active_subregion_list.exit_crit_edge, %ufshpb_run_inactive_region_list.exit.ufshpb_run_active_subregion_list.exit_crit_edge
  %call61.sink.i = phi i32 [ %call2.i6, %ufshpb_run_inactive_region_list.exit.ufshpb_run_active_subregion_list.exit_crit_edge ], [ %call61.i, %do.end47.i.ufshpb_run_active_subregion_list.exit_crit_edge ], [ %call61.i, %__list_del_entry.exit.i.i.i.ufshpb_run_active_subregion_list.exit_crit_edge ], [ %call61.i, %if.end5.i.i.ufshpb_run_active_subregion_list.exit_crit_edge ], [ %call61.i, %return.sink.split.i.i ], [ %call39.i, %do.body31.i.ufshpb_run_active_subregion_list.exit_crit_edge ], [ %flags.0195.i, %while.body.i11.ufshpb_run_active_subregion_list.exit_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsp_list_lock.i, i32 noundef %call61.sink.i) #9
  br label %cleanup

cleanup:                                          ; preds = %ufshpb_run_active_subregion_list.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufshpb_normalization_work_handler(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -252
  %rgns_per_lu = getelementptr i8, ptr %work, i32 156
  %0 = ptrtoint ptr %rgns_per_lu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rgns_per_lu, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp42.not = icmp eq i32 %1, 0
  br i1 %cmp42.not, label %entry.for.end21_crit_edge, label %for.body.lr.ph

entry.for.end21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end21

for.body.lr.ph:                                   ; preds = %entry
  %normalization_factor = getelementptr i8, ptr %work, i32 276
  %2 = ptrtoint ptr %normalization_factor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %normalization_factor, align 8
  %rgn_tbl = getelementptr i8, ptr %work, i32 -200
  %srgns_per_rgn = getelementptr i8, ptr %work, i32 168
  %conv8 = and i32 %3, 255
  %rsp_list_lock = getelementptr i8, ptr %work, i32 -192
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %rgn_idx.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %rgn_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rgn_tbl, align 4
  %rgn_lock = getelementptr %struct.ufshpb_region, ptr %5, i32 %rgn_idx.043, i32 8
  tail call void @_raw_spin_lock(ptr noundef %rgn_lock) #9
  %reads = getelementptr %struct.ufshpb_region, ptr %5, i32 %rgn_idx.043, i32 9
  %6 = ptrtoint ptr %reads to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %reads, align 4
  %7 = ptrtoint ptr %srgns_per_rgn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %srgns_per_rgn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp440 = icmp sgt i32 %8, 0
  br i1 %cmp440, label %for.body6.lr.ph, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body6.lr.ph:                                  ; preds = %for.body
  %srgn_tbl = getelementptr %struct.ufshpb_region, ptr %5, i32 %rgn_idx.043, i32 1
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body6.lr.ph
  %srgn_idx.041 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.body6.for.body6_crit_edge ]
  %9 = ptrtoint ptr %srgn_tbl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %srgn_tbl, align 4
  %reads9 = getelementptr %struct.ufshpb_subregion, ptr %10, i32 %srgn_idx.041, i32 5
  %11 = ptrtoint ptr %reads9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reads9, align 4
  %shr = lshr i32 %12, %conv8
  store i32 %shr, ptr %reads9, align 4
  %13 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reads, align 4
  %add = add i32 %14, %shr
  store i32 %add, ptr %reads, align 4
  %inc = add nuw nsw i32 %srgn_idx.041, 1
  %15 = ptrtoint ptr %srgns_per_rgn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %srgns_per_rgn, align 4
  %cmp4 = icmp slt i32 %inc, %16
  br i1 %cmp4, label %for.body6.for.body6_crit_edge, label %for.body6.for.end_crit_edge

for.body6.for.end_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body6

for.end:                                          ; preds = %for.body6.for.end_crit_edge, %for.body.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rgn_lock) #9
  %rgn_state = getelementptr %struct.ufshpb_region, ptr %5, i32 %rgn_idx.043, i32 2
  %17 = ptrtoint ptr %rgn_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rgn_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp13.not = icmp eq i32 %18, 1
  br i1 %cmp13.not, label %lor.lhs.false, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.end
  %19 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_lock(ptr noundef %rsp_list_lock) #9
  %rgn_idx16 = getelementptr %struct.ufshpb_region, ptr %5, i32 %rgn_idx.043, i32 3
  %21 = ptrtoint ptr %rgn_idx16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rgn_idx16, align 4
  tail call fastcc void @ufshpb_update_inactive_info(ptr noundef %add.ptr, i32 noundef %22)
  tail call void @_raw_spin_unlock(ptr noundef %rsp_list_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %inc20 = add nuw i32 %rgn_idx.043, 1
  %23 = ptrtoint ptr %rgns_per_lu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rgns_per_lu, align 8
  %cmp = icmp ult i32 %inc20, %24
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end21_crit_edge

cleanup.for.end21_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end21

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end21:                                        ; preds = %cleanup.for.end21_crit_edge, %entry.for.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufshpb_read_to_handler(ptr noundef %work) #1 align 64 {
entry:
  %expired_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -296
  %lru_info1 = getelementptr i8, ptr %work, i32 -60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %expired_list) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %expired_list, i32 0, i32 1
  %1 = ptrtoint ptr %expired_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %expired_list, ptr %expired_list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %expired_list, ptr %0, align 4
  %work_data_bits = getelementptr i8, ptr %work, i32 100
  %call = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %work_data_bits) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %entry
  %rgn_state_lock = getelementptr i8, ptr %work, i32 -288
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rgn_state_lock) #9
  %3 = ptrtoint ptr %lru_info1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lru_info1, align 4
  %cmp18.not124 = icmp eq ptr %4, %lru_info1
  br i1 %cmp18.not124, label %do.body2.for.end_crit_edge, label %for.body.lr.ph

do.body2.for.end_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body2
  %read_timeout_ms = getelementptr i8, ptr %work, i32 244
  br label %for.body

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %for.body.lr.ph
  %.pn.in125 = phi ptr [ %4, %for.body.lr.ph ], [ %.pn126, %if.end35.for.body_crit_edge ]
  %5 = ptrtoint ptr %.pn.in125 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn126 = load ptr, ptr %.pn.in125, align 4
  %call20 = call i64 @ktime_get() #9
  %read_timeout = getelementptr i8, ptr %.pn.in125, i32 60
  %6 = ptrtoint ptr %read_timeout to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %read_timeout, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call20, i64 %7)
  %cmp3.i.i = icmp sgt i64 %call20, %7
  br i1 %cmp3.i.i, label %if.then23, label %for.body.if.end35_crit_edge

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then23:                                        ; preds = %for.body
  %read_timeout_expiries = getelementptr i8, ptr %.pn.in125, i32 68
  %8 = ptrtoint ptr %read_timeout_expiries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %read_timeout_expiries, align 8
  %dec = add i32 %9, -1
  store i32 %dec, ptr %read_timeout_expiries, align 8
  %rgn_flags.i = getelementptr i8, ptr %.pn.in125, i32 8
  %10 = ptrtoint ptr %rgn_flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %rgn_flags.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i = icmp ne i32 %and1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp27 = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.i, i1 true, i1 %cmp27
  br i1 %or.cond, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then23
  %list_expired_rgn = getelementptr i8, ptr %.pn.in125, i32 72
  %12 = ptrtoint ptr %expired_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %expired_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list_expired_rgn, ptr noundef nonnull %expired_list, ptr noundef %13) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then29.if.end35_crit_edge

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list_expired_rgn, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %list_expired_rgn to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %list_expired_rgn, align 4
  %prev3.i.i = getelementptr i8, ptr %.pn.in125, i32 76
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %expired_list, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %expired_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list_expired_rgn, ptr %expired_list, align 4
  br label %if.end35

if.else:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = call i64 @ktime_get() #9
  %18 = ptrtoint ptr %read_timeout_ms to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %read_timeout_ms, align 4
  %conv31 = zext i32 %19 to i64
  %mul.i = mul nuw nsw i64 %conv31, 1000000
  %add.i = add i64 %mul.i, %call30
  %20 = ptrtoint ptr %read_timeout to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %add.i, ptr %read_timeout, align 8
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.end.i.i, %if.then29.if.end35_crit_edge, %for.body.if.end35_crit_edge
  %cmp18.not = icmp eq ptr %.pn126, %lru_info1
  br i1 %cmp18.not, label %if.end35.for.end_crit_edge, label %if.end35.for.body_crit_edge

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %do.body2.for.end_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rgn_state_lock, i32 noundef %call5) #9
  %21 = ptrtoint ptr %expired_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %expired_list, align 4
  %cmp53.not127 = icmp eq ptr %22, %expired_list
  br i1 %cmp53.not127, label %for.end.for.end78_crit_edge, label %for.body56.lr.ph

for.end.for.end78_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end78

for.body56.lr.ph:                                 ; preds = %for.end
  %rsp_list_lock = getelementptr i8, ptr %work, i32 -236
  br label %for.body56

for.body56:                                       ; preds = %list_del_init.exit.for.body56_crit_edge, %for.body56.lr.ph
  %.pn116.in128 = phi ptr [ %22, %for.body56.lr.ph ], [ %.pn116, %list_del_init.exit.for.body56_crit_edge ]
  %23 = ptrtoint ptr %.pn116.in128 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn116 = load ptr, ptr %.pn116.in128, align 4
  %call.i.i119 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn116.in128) #9
  br i1 %call.i.i119, label %if.end.i.i120, label %for.body56.list_del_init.exit_crit_edge

for.body56.list_del_init.exit_crit_edge:          ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i120:                                    ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn116.in128, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %.pn116.in128 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.pn116.in128, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i120, %for.body56.list_del_init.exit_crit_edge
  %30 = ptrtoint ptr %.pn116.in128 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %.pn116.in128, ptr %.pn116.in128, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn116.in128, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %.pn116.in128, ptr %prev.i3.i, align 4
  %call66 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rsp_list_lock) #9
  %rgn_idx = getelementptr i8, ptr %.pn116.in128, i32 -88
  %32 = ptrtoint ptr %rgn_idx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rgn_idx, align 4
  call fastcc void @ufshpb_update_inactive_info(ptr noundef %add.ptr, i32 noundef %33)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsp_list_lock, i32 noundef %call66) #9
  %cmp53.not = icmp eq ptr %.pn116, %expired_list
  br i1 %cmp53.not, label %list_del_init.exit.for.end78_crit_edge, label %list_del_init.exit.for.body56_crit_edge

list_del_init.exit.for.body56_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body56

list_del_init.exit.for.end78_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end78

for.end78:                                        ; preds = %list_del_init.exit.for.end78_crit_edge, %for.end.for.end78_crit_edge
  %hpb_state.i.i = getelementptr i8, ptr %work, i32 -240
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %hpb_state.i.i, i32 noundef 4) #9
  %34 = ptrtoint ptr %hpb_state.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %hpb_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.not.i = icmp eq i32 %35, 1
  br i1 %cmp.not.i, label %do.body1.i, label %for.end78.ufshpb_kick_map_work.exit_crit_edge

for.end78.ufshpb_kick_map_work.exit_crit_edge:    ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_kick_map_work.exit

do.body1.i:                                       ; preds = %for.end78
  %rsp_list_lock.i = getelementptr i8, ptr %work, i32 -236
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rsp_list_lock.i) #9
  %lh_inact_rgn.i = getelementptr i8, ptr %work, i32 -184
  %36 = ptrtoint ptr %lh_inact_rgn.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %lh_inact_rgn.i, align 4
  %cmp.i.not.i = icmp eq ptr %37, %lh_inact_rgn.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %do.body1.i.if.then10.i_crit_edge

do.body1.i.if.then10.i_crit_edge:                 ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

lor.lhs.false.i:                                  ; preds = %do.body1.i
  %lh_act_srgn.i = getelementptr i8, ptr %work, i32 -192
  %38 = ptrtoint ptr %lh_act_srgn.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %lh_act_srgn.i, align 4
  %cmp.i23.not.i = icmp eq ptr %39, %lh_act_srgn.i
  br i1 %cmp.i23.not.i, label %if.end16.critedge.i, label %lor.lhs.false.i.if.then10.i_crit_edge

lor.lhs.false.i.if.then10.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10.i

if.then10.i:                                      ; preds = %lor.lhs.false.i.if.then10.i_crit_edge, %do.body1.i.if.then10.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsp_list_lock.i, i32 noundef %call4.i) #9
  %40 = load ptr, ptr @ufshpb_wq, align 4
  %map_work.i = getelementptr i8, ptr %work, i32 -104
  %call.i.i121 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %map_work.i) #9
  br label %ufshpb_kick_map_work.exit

if.end16.critedge.i:                              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rsp_list_lock.i, i32 noundef %call4.i) #9
  br label %ufshpb_kick_map_work.exit

ufshpb_kick_map_work.exit:                        ; preds = %if.end16.critedge.i, %if.then10.i, %for.end78.ufshpb_kick_map_work.exit_crit_edge
  call void @_clear_bit(i32 noundef 0, ptr noundef %work_data_bits) #9
  %timeout_polling_interval_ms = getelementptr i8, ptr %work, i32 252
  %41 = ptrtoint ptr %timeout_polling_interval_ms to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %timeout_polling_interval_ms, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %42) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i122 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %work, i32 noundef %call2.i) #9
  br label %cleanup

cleanup:                                          ; preds = %ufshpb_kick_map_work.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %expired_list) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufshpb_issue_umap_single_req(ptr noundef %hpb, ptr noundef readonly %rgn) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %rgn, null
  br i1 %tobool.not.i, label %entry.cond.end.i_crit_edge, label %cond.true.i

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rgn_idx1.i = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 3
  %0 = ptrtoint ptr %rgn_idx1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rgn_idx1.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %entry.cond.end.i_crit_edge
  %cond.i = phi i32 [ %1, %cond.true.i ], [ 0, %entry.cond.end.i_crit_edge ]
  %map_req_cache.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 36
  %2 = ptrtoint ptr %map_req_cache.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_req_cache.i, align 4
  %call.i1 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3264) #9
  %tobool.not.i2 = icmp eq ptr %call.i1, null
  br i1 %tobool.not.i2, label %cond.end.i.ufshpb_issue_umap_req.exit_crit_edge, label %retry.preheader.i

cond.end.i.ufshpb_issue_umap_req.exit_crit_edge:  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_issue_umap_req.exit

retry.preheader.i:                                ; preds = %cond.end.i
  %sdev_ufs_lu.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 1
  %4 = ptrtoint ptr %sdev_ufs_lu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdev_ufs_lu.i, align 4
  %request_queue27.i = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %request_queue27.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %request_queue27.i, align 4
  %call128.i = tail call ptr @blk_mq_alloc_request(ptr noundef %7, i32 noundef 35, i32 noundef 1) #9
  %cmp.i.i = icmp ugt ptr %call128.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %free_rq.i, label %if.end.i

free_rq.i:                                        ; preds = %retry.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %map_req_cache.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map_req_cache.i, align 4
  tail call void @kmem_cache_free(ptr noundef %9, ptr noundef nonnull %call.i1) #9
  br label %ufshpb_issue_umap_req.exit

if.end.i:                                         ; preds = %retry.preheader.i
  %hpb11.i = getelementptr inbounds %struct.ufshpb_req, ptr %call.i1, i32 0, i32 2
  %10 = ptrtoint ptr %hpb11.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %hpb, ptr %hpb11.i, align 8
  %11 = ptrtoint ptr %call.i1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call128.i, ptr %call.i1, align 8
  %rgn_idx13.i = getelementptr inbounds %struct.ufshpb_req, ptr %call.i1, i32 0, i32 4, i32 0, i32 1
  %12 = ptrtoint ptr %rgn_idx13.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %cond.i, ptr %rgn_idx13.i, align 8
  %timeout.i.i = getelementptr inbounds %struct.request, ptr %call128.i, i32 0, i32 7
  %13 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %timeout.i.i, align 4
  %end_io_data.i.i = getelementptr inbounds %struct.request, ptr %call128.i, i32 0, i32 33
  %14 = ptrtoint ptr %end_io_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i1, ptr %end_io_data.i.i, align 4
  %cmd.i.i = getelementptr %struct.request, ptr %call128.i, i32 1, i32 4
  %15 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -6, ptr %16, align 1
  %conv.i.i.i = select i1 %tobool.not.i, i8 3, i8 1
  %arrayidx1.i.i.i = getelementptr i8, ptr %16, i32 1
  %18 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i.i.i, ptr %arrayidx1.i.i.i, align 1
  br i1 %tobool.not.i, label %if.end.i.ufshpb_execute_umap_req.exit.i_crit_edge, label %if.then.i.i.i

if.end.i.ufshpb_execute_umap_req.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_execute_umap_req.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %rgn_idx.i.i.i = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 3
  %19 = ptrtoint ptr %rgn_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rgn_idx.i.i.i, align 4
  %conv3.i.i.i = trunc i32 %20 to i16
  %arrayidx4.i.i.i = getelementptr i8, ptr %16, i32 2
  %21 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %conv3.i.i.i, ptr %arrayidx4.i.i.i, align 1
  br label %ufshpb_execute_umap_req.exit.i

ufshpb_execute_umap_req.exit.i:                   ; preds = %if.then.i.i.i, %if.end.i.ufshpb_execute_umap_req.exit.i_crit_edge
  %arrayidx5.i.i.i = getelementptr i8, ptr %16, i32 9
  %22 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx5.i.i.i, align 1
  %cmd_len.i.i = getelementptr %struct.request, ptr %call128.i, i32 1, i32 5
  %23 = ptrtoint ptr %cmd_len.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 10, ptr %cmd_len.i.i, align 4
  tail call void @blk_execute_rq_nowait(ptr noundef %call128.i, i1 noundef zeroext true, ptr noundef nonnull @ufshpb_umap_req_compl_fn) #9
  %umap_req_cnt.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 34, i32 7
  %24 = ptrtoint ptr %umap_req_cnt.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %umap_req_cnt.i.i, align 8
  %inc.i.i = add i64 %25, 1
  store i64 %inc.i.i, ptr %umap_req_cnt.i.i, align 8
  br label %ufshpb_issue_umap_req.exit

ufshpb_issue_umap_req.exit:                       ; preds = %ufshpb_execute_umap_req.exit.i, %free_rq.i, %cond.end.i.ufshpb_issue_umap_req.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %ufshpb_execute_umap_req.exit.i ], [ -12, %free_rq.i ], [ -12, %cond.end.i.ufshpb_issue_umap_req.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ufshpb_evict_region(ptr noundef %hpb, ptr noundef %rgn) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ufshpb_evict_region.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ufshpb_evict_region, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sdev_ufs_lu = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 1
  %0 = ptrtoint ptr %sdev_ufs_lu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev_ufs_lu, align 4
  %sdev_dev = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 56
  %rgn_idx = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 3
  %2 = ptrtoint ptr %rgn_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rgn_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ufshpb_evict_region.__UNIQUE_ID_ddebug323, ptr noundef %sdev_dev, ptr noundef nonnull @.str.96, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %list_lru_rgn.i = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 6
  %call.i.i2.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_lru_rgn.i) #9
  br i1 %call.i.i2.i, label %if.end.i.i.i, label %do.end.ufshpb_cleanup_lru_info.exit_crit_edge

do.end.ufshpb_cleanup_lru_info.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_cleanup_lru_info.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %list_lru_rgn.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list_lru_rgn.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %ufshpb_cleanup_lru_info.exit

ufshpb_cleanup_lru_info.exit:                     ; preds = %if.end.i.i.i, %do.end.ufshpb_cleanup_lru_info.exit_crit_edge
  %10 = ptrtoint ptr %list_lru_rgn.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list_lru_rgn.i, ptr %list_lru_rgn.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list_lru_rgn.i, ptr %prev.i3.i.i, align 4
  %rgn_state.i = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 2
  %12 = ptrtoint ptr %rgn_state.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %rgn_state.i, align 8
  %active_cnt.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 16, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_cnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %active_cnt.i, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_cnt.i, ptr %active_cnt.i, i32 1, ptr elementtype(i32) %active_cnt.i) #9, !srcloc !352
  %srgn_tbl = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 1
  %srgn_cnt = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 4
  %14 = ptrtoint ptr %srgn_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %srgn_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13 = icmp sgt i32 %15, 0
  br i1 %cmp13, label %land.rhs.lr.ph, label %ufshpb_cleanup_lru_info.exit.for.end_crit_edge

ufshpb_cleanup_lru_info.exit.for.end_crit_edge:   ; preds = %ufshpb_cleanup_lru_info.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %ufshpb_cleanup_lru_info.exit
  %pages_per_srgn.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 32
  %m_page_cache.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 37
  br label %land.rhs

land.rhs:                                         ; preds = %ufshpb_purge_active_subregion.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %srgn_idx.014 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %ufshpb_purge_active_subregion.exit.land.rhs_crit_edge ]
  %16 = ptrtoint ptr %srgn_tbl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %srgn_tbl, align 4
  %arrayidx = getelementptr %struct.ufshpb_subregion, ptr %17, i32 %srgn_idx.014
  %tobool4.not = icmp eq ptr %arrayidx, null
  br i1 %tobool4.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %srgn_state.i = getelementptr %struct.ufshpb_subregion, ptr %17, i32 %srgn_idx.014, i32 1
  %18 = ptrtoint ptr %srgn_state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %srgn_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %for.body.ufshpb_purge_active_subregion.exit_crit_edge, label %if.then.i

for.body.ufshpb_purge_active_subregion.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_purge_active_subregion.exit

if.then.i:                                        ; preds = %for.body
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %pages_per_srgn.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pages_per_srgn.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp8.not.i.i = icmp eq i32 %23, 0
  br i1 %cmp8.not.i.i, label %if.then.i.ufshpb_put_map_ctx.exit.i_crit_edge, label %if.then.i.for.body.i.i_crit_edge

if.then.i.for.body.i.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i.i

if.then.i.ufshpb_put_map_ctx.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_put_map_ctx.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then.i.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.i.for.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %25, i32 %i.09.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %28 = load ptr, ptr @ufshpb_page_pool, align 4
  tail call void @mempool_free(ptr noundef %27, ptr noundef %28) #9
  %inc.i.i = add nuw i32 %i.09.i.i, 1
  %29 = ptrtoint ptr %pages_per_srgn.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pages_per_srgn.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %30
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.ufshpb_put_map_ctx.exit.i_crit_edge

for.body.i.i.ufshpb_put_map_ctx.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_put_map_ctx.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

ufshpb_put_map_ctx.exit.i:                        ; preds = %for.body.i.i.ufshpb_put_map_ctx.exit.i_crit_edge, %if.then.i.ufshpb_put_map_ctx.exit.i_crit_edge
  %ppn_dirty.i.i = getelementptr inbounds %struct.ufshpb_map_ctx, ptr %21, i32 0, i32 1
  %31 = ptrtoint ptr %ppn_dirty.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ppn_dirty.i.i, align 4
  tail call void @bitmap_free(ptr noundef %32) #9
  %33 = ptrtoint ptr %m_page_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %m_page_cache.i.i, align 8
  %35 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %21, align 4
  tail call void @kmem_cache_free(ptr noundef %34, ptr noundef %36) #9
  %37 = load ptr, ptr @ufshpb_mctx_pool, align 4
  tail call void @mempool_free(ptr noundef %21, ptr noundef %37) #9
  %38 = ptrtoint ptr %srgn_state.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %srgn_state.i, align 4
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx, align 4
  br label %ufshpb_purge_active_subregion.exit

ufshpb_purge_active_subregion.exit:               ; preds = %ufshpb_put_map_ctx.exit.i, %for.body.ufshpb_purge_active_subregion.exit_crit_edge
  %inc = add nuw nsw i32 %srgn_idx.014, 1
  %40 = ptrtoint ptr %srgn_cnt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %srgn_cnt, align 8
  %cmp = icmp slt i32 %inc, %41
  br i1 %cmp, label %ufshpb_purge_active_subregion.exit.land.rhs_crit_edge, label %ufshpb_purge_active_subregion.exit.for.end_crit_edge

ufshpb_purge_active_subregion.exit.for.end_crit_edge: ; preds = %ufshpb_purge_active_subregion.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

ufshpb_purge_active_subregion.exit.land.rhs_crit_edge: ; preds = %ufshpb_purge_active_subregion.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end:                                          ; preds = %ufshpb_purge_active_subregion.exit.for.end_crit_edge, %land.rhs.for.end_crit_edge, %ufshpb_cleanup_lru_info.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ufshpb_get_req(ptr noundef %hpb, i32 noundef %rgn_idx, i32 noundef %dir, i1 noundef zeroext %atomic) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %map_req_cache = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 36
  %0 = ptrtoint ptr %map_req_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map_req_cache, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %retry.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

retry.preheader:                                  ; preds = %entry
  %sdev_ufs_lu = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 1
  %2 = ptrtoint ptr %sdev_ufs_lu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sdev_ufs_lu, align 4
  %request_queue27 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %request_queue27 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request_queue27, align 4
  %call128 = tail call ptr @blk_mq_alloc_request(ptr noundef %5, i32 noundef %dir, i32 noundef 1) #9
  %atomic.not = xor i1 %atomic, true
  %cmp29 = icmp eq ptr %call128, inttoptr (i32 -11 to ptr)
  %or.cond30 = select i1 %atomic.not, i1 %cmp29, i1 false
  br i1 %or.cond30, label %land.lhs.true4.preheader, label %retry.preheader.if.end7_crit_edge

retry.preheader.if.end7_crit_edge:                ; preds = %retry.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true4.preheader:                         ; preds = %retry.preheader
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 3100, i32 noundef 2) #9
  %6 = ptrtoint ptr %sdev_ufs_lu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev_ufs_lu, align 4
  %request_queue = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %request_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request_queue, align 4
  %call1 = tail call ptr @blk_mq_alloc_request(ptr noundef %9, i32 noundef %dir, i32 noundef 1) #9
  %cmp = icmp eq ptr %call1, inttoptr (i32 -11 to ptr)
  br i1 %cmp, label %land.lhs.true4.1, label %land.lhs.true4.preheader.if.end7_crit_edge

land.lhs.true4.preheader.if.end7_crit_edge:       ; preds = %land.lhs.true4.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true4.1:                                 ; preds = %land.lhs.true4.preheader
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 3100, i32 noundef 2) #9
  %10 = ptrtoint ptr %sdev_ufs_lu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdev_ufs_lu, align 4
  %request_queue.1 = getelementptr inbounds %struct.scsi_device, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %request_queue.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %request_queue.1, align 4
  %call1.1 = tail call ptr @blk_mq_alloc_request(ptr noundef %13, i32 noundef %dir, i32 noundef 1) #9
  %cmp.1 = icmp eq ptr %call1.1, inttoptr (i32 -11 to ptr)
  br i1 %cmp.1, label %land.lhs.true4.2, label %land.lhs.true4.1.if.end7_crit_edge

land.lhs.true4.1.if.end7_crit_edge:               ; preds = %land.lhs.true4.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true4.2:                                 ; preds = %land.lhs.true4.1
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 3100, i32 noundef 2) #9
  %14 = ptrtoint ptr %sdev_ufs_lu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev_ufs_lu, align 4
  %request_queue.2 = getelementptr inbounds %struct.scsi_device, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %request_queue.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %request_queue.2, align 4
  %call1.2 = tail call ptr @blk_mq_alloc_request(ptr noundef %17, i32 noundef %dir, i32 noundef 1) #9
  %cmp.2 = icmp eq ptr %call1.2, inttoptr (i32 -11 to ptr)
  br i1 %cmp.2, label %land.lhs.true4.3, label %land.lhs.true4.2.if.end7_crit_edge

land.lhs.true4.2.if.end7_crit_edge:               ; preds = %land.lhs.true4.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true4.3:                                 ; preds = %land.lhs.true4.2
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 3100, i32 noundef 2) #9
  %18 = ptrtoint ptr %sdev_ufs_lu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdev_ufs_lu, align 4
  %request_queue.3 = getelementptr inbounds %struct.scsi_device, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %request_queue.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %request_queue.3, align 4
  %call1.3 = tail call ptr @blk_mq_alloc_request(ptr noundef %21, i32 noundef %dir, i32 noundef 1) #9
  %cmp.3 = icmp eq ptr %call1.3, inttoptr (i32 -11 to ptr)
  br i1 %cmp.3, label %land.lhs.true4.3.free_rq_crit_edge, label %land.lhs.true4.3.if.end7_crit_edge

land.lhs.true4.3.if.end7_crit_edge:               ; preds = %land.lhs.true4.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true4.3.free_rq_crit_edge:               ; preds = %land.lhs.true4.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rq

if.end7:                                          ; preds = %land.lhs.true4.3.if.end7_crit_edge, %land.lhs.true4.2.if.end7_crit_edge, %land.lhs.true4.1.if.end7_crit_edge, %land.lhs.true4.preheader.if.end7_crit_edge, %retry.preheader.if.end7_crit_edge
  %call1.lcssa = phi ptr [ %call128, %retry.preheader.if.end7_crit_edge ], [ %call1, %land.lhs.true4.preheader.if.end7_crit_edge ], [ %call1.1, %land.lhs.true4.1.if.end7_crit_edge ], [ %call1.2, %land.lhs.true4.2.if.end7_crit_edge ], [ %call1.3, %land.lhs.true4.3.if.end7_crit_edge ]
  %cmp.i = icmp ugt ptr %call1.lcssa, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end7.free_rq_crit_edge, label %if.end10

if.end7.free_rq_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_rq

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %hpb11 = getelementptr inbounds %struct.ufshpb_req, ptr %call, i32 0, i32 2
  %22 = ptrtoint ptr %hpb11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %hpb, ptr %hpb11, align 8
  %23 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call1.lcssa, ptr %call, align 8
  %rgn_idx13 = getelementptr inbounds %struct.ufshpb_req, ptr %call, i32 0, i32 4, i32 0, i32 1
  %24 = ptrtoint ptr %rgn_idx13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rgn_idx, ptr %rgn_idx13, align 8
  br label %cleanup

free_rq:                                          ; preds = %if.end7.free_rq_crit_edge, %land.lhs.true4.3.free_rq_crit_edge
  %25 = ptrtoint ptr %map_req_cache to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map_req_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %26, ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %free_rq, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %free_rq ], [ %call, %if.end10 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blk_mq_alloc_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_execute_rq_nowait(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufshpb_umap_req_compl_fn(ptr nocapture noundef readonly %req, i8 noundef zeroext %error) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %end_io_data = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 33
  %0 = ptrtoint ptr %end_io_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end_io_data, align 4
  %hpb = getelementptr inbounds %struct.ufshpb_req, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hpb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hpb, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @blk_mq_free_request(ptr noundef %5) #9
  %map_req_cache.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 36
  %6 = ptrtoint ptr %map_req_cache.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map_req_cache.i, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_request(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufshpb_add_region(ptr noundef %hpb, ptr noundef %rgn) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lru_info1 = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 16
  %rgn_state_lock = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rgn_state_lock) #9
  %list_lru_rgn = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 6
  %0 = ptrtoint ptr %list_lru_rgn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list_lru_rgn, align 4
  %cmp.i.not = icmp eq ptr %1, %list_lru_rgn
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_lru_rgn) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.__list_del_entry.exit.i.i_crit_edge

if.then.__list_del_entry.exit.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %list_lru_rgn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list_lru_rgn, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 16, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_lru_rgn, ptr noundef %9, ptr noundef %lru_info1) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.out_crit_edge

__list_del_entry.exit.i.i.out_crit_edge:          ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list_lru_rgn, ptr %prev.i2.i.i, align 4
  %11 = ptrtoint ptr %list_lru_rgn to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %lru_info1, ptr %list_lru_rgn, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list_lru_rgn, ptr %9, align 4
  br label %out

if.end:                                           ; preds = %entry
  %rgn_state = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 2
  %14 = ptrtoint ptr %rgn_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rgn_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp7 = icmp eq i32 %15, 0
  br i1 %cmp7, label %if.then9, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then9:                                         ; preds = %if.end
  %active_cnt = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 16, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_cnt, i32 noundef 4) #9
  %16 = ptrtoint ptr %active_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %active_cnt, align 4
  %max_lru_active_cnt = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 16, i32 1
  %18 = ptrtoint ptr %max_lru_active_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_lru_active_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp11 = icmp eq i32 %17, %19
  br i1 %cmp11, label %if.then13, label %if.then9.if.end67_crit_edge

if.then9.if.end67_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then13:                                        ; preds = %if.then9
  %is_hcm = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 33
  %20 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool14.not = icmp eq i8 %21, 0
  br i1 %tobool14.not, label %if.then13.if.end19_crit_edge, label %land.lhs.true

if.then13.if.end19_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then13
  %reads = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 9
  %22 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reads, align 4
  %eviction_thld_enter = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 35, i32 3
  %24 = ptrtoint ptr %eviction_thld_enter to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %eviction_thld_enter, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp16 = icmp ult i32 %23, %25
  br i1 %cmp16, label %land.lhs.true.out_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end19:                                         ; preds = %land.lhs.true.if.end19_crit_edge, %if.then13.if.end19_crit_edge
  %26 = ptrtoint ptr %lru_info1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn29.i = load ptr, ptr %lru_info1, align 4
  %cmp.not31.i = icmp eq ptr %.pn29.i, %lru_info1
  br i1 %cmp.not31.i, label %if.end19.do.end25_crit_edge, label %for.body.lr.ph.i

if.end19.do.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

for.body.lr.ph.i:                                 ; preds = %if.end19
  %eviction_thld_exit.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 35, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn32.i = phi ptr [ %.pn29.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %rgn.033.i = getelementptr i8, ptr %.pn32.i, i32 -28
  %tobool.not.i = icmp eq ptr %rgn.033.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %sdev_ufs_lu.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 1
  %27 = ptrtoint ptr %sdev_ufs_lu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sdev_ufs_lu.i, align 4
  %sdev_dev.i = getelementptr inbounds %struct.scsi_device, ptr %28, i32 0, i32 56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev_dev.i, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108) #12
  br label %do.end25

if.end.i:                                         ; preds = %for.body.i
  %srgn_cnt.i.i = getelementptr i8, ptr %.pn32.i, i32 -12
  %29 = ptrtoint ptr %srgn_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %srgn_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp2.i.i = icmp sgt i32 %30, 0
  br i1 %cmp2.i.i, label %land.rhs.lr.ph.i.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

land.rhs.lr.ph.i.i:                               ; preds = %if.end.i
  %srgn_tbl.i.i = getelementptr i8, ptr %.pn32.i, i32 -24
  %31 = ptrtoint ptr %srgn_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %srgn_tbl.i.i, align 4
  br label %land.rhs.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %srgn_idx.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %30
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.end5.i_crit_edge, label %for.cond.i.i.land.rhs.i.i_crit_edge

for.cond.i.i.land.rhs.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

for.cond.i.i.if.end5.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

land.rhs.i.i:                                     ; preds = %for.cond.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %srgn_idx.03.i.i = phi i32 [ 0, %land.rhs.lr.ph.i.i ], [ %inc.i.i, %for.cond.i.i.land.rhs.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ufshpb_subregion, ptr %32, i32 %srgn_idx.03.i.i
  %tobool.not.i.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool.not.i.i, label %land.rhs.i.i.if.end5.i_crit_edge, label %for.body.i.i

land.rhs.i.i.if.end5.i_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

for.body.i.i:                                     ; preds = %land.rhs.i.i
  %srgn_state.i.i = getelementptr %struct.ufshpb_subregion, ptr %32, i32 %srgn_idx.03.i.i, i32 1
  %33 = ptrtoint ptr %srgn_state.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %srgn_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %34)
  %cmp1.i.i = icmp eq i32 %34, 3
  br i1 %cmp1.i.i, label %for.body.i.i.for.inc.i_crit_edge, label %for.cond.i.i

for.body.i.i.for.inc.i_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end5.i:                                        ; preds = %land.rhs.i.i.if.end5.i_crit_edge, %for.cond.i.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  br i1 %tobool14.not, label %if.end5.i.do.body30_crit_edge, label %land.lhs.true.i

if.end5.i.do.body30_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body30

land.lhs.true.i:                                  ; preds = %if.end5.i
  %reads.i = getelementptr i8, ptr %.pn32.i, i32 56
  %35 = ptrtoint ptr %reads.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reads.i, align 4
  %37 = ptrtoint ptr %eviction_thld_exit.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %eviction_thld_exit.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp7.i = icmp ugt i32 %36, %38
  br i1 %cmp7.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.do.body30_crit_edge

land.lhs.true.i.do.body30_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body30

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.i.for.inc.i_crit_edge
  %39 = ptrtoint ptr %.pn32.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i = load ptr, ptr %.pn32.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %lru_info1
  br i1 %cmp.not.i, label %for.inc.i.do.end25_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end25_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

do.end25:                                         ; preds = %for.inc.i.do.end25_crit_edge, %do.end.i, %if.end19.do.end25_crit_edge
  %sdev_ufs_lu = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 1
  %40 = ptrtoint ptr %sdev_ufs_lu to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdev_ufs_lu, align 4
  %sdev_dev = getelementptr inbounds %struct.scsi_device, ptr %41, i32 0, i32 56
  %42 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool27.not = icmp eq i8 %43, 0
  %cond = select i1 %tobool27.not, ptr @.str.105, ptr @.str.104
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %sdev_dev, ptr noundef nonnull @.str.102, ptr noundef nonnull %cond) #12
  br label %out

do.body30:                                        ; preds = %land.lhs.true.i.do.body30_crit_edge, %if.end5.i.do.body30_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufshpb_add_region.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufshpb_add_region, %if.then36)) #9
          to label %do.end43 [label %if.then36], !srcloc !347

if.then36:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  %sdev_ufs_lu37 = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 1
  %44 = ptrtoint ptr %sdev_ufs_lu37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sdev_ufs_lu37, align 4
  %sdev_dev38 = getelementptr inbounds %struct.scsi_device, ptr %45, i32 0, i32 56
  %call.i.i96 = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_cnt, i32 noundef 4) #9
  %46 = ptrtoint ptr %active_cnt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %active_cnt, align 4
  %rgn_idx = getelementptr i8, ptr %.pn32.i, i32 -16
  %48 = ptrtoint ptr %rgn_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rgn_idx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufshpb_add_region.__UNIQUE_ID_ddebug324, ptr noundef %sdev_dev38, ptr noundef nonnull @.str.106, i32 noundef %47, i32 noundef %49) #9
  br label %do.end43

do.end43:                                         ; preds = %if.then36, %do.body30
  %50 = ptrtoint ptr %is_hcm to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %is_hcm, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool45.not = icmp eq i8 %51, 0
  br i1 %tobool45.not, label %do.end43.if.end66_crit_edge, label %if.then46

do.end43.if.end66_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then46:                                        ; preds = %do.end43
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rgn_state_lock, i32 noundef %call3) #9
  %call48 = tail call fastcc i32 @ufshpb_issue_umap_single_req(ptr noundef %hpb, ptr noundef nonnull %rgn.033.i)
  %call58 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rgn_state_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool63.not = icmp eq i32 %call48, 0
  br i1 %tobool63.not, label %if.then46.if.end66_crit_edge, label %if.then46.out_crit_edge

if.then46.out_crit_edge:                          ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then46.if.end66_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.end66:                                         ; preds = %if.then46.if.end66_crit_edge, %do.end43.if.end66_crit_edge
  %flags.0 = phi i32 [ %call58, %if.then46.if.end66_crit_edge ], [ %call3, %do.end43.if.end66_crit_edge ]
  tail call fastcc void @__ufshpb_evict_region(ptr noundef %hpb, ptr noundef nonnull %rgn.033.i)
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then9.if.end67_crit_edge
  %flags.1 = phi i32 [ %flags.0, %if.end66 ], [ %call3, %if.then9.if.end67_crit_edge ]
  %52 = ptrtoint ptr %rgn_state to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %rgn_state, align 8
  %prev.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 16, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %call.i.i13.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_lru_rgn, ptr noundef %54, ptr noundef %lru_info1) #9
  br i1 %call.i.i13.i, label %if.end.i.i.i99, label %if.end67.list_add_tail.exit.i_crit_edge

if.end67.list_add_tail.exit.i_crit_edge:          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i99:                                   ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %list_lru_rgn, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %list_lru_rgn to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %lru_info1, ptr %list_lru_rgn, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 6, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %list_lru_rgn, ptr %54, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i99, %if.end67.list_add_tail.exit.i_crit_edge
  %call.i.i.i100 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_cnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %active_cnt, i32 1, i32 3, i32 1) #9
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_cnt, ptr %active_cnt, i32 1, ptr elementtype(i32) %active_cnt) #9, !srcloc !353
  %60 = ptrtoint ptr %rgn to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rgn, align 8
  %is_hcm.i101 = getelementptr inbounds %struct.ufshpb_lu, ptr %61, i32 0, i32 33
  %62 = ptrtoint ptr %is_hcm.i101 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %is_hcm.i101, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i102 = icmp eq i8 %63, 0
  br i1 %tobool.not.i102, label %list_add_tail.exit.i.out_crit_edge, label %if.then.i

list_add_tail.exit.i.out_crit_edge:               ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i64 @ktime_get() #9
  %64 = ptrtoint ptr %rgn to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rgn, align 8
  %read_timeout_ms.i = getelementptr inbounds %struct.ufshpb_lu, ptr %65, i32 0, i32 35, i32 5
  %66 = ptrtoint ptr %read_timeout_ms.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %read_timeout_ms.i, align 4
  %conv.i103 = zext i32 %67 to i64
  %mul.i.i = mul nuw nsw i64 %conv.i103, 1000000
  %add.i.i = add i64 %mul.i.i, %call.i
  %read_timeout.i = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 10
  %68 = ptrtoint ptr %read_timeout.i to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %add.i.i, ptr %read_timeout.i, align 8
  %read_timeout_expiries.i = getelementptr inbounds %struct.ufshpb_lu, ptr %65, i32 0, i32 35, i32 6
  %69 = ptrtoint ptr %read_timeout_expiries.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %read_timeout_expiries.i, align 8
  %read_timeout_expiries5.i = getelementptr inbounds %struct.ufshpb_region, ptr %rgn, i32 0, i32 11
  %71 = ptrtoint ptr %read_timeout_expiries5.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %read_timeout_expiries5.i, align 8
  br label %out

out:                                              ; preds = %if.then.i, %list_add_tail.exit.i.out_crit_edge, %if.then46.out_crit_edge, %do.end25, %land.lhs.true.out_crit_edge, %if.end.out_crit_edge, %if.end.i.i.i.i, %__list_del_entry.exit.i.i.out_crit_edge
  %ret.2 = phi i32 [ %call48, %if.then46.out_crit_edge ], [ -12, %do.end25 ], [ 0, %if.end.out_crit_edge ], [ -13, %land.lhs.true.out_crit_edge ], [ 0, %__list_del_entry.exit.i.i.out_crit_edge ], [ 0, %if.end.i.i.i.i ], [ 0, %list_add_tail.exit.i.out_crit_edge ], [ 0, %if.then.i ]
  %flags.2 = phi i32 [ %call58, %if.then46.out_crit_edge ], [ %call3, %do.end25 ], [ %call3, %if.end.out_crit_edge ], [ %call3, %land.lhs.true.out_crit_edge ], [ %call3, %__list_del_entry.exit.i.i.out_crit_edge ], [ %call3, %if.end.i.i.i.i ], [ %flags.1, %list_add_tail.exit.i.out_crit_edge ], [ %flags.1, %if.then.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rgn_state_lock, i32 noundef %flags.2) #9
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ufshpb_get_map_ctx(ptr nocapture noundef readonly %hpb, i1 noundef zeroext %last) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %entries_per_srgn = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 29
  %0 = ptrtoint ptr %entries_per_srgn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entries_per_srgn, align 4
  %2 = load ptr, ptr @ufshpb_mctx_pool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %2, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_page_cache = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 37
  %3 = ptrtoint ptr %m_page_cache to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_page_cache, align 8
  %call1 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3264) #9
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %call, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.end.release_mctx_crit_edge, label %if.end5

if.end.release_mctx_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_mctx

if.end5:                                          ; preds = %if.end
  br i1 %last, label %if.then9, label %if.end5.if.end10_crit_edge, !prof !345

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %last_srgn_entries = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 24
  %6 = ptrtoint ptr %last_srgn_entries to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_srgn_entries, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  %num_entries.0 = phi i32 [ %7, %if.then9 ], [ %1, %if.end5.if.end10_crit_edge ]
  %call11 = tail call ptr @bitmap_zalloc(i32 noundef %num_entries.0, i32 noundef 3264) #9
  %ppn_dirty = getelementptr inbounds %struct.ufshpb_map_ctx, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %ppn_dirty to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call11, ptr %ppn_dirty, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end10.release_m_page_crit_edge, label %for.cond.preheader

if.end10.release_m_page_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_m_page

for.cond.preheader:                               ; preds = %if.end10
  %pages_per_srgn = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 32
  %9 = ptrtoint ptr %pages_per_srgn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pages_per_srgn, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp64.not = icmp eq i32 %10, 0
  br i1 %cmp64.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %if.end27.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.065 = phi i32 [ %inc32, %if.end27.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %11 = load ptr, ptr @ufshpb_page_pool, align 4
  %call16 = tail call noalias ptr @mempool_alloc(ptr noundef %11, i32 noundef 3264) #9
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.065
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call16, ptr %arrayidx, align 4
  %15 = load ptr, ptr %call, align 4
  %arrayidx19 = getelementptr ptr, ptr %15, i32 %i.065
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx19, align 4
  %tobool20.not = icmp eq ptr %17, null
  br i1 %tobool20.not, label %for.cond22.preheader, label %if.end27

for.cond22.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.065)
  %cmp2366 = icmp sgt i32 %i.065, 0
  br i1 %cmp2366, label %for.cond22.preheader.for.body24_crit_edge, label %for.cond22.preheader.release_ppn_dirty_crit_edge

for.cond22.preheader.release_ppn_dirty_crit_edge: ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_ppn_dirty

for.cond22.preheader.for.body24_crit_edge:        ; preds = %for.cond22.preheader
  br label %for.body24

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.cond22.preheader.for.body24_crit_edge
  %j.067 = phi i32 [ %inc, %for.body24.for.body24_crit_edge ], [ 0, %for.cond22.preheader.for.body24_crit_edge ]
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  %arrayidx26 = getelementptr ptr, ptr %19, i32 %j.067
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx26, align 4
  %22 = load ptr, ptr @ufshpb_page_pool, align 4
  tail call void @mempool_free(ptr noundef %21, ptr noundef %22) #9
  %inc = add nuw nsw i32 %j.067, 1
  %exitcond.not = icmp eq i32 %inc, %i.065
  br i1 %exitcond.not, label %for.body24.release_ppn_dirty_crit_edge, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body24

for.body24.release_ppn_dirty_crit_edge:           ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_ppn_dirty

if.end27:                                         ; preds = %for.body
  %call30 = tail call ptr @page_address(ptr noundef nonnull %17) #9
  %23 = call ptr @memset(ptr %call30, i32 0, i32 4096)
  %inc32 = add nuw i32 %i.065, 1
  %24 = ptrtoint ptr %pages_per_srgn to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pages_per_srgn, align 8
  %cmp = icmp ult i32 %inc32, %25
  br i1 %cmp, label %if.end27.for.body_crit_edge, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27.for.body_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

release_ppn_dirty:                                ; preds = %for.body24.release_ppn_dirty_crit_edge, %for.cond22.preheader.release_ppn_dirty_crit_edge
  %26 = ptrtoint ptr %ppn_dirty to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ppn_dirty, align 4
  tail call void @bitmap_free(ptr noundef %27) #9
  br label %release_m_page

release_m_page:                                   ; preds = %release_ppn_dirty, %if.end10.release_m_page_crit_edge
  %28 = ptrtoint ptr %m_page_cache to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %m_page_cache, align 8
  %30 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call, align 4
  tail call void @kmem_cache_free(ptr noundef %29, ptr noundef %31) #9
  br label %release_mctx

release_mctx:                                     ; preds = %release_m_page, %if.end.release_mctx_crit_edge
  %32 = load ptr, ptr @ufshpb_mctx_pool, align 4
  tail call void @mempool_free(ptr noundef nonnull %call, ptr noundef %32) #9
  br label %cleanup

cleanup:                                          ; preds = %release_mctx, %if.end27.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %release_mctx ], [ null, %entry.cleanup_crit_edge ], [ %call, %for.cond.preheader.cleanup_crit_edge ], [ %call, %if.end27.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ufshpb_put_map_req(ptr noundef %hpb, ptr noundef %map_req) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bio = getelementptr inbounds %struct.ufshpb_req, ptr %map_req, i32 0, i32 1
  %0 = ptrtoint ptr %bio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio, align 4
  tail call void @bio_put(ptr noundef %1) #9
  %2 = ptrtoint ptr %map_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_req, align 4
  tail call void @blk_mq_free_request(ptr noundef %3) #9
  %map_req_cache.i = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 36
  %4 = ptrtoint ptr %map_req_cache.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_req_cache.i, align 4
  tail call void @kmem_cache_free(ptr noundef %5, ptr noundef %map_req) #9
  %param_lock = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %param_lock) #9
  %num_inflight_map_req = getelementptr inbounds %struct.ufshpb_lu, ptr %hpb, i32 0, i32 11
  %6 = ptrtoint ptr %num_inflight_map_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_inflight_map_req, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %num_inflight_map_req, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %param_lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_pc_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_rq_append_bio(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ufshpb_map_req_compl_fn(ptr nocapture noundef readonly %req, i8 noundef zeroext %error) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %end_io_data = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 33
  %0 = ptrtoint ptr %end_io_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end_io_data, align 4
  %hpb1 = getelementptr inbounds %struct.ufshpb_req, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hpb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hpb1, align 4
  %rgn_tbl = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %rgn_tbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rgn_tbl, align 4
  %rgn_idx = getelementptr inbounds %struct.ufshpb_req, ptr %1, i32 0, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %rgn_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rgn_idx, align 4
  %srgn_tbl = getelementptr %struct.ufshpb_region, ptr %5, i32 %7, i32 1
  %8 = ptrtoint ptr %srgn_tbl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %srgn_tbl, align 4
  %srgn_idx = getelementptr inbounds %struct.ufshpb_req, ptr %1, i32 0, i32 4, i32 0, i32 2
  %10 = ptrtoint ptr %srgn_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %srgn_idx, align 4
  %add.ptr = getelementptr %struct.ufshpb_subregion, ptr %9, i32 %11
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sdev_ufs_lu.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %sdev_ufs_lu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sdev_ufs_lu.i, align 4
  %sdev_dev.i = getelementptr inbounds %struct.scsi_device, ptr %15, i32 0, i32 56
  %rgn_idx.i = getelementptr %struct.ufshpb_subregion, ptr %9, i32 %11, i32 2
  %16 = ptrtoint ptr %rgn_idx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rgn_idx.i, align 4
  %srgn_idx.i = getelementptr %struct.ufshpb_subregion, ptr %9, i32 %11, i32 3
  %18 = ptrtoint ptr %srgn_idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %srgn_idx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev_dev.i, ptr noundef nonnull @.str.33, i32 noundef %17, i32 noundef %19) #12
  br label %ufshpb_clear_dirty_bitmap.exit

if.end.i:                                         ; preds = %entry
  %entries_per_srgn.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 29
  %is_last.i = getelementptr %struct.ufshpb_subregion, ptr %9, i32 %11, i32 4
  %20 = ptrtoint ptr %is_last.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_last.i, align 4, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1.not.i = icmp eq i8 %21, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then4.i, !prof !346

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %last_srgn_entries.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 24
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i.if.end5.i_crit_edge
  %num_entries.0.in.i = phi ptr [ %last_srgn_entries.i, %if.then4.i ], [ %entries_per_srgn.i, %if.end.i.if.end5.i_crit_edge ]
  %22 = ptrtoint ptr %num_entries.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %num_entries.0.i = load i32, ptr %num_entries.0.in.i, align 4
  %ppn_dirty.i = getelementptr inbounds %struct.ufshpb_map_ctx, ptr %13, i32 0, i32 1
  %23 = ptrtoint ptr %ppn_dirty.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ppn_dirty.i, align 4
  %sub.i.i = add i32 %num_entries.0.i, 31
  %25 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %25, 536870908
  %26 = call ptr @memset(ptr %24, i32 0, i32 %mul.i.i)
  %27 = ptrtoint ptr %rgn_tbl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rgn_tbl, align 4
  %rgn_idx7.i = getelementptr %struct.ufshpb_subregion, ptr %9, i32 %11, i32 2
  %29 = ptrtoint ptr %rgn_idx7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rgn_idx7.i, align 4
  %rgn_flags.i = getelementptr %struct.ufshpb_region, ptr %28, i32 %30, i32 7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %rgn_flags.i) #9
  br label %ufshpb_clear_dirty_bitmap.exit

ufshpb_clear_dirty_bitmap.exit:                   ; preds = %if.end5.i, %do.end.i
  %rgn_state_lock = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rgn_state_lock) #9
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i18 = icmp eq ptr %32, null
  br i1 %tobool.not.i18, label %do.end.i23, label %if.end.i25

do.end.i23:                                       ; preds = %ufshpb_clear_dirty_bitmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sdev_ufs_lu.i19 = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %sdev_ufs_lu.i19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sdev_ufs_lu.i19, align 4
  %sdev_dev.i20 = getelementptr inbounds %struct.scsi_device, ptr %34, i32 0, i32 56
  %rgn_idx.i21 = getelementptr %struct.ufshpb_subregion, ptr %9, i32 %11, i32 2
  %35 = ptrtoint ptr %rgn_idx.i21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rgn_idx.i21, align 4
  %srgn_idx.i22 = getelementptr %struct.ufshpb_subregion, ptr %9, i32 %11, i32 3
  %37 = ptrtoint ptr %srgn_idx.i22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %srgn_idx.i22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev_dev.i20, ptr noundef nonnull @.str.33, i32 noundef %36, i32 noundef %38) #12
  br label %ufshpb_activate_subregion.exit

if.end.i25:                                       ; preds = %ufshpb_clear_dirty_bitmap.exit
  %39 = ptrtoint ptr %rgn_tbl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rgn_tbl, align 4
  %rgn_idx1.i = getelementptr %struct.ufshpb_subregion, ptr %9, i32 %11, i32 2
  %41 = ptrtoint ptr %rgn_idx1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rgn_idx1.i, align 4
  %rgn_state.i = getelementptr %struct.ufshpb_region, ptr %40, i32 %42, i32 2
  %43 = ptrtoint ptr %rgn_state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rgn_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp.i = icmp eq i32 %44, 0
  br i1 %cmp.i, label %do.end7.i, label %if.end.i25.ufshpb_activate_subregion.exit_crit_edge, !prof !345

if.end.i25.ufshpb_activate_subregion.exit_crit_edge: ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %ufshpb_activate_subregion.exit

do.end7.i:                                        ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  %sdev_ufs_lu8.i = getelementptr inbounds %struct.ufshpb_lu, ptr %3, i32 0, i32 1
  %45 = ptrtoint ptr %sdev_ufs_lu8.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sdev_ufs_lu8.i, align 4
  %sdev_dev9.i = getelementptr inbounds %struct.scsi_device, ptr %46, i32 0, i32 56
  %srgn_idx11.i = getelementptr %struct.ufshpb_subregion, ptr %9, i32 %11, i32 3
  %47 = ptrtoint ptr %srgn_idx11.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %srgn_idx11.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %sdev_dev9.i, ptr noundef nonnull @.str.124, i32 noundef %42, i32 noundef %48) #12
  br label %ufshpb_activate_subregion.exit

ufshpb_activate_subregion.exit:                   ; preds = %do.end7.i, %if.end.i25.ufshpb_activate_subregion.exit_crit_edge, %do.end.i23
  %.sink.i = phi i32 [ 1, %do.end7.i ], [ 1, %do.end.i23 ], [ 2, %if.end.i25.ufshpb_activate_subregion.exit_crit_edge ]
  %srgn_state14.i = getelementptr %struct.ufshpb_subregion, ptr %9, i32 %11, i32 1
  %49 = ptrtoint ptr %srgn_state14.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink.i, ptr %srgn_state14.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rgn_state_lock, i32 noundef %call4) #9
  %50 = ptrtoint ptr %hpb1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hpb1, align 4
  %bio.i = getelementptr inbounds %struct.ufshpb_req, ptr %1, i32 0, i32 1
  %52 = ptrtoint ptr %bio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bio.i, align 4
  tail call void @bio_put(ptr noundef %53) #9
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  tail call void @blk_mq_free_request(ptr noundef %55) #9
  %map_req_cache.i.i = getelementptr inbounds %struct.ufshpb_lu, ptr %51, i32 0, i32 36
  %56 = ptrtoint ptr %map_req_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map_req_cache.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %57, ptr noundef %1) #9
  %param_lock.i = getelementptr inbounds %struct.ufshpb_lu, ptr %51, i32 0, i32 12
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %param_lock.i) #9
  %num_inflight_map_req.i = getelementptr inbounds %struct.ufshpb_lu, ptr %51, i32 0, i32 11
  %58 = ptrtoint ptr %num_inflight_map_req.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_inflight_map_req.i, align 4
  %dec.i = add i32 %59, -1
  store i32 %dec.i, ptr %num_inflight_map_req.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %param_lock.i, i32 noundef %call2.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ufshpb_check_hpb_reset_query(ptr noundef %hba) unnamed_addr #1 align 64 {
entry:
  %flag_res = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %flag_res) #9
  %0 = ptrtoint ptr %flag_res to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %flag_res, align 1
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %if.end14.do.body_crit_edge, %entry
  %try.033 = phi i32 [ 0, %entry ], [ %inc, %if.end14.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ufshpb_check_hpb_reset_query.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ufshpb_check_hpb_reset_query, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !347

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ufshpb_check_hpb_reset_query.__UNIQUE_ID_ddebug332, ptr noundef %2, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.132, i32 noundef %try.033) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %call3 = call i32 @ufshcd_query_flag(ptr noundef %hba, i32 noundef 5, i32 noundef 17, i8 noundef zeroext 0, ptr noundef nonnull %flag_res) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.132, i32 noundef %call3) #12
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %5 = ptrtoint ptr %flag_res to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %flag_res, align 1, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool12.not = icmp eq i8 %6, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %if.end14

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #9
  %inc = add nuw nsw i32 %try.033, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %if.end14.do.body_crit_edge

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.end:                                          ; preds = %if.end14
  %7 = ptrtoint ptr %flag_res to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flag_res, align 1, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool15.not = icmp eq i8 %8, 0
  br i1 %tobool15.not, label %for.end.cleanup_crit_edge, label %do.end19

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end19:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.132) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %for.end.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end8
  %11 = ptrtoint ptr %flag_res to i32
  call void @__asan_load1_noabort(i32 %11)
  %retval.0.in = load i8, ptr %flag_res, align 1, !range !342
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.in)
  %retval.0 = icmp ne i8 %retval.0.in, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %flag_res) #9
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_resize(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_pages(i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_pages(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 188)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 188)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !100, !102, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !126, !127, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !186, !187, !189, !191, !192, !193, !194, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !209, !211, !212, !213, !214, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !229, !230, !231, !232, !233, !234, !236, !237, !239, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !258, !259, !260, !262, !263, !264, !265, !267, !268, !269, !271, !272, !273, !275, !276, !277, !279, !281, !282, !284, !285, !286, !287, !289, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !308, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !327, !328, !329, !330}
!llvm.named.register.sp = !{!332}
!llvm.module.flags = !{!333, !334, !335, !336, !337, !338, !339, !340}
!llvm.ident = !{!341}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 366, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ufshpb_prep._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ufshpb_prep._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 426, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @ufshpb_prep._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @ufshpb_prep._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1288, i32 3}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @ufshpb_rsp_upiu._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @ufshpb_rsp_upiu._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1316, i32 4}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ufshpb_rsp_upiu._entry.11, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @ufshpb_rsp_upiu._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1322, i32 3}
!25 = !{ptr @ufshpb_rsp_upiu._entry.15, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ufshpb_rsp_upiu._entry_ptr.17, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1338, i32 3}
!29 = !{ptr @ufshpb_rsp_upiu._entry.18, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ufshpb_rsp_upiu._entry_ptr.20, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1742, i32 10}
!33 = !{ptr @ufs_sysfs_hpb_stat_group, !34, !"ufs_sysfs_hpb_stat_group", i1 false, i1 false}
!34 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1741, i32 24}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2029, i32 10}
!37 = !{ptr @ufs_sysfs_hpb_param_group, !38, !"ufs_sysfs_hpb_param_group", i1 false, i1 false}
!38 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2028, i32 24}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2560, i32 3}
!41 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ufshpb_get_geo_info._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @ufshpb_get_geo_info._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2572, i32 3}
!46 = !{ptr @ufshpb_get_geo_info._entry.25, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ufshpb_get_geo_info._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2589, i32 3}
!50 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ufshpb_get_dev_info._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ufshpb_get_dev_info._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @__param_ufshpb_host_map_kbytes, !54, !"__param_ufshpb_host_map_kbytes", i1 false, i1 false}
!54 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2650, i32 1}
!55 = !{ptr @__UNIQUE_ID_ufshpb_host_map_kbytestype335, !54, !"__UNIQUE_ID_ufshpb_host_map_kbytestype335", i1 false, i1 false}
!56 = !{ptr @__UNIQUE_ID_ufshpb_host_map_kbytes336, !57, !"__UNIQUE_ID_ufshpb_host_map_kbytes336", i1 false, i1 false}
!57 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2651, i32 1}
!58 = !{ptr @ufshpb_mctx_cache, !59, !"ufshpb_mctx_cache", i1 false, i1 false}
!59 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 25, i32 27}
!60 = !{ptr @ufshpb_mctx_pool, !61, !"ufshpb_mctx_pool", i1 false, i1 false}
!61 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 26, i32 19}
!62 = !{ptr @ufshpb_page_pool, !63, !"ufshpb_page_pool", i1 false, i1 false}
!63 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 27, i32 19}
!64 = !{ptr @tot_active_srgn_pages, !65, !"tot_active_srgn_pages", i1 false, i1 false}
!65 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 30, i32 12}
!66 = !{ptr @ufshpb_wq, !67, !"ufshpb_wq", i1 false, i1 false}
!67 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 32, i32 33}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 206, i32 4}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @ufshpb_iterate_rgn.__UNIQUE_ID_ddebug322, !69, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 250, i32 3}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ufshpb_test_ppn_dirty._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @ufshpb_test_ppn_dirty._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 301, i32 3}
!80 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ufshpb_fill_ppn_from_page._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @ufshpb_fill_ppn_from_page._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 138, i32 3}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ufshpb_is_hpb_rsp_valid._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ufshpb_is_hpb_rsp_valid._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1181, i32 3}
!90 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ufshpb_rsp_req_region_update.__UNIQUE_ID_ddebug326, !89, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1207, i32 3}
!94 = !{ptr @ufshpb_rsp_req_region_update.__UNIQUE_ID_ddebug327, !93, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1229, i32 2}
!97 = !{ptr @ufshpb_rsp_req_region_update.__UNIQUE_ID_ddebug328, !96, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!98 = !{ptr @hpb_dev_stat_attrs, !99, !"hpb_dev_stat_attrs", i1 false, i1 false}
!99 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1730, i32 26}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1722, i32 1}
!102 = !{ptr @dev_attr_hit_cnt, !101, !"dev_attr_hit_cnt", i1 false, i1 false}
!103 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1723, i32 1}
!106 = !{ptr @dev_attr_miss_cnt, !105, !"dev_attr_miss_cnt", i1 false, i1 false}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1724, i32 1}
!109 = !{ptr @dev_attr_rb_noti_cnt, !108, !"dev_attr_rb_noti_cnt", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1725, i32 1}
!112 = !{ptr @dev_attr_rb_active_cnt, !111, !"dev_attr_rb_active_cnt", i1 false, i1 false}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1726, i32 1}
!115 = !{ptr @dev_attr_rb_inactive_cnt, !114, !"dev_attr_rb_inactive_cnt", i1 false, i1 false}
!116 = !{ptr @.str.49, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1727, i32 1}
!118 = !{ptr @dev_attr_map_req_cnt, !117, !"dev_attr_map_req_cnt", i1 false, i1 false}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1728, i32 1}
!121 = !{ptr @dev_attr_umap_req_cnt, !120, !"dev_attr_umap_req_cnt", i1 false, i1 false}
!122 = !{ptr @hpb_dev_param_attrs, !123, !"hpb_dev_param_attrs", i1 false, i1 false}
!123 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2015, i32 26}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1782, i32 8}
!126 = !{ptr @dev_attr_requeue_timeout_ms, !125, !"dev_attr_requeue_timeout_ms", i1 false, i1 false}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1760, i32 1}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1809, i32 8}
!131 = !{ptr @dev_attr_activation_thld, !130, !"dev_attr_activation_thld", i1 false, i1 false}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1836, i32 8}
!134 = !{ptr @dev_attr_normalization_factor, !133, !"dev_attr_normalization_factor", i1 false, i1 false}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1863, i32 8}
!137 = !{ptr @dev_attr_eviction_thld_enter, !136, !"dev_attr_eviction_thld_enter", i1 false, i1 false}
!138 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1890, i32 8}
!140 = !{ptr @dev_attr_eviction_thld_exit, !139, !"dev_attr_eviction_thld_exit", i1 false, i1 false}
!141 = !{ptr @.str.57, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1918, i32 8}
!143 = !{ptr @dev_attr_read_timeout_ms, !142, !"dev_attr_read_timeout_ms", i1 false, i1 false}
!144 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1945, i32 8}
!146 = !{ptr @dev_attr_read_timeout_expiries, !145, !"dev_attr_read_timeout_expiries", i1 false, i1 false}
!147 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1974, i32 8}
!149 = !{ptr @dev_attr_timeout_polling_interval_ms, !148, !"dev_attr_timeout_polling_interval_ms", i1 false, i1 false}
!150 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2001, i32 8}
!152 = !{ptr @dev_attr_inflight_map_req, !151, !"dev_attr_inflight_map_req", i1 false, i1 false}
!153 = !{ptr @.str.61, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2378, i32 3}
!155 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @ufshpb_get_lu_info._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @ufshpb_get_lu_info._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.64, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2391, i32 3}
!160 = !{ptr @ufshpb_get_lu_info._entry.63, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @ufshpb_get_lu_info._entry_ptr.65, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.66, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2203, i32 3}
!164 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @ufshpb_alloc_hpb_lu._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @ufshpb_alloc_hpb_lu._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @ufshpb_lu_hpb_init.__key, !168, !"__key", i1 false, i1 false}
!168 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2116, i32 2}
!169 = !{ptr @.str.68, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @ufshpb_lu_hpb_init.__key.69, !171, !"__key", i1 false, i1 false}
!171 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2117, i32 2}
!172 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @ufshpb_lu_hpb_init.__key.71, !174, !"__key", i1 false, i1 false}
!174 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2118, i32 2}
!175 = !{ptr @.str.72, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @ufshpb_lu_hpb_init.__key.73, !177, !"__key", i1 false, i1 false}
!177 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2125, i32 2}
!178 = !{ptr @.str.74, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @ufshpb_lu_hpb_init.__key.75, !180, !"__key", i1 false, i1 false}
!180 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2127, i32 3}
!181 = !{ptr @.str.76, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @ufshpb_lu_hpb_init.__key.77, !183, !"__key", i1 false, i1 false}
!183 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2129, i32 3}
!184 = !{ptr @.str.78, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @ufshpb_lu_hpb_init.__key.79, !183, !"__key", i1 false, i1 false}
!186 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.81, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2133, i32 41}
!189 = !{ptr @.str.82, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2136, i32 3}
!191 = !{ptr @.str.83, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @ufshpb_lu_hpb_init._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @ufshpb_lu_hpb_init._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.84, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2141, i32 40}
!196 = !{ptr @.str.86, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2145, i32 3}
!198 = !{ptr @ufshpb_lu_hpb_init._entry.85, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @ufshpb_lu_hpb_init._entry_ptr.87, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2153, i32 3}
!202 = !{ptr @ufshpb_lu_hpb_init._entry.88, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @ufshpb_lu_hpb_init._entry_ptr.90, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.91, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1486, i32 3}
!206 = !{ptr @.str.92, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @ufshpb_map_work_handler._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @ufshpb_map_work_handler._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.93, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 965, i32 3}
!211 = !{ptr @.str.94, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @ufshpb_evict_region._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @ufshpb_evict_region._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.95, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 950, i32 2}
!216 = !{ptr @.str.96, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @__ufshpb_evict_region.__UNIQUE_ID_ddebug323, !215, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!218 = !{ptr @.str.97, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1401, i32 4}
!220 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @ufshpb_run_active_subregion_list._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @ufshpb_run_active_subregion_list._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.100, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1412, i32 2}
!225 = !{ptr @ufshpb_run_active_subregion_list._entry.99, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @ufshpb_run_active_subregion_list._entry_ptr.101, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.102, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1110, i32 5}
!229 = !{ptr @.str.103, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @ufshpb_add_region._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @ufshpb_add_region._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.104, !228, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.105, !228, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.106, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1117, i32 4}
!236 = !{ptr @ufshpb_add_region.__UNIQUE_ID_ddebug324, !235, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!237 = !{ptr @.str.107, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 873, i32 4}
!239 = !{ptr @.str.108, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @ufshpb_victim_lru_info._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @ufshpb_victim_lru_info._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.109, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1006, i32 3}
!244 = !{ptr @ufshpb_issue_map_req._entry, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @ufshpb_issue_map_req._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.111, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1037, i32 4}
!248 = !{ptr @ufshpb_issue_map_req._entry.110, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @ufshpb_issue_map_req._entry_ptr.112, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.114, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1052, i32 3}
!252 = !{ptr @ufshpb_issue_map_req._entry.113, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @ufshpb_issue_map_req._entry_ptr.115, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.116, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 486, i32 3}
!256 = !{ptr @.str.117, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.118, !255, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @ufshpb_get_map_req._entry, !255, !"_entry", i1 false, i1 false}
!259 = !{ptr @ufshpb_get_map_req._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.119, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 699, i32 4}
!262 = !{ptr @.str.120, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @ufshpb_execute_map_req._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @ufshpb_execute_map_req._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.121, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 535, i32 3}
!267 = !{ptr @ufshpb_clear_dirty_bitmap._entry, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @ufshpb_clear_dirty_bitmap._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.122, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 598, i32 3}
!271 = !{ptr @ufshpb_activate_subregion._entry, !270, !"_entry", i1 false, i1 false}
!272 = !{ptr @ufshpb_activate_subregion._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.124, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 608, i32 3}
!275 = !{ptr @ufshpb_activate_subregion._entry.123, !274, !"_entry", i1 false, i1 false}
!276 = !{ptr @ufshpb_activate_subregion._entry_ptr.125, !274, !"_entry_ptr", i1 false, i1 false}
!277 = distinct !{null, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!279 = !{ptr @ufshpb_alloc_region_tbl.__key, !280, !"__key", i1 false, i1 false}
!280 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1632, i32 3}
!281 = !{ptr @.str.127, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.128, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 1512, i32 4}
!284 = !{ptr @.str.129, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @ufshpb_init_pinned_active_region._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @ufshpb_init_pinned_active_region._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.130, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2464, i32 4}
!289 = !{ptr @.str.131, !288, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @ufshpb_hpb_lu_prepared._entry, !288, !"_entry", i1 false, i1 false}
!291 = !{ptr @ufshpb_hpb_lu_prepared._entry_ptr, !288, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.132, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2254, i32 3}
!294 = !{ptr @.str.133, !293, !"<string literal>", i1 false, i1 false}
!295 = !{ptr @ufshpb_check_hpb_reset_query.__UNIQUE_ID_ddebug332, !293, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!296 = !{ptr @.str.134, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2263, i32 4}
!298 = !{ptr @ufshpb_check_hpb_reset_query._entry, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @ufshpb_check_hpb_reset_query._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.136, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2275, i32 3}
!302 = !{ptr @ufshpb_check_hpb_reset_query._entry.135, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @ufshpb_check_hpb_reset_query._entry_ptr.137, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.138, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2506, i32 40}
!306 = !{ptr @.str.139, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2510, i32 3}
!308 = !{ptr @.str.140, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @ufshpb_init_mem_wq._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @ufshpb_init_mem_wq._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.142, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2515, i32 2}
!313 = !{ptr @ufshpb_init_mem_wq._entry.141, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @ufshpb_init_mem_wq._entry_ptr.143, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.145, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2521, i32 3}
!317 = !{ptr @ufshpb_init_mem_wq._entry.144, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @ufshpb_init_mem_wq._entry_ptr.146, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.148, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2528, i32 3}
!321 = !{ptr @ufshpb_init_mem_wq._entry.147, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @ufshpb_init_mem_wq._entry_ptr.149, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.150, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2533, i32 30}
!325 = !{ptr @.str.152, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 2536, i32 3}
!327 = !{ptr @ufshpb_init_mem_wq._entry.151, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @ufshpb_init_mem_wq._entry_ptr.153, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @__param_str_ufshpb_host_map_kbytes, !54, !"__param_str_ufshpb_host_map_kbytes", i1 false, i1 false}
!330 = !{ptr @ufshpb_host_map_kbytes, !331, !"ufshpb_host_map_kbytes", i1 false, i1 false}
!331 = !{!"../drivers/scsi/ufs/ufshpb.c", i32 29, i32 21}
!332 = !{!"sp"}
!333 = !{i32 1, !"wchar_size", i32 2}
!334 = !{i32 1, !"min_enum_size", i32 4}
!335 = !{i32 8, !"branch-target-enforcement", i32 0}
!336 = !{i32 8, !"sign-return-address", i32 0}
!337 = !{i32 8, !"sign-return-address-all", i32 0}
!338 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!339 = !{i32 7, !"uwtable", i32 1}
!340 = !{i32 7, !"frame-pointer", i32 2}
!341 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!342 = !{i8 0, i8 2}
!343 = !{!"auto-init"}
!344 = !{i32 0, i32 33}
!345 = !{!"branch_weights", i32 1, i32 2000}
!346 = !{!"branch_weights", i32 2000, i32 1}
!347 = !{i64 2149073598, i64 2149073603, i64 2149073616, i64 2149073660, i64 2149073694, i64 2149073715}
!348 = !{i64 2148338036, i64 2148338316, i64 2148338650, i64 2148338984}
!349 = !{i64 2148580088}
!350 = !{i64 2148494797, i64 2148494829, i64 2148494858, i64 2148494892, i64 2148494923, i64 2148494946}
!351 = !{i64 2148580317}
!352 = !{i64 2148494077, i64 2148494103, i64 2148494132, i64 2148494166, i64 2148494197, i64 2148494220}
!353 = !{i64 2148491612, i64 2148491638, i64 2148491667, i64 2148491701, i64 2148491732, i64 2148491755}
