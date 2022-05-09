; ModuleID = '/llk/IR_all_yes/drivers/target/target_core_iblock.c_pt.bc'
source_filename = "../drivers/target/target_core_iblock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_backend_ops = type { [16 x i8], [16 x i8], [4 x i8], ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.sbc_ops = type { ptr, ptr, ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.se_hba = type { i16, i32, i32, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.config_group, %struct.mutex, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iblock_dev = type { %struct.se_device, [512 x i8], i32, %struct.bio_set, ptr, i8, ptr, [68 x i8] }
%struct.se_device = type { i16, i32, i32, i8, i32, i64, i32, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.spinlock, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.semaphore, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.t10_wwn, %struct.t10_alua, %struct.t10_reservation, %struct.se_dev_attrib, %struct.config_group, %struct.config_group, %struct.config_group, %struct.se_dev_stat_grps, [512 x i8], [512 x i8], ptr, %struct.se_lun, i32, i32, %struct.callback_head, i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.t10_wwn = type { [9 x i8], [17 x i8], [5 x i8], [254 x i8], i32, %struct.spinlock, ptr, %struct.config_group, %struct.list_head }
%struct.t10_alua = type { i16, i32, %struct.spinlock, i32, i32, %struct.list_head, %struct.spinlock, ptr, ptr, %struct.config_group, %struct.list_head }
%struct.t10_reservation = type { i32, i32, i32, %struct.spinlock, %struct.spinlock, ptr, %struct.list_head, %struct.list_head }
%struct.se_dev_attrib = type { i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.config_group }
%struct.se_dev_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.se_lun = type { i64, i8, i8, i32, i16, %struct.atomic_t, ptr, %struct.list_head, %struct.spinlock, i32, i32, %struct.atomic_t, %struct.mutex, %struct.list_head, ptr, %struct.spinlock, ptr, %struct.scsi_port_stats, %struct.config_group, %struct.se_port_stat_grps, %struct.completion, %struct.percpu_ref, %struct.list_head, %struct.hlist_node, %struct.callback_head }
%struct.scsi_port_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.se_port_stat_grps = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.percpu_ref = type { i32, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.blk_integrity_profile = type { ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iblock_dev_plug = type { %struct.se_dev_plug, %struct.blk_plug, i32 }
%struct.se_dev_plug = type { ptr }
%struct.blk_plug = type { ptr, ptr, i16, i16, i8, i8, i8, %struct.list_head }
%struct.substring_t = type { ptr, ptr }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.iblock_req = type { %struct.refcount_struct, %struct.atomic_t, [120 x i8] }
%struct.bio_integrity_payload = type { ptr, %struct.bvec_iter, i16, i16, i16, %struct.bvec_iter, %struct.work_struct, ptr, [0 x %struct.bio_vec] }

@iblock_ops = internal constant { %struct.target_backend_ops, [44 x i8] } { %struct.target_backend_ops { [16 x i8] c"iblock\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"IBLOCK\00\00\00\00\00\00\00\00\00\00", [4 x i8] c"4.0\00", ptr null, i8 0, i8 0, ptr @iblock_attach_hba, ptr @iblock_detach_hba, ptr null, ptr @iblock_alloc_device, ptr @iblock_configure_device, ptr @iblock_destroy_device, ptr @iblock_free_device, ptr @iblock_plug_device, ptr @iblock_unplug_device, ptr @iblock_set_configfs_dev_params, ptr @iblock_show_configfs_dev_params, ptr @iblock_parse_cdb, ptr null, ptr @sbc_get_device_type, ptr @iblock_get_blocks, ptr @iblock_get_alignment_offset_lbas, ptr @iblock_get_lbppbe, ptr @iblock_get_io_min, ptr @iblock_get_io_opt, ptr null, ptr @iblock_get_write_cache, ptr null, ptr null, ptr null, ptr @sbc_attrib_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_description289 = internal constant [59 x i8] c"target_core_iblock.description=TCM IBLOCK subsystem plugin\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [46 x i8] c"target_core_iblock.author=nab@Linux-iSCSI.org\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [58 x i8] c"target_core_iblock.file=drivers/target/target_core_iblock\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [31 x i8] c"target_core_iblock.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_target_core_iblock__293_940_iblock_module_init6 = internal global ptr @iblock_module_init, section ".initcall6.init", align 4
@__exitcall_iblock_module_exit = internal global ptr @iblock_module_exit, section ".exitcall.exit", align 4
@sbc_attrib_attrs = external dso_local global [0 x ptr], align 4
@iblock_attach_hba.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"target_core_iblock\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iblock_attach_hba\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/target/target_core_iblock.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"CORE_HBA[%d] - TCM iBlock HBA Driver %s on Generic Target Core Stack %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4.0\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v5.0\00", [27 x i8] zeroinitializer }, align 32
@iblock_alloc_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Unable to allocate struct iblock_dev\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iblock_alloc_device\00", [44 x i8] zeroinitializer }, align 32
@iblock_alloc_device._entry_ptr = internal global ptr @iblock_alloc_device._entry, section ".printk_index", align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@iblock_alloc_device.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IBLOCK: Allocated ib_dev for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iblock_configure_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Missing udev_path= parameters for IBLOCK\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iblock_configure_device\00", [40 x i8] zeroinitializer }, align 32
@iblock_configure_device._entry_ptr = internal global ptr @iblock_configure_device._entry, section ".printk_index", align 4
@iblock_configure_device._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013IBLOCK: Unable to create bioset\0A\00", [61 x i8] zeroinitializer }, align 32
@iblock_configure_device._entry_ptr.13 = internal global ptr @iblock_configure_device._entry.11, section ".printk_index", align 4
@iblock_configure_device.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.14, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"IBLOCK: Claiming struct block_device: %s\0A\00", [54 x i8] zeroinitializer }, align 32
@iblock_configure_device.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.15, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"IBLOCK: BLOCK Discard support available, disabled by default\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"T10-DIF-TYPE3-IP\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"T10-DIF-TYPE1-IP\00", [47 x i8] zeroinitializer }, align 32
@iblock_configure_device._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013IBLOCK export of blk_integrity: %s not supported\0A\00", [44 x i8] zeroinitializer }, align 32
@iblock_configure_device._entry_ptr.20 = internal global ptr @iblock_configure_device._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"T10-DIF-TYPE3-CRC\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"T10-DIF-TYPE1-CRC\00", [46 x i8] zeroinitializer }, align 32
@iblock_configure_device._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.10, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Unable to allocate bioset for PI\0A\00", [60 x i8] zeroinitializer }, align 32
@iblock_configure_device._entry_ptr.25 = internal global ptr @iblock_configure_device._entry.23, section ".printk_index", align 4
@iblock_configure_device.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.26, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"IBLOCK setup BIP bs->bio_integrity_pool: %p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c",\0A\00", [29 x i8] zeroinitializer }, align 32
@tokens = internal global { [4 x %struct.match_token], [32 x i8] } { [4 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.35 }, %struct.match_token { i32 1, ptr @.str.36 }, %struct.match_token { i32 2, ptr @.str.37 }, %struct.match_token { i32 3, ptr null }], [32 x i8] zeroinitializer }, align 32
@iblock_set_configfs_dev_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Unable to set udev_path= while ib_dev->ibd_bd exists\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iblock_set_configfs_dev_params\00", [33 x i8] zeroinitializer }, align 32
@iblock_set_configfs_dev_params._entry_ptr = internal global ptr @iblock_set_configfs_dev_params._entry, section ".printk_index", align 4
@iblock_set_configfs_dev_params.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IBLOCK: Referencing UDEV path: %s\0A\00", [61 x i8] zeroinitializer }, align 32
@iblock_set_configfs_dev_params._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013kstrtoul() failed for readonly=\0A\00", [61 x i8] zeroinitializer }, align 32
@iblock_set_configfs_dev_params._entry_ptr.33 = internal global ptr @iblock_set_configfs_dev_params._entry.31, section ".printk_index", align 4
@iblock_set_configfs_dev_params.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.34, i8 0, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IBLOCK: readonly: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"udev_path=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"readonly=%d\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"force=%d\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iBlock device: %pg\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  UDEV PATH: %s\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  readonly: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"        \00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Major: %d Minor: %d  %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CLAIMED: IBLOCK\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Major: 0 Minor: 0\0A\00", [45 x i8] zeroinitializer }, align 32
@iblock_sbc_ops = internal global { %struct.sbc_ops, [16 x i8] } { %struct.sbc_ops { ptr @iblock_execute_rw, ptr @iblock_execute_sync_cache, ptr @iblock_execute_write_same, ptr @iblock_execute_unmap }, [16 x i8] zeroinitializer }, align 32
@iblock_get_bio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Unable to allocate memory for bio\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iblock_get_bio\00", [17 x i8] zeroinitializer }, align 32
@iblock_get_bio._entry_ptr = internal global ptr @iblock_get_bio._entry, section ".printk_index", align 4
@iblock_bio_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013bio error: %p,  err: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iblock_bio_done\00", [16 x i8] zeroinitializer }, align 32
@iblock_bio_done._entry_ptr = internal global ptr @iblock_bio_done._entry, section ".printk_index", align 4
@iblock_alloc_bip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Unable to locate bio_integrity\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iblock_alloc_bip\00", [47 x i8] zeroinitializer }, align 32
@iblock_alloc_bip._entry_ptr = internal global ptr @iblock_alloc_bip._entry, section ".printk_index", align 4
@iblock_alloc_bip._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Unable to allocate bio_integrity_payload\0A\00", [52 x i8] zeroinitializer }, align 32
@iblock_alloc_bip._entry_ptr.53 = internal global ptr @iblock_alloc_bip._entry.51, section ".printk_index", align 4
@iblock_alloc_bip.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.54, i8 0, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"IBLOCK BIP Size: %u Sector: %llu\0A\00", [62 x i8] zeroinitializer }, align 32
@iblock_alloc_bip._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.50, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013bio_integrity_add_page() failed; %d\0A\00", [57 x i8] zeroinitializer }, align 32
@iblock_alloc_bip._entry_ptr.57 = internal global ptr @iblock_alloc_bip._entry.55, section ".printk_index", align 4
@iblock_alloc_bip.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.58, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Added bio integrity page: %p length: %zu offset: %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@fs_bio_set = external dso_local global %struct.bio_set, align 4
@iblock_end_io_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013IBLOCK: cache flush failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iblock_end_io_flush\00", [44 x i8] zeroinitializer }, align 32
@iblock_end_io_flush._entry_ptr = internal global ptr @iblock_end_io_flush._entry, section ".printk_index", align 4
@iblock_execute_write_same._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013WRITE_SAME: Protection information with IBLOCK backends not supported\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iblock_execute_write_same\00", [38 x i8] zeroinitializer }, align 32
@iblock_execute_write_same._entry_ptr = internal global ptr @iblock_execute_write_same._entry, section ".printk_index", align 4
@iblock_execute_write_same._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013WRITE_SAME: Illegal SGL t_data_nents: %u length: %u block_size: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@iblock_execute_write_same._entry_ptr.65 = internal global ptr @iblock_execute_write_same._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@iblock_execute_unmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013blkdev_issue_discard() failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iblock_execute_unmap\00", [43 x i8] zeroinitializer }, align 32
@iblock_execute_unmap._entry_ptr = internal global ptr @iblock_execute_unmap._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.69 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 7]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 1024, i64 4096]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 2048, i64 4096]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 1024, i64 2048, i64 4096]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"iblock_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 900, i32 40 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 46, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 62, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 71, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 91, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 97, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 101, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 124, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 144, i32 34 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 145, i32 34 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 146, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 152, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 154, i32 41 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 160, i32 5 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 164, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 585, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 563, i32 22 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 593, i32 5 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 603, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 616, i32 5 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 621, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 564, i32 18 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 565, i32 17 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 566, i32 14 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 642, i32 25 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 644, i32 25 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 646, i32 24 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 648, i32 24 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 650, i32 25 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 652, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 654, i32 25 }
@___asan_gen_.214 = private unnamed_addr constant [15 x i8] c"iblock_sbc_ops\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 878, i32 23 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 359, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 333, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 673, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 679, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 688, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 698, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 703, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 391, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 497, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 505, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 44, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.296 = private constant [39 x i8] c"../drivers/target/target_core_iblock.c\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 443, i32 3 }
@llvm.compiler.used = appending global [97 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_iblock_module_exit, ptr @__initcall__kmod_target_core_iblock__293_940_iblock_module_init6, ptr @iblock_alloc_bip._entry, ptr @iblock_alloc_bip._entry.51, ptr @iblock_alloc_bip._entry.55, ptr @iblock_alloc_bip._entry_ptr, ptr @iblock_alloc_bip._entry_ptr.53, ptr @iblock_alloc_bip._entry_ptr.57, ptr @iblock_alloc_device._entry, ptr @iblock_alloc_device._entry_ptr, ptr @iblock_bio_done._entry, ptr @iblock_bio_done._entry_ptr, ptr @iblock_configure_device._entry, ptr @iblock_configure_device._entry.11, ptr @iblock_configure_device._entry.18, ptr @iblock_configure_device._entry.23, ptr @iblock_configure_device._entry_ptr, ptr @iblock_configure_device._entry_ptr.13, ptr @iblock_configure_device._entry_ptr.20, ptr @iblock_configure_device._entry_ptr.25, ptr @iblock_end_io_flush._entry, ptr @iblock_end_io_flush._entry_ptr, ptr @iblock_execute_unmap._entry, ptr @iblock_execute_unmap._entry_ptr, ptr @iblock_execute_write_same._entry, ptr @iblock_execute_write_same._entry.63, ptr @iblock_execute_write_same._entry_ptr, ptr @iblock_execute_write_same._entry_ptr.65, ptr @iblock_get_bio._entry, ptr @iblock_get_bio._entry_ptr, ptr @iblock_module_exit, ptr @iblock_set_configfs_dev_params._entry, ptr @iblock_set_configfs_dev_params._entry.31, ptr @iblock_set_configfs_dev_params._entry_ptr, ptr @iblock_set_configfs_dev_params._entry_ptr.33, ptr @iblock_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @tokens, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @iblock_sbc_ops, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_alloc_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_configure_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_configure_device._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_configure_device._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_configure_device._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_set_configfs_dev_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_set_configfs_dev_params._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_sbc_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_get_bio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_bio_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_alloc_bip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_alloc_bip._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_alloc_bip._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_end_io_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_execute_write_same._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_execute_write_same._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iblock_execute_unmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iblock_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @target_backend_unregister(ptr noundef nonnull @iblock_ops) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_backend_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iblock_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @transport_backend_register(ptr noundef nonnull @iblock_ops) #18
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iblock_attach_hba(ptr nocapture noundef readonly %hba, i32 noundef %host_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iblock_attach_hba.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iblock_attach_hba, %if.then)) #18
          to label %do.end [label %if.then], !srcloc !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %hba_id = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 1
  %0 = ptrtoint ptr %hba_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hba_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iblock_attach_hba.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.3, i32 noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #18
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iblock_detach_hba(ptr nocapture noundef %hba) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iblock_alloc_device(ptr nocapture noundef readnone %hba, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4992) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 32) #18
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !165

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %ibd_plug22 = getelementptr inbounds %struct.iblock_dev, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %ibd_plug22 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ibd_plug22, align 8
  br label %free_dev

if.end7.i.i:                                      ; preds = %if.end
  %5 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #23
  %ibd_plug = getelementptr inbounds %struct.iblock_dev, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %ibd_plug to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %ibd_plug, align 8
  %tobool4.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool4.not, label %if.end7.i.i.free_dev_crit_edge, label %do.body7

if.end7.i.i.free_dev_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_dev

do.body7:                                         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iblock_alloc_device.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iblock_alloc_device, %if.then13)) #18
          to label %cleanup [label %if.then13], !srcloc !164

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iblock_alloc_device.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.8, ptr noundef %name) #18
  br label %cleanup

free_dev:                                         ; preds = %if.end7.i.i.free_dev_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %cleanup

cleanup:                                          ; preds = %free_dev, %if.then13, %do.body7, %do.end
  %retval.0 = phi ptr [ null, %free_dev ], [ null, %do.end ], [ %call7.i.i, %if.then13 ], [ %call7.i.i, %do.body7 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iblock_configure_device(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ibd_flags = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %ibd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ibd_flags, align 16
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #22
  br label %cleanup140

if.end:                                           ; preds = %entry
  %ibd_bio_set = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 3
  %call2 = tail call i32 @bioset_init(ptr noundef %ibd_bio_set, i32 noundef 128, i32 noundef 0, i32 noundef 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body11, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #22
  br label %cleanup140

do.body11:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iblock_configure_device.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iblock_configure_device, %if.then17)) #18
          to label %do.end20 [label %if.then17], !srcloc !164

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #20
  %ibd_udev_path = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iblock_configure_device.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.14, ptr noundef %ibd_udev_path) #18
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.body11
  %ibd_readonly = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %ibd_readonly to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ibd_readonly, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool21.not = icmp eq i8 %3, 0
  br i1 %tobool21.not, label %do.end20.if.end24_crit_edge, label %if.else

do.end20.if.end24_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.else:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #20
  %dev_flags = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %dev_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_flags, align 8
  %or23 = or i32 %5, 32
  store i32 %or23, ptr %dev_flags, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.else, %do.end20.if.end24_crit_edge
  %mode.0 = phi i32 [ 129, %if.else ], [ 131, %do.end20.if.end24_crit_edge ]
  %ibd_udev_path25 = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 1
  %call27 = tail call ptr @blkdev_get_by_path(ptr noundef %ibd_udev_path25, i32 noundef %mode.0, ptr noundef %dev) #18
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %call27 to i32
  br label %out_free_bioset

if.end31:                                         ; preds = %if.end24
  %ibd_bd = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 4
  %7 = ptrtoint ptr %ibd_bd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call27, ptr %ibd_bd, align 16
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %call27, i32 0, i32 18
  %8 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_queue.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end31.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i

if.end31.bdev_logical_block_size.exit_crit_edge:  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 37, i32 9
  %10 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i.i = icmp eq i32 %11, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %11
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i, %if.end31.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %if.end31.bdev_logical_block_size.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %dev_attrib = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39
  %hw_block_size = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 20
  %12 = ptrtoint ptr %hw_block_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval1.0.i.i, ptr %hw_block_size, align 4
  %max_hw_sectors.i = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 37, i32 3
  %13 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_hw_sectors.i, align 4
  %hw_max_sectors = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 22
  %15 = ptrtoint ptr %hw_max_sectors to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %hw_max_sectors, align 4
  %nr_requests = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 21
  %16 = ptrtoint ptr %nr_requests to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_requests, align 8
  %hw_queue_depth = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 24
  %18 = ptrtoint ptr %hw_queue_depth to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %hw_queue_depth, align 4
  %call38 = tail call zeroext i1 @target_configure_unmap_from_queue(ptr noundef %dev_attrib, ptr noundef %9) #18
  br i1 %call38, label %do.body40, label %bdev_logical_block_size.exit.if.end56_crit_edge

bdev_logical_block_size.exit.if.end56_crit_edge:  ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end56

do.body40:                                        ; preds = %bdev_logical_block_size.exit
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iblock_configure_device.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iblock_configure_device, %if.then52)) #18
          to label %if.end56 [label %if.then52], !srcloc !164

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iblock_configure_device.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.15) #18
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %do.body40, %bdev_logical_block_size.exit.if.end56_crit_edge
  %19 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bd_queue.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end56.if.else61_crit_edge, label %bdev_write_zeroes_sectors.exit

if.end56.if.else61_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else61

bdev_write_zeroes_sectors.exit:                   ; preds = %if.end56
  %max_write_zeroes_sectors.i = getelementptr inbounds %struct.request_queue, ptr %20, i32 0, i32 37, i32 16
  %21 = ptrtoint ptr %max_write_zeroes_sectors.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_write_zeroes_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool58.not = icmp eq i32 %22, 0
  br i1 %tobool58.not, label %bdev_write_zeroes_sectors.exit.if.else61_crit_edge, label %bdev_write_zeroes_sectors.exit.if.end64_crit_edge

bdev_write_zeroes_sectors.exit.if.end64_crit_edge: ; preds = %bdev_write_zeroes_sectors.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end64

bdev_write_zeroes_sectors.exit.if.else61_crit_edge: ; preds = %bdev_write_zeroes_sectors.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else61

if.else61:                                        ; preds = %bdev_write_zeroes_sectors.exit.if.else61_crit_edge, %if.end56.if.else61_crit_edge
  br label %if.end64

if.end64:                                         ; preds = %if.else61, %bdev_write_zeroes_sectors.exit.if.end64_crit_edge
  %.sink = phi i32 [ 65535, %if.else61 ], [ %22, %bdev_write_zeroes_sectors.exit.if.end64_crit_edge ]
  %max_write_same_len63 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 30
  %23 = ptrtoint ptr %max_write_same_len63 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %max_write_same_len63, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 11
  %24 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %queue_flags, align 4
  %26 = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool66.not = icmp eq i32 %26, 0
  br i1 %tobool66.not, label %if.end64.if.end69_crit_edge, label %if.then67

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #20
  %is_nonrot = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 17
  %27 = ptrtoint ptr %is_nonrot to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %is_nonrot, align 1
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end64.if.end69_crit_edge
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %call27, i32 0, i32 17
  %28 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bd_disk.i, align 8
  %queue.i.i = getelementptr inbounds %struct.gendisk, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue.i.i, align 4
  %integrity.i.i = getelementptr inbounds %struct.request_queue, ptr %31, i32 0, i32 18
  %32 = ptrtoint ptr %integrity.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %integrity.i.i, align 4
  %tobool.not.i.i195 = icmp eq ptr %33, null
  %tobool71.not205 = icmp eq ptr %integrity.i.i, null
  %tobool71.not = or i1 %tobool.not.i.i195, %tobool71.not205
  br i1 %tobool71.not, label %if.end69.cleanup140_crit_edge, label %if.then72

if.end69.cleanup140_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup140

if.then72:                                        ; preds = %if.end69
  %34 = ptrtoint ptr %integrity.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %integrity.i.i, align 4
  %name = getelementptr inbounds %struct.blk_integrity_profile, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name, align 4
  %call74 = tail call i32 @strcmp(ptr noundef %37, ptr noundef nonnull dereferenceable(17) @.str.16) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then72.do.end83_crit_edge, label %lor.lhs.false

if.then72.do.end83_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end83

lor.lhs.false:                                    ; preds = %if.then72
  %call78 = tail call i32 @strcmp(ptr noundef %37, ptr noundef nonnull dereferenceable(17) @.str.17) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %lor.lhs.false.do.end83_crit_edge, label %if.end88

lor.lhs.false.do.end83_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end83

do.end83:                                         ; preds = %lor.lhs.false.do.end83_crit_edge, %if.then72.do.end83_crit_edge
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %37) #22
  br label %out_blkdev_put

if.end88:                                         ; preds = %lor.lhs.false
  %call91 = tail call i32 @strcmp(ptr noundef %37, ptr noundef nonnull dereferenceable(18) @.str.21) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end88.if.end104.sink.split_crit_edge, label %if.else95

if.end88.if.end104.sink.split_crit_edge:          ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end104.sink.split

if.else95:                                        ; preds = %if.end88
  %call98 = tail call i32 @strcmp(ptr noundef %37, ptr noundef nonnull dereferenceable(18) @.str.22) #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.else95.if.end104.sink.split_crit_edge, label %if.else95.if.end104_crit_edge

if.else95.if.end104_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end104

if.else95.if.end104.sink.split_crit_edge:         ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end104.sink.split

if.end104.sink.split:                             ; preds = %if.else95.if.end104.sink.split_crit_edge, %if.end88.if.end104.sink.split_crit_edge
  %.sink206 = phi i32 [ 3, %if.end88.if.end104.sink.split_crit_edge ], [ 1, %if.else95.if.end104.sink.split_crit_edge ]
  %pi_prot_type102 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 12
  %38 = ptrtoint ptr %pi_prot_type102 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink206, ptr %pi_prot_type102, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.end104.sink.split, %if.else95.if.end104_crit_edge
  %pi_prot_type106 = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 12
  %39 = ptrtoint ptr %pi_prot_type106 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pi_prot_type106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool107.not = icmp eq i32 %40, 0
  br i1 %tobool107.not, label %if.end104.cleanup_crit_edge, label %if.then108

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then108:                                       ; preds = %if.end104
  %call109 = tail call i32 @bioset_integrity_create(ptr noundef %ibd_bio_set, i32 noundef 128) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp = icmp slt i32 %call109, 0
  br i1 %cmp, label %do.end113, label %do.body117

do.end113:                                        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #20
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #22
  br label %out_blkdev_put

do.body117:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iblock_configure_device.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iblock_configure_device, %if.then129)) #18
          to label %cleanup [label %if.then129], !srcloc !164

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #20
  %bio_integrity_pool = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 3, i32 5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iblock_configure_device.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.26, ptr noundef %bio_integrity_pool) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then129, %do.body117, %if.end104.cleanup_crit_edge
  %41 = ptrtoint ptr %pi_prot_type106 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pi_prot_type106, align 4
  %hw_pi_prot_type = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 13
  %43 = ptrtoint ptr %hw_pi_prot_type to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %hw_pi_prot_type, align 8
  br label %cleanup140

out_blkdev_put:                                   ; preds = %do.end113, %do.end83
  %ret.0.ph = phi i32 [ -38, %do.end83 ], [ -12, %do.end113 ]
  %44 = ptrtoint ptr %ibd_bd to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ibd_bd, align 16
  tail call void @blkdev_put(ptr noundef %45, i32 noundef 131) #18
  br label %out_free_bioset

out_free_bioset:                                  ; preds = %out_blkdev_put, %if.then29
  %ret.1 = phi i32 [ %6, %if.then29 ], [ %ret.0.ph, %out_blkdev_put ]
  tail call void @bioset_exit(ptr noundef %ibd_bio_set) #18
  br label %cleanup140

cleanup140:                                       ; preds = %out_free_bioset, %cleanup, %if.end69.cleanup140_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %cleanup ], [ 0, %if.end69.cleanup140_crit_edge ], [ %call2, %do.end7 ], [ %ret.1, %out_free_bioset ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iblock_destroy_device(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ibd_bd = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %ibd_bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibd_bd, align 16
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @blkdev_put(ptr noundef nonnull %1, i32 noundef 131) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ibd_bio_set = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 3
  tail call void @bioset_exit(ptr noundef %ibd_bio_set) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iblock_free_device(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %callback_head = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 50
  tail call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @iblock_dev_call_rcu) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @iblock_plug_device(ptr nocapture noundef readonly %se_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ibd_plug = getelementptr inbounds %struct.iblock_dev, ptr %se_dev, i32 0, i32 6
  %0 = ptrtoint ptr %ibd_plug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibd_plug, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !154) #18
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %flags = getelementptr %struct.iblock_dev_plug, ptr %1, i32 %5, i32 2
  %call2 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx = getelementptr %struct.iblock_dev_plug, ptr %1, i32 %5
  %blk_plug = getelementptr %struct.iblock_dev_plug, ptr %1, i32 %5, i32 1
  tail call void @blk_start_plug(ptr noundef %blk_plug) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iblock_unplug_device(ptr noundef %se_plug) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %blk_plug = getelementptr inbounds %struct.iblock_dev_plug, ptr %se_plug, i32 0, i32 1
  tail call void @blk_finish_plug(ptr noundef %blk_plug) #18
  %flags = getelementptr inbounds %struct.iblock_dev_plug, ptr %se_plug, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iblock_set_configfs_dev_params(ptr noundef %dev, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %opts = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  %tmp_readonly = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opts) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #18
  %0 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_readonly) #18
  %1 = ptrtoint ptr %tmp_readonly to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tmp_readonly, align 4, !annotation !167
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %page, i32 noundef 3264) #18
  %2 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %opts, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %ibd_readonly = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 5
  %ibd_bd = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 4
  %ibd_udev_path = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 1
  %ibd_flags = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 2
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then57, %if.end42, %sw.bb28.while.cond.outer_crit_edge, %do.end27, %if.end10.while.cond.outer_crit_edge, %if.end5.while.cond.outer_crit_edge, %while.cond.preheader
  %ret.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %ret.0.ph, %if.end5.while.cond.outer_crit_edge ], [ %call.i, %if.then57 ], [ %ret.0.ph, %do.end27 ], [ -22, %if.end10.while.cond.outer_crit_edge ], [ -12, %sw.bb28.while.cond.outer_crit_edge ], [ %call.i, %if.end42 ]
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.outer
  %call2 = call ptr @strsep(ptr noundef nonnull %opts, ptr noundef nonnull @.str.27) #18
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %out, label %while.body

while.body:                                       ; preds = %while.cond
  %3 = ptrtoint ptr %call2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call2, align 1
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %while.body.while.cond_crit_edge, label %if.end5

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

if.end5:                                          ; preds = %while.body
  %call6 = call i32 @match_token(ptr noundef nonnull %call2, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #18
  %5 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %if.end5.while.cond.outer_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb28
  ]

if.end5.while.cond.outer_crit_edge:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.outer

sw.bb:                                            ; preds = %if.end5
  %6 = ptrtoint ptr %ibd_bd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ibd_bd, align 16
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %if.end10, label %sw.bb.out.thread_crit_edge

sw.bb.out.thread_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.thread

if.end10:                                         ; preds = %sw.bb
  %call12 = call i32 @match_strlcpy(ptr noundef %ibd_udev_path, ptr noundef nonnull %args, i32 noundef 512) #18
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.end10.while.cond.outer_crit_edge, label %do.body16

if.end10.while.cond.outer_crit_edge:              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.outer

do.body16:                                        ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iblock_set_configfs_dev_params.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iblock_set_configfs_dev_params, %if.then22)) #18
          to label %do.end27 [label %if.then22], !srcloc !164

if.then22:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iblock_set_configfs_dev_params.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.30, ptr noundef %ibd_udev_path) #18
  br label %do.end27

do.end27:                                         ; preds = %if.then22, %do.body16
  %8 = ptrtoint ptr %ibd_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ibd_flags, align 16
  %or = or i32 %9, 1
  store i32 %or, ptr %ibd_flags, align 16
  br label %while.cond.outer

sw.bb28:                                          ; preds = %if.end5
  %call30 = call ptr @match_strdup(ptr noundef nonnull %args) #18
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %sw.bb28.while.cond.outer_crit_edge, label %if.end33

sw.bb28.while.cond.outer_crit_edge:               ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.outer

if.end33:                                         ; preds = %sw.bb28
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %call30, i32 noundef 0, ptr noundef nonnull %tmp_readonly) #18
  call void @kfree(ptr noundef nonnull %call30) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp35 = icmp slt i32 %call.i, 0
  br i1 %cmp35, label %if.end33.out.thread_crit_edge, label %if.end42

if.end33.out.thread_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #20
  br label %out.thread

if.end42:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %tmp_readonly to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tmp_readonly, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool43 = icmp ne i32 %11, 0
  %frombool44 = zext i1 %tobool43 to i8
  %12 = ptrtoint ptr %ibd_readonly to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool44, ptr %ibd_readonly, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iblock_set_configfs_dev_params.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iblock_set_configfs_dev_params, %if.then57)) #18
          to label %while.cond.outer [label %if.then57], !srcloc !164

if.then57:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  %13 = ptrtoint ptr %ibd_readonly to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ibd_readonly, align 4, !range !166
  %15 = zext i8 %14 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iblock_set_configfs_dev_params.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.34, i32 noundef %15) #18
  br label %while.cond.outer

out.thread:                                       ; preds = %if.end33.out.thread_crit_edge, %sw.bb.out.thread_crit_edge
  %.str.32.sink = phi ptr [ @.str.28, %sw.bb.out.thread_crit_edge ], [ @.str.32, %if.end33.out.thread_crit_edge ]
  %ret.2.ph = phi i32 [ -17, %sw.bb.out.thread_crit_edge ], [ %call.i, %if.end33.out.thread_crit_edge ]
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.32.sink) #22
  call void @kfree(ptr noundef nonnull %call1) #18
  br label %cleanup

out:                                              ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  call void @kfree(ptr noundef nonnull %call1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.ph)
  %tobool63.not = icmp eq i32 %ret.0.ph, 0
  %spec.select = select i1 %tobool63.not, i32 %count, i32 %ret.0.ph
  br label %cleanup

cleanup:                                          ; preds = %out, %out.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %ret.2.ph, %out.thread ], [ %spec.select, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_readonly) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opts) #18
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iblock_show_configfs_dev_params(ptr noundef %dev, ptr nocapture noundef writeonly %b) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ibd_bd = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %ibd_bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibd_bd, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %b, ptr noundef nonnull @.str.38, ptr noundef nonnull %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bl.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %ibd_flags = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %ibd_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ibd_flags, align 16
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr4 = getelementptr i8, ptr %b, i32 %bl.0
  %ibd_udev_path = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 1
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr4, ptr noundef nonnull @.str.39, ptr noundef %ibd_udev_path)
  %add6 = add i32 %call5, %bl.0
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  %bl.1 = phi i32 [ %add6, %if.then3 ], [ %bl.0, %if.end.if.end7_crit_edge ]
  %add.ptr8 = getelementptr i8, ptr %b, i32 %bl.1
  %ibd_readonly = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %ibd_readonly to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ibd_readonly, align 4, !range !166
  %6 = zext i8 %5 to i32
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr8, ptr noundef nonnull @.str.40, i32 noundef %6)
  %add11 = add i32 %call10, %bl.1
  %add.ptr12 = getelementptr i8, ptr %b, i32 %add11
  %7 = call ptr @memcpy(ptr %add.ptr12, ptr @.str.41, i32 9)
  %add14 = add i32 %add11, 8
  %add.ptr22 = getelementptr i8, ptr %b, i32 %add14
  br i1 %tobool.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %bd_dev = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %bd_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bd_dev, align 4
  %shr = lshr i32 %9, 20
  %and19 = and i32 %9, 1048575
  %call20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr22, ptr noundef nonnull @.str.42, i32 noundef %shr, i32 noundef %and19, ptr noundef nonnull @.str.43)
  %add21 = add i32 %call20, %add14
  br label %if.end25

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %10 = call ptr @memcpy(ptr %add.ptr22, ptr @.str.44, i32 19)
  %add24 = add i32 %add11, 26
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then16
  %bl.2 = phi i32 [ %add21, %if.then16 ], [ %add24, %if.else ]
  ret i32 %bl.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iblock_parse_cdb(ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sbc_parse_cdb(ptr noundef %cmd, ptr noundef nonnull @iblock_sbc_ops) #18
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbc_get_device_type(ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i64 @iblock_get_blocks(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ibd_bd = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %ibd_bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibd_bd, align 16
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_queue.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %entry.bdev_logical_block_size.exit.i_crit_edge, label %land.lhs.true.i.i.i

entry.bdev_logical_block_size.exit.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %bdev_logical_block_size.exit.i

land.lhs.true.i.i.i:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %logical_block_size.i.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 9
  %4 = ptrtoint ptr %logical_block_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %logical_block_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i.i.i = icmp eq i32 %5, 0
  %spec.select.i.i.i = select i1 %tobool2.not.i.i.i, i32 512, i32 %5
  br label %bdev_logical_block_size.exit.i

bdev_logical_block_size.exit.i:                   ; preds = %land.lhs.true.i.i.i, %entry.bdev_logical_block_size.exit.i_crit_edge
  %retval1.0.i.i.i = phi i32 [ 512, %entry.bdev_logical_block_size.exit.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true.i.i.i ]
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %shl.i.i = shl i64 %7, 9
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl.i.i)
  %cmp164.i.i.i = icmp ult i64 %shl.i.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !168

if.then168.i.i.i:                                 ; preds = %bdev_logical_block_size.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv169.i.i.i = trunc i64 %shl.i.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %retval1.0.i.i.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %bdev_logical_block_size.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %8 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %retval1.0.i.i.i, i64 %shl.i.i) #25, !srcloc !169
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %8, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %sub.i = add i64 %dividend.addr.0.i.i.i, -1
  %block_size3.i = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 21
  %9 = ptrtoint ptr %block_size3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %block_size3.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval1.0.i.i.i, i32 %10)
  %cmp.i = icmp eq i32 %retval1.0.i.i.i, %10
  br i1 %cmp.i, label %div_u64.exit.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge, label %if.end.i

div_u64.exit.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge: ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %iblock_emulate_read_cap_with_block_size.exit

if.end.i:                                         ; preds = %div_u64.exit.i
  %11 = add i32 %retval1.0.i.i.i, -512
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 23) #18
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %12, label %if.end.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge [
    i32 7, label %sw.bb.i
    i32 3, label %sw.bb11.i
    i32 1, label %sw.bb21.i
    i32 0, label %sw.bb32.i
  ]

if.end.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %iblock_emulate_read_cap_with_block_size.exit

sw.bb.i:                                          ; preds = %if.end.i
  %14 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %10, label %sw.bb.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge [
    i32 2048, label %sw.bb6.i
    i32 1024, label %sw.bb7.i
    i32 512, label %sw.bb9.i
  ]

sw.bb.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %iblock_emulate_read_cap_with_block_size.exit

sw.bb6.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  %shl.i = shl i64 %sub.i, 1
  br label %iblock_emulate_read_cap_with_block_size.exit

sw.bb7.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  %shl8.i = shl i64 %sub.i, 2
  br label %iblock_emulate_read_cap_with_block_size.exit

sw.bb9.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #20
  %shl10.i = shl i64 %sub.i, 3
  br label %iblock_emulate_read_cap_with_block_size.exit

sw.bb11.i:                                        ; preds = %if.end.i
  %15 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %10, label %sw.bb11.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge [
    i32 4096, label %sw.bb14.i
    i32 1024, label %sw.bb15.i
    i32 512, label %sw.bb17.i
  ]

sw.bb11.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge: ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %iblock_emulate_read_cap_with_block_size.exit

sw.bb14.i:                                        ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #20
  %shr.i = lshr i64 %sub.i, 1
  br label %iblock_emulate_read_cap_with_block_size.exit

sw.bb15.i:                                        ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #20
  %shl16.i = shl i64 %sub.i, 1
  br label %iblock_emulate_read_cap_with_block_size.exit

sw.bb17.i:                                        ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #20
  %shl18.i = shl i64 %sub.i, 2
  br label %iblock_emulate_read_cap_with_block_size.exit

sw.bb21.i:                                        ; preds = %if.end.i
  %16 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %10, label %sw.bb21.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge [
    i32 4096, label %sw.bb24.i
    i32 2048, label %sw.bb26.i
    i32 512, label %sw.bb28.i
  ]

sw.bb21.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge: ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %iblock_emulate_read_cap_with_block_size.exit

sw.bb24.i:                                        ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #20
  %shr25.i = lshr i64 %sub.i, 2
  br label %iblock_emulate_read_cap_with_block_size.exit

sw.bb26.i:                                        ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #20
  %shr27.i = lshr i64 %sub.i, 1
  br label %iblock_emulate_read_cap_with_block_size.exit

sw.bb28.i:                                        ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #20
  %shl29.i = shl i64 %sub.i, 1
  br label %iblock_emulate_read_cap_with_block_size.exit

sw.bb32.i:                                        ; preds = %if.end.i
  %17 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %10, label %sw.bb32.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge [
    i32 4096, label %sw.bb35.i
    i32 2048, label %sw.bb37.i
    i32 1024, label %sw.bb39.i
  ]

sw.bb32.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge: ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %iblock_emulate_read_cap_with_block_size.exit

sw.bb35.i:                                        ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #20
  %shr36.i = lshr i64 %sub.i, 3
  br label %iblock_emulate_read_cap_with_block_size.exit

sw.bb37.i:                                        ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #20
  %shr38.i = lshr i64 %sub.i, 2
  br label %iblock_emulate_read_cap_with_block_size.exit

sw.bb39.i:                                        ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #20
  %shr40.i = lshr i64 %sub.i, 1
  br label %iblock_emulate_read_cap_with_block_size.exit

iblock_emulate_read_cap_with_block_size.exit:     ; preds = %sw.bb39.i, %sw.bb37.i, %sw.bb35.i, %sw.bb32.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge, %sw.bb28.i, %sw.bb26.i, %sw.bb24.i, %sw.bb21.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge, %sw.bb17.i, %sw.bb15.i, %sw.bb14.i, %sw.bb11.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge, %sw.bb9.i, %sw.bb7.i, %sw.bb6.i, %sw.bb.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge, %if.end.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge, %div_u64.exit.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge
  %retval.0.i = phi i64 [ %sub.i, %div_u64.exit.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge ], [ %sub.i, %if.end.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge ], [ %sub.i, %sw.bb32.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge ], [ %shr40.i, %sw.bb39.i ], [ %shr38.i, %sw.bb37.i ], [ %shr36.i, %sw.bb35.i ], [ %sub.i, %sw.bb21.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge ], [ %shl29.i, %sw.bb28.i ], [ %shr27.i, %sw.bb26.i ], [ %shr25.i, %sw.bb24.i ], [ %sub.i, %sw.bb11.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge ], [ %shl18.i, %sw.bb17.i ], [ %shl16.i, %sw.bb15.i ], [ %shr.i, %sw.bb14.i ], [ %sub.i, %sw.bb.i.iblock_emulate_read_cap_with_block_size.exit_crit_edge ], [ %shl10.i, %sw.bb9.i ], [ %shl8.i, %sw.bb7.i ], [ %shl.i, %sw.bb6.i ]
  ret i64 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i64 @iblock_get_alignment_offset_lbas(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ibd_bd = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %ibd_bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibd_bd, align 16
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_queue.i.i, align 4
  %misaligned.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 24
  %4 = ptrtoint ptr %misaligned.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %misaligned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %bd_partno.i.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %bd_partno.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bd_partno.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.not.i = icmp eq i8 %7, 0
  br i1 %tobool.i.not.i, label %bdev_alignment_offset.exit, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %1, align 8
  %physical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 8
  %10 = ptrtoint ptr %physical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %physical_block_size.i.i, align 4
  %io_min.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 11
  %12 = ptrtoint ptr %io_min.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %io_min.i.i, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %11, i32 %13) #18
  %shr.i.i = lshr i32 %14, 9
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %9)
  %cmp171.i.i = icmp ult i64 %9, 4294967296
  br i1 %cmp171.i.i, label %if.then175.i.i, label %if.else181.i.i, !prof !168

if.then175.i.i:                                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv176.i.i = trunc i64 %9 to i32
  %rem177.i.i = urem i32 %conv176.i.i, %shr.i.i
  br label %bdev_alignment_offset.exit.thread12

if.else181.i.i:                                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #20
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shr.i.i, i64 %9) #25, !srcloc !169
  %asmresult.i281.i.i = extractvalue { i64, i64 } %15, 0
  %shr.i.i.i = lshr i64 %asmresult.i281.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %bdev_alignment_offset.exit.thread12

bdev_alignment_offset.exit.thread12:              ; preds = %if.else181.i.i, %if.then175.i.i
  %__rem.0.i.i = phi i32 [ %rem177.i.i, %if.then175.i.i ], [ %conv.i.i.i, %if.else181.i.i ]
  %shl187.neg.i.i = mul i32 %__rem.0.i.i, -512
  %alignment_offset.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 10
  %16 = ptrtoint ptr %alignment_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alignment_offset.i.i, align 4
  %add188.i.i = add i32 %17, %14
  %sub189.i.i = add i32 %add188.i.i, %shl187.neg.i.i
  %rem190.i.i = urem i32 %sub189.i.i, %14
  br label %if.end

bdev_alignment_offset.exit:                       ; preds = %if.end.i
  %alignment_offset.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 10
  %18 = ptrtoint ptr %alignment_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %alignment_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp = icmp eq i32 %19, -1
  br i1 %cmp, label %bdev_alignment_offset.exit.cleanup_crit_edge, label %bdev_alignment_offset.exit.if.end_crit_edge

bdev_alignment_offset.exit.if.end_crit_edge:      ; preds = %bdev_alignment_offset.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

bdev_alignment_offset.exit.cleanup_crit_edge:     ; preds = %bdev_alignment_offset.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %bdev_alignment_offset.exit.if.end_crit_edge, %bdev_alignment_offset.exit.thread12
  %retval.0.i15 = phi i32 [ %rem190.i.i, %bdev_alignment_offset.exit.thread12 ], [ %19, %bdev_alignment_offset.exit.if.end_crit_edge ]
  %tobool.not.i.i8 = icmp eq ptr %3, null
  br i1 %tobool.not.i.i8, label %if.end.bdev_logical_block_size.exit_crit_edge, label %land.lhs.true.i.i9

if.end.bdev_logical_block_size.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %bdev_logical_block_size.exit

land.lhs.true.i.i9:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 9
  %20 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool2.not.i.i = icmp eq i32 %21, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %21
  br label %bdev_logical_block_size.exit

bdev_logical_block_size.exit:                     ; preds = %land.lhs.true.i.i9, %if.end.bdev_logical_block_size.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %if.end.bdev_logical_block_size.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i9 ]
  %div = udiv i32 %retval.0.i15, %retval1.0.i.i
  %conv = zext i32 %div to i64
  br label %cleanup

cleanup:                                          ; preds = %bdev_logical_block_size.exit, %bdev_alignment_offset.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv, %bdev_logical_block_size.exit ], [ 0, %bdev_alignment_offset.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iblock_get_lbppbe(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ibd_bd = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %ibd_bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibd_bd, align 16
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_queue.i.i, align 4
  %physical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 8
  %4 = ptrtoint ptr %physical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %physical_block_size.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %entry.cond.end6_crit_edge, label %land.lhs.true.i.i

entry.cond.end6_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end6

land.lhs.true.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 9
  %6 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i.i = icmp eq i32 %7, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %7
  br label %cond.end6

cond.end6:                                        ; preds = %land.lhs.true.i.i, %entry.cond.end6_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %entry.cond.end6_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval1.0.i.i, i32 %5)
  %tobool.not.i.i13 = icmp ugt i32 %retval1.0.i.i, %5
  %div = udiv i32 %5, %retval1.0.i.i
  %8 = tail call i32 @llvm.ctlz.i32(i32 %div, i1 true) #18, !range !170
  %sub.i.op.i = xor i32 %8, 31
  %sub.i = select i1 %tobool.not.i.i13, i32 -1, i32 %sub.i.op.i
  ret i32 %sub.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iblock_get_io_min(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ibd_bd = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %ibd_bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibd_bd, align 16
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_queue.i.i, align 4
  %io_min.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 11
  %4 = ptrtoint ptr %io_min.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_min.i.i, align 4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iblock_get_io_opt(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ibd_bd = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %ibd_bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibd_bd, align 16
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_queue.i.i, align 4
  %io_opt.i.i = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 37, i32 12
  %4 = ptrtoint ptr %io_opt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %io_opt.i.i, align 4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @iblock_get_write_cache(ptr nocapture noundef readonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ibd_bd = getelementptr inbounds %struct.iblock_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %ibd_bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibd_bd, align 16
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bd_queue.i, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %queue_flags, align 4
  %6 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool = icmp ne i32 %6, 0
  ret i1 %tobool
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @blkdev_get_by_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @target_configure_unmap_from_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bioset_integrity_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blkdev_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bioset_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iblock_dev_call_rcu(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %p, i32 -3776
  %ibd_plug = getelementptr i8, ptr %p, i32 1144
  %0 = ptrtoint ptr %ibd_plug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibd_plug, align 8
  tail call void @kfree(ptr noundef %1) #18
  tail call void @kfree(ptr noundef %add.ptr) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_start_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_finish_plug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @match_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbc_parse_cdb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iblock_execute_rw(ptr noundef %cmd, ptr noundef %sgl, i32 noundef %sgl_nents, i32 noundef %data_direction) #2 align 64 {
entry:
  %plug.i = alloca %struct.blk_plug, align 4
  %list = alloca %struct.bio_list, align 4
  %prot_miter = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %t_task_lba = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %2 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %t_task_lba, align 8
  %call = tail call i64 @target_to_linux_sector(ptr noundef %1, i64 noundef %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #18
  %4 = getelementptr inbounds %struct.bio_list, ptr %list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %prot_miter) #18
  %5 = call ptr @memset(ptr %prot_miter, i32 255, i32 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_direction)
  %cmp = icmp eq i32 %data_direction, 1
  br i1 %cmp, label %if.then, label %entry.if.end18_crit_edge

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.then:                                          ; preds = %entry
  %ibd_bd = getelementptr inbounds %struct.iblock_dev, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %ibd_bd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ibd_bd, align 16
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bd_queue.i, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %queue_flags, align 4
  %12 = and i32 %11, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.then.if.end18_crit_edge, label %if.then4

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.then4:                                         ; preds = %if.then
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 11
  %13 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %se_cmd_flags, align 8
  %and = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else, label %if.then4.if.end18_crit_edge

if.then4.if.end18_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end18

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %queue_flags, align 4
  %17 = and i32 %16, 131072
  %18 = xor i32 %17, 131073
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then4.if.end18_crit_edge, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  %opf.1 = phi i32 [ 1, %if.then.if.end18_crit_edge ], [ 131073, %if.then4.if.end18_crit_edge ], [ %18, %if.else ], [ 0, %entry.if.end18_crit_edge ]
  %miter_dir.0 = phi i32 [ 2, %if.then.if.end18_crit_edge ], [ 2, %if.then4.if.end18_crit_edge ], [ 2, %if.else ], [ 4, %entry.if.end18_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 128) #21
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.end22

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %priv = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 48
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sgl_nents)
  %tobool23.not = icmp eq i32 %sgl_nents, 0
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #18
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %call7.i.i, align 8
  tail call fastcc void @iblock_complete_cmd(ptr noundef %cmd)
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %22 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %se_dev, align 4
  %24 = tail call i32 @llvm.umin.i32(i32 %sgl_nents, i32 256) #18
  %conv.i = trunc i32 %24 to i16
  %ibd_bio_set.i = getelementptr inbounds %struct.iblock_dev, ptr %23, i32 0, i32 3
  %call2.i = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext %conv.i, ptr noundef %ibd_bio_set.i) #18
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %iblock_get_bio.exit.thread, label %if.end.i

iblock_get_bio.exit.thread:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #20
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #22
  br label %fail_free_ibr

if.end.i:                                         ; preds = %if.end25
  %ibd_bd.i = getelementptr inbounds %struct.iblock_dev, ptr %23, i32 0, i32 4
  %25 = ptrtoint ptr %ibd_bd.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ibd_bd.i, align 16
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call2.i, i32 0, i32 3
  %27 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %28, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call2.i, i32 0, i32 1
  %29 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %30, %26
  br i1 %cmp.not.i.i, label %if.end.i.bio_list_add.exit_crit_edge, label %if.then.i.i

if.end.i.bio_list_add.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bio_list_add.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv1.i8.i.i = and i16 %28, -2177
  %31 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.then.i.i, %if.end.i.bio_list_add.exit_crit_edge
  %32 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %26, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %call2.i) #18
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call2.i, i32 0, i32 11
  %33 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %cmd, ptr %bi_private.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call2.i, i32 0, i32 10
  %34 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @iblock_bio_done, ptr %bi_end_io.i, align 8
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call2.i, i32 0, i32 8
  %35 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %call, ptr %bi_iter.i, align 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call2.i, i32 0, i32 2
  %36 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %opf.1, ptr %bi_opf.i, align 8
  %37 = ptrtoint ptr %call2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %call2.i, align 8
  %38 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call2.i, ptr %list, align 4
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call2.i, ptr %4, align 4
  %call.i.i.i149 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #18
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile i32 2, ptr %call7.i.i, align 8
  %prot_type = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 50
  %41 = ptrtoint ptr %prot_type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool31.not = icmp eq i32 %42, 0
  br i1 %tobool31.not, label %bio_list_add.exit.while.cond.preheader.lr.ph_crit_edge, label %land.lhs.true

bio_list_add.exit.while.cond.preheader.lr.ph_crit_edge: ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.preheader.lr.ph

land.lhs.true:                                    ; preds = %bio_list_add.exit
  %pi_prot_type = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 12
  %43 = ptrtoint ptr %pi_prot_type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pi_prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool32.not = icmp eq i32 %44, 0
  br i1 %tobool32.not, label %land.lhs.true.while.cond.preheader.lr.ph_crit_edge, label %if.then33

land.lhs.true.while.cond.preheader.lr.ph_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.preheader.lr.ph

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %t_prot_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 55
  %45 = ptrtoint ptr %t_prot_sg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %t_prot_sg, align 4
  %t_prot_nents = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 56
  %47 = ptrtoint ptr %t_prot_nents to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %t_prot_nents, align 8
  call void @sg_miter_start(ptr noundef nonnull %prot_miter, ptr noundef %46, i32 noundef %48, i32 noundef %miter_dir.0) #18
  br label %while.cond.preheader.lr.ph

while.cond.preheader.lr.ph:                       ; preds = %if.then33, %land.lhs.true.while.cond.preheader.lr.ph_crit_edge, %bio_list_add.exit.while.cond.preheader.lr.ph_crit_edge
  %pi_prot_type46 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 12
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %while.end.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %i.0207 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %inc65, %while.end.while.cond.preheader_crit_edge ]
  %bio_cnt.0206 = phi i32 [ 1, %while.cond.preheader.lr.ph ], [ %bio_cnt.1200, %while.end.while.cond.preheader_crit_edge ]
  %sg_num.0205 = phi i32 [ %sgl_nents, %while.cond.preheader.lr.ph ], [ %dec, %while.end.while.cond.preheader_crit_edge ]
  %sg.0204 = phi ptr [ %sgl, %while.cond.preheader.lr.ph ], [ %call66, %while.end.while.cond.preheader_crit_edge ]
  %bio.0203 = phi ptr [ %call2.i, %while.cond.preheader.lr.ph ], [ %bio.1199, %while.end.while.cond.preheader_crit_edge ]
  %block_lba.0202 = phi i64 [ %call, %while.cond.preheader.lr.ph ], [ %add, %while.end.while.cond.preheader_crit_edge ]
  %49 = ptrtoint ptr %sg.0204 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sg.0204, align 4
  %and.i.i197 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i197)
  %tobool.i.not.i198 = icmp eq i32 %and.i.i197, 0
  br i1 %tobool.i.not.i198, label %sg_page.exit.lr.ph, label %while.cond.preheader.do.body2.i_crit_edge, !prof !168

while.cond.preheader.do.body2.i_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2.i

sg_page.exit.lr.ph:                               ; preds = %while.cond.preheader
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0204, i32 0, i32 2
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.0204, i32 0, i32 1
  %51 = call i32 @llvm.umin.i32(i32 %sg_num.0205, i32 256) #18
  %conv.i152 = trunc i32 %51 to i16
  br label %sg_page.exit

do.body2.i:                                       ; preds = %bio_list_add.exit177.do.body2.i_crit_edge, %while.cond.preheader.do.body2.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #18, !srcloc !171
  unreachable

sg_page.exit:                                     ; preds = %bio_list_add.exit177.sg_page.exit_crit_edge, %sg_page.exit.lr.ph
  %52 = phi i32 [ %50, %sg_page.exit.lr.ph ], [ %100, %bio_list_add.exit177.sg_page.exit_crit_edge ]
  %bio_cnt.1200 = phi i32 [ %bio_cnt.0206, %sg_page.exit.lr.ph ], [ %inc, %bio_list_add.exit177.sg_page.exit_crit_edge ]
  %bio.1199 = phi ptr [ %bio.0203, %sg_page.exit.lr.ph ], [ %call2.i154, %bio_list_add.exit177.sg_page.exit_crit_edge ]
  %and.i = and i32 %52, -4
  %53 = inttoptr i32 %and.i to ptr
  %54 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %length, align 4
  %56 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offset, align 4
  %call38 = call i32 @bio_add_page(ptr noundef %bio.1199, ptr noundef %53, i32 noundef %55, i32 noundef %57) #18
  %58 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call38, i32 %59)
  %cmp40.not = icmp eq i32 %call38, %59
  br i1 %cmp40.not, label %while.end, label %while.body

while.body:                                       ; preds = %sg_page.exit
  %60 = ptrtoint ptr %prot_type to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool43.not = icmp eq i32 %61, 0
  br i1 %tobool43.not, label %while.body.if.end53_crit_edge, label %land.lhs.true44

while.body.if.end53_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53

land.lhs.true44:                                  ; preds = %while.body
  %62 = ptrtoint ptr %pi_prot_type46 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pi_prot_type46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool47.not = icmp eq i32 %63, 0
  br i1 %tobool47.not, label %land.lhs.true44.if.end53_crit_edge, label %if.then48

land.lhs.true44.if.end53_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53

if.then48:                                        ; preds = %land.lhs.true44
  %call49 = call fastcc i32 @iblock_alloc_bip(ptr noundef %cmd, ptr noundef %bio.1199, ptr noundef nonnull %prot_miter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then48.if.end53_crit_edge, label %if.then48.fail_put_bios_crit_edge

if.then48.fail_put_bios_crit_edge:                ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #20
  br label %fail_put_bios

if.then48.if.end53_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53

if.end53:                                         ; preds = %if.then48.if.end53_crit_edge, %land.lhs.true44.if.end53_crit_edge, %while.body.if.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %bio_cnt.1200)
  %cmp54 = icmp ugt i32 %bio_cnt.1200, 31
  br i1 %cmp54, label %if.then56, label %if.end53.if.end57_crit_edge

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end57

if.then56:                                        ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug.i) #18
  %64 = call ptr @memset(ptr %plug.i, i32 255, i32 24)
  call void @blk_start_plug(ptr noundef nonnull %plug.i) #18
  %65 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %list, align 4
  %tobool.not.i1.i = icmp eq ptr %66, null
  br i1 %tobool.not.i1.i, label %if.then56.iblock_submit_bios.exit_crit_edge, label %if.then.i.i150.preheader

if.then56.iblock_submit_bios.exit_crit_edge:      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #20
  br label %iblock_submit_bios.exit

if.then.i.i150.preheader:                         ; preds = %if.then56
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %tobool4.not.i.i195 = icmp eq ptr %68, null
  br i1 %tobool4.not.i.i195, label %if.then.i.i150.preheader.while.body.i.thread_crit_edge, label %if.then.i.i150.preheader.while.body.i_crit_edge

if.then.i.i150.preheader.while.body.i_crit_edge:  ; preds = %if.then.i.i150.preheader
  br label %while.body.i

if.then.i.i150.preheader.while.body.i.thread_crit_edge: ; preds = %if.then.i.i150.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i.thread

while.body.i.thread:                              ; preds = %while.body.i.while.body.i.thread_crit_edge, %if.then.i.i150.preheader.while.body.i.thread_crit_edge
  %.lcssa = phi ptr [ %66, %if.then.i.i150.preheader.while.body.i.thread_crit_edge ], [ %72, %while.body.i.while.body.i.thread_crit_edge ]
  %69 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %list, align 4
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %4, align 4
  %71 = ptrtoint ptr %.lcssa to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %.lcssa, align 8
  call void @submit_bio(ptr noundef nonnull %.lcssa) #18
  br label %iblock_submit_bios.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.i.i150.preheader.while.body.i_crit_edge
  %72 = phi ptr [ %76, %while.body.i.while.body.i_crit_edge ], [ %68, %if.then.i.i150.preheader.while.body.i_crit_edge ]
  %73 = phi ptr [ %72, %while.body.i.while.body.i_crit_edge ], [ %66, %if.then.i.i150.preheader.while.body.i_crit_edge ]
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %73, align 8
  call void @submit_bio(ptr noundef nonnull %73) #18
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %72, align 8
  %tobool4.not.i.i = icmp eq ptr %76, null
  br i1 %tobool4.not.i.i, label %while.body.i.while.body.i.thread_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

while.body.i.while.body.i.thread_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i.thread

iblock_submit_bios.exit:                          ; preds = %while.body.i.thread, %if.then56.iblock_submit_bios.exit_crit_edge
  call void @blk_finish_plug(ptr noundef nonnull %plug.i) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug.i) #18
  br label %if.end57

if.end57:                                         ; preds = %iblock_submit_bios.exit, %if.end53.if.end57_crit_edge
  %bio_cnt.2 = phi i32 [ 0, %iblock_submit_bios.exit ], [ %bio_cnt.1200, %if.end53.if.end57_crit_edge ]
  %77 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %se_dev, align 4
  %ibd_bio_set.i153 = getelementptr inbounds %struct.iblock_dev, ptr %78, i32 0, i32 3
  %call2.i154 = call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext %conv.i152, ptr noundef %ibd_bio_set.i153) #18
  %tobool.not.i155 = icmp eq ptr %call2.i154, null
  br i1 %tobool.not.i155, label %iblock_get_bio.exit171.thread, label %if.end.i163

iblock_get_bio.exit171.thread:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  %call3.i156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #22
  br label %fail_put_bios

if.end.i163:                                      ; preds = %if.end57
  %ibd_bd.i158 = getelementptr inbounds %struct.iblock_dev, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %ibd_bd.i158 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ibd_bd.i158, align 16
  %bi_flags.i.i.i159 = getelementptr inbounds %struct.bio, ptr %call2.i154, i32 0, i32 3
  %81 = ptrtoint ptr %bi_flags.i.i.i159 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %bi_flags.i.i.i159, align 4
  %conv1.i.i.i160 = and i16 %82, -2049
  store i16 %conv1.i.i.i160, ptr %bi_flags.i.i.i159, align 4
  %bi_bdev.i.i161 = getelementptr inbounds %struct.bio, ptr %call2.i154, i32 0, i32 1
  %83 = ptrtoint ptr %bi_bdev.i.i161 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bi_bdev.i.i161, align 4
  %cmp.not.i.i162 = icmp eq ptr %84, %80
  br i1 %cmp.not.i.i162, label %if.end.i163.if.end61_crit_edge, label %if.then.i.i165

if.end.i163.if.end61_crit_edge:                   ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end61

if.then.i.i165:                                   ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #20
  %conv1.i8.i.i164 = and i16 %82, -2177
  %85 = ptrtoint ptr %bi_flags.i.i.i159 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv1.i8.i.i164, ptr %bi_flags.i.i.i159, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then.i.i165, %if.end.i163.if.end61_crit_edge
  %86 = ptrtoint ptr %bi_bdev.i.i161 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %80, ptr %bi_bdev.i.i161, align 4
  call void @bio_associate_blkg(ptr noundef nonnull %call2.i154) #18
  %bi_private.i166 = getelementptr inbounds %struct.bio, ptr %call2.i154, i32 0, i32 11
  %87 = ptrtoint ptr %bi_private.i166 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %cmd, ptr %bi_private.i166, align 4
  %bi_end_io.i167 = getelementptr inbounds %struct.bio, ptr %call2.i154, i32 0, i32 10
  %88 = ptrtoint ptr %bi_end_io.i167 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @iblock_bio_done, ptr %bi_end_io.i167, align 8
  %bi_iter.i168 = getelementptr inbounds %struct.bio, ptr %call2.i154, i32 0, i32 8
  %89 = ptrtoint ptr %bi_iter.i168 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %block_lba.0202, ptr %bi_iter.i168, align 8
  %bi_opf.i169 = getelementptr inbounds %struct.bio, ptr %call2.i154, i32 0, i32 2
  %90 = ptrtoint ptr %bi_opf.i169 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %opf.1, ptr %bi_opf.i169, align 8
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #18
  call void @llvm.prefetch.p0(ptr nonnull %call7.i.i, i32 1, i32 3, i32 1) #18
  %91 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i, ptr nonnull %call7.i.i, i32 1, ptr nonnull elementtype(i32) %call7.i.i) #18, !srcloc !172
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end61.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !165

if.end61.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end61
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %92 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %.not.i.i.i = icmp sgt i32 %92, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !168

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end61.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end61.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i, i32 noundef %.sink.i.i.i) #18
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %93 = ptrtoint ptr %call2.i154 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %call2.i154, align 8
  %94 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %4, align 4
  %tobool.not.i173 = icmp eq ptr %95, null
  br i1 %tobool.not.i173, label %if.else.i175, label %if.then.i174

if.then.i174:                                     ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #20
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call2.i154, ptr %95, align 8
  br label %bio_list_add.exit177

if.else.i175:                                     ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #20
  %97 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call2.i154, ptr %list, align 4
  br label %bio_list_add.exit177

bio_list_add.exit177:                             ; preds = %if.else.i175, %if.then.i174
  %98 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call2.i154, ptr %4, align 4
  %inc = add nuw nsw i32 %bio_cnt.2, 1
  %99 = ptrtoint ptr %sg.0204 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sg.0204, align 4
  %and.i.i = and i32 %100, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %bio_list_add.exit177.sg_page.exit_crit_edge, label %bio_list_add.exit177.do.body2.i_crit_edge, !prof !168

bio_list_add.exit177.do.body2.i_crit_edge:        ; preds = %bio_list_add.exit177
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2.i

bio_list_add.exit177.sg_page.exit_crit_edge:      ; preds = %bio_list_add.exit177
  call void @__sanitizer_cov_trace_pc() #20
  br label %sg_page.exit

while.end:                                        ; preds = %sg_page.exit
  %shr = lshr i32 %call38, 9
  %conv64 = zext i32 %shr to i64
  %add = add i64 %block_lba.0202, %conv64
  %dec = add i32 %sg_num.0205, -1
  %inc65 = add nuw i32 %i.0207, 1
  %call66 = call ptr @sg_next(ptr noundef %sg.0204) #18
  %exitcond.not = icmp eq i32 %inc65, %sgl_nents
  br i1 %exitcond.not, label %for.end, label %while.end.while.cond.preheader_crit_edge

while.end.while.cond.preheader_crit_edge:         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.preheader

for.end:                                          ; preds = %while.end
  %101 = ptrtoint ptr %prot_type to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool68.not = icmp eq i32 %102, 0
  br i1 %tobool68.not, label %for.end.if.end78_crit_edge, label %land.lhs.true69

for.end.if.end78_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end78

land.lhs.true69:                                  ; preds = %for.end
  %pi_prot_type71 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 12
  %103 = ptrtoint ptr %pi_prot_type71 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %pi_prot_type71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool72.not = icmp eq i32 %104, 0
  br i1 %tobool72.not, label %land.lhs.true69.if.end78_crit_edge, label %if.then73

land.lhs.true69.if.end78_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end78

if.then73:                                        ; preds = %land.lhs.true69
  %call74 = call fastcc i32 @iblock_alloc_bip(ptr noundef %cmd, ptr noundef %bio.1199, ptr noundef nonnull %prot_miter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then73.if.end78_crit_edge, label %if.then73.fail_put_bios_crit_edge

if.then73.fail_put_bios_crit_edge:                ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #20
  br label %fail_put_bios

if.then73.if.end78_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end78

if.end78:                                         ; preds = %if.then73.if.end78_crit_edge, %land.lhs.true69.if.end78_crit_edge, %for.end.if.end78_crit_edge
  call fastcc void @iblock_submit_bios(ptr noundef nonnull %list)
  call fastcc void @iblock_complete_cmd(ptr noundef %cmd)
  br label %cleanup

fail_put_bios:                                    ; preds = %if.then73.fail_put_bios_crit_edge, %iblock_get_bio.exit171.thread, %if.then48.fail_put_bios_crit_edge
  %105 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %105)
  %list.promoted = load ptr, ptr %list, align 4
  %106 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %106)
  %.promoted = load ptr, ptr %4, align 4
  %tobool.not.i178211 = icmp eq ptr %list.promoted, null
  br i1 %tobool.not.i178211, label %fail_put_bios.fail_free_ibr.loopexit_crit_edge, label %fail_put_bios.if.then.i179_crit_edge

fail_put_bios.if.then.i179_crit_edge:             ; preds = %fail_put_bios
  br label %if.then.i179

fail_put_bios.fail_free_ibr.loopexit_crit_edge:   ; preds = %fail_put_bios
  call void @__sanitizer_cov_trace_pc() #20
  br label %fail_free_ibr.loopexit

if.then.i179:                                     ; preds = %if.then.i179.if.then.i179_crit_edge, %fail_put_bios.if.then.i179_crit_edge
  %107 = phi ptr [ %109, %if.then.i179.if.then.i179_crit_edge ], [ %list.promoted, %fail_put_bios.if.then.i179_crit_edge ]
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 8
  %tobool4.not.i = icmp eq ptr %109, null
  store ptr null, ptr %107, align 8
  call void @bio_put(ptr noundef nonnull %107) #18
  br i1 %tobool4.not.i, label %if.then.i179.fail_free_ibr.loopexit_crit_edge, label %if.then.i179.if.then.i179_crit_edge

if.then.i179.if.then.i179_crit_edge:              ; preds = %if.then.i179
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i179

if.then.i179.fail_free_ibr.loopexit_crit_edge:    ; preds = %if.then.i179
  call void @__sanitizer_cov_trace_pc() #20
  br label %fail_free_ibr.loopexit

fail_free_ibr.loopexit:                           ; preds = %if.then.i179.fail_free_ibr.loopexit_crit_edge, %fail_put_bios.fail_free_ibr.loopexit_crit_edge
  %.lcssa210 = phi ptr [ %.promoted, %fail_put_bios.fail_free_ibr.loopexit_crit_edge ], [ null, %if.then.i179.fail_free_ibr.loopexit_crit_edge ]
  %110 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %list, align 4
  %111 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %.lcssa210, ptr %4, align 4
  br label %fail_free_ibr

fail_free_ibr:                                    ; preds = %fail_free_ibr.loopexit, %iblock_get_bio.exit.thread
  call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %cleanup

cleanup:                                          ; preds = %fail_free_ibr, %if.end78, %if.then24, %if.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end78 ], [ 0, %if.then24 ], [ 10, %if.end18.cleanup_crit_edge ], [ 10, %fail_free_ibr ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %prot_miter) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iblock_execute_sync_cache(ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %t_task_cdb = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 30
  %2 = ptrtoint ptr %t_task_cdb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %t_task_cdb, align 8
  %arrayidx = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call ptr @bio_alloc_bioset(i32 noundef 3264, i16 noundef zeroext 0, ptr noundef nonnull @fs_bio_set) #18
  %bi_end_io = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 10
  %7 = ptrtoint ptr %bi_end_io to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @iblock_end_io_flush, ptr %bi_end_io, align 8
  %ibd_bd = getelementptr inbounds %struct.iblock_dev, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ibd_bd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ibd_bd, align 16
  %bi_flags.i.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bi_flags.i.i, align 4
  %conv1.i.i = and i16 %11, -2049
  store i16 %conv1.i.i, ptr %bi_flags.i.i, align 4
  %bi_bdev.i = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bi_bdev.i, align 4
  %cmp.not.i = icmp eq ptr %13, %9
  br i1 %cmp.not.i, label %if.end.bio_set_dev.exit_crit_edge, label %if.then.i

if.end.bio_set_dev.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %bio_set_dev.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %conv1.i8.i = and i16 %11, -2177
  %14 = ptrtoint ptr %bi_flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv1.i8.i, ptr %bi_flags.i.i, align 4
  br label %bio_set_dev.exit

bio_set_dev.exit:                                 ; preds = %if.then.i, %if.end.bio_set_dev.exit_crit_edge
  %15 = ptrtoint ptr %bi_bdev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %bi_bdev.i, align 4
  tail call void @bio_associate_blkg(ptr noundef %call.i) #18
  %bi_opf = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %bi_opf to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 262145, ptr %bi_opf, align 8
  br i1 %tobool.not, label %if.then3, label %bio_set_dev.exit.if.end4_crit_edge

bio_set_dev.exit.if.end4_crit_edge:               ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end4

if.then3:                                         ; preds = %bio_set_dev.exit
  call void @__sanitizer_cov_trace_pc() #20
  %bi_private = getelementptr inbounds %struct.bio, ptr %call.i, i32 0, i32 11
  %17 = ptrtoint ptr %bi_private to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cmd, ptr %bi_private, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %bio_set_dev.exit.if.end4_crit_edge
  tail call void @submit_bio(ptr noundef %call.i) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iblock_execute_write_same(ptr noundef %cmd) #2 align 64 {
entry:
  %list = alloca %struct.bio_list, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %ibd_bd = getelementptr inbounds %struct.iblock_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ibd_bd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibd_bd, align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #18
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %list, align 4, !annotation !167
  %5 = getelementptr inbounds %struct.bio_list, ptr %list, i32 0, i32 1
  %t_task_lba = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %6 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %t_task_lba, align 8
  %call2 = tail call i64 @target_to_linux_sector(ptr noundef %1, i64 noundef %7) #18
  %call3 = tail call i64 @sbc_get_write_same_sectors(ptr noundef %cmd) #18
  %call4 = tail call i64 @target_to_linux_sector(ptr noundef %1, i64 noundef %call3) #18
  %prot_op = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 49
  %8 = ptrtoint ptr %prot_op to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prot_op, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %t_data_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 39
  %10 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %t_data_sg, align 4
  %t_data_nents = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 41
  %12 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %t_data_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp ugt i32 %13, 1
  br i1 %cmp, label %if.end.do.end11_crit_edge, label %lor.lhs.false

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end11

lor.lhs.false:                                    ; preds = %if.end
  %length = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  %16 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %se_dev, align 4
  %block_size = getelementptr inbounds %struct.se_device, ptr %17, i32 0, i32 39, i32 21
  %18 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %block_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp7.not = icmp eq i32 %15, %19
  br i1 %cmp7.not, label %if.end19, label %lor.lhs.false.do.end11_crit_edge

lor.lhs.false.do.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end11

do.end11:                                         ; preds = %lor.lhs.false.do.end11_crit_edge, %if.end.do.end11_crit_edge
  %length14 = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 2
  %20 = ptrtoint ptr %length14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length14, align 4
  %22 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %se_dev, align 4
  %block_size17 = getelementptr inbounds %struct.se_device, ptr %23, i32 0, i32 39, i32 21
  %24 = ptrtoint ptr %block_size17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %block_size17, align 8
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %13, i32 noundef %21, i32 noundef %25) #22
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  %bd_queue.i.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 18
  %26 = ptrtoint ptr %bd_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bd_queue.i.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.end19.if.end27_crit_edge, label %bdev_write_zeroes_sectors.exit

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

bdev_write_zeroes_sectors.exit:                   ; preds = %if.end19
  %max_write_zeroes_sectors.i = getelementptr inbounds %struct.request_queue, ptr %27, i32 0, i32 37, i32 16
  %28 = ptrtoint ptr %max_write_zeroes_sectors.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_write_zeroes_sectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool21.not = icmp eq i32 %29, 0
  br i1 %tobool21.not, label %bdev_write_zeroes_sectors.exit.if.end27_crit_edge, label %if.then22

bdev_write_zeroes_sectors.exit.if.end27_crit_edge: ; preds = %bdev_write_zeroes_sectors.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

if.then22:                                        ; preds = %bdev_write_zeroes_sectors.exit
  %30 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %11, align 4
  %and.i.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !168

do.body2.i.i:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #18, !srcloc !171
  unreachable

sg_page.exit.i:                                   ; preds = %if.then22
  %and.i.i = and i32 %31, -4
  %32 = inttoptr i32 %and.i.i to ptr
  tail call void @__might_sleep(ptr noundef nonnull @.str.66, i32 noundef 44) #18
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %shr.i.i.i = lshr i32 %34, 30
  %35 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %shr.i.i.i, label %sg_page.exit.i.if.then.i.i_crit_edge [
    i32 2, label %sg_page.exit.i.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

sg_page.exit.i.if.else.i.i_crit_edge:             ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

sg_page.exit.i.if.then.i.i_crit_edge:             ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %sg_page.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %36 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp2.i.not.i.i = icmp eq i32 %36, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %sg_page.exit.i.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %32) #18
  br label %kmap.exit.i

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %sg_page.exit.i.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %32) #18
  br label %kmap.exit.i

kmap.exit.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %addr.0.i.i = phi ptr [ %call6.i.i, %if.else.i.i ], [ %call5.i.i, %if.then.i.i ]
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 1
  %37 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %addr.0.i.i, i32 %38
  %tobool.not.i100 = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i100, label %kmap.exit.i.if.end27_crit_edge, label %if.end.i

kmap.exit.i.if.end27_crit_edge:                   ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

if.end.i:                                         ; preds = %kmap.exit.i
  %data_length.i = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %39 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_length.i, align 4
  %call2.i = tail call ptr @memchr_inv(ptr noundef nonnull %add.ptr.i, i32 noundef 0, i32 noundef %40) #18
  %41 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %11, align 4
  %and.i.i27.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i27.i)
  %tobool.i.not.i28.i = icmp eq i32 %and.i.i27.i, 0
  br i1 %tobool.i.not.i28.i, label %sg_page.exit31.i, label %do.body2.i29.i, !prof !168

do.body2.i29.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #18, !srcloc !171
  unreachable

sg_page.exit31.i:                                 ; preds = %if.end.i
  %and.i30.i = and i32 %42, -4
  %43 = inttoptr i32 %and.i30.i to ptr
  tail call void @__might_sleep(ptr noundef nonnull @.str.66, i32 noundef 55) #18
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %shr.i.i32.i = lshr i32 %45, 30
  %46 = zext i32 %shr.i.i32.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %shr.i.i32.i, label %sg_page.exit31.i.kunmap.exit.i_crit_edge [
    i32 2, label %sg_page.exit31.i.if.end.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i34.i
  ]

sg_page.exit31.i.if.end.i.i_crit_edge:            ; preds = %sg_page.exit31.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i

sg_page.exit31.i.kunmap.exit.i_crit_edge:         ; preds = %sg_page.exit31.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunmap.exit.i

is_highmem_idx.exit.i34.i:                        ; preds = %sg_page.exit31.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %47 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp2.i.not.i33.i = icmp eq i32 %47, 2
  br i1 %cmp2.i.not.i33.i, label %is_highmem_idx.exit.i34.i.if.end.i.i_crit_edge, label %is_highmem_idx.exit.i34.i.kunmap.exit.i_crit_edge

is_highmem_idx.exit.i34.i.kunmap.exit.i_crit_edge: ; preds = %is_highmem_idx.exit.i34.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %kunmap.exit.i

is_highmem_idx.exit.i34.i.if.end.i.i_crit_edge:   ; preds = %is_highmem_idx.exit.i34.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %is_highmem_idx.exit.i34.i.if.end.i.i_crit_edge, %sg_page.exit31.i.if.end.i.i_crit_edge
  tail call void @kunmap_high(ptr noundef %43) #18
  br label %kunmap.exit.i

kunmap.exit.i:                                    ; preds = %if.end.i.i, %is_highmem_idx.exit.i34.i.kunmap.exit.i_crit_edge, %sg_page.exit31.i.kunmap.exit.i_crit_edge
  %tobool4.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool4.not.i, label %if.end6.i, label %kunmap.exit.i.if.end27_crit_edge

kunmap.exit.i.if.end27_crit_edge:                 ; preds = %kunmap.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

if.end6.i:                                        ; preds = %kunmap.exit.i
  %48 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %t_task_lba, align 8
  %call7.i = tail call i64 @target_to_linux_sector(ptr noundef %17, i64 noundef %49) #18
  %call8.i = tail call i64 @sbc_get_write_same_sectors(ptr noundef %cmd) #18
  %call9.i = tail call i64 @target_to_linux_sector(ptr noundef %17, i64 noundef %call8.i) #18
  %call10.i = tail call i32 @blkdev_issue_zeroout(ptr noundef %3, i64 noundef %call7.i, i64 noundef %call9.i, i32 noundef 3264, i32 noundef 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %iblock_execute_zero_out.exit, label %if.end6.i.if.end27_crit_edge

if.end6.i.if.end27_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

iblock_execute_zero_out.exit:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #18
  br label %cleanup

if.end27:                                         ; preds = %if.end6.i.if.end27_crit_edge, %kunmap.exit.i.if.end27_crit_edge, %kmap.exit.i.if.end27_crit_edge, %bdev_write_zeroes_sectors.exit.if.end27_crit_edge, %if.end19.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 128) #21
  %tobool29.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %priv = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 48
  %51 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i, ptr %priv, align 4
  %52 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %se_dev, align 4
  %ibd_bio_set.i = getelementptr inbounds %struct.iblock_dev, ptr %53, i32 0, i32 3
  %call2.i105 = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 1, ptr noundef %ibd_bio_set.i) #18
  %tobool.not.i106 = icmp eq ptr %call2.i105, null
  br i1 %tobool.not.i106, label %iblock_get_bio.exit.thread, label %if.end.i107

iblock_get_bio.exit.thread:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #20
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #22
  br label %fail_free_ibr

if.end.i107:                                      ; preds = %if.end31
  %ibd_bd.i = getelementptr inbounds %struct.iblock_dev, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %ibd_bd.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ibd_bd.i, align 16
  %bi_flags.i.i.i = getelementptr inbounds %struct.bio, ptr %call2.i105, i32 0, i32 3
  %56 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %bi_flags.i.i.i, align 4
  %conv1.i.i.i = and i16 %57, -2049
  store i16 %conv1.i.i.i, ptr %bi_flags.i.i.i, align 4
  %bi_bdev.i.i = getelementptr inbounds %struct.bio, ptr %call2.i105, i32 0, i32 1
  %58 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bi_bdev.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %59, %55
  br i1 %cmp.not.i.i, label %if.end.i107.bio_list_add.exit_crit_edge, label %if.then.i.i108

if.end.i107.bio_list_add.exit_crit_edge:          ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #20
  br label %bio_list_add.exit

if.then.i.i108:                                   ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #20
  %conv1.i8.i.i = and i16 %57, -2177
  %60 = ptrtoint ptr %bi_flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv1.i8.i.i, ptr %bi_flags.i.i.i, align 4
  br label %bio_list_add.exit

bio_list_add.exit:                                ; preds = %if.then.i.i108, %if.end.i107.bio_list_add.exit_crit_edge
  %61 = ptrtoint ptr %bi_bdev.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %55, ptr %bi_bdev.i.i, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %call2.i105) #18
  %bi_private.i = getelementptr inbounds %struct.bio, ptr %call2.i105, i32 0, i32 11
  %62 = ptrtoint ptr %bi_private.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %cmd, ptr %bi_private.i, align 4
  %bi_end_io.i = getelementptr inbounds %struct.bio, ptr %call2.i105, i32 0, i32 10
  %63 = ptrtoint ptr %bi_end_io.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @iblock_bio_done, ptr %bi_end_io.i, align 8
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %call2.i105, i32 0, i32 8
  %64 = ptrtoint ptr %bi_iter.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %call2, ptr %bi_iter.i, align 8
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %call2.i105, i32 0, i32 2
  %65 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %bi_opf.i, align 8
  %66 = ptrtoint ptr %call2.i105 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %call2.i105, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #18
  %67 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 1, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call4)
  %tobool36.not176 = icmp eq i64 %call4, 0
  br i1 %tobool36.not176, label %bio_list_add.exit.while.end53_crit_edge, label %while.cond37.preheader.lr.ph

bio_list_add.exit.while.end53_crit_edge:          ; preds = %bio_list_add.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end53

while.cond37.preheader.lr.ph:                     ; preds = %bio_list_add.exit
  %offset = getelementptr inbounds %struct.scatterlist, ptr %11, i32 0, i32 1
  br label %while.cond37.preheader

while.cond37.preheader:                           ; preds = %while.end.while.cond37.preheader_crit_edge, %while.cond37.preheader.lr.ph
  %sectors.0181 = phi i64 [ %call4, %while.cond37.preheader.lr.ph ], [ %sub, %while.end.while.cond37.preheader_crit_edge ]
  %block_lba.0180 = phi i64 [ %call2, %while.cond37.preheader.lr.ph ], [ %add, %while.end.while.cond37.preheader_crit_edge ]
  %bio.0179 = phi ptr [ %call2.i105, %while.cond37.preheader.lr.ph ], [ %bio.1162, %while.end.while.cond37.preheader_crit_edge ]
  %.lcssa153167178 = phi ptr [ %call2.i105, %while.cond37.preheader.lr.ph ], [ %71, %while.end.while.cond37.preheader_crit_edge ]
  %call2.i116156.lcssa157172177 = phi ptr [ %call2.i105, %while.cond37.preheader.lr.ph ], [ %call2.i116156161, %while.end.while.cond37.preheader_crit_edge ]
  %68 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %11, align 4
  %and.i.i113159 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i113159)
  %tobool.i.not.i160 = icmp eq i32 %and.i.i113159, 0
  br i1 %tobool.i.not.i160, label %while.cond37.preheader.sg_page.exit_crit_edge, label %while.cond37.preheader.do.body2.i_crit_edge, !prof !168

while.cond37.preheader.do.body2.i_crit_edge:      ; preds = %while.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2.i

while.cond37.preheader.sg_page.exit_crit_edge:    ; preds = %while.cond37.preheader
  br label %sg_page.exit

do.body2.i:                                       ; preds = %bio_list_add.exit139.do.body2.i_crit_edge, %while.cond37.preheader.do.body2.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #18, !srcloc !171
  unreachable

sg_page.exit:                                     ; preds = %bio_list_add.exit139.sg_page.exit_crit_edge, %while.cond37.preheader.sg_page.exit_crit_edge
  %70 = phi i32 [ %100, %bio_list_add.exit139.sg_page.exit_crit_edge ], [ %69, %while.cond37.preheader.sg_page.exit_crit_edge ]
  %bio.1162 = phi ptr [ %call2.i116, %bio_list_add.exit139.sg_page.exit_crit_edge ], [ %bio.0179, %while.cond37.preheader.sg_page.exit_crit_edge ]
  %71 = phi ptr [ %call2.i116, %bio_list_add.exit139.sg_page.exit_crit_edge ], [ %.lcssa153167178, %while.cond37.preheader.sg_page.exit_crit_edge ]
  %call2.i116156161 = phi ptr [ %call2.i116155, %bio_list_add.exit139.sg_page.exit_crit_edge ], [ %call2.i116156.lcssa157172177, %while.cond37.preheader.sg_page.exit_crit_edge ]
  %and.i = and i32 %70, -4
  %72 = inttoptr i32 %and.i to ptr
  %73 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %length, align 4
  %75 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %offset, align 4
  %call40 = tail call i32 @bio_add_page(ptr noundef %bio.1162, ptr noundef %72, i32 noundef %74, i32 noundef %76) #18
  %77 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call40, i32 %78)
  %cmp42.not = icmp eq i32 %call40, %78
  br i1 %cmp42.not, label %while.end, label %while.body43

while.body43:                                     ; preds = %sg_page.exit
  %79 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %se_dev, align 4
  %ibd_bio_set.i115 = getelementptr inbounds %struct.iblock_dev, ptr %80, i32 0, i32 3
  %call2.i116 = tail call ptr @bio_alloc_bioset(i32 noundef 3072, i16 noundef zeroext 1, ptr noundef %ibd_bio_set.i115) #18
  %tobool.not.i117 = icmp eq ptr %call2.i116, null
  br i1 %tobool.not.i117, label %iblock_get_bio.exit133, label %if.end.i125

if.end.i125:                                      ; preds = %while.body43
  %ibd_bd.i120 = getelementptr inbounds %struct.iblock_dev, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %ibd_bd.i120 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ibd_bd.i120, align 16
  %bi_flags.i.i.i121 = getelementptr inbounds %struct.bio, ptr %call2.i116, i32 0, i32 3
  %83 = ptrtoint ptr %bi_flags.i.i.i121 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %bi_flags.i.i.i121, align 4
  %conv1.i.i.i122 = and i16 %84, -2049
  store i16 %conv1.i.i.i122, ptr %bi_flags.i.i.i121, align 4
  %bi_bdev.i.i123 = getelementptr inbounds %struct.bio, ptr %call2.i116, i32 0, i32 1
  %85 = ptrtoint ptr %bi_bdev.i.i123 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bi_bdev.i.i123, align 4
  %cmp.not.i.i124 = icmp eq ptr %86, %82
  br i1 %cmp.not.i.i124, label %if.end.i125.if.end47_crit_edge, label %if.then.i.i127

if.end.i125.if.end47_crit_edge:                   ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end47

if.then.i.i127:                                   ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #20
  %conv1.i8.i.i126 = and i16 %84, -2177
  %87 = ptrtoint ptr %bi_flags.i.i.i121 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv1.i8.i.i126, ptr %bi_flags.i.i.i121, align 4
  br label %if.end47

iblock_get_bio.exit133:                           ; preds = %while.body43
  %88 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %71, ptr %5, align 4
  %89 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call2.i116156161, ptr %list, align 4
  %call3.i118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #22
  %tobool.not.i140186 = icmp eq ptr %call2.i116156161, null
  br i1 %tobool.not.i140186, label %iblock_get_bio.exit133.fail_free_ibr.loopexit_crit_edge, label %iblock_get_bio.exit133.if.then.i142_crit_edge

iblock_get_bio.exit133.if.then.i142_crit_edge:    ; preds = %iblock_get_bio.exit133
  br label %if.then.i142

iblock_get_bio.exit133.fail_free_ibr.loopexit_crit_edge: ; preds = %iblock_get_bio.exit133
  call void @__sanitizer_cov_trace_pc() #20
  br label %fail_free_ibr.loopexit

if.end47:                                         ; preds = %if.then.i.i127, %if.end.i125.if.end47_crit_edge
  %90 = ptrtoint ptr %bi_bdev.i.i123 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %82, ptr %bi_bdev.i.i123, align 4
  tail call void @bio_associate_blkg(ptr noundef nonnull %call2.i116) #18
  %bi_private.i128 = getelementptr inbounds %struct.bio, ptr %call2.i116, i32 0, i32 11
  %91 = ptrtoint ptr %bi_private.i128 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %cmd, ptr %bi_private.i128, align 4
  %bi_end_io.i129 = getelementptr inbounds %struct.bio, ptr %call2.i116, i32 0, i32 10
  %92 = ptrtoint ptr %bi_end_io.i129 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @iblock_bio_done, ptr %bi_end_io.i129, align 8
  %bi_iter.i130 = getelementptr inbounds %struct.bio, ptr %call2.i116, i32 0, i32 8
  %93 = ptrtoint ptr %bi_iter.i130 to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %block_lba.0180, ptr %bi_iter.i130, align 8
  %bi_opf.i131 = getelementptr inbounds %struct.bio, ptr %call2.i116, i32 0, i32 2
  %94 = ptrtoint ptr %bi_opf.i131 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %bi_opf.i131, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr nonnull %call7.i.i, i32 1, i32 3, i32 1) #18
  %95 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call7.i.i, ptr nonnull %call7.i.i, i32 1, ptr nonnull elementtype(i32) %call7.i.i) #18, !srcloc !172
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end47.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !165

if.end47.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end47
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %96 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %.not.i.i.i = icmp sgt i32 %96, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !168

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end47.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end47.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call7.i.i, i32 noundef %.sink.i.i.i) #18
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %97 = ptrtoint ptr %call2.i116 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %call2.i116, align 8
  %tobool.not.i135 = icmp eq ptr %71, null
  br i1 %tobool.not.i135, label %refcount_inc.exit.bio_list_add.exit139_crit_edge, label %if.then.i136

refcount_inc.exit.bio_list_add.exit139_crit_edge: ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %bio_list_add.exit139

if.then.i136:                                     ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #20
  %98 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call2.i116, ptr %71, align 8
  br label %bio_list_add.exit139

bio_list_add.exit139:                             ; preds = %if.then.i136, %refcount_inc.exit.bio_list_add.exit139_crit_edge
  %call2.i116155 = phi ptr [ %call2.i116156161, %if.then.i136 ], [ %call2.i116, %refcount_inc.exit.bio_list_add.exit139_crit_edge ]
  %99 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %11, align 4
  %and.i.i113 = and i32 %100, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i113, 0
  br i1 %tobool.i.not.i, label %bio_list_add.exit139.sg_page.exit_crit_edge, label %bio_list_add.exit139.do.body2.i_crit_edge, !prof !168

bio_list_add.exit139.do.body2.i_crit_edge:        ; preds = %bio_list_add.exit139
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body2.i

bio_list_add.exit139.sg_page.exit_crit_edge:      ; preds = %bio_list_add.exit139
  call void @__sanitizer_cov_trace_pc() #20
  br label %sg_page.exit

while.end:                                        ; preds = %sg_page.exit
  %shr = lshr i32 %call40, 9
  %conv = zext i32 %shr to i64
  %add = add i64 %block_lba.0180, %conv
  %sub = sub i64 %sectors.0181, %conv
  %tobool36.not = icmp eq i64 %sub, 0
  br i1 %tobool36.not, label %while.end.while.end53_crit_edge, label %while.end.while.cond37.preheader_crit_edge

while.end.while.cond37.preheader_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond37.preheader

while.end.while.end53_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end53

while.end53:                                      ; preds = %while.end.while.end53_crit_edge, %bio_list_add.exit.while.end53_crit_edge
  %call2.i116156.lcssa157172.lcssa = phi ptr [ %call2.i105, %bio_list_add.exit.while.end53_crit_edge ], [ %call2.i116156161, %while.end.while.end53_crit_edge ]
  %.lcssa153167.lcssa = phi ptr [ %call2.i105, %bio_list_add.exit.while.end53_crit_edge ], [ %71, %while.end.while.end53_crit_edge ]
  %101 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %.lcssa153167.lcssa, ptr %5, align 4
  %102 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call2.i116156.lcssa157172.lcssa, ptr %list, align 4
  call fastcc void @iblock_submit_bios(ptr noundef nonnull %list)
  br label %cleanup

if.then.i142:                                     ; preds = %if.then.i142.if.then.i142_crit_edge, %iblock_get_bio.exit133.if.then.i142_crit_edge
  %103 = phi ptr [ %105, %if.then.i142.if.then.i142_crit_edge ], [ %call2.i116156161, %iblock_get_bio.exit133.if.then.i142_crit_edge ]
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 8
  %tobool4.not.i141 = icmp eq ptr %105, null
  store ptr null, ptr %103, align 8
  tail call void @bio_put(ptr noundef nonnull %103) #18
  br i1 %tobool4.not.i141, label %if.then.i142.fail_free_ibr.loopexit_crit_edge, label %if.then.i142.if.then.i142_crit_edge

if.then.i142.if.then.i142_crit_edge:              ; preds = %if.then.i142
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i142

if.then.i142.fail_free_ibr.loopexit_crit_edge:    ; preds = %if.then.i142
  call void @__sanitizer_cov_trace_pc() #20
  br label %fail_free_ibr.loopexit

fail_free_ibr.loopexit:                           ; preds = %if.then.i142.fail_free_ibr.loopexit_crit_edge, %iblock_get_bio.exit133.fail_free_ibr.loopexit_crit_edge
  %.lcssa185 = phi ptr [ %71, %iblock_get_bio.exit133.fail_free_ibr.loopexit_crit_edge ], [ null, %if.then.i142.fail_free_ibr.loopexit_crit_edge ]
  %106 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %list, align 4
  %107 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %.lcssa185, ptr %5, align 4
  br label %fail_free_ibr

fail_free_ibr:                                    ; preds = %fail_free_ibr.loopexit, %iblock_get_bio.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #18
  br label %cleanup

cleanup:                                          ; preds = %fail_free_ibr, %while.end53, %if.end27.cleanup_crit_edge, %iblock_execute_zero_out.exit, %do.end11, %do.end
  %retval.0 = phi i32 [ 10, %do.end ], [ 8, %do.end11 ], [ 0, %while.end53 ], [ 0, %iblock_execute_zero_out.exit ], [ 10, %if.end27.cleanup_crit_edge ], [ 10, %fail_free_ibr ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iblock_execute_unmap(ptr nocapture noundef readonly %cmd, i64 noundef %lba, i64 noundef %nolb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %ibd_bd = getelementptr inbounds %struct.iblock_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ibd_bd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibd_bd, align 16
  %call2 = tail call i64 @target_to_linux_sector(ptr noundef %1, i64 noundef %lba) #18
  %call3 = tail call i64 @target_to_linux_sector(ptr noundef %1, i64 noundef %nolb) #18
  %call4 = tail call i32 @blkdev_issue_discard(ptr noundef %3, i64 noundef %call2, i64 noundef %call3, i32 noundef 3264, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %call4) #22
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 10, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @target_to_linux_sector(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iblock_complete_cmd(ptr noundef %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 48
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !173
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #18
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #18, !srcloc !174
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !168

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @refcount_warn_saturate(ptr noundef %1, i32 noundef 3) #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !175
  %ib_bio_err_cnt = getelementptr inbounds %struct.iblock_req, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %ib_bio_err_cnt, i32 noundef 4) #18
  %3 = ptrtoint ptr %ib_bio_err_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %ib_bio_err_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %. = select i1 %tobool.not, i8 0, i8 2
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext %.) #18
  tail call void @kfree(ptr noundef %1) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iblock_alloc_bip(ptr nocapture noundef readonly %cmd, ptr noundef %bio, ptr noundef %miter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev, align 4
  %ibd_bd = getelementptr inbounds %struct.iblock_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ibd_bd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibd_bd, align 16
  %bd_disk.i = getelementptr inbounds %struct.block_device, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %bd_disk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bd_disk.i, align 8
  %queue.i.i = getelementptr inbounds %struct.gendisk, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %queue.i.i, align 4
  %integrity.i.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %integrity.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %integrity.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  %tobool.not122 = icmp eq ptr %integrity.i.i, null
  %tobool.not = or i1 %tobool.not.i.i, %tobool.not122
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %t_prot_nents = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 56
  %10 = ptrtoint ptr %t_prot_nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_prot_nents, align 8
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 256) #18
  %call4 = tail call ptr @bio_integrity_alloc(ptr noundef %bio, i32 noundef 3072, i32 noundef %12) #18
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end9, label %if.end13

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #22
  %13 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %bi_iter = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8
  %bi_size = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bi_size, align 8
  %shr = lshr i32 %15, 9
  %interval_exp.i.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 18, i32 3
  %16 = ptrtoint ptr %interval_exp.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %interval_exp.i.i, align 2
  %conv.i.i = zext i8 %17 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -9
  %shr.i.i = lshr i32 %shr, %sub.i.i
  %tuple_size.i = getelementptr inbounds %struct.request_queue, ptr %7, i32 0, i32 18, i32 2
  %18 = ptrtoint ptr %tuple_size.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tuple_size.i, align 1
  %conv.i = zext i8 %19 to i32
  %mul.i = mul nuw nsw i32 %shr.i.i, %conv.i
  %bi_size15 = getelementptr inbounds %struct.bio_integrity_payload, ptr %call4, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %bi_size15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul.i, ptr %bi_size15, align 4
  %21 = ptrtoint ptr %bi_iter to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %bi_iter, align 8
  %23 = load i8, ptr %interval_exp.i.i, align 2
  %conv = zext i8 %23 to i32
  %sub = add nsw i32 %conv, -9
  %sh_prom = zext i32 %sub to i64
  %shr17 = lshr i64 %22, %sh_prom
  %bip_iter.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %call4, i32 0, i32 1
  %24 = ptrtoint ptr %bip_iter.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %shr17, ptr %bip_iter.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iblock_alloc_bip.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iblock_alloc_bip, %if.then24)) #18
          to label %do.end31 [label %if.then24], !srcloc !164

if.then24:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  %25 = ptrtoint ptr %bi_size15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bi_size15, align 4
  %27 = ptrtoint ptr %bip_iter.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %bip_iter.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iblock_alloc_bip.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.54, i32 noundef %26, i64 noundef %28) #18
  br label %do.end31

do.end31:                                         ; preds = %if.then24, %if.end13
  %29 = ptrtoint ptr %bi_size15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bi_size15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not123 = icmp eq i32 %30, 0
  br i1 %cmp.not123, label %do.end31.while.end_crit_edge, label %land.rhs.lr.ph

do.end31.while.end_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %do.end31
  %length = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 2
  %addr = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 1
  %consumed = getelementptr inbounds %struct.sg_mapping_iter, ptr %miter, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %if.end77.land.rhs_crit_edge, %land.rhs.lr.ph
  %resid.0124 = phi i32 [ %30, %land.rhs.lr.ph ], [ %sub69, %if.end77.land.rhs_crit_edge ]
  %call35 = tail call zeroext i1 @sg_miter_next(ptr noundef %miter) #18
  br i1 %call35, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %31 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %length, align 4
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 %resid.0124)
  %34 = ptrtoint ptr %miter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %miter, align 4
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr, align 4
  %38 = ptrtoint ptr %37 to i32
  %and = and i32 %38, 4095
  %call40 = tail call i32 @bio_integrity_add_page(ptr noundef %bio, ptr noundef %35, i32 noundef %33, i32 noundef %and) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %call40, i32 %33)
  %cmp41.not = icmp eq i32 %call40, %33
  br i1 %cmp41.not, label %do.body50, label %do.end46

do.end46:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %call40) #22
  tail call void @sg_miter_stop(ptr noundef %miter) #18
  br label %cleanup

do.body50:                                        ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iblock_alloc_bip.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iblock_alloc_bip, %if.then62)) #18
          to label %do.end68 [label %if.then62], !srcloc !164

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #20
  %39 = ptrtoint ptr %miter to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %miter, align 4
  %41 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addr, align 4
  %43 = ptrtoint ptr %42 to i32
  %and65 = and i32 %43, 4095
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iblock_alloc_bip.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.58, ptr noundef %40, i32 noundef %33, i32 noundef %and65) #18
  br label %do.end68

do.end68:                                         ; preds = %if.then62, %do.body50
  %sub69 = sub i32 %resid.0124, %33
  %44 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %45)
  %cmp71 = icmp ult i32 %33, %45
  br i1 %cmp71, label %if.then73, label %do.end68.if.end77_crit_edge

do.end68.if.end77_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end77

if.then73:                                        ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #20
  %sub75.neg = sub i32 %33, %45
  %46 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %consumed, align 4
  %sub76 = add i32 %sub75.neg, %47
  store i32 %sub76, ptr %consumed, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then73, %do.end68.if.end77_crit_edge
  %cmp.not = icmp eq i32 %sub69, 0
  br i1 %cmp.not, label %if.end77.while.end_crit_edge, label %if.end77.land.rhs_crit_edge

if.end77.land.rhs_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

if.end77.while.end_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %if.end77.while.end_crit_edge, %land.rhs.while.end_crit_edge, %do.end31.while.end_crit_edge
  tail call void @sg_miter_stop(ptr noundef %miter) #18
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end46, %do.end9, %do.end
  %retval.0 = phi i32 [ %13, %do.end9 ], [ -12, %do.end46 ], [ 0, %while.end ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iblock_submit_bios(ptr nocapture noundef %list) unnamed_addr #2 align 64 {
entry:
  %plug = alloca %struct.blk_plug, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %plug) #18
  %0 = call ptr @memset(ptr %plug, i32 255, i32 24)
  call void @blk_start_plug(ptr noundef nonnull %plug) #18
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %list, align 4
  %tobool.not.i1 = icmp eq ptr %2, null
  br i1 %tobool.not.i1, label %entry.while.end_crit_edge, label %if.then.i.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.then.i.lr.ph:                                  ; preds = %entry
  %tail.i = getelementptr inbounds %struct.bio_list, ptr %list, i32 0, i32 1
  br label %if.then.i

if.then.i:                                        ; preds = %while.body.if.then.i_crit_edge, %if.then.i.lr.ph
  %3 = phi ptr [ %2, %if.then.i.lr.ph ], [ %10, %while.body.if.then.i_crit_edge ]
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %list, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.then.i.while.body_crit_edge

if.then.i.while.body_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %tail.i, align 4
  br label %while.body

while.body:                                       ; preds = %if.then5.i, %if.then.i.while.body_crit_edge
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 8
  call void @submit_bio(ptr noundef nonnull %3) #18
  %9 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %while.body.if.then.i_crit_edge

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @blk_finish_plug(ptr noundef nonnull %plug) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %plug) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_complete_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #17

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_alloc_bioset(i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iblock_bio_done(ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %priv = getelementptr inbounds %struct.se_cmd, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %bio, i32 noundef %conv) #22
  %ib_bio_err_cnt = getelementptr inbounds %struct.iblock_req, ptr %5, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ib_bio_err_cnt, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %ib_bio_err_cnt, i32 1, i32 3, i32 1) #18
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ib_bio_err_cnt, ptr %ib_bio_err_cnt, i32 1, ptr elementtype(i32) %ib_bio_err_cnt) #18, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !177
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @bio_put(ptr noundef %bio) #18
  tail call fastcc void @iblock_complete_cmd(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_associate_blkg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bio_integrity_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bio_integrity_add_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @submit_bio(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iblock_end_io_flush(ptr noundef %bio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_private = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 11
  %0 = ptrtoint ptr %bi_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_private, align 4
  %bi_status = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 6
  %2 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %conv) #22
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %bi_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bi_status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  %. = select i1 %tobool5.not, i8 0, i8 2
  tail call void @target_complete_cmd(ptr noundef nonnull %1, i8 noundef zeroext %.) #18
  br label %if.end8

if.end8:                                          ; preds = %if.then3, %if.end.if.end8_crit_edge
  tail call void @bio_put(ptr noundef %bio) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sbc_get_write_same_sectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_zeroout(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blkdev_issue_discard(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_backend_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind readonly }
attributes #16 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nobuiltin }
attributes #25 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !46, !48, !50, !51, !52, !54, !56, !58, !59, !60, !62, !63, !65, !67, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !128, !129, !130, !132, !133, !135, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !151, !152, !153}
!llvm.named.register.sp = !{!154}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__UNIQUE_ID_description289, !1, !"__UNIQUE_ID_description289", i1 false, i1 false}
!1 = !{!"../drivers/target/target_core_iblock.c", i32 936, i32 1}
!2 = !{ptr @__UNIQUE_ID_author290, !3, !"__UNIQUE_ID_author290", i1 false, i1 false}
!3 = !{!"../drivers/target/target_core_iblock.c", i32 937, i32 1}
!4 = !{ptr @__UNIQUE_ID_file291, !5, !"__UNIQUE_ID_file291", i1 false, i1 false}
!5 = !{!"../drivers/target/target_core_iblock.c", i32 938, i32 1}
!6 = !{ptr @__UNIQUE_ID_license292, !5, !"__UNIQUE_ID_license292", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_target_core_iblock__293_940_iblock_module_init6, !8, !"__initcall__kmod_target_core_iblock__293_940_iblock_module_init6", i1 false, i1 false}
!8 = !{!"../drivers/target/target_core_iblock.c", i32 940, i32 1}
!9 = !{ptr @__exitcall_iblock_module_exit, !10, !"__exitcall_iblock_module_exit", i1 false, i1 false}
!10 = !{!"../drivers/target/target_core_iblock.c", i32 941, i32 1}
!11 = !{ptr @iblock_ops, !12, !"iblock_ops", i1 false, i1 false}
!12 = !{!"../drivers/target/target_core_iblock.c", i32 900, i32 40}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/target/target_core_iblock.c", i32 46, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @iblock_attach_hba.__UNIQUE_ID_ddebug278, !14, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!19 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/target/target_core_iblock.c", i32 62, i32 3}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @iblock_alloc_device._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @iblock_alloc_device._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/target/target_core_iblock.c", i32 71, i32 2}
!28 = !{ptr @iblock_alloc_device.__UNIQUE_ID_ddebug279, !27, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/target/target_core_iblock.c", i32 91, i32 3}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @iblock_configure_device._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @iblock_configure_device._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/target/target_core_iblock.c", i32 97, i32 3}
!36 = !{ptr @iblock_configure_device._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @iblock_configure_device._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/target/target_core_iblock.c", i32 101, i32 2}
!40 = !{ptr @iblock_configure_device.__UNIQUE_ID_ddebug280, !39, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/target/target_core_iblock.c", i32 124, i32 3}
!43 = !{ptr @iblock_configure_device.__UNIQUE_ID_ddebug281, !42, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/target/target_core_iblock.c", i32 144, i32 34}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/target/target_core_iblock.c", i32 145, i32 34}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/target/target_core_iblock.c", i32 146, i32 4}
!50 = !{ptr @iblock_configure_device._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @iblock_configure_device._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/target/target_core_iblock.c", i32 152, i32 34}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/target/target_core_iblock.c", i32 154, i32 41}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/target/target_core_iblock.c", i32 160, i32 5}
!58 = !{ptr @iblock_configure_device._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @iblock_configure_device._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/target/target_core_iblock.c", i32 164, i32 4}
!62 = !{ptr @iblock_configure_device.__UNIQUE_ID_ddebug282, !61, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/target/target_core_iblock.c", i32 585, i32 30}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/target/target_core_iblock.c", i32 593, i32 5}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @iblock_set_configfs_dev_params._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @iblock_set_configfs_dev_params._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/target/target_core_iblock.c", i32 603, i32 4}
!72 = !{ptr @iblock_set_configfs_dev_params.__UNIQUE_ID_ddebug283, !71, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/target/target_core_iblock.c", i32 616, i32 5}
!75 = !{ptr @iblock_set_configfs_dev_params._entry.31, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @iblock_set_configfs_dev_params._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/target/target_core_iblock.c", i32 621, i32 4}
!79 = !{ptr @iblock_set_configfs_dev_params.__UNIQUE_ID_ddebug284, !78, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/target/target_core_iblock.c", i32 564, i32 18}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/target/target_core_iblock.c", i32 565, i32 17}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/target/target_core_iblock.c", i32 566, i32 14}
!86 = !{ptr @tokens, !87, !"tokens", i1 false, i1 false}
!87 = !{!"../drivers/target/target_core_iblock.c", i32 563, i32 22}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/target/target_core_iblock.c", i32 642, i32 25}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/target/target_core_iblock.c", i32 644, i32 25}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/target/target_core_iblock.c", i32 646, i32 24}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/target/target_core_iblock.c", i32 648, i32 24}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/target/target_core_iblock.c", i32 650, i32 25}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/target/target_core_iblock.c", i32 652, i32 4}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/target/target_core_iblock.c", i32 654, i32 25}
!102 = !{ptr @iblock_sbc_ops, !103, !"iblock_sbc_ops", i1 false, i1 false}
!103 = !{!"../drivers/target/target_core_iblock.c", i32 878, i32 23}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/target/target_core_iblock.c", i32 359, i32 3}
!106 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @iblock_get_bio._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @iblock_get_bio._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/target/target_core_iblock.c", i32 333, i32 3}
!111 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @iblock_bio_done._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @iblock_bio_done._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/target/target_core_iblock.c", i32 673, i32 3}
!116 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @iblock_alloc_bip._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @iblock_alloc_bip._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/target/target_core_iblock.c", i32 679, i32 3}
!121 = !{ptr @iblock_alloc_bip._entry.51, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @iblock_alloc_bip._entry_ptr.53, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/target/target_core_iblock.c", i32 688, i32 2}
!125 = !{ptr @iblock_alloc_bip.__UNIQUE_ID_ddebug285, !124, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/target/target_core_iblock.c", i32 698, i32 4}
!128 = !{ptr @iblock_alloc_bip._entry.55, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @iblock_alloc_bip._entry_ptr.57, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/target/target_core_iblock.c", i32 703, i32 3}
!132 = !{ptr @iblock_alloc_bip.__UNIQUE_ID_ddebug288, !131, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/target/target_core_iblock.c", i32 391, i32 3}
!135 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @iblock_end_io_flush._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @iblock_end_io_flush._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.61, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/target/target_core_iblock.c", i32 497, i32 3}
!140 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @iblock_execute_write_same._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @iblock_execute_write_same._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/target/target_core_iblock.c", i32 505, i32 3}
!145 = !{ptr @iblock_execute_write_same._entry.63, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @iblock_execute_write_same._entry_ptr.65, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/target/target_core_iblock.c", i32 443, i32 3}
!151 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @iblock_execute_unmap._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @iblock_execute_unmap._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{!"sp"}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{i64 2148913688, i64 2148913693, i64 2148913706, i64 2148913750, i64 2148913784, i64 2148913805}
!165 = !{!"branch_weights", i32 1, i32 2000}
!166 = !{i8 0, i8 2}
!167 = !{!"auto-init"}
!168 = !{!"branch_weights", i32 2000, i32 1}
!169 = !{i64 2148203161, i64 2148203441, i64 2148203775, i64 2148204109}
!170 = !{i32 0, i32 33}
!171 = !{i64 2154336856, i64 2154337348, i64 2154336893, i64 2154336949, i64 2154336983, i64 2154337007, i64 2154337048, i64 2154337069, i64 2154337097, i64 2154337131}
!172 = !{i64 2148358267, i64 2148358299, i64 2148358328, i64 2148358362, i64 2148358393, i64 2148358416}
!173 = !{i64 2148446292}
!174 = !{i64 2148360732, i64 2148360764, i64 2148360793, i64 2148360827, i64 2148360858, i64 2148360881}
!175 = !{i64 2150446869}
!176 = !{i64 2148356737, i64 2148356763, i64 2148356792, i64 2148356826, i64 2148356857, i64 2148356880}
!177 = !{i64 2154508761}
