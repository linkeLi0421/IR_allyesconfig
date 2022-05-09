; ModuleID = '/llk/IR_all_yes/drivers/target/target_core_rd.c_pt.bc'
source_filename = "../drivers/target/target_core_rd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.target_backend_ops = type { [16 x i8], [16 x i8], [4 x i8], ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.sbc_ops = type { ptr, ptr, ptr, ptr }
%struct.rd_host = type { i32, i32, [120 x i8] }
%struct.se_hba = type { i16, i32, i32, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.config_group, %struct.mutex, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rd_dev = type { %struct.se_device, i32, i32, i32, i32, i32, ptr, ptr, ptr, [16 x i8] }
%struct.se_device = type { i16, i32, i32, i8, i32, i64, i32, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.spinlock, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.semaphore, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, ptr, %struct.t10_wwn, %struct.t10_alua, %struct.t10_reservation, %struct.se_dev_attrib, %struct.config_group, %struct.config_group, %struct.config_group, %struct.se_dev_stat_grps, [512 x i8], [512 x i8], ptr, %struct.se_lun, i32, i32, %struct.callback_head, i32, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.substring_t = type { ptr, ptr }
%struct.rd_dev_sg_table = type { i32, i32, i32, ptr, [112 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }

@rd_mcp_ops = internal constant { %struct.target_backend_ops, [44 x i8] } { %struct.target_backend_ops { [16 x i8] c"rd_mcp\00\00\00\00\00\00\00\00\00\00", [16 x i8] c"RAMDISK-MCP\00\00\00\00\00", [4 x i8] c"4.0\00", ptr null, i8 0, i8 0, ptr @rd_attach_hba, ptr @rd_detach_hba, ptr null, ptr @rd_alloc_device, ptr @rd_configure_device, ptr @rd_destroy_device, ptr @rd_free_device, ptr null, ptr null, ptr @rd_set_configfs_dev_params, ptr @rd_show_configfs_dev_params, ptr @rd_parse_cdb, ptr null, ptr @rd_get_device_type, ptr @rd_get_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rd_init_prot, ptr null, ptr @rd_free_prot, ptr @sbc_attrib_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sbc_attrib_attrs = external dso_local global [0 x ptr], align 4
@rd_attach_hba.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"target_core_mod\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rd_attach_hba\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/target/target_core_rd.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"CORE_HBA[%d] - TCM Ramdisk HBA Driver %s on Generic Target Core Stack %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v4.0\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"v5.0\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rd_detach_hba.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rd_detach_hba\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"CORE_HBA[%d] - Detached Ramdisk HBA: %u from Generic Target Core\0A\00", [62 x i8] zeroinitializer }, align 32
@rd_configure_device.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rd_configure_device\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Missing rd_pages= parameter\0A\00", [35 x i8] zeroinitializer }, align 32
@rd_configure_device.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"CORE_RD[%u] - Added TCM MEMCPY Ramdisk Device ID: %u of %u pages in %u tables, %lu total bytes\0A\00", [32 x i8] zeroinitializer }, align 32
@rd_build_device_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Illegal page count: %u for Ramdisk device\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rd_build_device_space\00", [42 x i8] zeroinitializer }, align 32
@rd_build_device_space._entry_ptr = internal global ptr @rd_build_device_space._entry, section ".printk_index", align 4
@rd_build_device_space.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"CORE_RD[%u] - Built Ramdisk Device ID: %u space of %u pages in %u tables\0A\00", [54 x i8] zeroinitializer }, align 32
@rd_allocate_sgl_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013Unable to allocate scatterlist pages for struct rd_dev_sg_table\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rd_allocate_sgl_table\00", [42 x i8] zeroinitializer }, align 32
@rd_allocate_sgl_table._entry_ptr = internal global ptr @rd_allocate_sgl_table._entry, section ".printk_index", align 4
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@rd_release_device_space.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rd_release_device_space\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"CORE_RD[%u] - Released device space for Ramdisk Device ID: %u, pages %u in %u tables total bytes %lu\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c",\0A\00", [29 x i8] zeroinitializer }, align 32
@tokens = internal global { [4 x %struct.match_token], [32 x i8] } { [4 x %struct.match_token] [%struct.match_token { i32 0, ptr @.str.25 }, %struct.match_token { i32 1, ptr @.str.26 }, %struct.match_token { i32 2, ptr @.str.27 }, %struct.match_token { i32 3, ptr null }], [32 x i8] zeroinitializer }, align 32
@rd_set_configfs_dev_params.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rd_set_configfs_dev_params\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RAMDISK: Referencing Page Count: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@rd_set_configfs_dev_params.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.23, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"RAMDISK: Setting NULLIO flag: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rd_set_configfs_dev_params.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.24, i8 0, i8 -111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RAMDISK: Setting DUMMY flag: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rd_pages=%d\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rd_nullio=%d\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rd_dummy=%d\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TCM RamDisk ID: %u  RamDisk Makeup: rd_mcp\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"        PAGES/PAGE_SIZE: %u*%lu  SG_table_count: %u  nullio: %d dummy: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@rd_sbc_ops = internal global { %struct.sbc_ops, [16 x i8] } { %struct.sbc_ops { ptr @rd_execute_rw, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@rd_execute_rw.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rd_execute_rw\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"RD[%u]: %s LBA: %llu, Size: %u Page: %u, Offset: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Read\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Write\00", [26 x i8] zeroinitializer }, align 32
@rd_execute_rw.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.34, i8 0, i8 117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RD[%u]: invalid sgl %p len %zu\0A\00", [32 x i8] zeroinitializer }, align 32
@rd_execute_rw.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.35, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"RD[%u]: size underrun page %d offset %d size %d\0A\00", [47 x i8] zeroinitializer }, align 32
@rd_get_sg_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Unable to locate struct rd_dev_sg_table for page: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rd_get_sg_table\00", [16 x i8] zeroinitializer }, align 32
@rd_get_sg_table._entry_ptr = internal global ptr @rd_get_sg_table._entry, section ".printk_index", align 4
@rd_get_prot_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013Unable to locate struct prot rd_dev_sg_table for page: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rd_get_prot_table\00", [46 x i8] zeroinitializer }, align 32
@rd_get_prot_table._entry_ptr = internal global ptr @rd_get_prot_table._entry, section ".printk_index", align 4
@rd_build_prot_space.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rd_build_prot_space\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"CORE_RD[%u] - Built Ramdisk Device ID: %u prot space of %u pages in %u tables\0A\00", [49 x i8] zeroinitializer }, align 32
@rd_release_prot_space.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rd_release_prot_space\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"CORE_RD[%u] - Released protection space for Ramdisk Device ID: %u, pages %u in %u tables total bytes %lu\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"rd_mcp_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 656, i32 40 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 45, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 56, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 291, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 306, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 183, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 206, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 155, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 44, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 98, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 557, i32 30 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"tokens\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 536, i32 22 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 566, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 575, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 583, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 537, i32 17 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 538, i32 18 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 539, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 599, i32 26 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 601, i32 24 }
@___asan_gen_.145 = private unnamed_addr constant [11 x i8] c"rd_sbc_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 646, i32 23 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 448, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 470, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 477, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 353, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 373, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 263, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [35 x i8] c"../drivers/target/target_core_rd.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 224, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @rd_allocate_sgl_table._entry, ptr @rd_allocate_sgl_table._entry_ptr, ptr @rd_build_device_space._entry, ptr @rd_build_device_space._entry_ptr, ptr @rd_get_prot_table._entry, ptr @rd_get_prot_table._entry_ptr, ptr @rd_get_sg_table._entry, ptr @rd_get_sg_table._entry_ptr, ptr @rd_mcp_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @tokens, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @rd_sbc_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_mcp_ops to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_build_device_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_allocate_sgl_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tokens to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_sbc_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_get_sg_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rd_get_prot_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rd_module_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @transport_backend_register(ptr noundef nonnull @rd_mcp_ops) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_backend_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rd_module_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @target_backend_unregister(ptr noundef nonnull @rd_mcp_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_backend_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rd_attach_hba(ptr nocapture noundef %hba, i32 noundef %host_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rd_host_id = getelementptr inbounds %struct.rd_host, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %rd_host_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %host_id, ptr %rd_host_id, align 4
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 5
  %2 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %hba_ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rd_attach_hba.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rd_attach_hba, %if.then5)) #11
          to label %cleanup [label %if.then5], !srcloc !108

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %hba_id = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 1
  %3 = ptrtoint ptr %hba_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hba_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rd_attach_hba.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.3, i32 noundef %4, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then5 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rd_detach_hba(ptr nocapture noundef %hba) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 5
  %0 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba_ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rd_detach_hba.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rd_detach_hba, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !108

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %hba_id = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 1
  %2 = ptrtoint ptr %hba_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hba_id, align 4
  %rd_host_id = getelementptr inbounds %struct.rd_host, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %rd_host_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rd_host_id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rd_detach_hba.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.7, i32 noundef %3, i32 noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @kfree(ptr noundef %1) #11
  %6 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %hba_ptr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @rd_alloc_device(ptr nocapture noundef readonly %hba, ptr nocapture noundef readnone %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %hba, i32 0, i32 5
  %0 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hba_ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 3840) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %rd_host1 = getelementptr inbounds %struct.rd_dev, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %rd_host1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %rd_host1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rd_configure_device(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %se_hba = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 35
  %0 = ptrtoint ptr %se_hba to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_hba, align 8
  %hba_ptr = getelementptr inbounds %struct.se_hba, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hba_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hba_ptr, align 4
  %rd_flags = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %rd_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rd_flags, align 16
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rd_configure_device.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rd_configure_device, %if.then5)) #11
          to label %cleanup [label %if.then5], !srcloc !108

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rd_configure_device.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = tail call fastcc i32 @rd_build_device_space(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %fail, label %if.end9

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %hw_block_size = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 20
  %6 = ptrtoint ptr %hw_block_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 512, ptr %hw_block_size, align 4
  %hw_max_sectors = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 22
  %7 = ptrtoint ptr %hw_max_sectors to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %hw_max_sectors, align 4
  %hw_queue_depth = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 24
  %8 = ptrtoint ptr %hw_queue_depth to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 128, ptr %hw_queue_depth, align 4
  %is_nonrot = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 17
  %9 = ptrtoint ptr %is_nonrot to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %is_nonrot, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %3, align 128
  %inc = add i32 %11, 1
  store i32 %inc, ptr %3, align 128
  %rd_dev_id = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 2
  %12 = ptrtoint ptr %rd_dev_id to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rd_dev_id, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rd_configure_device.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rd_configure_device, %if.then25)) #11
          to label %cleanup [label %if.then25], !srcloc !108

if.then25:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %rd_host_id = getelementptr inbounds %struct.rd_host, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %rd_host_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rd_host_id, align 4
  %15 = ptrtoint ptr %rd_dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rd_dev_id, align 4
  %rd_page_count = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 3
  %17 = ptrtoint ptr %rd_page_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rd_page_count, align 8
  %sg_table_count = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 4
  %19 = ptrtoint ptr %sg_table_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sg_table_count, align 4
  %mul = shl i32 %18, 12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rd_configure_device.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.10, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %mul) #11
  br label %cleanup

fail:                                             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rd_release_device_space(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then25, %if.end9, %if.then5, %do.body
  %retval.0 = phi i32 [ %call7, %fail ], [ -22, %if.then5 ], [ 0, %if.then25 ], [ -22, %do.body ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rd_destroy_device(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rd_release_device_space(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rd_free_device(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %callback_head = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 50
  tail call void @call_rcu(ptr noundef %callback_head, ptr noundef nonnull @rd_dev_call_rcu) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rd_set_configfs_dev_params(ptr nocapture noundef %dev, ptr noundef %page, i32 noundef %count) #2 align 64 {
entry:
  %opts = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opts) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #11
  %0 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #11
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %arg, align 4, !annotation !109
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %page, i32 noundef 3264) #11
  %2 = ptrtoint ptr %opts to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %opts, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call284 = call ptr @strsep(ptr noundef nonnull %opts, ptr noundef nonnull @.str.20) #11
  %cmp.not85 = icmp eq ptr %call284, null
  br i1 %cmp.not85, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %rd_flags62 = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 1
  %rd_page_count = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call286 = phi ptr [ %call284, %while.body.lr.ph ], [ %call2, %while.cond.backedge.while.body_crit_edge ]
  %3 = ptrtoint ptr %call286 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %call286, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %while.body.while.cond.backedge_crit_edge, label %if.end5

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end5:                                          ; preds = %while.body
  %call6 = call i32 @match_token(ptr noundef nonnull %call286, ptr noundef nonnull @tokens, ptr noundef nonnull %args) #11
  %5 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %if.end5.while.cond.backedge_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb40
  ]

if.end5.while.cond.backedge_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %arg) #11
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arg, align 4
  %8 = ptrtoint ptr %rd_page_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rd_page_count, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rd_set_configfs_dev_params.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rd_set_configfs_dev_params, %if.then13)) #11
          to label %while.cond.backedge.sink.split [label %if.then13], !srcloc !108

if.then13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %rd_page_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rd_page_count, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rd_set_configfs_dev_params.__UNIQUE_ID_ddebug253, ptr noundef nonnull @.str.22, i32 noundef %10) #11
  br label %while.cond.backedge.sink.split

sw.bb16:                                          ; preds = %if.end5
  %call18 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %arg) #11
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp19.not = icmp eq i32 %12, 1
  br i1 %cmp19.not, label %do.body22, label %sw.bb16.while.cond.backedge_crit_edge

sw.bb16.while.cond.backedge_crit_edge:            ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

do.body22:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rd_set_configfs_dev_params.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rd_set_configfs_dev_params, %if.then34)) #11
          to label %while.cond.backedge.sink.split [label %if.then34], !srcloc !108

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arg, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rd_set_configfs_dev_params.__UNIQUE_ID_ddebug254, ptr noundef nonnull @.str.23, i32 noundef %14) #11
  br label %while.cond.backedge.sink.split

sw.bb40:                                          ; preds = %if.end5
  %call42 = call i32 @match_int(ptr noundef nonnull %args, ptr noundef nonnull %arg) #11
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp43.not = icmp eq i32 %16, 1
  br i1 %cmp43.not, label %do.body46, label %sw.bb40.while.cond.backedge_crit_edge

sw.bb40.while.cond.backedge_crit_edge:            ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

do.body46:                                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rd_set_configfs_dev_params.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rd_set_configfs_dev_params, %if.then58)) #11
          to label %while.cond.backedge.sink.split [label %if.then58], !srcloc !108

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arg, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rd_set_configfs_dev_params.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.24, i32 noundef %18) #11
  br label %while.cond.backedge.sink.split

while.cond.backedge.sink.split:                   ; preds = %if.then58, %do.body46, %if.then34, %do.body22, %if.then13, %sw.bb
  %.sink87 = phi i32 [ 1, %sw.bb ], [ 1, %if.then13 ], [ 2, %do.body22 ], [ 2, %if.then34 ], [ 4, %do.body46 ], [ 4, %if.then58 ]
  %19 = ptrtoint ptr %rd_flags62 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rd_flags62, align 16
  %or = or i32 %20, %.sink87
  store i32 %or, ptr %rd_flags62, align 16
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %while.cond.backedge.sink.split, %sw.bb40.while.cond.backedge_crit_edge, %sw.bb16.while.cond.backedge_crit_edge, %if.end5.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %call2 = call ptr @strsep(ptr noundef nonnull %opts, ptr noundef nonnull @.str.20) #11
  %cmp.not = icmp eq ptr %call2, null
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  call void @kfree(ptr noundef nonnull %call1) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %while.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opts) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rd_show_configfs_dev_params(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %b) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_dev_id = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %rd_dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rd_dev_id, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %b, ptr noundef nonnull @.str.28, i32 noundef %1)
  %add.ptr = getelementptr i8, ptr %b, i32 %call1
  %rd_page_count = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %rd_page_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rd_page_count, align 8
  %sg_table_count = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %sg_table_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sg_table_count, align 4
  %rd_flags = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %rd_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rd_flags, align 16
  %and = lshr i32 %7, 1
  %and.lobit = and i32 %and, 1
  %and4 = lshr i32 %7, 2
  %and4.lobit = and i32 %and4, 1
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.29, i32 noundef %3, i32 noundef 4096, i32 noundef %5, i32 noundef %and.lobit, i32 noundef %and4.lobit)
  %add = add i32 %call10, %call1
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rd_parse_cdb(ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sbc_parse_cdb(ptr noundef %cmd, ptr noundef nonnull @rd_sbc_ops) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rd_get_device_type(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_flags = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %rd_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rd_flags, align 16
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @sbc_get_device_type(ptr noundef %dev) #11
  br label %return

return:                                           ; preds = %if.else, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.else ], [ 63, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @rd_get_blocks(ptr nocapture noundef readonly %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_page_count = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %rd_page_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rd_page_count, align 8
  %mul = shl i32 %1, 12
  %block_size = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 21
  %2 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block_size, align 8
  %div = udiv i32 %mul, %3
  %sub = add i32 %div, -1
  %conv = zext i32 %sub to i64
  ret i64 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rd_init_prot(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pi_prot_type = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 12
  %0 = ptrtoint ptr %pi_prot_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pi_prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %rd_flags.i = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %rd_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rd_flags.i, align 16
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %block_size = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 39, i32 21
  %4 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_size, align 8
  %prot_length = getelementptr inbounds %struct.se_device, ptr %dev, i32 0, i32 48
  %6 = ptrtoint ptr %prot_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prot_length, align 8
  %rd_page_count.i = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %rd_page_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rd_page_count.i, align 8
  %mul.i = mul i32 %9, %7
  %div.i = udiv i32 %mul.i, %5
  %add.i = add i32 %div.i, 1
  %div1.i = udiv i32 %add.i, 3276
  %add2.i = add nuw nsw i32 %div1.i, 1
  %10 = shl nuw nsw i32 %add2.i, 7
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #15
  %tobool3.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %if.end5.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  %sg_prot_array.i = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 7
  %11 = ptrtoint ptr %sg_prot_array.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i.i, ptr %sg_prot_array.i, align 8
  %sg_prot_count.i = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 5
  %12 = ptrtoint ptr %sg_prot_count.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add2.i, ptr %sg_prot_count.i, align 32
  %call6.i = tail call fastcc i32 @rd_allocate_sgl_table(ptr noundef nonnull %call8.i.i.i, i32 noundef %add.i, i8 noundef zeroext -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %do.body.i, label %if.end5.i.cleanup_crit_edge

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rd_build_prot_space.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rd_init_prot, %if.then14.i)) #11
          to label %cleanup [label %if.then14.i], !srcloc !108

if.then14.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %rd_host.i = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 8
  %13 = ptrtoint ptr %rd_host.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rd_host.i, align 4
  %rd_host_id.i = getelementptr inbounds %struct.rd_host, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %rd_host_id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rd_host_id.i, align 4
  %rd_dev_id.i = getelementptr inbounds %struct.rd_dev, ptr %dev, i32 0, i32 2
  %17 = ptrtoint ptr %rd_dev_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rd_dev_id.i, align 4
  %19 = ptrtoint ptr %sg_prot_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sg_prot_count.i, align 32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rd_build_prot_space.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.41, i32 noundef %16, i32 noundef %18, i32 noundef %add.i, i32 noundef %20) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then14.i, %do.body.i, %if.end5.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ %call6.i, %if.end5.i.cleanup_crit_edge ], [ 0, %if.then14.i ], [ 0, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rd_free_prot(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rd_release_prot_space(ptr noundef %dev)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rd_build_device_space(ptr nocapture noundef %rd_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rd_page_count = getelementptr inbounds %struct.rd_dev, ptr %rd_dev, i32 0, i32 3
  %0 = ptrtoint ptr %rd_page_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rd_page_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %rd_flags = getelementptr inbounds %struct.rd_dev, ptr %rd_dev, i32 0, i32 1
  %2 = ptrtoint ptr %rd_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rd_flags, align 16
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %div = udiv i32 %1, 3276
  %add = add nuw nsw i32 %div, 1
  %4 = shl nuw nsw i32 %add, 7
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #15
  %tobool6.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %sg_table_array = getelementptr inbounds %struct.rd_dev, ptr %rd_dev, i32 0, i32 6
  %5 = ptrtoint ptr %sg_table_array to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %sg_table_array, align 4
  %sg_table_count = getelementptr inbounds %struct.rd_dev, ptr %rd_dev, i32 0, i32 4
  %6 = ptrtoint ptr %sg_table_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %sg_table_count, align 4
  %call9 = tail call fastcc i32 @rd_allocate_sgl_table(ptr noundef nonnull %call8.i.i, i32 noundef %1, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rd_build_device_space.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rd_build_device_space, %if.then19)) #11
          to label %cleanup [label %if.then19], !srcloc !108

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %rd_host = getelementptr inbounds %struct.rd_dev, ptr %rd_dev, i32 0, i32 8
  %7 = ptrtoint ptr %rd_host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rd_host, align 4
  %rd_host_id = getelementptr inbounds %struct.rd_host, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %rd_host_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rd_host_id, align 4
  %rd_dev_id = getelementptr inbounds %struct.rd_dev, ptr %rd_dev, i32 0, i32 2
  %11 = ptrtoint ptr %rd_dev_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rd_dev_id, align 4
  %13 = ptrtoint ptr %rd_page_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rd_page_count, align 8
  %15 = ptrtoint ptr %sg_table_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sg_table_count, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rd_build_device_space.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.13, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %do.body13, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rd_release_device_space(ptr nocapture noundef %rd_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_table_array = getelementptr inbounds %struct.rd_dev, ptr %rd_dev, i32 0, i32 6
  %0 = ptrtoint ptr %sg_table_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg_table_array, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sg_table_count = getelementptr inbounds %struct.rd_dev, ptr %rd_dev, i32 0, i32 4
  %2 = ptrtoint ptr %sg_table_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg_table_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.body.i_crit_edge

lor.lhs.false.for.body.i_crit_edge:               ; preds = %lor.lhs.false
  br label %for.body.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %lor.lhs.false.for.body.i_crit_edge
  %page_count.08.i = phi i32 [ %page_count.1.lcssa.i, %for.end.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.for.body.i_crit_edge ]
  %i.07.i = phi i32 [ %inc9.i, %for.end.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.for.body.i_crit_edge ]
  %sg_table1.i = getelementptr %struct.rd_dev_sg_table, ptr %1, i32 %i.07.i, i32 3
  %4 = ptrtoint ptr %sg_table1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg_table1.i, align 4
  %rd_sg_count.i = getelementptr %struct.rd_dev_sg_table, ptr %1, i32 %i.07.i, i32 2
  %6 = ptrtoint ptr %rd_sg_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rd_sg_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp43.not.i = icmp eq i32 %7, 0
  br i1 %cmp43.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body5.i_crit_edge

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %page_count.15.i = phi i32 [ %page_count.2.i, %for.inc.i.for.body5.i_crit_edge ], [ %page_count.08.i, %for.body.i.for.body5.i_crit_edge ]
  %j.04.i = phi i32 [ %inc7.i, %for.inc.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.scatterlist, ptr %5, i32 %j.04.i
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6.i, align 4
  %and.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !110

do.body2.i.i:                                     ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !111
  unreachable

sg_page.exit.i:                                   ; preds = %for.body5.i
  %and.i.i = and i32 %9, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %sg_page.exit.i.for.inc.i_crit_edge, label %if.then.i

sg_page.exit.i.for.inc.i_crit_edge:               ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = inttoptr i32 %and.i.i to ptr
  tail call void @__free_pages(ptr noundef nonnull %10, i32 noundef 0) #11
  %inc.i = add i32 %page_count.15.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %sg_page.exit.i.for.inc.i_crit_edge
  %page_count.2.i = phi i32 [ %inc.i, %if.then.i ], [ %page_count.15.i, %sg_page.exit.i.for.inc.i_crit_edge ]
  %inc7.i = add nuw i32 %j.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc7.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body5.i_crit_edge

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %page_count.1.lcssa.i = phi i32 [ %page_count.08.i, %for.body.i.for.end.i_crit_edge ], [ %page_count.2.i, %for.inc.i.for.end.i_crit_edge ]
  tail call void @kfree(ptr noundef %5) #11
  %inc9.i = add nuw i32 %i.07.i, 1
  %exitcond10.not.i = icmp eq i32 %inc9.i, %3
  br i1 %exitcond10.not.i, label %rd_release_sgl_table.exit, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

rd_release_sgl_table.exit:                        ; preds = %for.end.i
  tail call void @kfree(ptr noundef nonnull %1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rd_release_device_space.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rd_release_device_space, %if.then8)) #11
          to label %do.end [label %if.then8], !srcloc !108

if.then8:                                         ; preds = %rd_release_sgl_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rd_host = getelementptr inbounds %struct.rd_dev, ptr %rd_dev, i32 0, i32 8
  %11 = ptrtoint ptr %rd_host to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rd_host, align 4
  %rd_host_id = getelementptr inbounds %struct.rd_host, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %rd_host_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rd_host_id, align 4
  %rd_dev_id = getelementptr inbounds %struct.rd_dev, ptr %rd_dev, i32 0, i32 2
  %15 = ptrtoint ptr %rd_dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rd_dev_id, align 4
  %17 = ptrtoint ptr %sg_table_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sg_table_count, align 4
  %mul = shl i32 %page_count.1.lcssa.i, 12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rd_release_device_space.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.19, i32 noundef %14, i32 noundef %16, i32 noundef %page_count.1.lcssa.i, i32 noundef %18, i32 noundef %mul) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %rd_release_sgl_table.exit
  %19 = ptrtoint ptr %sg_table_array to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %sg_table_array, align 4
  %20 = ptrtoint ptr %sg_table_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %sg_table_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rd_allocate_sgl_table(ptr nocapture noundef %sg_table, i32 noundef %total_sg_needed, i8 noundef zeroext %init_payload) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_sg_needed)
  %tobool.not15 = icmp eq i32 %total_sg_needed, 0
  br i1 %tobool.not15, label %entry.cleanup30_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup30

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %entry.while.body_crit_edge
  %page_offset.019 = phi i32 [ %add15, %cleanup.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %i.017 = phi i32 [ %inc, %cleanup.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %total_sg_needed.addr.016 = phi i32 [ %sub29, %cleanup.while.body_crit_edge ], [ %total_sg_needed, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3276, i32 %total_sg_needed.addr.016)
  %cmp = icmp ugt i32 %total_sg_needed.addr.016, 3276
  %0 = tail call i32 @llvm.umin.i32(i32 %total_sg_needed.addr.016, i32 3276)
  %chain_entry.0 = zext i1 %cmp to i32
  %add = add nuw nsw i32 %0, %chain_entry.0
  %1 = mul nuw nsw i32 %add, 20
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %1, i32 noundef 3264) #15
  %tobool2.not = icmp eq ptr %call8.i, null
  br i1 %tobool2.not, label %while.body.cleanup30_crit_edge, label %if.end4

while.body.cleanup30_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup30

if.end4:                                          ; preds = %while.body
  tail call void @sg_init_table(ptr noundef nonnull %call8.i, i32 noundef %add) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.017)
  %cmp6.not = icmp eq i32 %i.017, 0
  br i1 %cmp6.not, label %if.end4.if.end10_crit_edge, label %if.then7

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %i.017, -1
  %sg_table8 = getelementptr %struct.rd_dev_sg_table, ptr %sg_table, i32 %sub, i32 3
  %2 = ptrtoint ptr %sg_table8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg_table8, align 4
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %3, i32 3276
  %offset.i.i = getelementptr %struct.scatterlist, ptr %3, i32 3276, i32 1
  %4 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %offset.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %3, i32 3276, i32 2
  %5 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %length.i.i, align 4
  %6 = ptrtoint ptr %call8.i to i32
  %and.i.i = or i32 %6, 1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and.i.i, ptr %arrayidx.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end4.if.end10_crit_edge
  %arrayidx11 = getelementptr %struct.rd_dev_sg_table, ptr %sg_table, i32 %i.017
  %sg_table12 = getelementptr %struct.rd_dev_sg_table, ptr %sg_table, i32 %i.017, i32 3
  %8 = ptrtoint ptr %sg_table12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i, ptr %sg_table12, align 4
  %rd_sg_count = getelementptr %struct.rd_dev_sg_table, ptr %sg_table, i32 %i.017, i32 2
  %9 = ptrtoint ptr %rd_sg_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %0, ptr %rd_sg_count, align 8
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %page_offset.019, ptr %arrayidx11, align 128
  %add15 = add i32 %page_offset.019, %0
  %sub16 = add i32 %add15, -1
  %inc = add i32 %i.017, 1
  %page_end_offset = getelementptr %struct.rd_dev_sg_table, ptr %sg_table, i32 %i.017, i32 1
  %11 = ptrtoint ptr %page_end_offset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub16, ptr %page_end_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1813.not = icmp eq i32 %0, 0
  br i1 %cmp1813.not, label %if.end10.cleanup_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %kunmap.exit.for.body_crit_edge, %if.end10.for.body_crit_edge
  %j.014 = phi i32 [ %inc27, %kunmap.exit.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %tobool20.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool20.not, label %do.end, label %if.end23

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #16
  br label %cleanup30

if.end23:                                         ; preds = %for.body
  %arrayidx24 = getelementptr %struct.scatterlist, ptr %call8.i, i32 %j.014
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx24, align 4
  %14 = ptrtoint ptr %call38.i.i.i to i32
  %and2.i = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %do.body11.i, label %do.body5.i, !prof !110

do.body5.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !112
  unreachable

do.body11.i:                                      ; preds = %if.end23
  %and.i.i1 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i1)
  %tobool.i.not.i = icmp eq i32 %and.i.i1, 0
  br i1 %tobool.i.not.i, label %sg_assign_page.exit, label %do.body19.i, !prof !110

do.body19.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !113
  unreachable

sg_assign_page.exit:                              ; preds = %do.body11.i
  %and.i = and i32 %13, 3
  %or.i = or i32 %and.i, %14
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %arrayidx24, align 4
  %length = getelementptr %struct.scatterlist, ptr %call8.i, i32 %j.014, i32 2
  %16 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4096, ptr %length, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 44) #11
  %17 = ptrtoint ptr %call38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call38.i.i.i, align 4
  %shr.i.i = lshr i32 %18, 30
  %19 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %shr.i.i, label %sg_assign_page.exit.if.then.i_crit_edge [
    i32 2, label %sg_assign_page.exit.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

sg_assign_page.exit.if.else.i_crit_edge:          ; preds = %sg_assign_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

sg_assign_page.exit.if.then.i_crit_edge:          ; preds = %sg_assign_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %sg_assign_page.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %20 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp2.i.not.i = icmp eq i32 %20, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %sg_assign_page.exit.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #11
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %sg_assign_page.exit.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef nonnull %call38.i.i.i) #11
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %21 = zext i8 %init_payload to i32
  %22 = call ptr @memset(ptr %addr.0.i, i32 %21, i32 4096)
  tail call void @__might_sleep(ptr noundef nonnull @.str.17, i32 noundef 55) #11
  %23 = ptrtoint ptr %call38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call38.i.i.i, align 4
  %shr.i.i3 = lshr i32 %24, 30
  %25 = zext i32 %shr.i.i3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %shr.i.i3, label %kmap.exit.kunmap.exit_crit_edge [
    i32 2, label %kmap.exit.if.end.i6_crit_edge
    i32 3, label %is_highmem_idx.exit.i5
  ]

kmap.exit.if.end.i6_crit_edge:                    ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i6

kmap.exit.kunmap.exit_crit_edge:                  ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunmap.exit

is_highmem_idx.exit.i5:                           ; preds = %kmap.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %26 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp2.i.not.i4 = icmp eq i32 %26, 2
  br i1 %cmp2.i.not.i4, label %is_highmem_idx.exit.i5.if.end.i6_crit_edge, label %is_highmem_idx.exit.i5.kunmap.exit_crit_edge

is_highmem_idx.exit.i5.kunmap.exit_crit_edge:     ; preds = %is_highmem_idx.exit.i5
  call void @__sanitizer_cov_trace_pc() #13
  br label %kunmap.exit

is_highmem_idx.exit.i5.if.end.i6_crit_edge:       ; preds = %is_highmem_idx.exit.i5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i6

if.end.i6:                                        ; preds = %is_highmem_idx.exit.i5.if.end.i6_crit_edge, %kmap.exit.if.end.i6_crit_edge
  tail call void @kunmap_high(ptr noundef nonnull %call38.i.i.i) #11
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i6, %is_highmem_idx.exit.i5.kunmap.exit_crit_edge, %kmap.exit.kunmap.exit_crit_edge
  %inc27 = add nuw nsw i32 %j.014, 1
  %exitcond.not = icmp eq i32 %inc27, %0
  br i1 %exitcond.not, label %kunmap.exit.cleanup_crit_edge, label %kunmap.exit.for.body_crit_edge

kunmap.exit.for.body_crit_edge:                   ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

kunmap.exit.cleanup_crit_edge:                    ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %kunmap.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  %sub29 = sub i32 %total_sg_needed.addr.016, %0
  %tobool.not = icmp eq i32 %sub29, 0
  br i1 %tobool.not, label %cleanup.cleanup30_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.cleanup30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup30

cleanup30:                                        ; preds = %cleanup.cleanup30_crit_edge, %do.end, %while.body.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.2 = phi i32 [ -12, %do.end ], [ 0, %entry.cleanup30_crit_edge ], [ 0, %cleanup.cleanup30_crit_edge ], [ -12, %while.body.cleanup30_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rd_dev_call_rcu(ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %p, i32 -3776
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_int(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbc_parse_cdb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rd_execute_rw(ptr noundef %cmd, ptr noundef %sgl, i32 noundef %sgl_nents, i32 noundef %data_direction) #2 align 64 {
entry:
  %m = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev1 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %m) #11
  %2 = call ptr @memset(ptr %m, i32 255, i32 44)
  %rd_flags = getelementptr inbounds %struct.rd_dev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %rd_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rd_flags, align 16
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #11
  br label %cleanup322

if.end:                                           ; preds = %entry
  %t_task_lba = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %5 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %t_task_lba, align 8
  %block_size = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %7 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %block_size, align 8
  %conv = zext i32 %8 to i64
  %mul = mul i64 %6, %conv
  %9 = trunc i64 %mul to i32
  %conv7 = and i32 %9, 4095
  %shr = lshr i64 %mul, 12
  %conv190 = trunc i64 %shr to i32
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %10 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_length, align 4
  %div.i = udiv i32 %conv190, 3276
  %sg_table_count.i = getelementptr inbounds %struct.rd_dev, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %sg_table_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sg_table_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %13)
  %cmp.i = icmp ult i32 %div.i, %13
  br i1 %cmp.i, label %if.then.i, label %if.end.rd_get_sg_table.exit.thread_crit_edge

if.end.rd_get_sg_table.exit.thread_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rd_get_sg_table.exit.thread

if.then.i:                                        ; preds = %if.end
  %sg_table_array.i = getelementptr inbounds %struct.rd_dev, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %sg_table_array.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sg_table_array.i, align 4
  %arrayidx.i = getelementptr %struct.rd_dev_sg_table, ptr %15, i32 %div.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %conv190)
  %cmp1.not.i = icmp ugt i32 %17, %conv190
  br i1 %cmp1.not.i, label %if.then.i.rd_get_sg_table.exit.thread_crit_edge, label %land.lhs.true.i

if.then.i.rd_get_sg_table.exit.thread_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rd_get_sg_table.exit.thread

land.lhs.true.i:                                  ; preds = %if.then.i
  %page_end_offset.i = getelementptr %struct.rd_dev_sg_table, ptr %15, i32 %div.i, i32 1
  %18 = ptrtoint ptr %page_end_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %page_end_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv190)
  %cmp2.not.i = icmp ult i32 %19, %conv190
  br i1 %cmp2.not.i, label %land.lhs.true.i.rd_get_sg_table.exit.thread_crit_edge, label %rd_get_sg_table.exit

land.lhs.true.i.rd_get_sg_table.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rd_get_sg_table.exit.thread

rd_get_sg_table.exit.thread:                      ; preds = %land.lhs.true.i.rd_get_sg_table.exit.thread_crit_edge, %if.then.i.rd_get_sg_table.exit.thread_crit_edge, %if.end.rd_get_sg_table.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv190) #16
  br label %cleanup322

rd_get_sg_table.exit:                             ; preds = %land.lhs.true.i
  %tobool192.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool192.not, label %rd_get_sg_table.exit.cleanup322_crit_edge, label %if.end194

rd_get_sg_table.exit.cleanup322_crit_edge:        ; preds = %rd_get_sg_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup322

if.end194:                                        ; preds = %rd_get_sg_table.exit
  %sg_table = getelementptr %struct.rd_dev_sg_table, ptr %15, i32 %div.i, i32 3
  %20 = ptrtoint ptr %sg_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sg_table, align 4
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 128
  %sub195 = sub i32 %conv190, %23
  %arrayidx = getelementptr %struct.scatterlist, ptr %21, i32 %sub195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rd_execute_rw.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rd_execute_rw, %if.then205)) #11
          to label %do.end [label %if.then205], !srcloc !108

if.then205:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #13
  %rd_dev_id = getelementptr inbounds %struct.rd_dev, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %rd_dev_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rd_dev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %data_direction)
  %cmp206 = icmp eq i32 %data_direction, 2
  %cond208 = select i1 %cmp206, ptr @.str.32, ptr @.str.33
  %26 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %t_task_lba, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rd_execute_rw.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.31, i32 noundef %25, ptr noundef nonnull %cond208, i64 noundef %27, i32 noundef %11, i32 noundef %conv190, i32 noundef %conv7) #11
  br label %do.end

do.end:                                           ; preds = %if.then205, %if.end194
  %prot_type = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 50
  %28 = ptrtoint ptr %prot_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool211.not = icmp eq i32 %29, 0
  br i1 %tobool211.not, label %do.end.if.end223_crit_edge, label %land.lhs.true212

do.end.if.end223_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end223

land.lhs.true212:                                 ; preds = %do.end
  %pi_prot_type = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 12
  %30 = ptrtoint ptr %pi_prot_type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pi_prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool214.not = icmp ne i32 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %data_direction)
  %cmp216 = icmp eq i32 %data_direction, 1
  %or.cond = and i1 %cmp216, %tobool214.not
  br i1 %or.cond, label %if.then218, label %land.lhs.true212.if.end223_crit_edge

land.lhs.true212.if.end223_crit_edge:             ; preds = %land.lhs.true212
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end223

if.then218:                                       ; preds = %land.lhs.true212
  %call219 = tail call fastcc i32 @rd_do_prot_rw(ptr noundef %cmd, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.then218.if.end223_crit_edge, label %if.then218.cleanup322_crit_edge

if.then218.cleanup322_crit_edge:                  ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup322

if.then218.if.end223_crit_edge:                   ; preds = %if.then218
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end223

if.end223:                                        ; preds = %if.then218.if.end223_crit_edge, %land.lhs.true212.if.end223_crit_edge, %do.end.if.end223_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %data_direction)
  %cmp225 = icmp eq i32 %data_direction, 2
  %cond227 = select i1 %cmp225, i32 2, i32 4
  call void @sg_miter_start(ptr noundef nonnull %m, ptr noundef %sgl, i32 noundef %sgl_nents, i32 noundef %cond227) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool228.not509 = icmp eq i32 %11, 0
  br i1 %tobool228.not509, label %if.end223.while.end_crit_edge, label %while.body.lr.ph

if.end223.while.end_crit_edge:                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end223
  %length = getelementptr inbounds %struct.sg_mapping_iter, ptr %m, i32 0, i32 2
  %rd_dev_id275 = getelementptr inbounds %struct.rd_dev, ptr %1, i32 0, i32 2
  %consumed = getelementptr inbounds %struct.sg_mapping_iter, ptr %m, i32 0, i32 3
  %addr286 = getelementptr inbounds %struct.sg_mapping_iter, ptr %m, i32 0, i32 1
  %call229525 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %m) #11
  %32 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool230.not526 = icmp eq i32 %33, 0
  br i1 %tobool230.not526, label %while.body.lr.ph.do.body232_crit_edge, label %if.end250.lr.ph

while.body.lr.ph.do.body232_crit_edge:            ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body232

if.end250.lr.ph:                                  ; preds = %while.body.lr.ph
  %sub224 = sub nuw nsw i32 4096, %conv7
  br label %if.end250

do.body232:                                       ; preds = %cleanup.do.body232_crit_edge, %while.body.lr.ph.do.body232_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rd_execute_rw.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rd_execute_rw, %if.then244)) #11
          to label %do.end249 [label %if.then244], !srcloc !108

if.then244:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %rd_dev_id275 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rd_dev_id275, align 4
  %36 = ptrtoint ptr %addr286 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addr286, align 4
  %38 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rd_execute_rw.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.34, i32 noundef %35, ptr noundef %37, i32 noundef %39) #11
  br label %do.end249

do.end249:                                        ; preds = %if.then244, %do.body232
  call void @sg_miter_stop(ptr noundef nonnull %m) #11
  br label %cleanup322

if.end250:                                        ; preds = %cleanup.if.end250_crit_edge, %if.end250.lr.ph
  %40 = phi i32 [ %33, %if.end250.lr.ph ], [ %67, %cleanup.if.end250_crit_edge ]
  %src_len.0510534 = phi i32 [ %sub224, %if.end250.lr.ph ], [ %src_len.1, %cleanup.if.end250_crit_edge ]
  %rd_page.0511532 = phi i32 [ %conv190, %if.end250.lr.ph ], [ %rd_page.1, %cleanup.if.end250_crit_edge ]
  %rd_size.0512531 = phi i32 [ %11, %if.end250.lr.ph ], [ %sub288, %cleanup.if.end250_crit_edge ]
  %rd_offset.0514529 = phi i32 [ %conv7, %if.end250.lr.ph ], [ %rd_offset.1, %cleanup.if.end250_crit_edge ]
  %rd_sg.0515528 = phi ptr [ %arrayidx, %if.end250.lr.ph ], [ %rd_sg.1, %cleanup.if.end250_crit_edge ]
  %table.0516527 = phi ptr [ %arrayidx.i, %if.end250.lr.ph ], [ %table.1, %cleanup.if.end250_crit_edge ]
  %41 = call i32 @llvm.umin.i32(i32 %40, i32 %src_len.0510534)
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %rd_size.0512531)
  %cmp259 = icmp ugt i32 %41, %rd_size.0512531
  br i1 %cmp259, label %do.body262, label %if.end250.if.end279_crit_edge

if.end250.if.end279_crit_edge:                    ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end279

do.body262:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rd_execute_rw.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rd_execute_rw, %if.then274)) #11
          to label %if.end279 [label %if.then274], !srcloc !108

if.then274:                                       ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %rd_dev_id275 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rd_dev_id275, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rd_execute_rw.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.35, i32 noundef %43, i32 noundef %rd_page.0511532, i32 noundef %rd_offset.0514529, i32 noundef %rd_size.0512531) #11
  br label %if.end279

if.end279:                                        ; preds = %if.then274, %do.body262, %if.end250.if.end279_crit_edge
  %len.0 = phi i32 [ %41, %if.end250.if.end279_crit_edge ], [ %rd_size.0512531, %if.then274 ], [ %rd_size.0512531, %do.body262 ]
  %44 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %len.0, ptr %consumed, align 4
  %45 = ptrtoint ptr %rd_sg.0515528 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rd_sg.0515528, align 4
  %and.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !110

do.body2.i.i:                                     ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !111
  unreachable

sg_virt.exit:                                     ; preds = %if.end279
  %and.i.i = and i32 %46, -4
  %47 = inttoptr i32 %and.i.i to ptr
  %call1.i = call ptr @page_address(ptr noundef %47) #11
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %rd_sg.0515528, i32 0, i32 1
  %48 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %49
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %rd_offset.0514529
  %50 = ptrtoint ptr %addr286 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %addr286, align 4
  br i1 %cmp225, label %if.then283, label %if.else285

if.then283:                                       ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #13
  %52 = call ptr @memcpy(ptr %51, ptr %add.ptr, i32 %len.0)
  br label %if.end287

if.else285:                                       ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #13
  %53 = call ptr @memcpy(ptr %add.ptr, ptr %51, i32 %len.0)
  br label %if.end287

if.end287:                                        ; preds = %if.else285, %if.then283
  %sub288 = sub i32 %rd_size.0512531, %len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub288)
  %tobool289.not = icmp eq i32 %sub288, 0
  br i1 %tobool289.not, label %if.end287.while.end_crit_edge, label %if.end291

if.end287.while.end_crit_edge:                    ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end291:                                        ; preds = %if.end287
  %sub292 = sub i32 %src_len.0510534, %len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub292)
  %tobool293.not = icmp eq i32 %sub292, 0
  br i1 %tobool293.not, label %if.end296, label %if.then294

if.then294:                                       ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #13
  %add295 = add i32 %len.0, %rd_offset.0514529
  br label %cleanup

if.end296:                                        ; preds = %if.end291
  %inc = add i32 %rd_page.0511532, 1
  %page_end_offset = getelementptr inbounds %struct.rd_dev_sg_table, ptr %table.0516527, i32 0, i32 1
  %54 = ptrtoint ptr %page_end_offset to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %page_end_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %55)
  %cmp297.not = icmp ugt i32 %inc, %55
  br i1 %cmp297.not, label %if.end300, label %if.then299

if.then299:                                       ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr = getelementptr %struct.scatterlist, ptr %rd_sg.0515528, i32 1
  br label %cleanup

if.end300:                                        ; preds = %if.end296
  %div.i476 = udiv i32 %inc, 3276
  %56 = ptrtoint ptr %sg_table_count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sg_table_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i476, i32 %57)
  %cmp.i478 = icmp ult i32 %div.i476, %57
  br i1 %cmp.i478, label %if.then.i482, label %if.end300.rd_get_sg_table.exit489.thread_crit_edge

if.end300.rd_get_sg_table.exit489.thread_crit_edge: ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #13
  br label %rd_get_sg_table.exit489.thread

if.then.i482:                                     ; preds = %if.end300
  %58 = ptrtoint ptr %sg_table_array.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sg_table_array.i, align 4
  %arrayidx.i480 = getelementptr %struct.rd_dev_sg_table, ptr %59, i32 %div.i476
  %60 = ptrtoint ptr %arrayidx.i480 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i480, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %inc)
  %cmp1.not.i481 = icmp ugt i32 %61, %inc
  br i1 %cmp1.not.i481, label %if.then.i482.rd_get_sg_table.exit489.thread_crit_edge, label %land.lhs.true.i485

if.then.i482.rd_get_sg_table.exit489.thread_crit_edge: ; preds = %if.then.i482
  call void @__sanitizer_cov_trace_pc() #13
  br label %rd_get_sg_table.exit489.thread

land.lhs.true.i485:                               ; preds = %if.then.i482
  %page_end_offset.i483 = getelementptr %struct.rd_dev_sg_table, ptr %59, i32 %div.i476, i32 1
  %62 = ptrtoint ptr %page_end_offset.i483 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %page_end_offset.i483, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %inc)
  %cmp2.not.i484 = icmp ult i32 %63, %inc
  br i1 %cmp2.not.i484, label %land.lhs.true.i485.rd_get_sg_table.exit489.thread_crit_edge, label %rd_get_sg_table.exit489

land.lhs.true.i485.rd_get_sg_table.exit489.thread_crit_edge: ; preds = %land.lhs.true.i485
  call void @__sanitizer_cov_trace_pc() #13
  br label %rd_get_sg_table.exit489.thread

rd_get_sg_table.exit489.thread:                   ; preds = %land.lhs.true.i485.rd_get_sg_table.exit489.thread_crit_edge, %if.then.i482.rd_get_sg_table.exit489.thread_crit_edge, %if.end300.rd_get_sg_table.exit489.thread_crit_edge
  %call.i486 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %inc) #16
  br label %if.then303

rd_get_sg_table.exit489:                          ; preds = %land.lhs.true.i485
  %tobool302.not = icmp eq ptr %arrayidx.i480, null
  br i1 %tobool302.not, label %rd_get_sg_table.exit489.if.then303_crit_edge, label %if.end304

rd_get_sg_table.exit489.if.then303_crit_edge:     ; preds = %rd_get_sg_table.exit489
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then303

if.then303:                                       ; preds = %rd_get_sg_table.exit489.if.then303_crit_edge, %rd_get_sg_table.exit489.thread
  call void @sg_miter_stop(ptr noundef nonnull %m) #11
  br label %cleanup322

if.end304:                                        ; preds = %rd_get_sg_table.exit489
  call void @__sanitizer_cov_trace_pc() #13
  %sg_table305 = getelementptr %struct.rd_dev_sg_table, ptr %59, i32 %div.i476, i32 3
  %64 = ptrtoint ptr %sg_table305 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sg_table305, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end304, %if.then299, %if.then294
  %src_len.1 = phi i32 [ %sub292, %if.then294 ], [ 4096, %if.then299 ], [ 4096, %if.end304 ]
  %rd_page.1 = phi i32 [ %rd_page.0511532, %if.then294 ], [ %inc, %if.then299 ], [ %inc, %if.end304 ]
  %rd_offset.1 = phi i32 [ %add295, %if.then294 ], [ 0, %if.then299 ], [ 0, %if.end304 ]
  %rd_sg.1 = phi ptr [ %rd_sg.0515528, %if.then294 ], [ %incdec.ptr, %if.then299 ], [ %65, %if.end304 ]
  %table.1 = phi ptr [ %table.0516527, %if.then294 ], [ %table.0516527, %if.then299 ], [ %arrayidx.i480, %if.end304 ]
  %call229 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %m) #11
  %66 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %length, align 4
  %tobool230.not = icmp eq i32 %67, 0
  br i1 %tobool230.not, label %cleanup.do.body232_crit_edge, label %cleanup.if.end250_crit_edge

cleanup.if.end250_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end250

cleanup.do.body232_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body232

while.end:                                        ; preds = %if.end287.while.end_crit_edge, %if.end223.while.end_crit_edge
  call void @sg_miter_stop(ptr noundef nonnull %m) #11
  %68 = ptrtoint ptr %prot_type to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %prot_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool308.not = icmp eq i32 %69, 0
  br i1 %tobool308.not, label %while.end.if.end321_crit_edge, label %land.lhs.true309

while.end.if.end321_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end321

land.lhs.true309:                                 ; preds = %while.end
  %pi_prot_type311 = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 12
  %70 = ptrtoint ptr %pi_prot_type311 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pi_prot_type311, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool312.not = icmp ne i32 %71, 0
  %72 = and i1 %cmp225, %tobool312.not
  br i1 %72, label %if.then316, label %land.lhs.true309.if.end321_crit_edge

land.lhs.true309.if.end321_crit_edge:             ; preds = %land.lhs.true309
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end321

if.then316:                                       ; preds = %land.lhs.true309
  %call317 = call fastcc i32 @rd_do_prot_rw(ptr noundef %cmd, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %tobool318.not = icmp eq i32 %call317, 0
  br i1 %tobool318.not, label %if.then316.if.end321_crit_edge, label %if.then316.cleanup322_crit_edge

if.then316.cleanup322_crit_edge:                  ; preds = %if.then316
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup322

if.then316.if.end321_crit_edge:                   ; preds = %if.then316
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end321

if.end321:                                        ; preds = %if.then316.if.end321_crit_edge, %land.lhs.true309.if.end321_crit_edge, %while.end.if.end321_crit_edge
  call void @target_complete_cmd(ptr noundef %cmd, i8 noundef zeroext 0) #11
  br label %cleanup322

cleanup322:                                       ; preds = %if.end321, %if.then316.cleanup322_crit_edge, %if.then303, %do.end249, %if.then218.cleanup322_crit_edge, %rd_get_sg_table.exit.cleanup322_crit_edge, %rd_get_sg_table.exit.thread, %if.then
  %retval.2 = phi i32 [ 0, %if.then ], [ 0, %if.end321 ], [ 10, %rd_get_sg_table.exit.cleanup322_crit_edge ], [ %call219, %if.then218.cleanup322_crit_edge ], [ %call317, %if.then316.cleanup322_crit_edge ], [ 10, %rd_get_sg_table.exit.thread ], [ 3, %do.end249 ], [ 10, %if.then303 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %m) #11
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_complete_cmd(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rd_do_prot_rw(ptr noundef %cmd, i1 noundef zeroext %is_read) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %se_dev1 = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 19
  %0 = ptrtoint ptr %se_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_dev1, align 4
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 12
  %2 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_length, align 4
  %block_size = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 21
  %4 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_size, align 8
  %div = udiv i32 %3, %5
  %t_task_lba = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 32
  %6 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %t_task_lba, align 8
  %prot_length = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 48
  %8 = ptrtoint ptr %prot_length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %prot_length, align 8
  %conv = sext i32 %9 to i64
  %mul = mul i64 %7, %conv
  %10 = trunc i64 %mul to i32
  %conv5 = and i32 %10, 4095
  %shr = lshr i64 %mul, 12
  %conv187 = trunc i64 %shr to i32
  %div.i = udiv i32 %conv187, 3276
  %sg_prot_count.i = getelementptr inbounds %struct.rd_dev, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %sg_prot_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sg_prot_count.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %12)
  %cmp.i = icmp ult i32 %div.i, %12
  br i1 %cmp.i, label %if.then.i, label %entry.rd_get_prot_table.exit.thread_crit_edge

entry.rd_get_prot_table.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rd_get_prot_table.exit.thread

if.then.i:                                        ; preds = %entry
  %sg_prot_array.i = getelementptr inbounds %struct.rd_dev, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %sg_prot_array.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sg_prot_array.i, align 8
  %arrayidx.i = getelementptr %struct.rd_dev_sg_table, ptr %14, i32 %div.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv187)
  %cmp1.not.i = icmp ugt i32 %16, %conv187
  br i1 %cmp1.not.i, label %if.then.i.rd_get_prot_table.exit.thread_crit_edge, label %land.lhs.true.i

if.then.i.rd_get_prot_table.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rd_get_prot_table.exit.thread

land.lhs.true.i:                                  ; preds = %if.then.i
  %page_end_offset.i = getelementptr %struct.rd_dev_sg_table, ptr %14, i32 %div.i, i32 1
  %17 = ptrtoint ptr %page_end_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %page_end_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv187)
  %cmp2.not.i = icmp ult i32 %18, %conv187
  br i1 %cmp2.not.i, label %land.lhs.true.i.rd_get_prot_table.exit.thread_crit_edge, label %rd_get_prot_table.exit

land.lhs.true.i.rd_get_prot_table.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rd_get_prot_table.exit.thread

rd_get_prot_table.exit.thread:                    ; preds = %land.lhs.true.i.rd_get_prot_table.exit.thread_crit_edge, %if.then.i.rd_get_prot_table.exit.thread_crit_edge, %entry.rd_get_prot_table.exit.thread_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %conv187) #16
  br label %cleanup

rd_get_prot_table.exit:                           ; preds = %land.lhs.true.i
  %tobool189.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool189.not, label %rd_get_prot_table.exit.cleanup_crit_edge, label %if.end191

rd_get_prot_table.exit.cleanup_crit_edge:         ; preds = %rd_get_prot_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end191:                                        ; preds = %rd_get_prot_table.exit
  %sg_table = getelementptr %struct.rd_dev_sg_table, ptr %14, i32 %div.i, i32 3
  %19 = ptrtoint ptr %sg_table to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sg_table, align 4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 128
  %sub192 = sub i32 %conv187, %22
  %arrayidx = getelementptr %struct.scatterlist, ptr %20, i32 %sub192
  %pi_prot_verify = getelementptr inbounds %struct.se_device, ptr %1, i32 0, i32 39, i32 14
  %23 = ptrtoint ptr %pi_prot_verify to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pi_prot_verify, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool194.not = icmp eq i8 %24, 0
  br i1 %tobool194.not, label %if.end191.if.then206_crit_edge, label %if.then195

if.end191.if.then206_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then206

if.then195:                                       ; preds = %if.end191
  %25 = ptrtoint ptr %t_task_lba to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %t_task_lba, align 8
  br i1 %is_read, label %if.then197, label %if.else200

if.then197:                                       ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #13
  %call199 = tail call i32 @sbc_dif_verify(ptr noundef %cmd, i64 noundef %26, i32 noundef %div, i32 noundef 0, ptr noundef %arrayidx, i32 noundef %conv5) #11
  br label %if.end204

if.else200:                                       ; preds = %if.then195
  call void @__sanitizer_cov_trace_pc() #13
  %t_prot_sg = getelementptr inbounds %struct.se_cmd, ptr %cmd, i32 0, i32 55
  %27 = ptrtoint ptr %t_prot_sg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %t_prot_sg, align 4
  %call202 = tail call i32 @sbc_dif_verify(ptr noundef %cmd, i64 noundef %26, i32 noundef %div, i32 noundef 0, ptr noundef %28, i32 noundef 0) #11
  br label %if.end204

if.end204:                                        ; preds = %if.else200, %if.then197
  %rc.0 = phi i32 [ %call199, %if.then197 ], [ %call202, %if.else200 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %tobool205.not = icmp eq i32 %rc.0, 0
  br i1 %tobool205.not, label %if.end204.if.then206_crit_edge, label %if.end204.cleanup_crit_edge

if.end204.cleanup_crit_edge:                      ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end204.if.then206_crit_edge:                   ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then206

if.then206:                                       ; preds = %if.end204.if.then206_crit_edge, %if.end191.if.then206_crit_edge
  tail call void @sbc_dif_copy_prot(ptr noundef %cmd, i32 noundef %div, i1 noundef zeroext %is_read, ptr noundef %arrayidx, i32 noundef %conv5) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then206, %if.end204.cleanup_crit_edge, %rd_get_prot_table.exit.cleanup_crit_edge, %rd_get_prot_table.exit.thread
  %retval.0 = phi i32 [ 10, %rd_get_prot_table.exit.cleanup_crit_edge ], [ 0, %if.then206 ], [ %rc.0, %if.end204.cleanup_crit_edge ], [ 10, %rd_get_prot_table.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbc_dif_verify(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbc_dif_copy_prot(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbc_get_device_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rd_release_prot_space(ptr nocapture noundef %rd_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_prot_array = getelementptr inbounds %struct.rd_dev, ptr %rd_dev, i32 0, i32 7
  %0 = ptrtoint ptr %sg_prot_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg_prot_array, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sg_prot_count = getelementptr inbounds %struct.rd_dev, ptr %rd_dev, i32 0, i32 5
  %2 = ptrtoint ptr %sg_prot_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg_prot_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.body.i_crit_edge

lor.lhs.false.for.body.i_crit_edge:               ; preds = %lor.lhs.false
  br label %for.body.i

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %lor.lhs.false.for.body.i_crit_edge
  %page_count.08.i = phi i32 [ %page_count.1.lcssa.i, %for.end.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.for.body.i_crit_edge ]
  %i.07.i = phi i32 [ %inc9.i, %for.end.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.for.body.i_crit_edge ]
  %sg_table1.i = getelementptr %struct.rd_dev_sg_table, ptr %1, i32 %i.07.i, i32 3
  %4 = ptrtoint ptr %sg_table1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg_table1.i, align 4
  %rd_sg_count.i = getelementptr %struct.rd_dev_sg_table, ptr %1, i32 %i.07.i, i32 2
  %6 = ptrtoint ptr %rd_sg_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rd_sg_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp43.not.i = icmp eq i32 %7, 0
  br i1 %cmp43.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body5.i_crit_edge

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %page_count.15.i = phi i32 [ %page_count.2.i, %for.inc.i.for.body5.i_crit_edge ], [ %page_count.08.i, %for.body.i.for.body5.i_crit_edge ]
  %j.04.i = phi i32 [ %inc7.i, %for.inc.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %arrayidx6.i = getelementptr %struct.scatterlist, ptr %5, i32 %j.04.i
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6.i, align 4
  %and.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_page.exit.i, label %do.body2.i.i, !prof !110

do.body2.i.i:                                     ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !111
  unreachable

sg_page.exit.i:                                   ; preds = %for.body5.i
  %and.i.i = and i32 %9, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %sg_page.exit.i.for.inc.i_crit_edge, label %if.then.i

sg_page.exit.i.for.inc.i_crit_edge:               ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then.i:                                        ; preds = %sg_page.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = inttoptr i32 %and.i.i to ptr
  tail call void @__free_pages(ptr noundef nonnull %10, i32 noundef 0) #11
  %inc.i = add i32 %page_count.15.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %sg_page.exit.i.for.inc.i_crit_edge
  %page_count.2.i = phi i32 [ %inc.i, %if.then.i ], [ %page_count.15.i, %sg_page.exit.i.for.inc.i_crit_edge ]
  %inc7.i = add nuw i32 %j.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc7.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body5.i_crit_edge

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %page_count.1.lcssa.i = phi i32 [ %page_count.08.i, %for.body.i.for.end.i_crit_edge ], [ %page_count.2.i, %for.inc.i.for.end.i_crit_edge ]
  tail call void @kfree(ptr noundef %5) #11
  %inc9.i = add nuw i32 %i.07.i, 1
  %exitcond10.not.i = icmp eq i32 %inc9.i, %3
  br i1 %exitcond10.not.i, label %rd_release_sgl_table.exit, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

rd_release_sgl_table.exit:                        ; preds = %for.end.i
  tail call void @kfree(ptr noundef nonnull %1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rd_release_prot_space.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rd_release_prot_space, %if.then8)) #11
          to label %do.end [label %if.then8], !srcloc !108

if.then8:                                         ; preds = %rd_release_sgl_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rd_host = getelementptr inbounds %struct.rd_dev, ptr %rd_dev, i32 0, i32 8
  %11 = ptrtoint ptr %rd_host to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rd_host, align 4
  %rd_host_id = getelementptr inbounds %struct.rd_host, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %rd_host_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rd_host_id, align 4
  %rd_dev_id = getelementptr inbounds %struct.rd_dev, ptr %rd_dev, i32 0, i32 2
  %15 = ptrtoint ptr %rd_dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rd_dev_id, align 4
  %sg_table_count = getelementptr inbounds %struct.rd_dev, ptr %rd_dev, i32 0, i32 4
  %17 = ptrtoint ptr %sg_table_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sg_table_count, align 4
  %mul = shl i32 %page_count.1.lcssa.i, 12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rd_release_prot_space.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.43, i32 noundef %14, i32 noundef %16, i32 noundef %page_count.1.lcssa.i, i32 noundef %18, i32 noundef %mul) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %rd_release_sgl_table.exit
  %19 = ptrtoint ptr %sg_prot_array to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %sg_prot_array, align 8
  %20 = ptrtoint ptr %sg_prot_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %sg_prot_count, align 32
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97}
!llvm.named.register.sp = !{!98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @rd_mcp_ops, !1, !"rd_mcp_ops", i1 false, i1 false}
!1 = !{!"../drivers/target/target_core_rd.c", i32 656, i32 40}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/target/target_core_rd.c", i32 45, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @rd_attach_hba.__UNIQUE_ID_ddebug240, !3, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!8 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/target/target_core_rd.c", i32 56, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rd_detach_hba.__UNIQUE_ID_ddebug241, !11, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/target/target_core_rd.c", i32 291, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rd_configure_device.__UNIQUE_ID_ddebug246, !15, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/target/target_core_rd.c", i32 306, i32 2}
!20 = !{ptr @rd_configure_device.__UNIQUE_ID_ddebug247, !19, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/target/target_core_rd.c", i32 183, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rd_build_device_space._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @rd_build_device_space._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/target/target_core_rd.c", i32 206, i32 2}
!28 = !{ptr @rd_build_device_space.__UNIQUE_ID_ddebug243, !27, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/target/target_core_rd.c", i32 155, i32 5}
!31 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rd_allocate_sgl_table._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @rd_allocate_sgl_table._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/target/target_core_rd.c", i32 98, i32 2}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rd_release_device_space.__UNIQUE_ID_ddebug242, !39, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/target/target_core_rd.c", i32 557, i32 30}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/target/target_core_rd.c", i32 566, i32 4}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @rd_set_configfs_dev_params.__UNIQUE_ID_ddebug253, !45, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/target/target_core_rd.c", i32 575, i32 4}
!50 = !{ptr @rd_set_configfs_dev_params.__UNIQUE_ID_ddebug254, !49, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/target/target_core_rd.c", i32 583, i32 4}
!53 = !{ptr @rd_set_configfs_dev_params.__UNIQUE_ID_ddebug255, !52, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/target/target_core_rd.c", i32 537, i32 17}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/target/target_core_rd.c", i32 538, i32 18}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/target/target_core_rd.c", i32 539, i32 17}
!60 = !{ptr @tokens, !61, !"tokens", i1 false, i1 false}
!61 = !{!"../drivers/target/target_core_rd.c", i32 536, i32 22}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/target/target_core_rd.c", i32 599, i32 26}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/target/target_core_rd.c", i32 601, i32 24}
!66 = !{ptr @rd_sbc_ops, !67, !"rd_sbc_ops", i1 false, i1 false}
!67 = !{!"../drivers/target/target_core_rd.c", i32 646, i32 23}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/target/target_core_rd.c", i32 448, i32 2}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rd_execute_rw.__UNIQUE_ID_ddebug248, !69, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!72 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/target/target_core_rd.c", i32 470, i32 4}
!76 = !{ptr @rd_execute_rw.__UNIQUE_ID_ddebug249, !75, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/target/target_core_rd.c", i32 477, i32 4}
!79 = !{ptr @rd_execute_rw.__UNIQUE_ID_ddebug252, !78, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/target/target_core_rd.c", i32 353, i32 2}
!82 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @rd_get_sg_table._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @rd_get_sg_table._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/target/target_core_rd.c", i32 373, i32 2}
!87 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @rd_get_prot_table._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @rd_get_prot_table._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/target/target_core_rd.c", i32 263, i32 2}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @rd_build_prot_space.__UNIQUE_ID_ddebug245, !91, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/target/target_core_rd.c", i32 224, i32 2}
!96 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @rd_release_prot_space.__UNIQUE_ID_ddebug244, !95, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!98 = !{!"sp"}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i64 2148519738, i64 2148519743, i64 2148519756, i64 2148519800, i64 2148519834, i64 2148519855}
!109 = !{!"auto-init"}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2153714534, i64 2153715026, i64 2153714571, i64 2153714627, i64 2153714661, i64 2153714685, i64 2153714726, i64 2153714747, i64 2153714775, i64 2153714809}
!112 = !{i64 2153710976, i64 2153711468, i64 2153711013, i64 2153711069, i64 2153711103, i64 2153711127, i64 2153711168, i64 2153711189, i64 2153711217, i64 2153711251}
!113 = !{i64 2153712586, i64 2153713078, i64 2153712623, i64 2153712679, i64 2153712713, i64 2153712737, i64 2153712778, i64 2153712799, i64 2153712827, i64 2153712861}
!114 = !{i8 0, i8 2}
