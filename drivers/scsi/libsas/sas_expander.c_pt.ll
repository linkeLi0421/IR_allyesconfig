; ModuleID = '/llk/IR_all_yes/drivers/scsi/libsas/sas_expander.c_pt.bc'
source_filename = "../drivers/scsi/libsas/sas_expander.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.domain_device = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, [8 x i8], [3 x i8], [32 x i8], [101 x i8], %union.anon.79, ptr, i32, %struct.kref, [116 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.79 = type { %struct.sata_device }
%struct.sata_device = type { i32, i8, ptr, ptr, [112 x i8], %struct.smp_resp, [24 x i8], [44 x i8] }
%struct.smp_resp = type { i8, i8, i8, i8, %union.anon.81 }
%union.anon.81 = type { %struct.report_phy_sata_resp }
%struct.report_phy_sata_resp = type { [5 x i8], i8, i8, i8, i32, [8 x i8], %struct.dev_to_host_fis, i32, [8 x i8], i32 }
%struct.dev_to_host_fis = type { i8, i8, i8, i8, i8, %union.anon.82, %union.anon.83, i8, i8, i8, i8, i8, %union.anon.84, i8, i8, i8, i32 }
%union.anon.82 = type { i8 }
%union.anon.83 = type { i8 }
%union.anon.84 = type { i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ex_phy = type { i32, i32, i32, i32, i8, i32, i32, [8 x i8], i8, i32, i32, i8, i32, ptr, ptr }
%struct.sas_port = type { %struct.device, i32, i32, i8, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.expander_device = type { %struct.list_head, i32, i16, i8, i8, [8 x i8], ptr, ptr, %struct.mutex }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sas_phy_linkrates = type { i32, i32 }
%struct.sas_phy = type { %struct.device, i32, i32, %struct.sas_identify, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.discover_resp = type <{ [5 x i8], i8, i16, i32, [8 x i8], [8 x i8], i8, [7 x i8], i16, i8, i16, i8, i8, i8, [8 x i8] }>
%struct.sas_rphy = type { %struct.device, %struct.sas_identify, %struct.list_head, ptr, i32 }
%struct.bsg_job = type { ptr, %struct.kref, i32, ptr, ptr, i32, i32, %struct.bsg_buffer, %struct.bsg_buffer, i32, i32, ptr, ptr, ptr }
%struct.bsg_buffer = type { i32, i32, ptr }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.scsi_core = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.sas_internal = type { %struct.scsi_transport_template, ptr, ptr, [0 x %struct.device_attribute], [17 x %struct.device_attribute], [1 x %struct.device_attribute], [8 x %struct.device_attribute], [5 x %struct.device_attribute], [7 x %struct.device_attribute], %struct.transport_container, %struct.transport_container, %struct.transport_container, %struct.transport_container, %struct.transport_container, [1 x ptr], [18 x ptr], [2 x ptr], [9 x ptr], [6 x ptr], [8 x ptr] }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.sas_task = type { ptr, %struct.spinlock, i32, i32, %union.anon.91, ptr, i32, i32, i8, %struct.task_status_struct, ptr, ptr, ptr, ptr }
%union.anon.91 = type { %struct.sas_smp_task }
%struct.sas_smp_task = type { %struct.scatterlist, %struct.scatterlist }
%struct.task_status_struct = type { i32, i32, i32, [96 x i8], i32, i32 }
%struct.sas_domain_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sas_task_slow = type { %struct.timer_list, %struct.completion, ptr }

@sas_smp_phy_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013sas: ex %016llx phy%02d PHY control failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sas_smp_phy_control\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/libsas/sas_expander.c\00", [61 x i8] zeroinitializer }, align 32
@sas_smp_phy_control._entry_ptr = internal global ptr @sas_smp_phy_control._entry, section ".printk_index", align 4
@sas_smp_phy_control._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013sas: ex %016llx phy%02d PHY control failed: function result 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@sas_smp_phy_control._entry_ptr.5 = internal global ptr @sas_smp_phy_control._entry.3, section ".printk_index", align 4
@sas_smp_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 2156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013sas: %s: can we send a smp request to a device?\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sas_smp_handler\00", [16 x i8] zeroinitializer }, align 32
@sas_smp_handler._entry_ptr = internal global ptr @sas_smp_handler._entry, section ".printk_index", align 4
@sas_smp_handler._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 2162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013sas: %s: fail to find a domain_device?\0A\00", [54 x i8] zeroinitializer }, align 32
@sas_smp_handler._entry_ptr.10 = internal global ptr @sas_smp_handler._entry.8, section ".printk_index", align 4
@sas_smp_handler._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.2, i32 2171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016sas: %s: multiple segments req %u, rsp %u\0A\00", [51 x i8] zeroinitializer }, align 32
@sas_smp_handler._entry_ptr.13 = internal global ptr @sas_smp_handler._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sas_ex_phy_discover_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\015sas: Found loopback topology, just ignore it!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sas_ex_phy_discover_helper\00", [37 x i8] zeroinitializer }, align 32
@sas_ex_phy_discover_helper._entry_ptr = internal global ptr @sas_ex_phy_discover_helper._entry, section ".printk_index", align 4
@sas_set_ex_phy.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stp pending\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no device\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"host+target\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"stp\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssp\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smp\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@sas_set_ex_phy.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 86, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"libsas\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sas_set_ex_phy\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%sex %016llx phy%02d:%c:%X attached: %016llx (%s)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"sas: %sex %016llx phy%02d:%c:%X attached: %016llx (%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ata: \00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@sas_discover_expander._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 1604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014sas: expander %016llx discovery failed(0x%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sas_discover_expander\00", [42 x i8] zeroinitializer }, align 32
@sas_discover_expander._entry_ptr = internal global ptr @sas_discover_expander._entry, section ".printk_index", align 4
@sas_ex_general._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015sas: RG to ex %016llx failed:0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sas_ex_general\00", [17 x i8] zeroinitializer }, align 32
@sas_ex_general._entry_ptr = internal global ptr @sas_ex_general._entry, section ".printk_index", align 4
@sas_ex_general.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RG:ex %016llx returned SMP result:0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sas: RG:ex %016llx returned SMP result:0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@sas_ex_general.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.33, ptr @.str.2, ptr @.str.36, i8 0, i8 126, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RG: ex %016llx self-configuring...\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sas: RG: ex %016llx self-configuring...\0A\00", [55 x i8] zeroinitializer }, align 32
@sas_ex_manuf_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\015sas: MI: ex %016llx failed:0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sas_ex_manuf_info\00", [46 x i8] zeroinitializer }, align 32
@sas_ex_manuf_info._entry_ptr = internal global ptr @sas_ex_manuf_info._entry, section ".printk_index", align 4
@sas_ex_manuf_info.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 -115, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"MI ex %016llx returned SMP result:0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sas: MI ex %016llx returned SMP result:0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@sas_check_ex_subtractive_boundary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\015sas: ex %016llx phy%02d diverges(%016llx) on subtractive boundary(%016llx). Disabled\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sas_check_ex_subtractive_boundary\00", [62 x i8] zeroinitializer }, align 32
@sas_check_ex_subtractive_boundary._entry_ptr = internal global ptr @sas_check_ex_subtractive_boundary._entry, section ".printk_index", align 4
@sas_print_parent_topology_bug.ex_type = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr null, ptr null, ptr @.str.44, ptr @.str.45], [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edge\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fanout\00", [25 x i8] zeroinitializer }, align 32
@sas_print_parent_topology_bug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 1270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\015sas: %s ex %016llx phy%02d <--> %s ex %016llx phy%02d has %c:%c routing link!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sas_print_parent_topology_bug\00", [34 x i8] zeroinitializer }, align 32
@sas_print_parent_topology_bug._entry_ptr = internal global ptr @sas_print_parent_topology_bug._entry, section ".printk_index", align 4
@sas_check_eeds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 1287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\014sas: edge ex %016llx phy S:%02d <--> edge ex %016llx phy S:%02d, while there is a fanout ex %016llx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sas_check_eeds\00", [17 x i8] zeroinitializer }, align 32
@sas_check_eeds._entry_ptr = internal global ptr @sas_check_eeds._entry, section ".printk_index", align 4
@sas_check_eeds._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014sas: edge ex %016llx phy%02d <--> edge ex %016llx phy%02d link forms a third EEDS!\0A\00", [42 x i8] zeroinitializer }, align 32
@sas_check_eeds._entry_ptr.52 = internal global ptr @sas_check_eeds._entry.50, section ".printk_index", align 4
@sas_ex_discover_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014sas: unknown device type(0x%x) attached to ex %016llx phy%02d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sas_ex_discover_dev\00", [44 x i8] zeroinitializer }, align 32
@sas_ex_discover_dev._entry_ptr = internal global ptr @sas_ex_discover_dev._entry, section ".printk_index", align 4
@sas_ex_discover_dev._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 1074, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\015sas: configure routing for dev %016llx reported 0x%x. Forgotten\0A\00", [61 x i8] zeroinitializer }, align 32
@sas_ex_discover_dev._entry_ptr.57 = internal global ptr @sas_ex_discover_dev._entry.55, section ".printk_index", align 4
@sas_ex_discover_dev.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.54, ptr @.str.2, ptr @.str.58, i8 1, i8 14, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Attaching ex phy%02d to wide port %016llx\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"sas: Attaching ex phy%02d to wide port %016llx\0A\00", [48 x i8] zeroinitializer }, align 32
@sas_ex_discover_dev.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.54, ptr @.str.2, ptr @.str.60, i8 1, i8 18, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"second fanout expander %016llx phy%02d attached to ex %016llx phy%02d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"sas: second fanout expander %016llx phy%02d attached to ex %016llx phy%02d\0A\00", [52 x i8] zeroinitializer }, align 32
@sas_ex_discover_dev._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.54, ptr @.str.2, i32 1112, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015sas: ex %016llx phy%02d failed to discover\0A\00", [50 x i8] zeroinitializer }, align 32
@sas_ex_discover_dev._entry_ptr.64 = internal global ptr @sas_ex_discover_dev._entry.62, section ".printk_index", align 4
@sas_configure_present._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 1423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014sas: overflow of indexes: dev %016llx phy%02d index 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sas_configure_present\00", [42 x i8] zeroinitializer }, align 32
@sas_configure_present._entry_ptr = internal global ptr @sas_configure_present._entry, section ".printk_index", align 4
@sas_configure_present._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.2, i32 1428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\015sas: %s: dev %016llx phy%02d index 0x%x result 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@sas_configure_present._entry_ptr.69 = internal global ptr @sas_configure_present._entry.67, section ".printk_index", align 4
@sas_configure_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.70, ptr @.str.2, i32 1493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sas_configure_set\00", [46 x i8] zeroinitializer }, align 32
@sas_configure_set._entry_ptr = internal global ptr @sas_configure_set._entry, section ".printk_index", align 4
@sas_configure_parent.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 1, i8 -127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sas_configure_parent\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ex %016llx has self-configuring routing table\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"sas: ex %016llx has self-configuring routing table\0A\00", [44 x i8] zeroinitializer }, align 32
@sas_ex_discover_end_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\015sas: ex %016llx phy%02d SATA device linkrate > min pathway connection rate, attempting to lower device linkrate\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sas_ex_discover_end_dev\00", [40 x i8] zeroinitializer }, align 32
@sas_ex_discover_end_dev._entry_ptr = internal global ptr @sas_ex_discover_end_dev._entry, section ".printk_index", align 4
@sas_ex_discover_end_dev._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.2, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013sas: ex %016llx phy%02d SATA device could not set linkrate (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@sas_ex_discover_end_dev._entry_ptr.78 = internal global ptr @sas_ex_discover_end_dev._entry.76, section ".printk_index", align 4
@sas_ex_discover_end_dev._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str.2, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\015sas: ex %016llx phy%02d SATA device set linkrate successfully\0A\00", [63 x i8] zeroinitializer }, align 32
@sas_ex_discover_end_dev._entry_ptr.81 = internal global ptr @sas_ex_discover_end_dev._entry.79, section ".printk_index", align 4
@sas_ex_discover_end_dev._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.75, ptr @.str.2, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\015sas: sas_discover_sata() for device %16llx at %016llx:%02d returned 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@sas_ex_discover_end_dev._entry_ptr.84 = internal global ptr @sas_ex_discover_end_dev._entry.82, section ".printk_index", align 4
@sas_ex_discover_end_dev._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.75, ptr @.str.2, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\015sas: sas_discover_end_dev() for device %016llx at %016llx:%02d returned 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@sas_ex_discover_end_dev._entry_ptr.87 = internal global ptr @sas_ex_discover_end_dev._entry.85, section ".printk_index", align 4
@sas_ex_discover_end_dev._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.75, ptr @.str.2, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\015sas: target proto 0x%x at %016llx:0x%x not handled\0A\00", [42 x i8] zeroinitializer }, align 32
@sas_ex_discover_end_dev._entry_ptr.90 = internal global ptr @sas_ex_discover_end_dev._entry.88, section ".printk_index", align 4
@sas_alloc_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->done_lock\00", [16 x i8] zeroinitializer }, align 32
@sas_ex_discover_expander._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014sas: ex %016llx:%02d:D <--> ex %016llx:0x%x is not allowed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sas_ex_discover_expander\00", [39 x i8] zeroinitializer }, align 32
@sas_ex_discover_expander._entry_ptr = internal global ptr @sas_ex_discover_expander._entry, section ".printk_index", align 4
@sas_check_level_subtractive_boundary._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 1161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\015sas: ex %016llx->%016llx-?->%016llx diverges from subtractive boundary %016llx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sas_check_level_subtractive_boundary\00", [59 x i8] zeroinitializer }, align 32
@sas_check_level_subtractive_boundary._entry_ptr = internal global ptr @sas_check_level_subtractive_boundary._entry, section ".printk_index", align 4
@sas_find_bcast_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.2, i32 1849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016sas: ex %016llx phy%02d change count has changed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sas_find_bcast_dev\00", [45 x i8] zeroinitializer }, align 32
@sas_find_bcast_dev._entry_ptr = internal global ptr @sas_find_bcast_dev._entry, section ".printk_index", align 4
@sas_find_bcast_dev._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.2, i32 1853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016sas: ex %016llx phys DID NOT change\0A\00", [57 x i8] zeroinitializer }, align 32
@sas_find_bcast_dev._entry_ptr.100 = internal global ptr @sas_find_bcast_dev._entry.98, section ".printk_index", align 4
@sas_rediscover.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.101, ptr @.str.2, ptr @.str.102, i8 2, i8 10, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sas_rediscover\00", [17 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ex %016llx phy%02d originated BROADCAST(CHANGE)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"sas: ex %016llx phy%02d originated BROADCAST(CHANGE)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c", part of a wide port with phy%02d\00", [61 x i8] zeroinitializer }, align 32
@sas_rediscover_dev.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.105, ptr @.str.2, ptr @.str.106, i8 1, i8 -9, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sas_rediscover_dev\00", [45 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ex %016llx rediscovering phy%02d%s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"sas: ex %016llx rediscovering phy%02d%s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c", needs recovery\00", [47 x i8] zeroinitializer }, align 32
@sas_rediscover_dev.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.105, ptr @.str.2, ptr @.str.109, i8 2, i8 1, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ex %016llx phy%02d broadcast flutter%s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sas: ex %016llx phy%02d broadcast flutter%s\0A\00", [51 x i8] zeroinitializer }, align 32
@sas_rediscover_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.105, ptr @.str.2, i32 2059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016sas: ex %016llx phy%02d replace %016llx\0A\00", [53 x i8] zeroinitializer }, align 32
@sas_rediscover_dev._entry_ptr = internal global ptr @sas_rediscover_dev._entry, section ".printk_index", align 4
@sas_discover_new.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.112, ptr @.str.2, ptr @.str.113, i8 1, i8 -22, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sas_discover_new\00", [47 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"ex %016llx phy%02d new device attached\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"sas: ex %016llx phy%02d new device attached\0A\00", [51 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@smp_execute_task_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015sas: executing SMP task failed:%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smp_execute_task_sg\00", [44 x i8] zeroinitializer }, align 32
@smp_execute_task_sg._entry_ptr = internal global ptr @smp_execute_task_sg._entry, section ".printk_index", align 4
@smp_execute_task_sg._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015sas: smp task timed out or aborted\0A\00", [58 x i8] zeroinitializer }, align 32
@smp_execute_task_sg._entry_ptr.119 = internal global ptr @smp_execute_task_sg._entry.117, section ".printk_index", align 4
@smp_execute_task_sg._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015sas: SMP task aborted and not done\0A\00", [58 x i8] zeroinitializer }, align 32
@smp_execute_task_sg._entry_ptr.122 = internal global ptr @smp_execute_task_sg._entry.120, section ".printk_index", align 4
@smp_execute_task_sg._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.116, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015sas: %s: task to dev %016llx response: 0x%x status 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@smp_execute_task_sg._entry_ptr.125 = internal global ptr @smp_execute_task_sg._entry.123, section ".printk_index", align 4
@switch.table.sas_ex_discover_dev = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 2, i32 3, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1], [60 x i8] zeroinitializer }, align 32
@switch.table.sas_ex_discover_expander = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 2, i32 3, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.128 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.129 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.133 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 22]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.136 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 9]
@__sancov_gen_cov_switch_values.137 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.139 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 9]
@__sancov_gen_cov_switch_values.140 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 9]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 17]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 22, i64 4294967226]
@__sancov_gen_cov_switch_values.143 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 8, i64 9]
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 608, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 611, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 2155, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 2162, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 2169, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 386, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 297, i32 10 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 300, i32 10 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 305, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 307, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 310, i32 12 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 312, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 317, i32 10 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 320, i32 10 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 340, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1603, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 493, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 497, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 506, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 561, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 565, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1239, i32 5 }
@___asan_gen_.288 = private unnamed_addr constant [8 x i8] c"ex_type\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1254, i32 21 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1255, i32 32 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1256, i32 34 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1260, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1282, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1305, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1064, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1073, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1080, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1092, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1111, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1422, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1426, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1492, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1541, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 829, i32 4 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 834, i32 5 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 838, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 862, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 887, i32 4 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 893, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [38 x i8] c"../drivers/scsi/libsas/sas_internal.h\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 184, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 952, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1157, i32 5 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1848, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1852, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 2087, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 2009, i32 16 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 2011, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 2050, i32 13 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 2051, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 2057, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 1960, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 91, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 98, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 101, i32 5 }
@___asan_gen_.528 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.531 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.532 = private constant [38 x i8] c"../drivers/scsi/libsas/sas_expander.c\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 126, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant [33 x i8] c"switch.table.sas_ex_discover_dev\00", align 1
@___asan_gen_.535 = private unnamed_addr constant [38 x i8] c"switch.table.sas_ex_discover_expander\00", align 1
@llvm.compiler.used = appending global [166 x ptr] [ptr @sas_check_eeds._entry, ptr @sas_check_eeds._entry.50, ptr @sas_check_eeds._entry_ptr, ptr @sas_check_eeds._entry_ptr.52, ptr @sas_check_ex_subtractive_boundary._entry, ptr @sas_check_ex_subtractive_boundary._entry_ptr, ptr @sas_check_level_subtractive_boundary._entry, ptr @sas_check_level_subtractive_boundary._entry_ptr, ptr @sas_configure_present._entry, ptr @sas_configure_present._entry.67, ptr @sas_configure_present._entry_ptr, ptr @sas_configure_present._entry_ptr.69, ptr @sas_configure_set._entry, ptr @sas_configure_set._entry_ptr, ptr @sas_discover_expander._entry, ptr @sas_discover_expander._entry_ptr, ptr @sas_ex_discover_dev._entry, ptr @sas_ex_discover_dev._entry.55, ptr @sas_ex_discover_dev._entry.62, ptr @sas_ex_discover_dev._entry_ptr, ptr @sas_ex_discover_dev._entry_ptr.57, ptr @sas_ex_discover_dev._entry_ptr.64, ptr @sas_ex_discover_end_dev._entry, ptr @sas_ex_discover_end_dev._entry.76, ptr @sas_ex_discover_end_dev._entry.79, ptr @sas_ex_discover_end_dev._entry.82, ptr @sas_ex_discover_end_dev._entry.85, ptr @sas_ex_discover_end_dev._entry.88, ptr @sas_ex_discover_end_dev._entry_ptr, ptr @sas_ex_discover_end_dev._entry_ptr.78, ptr @sas_ex_discover_end_dev._entry_ptr.81, ptr @sas_ex_discover_end_dev._entry_ptr.84, ptr @sas_ex_discover_end_dev._entry_ptr.87, ptr @sas_ex_discover_end_dev._entry_ptr.90, ptr @sas_ex_discover_expander._entry, ptr @sas_ex_discover_expander._entry_ptr, ptr @sas_ex_general._entry, ptr @sas_ex_general._entry_ptr, ptr @sas_ex_manuf_info._entry, ptr @sas_ex_manuf_info._entry_ptr, ptr @sas_ex_phy_discover_helper._entry, ptr @sas_ex_phy_discover_helper._entry_ptr, ptr @sas_find_bcast_dev._entry, ptr @sas_find_bcast_dev._entry.98, ptr @sas_find_bcast_dev._entry_ptr, ptr @sas_find_bcast_dev._entry_ptr.100, ptr @sas_print_parent_topology_bug._entry, ptr @sas_print_parent_topology_bug._entry_ptr, ptr @sas_rediscover_dev._entry, ptr @sas_rediscover_dev._entry_ptr, ptr @sas_smp_handler._entry, ptr @sas_smp_handler._entry.11, ptr @sas_smp_handler._entry.8, ptr @sas_smp_handler._entry_ptr, ptr @sas_smp_handler._entry_ptr.10, ptr @sas_smp_handler._entry_ptr.13, ptr @sas_smp_phy_control._entry, ptr @sas_smp_phy_control._entry.3, ptr @sas_smp_phy_control._entry_ptr, ptr @sas_smp_phy_control._entry_ptr.5, ptr @smp_execute_task_sg._entry, ptr @smp_execute_task_sg._entry.117, ptr @smp_execute_task_sg._entry.120, ptr @smp_execute_task_sg._entry.123, ptr @smp_execute_task_sg._entry_ptr, ptr @smp_execute_task_sg._entry_ptr.119, ptr @smp_execute_task_sg._entry_ptr.122, ptr @smp_execute_task_sg._entry_ptr.125, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @sas_print_parent_topology_bug.ex_type, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @sas_alloc_device.__key, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @switch.table.sas_ex_discover_dev, ptr @switch.table.sas_ex_discover_expander], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_smp_phy_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_smp_phy_control._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_smp_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_smp_handler._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_smp_handler._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ex_phy_discover_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_discover_expander._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ex_general._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ex_manuf_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_check_ex_subtractive_boundary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_print_parent_topology_bug.ex_type to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_print_parent_topology_bug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_check_eeds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_check_eeds._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ex_discover_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ex_discover_dev._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ex_discover_dev._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_configure_present._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_configure_present._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_configure_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ex_discover_end_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ex_discover_end_dev._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ex_discover_end_dev._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ex_discover_end_dev._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ex_discover_end_dev._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ex_discover_end_dev._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_alloc_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_ex_discover_expander._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_check_level_subtractive_boundary._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_find_bcast_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_find_bcast_dev._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_rediscover_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp_execute_task_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp_execute_task_sg._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp_execute_task_sg._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smp_execute_task_sg._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sas_ex_discover_dev to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sas_ex_discover_expander to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sas_ex_to_ata(ptr nocapture noundef readonly %ex_dev, i32 noundef %phy_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ex_phy1 = getelementptr inbounds %struct.domain_device, ptr %ex_dev, i32 0, i32 19, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %ex_phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ex_phy1, align 8
  %port = getelementptr %struct.ex_phy, ptr %1, i32 %phy_id, i32 14
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rphy3 = getelementptr inbounds %struct.sas_port, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %rphy3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rphy3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call = tail call ptr @sas_find_dev_by_rphy(ptr noundef nonnull %5) #10
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %land.lhs.true

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_type.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %land.lhs.true.if.end11_crit_edge [
    i32 5, label %land.lhs.true.cleanup_crit_edge
    i32 7, label %land.lhs.true.cleanup_crit_edge20
    i32 8, label %land.lhs.true.cleanup_crit_edge21
    i32 9, label %land.lhs.true.cleanup_crit_edge22
  ]

land.lhs.true.cleanup_crit_edge22:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.cleanup_crit_edge21:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.cleanup_crit_edge20:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %land.lhs.true.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge20, %land.lhs.true.cleanup_crit_edge21, %land.lhs.true.cleanup_crit_edge22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end11 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call, %land.lhs.true.cleanup_crit_edge ], [ %call, %land.lhs.true.cleanup_crit_edge20 ], [ %call, %land.lhs.true.cleanup_crit_edge21 ], [ %call, %land.lhs.true.cleanup_crit_edge22 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_find_dev_by_rphy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_ex_phy_discover(ptr noundef %dev, i32 noundef %single) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup18_crit_edge, label %if.end

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup18

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %call7.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i38 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 56) #13
  %tobool2.not = icmp eq ptr %call7.i.i.i38, null
  br i1 %tobool2.not, label %if.end.cleanup18.sink.split_crit_edge, label %if.end4

if.end.cleanup18.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup18.sink.split

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %call7.i.i.i, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 16, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %single)
  %cmp = icmp sgt i32 %single, -1
  br i1 %cmp, label %land.lhs.true, label %if.end4.if.else_crit_edge

if.end4.if.else_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end4
  %num_phys = getelementptr inbounds %struct.expander_device, ptr %0, i32 0, i32 3
  %5 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_phys, align 2
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %single)
  %cmp5 = icmp ugt i32 %conv, %single
  br i1 %cmp5, label %if.then7, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call fastcc i32 @sas_ex_phy_discover_helper(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i.i.i38, i32 noundef %single)
  br label %out_err

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end4.if.else_crit_edge
  %num_phys9 = getelementptr inbounds %struct.expander_device, ptr %0, i32 0, i32 3
  %7 = ptrtoint ptr %num_phys9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_phys9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp1144.not = icmp eq i8 %8, 0
  br i1 %cmp1144.not, label %if.else.out_err_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

if.else.out_err_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.045, 1
  %9 = ptrtoint ptr %num_phys9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %num_phys9, align 2
  %conv10 = zext i8 %10 to i32
  %cmp11 = icmp ult i32 %inc, %conv10
  br i1 %cmp11, label %for.cond.for.body_crit_edge, label %for.cond.out_err_crit_edge

for.cond.out_err_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.else.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %call13 = tail call fastcc i32 @sas_ex_phy_discover_helper(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i.i.i38, i32 noundef %i.045)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %for.cond, label %for.body.out_err_crit_edge

for.body.out_err_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

out_err:                                          ; preds = %for.body.out_err_crit_edge, %for.cond.out_err_crit_edge, %if.else.out_err_crit_edge, %if.then7
  %res.2 = phi i32 [ %call8, %if.then7 ], [ 0, %if.else.out_err_crit_edge ], [ 0, %for.cond.out_err_crit_edge ], [ %call13, %for.body.out_err_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i38) #10
  br label %cleanup18.sink.split

cleanup18.sink.split:                             ; preds = %out_err, %if.end.cleanup18.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %res.2, %out_err ], [ -12, %if.end.cleanup18.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup18

cleanup18:                                        ; preds = %cleanup18.sink.split, %entry.cleanup18_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup18_crit_edge ], [ %retval.0.ph, %cleanup18.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sas_ex_phy_discover_helper(ptr noundef %dev, ptr noundef %disc_req, ptr noundef %disc_resp, i32 noundef %single) unnamed_addr #0 align 64 {
entry:
  %req_sg.i = alloca %struct.scatterlist, align 4
  %resp_sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %single to i8
  %arrayidx = getelementptr i8, ptr %disc_req, i32 9
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req_sg.i) #10
  %1 = call ptr @memset(ptr %req_sg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %resp_sg.i) #10
  %2 = call ptr @memset(ptr %resp_sg.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %req_sg.i, ptr noundef %disc_req, i32 noundef 16) #10
  call void @sg_init_one(ptr noundef nonnull %resp_sg.i, ptr noundef %disc_resp, i32 noundef 56) #10
  %call.i = call fastcc i32 @smp_execute_task_sg(ptr noundef %dev, ptr noundef nonnull %req_sg.i, ptr noundef nonnull %resp_sg.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %resp_sg.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req_sg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %sas_addr = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %attached_sas_addr = getelementptr inbounds %struct.smp_resp, ptr %disc_resp, i32 0, i32 4, i32 0, i32 6
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(8) %sas_addr, ptr noundef dereferenceable(8) %attached_sas_addr, i32 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @sas_set_ex_phy(ptr noundef %dev, i32 noundef %single, ptr noundef %disc_resp)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_smp_phy_control(ptr noundef %dev, i32 noundef %phy_id, i32 noundef %phy_func, ptr noundef readonly %rates) local_unnamed_addr #0 align 64 {
entry:
  %req_sg.i = alloca %struct.scatterlist, align 4
  %resp_sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 44) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 64, ptr %call7.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #13
  %tobool2.not = icmp eq ptr %call7.i.i.i61, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %call7.i.i.i, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -111, ptr %arrayidx, align 1
  %conv = trunc i32 %phy_id to i8
  %arrayidx5 = getelementptr i8, ptr %call7.i.i.i, i32 9
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx5, align 1
  %conv6 = trunc i32 %phy_func to i8
  %arrayidx7 = getelementptr i8, ptr %call7.i.i.i, i32 10
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv6, ptr %arrayidx7, align 2
  %tobool8.not = icmp eq ptr %rates, null
  br i1 %tobool8.not, label %if.end4.if.end15_crit_edge, label %if.then9

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %minimum_linkrate = getelementptr inbounds %struct.sas_phy_linkrates, ptr %rates, i32 0, i32 1
  %6 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %minimum_linkrate, align 4
  %.tr = trunc i32 %7 to i8
  %conv10 = shl i8 %.tr, 4
  %arrayidx11 = getelementptr i8, ptr %call7.i.i.i, i32 32
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv10, ptr %arrayidx11, align 8
  %9 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rates, align 4
  %.tr60 = trunc i32 %10 to i8
  %conv13 = shl i8 %.tr60, 4
  %arrayidx14 = getelementptr i8, ptr %call7.i.i.i, i32 33
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv13, ptr %arrayidx14, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end4.if.end15_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req_sg.i) #10
  %12 = call ptr @memset(ptr %req_sg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %resp_sg.i) #10
  %13 = call ptr @memset(ptr %resp_sg.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %req_sg.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 44) #10
  call void @sg_init_one(ptr noundef nonnull %resp_sg.i, ptr noundef nonnull %call7.i.i.i61, i32 noundef 8) #10
  %call.i = call fastcc i32 @smp_execute_task_sg(ptr noundef %dev, ptr noundef nonnull %req_sg.i, ptr noundef nonnull %resp_sg.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %resp_sg.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req_sg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %14 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %sas_addr, align 16
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i64 noundef %15, i32 noundef %phy_id, i32 noundef %call.i) #15
  br label %if.end36

if.else:                                          ; preds = %if.end15
  %arrayidx20 = getelementptr i8, ptr %call7.i.i.i61, i32 2
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx20, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.not = icmp eq i8 %17, 0
  br i1 %cmp.not, label %if.else.if.end36_crit_edge, label %do.end26

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

do.end26:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %conv21 = zext i8 %17 to i32
  %sas_addr28 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %18 = ptrtoint ptr %sas_addr28 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sas_addr28, align 16
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i64 noundef %19, i32 noundef %phy_id, i32 noundef %conv21) #15
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx20, align 2
  %conv34 = zext i8 %21 to i32
  br label %if.end36

if.end36:                                         ; preds = %do.end26, %if.else.if.end36_crit_edge, %do.end
  %res.0 = phi i32 [ %call.i, %do.end ], [ %conv34, %do.end26 ], [ 0, %if.else.if.end36_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i61) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %if.end36 ], [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_smp_get_phy_events(ptr nocapture noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  %req_sg.i = alloca %struct.scatterlist, align 4
  %resp_sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call ptr @sas_find_dev_by_rphy(ptr noundef %1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 64, ptr %call7.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 32) #13
  %tobool4.not = icmp eq ptr %call7.i.i.i41, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %call7.i.i.i, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 17, ptr %arrayidx, align 1
  %number = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 1
  %6 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %number, align 8
  %conv = trunc i32 %7 to i8
  %arrayidx7 = getelementptr i8, ptr %call7.i.i.i, i32 9
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx7, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req_sg.i) #10
  %9 = call ptr @memset(ptr %req_sg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %resp_sg.i) #10
  %10 = call ptr @memset(ptr %resp_sg.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %req_sg.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 16) #10
  call void @sg_init_one(ptr noundef nonnull %resp_sg.i, ptr noundef nonnull %call7.i.i.i41, i32 noundef 32) #10
  %call.i = call fastcc i32 @smp_execute_task_sg(ptr noundef %call, ptr noundef nonnull %req_sg.i, ptr noundef nonnull %resp_sg.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %resp_sg.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req_sg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx12 = getelementptr i8, ptr %call7.i.i.i41, i32 12
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx12, align 4
  %invalid_dword_count = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 9
  %13 = ptrtoint ptr %invalid_dword_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %invalid_dword_count, align 4
  %arrayidx14 = getelementptr i8, ptr %call7.i.i.i41, i32 16
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14, align 8
  %running_disparity_error_count = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 10
  %16 = ptrtoint ptr %running_disparity_error_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %running_disparity_error_count, align 8
  %arrayidx16 = getelementptr i8, ptr %call7.i.i.i41, i32 20
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx16, align 4
  %loss_of_dword_sync_count = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 11
  %19 = ptrtoint ptr %loss_of_dword_sync_count to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %loss_of_dword_sync_count, align 4
  %arrayidx18 = getelementptr i8, ptr %call7.i.i.i41, i32 24
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx18, align 8
  %phy_reset_problem_count = getelementptr inbounds %struct.sas_phy, ptr %phy, i32 0, i32 12
  %22 = ptrtoint ptr %phy_reset_problem_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %phy_reset_problem_count, align 8
  br label %out

out:                                              ; preds = %if.end11, %if.end6.out_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i41) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %out ], [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_get_report_phy_sata(ptr noundef %dev, i32 noundef %phy_id, ptr noundef %rps_resp) local_unnamed_addr #0 align 64 {
entry:
  %req_sg.i = alloca %struct.scatterlist, align 4
  %resp_sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 64, ptr %call7.i.i.i, align 8
  %arrayidx = getelementptr i8, ptr %call7.i.i.i, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 18, ptr %arrayidx, align 1
  %conv = trunc i32 %phy_id to i8
  %arrayidx1 = getelementptr i8, ptr %call7.i.i.i, i32 9
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %arrayidx1, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req_sg.i) #10
  %4 = call ptr @memset(ptr %req_sg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %resp_sg.i) #10
  %5 = call ptr @memset(ptr %resp_sg.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %req_sg.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 16) #10
  call void @sg_init_one(ptr noundef nonnull %resp_sg.i, ptr noundef %rps_resp, i32 noundef 60) #10
  %call.i = call fastcc i32 @smp_execute_task_sg(ptr noundef %dev, ptr noundef nonnull %req_sg.i, ptr noundef nonnull %resp_sg.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %resp_sg.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req_sg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end
  %arrayidx4 = getelementptr i8, ptr %rps_resp, i32 27
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %7)
  %cmp = icmp eq i8 %7, 52
  br i1 %cmp, label %land.lhs.true7, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

land.lhs.true7:                                   ; preds = %land.lhs.true
  %arrayidx8 = getelementptr i8, ptr %rps_resp, i32 24
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %9)
  %cmp10.not = icmp eq i8 %9, 52
  br i1 %cmp10.not, label %land.lhs.true7.if.end31_crit_edge, label %for.body.preheader

land.lhs.true7.if.end31_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

for.body.preheader:                               ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %arrayidx18 = getelementptr i8, ptr %rps_resp, i32 25
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx18, align 1
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4, align 1
  store i8 %15, ptr %arrayidx8, align 1
  %arrayidx24 = getelementptr i8, ptr %rps_resp, i32 26
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx24, align 1
  store i8 %17, ptr %arrayidx18, align 1
  store i8 %13, ptr %arrayidx24, align 1
  store i8 %11, ptr %arrayidx4, align 1
  %arrayidx16.1 = getelementptr i8, ptr %rps_resp, i32 28
  %18 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx16.1, align 1
  %arrayidx18.1 = getelementptr i8, ptr %rps_resp, i32 29
  %20 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx18.1, align 1
  %arrayidx20.1 = getelementptr i8, ptr %rps_resp, i32 31
  %22 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx20.1, align 1
  store i8 %23, ptr %arrayidx16.1, align 1
  %arrayidx24.1 = getelementptr i8, ptr %rps_resp, i32 30
  %24 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx24.1, align 1
  store i8 %25, ptr %arrayidx18.1, align 1
  store i8 %21, ptr %arrayidx24.1, align 1
  store i8 %19, ptr %arrayidx20.1, align 1
  %arrayidx16.2 = getelementptr i8, ptr %rps_resp, i32 32
  %26 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx16.2, align 1
  %arrayidx18.2 = getelementptr i8, ptr %rps_resp, i32 33
  %28 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx18.2, align 1
  %arrayidx20.2 = getelementptr i8, ptr %rps_resp, i32 35
  %30 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx20.2, align 1
  store i8 %31, ptr %arrayidx16.2, align 1
  %arrayidx24.2 = getelementptr i8, ptr %rps_resp, i32 34
  %32 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx24.2, align 1
  store i8 %33, ptr %arrayidx18.2, align 1
  store i8 %29, ptr %arrayidx24.2, align 1
  store i8 %27, ptr %arrayidx20.2, align 1
  %arrayidx16.3 = getelementptr i8, ptr %rps_resp, i32 36
  %34 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx16.3, align 1
  %arrayidx18.3 = getelementptr i8, ptr %rps_resp, i32 37
  %36 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx18.3, align 1
  %arrayidx20.3 = getelementptr i8, ptr %rps_resp, i32 39
  %38 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx20.3, align 1
  store i8 %39, ptr %arrayidx16.3, align 1
  %arrayidx24.3 = getelementptr i8, ptr %rps_resp, i32 38
  %40 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx24.3, align 1
  store i8 %41, ptr %arrayidx18.3, align 1
  store i8 %37, ptr %arrayidx24.3, align 1
  store i8 %35, ptr %arrayidx20.3, align 1
  %arrayidx16.4 = getelementptr i8, ptr %rps_resp, i32 40
  %42 = ptrtoint ptr %arrayidx16.4 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx16.4, align 1
  %arrayidx18.4 = getelementptr i8, ptr %rps_resp, i32 41
  %44 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx18.4, align 1
  %arrayidx20.4 = getelementptr i8, ptr %rps_resp, i32 43
  %46 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx20.4, align 1
  store i8 %47, ptr %arrayidx16.4, align 1
  %arrayidx24.4 = getelementptr i8, ptr %rps_resp, i32 42
  %48 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx24.4, align 1
  store i8 %49, ptr %arrayidx18.4, align 1
  store i8 %45, ptr %arrayidx24.4, align 1
  store i8 %43, ptr %arrayidx20.4, align 1
  br label %if.end31

if.end31:                                         ; preds = %for.body.preheader, %land.lhs.true7.if.end31_crit_edge, %land.lhs.true.if.end31_crit_edge, %if.end.if.end31_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end31 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_discover_root_expander(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rphy = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rphy, align 4
  %call = tail call i32 @sas_rphy_add(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -56
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  %max_level = getelementptr inbounds %struct.sas_discovery, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %max_level to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_level, align 4
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %add.ptr, align 8
  %call2 = tail call fastcc i32 @sas_discover_expander(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %out_err2

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port, align 4
  %max_level.i = getelementptr inbounds %struct.sas_discovery, ptr %8, i32 0, i32 5
  %dev_list.i.i = getelementptr inbounds %struct.asd_sas_port, ptr %8, i32 0, i32 3
  %port_dev.i.i = getelementptr inbounds %struct.asd_sas_port, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %max_level.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr.i = load i32, ptr %max_level.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %sas_ex_level_discovery.exit.i.do.body.i_crit_edge, %if.end5
  %10 = phi i32 [ %24, %sas_ex_level_discovery.exit.i.do.body.i_crit_edge ], [ %.pr.i, %if.end5 ]
  %11 = ptrtoint ptr %dev_list.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn1.i.i = load ptr, ptr %dev_list.i.i, align 4
  %cmp.not3.i.i = icmp eq ptr %.pn1.i.i, %dev_list.i.i
  br i1 %cmp.not3.i.i, label %do.body.i.sas_ex_level_discovery.exit.i_crit_edge, label %for.body.lr.ph.i.i

do.body.i.sas_ex_level_discovery.exit.i_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_ex_level_discovery.exit.i

for.body.lr.ph.i.i:                               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9.i.i = icmp sgt i32 %10, 0
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn5.i.i = phi ptr [ %.pn1.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %dev_type.i.i = getelementptr i8, ptr %.pn5.i.i, i32 -40
  %12 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_type.i.i, align 4
  %14 = and i32 %13, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %dev.06.i.i = getelementptr i8, ptr %.pn5.i.i, i32 -84
  %rphy.i.i = getelementptr i8, ptr %.pn5.i.i, i32 24
  %16 = ptrtoint ptr %rphy.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rphy.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %17, i32 -56
  %18 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr4.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %10)
  %cmp6.i.i = icmp eq i32 %19, %10
  br i1 %cmp6.i.i, label %if.then.i.i.for.inc.sink.split.i.i_crit_edge, label %if.else.i.i

if.then.i.i.for.inc.sink.split.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.else.i.i.for.inc.i.i_crit_edge

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %port_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port_dev.i.i, align 4
  br label %for.inc.sink.split.i.i

for.inc.sink.split.i.i:                           ; preds = %if.then10.i.i, %if.then.i.i.for.inc.sink.split.i.i_crit_edge
  %dev.06.sink.i.i = phi ptr [ %21, %if.then10.i.i ], [ %dev.06.i.i, %if.then.i.i.for.inc.sink.split.i.i_crit_edge ]
  %call8.i.i = tail call fastcc i32 @sas_ex_discover_devices(ptr noundef %dev.06.sink.i.i, i32 noundef -1) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.inc.sink.split.i.i, %if.else.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %22 = ptrtoint ptr %.pn5.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn.i.i = load ptr, ptr %.pn5.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %dev_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.sas_ex_level_discovery.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.sas_ex_level_discovery.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_ex_level_discovery.exit.i

sas_ex_level_discovery.exit.i:                    ; preds = %for.inc.i.i.sas_ex_level_discovery.exit.i_crit_edge, %do.body.i.sas_ex_level_discovery.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %max_level.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_level.i, align 4
  %cmp.i = icmp slt i32 %10, %24
  br i1 %cmp.i, label %sas_ex_level_discovery.exit.i.do.body.i_crit_edge, label %sas_ex_level_discovery.exit.i.cleanup_crit_edge

sas_ex_level_discovery.exit.i.cleanup_crit_edge:  ; preds = %sas_ex_level_discovery.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sas_ex_level_discovery.exit.i.do.body.i_crit_edge: ; preds = %sas_ex_level_discovery.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

out_err2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rphy, align 4
  tail call void @sas_rphy_remove(ptr noundef %26) #10
  br label %cleanup

cleanup:                                          ; preds = %out_err2, %sas_ex_level_discovery.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %out_err2 ], [ 0, %sas_ex_level_discovery.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_rphy_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sas_discover_expander(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sas_notify_lldd_dev_found(ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @sas_ex_general(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_err_crit_edge

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @sas_ex_manuf_info(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_err_crit_edge

if.end4.out_err_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

if.end8:                                          ; preds = %if.end4
  %0 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19
  %num_phys.i = getelementptr inbounds %struct.expander_device, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_phys.i, align 2
  %conv.i = zext i8 %2 to i32
  %3 = shl nuw nsw i32 %conv.i, 6
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #16
  %ex_phy.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %ex_phy.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i.i, ptr %ex_phy.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.do.end_crit_edge, label %if.end.i

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %if.end8
  %call2.i = tail call i32 @sas_ex_phy_discover(ptr noundef %dev, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end13, label %out_err.i

out_err.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %ex_phy.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ex_phy.i, align 4
  tail call void @kfree(ptr noundef %6) #10
  %7 = ptrtoint ptr %ex_phy.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ex_phy.i, align 4
  br label %do.end

do.end:                                           ; preds = %out_err.i, %if.end8.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end8.do.end_crit_edge ], [ %call2.i, %out_err.i ]
  %sas_addr = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %8 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sas_addr, align 16
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i64 noundef %9, i32 noundef %retval.0.i.ph) #15
  br label %out_err

if.end13:                                         ; preds = %if.end.i
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 2
  br i1 %cmp.not.i, label %for.cond.preheader.i, label %if.end13.sas_check_ex_subtractive_boundary.exit_crit_edge

if.end13.sas_check_ex_subtractive_boundary.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_check_ex_subtractive_boundary.exit

for.cond.preheader.i:                             ; preds = %if.end13
  %12 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_phys.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp12.not.i = icmp eq i8 %13, 0
  br i1 %cmp12.not.i, label %for.cond.preheader.i.sas_check_ex_subtractive_boundary.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.sas_check_ex_subtractive_boundary.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_check_ex_subtractive_boundary.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %ex_phy.i34 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 4, i32 8
  %sas_addr.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %sub_sas_addr.05.i = phi ptr [ null, %for.body.lr.ph.i ], [ %sub_sas_addr.2.i, %cleanup.i.for.body.i_crit_edge ]
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %ex_phy.i34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ex_phy.i34, align 4
  %phy_state.i = getelementptr %struct.ex_phy, ptr %15, i32 %i.03.i, i32 1
  %16 = ptrtoint ptr %phy_state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phy_state.i, align 4
  %.off.i = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %for.body.i.cleanup.i_crit_edge, label %if.end9.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end9.i:                                        ; preds = %for.body.i
  %attached_dev_type.i = getelementptr %struct.ex_phy, ptr %15, i32 %i.03.i, i32 2
  %18 = ptrtoint ptr %attached_dev_type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %attached_dev_type.i, align 4
  %20 = and i32 %19, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %land.lhs.true.i, label %if.end9.i.cleanup.i_crit_edge

if.end9.i.cleanup.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

land.lhs.true.i:                                  ; preds = %if.end9.i
  %routing_attr.i = getelementptr %struct.ex_phy, ptr %15, i32 %i.03.i, i32 10
  %22 = ptrtoint ptr %routing_attr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %routing_attr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp11.i = icmp eq i32 %23, 1
  br i1 %cmp11.i, label %if.then13.i, label %land.lhs.true.i.cleanup.i_crit_edge

land.lhs.true.i.cleanup.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  %tobool.not.i35 = icmp eq ptr %sub_sas_addr.05.i, null
  br i1 %tobool.not.i35, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #12
  %attached_sas_addr.i = getelementptr %struct.ex_phy, ptr %15, i32 %i.03.i, i32 7
  br label %cleanup.i

if.else.i:                                        ; preds = %if.then13.i
  %24 = ptrtoint ptr %sub_sas_addr.05.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %sub_sas_addr.05.i, align 8
  %attached_sas_addr16.i = getelementptr %struct.ex_phy, ptr %15, i32 %i.03.i, i32 7
  %26 = ptrtoint ptr %attached_sas_addr16.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %27 = load i64, ptr %attached_sas_addr16.i, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %25, i64 %27)
  %cmp17.not.i = icmp eq i64 %25, %27
  br i1 %cmp17.not.i, label %if.else.i.cleanup.i_crit_edge, label %do.end.i

if.else.i.cleanup.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %sas_addr.i, align 16
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i64 noundef %29, i32 noundef %i.03.i, i64 noundef %27, i64 noundef %25) #15
  %30 = ptrtoint ptr %ex_phy.i34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ex_phy.i34, align 4
  %call.i.i = tail call i32 @sas_smp_phy_control(ptr noundef %dev, i32 noundef %i.03.i, i32 noundef 3, ptr noundef null) #10
  %linkrate.i.i = getelementptr %struct.ex_phy, ptr %31, i32 %i.03.i, i32 3
  %32 = ptrtoint ptr %linkrate.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %linkrate.i.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.end.i, %if.else.i.cleanup.i_crit_edge, %if.then14.i, %land.lhs.true.i.cleanup.i_crit_edge, %if.end9.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %sub_sas_addr.2.i = phi ptr [ %sub_sas_addr.05.i, %for.body.i.cleanup.i_crit_edge ], [ %sub_sas_addr.05.i, %do.end.i ], [ %sub_sas_addr.05.i, %if.else.i.cleanup.i_crit_edge ], [ %attached_sas_addr.i, %if.then14.i ], [ %sub_sas_addr.05.i, %land.lhs.true.i.cleanup.i_crit_edge ], [ %sub_sas_addr.05.i, %if.end9.i.cleanup.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %33 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_phys.i, align 2
  %conv.i36 = zext i8 %34 to i32
  %cmp1.i = icmp ult i32 %inc.i, %conv.i36
  br i1 %cmp1.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.sas_check_ex_subtractive_boundary.exit_crit_edge

cleanup.i.sas_check_ex_subtractive_boundary.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_check_ex_subtractive_boundary.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sas_check_ex_subtractive_boundary.exit:           ; preds = %cleanup.i.sas_check_ex_subtractive_boundary.exit_crit_edge, %for.cond.preheader.i.sas_check_ex_subtractive_boundary.exit_crit_edge, %if.end13.sas_check_ex_subtractive_boundary.exit_crit_edge
  %parent.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 6
  %35 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent.i, align 64
  %tobool.not.i37 = icmp eq ptr %36, null
  br i1 %tobool.not.i37, label %sas_check_ex_subtractive_boundary.exit.cleanup_crit_edge, label %if.end.i39

sas_check_ex_subtractive_boundary.exit.cleanup_crit_edge: ; preds = %sas_check_ex_subtractive_boundary.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i39:                                       ; preds = %sas_check_ex_subtractive_boundary.exit
  %dev_type.i38 = getelementptr inbounds %struct.domain_device, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %dev_type.i38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dev_type.i38, align 4
  %39 = and i32 %38, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %if.end3.i, label %if.end.i39.cleanup_crit_edge

if.end.i39.cleanup_crit_edge:                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i39
  %41 = getelementptr inbounds %struct.domain_device, ptr %36, i32 0, i32 19
  %num_phys.i40 = getelementptr inbounds %struct.expander_device, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %num_phys.i40 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %num_phys.i40, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp221.not.i = icmp eq i8 %43, 0
  br i1 %cmp221.not.i, label %if.end3.i.cleanup_crit_edge, label %for.body.lr.ph.i43

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i43:                               ; preds = %if.end3.i
  %ex_phy.i41 = getelementptr inbounds %struct.domain_device, ptr %36, i32 0, i32 19, i32 0, i32 4, i32 8
  %sas_addr.i42 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %ex_phy18.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 4, i32 8
  %t2t_supp.i18.i209.i = getelementptr inbounds %struct.expander_device, ptr %0, i32 0, i32 4
  %t2t_supp65.i = getelementptr inbounds %struct.expander_device, ptr %41, i32 0, i32 4
  br label %for.body.i47

for.body.i47:                                     ; preds = %cleanup.i56.for.body.i47_crit_edge, %for.body.lr.ph.i43
  %res.0224.i = phi i32 [ 0, %for.body.lr.ph.i43 ], [ %res.2.i, %cleanup.i56.for.body.i47_crit_edge ]
  %i.0222.i = phi i32 [ 0, %for.body.lr.ph.i43 ], [ %inc.i54, %cleanup.i56.for.body.i47_crit_edge ]
  %44 = ptrtoint ptr %ex_phy.i41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ex_phy.i41, align 4
  %arrayidx.i = getelementptr %struct.ex_phy, ptr %45, i32 %i.0222.i
  %phy_state.i44 = getelementptr %struct.ex_phy, ptr %45, i32 %i.0222.i, i32 1
  %46 = ptrtoint ptr %phy_state.i44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %phy_state.i44, align 4
  %.off.i45 = add i32 %47, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i45)
  %switch.i46 = icmp ult i32 %.off.i45, 2
  br i1 %switch.i46, label %for.body.i47.cleanup.i56_crit_edge, label %if.end12.i

for.body.i47.cleanup.i56_crit_edge:               ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i56

if.end12.i:                                       ; preds = %for.body.i47
  %attached_sas_addr.i48 = getelementptr %struct.ex_phy, ptr %45, i32 %i.0222.i, i32 7
  %48 = ptrtoint ptr %attached_sas_addr.i48 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %49 = load i64, ptr %attached_sas_addr.i48, align 4
  %50 = ptrtoint ptr %sas_addr.i42 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %sas_addr.i42, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %49, i64 %51)
  %cmp14.not.i = icmp eq i64 %49, %51
  br i1 %cmp14.not.i, label %if.end17.i, label %if.end12.i.cleanup.i56_crit_edge

if.end12.i.cleanup.i56_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i56

if.end17.i:                                       ; preds = %if.end12.i
  %52 = ptrtoint ptr %ex_phy18.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ex_phy18.i, align 4
  %attached_phy_id.i = getelementptr %struct.ex_phy, ptr %45, i32 %i.0222.i, i32 8
  %54 = ptrtoint ptr %attached_phy_id.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %attached_phy_id.i, align 4
  %idxprom.i = zext i8 %55 to i32
  %arrayidx19.i = getelementptr %struct.ex_phy, ptr %53, i32 %idxprom.i
  %56 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent.i, align 64
  %dev_type21.i = getelementptr inbounds %struct.domain_device, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %dev_type21.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dev_type21.i, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %59, label %if.end17.i.cleanup.i56_crit_edge [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb76.i
  ]

if.end17.i.cleanup.i56_crit_edge:                 ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i56

sw.bb.i:                                          ; preds = %if.end17.i
  %61 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dev_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %cmp23.i = icmp eq i32 %62, 3
  %routing_attr.i49 = getelementptr %struct.ex_phy, ptr %45, i32 %i.0222.i, i32 10
  %63 = ptrtoint ptr %routing_attr.i49 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %routing_attr.i49, align 4
  br i1 %cmp23.i, label %if.then25.i, label %if.else.i51

if.then25.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp26.not.i = icmp eq i32 %64, 1
  br i1 %cmp26.not.i, label %lor.lhs.false28.i, label %if.then32.i

lor.lhs.false28.i:                                ; preds = %if.then25.i
  %routing_attr29.i = getelementptr %struct.ex_phy, ptr %53, i32 %idxprom.i, i32 10
  %65 = ptrtoint ptr %routing_attr29.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %routing_attr29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp30.not.i = icmp eq i32 %66, 2
  br i1 %cmp30.not.i, label %lor.lhs.false28.i.cleanup.i56_crit_edge, label %if.then32.i.thread

lor.lhs.false28.i.cleanup.i56_crit_edge:          ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i56

if.then32.i.thread:                               ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr.i.i61 = getelementptr inbounds %struct.domain_device, ptr %57, i32 0, i32 15
  %67 = ptrtoint ptr %sas_addr.i.i61 to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %sas_addr.i.i61, align 16
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  %71 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx19.i, align 4
  br label %sas_route_char.exit.i.i

if.then32.i:                                      ; preds = %if.then25.i
  %sas_addr.i.i = getelementptr inbounds %struct.domain_device, ptr %57, i32 0, i32 15
  %73 = ptrtoint ptr %sas_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %sas_addr.i.i, align 16
  %75 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i, align 4
  %77 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx19.i, align 4
  %79 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %64, label %sw.default.i.i.i [
    i32 2, label %sw.bb.i.i.i
    i32 0, label %if.then32.i.sas_route_char.exit.i.i_crit_edge
  ]

if.then32.i.sas_route_char.exit.i.i_crit_edge:    ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_route_char.exit.i.i

sw.bb.i.i.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  %80 = getelementptr inbounds %struct.domain_device, ptr %57, i32 0, i32 19
  %t2t_supp.i.i.i = getelementptr inbounds %struct.expander_device, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %t2t_supp.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load.i.i.i = load i8, ptr %t2t_supp.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  %..i.i.i = select i1 %tobool.not.i.i.i, i32 84, i32 85
  br label %sas_route_char.exit.i.i

sw.default.i.i.i:                                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_route_char.exit.i.i

sas_route_char.exit.i.i:                          ; preds = %sw.default.i.i.i, %sw.bb.i.i.i, %if.then32.i.sas_route_char.exit.i.i_crit_edge, %if.then32.i.thread
  %82 = phi i32 [ %78, %sw.default.i.i.i ], [ %72, %if.then32.i.thread ], [ %78, %sw.bb.i.i.i ], [ %78, %if.then32.i.sas_route_char.exit.i.i_crit_edge ]
  %83 = phi i32 [ %76, %sw.default.i.i.i ], [ %70, %if.then32.i.thread ], [ %76, %sw.bb.i.i.i ], [ %76, %if.then32.i.sas_route_char.exit.i.i_crit_edge ]
  %84 = phi i64 [ %74, %sw.default.i.i.i ], [ %68, %if.then32.i.thread ], [ %74, %sw.bb.i.i.i ], [ %74, %if.then32.i.sas_route_char.exit.i.i_crit_edge ]
  %retval.0.i.i.i50 = phi i32 [ 63, %sw.default.i.i.i ], [ 83, %if.then32.i.thread ], [ %..i.i.i, %sw.bb.i.i.i ], [ 68, %if.then32.i.sas_route_char.exit.i.i_crit_edge ]
  %routing_attr.i17.i.i = getelementptr %struct.ex_phy, ptr %53, i32 %idxprom.i, i32 10
  %85 = ptrtoint ptr %routing_attr.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %routing_attr.i17.i.i, align 4
  %87 = zext i32 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %86, label %sw.default.i24.i.i [
    i32 2, label %sw.bb.i22.i.i
    i32 0, label %sas_route_char.exit.i.i.sas_print_parent_topology_bug.exit.i_crit_edge
    i32 1, label %sw.bb2.i23.i.i
  ]

sas_route_char.exit.i.i.sas_print_parent_topology_bug.exit.i_crit_edge: ; preds = %sas_route_char.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_print_parent_topology_bug.exit.i

sw.bb.i22.i.i:                                    ; preds = %sas_route_char.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %t2t_supp.i18.i209.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load.i19.i.i = load i8, ptr %t2t_supp.i18.i209.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i19.i.i)
  %tobool.not.i20.i.i = icmp sgt i8 %bf.load.i19.i.i, -1
  %..i21.i.i = select i1 %tobool.not.i20.i.i, i32 84, i32 85
  br label %sas_print_parent_topology_bug.exit.i

sw.bb2.i23.i.i:                                   ; preds = %sas_route_char.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_print_parent_topology_bug.exit.i

sw.default.i24.i.i:                               ; preds = %sas_route_char.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_print_parent_topology_bug.exit.i

sas_print_parent_topology_bug.exit.i:             ; preds = %sw.default.i24.i.i, %sw.bb2.i23.i.i, %sw.bb.i22.i.i, %sas_route_char.exit.i.i.sas_print_parent_topology_bug.exit.i_crit_edge
  %retval.0.i25.i.i = phi i32 [ 63, %sw.default.i24.i.i ], [ 83, %sw.bb2.i23.i.i ], [ %..i21.i.i, %sw.bb.i22.i.i ], [ 68, %sas_route_char.exit.i.i.sas_print_parent_topology_bug.exit.i_crit_edge ]
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, i64 noundef %84, i32 noundef %83, ptr noundef nonnull @.str.45, i64 noundef %49, i32 noundef %82, i32 noundef %retval.0.i.i.i50, i32 noundef %retval.0.i25.i.i) #15
  br label %cleanup.i56

if.else.i51:                                      ; preds = %sw.bb.i
  %89 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %64, label %if.else.i51.cleanup.i56_crit_edge [
    i32 1, label %if.then37.i
    i32 2, label %if.then54.i
  ]

if.else.i51.cleanup.i56_crit_edge:                ; preds = %if.else.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i56

if.then37.i:                                      ; preds = %if.else.i51
  %routing_attr38.i = getelementptr %struct.ex_phy, ptr %53, i32 %idxprom.i, i32 10
  %90 = ptrtoint ptr %routing_attr38.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %routing_attr38.i, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %91, label %sas_route_char.exit.i152.i [
    i32 1, label %if.then41.i
    i32 2, label %if.then37.i.cleanup.i56_crit_edge
  ]

if.then37.i.cleanup.i56_crit_edge:                ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i56

if.then41.i:                                      ; preds = %if.then37.i
  %port.i.i = getelementptr inbounds %struct.domain_device, ptr %57, i32 0, i32 8
  %93 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %port.i.i, align 4
  %fanout_sas_addr.i.i = getelementptr inbounds %struct.sas_discovery, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %fanout_sas_addr.i.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 8)
  %96 = load i64, ptr %fanout_sas_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %96)
  %cmp.not.i.i = icmp eq i64 %96, 0
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr.i134.i = getelementptr inbounds %struct.domain_device, ptr %57, i32 0, i32 15
  %97 = ptrtoint ptr %sas_addr.i134.i to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %sas_addr.i134.i, align 16
  %99 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i, align 4
  %101 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx19.i, align 4
  %call.i.i52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i64 noundef %98, i32 noundef %100, i64 noundef %49, i32 noundef %102, i64 noundef %96) #15
  br label %cleanup.i56

if.else.i.i:                                      ; preds = %if.then41.i
  %eeds_a.i.i = getelementptr inbounds %struct.sas_discovery, ptr %94, i32 0, i32 3
  %103 = ptrtoint ptr %eeds_a.i.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 8)
  %104 = load i64, ptr %eeds_a.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %104)
  %cmp13.i.i = icmp eq i64 %104, 0
  %sas_addr19.i.i = getelementptr inbounds %struct.domain_device, ptr %57, i32 0, i32 15
  %105 = ptrtoint ptr %sas_addr19.i.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %sas_addr19.i.i, align 16
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.else26.i.i

if.then14.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %eeds_a.i.i to i32
  call void @__asan_storeN_noabort(i32 %107, i32 8)
  store i64 %106, ptr %eeds_a.i.i, align 4
  %108 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %port.i.i, align 4
  %eeds_b.i.i = getelementptr inbounds %struct.sas_discovery, ptr %109, i32 0, i32 4
  %110 = ptrtoint ptr %sas_addr.i42 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %sas_addr.i42, align 16
  %112 = ptrtoint ptr %eeds_b.i.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 8)
  store i64 %111, ptr %eeds_b.i.i, align 4
  br label %cleanup.i56

if.else26.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %104, i64 %106)
  %cmp33.i.i = icmp eq i64 %104, %106
  call void @__sanitizer_cov_trace_cmp8(i64 %104, i64 %49)
  %cmp40.i.i = icmp eq i64 %104, %49
  %or.cond.i = select i1 %cmp33.i.i, i1 true, i1 %cmp40.i.i
  br i1 %or.cond.i, label %land.lhs.true.i.i, label %if.else26.i.i.if.else57.i.i_crit_edge

if.else26.i.i.if.else57.i.i_crit_edge:            ; preds = %if.else26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else57.i.i

land.lhs.true.i.i:                                ; preds = %if.else26.i.i
  %eeds_b43.i.i = getelementptr inbounds %struct.sas_discovery, ptr %94, i32 0, i32 4
  %113 = ptrtoint ptr %eeds_b43.i.i to i32
  call void @__asan_loadN_noabort(i32 %113, i32 8)
  %114 = load i64, ptr %eeds_b43.i.i, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %114, i64 %106)
  %cmp47.i.i = icmp eq i64 %114, %106
  call void @__sanitizer_cov_trace_cmp8(i64 %114, i64 %49)
  %cmp55.i.i = icmp eq i64 %114, %49
  %or.cond219.i = select i1 %cmp47.i.i, i1 true, i1 %cmp55.i.i
  br i1 %or.cond219.i, label %land.lhs.true.i.i.cleanup.i56_crit_edge, label %land.lhs.true.i.i.if.else57.i.i_crit_edge

land.lhs.true.i.i.if.else57.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else57.i.i

land.lhs.true.i.i.cleanup.i56_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i56

if.else57.i.i:                                    ; preds = %land.lhs.true.i.i.if.else57.i.i_crit_edge, %if.else26.i.i.if.else57.i.i_crit_edge
  %115 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.i, align 4
  %117 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx19.i, align 4
  %call68.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i64 noundef %106, i32 noundef %116, i64 noundef %49, i32 noundef %118) #15
  br label %cleanup.i56

sas_route_char.exit.i152.i:                       ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr.i138.i = getelementptr inbounds %struct.domain_device, ptr %57, i32 0, i32 15
  %119 = ptrtoint ptr %sas_addr.i138.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %sas_addr.i138.i, align 16
  %121 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i140.i = getelementptr [4 x ptr], ptr @sas_print_parent_topology_bug.ex_type, i32 0, i32 %62
  %123 = ptrtoint ptr %arrayidx3.i140.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx3.i140.i, align 4
  %125 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cond = icmp eq i32 %91, 0
  %spec.select = select i1 %cond, i32 68, i32 63
  %call9.i161.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, i64 noundef %120, i32 noundef %122, ptr noundef %124, i64 noundef %49, i32 noundef %126, i32 noundef 83, i32 noundef %spec.select) #15
  br label %cleanup.i56

if.then54.i:                                      ; preds = %if.else.i51
  %routing_attr55.i = getelementptr %struct.ex_phy, ptr %53, i32 %idxprom.i, i32 10
  %127 = ptrtoint ptr %routing_attr55.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %routing_attr55.i, align 4
  %129 = zext i32 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %129, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %128, label %sas_route_char.exit.i180.i [
    i32 1, label %if.then54.i.cleanup.i56_crit_edge
    i32 2, label %land.lhs.true.i53
  ]

if.then54.i.cleanup.i56_crit_edge:                ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i56

land.lhs.true.i53:                                ; preds = %if.then54.i
  %130 = ptrtoint ptr %t2t_supp.i18.i209.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %bf.load.i = load i8, ptr %t2t_supp.i18.i209.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool63.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool63.not.i, label %land.lhs.true.i53.sas_route_char.exit.i180.i.thread_crit_edge, label %land.lhs.true64.i

land.lhs.true.i53.sas_route_char.exit.i180.i.thread_crit_edge: ; preds = %land.lhs.true.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_route_char.exit.i180.i.thread

land.lhs.true64.i:                                ; preds = %land.lhs.true.i53
  %131 = ptrtoint ptr %t2t_supp65.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %bf.load66.i = load i8, ptr %t2t_supp65.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load66.i)
  %tobool69.not.i = icmp sgt i8 %bf.load66.i, -1
  br i1 %tobool69.not.i, label %land.lhs.true64.i.sas_route_char.exit.i180.i.thread_crit_edge, label %land.lhs.true64.i.cleanup.i56_crit_edge

land.lhs.true64.i.cleanup.i56_crit_edge:          ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i56

land.lhs.true64.i.sas_route_char.exit.i180.i.thread_crit_edge: ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_route_char.exit.i180.i.thread

sas_route_char.exit.i180.i.thread:                ; preds = %land.lhs.true64.i.sas_route_char.exit.i180.i.thread_crit_edge, %land.lhs.true.i53.sas_route_char.exit.i180.i.thread_crit_edge
  %132 = getelementptr inbounds %struct.domain_device, ptr %57, i32 0, i32 19
  %t2t_supp.i.i171.i62 = getelementptr inbounds %struct.expander_device, ptr %132, i32 0, i32 4
  %133 = ptrtoint ptr %t2t_supp.i.i171.i62 to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load.i.i172.i63 = load i8, ptr %t2t_supp.i.i171.i62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i172.i63)
  %tobool.not.i.i173.i64 = icmp sgt i8 %bf.load.i.i172.i63, -1
  %..i.i174.i65 = select i1 %tobool.not.i.i173.i64, i32 84, i32 85
  %134 = ptrtoint ptr %t2t_supp.i18.i209.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %bf.load.i19.i182.i = load i8, ptr %t2t_supp.i18.i209.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i19.i182.i)
  %tobool.not.i20.i183.i = icmp sgt i8 %bf.load.i19.i182.i, -1
  %..i21.i184.i = select i1 %tobool.not.i20.i183.i, i32 84, i32 85
  br label %sas_print_parent_topology_bug.exit190.i

sas_route_char.exit.i180.i:                       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #12
  %135 = getelementptr inbounds %struct.domain_device, ptr %57, i32 0, i32 19
  %t2t_supp.i.i171.i = getelementptr inbounds %struct.expander_device, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %t2t_supp.i.i171.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load.i.i172.i = load i8, ptr %t2t_supp.i.i171.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i172.i)
  %tobool.not.i.i173.i = icmp sgt i8 %bf.load.i.i172.i, -1
  %..i.i174.i = select i1 %tobool.not.i.i173.i, i32 84, i32 85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %cond72 = icmp eq i32 %128, 0
  %spec.select73 = select i1 %cond72, i32 68, i32 63
  br label %sas_print_parent_topology_bug.exit190.i

sas_print_parent_topology_bug.exit190.i:          ; preds = %sas_route_char.exit.i180.i, %sas_route_char.exit.i180.i.thread
  %..i.i174.i66 = phi i32 [ %..i.i174.i65, %sas_route_char.exit.i180.i.thread ], [ %..i.i174.i, %sas_route_char.exit.i180.i ]
  %retval.0.i25.i188.i = phi i32 [ %..i21.i184.i, %sas_route_char.exit.i180.i.thread ], [ %spec.select73, %sas_route_char.exit.i180.i ]
  %137 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx19.i, align 4
  %.in74 = getelementptr [4 x ptr], ptr @sas_print_parent_topology_bug.ex_type, i32 0, i32 %62
  %139 = ptrtoint ptr %.in74 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %.in74, align 4
  %141 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx.i, align 4
  %.in = getelementptr inbounds %struct.domain_device, ptr %57, i32 0, i32 15
  %143 = ptrtoint ptr %.in to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %.in, align 16
  %call9.i189.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44, i64 noundef %144, i32 noundef %142, ptr noundef %140, i64 noundef %49, i32 noundef %138, i32 noundef %..i.i174.i66, i32 noundef %retval.0.i25.i188.i) #15
  br label %cleanup.i56

sw.bb76.i:                                        ; preds = %if.end17.i
  %routing_attr77.i = getelementptr %struct.ex_phy, ptr %45, i32 %i.0222.i, i32 10
  %145 = ptrtoint ptr %routing_attr77.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %routing_attr77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %146)
  %cmp78.not.i = icmp eq i32 %146, 2
  br i1 %cmp78.not.i, label %lor.lhs.false80.i, label %if.then84.i

lor.lhs.false80.i:                                ; preds = %sw.bb76.i
  %routing_attr81.i = getelementptr %struct.ex_phy, ptr %53, i32 %idxprom.i, i32 10
  %147 = ptrtoint ptr %routing_attr81.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %routing_attr81.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp82.not.i = icmp eq i32 %148, 1
  br i1 %cmp82.not.i, label %lor.lhs.false80.i.cleanup.i56_crit_edge, label %if.then84.i.thread

lor.lhs.false80.i.cleanup.i56_crit_edge:          ; preds = %lor.lhs.false80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i56

if.then84.i.thread:                               ; preds = %lor.lhs.false80.i
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr.i194.i68 = getelementptr inbounds %struct.domain_device, ptr %57, i32 0, i32 15
  %149 = ptrtoint ptr %sas_addr.i194.i68 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %sas_addr.i194.i68, align 16
  %151 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx.i, align 4
  %153 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %dev_type.i, align 4
  %arrayidx3.i196.i69 = getelementptr [4 x ptr], ptr @sas_print_parent_topology_bug.ex_type, i32 0, i32 %154
  %155 = ptrtoint ptr %arrayidx3.i196.i69 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %arrayidx3.i196.i69, align 4
  %157 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx19.i, align 4
  %159 = getelementptr inbounds %struct.domain_device, ptr %57, i32 0, i32 19
  %t2t_supp.i.i199.i = getelementptr inbounds %struct.expander_device, ptr %159, i32 0, i32 4
  %160 = ptrtoint ptr %t2t_supp.i.i199.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %bf.load.i.i200.i = load i8, ptr %t2t_supp.i.i199.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i200.i)
  %tobool.not.i.i201.i = icmp sgt i8 %bf.load.i.i200.i, -1
  %..i.i202.i = select i1 %tobool.not.i.i201.i, i32 84, i32 85
  br label %sas_route_char.exit.i208.i

if.then84.i:                                      ; preds = %sw.bb76.i
  %sas_addr.i194.i = getelementptr inbounds %struct.domain_device, ptr %57, i32 0, i32 15
  %161 = ptrtoint ptr %sas_addr.i194.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %sas_addr.i194.i, align 16
  %163 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx.i, align 4
  %165 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %dev_type.i, align 4
  %arrayidx3.i196.i = getelementptr [4 x ptr], ptr @sas_print_parent_topology_bug.ex_type, i32 0, i32 %166
  %167 = ptrtoint ptr %arrayidx3.i196.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx3.i196.i, align 4
  %169 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx19.i, align 4
  %171 = zext i32 %146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %146, label %sw.default.i.i205.i [
    i32 1, label %sw.bb2.i.i204.i
    i32 0, label %if.then84.i.sas_route_char.exit.i208.i_crit_edge
  ]

if.then84.i.sas_route_char.exit.i208.i_crit_edge: ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_route_char.exit.i208.i

sw.bb2.i.i204.i:                                  ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_route_char.exit.i208.i

sw.default.i.i205.i:                              ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_route_char.exit.i208.i

sas_route_char.exit.i208.i:                       ; preds = %sw.default.i.i205.i, %sw.bb2.i.i204.i, %if.then84.i.sas_route_char.exit.i208.i_crit_edge, %if.then84.i.thread
  %172 = phi i32 [ %170, %sw.default.i.i205.i ], [ %170, %sw.bb2.i.i204.i ], [ %158, %if.then84.i.thread ], [ %170, %if.then84.i.sas_route_char.exit.i208.i_crit_edge ]
  %173 = phi ptr [ %168, %sw.default.i.i205.i ], [ %168, %sw.bb2.i.i204.i ], [ %156, %if.then84.i.thread ], [ %168, %if.then84.i.sas_route_char.exit.i208.i_crit_edge ]
  %174 = phi i32 [ %164, %sw.default.i.i205.i ], [ %164, %sw.bb2.i.i204.i ], [ %152, %if.then84.i.thread ], [ %164, %if.then84.i.sas_route_char.exit.i208.i_crit_edge ]
  %175 = phi i64 [ %162, %sw.default.i.i205.i ], [ %162, %sw.bb2.i.i204.i ], [ %150, %if.then84.i.thread ], [ %162, %if.then84.i.sas_route_char.exit.i208.i_crit_edge ]
  %retval.0.i.i206.i = phi i32 [ 63, %sw.default.i.i205.i ], [ 83, %sw.bb2.i.i204.i ], [ %..i.i202.i, %if.then84.i.thread ], [ 68, %if.then84.i.sas_route_char.exit.i208.i_crit_edge ]
  %routing_attr.i17.i207.i = getelementptr %struct.ex_phy, ptr %53, i32 %idxprom.i, i32 10
  %176 = ptrtoint ptr %routing_attr.i17.i207.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %routing_attr.i17.i207.i, align 4
  %178 = zext i32 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %177, label %sw.default.i24.i215.i [
    i32 2, label %sw.bb.i22.i213.i
    i32 0, label %sas_route_char.exit.i208.i.sas_print_parent_topology_bug.exit218.i_crit_edge
    i32 1, label %sw.bb2.i23.i214.i
  ]

sas_route_char.exit.i208.i.sas_print_parent_topology_bug.exit218.i_crit_edge: ; preds = %sas_route_char.exit.i208.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_print_parent_topology_bug.exit218.i

sw.bb.i22.i213.i:                                 ; preds = %sas_route_char.exit.i208.i
  call void @__sanitizer_cov_trace_pc() #12
  %179 = ptrtoint ptr %t2t_supp.i18.i209.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %bf.load.i19.i210.i = load i8, ptr %t2t_supp.i18.i209.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i19.i210.i)
  %tobool.not.i20.i211.i = icmp sgt i8 %bf.load.i19.i210.i, -1
  %..i21.i212.i = select i1 %tobool.not.i20.i211.i, i32 84, i32 85
  br label %sas_print_parent_topology_bug.exit218.i

sw.bb2.i23.i214.i:                                ; preds = %sas_route_char.exit.i208.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_print_parent_topology_bug.exit218.i

sw.default.i24.i215.i:                            ; preds = %sas_route_char.exit.i208.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_print_parent_topology_bug.exit218.i

sas_print_parent_topology_bug.exit218.i:          ; preds = %sw.default.i24.i215.i, %sw.bb2.i23.i214.i, %sw.bb.i22.i213.i, %sas_route_char.exit.i208.i.sas_print_parent_topology_bug.exit218.i_crit_edge
  %retval.0.i25.i216.i = phi i32 [ 63, %sw.default.i24.i215.i ], [ 83, %sw.bb2.i23.i214.i ], [ %..i21.i212.i, %sw.bb.i22.i213.i ], [ 68, %sas_route_char.exit.i208.i.sas_print_parent_topology_bug.exit218.i_crit_edge ]
  %call9.i217.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i64 noundef %175, i32 noundef %174, ptr noundef %173, i64 noundef %49, i32 noundef %172, i32 noundef %retval.0.i.i206.i, i32 noundef %retval.0.i25.i216.i) #15
  br label %cleanup.i56

cleanup.i56:                                      ; preds = %sas_print_parent_topology_bug.exit218.i, %lor.lhs.false80.i.cleanup.i56_crit_edge, %sas_print_parent_topology_bug.exit190.i, %land.lhs.true64.i.cleanup.i56_crit_edge, %if.then54.i.cleanup.i56_crit_edge, %sas_route_char.exit.i152.i, %if.else57.i.i, %land.lhs.true.i.i.cleanup.i56_crit_edge, %if.then14.i.i, %if.then.i.i, %if.then37.i.cleanup.i56_crit_edge, %if.else.i51.cleanup.i56_crit_edge, %sas_print_parent_topology_bug.exit.i, %lor.lhs.false28.i.cleanup.i56_crit_edge, %if.end17.i.cleanup.i56_crit_edge, %if.end12.i.cleanup.i56_crit_edge, %for.body.i47.cleanup.i56_crit_edge
  %res.2.i = phi i32 [ %res.0224.i, %for.body.i47.cleanup.i56_crit_edge ], [ %res.0224.i, %if.end12.i.cleanup.i56_crit_edge ], [ %res.0224.i, %if.end17.i.cleanup.i56_crit_edge ], [ -19, %sas_print_parent_topology_bug.exit218.i ], [ %res.0224.i, %lor.lhs.false80.i.cleanup.i56_crit_edge ], [ -19, %sas_print_parent_topology_bug.exit.i ], [ %res.0224.i, %lor.lhs.false28.i.cleanup.i56_crit_edge ], [ -19, %sas_route_char.exit.i152.i ], [ %res.0224.i, %if.then54.i.cleanup.i56_crit_edge ], [ %res.0224.i, %land.lhs.true64.i.cleanup.i56_crit_edge ], [ -19, %sas_print_parent_topology_bug.exit190.i ], [ %res.0224.i, %if.then37.i.cleanup.i56_crit_edge ], [ %res.0224.i, %if.else.i51.cleanup.i56_crit_edge ], [ -19, %if.then.i.i ], [ 0, %if.then14.i.i ], [ 0, %land.lhs.true.i.i.cleanup.i56_crit_edge ], [ -19, %if.else57.i.i ]
  %inc.i54 = add nuw nsw i32 %i.0222.i, 1
  %180 = ptrtoint ptr %num_phys.i40 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %num_phys.i40, align 2
  %conv.i55 = zext i8 %181 to i32
  %cmp.i = icmp ult i32 %inc.i54, %conv.i55
  br i1 %cmp.i, label %cleanup.i56.for.body.i47_crit_edge, label %sas_check_parent_topology.exit

cleanup.i56.for.body.i47_crit_edge:               ; preds = %cleanup.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i47

sas_check_parent_topology.exit:                   ; preds = %cleanup.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.2.i)
  %tobool16.not = icmp eq i32 %res.2.i, 0
  br i1 %tobool16.not, label %sas_check_parent_topology.exit.cleanup_crit_edge, label %sas_check_parent_topology.exit.out_err_crit_edge

sas_check_parent_topology.exit.out_err_crit_edge: ; preds = %sas_check_parent_topology.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err

sas_check_parent_topology.exit.cleanup_crit_edge: ; preds = %sas_check_parent_topology.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_err:                                          ; preds = %sas_check_parent_topology.exit.out_err_crit_edge, %do.end, %if.end4.out_err_crit_edge, %if.end.out_err_crit_edge
  %res.0 = phi i32 [ %call1, %if.end.out_err_crit_edge ], [ %call5, %if.end4.out_err_crit_edge ], [ %retval.0.i.ph, %do.end ], [ %res.2.i, %sas_check_parent_topology.exit.out_err_crit_edge ]
  tail call void @sas_notify_lldd_dev_gone(ptr noundef %dev) #10
  br label %cleanup

cleanup:                                          ; preds = %out_err, %sas_check_parent_topology.exit.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i39.cleanup_crit_edge, %sas_check_ex_subtractive_boundary.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %out_err ], [ %call, %entry.cleanup_crit_edge ], [ 0, %sas_check_parent_topology.exit.cleanup_crit_edge ], [ 0, %sas_check_ex_subtractive_boundary.exit.cleanup_crit_edge ], [ 0, %if.end.i39.cleanup_crit_edge ], [ 0, %if.end3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_rphy_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_ex_revalidate_domain(ptr noundef %port_dev) local_unnamed_addr #0 align 64 {
entry:
  %dev = alloca ptr, align 4
  %phy_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev) #10
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %dev, align 4
  %call = call fastcc i32 @sas_find_bcast_dev(ptr noundef %port_dev, ptr noundef nonnull %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %land.lhs.true.if.end7_crit_edge, label %if.then

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  %3 = getelementptr inbounds %struct.domain_device, ptr %2, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_id) #10
  %ex_phy.i = getelementptr inbounds %struct.domain_device, ptr %2, i32 0, i32 19, i32 0, i32 4, i32 8
  %sas_addr.i = getelementptr inbounds %struct.domain_device, ptr %2, i32 0, i32 15
  %num_phys.i = getelementptr inbounds %struct.expander_device, ptr %3, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %sas_rediscover.exit.do.body_crit_edge, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %add, %sas_rediscover.exit.do.body_crit_edge ]
  %4 = ptrtoint ptr %phy_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %phy_id, align 4
  %call1 = call fastcc i32 @sas_find_bcast_phy(ptr noundef nonnull %2, ptr noundef nonnull %phy_id, i32 noundef %i.0, i1 noundef zeroext true)
  %5 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp2 = icmp eq i32 %6, -1
  br i1 %cmp2, label %do.body.do.end_crit_edge, label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end:                                           ; preds = %do.body
  %7 = ptrtoint ptr %ex_phy.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ex_phy.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_rediscover.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_ex_revalidate_domain, %do.end.i)) #10
          to label %if.then.i [label %do.end.i], !srcloc !246

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sas_addr.i, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_rediscover.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.103, i64 noundef %10, i32 noundef %6) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %attached_sas_addr.i = getelementptr %struct.ex_phy, ptr %8, i32 %6, i32 7
  %11 = ptrtoint ptr %attached_sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %attached_sas_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp.not.i = icmp eq i64 %12, 0
  br i1 %cmp.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %do.end.i
  %13 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_phys.i, align 2
  %conv.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp655.not.i = icmp eq i8 %14, 0
  br i1 %cmp655.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.056.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.056.i, i32 %6)
  %cmp10.i = icmp eq i32 %i.056.i, %6
  br i1 %cmp10.i, label %for.body.i.for.inc.i_crit_edge, label %cleanup.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cleanup.i:                                        ; preds = %for.body.i
  %15 = ptrtoint ptr %ex_phy.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ex_phy.i, align 4
  %attached_sas_addr14.i = getelementptr %struct.ex_phy, ptr %16, i32 %i.056.i, i32 7
  %17 = ptrtoint ptr %attached_sas_addr14.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %attached_sas_addr14.i, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %12)
  %cmp18.i = icmp eq i64 %18, %12
  br i1 %cmp18.i, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.for.inc.i_crit_edge

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.inc.i:                                        ; preds = %cleanup.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %cleanup.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %conv.i, %for.inc.i.for.end.i_crit_edge ], [ %i.056.i, %cleanup.i.for.end.i_crit_edge ]
  %last.2.off0.i = phi i1 [ true, %for.cond.preheader.i.for.end.i_crit_edge ], [ true, %for.inc.i.for.end.i_crit_edge ], [ false, %cleanup.i.for.end.i_crit_edge ]
  %call23.i = tail call fastcc i32 @sas_rediscover_dev(ptr noundef nonnull %2, i32 noundef %6, i1 noundef zeroext %last.2.off0.i, i32 noundef %i.0.lcssa.i) #10
  br label %sas_rediscover.exit

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call24.i = tail call fastcc i32 @sas_discover_new(ptr noundef nonnull %2, i32 noundef %6) #10
  br label %sas_rediscover.exit

sas_rediscover.exit:                              ; preds = %if.else.i, %for.end.i
  %res.0.i = phi i32 [ %call23.i, %for.end.i ], [ %call24.i, %if.else.i ]
  %add = add i32 %6, 1
  %19 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_phys.i, align 2
  %conv = zext i8 %20 to i32
  %cmp5 = icmp slt i32 %add, %conv
  br i1 %cmp5, label %sas_rediscover.exit.do.body_crit_edge, label %sas_rediscover.exit.do.end_crit_edge

sas_rediscover.exit.do.end_crit_edge:             ; preds = %sas_rediscover.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

sas_rediscover.exit.do.body_crit_edge:            ; preds = %sas_rediscover.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %sas_rediscover.exit.do.end_crit_edge, %do.body.do.end_crit_edge
  %res.0 = phi i32 [ %call1, %do.body.do.end_crit_edge ], [ %res.0.i, %sas_rediscover.exit.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_id) #10
  br label %if.end7

if.end7:                                          ; preds = %do.end, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %res.1 = phi i32 [ %res.0, %do.end ], [ 0, %land.lhs.true.if.end7_crit_edge ], [ %call, %entry.if.end7_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev) #10
  ret i32 %res.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sas_find_bcast_dev(ptr noundef %dev, ptr nocapture noundef %src_dev) unnamed_addr #0 align 64 {
entry:
  %req_sg.i.i = alloca %struct.scatterlist, align 4
  %resp_sg.i.i = alloca %struct.scatterlist, align 4
  %phy_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_id) #10
  %1 = ptrtoint ptr %phy_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %phy_id, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 64, ptr %call7.i.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i27.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 32) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i.i27.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr i8, ptr %call7.i.i.i.i, i32 1
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req_sg.i.i) #10
  %6 = call ptr @memset(ptr %req_sg.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %resp_sg.i.i) #10
  %7 = call ptr @memset(ptr %resp_sg.i.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %req_sg.i.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 8) #10
  call void @sg_init_one(ptr noundef nonnull %resp_sg.i.i, ptr noundef nonnull %call7.i.i.i27.i, i32 noundef 32) #10
  %call.i.i = call fastcc i32 @smp_execute_task_sg(ptr noundef %dev, ptr noundef nonnull %req_sg.i.i, ptr noundef nonnull %resp_sg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %resp_sg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req_sg.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.sas_get_ex_change_count.exit_crit_edge

if.end4.i.sas_get_ex_change_count.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_get_ex_change_count.exit

if.end8.i:                                        ; preds = %if.end4.i
  %result.i = getelementptr inbounds %struct.smp_resp, ptr %call7.i.i.i27.i, i32 0, i32 2
  %8 = ptrtoint ptr %result.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %result.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not.i = icmp eq i8 %9, 0
  br i1 %cmp.not.i, label %if.end13.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %9 to i32
  br label %sas_get_ex_change_count.exit

if.end13.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = getelementptr inbounds %struct.smp_resp, ptr %call7.i.i.i27.i, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %10, align 4
  %conv14.i = zext i16 %12 to i32
  br label %sas_get_ex_change_count.exit

sas_get_ex_change_count.exit:                     ; preds = %if.end13.i, %if.then10.i, %if.end4.i.sas_get_ex_change_count.exit_crit_edge
  %ex_change_count.0 = phi i32 [ %conv14.i, %if.end13.i ], [ -1, %if.then10.i ], [ -1, %if.end4.i.sas_get_ex_change_count.exit_crit_edge ]
  %res.0.i = phi i32 [ 0, %if.end13.i ], [ %conv.i, %if.then10.i ], [ %call.i.i, %if.end4.i.sas_get_ex_change_count.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i27.i) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i)
  %tobool.not = icmp eq i32 %res.0.i, 0
  br i1 %tobool.not, label %if.end, label %sas_get_ex_change_count.exit.cleanup_crit_edge

sas_get_ex_change_count.exit.cleanup_crit_edge:   ; preds = %sas_get_ex_change_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sas_get_ex_change_count.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ex_change_count.0)
  %cmp.not = icmp eq i32 %ex_change_count.0, -1
  br i1 %cmp.not, label %if.end.if.end17_crit_edge, label %land.lhs.true

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %ex_change_count1 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 2
  %13 = ptrtoint ptr %ex_change_count1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ex_change_count1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ex_change_count.0, i32 %14)
  %cmp2.not = icmp eq i32 %ex_change_count.0, %14
  br i1 %cmp2.not, label %land.lhs.true.if.end17_crit_edge, label %if.then3

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then3:                                         ; preds = %land.lhs.true
  %call4 = call fastcc i32 @sas_find_bcast_phy(ptr noundef %dev, ptr noundef nonnull %phy_id, i32 noundef 0, i1 noundef zeroext false)
  %15 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp5.not = icmp eq i32 %16, -1
  br i1 %cmp5.not, label %do.end11, label %if.then6

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %src_dev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %src_dev, align 4
  %18 = ptrtoint ptr %ex_change_count1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ex_change_count.0, ptr %ex_change_count1, align 4
  %sas_addr = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %19 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %sas_addr, align 16
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i64 noundef %20, i32 noundef %16) #15
  br label %cleanup

do.end11:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr13 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %21 = ptrtoint ptr %sas_addr13 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %sas_addr13, align 16
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i64 noundef %22) #15
  br label %if.end17

if.end17:                                         ; preds = %do.end11, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %res.0 = phi i32 [ %call4, %do.end11 ], [ 0, %land.lhs.true.if.end17_crit_edge ], [ 0, %if.end.if.end17_crit_edge ]
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn57 = load ptr, ptr %0, align 4
  %cmp20.not59 = icmp eq ptr %.pn57, %0
  br i1 %cmp20.not59, label %if.end17.cleanup_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  br label %for.body

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end17.for.body_crit_edge
  %.pn61 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn57, %if.end17.for.body_crit_edge ]
  %res.160 = phi i32 [ %res.2, %for.inc.for.body_crit_edge ], [ %res.0, %if.end17.for.body_crit_edge ]
  %dev_type = getelementptr i8, ptr %.pn61, i32 -24
  %24 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dev_type, align 4
  %26 = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %if.then22, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then22:                                        ; preds = %for.body
  %ch.062 = getelementptr i8, ptr %.pn61, i32 -68
  %call23 = call fastcc i32 @sas_find_bcast_dev(ptr noundef %ch.062, ptr noundef %src_dev)
  %28 = ptrtoint ptr %src_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %src_dev, align 4
  %tobool24.not = icmp eq ptr %29, null
  br i1 %tobool24.not, label %if.then22.for.inc_crit_edge, label %if.then22.cleanup_crit_edge

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then22.for.inc_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.then22.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %res.2 = phi i32 [ %call23, %if.then22.for.inc_crit_edge ], [ %res.160, %for.body.for.inc_crit_edge ]
  %30 = ptrtoint ptr %.pn61 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn = load ptr, ptr %.pn61, align 4
  %cmp20.not = icmp eq ptr %.pn, %0
  br i1 %cmp20.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then6, %sas_get_ex_change_count.exit.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ %res.0.i, %sas_get_ex_change_count.exit.cleanup_crit_edge ], [ -12, %if.then3.i ], [ -12, %entry.cleanup_crit_edge ], [ %res.0, %if.end17.cleanup_crit_edge ], [ %call23, %if.then22.cleanup_crit_edge ], [ %res.2, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_id) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sas_find_bcast_phy(ptr noundef %dev, ptr nocapture noundef writeonly %phy_id, i32 noundef %from_phy, i1 noundef zeroext %update) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19
  %num_phys = getelementptr inbounds %struct.expander_device, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_phys, align 2
  %conv36 = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv36, i32 %from_phy)
  %cmp37 = icmp sgt i32 %conv36, %from_phy
  br i1 %cmp37, label %for.body.lr.ph, label %entry.cleanup10_crit_edge

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

for.body.lr.ph:                                   ; preds = %entry
  %ex_phy = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 4, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ %from_phy, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 56) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %for.body.cleanup10_crit_edge, label %if.end.i

for.body.cleanup10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

if.end.i:                                         ; preds = %for.body
  %call1.i = tail call fastcc i32 @sas_get_phy_discover(ptr noundef %dev, i32 noundef %i.038, ptr noundef nonnull %call7.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %sas_get_phy_change_count.exit.thread25, label %sas_get_phy_change_count.exit

sas_get_phy_change_count.exit.thread25:           ; preds = %if.end.i
  %4 = getelementptr inbounds %struct.smp_resp, ptr %call7.i.i.i.i, i32 0, i32 4
  %change_count.i = getelementptr inbounds %struct.discover_resp, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %change_count.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %change_count.i, align 2
  %conv.i = zext i8 %6 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  %7 = ptrtoint ptr %ex_phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ex_phy, align 4
  %phy_change_count2 = getelementptr %struct.ex_phy, ptr %8, i32 %i.038, i32 9
  %9 = ptrtoint ptr %phy_change_count2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %phy_change_count2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv.i)
  %cmp3.not = icmp eq i32 %10, %conv.i
  br i1 %cmp3.not, label %sas_get_phy_change_count.exit.thread25.for.inc_crit_edge, label %if.then

sas_get_phy_change_count.exit.thread25.for.inc_crit_edge: ; preds = %sas_get_phy_change_count.exit.thread25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sas_get_phy_change_count.exit:                    ; preds = %if.end.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  %11 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %call1.i, label %sas_get_phy_change_count.exit.cleanup10_crit_edge [
    i32 22, label %sas_get_phy_change_count.exit.for.inc_crit_edge
    i32 16, label %sas_get_phy_change_count.exit.for.inc_crit_edge47
  ]

sas_get_phy_change_count.exit.for.inc_crit_edge47: ; preds = %sas_get_phy_change_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sas_get_phy_change_count.exit.for.inc_crit_edge:  ; preds = %sas_get_phy_change_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

sas_get_phy_change_count.exit.cleanup10_crit_edge: ; preds = %sas_get_phy_change_count.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

if.then:                                          ; preds = %sas_get_phy_change_count.exit.thread25
  br i1 %update, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.le = zext i8 %6 to i32
  %12 = ptrtoint ptr %phy_change_count2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv.i.le, ptr %phy_change_count2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %13 = ptrtoint ptr %phy_id to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %i.038, ptr %phy_id, align 4
  br label %cleanup10

for.inc:                                          ; preds = %sas_get_phy_change_count.exit.for.inc_crit_edge, %sas_get_phy_change_count.exit.for.inc_crit_edge47, %sas_get_phy_change_count.exit.thread25.for.inc_crit_edge
  %inc = add nsw i32 %i.038, 1
  %14 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_phys, align 2
  %conv = zext i8 %15 to i32
  %cmp = icmp slt i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup10_crit_edge

for.inc.cleanup10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup10:                                        ; preds = %for.inc.cleanup10_crit_edge, %if.end, %sas_get_phy_change_count.exit.cleanup10_crit_edge, %for.body.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.2 = phi i32 [ 0, %if.end ], [ 0, %entry.cleanup10_crit_edge ], [ 0, %for.inc.cleanup10_crit_edge ], [ -12, %for.body.cleanup10_crit_edge ], [ %call1.i, %sas_get_phy_change_count.exit.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_smp_handler(ptr noundef %job, ptr noundef %shost, ptr noundef %rphy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rphy, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sas_smp_host_handler(ptr noundef %job, ptr noundef %shost) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %identify = getelementptr inbounds %struct.sas_rphy, ptr %rphy, i32 0, i32 1
  %0 = ptrtoint ptr %identify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %identify, align 8
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp eq i32 %2, 2
  br i1 %switch, label %sw.epilog, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #15
  br label %out

sw.epilog:                                        ; preds = %if.end
  %call1 = tail call ptr @sas_find_dev_by_rphy(ptr noundef nonnull %rphy) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end6, label %if.end9

do.end6:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7) #15
  br label %out

if.end9:                                          ; preds = %sw.epilog
  %request_payload = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sg_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %if.end9.do.end15_crit_edge, label %lor.lhs.false

if.end9.do.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

lor.lhs.false:                                    ; preds = %if.end9
  %reply_payload = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8
  %sg_cnt10 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %sg_cnt10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sg_cnt10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp11 = icmp sgt i32 %6, 1
  br i1 %cmp11, label %lor.lhs.false.do.end15_crit_edge, label %if.end21

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

do.end15:                                         ; preds = %lor.lhs.false.do.end15_crit_edge, %if.end9.do.end15_crit_edge
  %7 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %request_payload, align 4
  %reply_payload18 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8
  %9 = ptrtoint ptr %reply_payload18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reply_payload18, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7, i32 noundef %8, i32 noundef %10) #15
  br label %out

if.end21:                                         ; preds = %lor.lhs.false
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sg_list, align 4
  %sg_list24 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %sg_list24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sg_list24, align 4
  %call25 = tail call fastcc i32 @smp_execute_task_sg(ptr noundef nonnull %call1, ptr noundef %12, ptr noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call25)
  %cmp26 = icmp sgt i32 %call25, -1
  br i1 %cmp26, label %if.then27, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reply_payload, align 4
  %sub = sub i32 %16, %call25
  br label %out

out:                                              ; preds = %if.then27, %if.end21.out_crit_edge, %do.end15, %do.end6, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ -22, %do.end15 ], [ 0, %if.then27 ], [ %call25, %if.end21.out_crit_edge ], [ -22, %do.end6 ]
  %rcvlen.0 = phi i32 [ 0, %do.end ], [ 0, %do.end15 ], [ %sub, %if.then27 ], [ 0, %if.end21.out_crit_edge ], [ 0, %do.end6 ]
  tail call void @bsg_job_done(ptr noundef %job, i32 noundef %ret.0, i32 noundef %rcvlen.0) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_smp_host_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smp_execute_task_sg(ptr noundef %dev, ptr nocapture noundef readonly %req, ptr nocapture noundef readonly %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %core = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %transportt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transportt, align 4
  %dev4 = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #10
  %cmd_mutex = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 4, i32 16
  tail call void @mutex_lock_nested(ptr noundef %cmd_mutex, i32 noundef 0) #10
  %state = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 21
  %tproto = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 13
  %dft = getelementptr inbounds %struct.sas_internal, ptr %7, i32 0, i32 2
  %sas_addr = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %do.end80.for.body_crit_edge, %entry
  %retry.0155 = phi i32 [ 0, %entry ], [ %inc, %do.end80.for.body_crit_edge ]
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %for.body.do.end105_crit_edge

for.body.do.end105_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end105

if.end:                                           ; preds = %for.body
  %call6 = tail call ptr @sas_alloc_slow_task(i32 noundef 3264) #10
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end.do.end105_crit_edge, label %if.end9

if.end.do.end105_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end105

if.end9:                                          ; preds = %if.end
  %12 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %call6, align 4
  %13 = ptrtoint ptr %tproto to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tproto, align 8
  %task_proto = getelementptr inbounds %struct.sas_task, ptr %call6, i32 0, i32 3
  %15 = ptrtoint ptr %task_proto to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %task_proto, align 4
  %16 = getelementptr inbounds %struct.sas_task, ptr %call6, i32 0, i32 4
  %17 = call ptr @memcpy(ptr %16, ptr %req, i32 20)
  %smp_resp = getelementptr inbounds %struct.sas_task, ptr %call6, i32 0, i32 4, i32 0, i32 1
  %18 = call ptr @memcpy(ptr %smp_resp, ptr %resp, i32 20)
  %task_done = getelementptr inbounds %struct.sas_task, ptr %call6, i32 0, i32 10
  %19 = ptrtoint ptr %task_done to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @smp_task_done, ptr %task_done, align 4
  %slow_task = getelementptr inbounds %struct.sas_task, ptr %call6, i32 0, i32 13
  %20 = ptrtoint ptr %slow_task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %slow_task, align 4
  %function = getelementptr inbounds %struct.timer_list, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @smp_task_timedout, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %23, 1000
  %24 = load ptr, ptr %slow_task, align 4
  %expires = getelementptr inbounds %struct.timer_list, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add, ptr %expires, align 4
  %26 = load ptr, ptr %slow_task, align 4
  tail call void @add_timer(ptr noundef %26) #10
  %27 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dft, align 4
  %lldd_execute_task = getelementptr inbounds %struct.sas_domain_function_template, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %lldd_execute_task to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lldd_execute_task, align 4
  %call15 = tail call i32 %30(ptr noundef nonnull %call6, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  %31 = ptrtoint ptr %slow_task to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %slow_task, align 4
  br i1 %tobool16.not, label %if.end23, label %if.then17

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %call20 = tail call i32 @del_timer(ptr noundef %32) #10
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, i32 noundef %call15) #15
  br label %do.end105

if.end23:                                         ; preds = %if.end9
  %completion = getelementptr inbounds %struct.sas_task_slow, ptr %32, i32 0, i32 1
  tail call void @wait_for_completion(ptr noundef %completion) #10
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %call6, i32 0, i32 2
  %33 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %task_state_flags, align 4
  %and = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end23.if.end44_crit_edge, label %do.end29

if.end23.if.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

do.end29:                                         ; preds = %if.end23
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #15
  %35 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dft, align 4
  %lldd_abort_task = getelementptr inbounds %struct.sas_domain_function_template, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %lldd_abort_task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lldd_abort_task, align 4
  %call33 = tail call i32 %38(ptr noundef nonnull %call6) #10
  %39 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %task_state_flags, align 4
  %and35 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.end40, label %do.end29.if.end44_crit_edge

do.end29.if.end44_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

do.end40:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #12
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #15
  br label %do.end105

if.end44:                                         ; preds = %do.end29.if.end44_crit_edge, %if.end23.if.end44_crit_edge
  %task_status = getelementptr inbounds %struct.sas_task, ptr %call6, i32 0, i32 9
  %41 = ptrtoint ptr %task_status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %task_status, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %42, label %if.end44.do.end80_crit_edge [
    i32 0, label %land.lhs.true
    i32 -1, label %land.lhs.true73
  ]

if.end44.do.end80_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end80

land.lhs.true:                                    ; preds = %if.end44
  %stat = getelementptr inbounds %struct.sas_task, ptr %call6, i32 0, i32 9, i32 1
  %44 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp48 = icmp eq i32 %45, 0
  br i1 %cmp48, label %land.lhs.true.do.end105_crit_edge, label %land.lhs.true54

land.lhs.true.do.end105_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end105

land.lhs.true54:                                  ; preds = %land.lhs.true
  %46 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %47)
  %cmp57 = icmp eq i32 %47, 129
  br i1 %cmp57, label %if.then58, label %land.lhs.true64

if.then58:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #12
  %residual = getelementptr inbounds %struct.sas_task, ptr %call6, i32 0, i32 9, i32 4
  %48 = ptrtoint ptr %residual to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %residual, align 4
  br label %do.end105

land.lhs.true64:                                  ; preds = %land.lhs.true54
  %50 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %51)
  %cmp67 = icmp eq i32 %51, 130
  br i1 %cmp67, label %land.lhs.true64.do.end105_crit_edge, label %land.lhs.true64.do.end80_crit_edge

land.lhs.true64.do.end80_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end80

land.lhs.true64.do.end105_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end105

land.lhs.true73:                                  ; preds = %if.end44
  %stat75 = getelementptr inbounds %struct.sas_task, ptr %call6, i32 0, i32 9, i32 1
  %52 = ptrtoint ptr %stat75 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stat75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 133, i32 %53)
  %cmp76 = icmp eq i32 %53, 133
  br i1 %cmp76, label %land.lhs.true73.do.end105_crit_edge, label %land.lhs.true73.do.end80_crit_edge

land.lhs.true73.do.end80_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end80

land.lhs.true73.do.end105_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end105

do.end80:                                         ; preds = %land.lhs.true73.do.end80_crit_edge, %land.lhs.true64.do.end80_crit_edge, %if.end44.do.end80_crit_edge
  %54 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %sas_addr, align 16
  %stat85 = getelementptr inbounds %struct.sas_task, ptr %call6, i32 0, i32 9, i32 1
  %56 = ptrtoint ptr %stat85 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stat85, align 4
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.116, i64 noundef %55, i32 noundef %42, i32 noundef %57) #15
  tail call void @sas_free_task(ptr noundef nonnull %call6) #10
  %inc = add nuw nsw i32 %retry.0155, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.end80.do.end105_crit_edge, label %do.end80.for.body_crit_edge

do.end80.for.body_crit_edge:                      ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end80.do.end105_crit_edge:                     ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end105

do.end105:                                        ; preds = %do.end80.do.end105_crit_edge, %land.lhs.true73.do.end105_crit_edge, %land.lhs.true64.do.end105_crit_edge, %if.then58, %land.lhs.true.do.end105_crit_edge, %do.end40, %if.then17, %if.end.do.end105_crit_edge, %for.body.do.end105_crit_edge
  %task.1 = phi ptr [ %call6, %if.then17 ], [ %call6, %if.then58 ], [ %call6, %do.end40 ], [ %call6, %land.lhs.true64.do.end105_crit_edge ], [ %call6, %land.lhs.true.do.end105_crit_edge ], [ null, %if.end.do.end105_crit_edge ], [ null, %for.body.do.end105_crit_edge ], [ null, %do.end80.do.end105_crit_edge ], [ %call6, %land.lhs.true73.do.end105_crit_edge ]
  %res.1 = phi i32 [ %call15, %if.then17 ], [ %49, %if.then58 ], [ -70, %do.end40 ], [ -90, %land.lhs.true64.do.end105_crit_edge ], [ 0, %land.lhs.true.do.end105_crit_edge ], [ -12, %if.end.do.end105_crit_edge ], [ -70, %for.body.do.end105_crit_edge ], [ -70, %do.end80.do.end105_crit_edge ], [ -70, %land.lhs.true73.do.end105_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %cmd_mutex) #10
  %58 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev4, align 4
  %call.i147 = tail call i32 @__pm_runtime_idle(ptr noundef %59, i32 noundef 4) #10
  tail call void @sas_free_task(ptr noundef %task.1) #10
  ret i32 %res.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bsg_job_done(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sas_set_ex_phy(ptr nocapture noundef readonly %dev, i32 noundef %phy_id, ptr nocapture noundef readonly %rsp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.smp_resp, ptr %rsp, i32 0, i32 4
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port, align 4
  %ha1 = getelementptr inbounds %struct.asd_sas_port, ptr %2, i32 0, i32 21
  %3 = ptrtoint ptr %ha1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ha1, align 4
  %ex_phy = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %ex_phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ex_phy, align 4
  %arrayidx = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id
  %rphy2 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %rphy2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rphy2, align 4
  %phy3 = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 13
  %9 = ptrtoint ptr %phy3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy3, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.then, label %entry.if.end71_crit_edge

entry.if.end71_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.sas_ha_struct, ptr %4, i32 0, i32 2
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state, align 4
  %13 = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %if.end46, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %.b424 = load i1, ptr @sas_set_ex_phy.__already_done, align 1
  br i1 %.b424, label %land.rhs.cleanup_crit_edge, label %if.then15, !prof !247

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @sas_set_ex_phy.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 213, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end46:                                         ; preds = %if.then
  %call48 = tail call ptr @sas_phy_alloc(ptr noundef %8, i32 noundef %phy_id) #10
  %14 = ptrtoint ptr %phy3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call48, ptr %phy3, align 4
  %tobool52.not = icmp eq ptr %call48, null
  br i1 %tobool52.not, label %do.body62, label %if.end46.if.end71_crit_edge, !prof !248

if.end46.if.end71_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

do.body62:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/libsas/sas_expander.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 218, 0\0A.popsection", ""() #10, !srcloc !249
  unreachable

if.end71:                                         ; preds = %if.end46.if.end71_crit_edge, %entry.if.end71_crit_edge
  %result = getelementptr inbounds %struct.smp_resp, ptr %rsp, i32 0, i32 2
  %15 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %result, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %switch.selectcmp = icmp eq i8 %16, 0
  %switch.select = select i1 %switch.selectcmp, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 22, i8 %16)
  %switch.selectcmp439 = icmp eq i8 %16, 22
  %switch.select440 = select i1 %switch.selectcmp439, i32 1, i32 %switch.select
  %phy_state74 = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 1
  %17 = ptrtoint ptr %phy_state74 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %switch.select440, ptr %phy_state74, align 4
  %attached_dev_type = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 2
  %18 = ptrtoint ptr %attached_dev_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %attached_dev_type, align 4
  %linkrate75 = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 3
  %20 = ptrtoint ptr %linkrate75 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %linkrate75, align 4
  %attached_sas_addr = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 7
  %22 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_load1_noabort(i32 %22)
  %sas_addr.sroa.0.0.copyload = load i8, ptr %attached_sas_addr, align 4
  %sas_addr.sroa.5.0.arraydecay76.sroa_idx = getelementptr inbounds i8, ptr %attached_sas_addr, i32 1
  %23 = ptrtoint ptr %sas_addr.sroa.5.0.arraydecay76.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %23)
  %sas_addr.sroa.5.0.copyload = load i8, ptr %sas_addr.sroa.5.0.arraydecay76.sroa_idx, align 1
  %sas_addr.sroa.6.0.arraydecay76.sroa_idx = getelementptr inbounds i8, ptr %attached_sas_addr, i32 2
  %24 = ptrtoint ptr %sas_addr.sroa.6.0.arraydecay76.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %24)
  %sas_addr.sroa.6.0.copyload = load i8, ptr %sas_addr.sroa.6.0.arraydecay76.sroa_idx, align 2
  %sas_addr.sroa.7.0.arraydecay76.sroa_idx = getelementptr inbounds i8, ptr %attached_sas_addr, i32 3
  %25 = ptrtoint ptr %sas_addr.sroa.7.0.arraydecay76.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %25)
  %sas_addr.sroa.7.0.copyload = load i8, ptr %sas_addr.sroa.7.0.arraydecay76.sroa_idx, align 1
  %sas_addr.sroa.8.0.arraydecay76.sroa_idx = getelementptr inbounds i8, ptr %attached_sas_addr, i32 4
  %26 = ptrtoint ptr %sas_addr.sroa.8.0.arraydecay76.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %26)
  %sas_addr.sroa.8.0.copyload = load i8, ptr %sas_addr.sroa.8.0.arraydecay76.sroa_idx, align 4
  %sas_addr.sroa.9.0.arraydecay76.sroa_idx = getelementptr inbounds i8, ptr %attached_sas_addr, i32 5
  %27 = ptrtoint ptr %sas_addr.sroa.9.0.arraydecay76.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %27)
  %sas_addr.sroa.9.0.copyload = load i8, ptr %sas_addr.sroa.9.0.arraydecay76.sroa_idx, align 1
  %sas_addr.sroa.10.0.arraydecay76.sroa_idx = getelementptr inbounds i8, ptr %attached_sas_addr, i32 6
  %28 = ptrtoint ptr %sas_addr.sroa.10.0.arraydecay76.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %28)
  %sas_addr.sroa.10.0.copyload = load i8, ptr %sas_addr.sroa.10.0.arraydecay76.sroa_idx, align 2
  %sas_addr.sroa.11.0.arraydecay76.sroa_idx = getelementptr inbounds i8, ptr %attached_sas_addr, i32 7
  %29 = ptrtoint ptr %sas_addr.sroa.11.0.arraydecay76.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %29)
  %sas_addr.sroa.11.0.copyload = load i8, ptr %sas_addr.sroa.11.0.arraydecay76.sroa_idx, align 1
  %phy_state77 = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 1
  %30 = ptrtoint ptr %phy_state77 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %phy_state77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp = icmp eq i32 %31, 1
  br i1 %cmp, label %if.then79, label %if.end88

if.then79:                                        ; preds = %if.end71
  %32 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 0, ptr %attached_sas_addr, align 4
  %33 = ptrtoint ptr %attached_dev_type to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %attached_dev_type, align 4
  %state83 = getelementptr inbounds %struct.sas_ha_struct, ptr %4, i32 0, i32 2
  %34 = ptrtoint ptr %state83 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state83, align 4
  %36 = and i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool85.not = icmp eq i32 %36, 0
  br i1 %tobool85.not, label %if.then86, label %if.then79.sw.bb240_crit_edge

if.then79.sw.bb240_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb240

if.then86:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %phy_id, ptr %arrayidx, align 4
  br label %skip

if.end88:                                         ; preds = %if.end71
  %attached_dev_type.i = getelementptr inbounds %struct.smp_resp, ptr %rsp, i32 0, i32 4, i32 0, i32 4
  %38 = ptrtoint ptr %attached_dev_type.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %bf.load.i = load i32, ptr %attached_dev_type.i, align 1
  %39 = and i32 %bf.load.i, 1879572481
  call void @__sanitizer_cov_trace_const_cmp4(i32 524289, i32 %39)
  %.not.i = icmp eq i32 %39, 524289
  %bf.lshr16.i = lshr i32 %bf.load.i, 28
  %bf.cast18.i = and i32 %bf.lshr16.i, 7
  %retval.0.i434 = select i1 %.not.i, i32 9, i32 %bf.cast18.i
  %40 = ptrtoint ptr %attached_dev_type to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i434, ptr %attached_dev_type, align 4
  %state91 = getelementptr inbounds %struct.sas_ha_struct, ptr %4, i32 0, i32 2
  %41 = ptrtoint ptr %state91 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %state91, align 4
  %43 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool93.not = icmp eq i32 %43, 0
  br i1 %tobool93.not, label %if.end95, label %if.end88.out_crit_edge

if.end88.out_crit_edge:                           ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end95:                                         ; preds = %if.end88
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %phy_id, ptr %arrayidx, align 4
  %45 = ptrtoint ptr %attached_dev_type.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %bf.load = load i32, ptr %attached_dev_type.i, align 1
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.cast = and i32 %bf.lshr, 15
  %46 = ptrtoint ptr %linkrate75 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %bf.cast, ptr %linkrate75, align 4
  %bf.load100 = load i32, ptr %attached_dev_type.i, align 1
  %attached_sata_host104 = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 4
  %47 = ptrtoint ptr %attached_sata_host104 to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load105 = load i8, ptr %attached_sata_host104, align 4
  %sh.diff = lshr i32 %bf.load100, 1
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -128
  %bf.clear106 = and i8 %bf.load105, 127
  %bf.set = or i8 %bf.shl, %bf.clear106
  store i8 %bf.set, ptr %attached_sata_host104, align 4
  %bf.load107 = load i32, ptr %attached_dev_type.i, align 1
  %48 = trunc i32 %bf.load107 to i8
  %bf.cast109 = shl i8 %48, 6
  %bf.shl113 = and i8 %bf.cast109, 64
  %bf.clear114 = and i8 %bf.set, -65
  %bf.set115 = or i8 %bf.shl113, %bf.clear114
  store i8 %bf.set115, ptr %attached_sata_host104, align 4
  %bf.load116 = load i32, ptr %attached_dev_type.i, align 1
  %49 = trunc i32 %bf.load116 to i8
  %50 = lshr i8 %49, 2
  %bf.shl123 = and i8 %50, 32
  %bf.clear124 = and i8 %bf.set115, -33
  %bf.set125 = or i8 %bf.clear124, %bf.shl123
  store i8 %bf.set125, ptr %attached_sata_host104, align 4
  %bf.load126 = load i32, ptr %attached_dev_type.i, align 1
  %51 = lshr i32 %bf.load126, 8
  %shl = and i32 %51, 14
  %attached_iproto = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 6
  %52 = ptrtoint ptr %attached_iproto to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %shl, ptr %attached_iproto, align 4
  %bf.load131 = load i32, ptr %attached_dev_type.i, align 1
  %bf.cast134 = and i32 %bf.load131, 14
  %attached_tproto = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 5
  %53 = ptrtoint ptr %attached_tproto to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %bf.cast134, ptr %attached_tproto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i434)
  %cmp138 = icmp eq i32 %retval.0.i434, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bf.cast)
  %cmp141 = icmp ult i32 %bf.cast, 8
  %or.cond = select i1 %cmp138, i1 true, i1 %cmp141
  br i1 %or.cond, label %if.end95.if.end151_crit_edge, label %if.else146

if.end95.if.end151_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end151

if.else146:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  %attached_sas_addr149 = getelementptr inbounds %struct.smp_resp, ptr %rsp, i32 0, i32 4, i32 0, i32 6
  %54 = ptrtoint ptr %attached_sas_addr149 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %attached_sas_addr149, align 1
  br label %if.end151

if.end151:                                        ; preds = %if.else146, %if.end95.if.end151_crit_edge
  %storemerge = phi i64 [ %55, %if.else146 ], [ 0, %if.end95.if.end151_crit_edge ]
  %56 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 %storemerge, ptr %attached_sas_addr, align 4
  %attached_phy_id = getelementptr inbounds %struct.smp_resp, ptr %rsp, i32 0, i32 4, i32 0, i32 6, i32 8
  %57 = ptrtoint ptr %attached_phy_id to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %attached_phy_id, align 1
  %attached_phy_id152 = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 8
  %59 = ptrtoint ptr %attached_phy_id152 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %attached_phy_id152, align 4
  %change_count = getelementptr inbounds %struct.discover_resp, ptr %0, i32 0, i32 9
  %60 = ptrtoint ptr %change_count to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %change_count, align 1
  %conv153 = zext i8 %61 to i32
  %phy_change_count = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 9
  %62 = ptrtoint ptr %phy_change_count to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %conv153, ptr %phy_change_count, align 4
  %routing_attr = getelementptr inbounds %struct.discover_resp, ptr %0, i32 0, i32 10
  %63 = ptrtoint ptr %routing_attr to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %bf.load154 = load i16, ptr %routing_attr, align 1
  %64 = and i16 %bf.load154, 15
  %bf.cast156 = zext i16 %64 to i32
  %routing_attr158 = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 10
  %65 = ptrtoint ptr %routing_attr158 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %bf.cast156, ptr %routing_attr158, align 4
  %bf.load159 = load i16, ptr %routing_attr, align 1
  %virtual162 = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 11
  %66 = ptrtoint ptr %virtual162 to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load163 = load i8, ptr %virtual162, align 4
  %sh.diff421 = lshr i16 %bf.load159, 8
  %tr.sh.diff422 = trunc i16 %sh.diff421 to i8
  %bf.shl165 = and i8 %tr.sh.diff422, -128
  %bf.clear166 = and i8 %bf.load163, 127
  %bf.set167 = or i8 %bf.shl165, %bf.clear166
  store i8 %bf.set167, ptr %virtual162, align 4
  %last_da_index = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 12
  %67 = ptrtoint ptr %last_da_index to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %last_da_index, align 4
  %68 = ptrtoint ptr %phy3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %phy3, align 4
  %sas_address = getelementptr inbounds %struct.sas_phy, ptr %69, i32 0, i32 3, i32 3
  %70 = ptrtoint ptr %sas_address to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %storemerge, ptr %sas_address, align 8
  %71 = ptrtoint ptr %attached_dev_type.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %bf.load172 = load i32, ptr %attached_dev_type.i, align 1
  %bf.lshr173 = lshr i32 %bf.load172, 28
  %bf.cast175 = and i32 %bf.lshr173, 7
  %72 = load ptr, ptr %phy3, align 4
  %identify178 = getelementptr inbounds %struct.sas_phy, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %identify178 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %bf.cast175, ptr %identify178, align 8
  %74 = ptrtoint ptr %attached_iproto to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %attached_iproto, align 4
  %76 = load ptr, ptr %phy3, align 4
  %initiator_port_protocols = getelementptr inbounds %struct.sas_phy, ptr %76, i32 0, i32 3, i32 1
  %77 = ptrtoint ptr %initiator_port_protocols to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %75, ptr %initiator_port_protocols, align 4
  %78 = ptrtoint ptr %attached_tproto to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %attached_tproto, align 4
  %80 = load ptr, ptr %phy3, align 4
  %target_port_protocols = getelementptr inbounds %struct.sas_phy, ptr %80, i32 0, i32 3, i32 2
  %81 = ptrtoint ptr %target_port_protocols to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %79, ptr %target_port_protocols, align 8
  %82 = load i32, ptr %attached_tproto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool186.not = icmp eq i32 %82, 0
  br i1 %tobool186.not, label %land.lhs.true, label %if.end151.if.end197_crit_edge

if.end151.if.end197_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end197

land.lhs.true:                                    ; preds = %if.end151
  %83 = ptrtoint ptr %attached_dev_type.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %bf.load188 = load i32, ptr %attached_dev_type.i, align 1
  %bf.cast190 = and i32 %bf.load188, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast190)
  %tobool192.not = icmp eq i32 %bf.cast190, 0
  br i1 %tobool192.not, label %land.lhs.true.if.end197_crit_edge, label %if.then193

land.lhs.true.if.end197_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end197

if.then193:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %phy3 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %phy3, align 4
  %target_port_protocols196 = getelementptr inbounds %struct.sas_phy, ptr %85, i32 0, i32 3, i32 2
  %86 = ptrtoint ptr %target_port_protocols196 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %target_port_protocols196, align 8
  br label %if.end197

if.end197:                                        ; preds = %if.then193, %land.lhs.true.if.end197_crit_edge, %if.end151.if.end197_crit_edge
  %conv198 = trunc i32 %phy_id to i8
  %87 = ptrtoint ptr %phy3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %phy3, align 4
  %phy_identifier = getelementptr inbounds %struct.sas_phy, ptr %88, i32 0, i32 3, i32 4
  %89 = ptrtoint ptr %phy_identifier to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv198, ptr %phy_identifier, align 8
  %hmin_linkrate = getelementptr inbounds %struct.smp_resp, ptr %rsp, i32 0, i32 4, i32 0, i32 6, i32 16
  %90 = ptrtoint ptr %hmin_linkrate to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %bf.load201 = load i16, ptr %hmin_linkrate, align 1
  %bf.lshr202 = lshr i16 %bf.load201, 8
  %91 = and i16 %bf.lshr202, 15
  %bf.cast204 = zext i16 %91 to i32
  %92 = load ptr, ptr %phy3, align 4
  %minimum_linkrate_hw = getelementptr inbounds %struct.sas_phy, ptr %92, i32 0, i32 5
  %93 = ptrtoint ptr %minimum_linkrate_hw to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %bf.cast204, ptr %minimum_linkrate_hw, align 4
  %bf.load207 = load i16, ptr %hmin_linkrate, align 1
  %94 = and i16 %bf.load207, 15
  %bf.cast209 = zext i16 %94 to i32
  %95 = load ptr, ptr %phy3, align 4
  %maximum_linkrate_hw = getelementptr inbounds %struct.sas_phy, ptr %95, i32 0, i32 7
  %96 = ptrtoint ptr %maximum_linkrate_hw to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %bf.cast209, ptr %maximum_linkrate_hw, align 4
  %bf.load212 = load i16, ptr %hmin_linkrate, align 1
  %bf.lshr213 = lshr i16 %bf.load212, 12
  %bf.cast214 = zext i16 %bf.lshr213 to i32
  %97 = load ptr, ptr %phy3, align 4
  %minimum_linkrate = getelementptr inbounds %struct.sas_phy, ptr %97, i32 0, i32 6
  %98 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %bf.cast214, ptr %minimum_linkrate, align 8
  %bf.load217 = load i16, ptr %hmin_linkrate, align 1
  %99 = lshr i16 %bf.load217, 4
  %100 = and i16 %99, 15
  %conv221 = zext i16 %100 to i32
  %101 = load ptr, ptr %phy3, align 4
  %maximum_linkrate = getelementptr inbounds %struct.sas_phy, ptr %101, i32 0, i32 8
  %102 = ptrtoint ptr %maximum_linkrate to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %conv221, ptr %maximum_linkrate, align 8
  %103 = ptrtoint ptr %linkrate75 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %linkrate75, align 4
  %105 = load ptr, ptr %phy3, align 4
  %negotiated_linkrate = getelementptr inbounds %struct.sas_phy, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %negotiated_linkrate to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %104, ptr %negotiated_linkrate, align 8
  %107 = load i32, ptr %linkrate75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp226 = icmp ne i32 %107, 1
  %conv227 = zext i1 %cmp226 to i32
  %108 = ptrtoint ptr %phy3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %phy3, align 4
  %enabled = getelementptr inbounds %struct.sas_phy, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv227, ptr %enabled, align 4
  br label %skip

skip:                                             ; preds = %if.end197, %if.then86
  br i1 %tobool.not, label %if.then230, label %skip.outthread-pre-split_crit_edge

skip.outthread-pre-split_crit_edge:               ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #12
  br label %outthread-pre-split

if.then230:                                       ; preds = %skip
  %111 = ptrtoint ptr %phy3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %phy3, align 4
  %call232 = tail call i32 @sas_phy_add(ptr noundef %112) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %if.then230.outthread-pre-split_crit_edge, label %if.then234

if.then230.outthread-pre-split_crit_edge:         ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #12
  br label %outthread-pre-split

if.then234:                                       ; preds = %if.then230
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %phy3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %phy3, align 4
  tail call void @sas_phy_free(ptr noundef %114) #10
  br label %cleanup

outthread-pre-split:                              ; preds = %if.then230.outthread-pre-split_crit_edge, %skip.outthread-pre-split_crit_edge
  %115 = ptrtoint ptr %attached_dev_type to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pr = load i32, ptr %attached_dev_type, align 4
  br label %out

out:                                              ; preds = %outthread-pre-split, %if.end88.out_crit_edge
  %116 = phi i32 [ %.pr, %outthread-pre-split ], [ %retval.0.i434, %if.end88.out_crit_edge ]
  %117 = zext i32 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %116, label %sw.default261 [
    i32 9, label %out.sw.epilog262_crit_edge
    i32 0, label %out.sw.bb240_crit_edge
    i32 1, label %sw.bb241
    i32 2, label %out.sw.bb260_crit_edge
    i32 3, label %out.sw.bb260_crit_edge441
  ]

out.sw.bb260_crit_edge441:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb260

out.sw.bb260_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb260

out.sw.bb240_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb240

out.sw.epilog262_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog262

sw.bb240:                                         ; preds = %out.sw.bb240_crit_edge, %if.then79.sw.bb240_crit_edge
  br label %sw.epilog262

sw.bb241:                                         ; preds = %out
  %attached_iproto242 = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 6
  %118 = ptrtoint ptr %attached_iproto242 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %attached_iproto242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool243.not = icmp eq i32 %119, 0
  br i1 %tobool243.not, label %if.else250, label %if.then244

if.then244:                                       ; preds = %sw.bb241
  call void @__sanitizer_cov_trace_pc() #12
  %attached_tproto245 = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 5
  %120 = ptrtoint ptr %attached_tproto245 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %attached_tproto245, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool246.not = icmp eq i32 %121, 0
  %.str.19..str.18 = select i1 %tobool246.not, ptr @.str.19, ptr @.str.18
  br label %sw.epilog262

if.else250:                                       ; preds = %sw.bb241
  call void @__sanitizer_cov_trace_pc() #12
  %attached_sata_dev251 = getelementptr inbounds %struct.smp_resp, ptr %rsp, i32 0, i32 4, i32 0, i32 4
  %122 = ptrtoint ptr %attached_sata_dev251 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %bf.load252 = load i32, ptr %attached_sata_dev251, align 1
  %bf.cast254423 = and i32 %bf.load252, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.cast254423)
  %tobool255.not = icmp eq i32 %bf.cast254423, 0
  %.str.21..str.20 = select i1 %tobool255.not, ptr @.str.21, ptr @.str.20
  br label %sw.epilog262

sw.bb260:                                         ; preds = %out.sw.bb260_crit_edge, %out.sw.bb260_crit_edge441
  br label %sw.epilog262

sw.default261:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog262

sw.epilog262:                                     ; preds = %sw.default261, %sw.bb260, %if.else250, %if.then244, %sw.bb240, %out.sw.epilog262_crit_edge
  %123 = phi i32 [ %116, %sw.default261 ], [ %116, %sw.bb260 ], [ 0, %sw.bb240 ], [ %116, %out.sw.epilog262_crit_edge ], [ 1, %if.then244 ], [ 1, %if.else250 ]
  %type.0 = phi ptr [ @.str.23, %sw.default261 ], [ @.str.22, %sw.bb260 ], [ @.str.17, %sw.bb240 ], [ @.str.16, %out.sw.epilog262_crit_edge ], [ %.str.19..str.18, %if.then244 ], [ %.str.21..str.20, %if.else250 ]
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %19)
  %cmp267.not = icmp eq i32 %123, %19
  %or.cond438 = select i1 %tobool.not.not, i1 %cmp267.not, i1 false
  br i1 %or.cond438, label %lor.lhs.false269, label %sw.epilog262.if.end281_crit_edge

sw.epilog262.if.end281_crit_edge:                 ; preds = %sw.epilog262
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end281

lor.lhs.false269:                                 ; preds = %sw.epilog262
  %124 = ptrtoint ptr %linkrate75 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %linkrate75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %21)
  %cmp271.not = icmp eq i32 %125, %21
  br i1 %cmp271.not, label %lor.lhs.false273, label %lor.lhs.false269.if.end281_crit_edge

lor.lhs.false269.if.end281_crit_edge:             ; preds = %lor.lhs.false269
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end281

lor.lhs.false273:                                 ; preds = %lor.lhs.false269
  %126 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_loadN_noabort(i32 %126, i32 8)
  %127 = load i64, ptr %attached_sas_addr, align 4
  %sas_addr.sroa.11.0.insert.ext = zext i8 %sas_addr.sroa.11.0.copyload to i64
  %sas_addr.sroa.10.0.insert.ext = zext i8 %sas_addr.sroa.10.0.copyload to i64
  %sas_addr.sroa.10.0.insert.shift = shl nuw nsw i64 %sas_addr.sroa.10.0.insert.ext, 8
  %sas_addr.sroa.9.0.insert.ext = zext i8 %sas_addr.sroa.9.0.copyload to i64
  %sas_addr.sroa.9.0.insert.shift = shl nuw nsw i64 %sas_addr.sroa.9.0.insert.ext, 16
  %sas_addr.sroa.8.0.insert.ext = zext i8 %sas_addr.sroa.8.0.copyload to i64
  %sas_addr.sroa.8.0.insert.shift = shl nuw nsw i64 %sas_addr.sroa.8.0.insert.ext, 24
  %sas_addr.sroa.7.0.insert.ext = zext i8 %sas_addr.sroa.7.0.copyload to i64
  %sas_addr.sroa.7.0.insert.shift = shl nuw nsw i64 %sas_addr.sroa.7.0.insert.ext, 32
  %sas_addr.sroa.6.0.insert.ext = zext i8 %sas_addr.sroa.6.0.copyload to i64
  %sas_addr.sroa.6.0.insert.shift = shl nuw nsw i64 %sas_addr.sroa.6.0.insert.ext, 40
  %sas_addr.sroa.5.0.insert.ext = zext i8 %sas_addr.sroa.5.0.copyload to i64
  %sas_addr.sroa.5.0.insert.shift = shl nuw nsw i64 %sas_addr.sroa.5.0.insert.ext, 48
  %sas_addr.sroa.0.0.insert.ext = zext i8 %sas_addr.sroa.0.0.copyload to i64
  %sas_addr.sroa.0.0.insert.shift = shl nuw i64 %sas_addr.sroa.0.0.insert.ext, 56
  %sas_addr.sroa.10.0.insert.insert = or i64 %sas_addr.sroa.5.0.insert.shift, %sas_addr.sroa.0.0.insert.shift
  %sas_addr.sroa.9.0.insert.insert = or i64 %sas_addr.sroa.10.0.insert.insert, %sas_addr.sroa.6.0.insert.shift
  %sas_addr.sroa.8.0.insert.insert = or i64 %sas_addr.sroa.9.0.insert.insert, %sas_addr.sroa.7.0.insert.shift
  %sas_addr.sroa.6.0.insert.mask = or i64 %sas_addr.sroa.8.0.insert.insert, %sas_addr.sroa.8.0.insert.shift
  %sas_addr.sroa.5.0.insert.mask.masked = or i64 %sas_addr.sroa.6.0.insert.mask, %sas_addr.sroa.9.0.insert.shift
  %sas_addr.sroa.0.0.insert.mask = or i64 %sas_addr.sroa.5.0.insert.mask.masked, %sas_addr.sroa.11.0.insert.ext
  %sas_addr.sroa.0.0.insert.insert = or i64 %sas_addr.sroa.0.0.insert.mask, %sas_addr.sroa.10.0.insert.shift
  call void @__sanitizer_cov_trace_cmp8(i64 %127, i64 %sas_addr.sroa.0.0.insert.insert)
  %cmp277.not = icmp eq i64 %127, %sas_addr.sroa.0.0.insert.insert
  br i1 %cmp277.not, label %lor.lhs.false273.cleanup_crit_edge, label %lor.lhs.false273.if.end281_crit_edge

lor.lhs.false273.if.end281_crit_edge:             ; preds = %lor.lhs.false273
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end281

lor.lhs.false273.cleanup_crit_edge:               ; preds = %lor.lhs.false273
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end281:                                        ; preds = %lor.lhs.false273.if.end281_crit_edge, %lor.lhs.false269.if.end281_crit_edge, %sw.epilog262.if.end281_crit_edge
  %state282 = getelementptr inbounds %struct.sas_ha_struct, ptr %4, i32 0, i32 2
  %128 = ptrtoint ptr %state282 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load volatile i32, ptr %state282, align 4
  %130 = and i32 %129, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool284.not = icmp eq i32 %130, 0
  br i1 %tobool284.not, label %if.end281.do.body288_crit_edge, label %if.then285

if.end281.do.body288_crit_edge:                   ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body288

if.then285:                                       ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #12
  %131 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %port, align 4
  %pending = getelementptr inbounds %struct.sas_discovery, ptr %132, i32 0, i32 1
  tail call void @_set_bit(i32 noundef 1, ptr noundef %pending) #10
  br label %do.body288

do.body288:                                       ; preds = %if.then285, %if.end281.do.body288_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_set_ex_phy.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_set_ex_phy, %cleanup)) #10
          to label %if.then301 [label %cleanup], !srcloc !246

if.then301:                                       ; preds = %do.body288
  %133 = ptrtoint ptr %state282 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %state282, align 4
  %135 = and i32 %134, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool304.not = icmp eq i32 %135, 0
  %cond = select i1 %tobool304.not, ptr @.str.29, ptr @.str.28
  %sas_addr305 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %136 = ptrtoint ptr %sas_addr305 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %sas_addr305, align 16
  %138 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx, align 4
  %routing_attr.i = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 10
  %140 = ptrtoint ptr %routing_attr.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %routing_attr.i, align 4
  %142 = zext i32 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %141, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 0, label %if.then301.sas_route_char.exit_crit_edge
    i32 1, label %sw.bb2.i
  ]

if.then301.sas_route_char.exit_crit_edge:         ; preds = %if.then301
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_route_char.exit

sw.bb.i:                                          ; preds = %if.then301
  call void @__sanitizer_cov_trace_pc() #12
  %143 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19
  %t2t_supp.i = getelementptr inbounds %struct.expander_device, ptr %143, i32 0, i32 4
  %144 = ptrtoint ptr %t2t_supp.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %bf.load.i435 = load i8, ptr %t2t_supp.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i435)
  %tobool.not.i = icmp sgt i8 %bf.load.i435, -1
  %..i = select i1 %tobool.not.i, i32 84, i32 85
  br label %sas_route_char.exit

sw.bb2.i:                                         ; preds = %if.then301
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_route_char.exit

sw.default.i:                                     ; preds = %if.then301
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_route_char.exit

sas_route_char.exit:                              ; preds = %sw.default.i, %sw.bb2.i, %sw.bb.i, %if.then301.sas_route_char.exit_crit_edge
  %retval.0.i436 = phi i32 [ 63, %sw.default.i ], [ 83, %sw.bb2.i ], [ %..i, %sw.bb.i ], [ 68, %if.then301.sas_route_char.exit_crit_edge ]
  %145 = ptrtoint ptr %linkrate75 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %linkrate75, align 4
  %147 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_loadN_noabort(i32 %147, i32 8)
  %148 = load i64, ptr %attached_sas_addr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_set_ex_phy.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond, i64 noundef %137, i32 noundef %139, i32 noundef %retval.0.i436, i32 noundef %146, i64 noundef %148, ptr noundef nonnull %type.0) #10
  br label %cleanup

cleanup:                                          ; preds = %sas_route_char.exit, %do.body288, %lor.lhs.false273.cleanup_crit_edge, %if.then234, %if.then15, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_phy_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_phy_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_phy_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_notify_lldd_dev_found(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sas_ex_general(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %req_sg.i = alloca %struct.scatterlist, align 4
  %resp_sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 64, ptr %call7.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i80 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #13
  %tobool2.not = icmp eq ptr %call7.i.i.i80, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %call7.i.i.i, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  %result = getelementptr inbounds %struct.smp_resp, ptr %call7.i.i.i80, i32 0, i32 2
  %4 = getelementptr inbounds %struct.smp_resp, ptr %call7.i.i.i80, i32 0, i32 4
  %ex_change_count.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 2
  %route_indexes.i = getelementptr inbounds %struct.smp_resp, ptr %call7.i.i.i80, i32 0, i32 4, i32 0, i32 0, i32 2
  %max_route_indexes.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 3
  %num_phys.i = getelementptr inbounds %struct.smp_resp, ptr %call7.i.i.i80, i32 0, i32 4, i32 0, i32 1
  %5 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19
  %num_phys7.i = getelementptr inbounds %struct.expander_device, ptr %5, i32 0, i32 3
  %t2t_supp.i = getelementptr inbounds %struct.smp_resp, ptr %call7.i.i.i80, i32 0, i32 4, i32 0, i32 2
  %t2t_supp8.i = getelementptr inbounds %struct.expander_device, ptr %5, i32 0, i32 4
  %enclosure_logical_id.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 4
  %enclosure_logical_id27.i = getelementptr inbounds %struct.smp_resp, ptr %call7.i.i.i80, i32 0, i32 4, i32 0, i32 4
  %sas_addr48 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %do.end52.for.body_crit_edge, %if.end4
  %i.086 = phi i32 [ 0, %if.end4 ], [ %inc, %do.end52.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req_sg.i) #10
  %6 = call ptr @memset(ptr %req_sg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %resp_sg.i) #10
  %7 = call ptr @memset(ptr %resp_sg.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %req_sg.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 8) #10
  call void @sg_init_one(ptr noundef nonnull %resp_sg.i, ptr noundef nonnull %call7.i.i.i80, i32 noundef 32) #10
  %call.i = call fastcc i32 @smp_execute_task_sg(ptr noundef %dev, ptr noundef nonnull %req_sg.i, ptr noundef nonnull %resp_sg.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %resp_sg.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req_sg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.else, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %sas_addr48 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %sas_addr48, align 16
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i64 noundef %9, i32 noundef %call.i) #15
  br label %out

if.else:                                          ; preds = %for.body
  %10 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %result, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp9.not = icmp eq i8 %11, 0
  br i1 %cmp9.not, label %if.end30, label %do.body12

do.body12:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_ex_general.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_ex_general, %do.end26)) #10
          to label %if.then19 [label %do.end26], !srcloc !246

if.then19:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %sas_addr48 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sas_addr48, align 16
  %14 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %result, align 2
  %conv23 = zext i8 %15 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_ex_general.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.35, i64 noundef %13, i32 noundef %conv23) #10
  br label %do.end26

do.end26:                                         ; preds = %if.then19, %do.body12
  %16 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %result, align 2
  %conv28 = zext i8 %17 to i32
  br label %out

if.end30:                                         ; preds = %if.else
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %4, align 4
  %conv.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %ex_change_count.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i, ptr %ex_change_count.i, align 8
  %21 = ptrtoint ptr %route_indexes.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %route_indexes.i, align 2
  %23 = ptrtoint ptr %max_route_indexes.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %max_route_indexes.i, align 4
  %24 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_phys.i, align 1
  %26 = call i8 @llvm.umin.i8(i8 %25, i8 -128) #10
  %27 = ptrtoint ptr %num_phys7.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %num_phys7.i, align 2
  %28 = ptrtoint ptr %t2t_supp.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %t2t_supp.i, align 2
  %bf.lshr.i = and i8 %bf.load.i, -128
  %29 = ptrtoint ptr %t2t_supp8.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load9.i = load i8, ptr %t2t_supp8.i, align 1
  %bf.clear.i = and i8 %bf.load9.i, 31
  %bf.set.i = or i8 %bf.clear.i, %bf.lshr.i
  %bf.clear11.i = shl i8 %bf.load.i, 5
  %bf.shl15.i = and i8 %bf.clear11.i, 32
  %bf.set17.i = or i8 %bf.set.i, %bf.shl15.i
  %bf.shl24.i = and i8 %bf.clear11.i, 64
  %bf.set26.i = or i8 %bf.set17.i, %bf.shl24.i
  store i8 %bf.set26.i, ptr %t2t_supp8.i, align 1
  %30 = ptrtoint ptr %enclosure_logical_id27.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %enclosure_logical_id27.i, align 4
  %32 = ptrtoint ptr %enclosure_logical_id.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %enclosure_logical_id.i, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.shl24.i)
  %tobool31.not = icmp eq i8 %bf.shl24.i, 0
  br i1 %tobool31.not, label %if.end30.out_crit_edge, label %do.body33

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body33:                                        ; preds = %if.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_ex_general.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_ex_general, %do.end52)) #10
          to label %if.then47 [label %do.end52], !srcloc !246

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %sas_addr48 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %sas_addr48, align 16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_ex_general.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.37, i64 noundef %34) #10
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %do.body33
  %call53 = call i32 @schedule_timeout_interruptible(i32 noundef 500) #10
  %inc = add nuw nsw i32 %i.086, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %do.end52.out_crit_edge, label %do.end52.for.body_crit_edge

do.end52.for.body_crit_edge:                      ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end52.out_crit_edge:                           ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %do.end52.out_crit_edge, %if.end30.out_crit_edge, %do.end26, %do.end
  %res.1 = phi i32 [ %call.i, %do.end ], [ %conv28, %do.end26 ], [ 0, %if.end30.out_crit_edge ], [ 0, %do.end52.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i80) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.1, %out ], [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sas_ex_manuf_info(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %req_sg.i = alloca %struct.scatterlist, align 4
  %resp_sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 64, ptr %call7.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i45 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 64) #13
  %tobool2.not = icmp eq ptr %call7.i.i.i45, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr i8, ptr %call7.i.i.i, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req_sg.i) #10
  %4 = call ptr @memset(ptr %req_sg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %resp_sg.i) #10
  %5 = call ptr @memset(ptr %resp_sg.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %req_sg.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 8) #10
  call void @sg_init_one(ptr noundef nonnull %resp_sg.i, ptr noundef nonnull %call7.i.i.i45, i32 noundef 64) #10
  %call.i = call fastcc i32 @smp_execute_task_sg(ptr noundef %dev, ptr noundef nonnull %req_sg.i, ptr noundef nonnull %resp_sg.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %resp_sg.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req_sg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %6 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sas_addr, align 16
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i64 noundef %7, i32 noundef %call.i) #15
  br label %out

if.else:                                          ; preds = %if.end4
  %arrayidx9 = getelementptr i8, ptr %call7.i.i.i45, i32 2
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp.not = icmp eq i8 %9, 0
  br i1 %cmp.not, label %if.end28, label %do.body12

do.body12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_ex_manuf_info.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_ex_manuf_info, %out)) #10
          to label %if.then19 [label %out], !srcloc !246

if.then19:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr20 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %10 = ptrtoint ptr %sas_addr20 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %sas_addr20, align 16
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 2
  %conv23 = zext i8 %13 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_ex_manuf_info.__UNIQUE_ID_ddebug296, ptr noundef nonnull @.str.41, i64 noundef %11, i32 noundef %conv23) #10
  br label %out

if.end28:                                         ; preds = %if.else
  %rphy1.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 14
  %14 = ptrtoint ptr %rphy1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rphy1.i, align 4
  %vendor_id.i = getelementptr i8, ptr %15, i32 -48
  %add.ptr2.i = getelementptr i8, ptr %call7.i.i.i45, i32 12
  %16 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %add.ptr2.i, align 4
  %18 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %vendor_id.i, align 8
  %product_id.i = getelementptr i8, ptr %15, i32 -39
  %add.ptr4.i = getelementptr i8, ptr %call7.i.i.i45, i32 20
  %19 = call ptr @memcpy(ptr %product_id.i, ptr %add.ptr4.i, i32 16)
  %product_rev.i = getelementptr i8, ptr %15, i32 -22
  %add.ptr6.i = getelementptr i8, ptr %call7.i.i.i45, i32 36
  %20 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr6.i, align 4
  %22 = ptrtoint ptr %product_rev.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %product_rev.i, align 2
  %arrayidx.i = getelementptr i8, ptr %call7.i.i.i45, i32 8
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 8
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i46 = icmp eq i8 %25, 0
  br i1 %tobool.not.i46, label %if.end28.out_crit_edge, label %if.then.i47

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then.i47:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %component_vendor_id.i = getelementptr i8, ptr %15, i32 -17
  %add.ptr8.i = getelementptr i8, ptr %call7.i.i.i45, i32 40
  %26 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %add.ptr8.i, align 8
  %28 = ptrtoint ptr %component_vendor_id.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %component_vendor_id.i, align 1
  %arrayidx9.i = getelementptr i8, ptr %call7.i.i.i45, i32 48
  %29 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx9.i, align 8
  %conv10.i = zext i8 %30 to i16
  %shl.i = shl nuw i16 %conv10.i, 8
  %arrayidx11.i = getelementptr i8, ptr %call7.i.i.i45, i32 49
  %31 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %32 to i16
  %or.i = or i16 %shl.i, %conv12.i
  %component_id.i = getelementptr i8, ptr %15, i32 -8
  %33 = ptrtoint ptr %component_id.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %or.i, ptr %component_id.i, align 8
  %arrayidx14.i = getelementptr i8, ptr %call7.i.i.i45, i32 50
  %34 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx14.i, align 2
  %component_revision_id.i = getelementptr i8, ptr %15, i32 -6
  %36 = ptrtoint ptr %component_revision_id.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %component_revision_id.i, align 2
  br label %out

out:                                              ; preds = %if.then.i47, %if.end28.out_crit_edge, %if.then19, %do.body12, %do.end
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i45) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %out ], [ -12, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_notify_lldd_dev_gone(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sas_ex_discover_devices(ptr noundef %dev, i32 noundef %single) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19
  %num_phys = getelementptr inbounds %struct.expander_device, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %num_phys, align 2
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %single)
  %cmp = icmp sgt i32 %single, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %single)
  %cmp2 = icmp sgt i32 %conv, %single
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  %add = add i32 %single, 1
  %i.0 = select i1 %or.cond, i32 %single, i32 0
  %end.0 = select i1 %or.cond, i32 %add, i32 %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0, i32 %end.0)
  %cmp447 = icmp ult i32 %i.0, %end.0
  br i1 %cmp447, label %for.body.lr.ph, label %entry.if.then21_crit_edge

entry.if.then21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

for.body.lr.ph:                                   ; preds = %entry
  %ex_phy6 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 4, i32 8
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %res.050 = phi i32 [ 0, %for.body.lr.ph ], [ %res.1, %cleanup.for.body_crit_edge ]
  %i.148 = phi i32 [ %i.0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %3 = ptrtoint ptr %ex_phy6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ex_phy6, align 4
  %phy_state = getelementptr %struct.ex_phy, ptr %4, i32 %i.148, i32 1
  %5 = ptrtoint ptr %phy_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phy_state, align 4
  %.off = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %for.body.cleanup_crit_edge, label %if.end17

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %for.body
  %linkrate = getelementptr %struct.ex_phy, ptr %4, i32 %i.148, i32 3
  %7 = ptrtoint ptr %linkrate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %linkrate, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %8, label %sw.default [
    i32 1, label %if.end17.cleanup_crit_edge
    i32 2, label %if.end17.cleanup_crit_edge73
    i32 4, label %if.end17.cleanup_crit_edge74
  ]

if.end17.cleanup_crit_edge74:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17.cleanup_crit_edge73:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.default:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @sas_ex_discover_dev(ptr noundef %dev, i32 noundef %i.148)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end17.cleanup_crit_edge, %if.end17.cleanup_crit_edge73, %if.end17.cleanup_crit_edge74, %for.body.cleanup_crit_edge
  %res.1 = phi i32 [ %res.050, %for.body.cleanup_crit_edge ], [ %res.050, %if.end17.cleanup_crit_edge ], [ %res.050, %if.end17.cleanup_crit_edge73 ], [ %res.050, %if.end17.cleanup_crit_edge74 ], [ %call, %sw.default ]
  %inc = add i32 %i.148, 1
  %exitcond.not = icmp eq i32 %inc, %end.0
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.1)
  %tobool20.not = icmp eq i32 %res.1, 0
  br i1 %tobool20.not, label %for.end.if.then21_crit_edge, label %for.end.if.end23_crit_edge

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

for.end.if.then21_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then21

if.then21:                                        ; preds = %for.end.if.then21_crit_edge, %entry.if.then21_crit_edge
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn89.i = load ptr, ptr %0, align 4
  %cmp.not91.i = icmp eq ptr %.pn89.i, %0
  br i1 %cmp.not91.i, label %if.then21.if.end23_crit_edge, label %for.body.lr.ph.i

if.then21.if.end23_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

for.body.lr.ph.i:                                 ; preds = %if.then21
  %sas_addr.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn94.i = phi ptr [ %.pn89.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %sub_addr.sroa.0.093.i = phi i8 [ 0, %for.body.lr.ph.i ], [ %sub_addr.sroa.0.2.i, %for.inc.i.for.body.i_crit_edge ]
  %sub_addr.sroa.6.sroa.0.092.i = phi i56 [ 0, %for.body.lr.ph.i ], [ %sub_addr.sroa.6.sroa.0.2.i, %for.inc.i.for.body.i_crit_edge ]
  %child.095.i = getelementptr i8, ptr %.pn94.i, i32 -68
  %dev_type.i = getelementptr i8, ptr %.pn94.i, i32 -24
  %11 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dev_type.i, align 4
  %13 = and i32 %12, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %sub_addr.sroa.0.093.i)
  %cmp2.i = icmp eq i8 %sub_addr.sroa.0.093.i, 0
  %num_phys.i.i = getelementptr i8, ptr %.pn94.i, i32 202
  %15 = ptrtoint ptr %num_phys.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %num_phys.i.i, align 2
  %conv.i.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp23.not.i.i = icmp eq i8 %16, 0
  br i1 %cmp2.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  br i1 %cmp23.not.i.i, label %if.then4.i.for.inc.i_crit_edge, label %for.body.lr.ph.i.i

if.then4.i.for.inc.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.body.lr.ph.i.i:                               ; preds = %if.then4.i
  %ex_phy.i.i = getelementptr i8, ptr %.pn94.i, i32 212
  %17 = ptrtoint ptr %ex_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ex_phy.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.024.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %phy_state.i.i = getelementptr %struct.ex_phy, ptr %18, i32 %i.024.i.i, i32 1
  %19 = ptrtoint ptr %phy_state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phy_state.i.i, align 4
  %.off.i.i = add i32 %20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %attached_dev_type.i.i = getelementptr %struct.ex_phy, ptr %18, i32 %i.024.i.i, i32 2
  %21 = ptrtoint ptr %attached_dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %attached_dev_type.i.i, align 4
  %23 = and i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %land.lhs.true.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %routing_attr.i.i = getelementptr %struct.ex_phy, ptr %18, i32 %i.024.i.i, i32 10
  %25 = ptrtoint ptr %routing_attr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %routing_attr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp8.i.i = icmp eq i32 %26, 1
  br i1 %cmp8.i.i, label %cleanup.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

cleanup.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %attached_sas_addr.i.i = getelementptr %struct.ex_phy, ptr %18, i32 %i.024.i.i, i32 7
  %27 = ptrtoint ptr %attached_sas_addr.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %attached_sas_addr.i.i, align 4
  %sub_addr.sroa.0.0.extract.shift.i = lshr i64 %28, 56
  %sub_addr.sroa.0.0.extract.trunc.i = trunc i64 %sub_addr.sroa.0.0.extract.shift.i to i8
  %sub_addr.sroa.6.0.extract.trunc.i = trunc i64 %28 to i56
  br label %for.inc.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.024.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.inc.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.for.inc.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end.i
  br i1 %cmp23.not.i.i, label %if.else.i.for.inc.i_crit_edge, label %for.body.lr.ph.i5.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.body.lr.ph.i5.i:                              ; preds = %if.else.i
  %ex_phy.i4.i = getelementptr i8, ptr %.pn94.i, i32 212
  %29 = ptrtoint ptr %ex_phy.i4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ex_phy.i4.i, align 4
  br label %for.body.i10.i

for.body.i10.i:                                   ; preds = %for.inc.i20.i.for.body.i10.i_crit_edge, %for.body.lr.ph.i5.i
  %i.024.i6.i = phi i32 [ 0, %for.body.lr.ph.i5.i ], [ %inc.i18.i, %for.inc.i20.i.for.body.i10.i_crit_edge ]
  %phy_state.i7.i = getelementptr %struct.ex_phy, ptr %30, i32 %i.024.i6.i, i32 1
  %31 = ptrtoint ptr %phy_state.i7.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %phy_state.i7.i, align 4
  %.off.i8.i = add i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i8.i)
  %switch.i9.i = icmp ult i32 %.off.i8.i, 2
  br i1 %switch.i9.i, label %for.body.i10.i.for.inc.i20.i_crit_edge, label %if.end.i12.i

for.body.i10.i.for.inc.i20.i_crit_edge:           ; preds = %for.body.i10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i20.i

if.end.i12.i:                                     ; preds = %for.body.i10.i
  %attached_dev_type.i11.i = getelementptr %struct.ex_phy, ptr %30, i32 %i.024.i6.i, i32 2
  %33 = ptrtoint ptr %attached_dev_type.i11.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %attached_dev_type.i11.i, align 4
  %35 = and i32 %34, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %land.lhs.true.i15.i, label %if.end.i12.i.for.inc.i20.i_crit_edge

if.end.i12.i.for.inc.i20.i_crit_edge:             ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i20.i

land.lhs.true.i15.i:                              ; preds = %if.end.i12.i
  %routing_attr.i13.i = getelementptr %struct.ex_phy, ptr %30, i32 %i.024.i6.i, i32 10
  %37 = ptrtoint ptr %routing_attr.i13.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %routing_attr.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp8.i14.i = icmp eq i32 %38, 1
  br i1 %cmp8.i14.i, label %land.lhs.true.i, label %land.lhs.true.i15.i.for.inc.i20.i_crit_edge

land.lhs.true.i15.i.for.inc.i20.i_crit_edge:      ; preds = %land.lhs.true.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i20.i

for.inc.i20.i:                                    ; preds = %land.lhs.true.i15.i.for.inc.i20.i_crit_edge, %if.end.i12.i.for.inc.i20.i_crit_edge, %for.body.i10.i.for.inc.i20.i_crit_edge
  %inc.i18.i = add nuw nsw i32 %i.024.i6.i, 1
  %exitcond.not.i19.i = icmp eq i32 %inc.i18.i, %conv.i.i
  br i1 %exitcond.not.i19.i, label %for.inc.i20.i.for.inc.i_crit_edge, label %for.inc.i20.i.for.body.i10.i_crit_edge

for.inc.i20.i.for.body.i10.i_crit_edge:           ; preds = %for.inc.i20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i10.i

for.inc.i20.i.for.inc.i_crit_edge:                ; preds = %for.inc.i20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %land.lhs.true.i15.i
  %attached_sas_addr.i16.i = getelementptr %struct.ex_phy, ptr %30, i32 %i.024.i6.i, i32 7
  %39 = ptrtoint ptr %attached_sas_addr.i16.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %attached_sas_addr.i16.i, align 4
  %sub_addr.sroa.6.0.insert.ext.i = zext i56 %sub_addr.sroa.6.sroa.0.092.i to i64
  %sub_addr.sroa.0.0.insert.ext.i = zext i8 %sub_addr.sroa.0.093.i to i64
  %sub_addr.sroa.0.0.insert.shift.i = shl nuw i64 %sub_addr.sroa.0.0.insert.ext.i, 56
  %sub_addr.sroa.0.0.insert.insert.i = or i64 %sub_addr.sroa.0.0.insert.shift.i, %sub_addr.sroa.6.0.insert.ext.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub_addr.sroa.0.0.insert.insert.i, i64 %40)
  %cmp10.not.i = icmp eq i64 %sub_addr.sroa.0.0.insert.insert.i, %40
  br i1 %cmp10.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %do.end.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end.i:                                         ; preds = %land.lhs.true.i
  %41 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %sas_addr.i, align 16
  %sas_addr15.i = getelementptr i8, ptr %.pn94.i, i32 44
  %43 = ptrtoint ptr %sas_addr15.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %sas_addr15.i, align 16
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i64 noundef %42, i64 noundef %44, i64 noundef %40, i64 noundef %sub_addr.sroa.0.0.insert.insert.i) #15
  %45 = ptrtoint ptr %num_phys.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_phys.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp19.not.i.i = icmp eq i8 %46, 0
  br i1 %cmp19.not.i.i, label %do.end.i.for.inc.i_crit_edge, label %do.end.i.for.body.i29.i_crit_edge

do.end.i.for.body.i29.i_crit_edge:                ; preds = %do.end.i
  br label %for.body.i29.i

do.end.i.for.inc.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.body.i29.i:                                   ; preds = %cleanup.i34.i.for.body.i29.i_crit_edge, %do.end.i.for.body.i29.i_crit_edge
  %i.020.i.i = phi i32 [ %inc.i32.i, %cleanup.i34.i.for.body.i29.i_crit_edge ], [ 0, %do.end.i.for.body.i29.i_crit_edge ]
  %47 = ptrtoint ptr %ex_phy.i4.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ex_phy.i4.i, align 4
  %phy_state.i26.i = getelementptr %struct.ex_phy, ptr %48, i32 %i.020.i.i, i32 1
  %49 = ptrtoint ptr %phy_state.i26.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %phy_state.i26.i, align 4
  %.off.i27.i = add i32 %50, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i27.i)
  %switch.i28.i = icmp ult i32 %.off.i27.i, 2
  br i1 %switch.i28.i, label %for.body.i29.i.cleanup.i34.i_crit_edge, label %if.end.i31.i

for.body.i29.i.cleanup.i34.i_crit_edge:           ; preds = %for.body.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i34.i

if.end.i31.i:                                     ; preds = %for.body.i29.i
  %attached_sas_addr.i30.i = getelementptr %struct.ex_phy, ptr %48, i32 %i.020.i.i, i32 7
  %51 = ptrtoint ptr %attached_sas_addr.i30.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %attached_sas_addr.i30.i, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %40)
  %cmp7.i.i = icmp eq i64 %52, %40
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.end.i31.i.cleanup.i34.i_crit_edge

if.end.i31.i.cleanup.i34.i_crit_edge:             ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i34.i

if.then9.i.i:                                     ; preds = %if.end.i31.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call i32 @sas_smp_phy_control(ptr noundef %child.095.i, i32 noundef %i.020.i.i, i32 noundef 3, ptr noundef null) #10
  %linkrate.i.i.i = getelementptr %struct.ex_phy, ptr %48, i32 %i.020.i.i, i32 3
  %53 = ptrtoint ptr %linkrate.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %linkrate.i.i.i, align 4
  br label %cleanup.i34.i

cleanup.i34.i:                                    ; preds = %if.then9.i.i, %if.end.i31.i.cleanup.i34.i_crit_edge, %for.body.i29.i.cleanup.i34.i_crit_edge
  %inc.i32.i = add nuw nsw i32 %i.020.i.i, 1
  %54 = ptrtoint ptr %num_phys.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_phys.i.i, align 2
  %conv.i33.i = zext i8 %55 to i32
  %cmp.i.i = icmp ult i32 %inc.i32.i, %conv.i33.i
  br i1 %cmp.i.i, label %cleanup.i34.i.for.body.i29.i_crit_edge, label %cleanup.i34.i.for.inc.i_crit_edge

cleanup.i34.i.for.inc.i_crit_edge:                ; preds = %cleanup.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cleanup.i34.i.for.body.i29.i_crit_edge:           ; preds = %cleanup.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i29.i

for.inc.i:                                        ; preds = %cleanup.i34.i.for.inc.i_crit_edge, %do.end.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.inc.i20.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %for.inc.i.i.for.inc.i_crit_edge, %cleanup.i.i, %if.then4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %sub_addr.sroa.6.sroa.0.2.i = phi i56 [ %sub_addr.sroa.6.sroa.0.092.i, %for.body.i.for.inc.i_crit_edge ], [ %sub_addr.sroa.6.sroa.0.092.i, %if.then4.i.for.inc.i_crit_edge ], [ %sub_addr.sroa.6.0.extract.trunc.i, %cleanup.i.i ], [ %sub_addr.sroa.6.sroa.0.092.i, %do.end.i.for.inc.i_crit_edge ], [ %sub_addr.sroa.6.sroa.0.092.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %sub_addr.sroa.6.sroa.0.092.i, %if.else.i.for.inc.i_crit_edge ], [ %sub_addr.sroa.6.sroa.0.092.i, %for.inc.i.i.for.inc.i_crit_edge ], [ %sub_addr.sroa.6.sroa.0.092.i, %cleanup.i34.i.for.inc.i_crit_edge ], [ %sub_addr.sroa.6.sroa.0.092.i, %for.inc.i20.i.for.inc.i_crit_edge ]
  %sub_addr.sroa.0.2.i = phi i8 [ %sub_addr.sroa.0.093.i, %for.body.i.for.inc.i_crit_edge ], [ 0, %if.then4.i.for.inc.i_crit_edge ], [ %sub_addr.sroa.0.0.extract.trunc.i, %cleanup.i.i ], [ %sub_addr.sroa.0.093.i, %do.end.i.for.inc.i_crit_edge ], [ %sub_addr.sroa.0.093.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %sub_addr.sroa.0.093.i, %if.else.i.for.inc.i_crit_edge ], [ 0, %for.inc.i.i.for.inc.i_crit_edge ], [ %sub_addr.sroa.0.093.i, %cleanup.i34.i.for.inc.i_crit_edge ], [ %sub_addr.sroa.0.093.i, %for.inc.i20.i.for.inc.i_crit_edge ]
  %56 = ptrtoint ptr %.pn94.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn.i = load ptr, ptr %.pn94.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %0
  br i1 %cmp.not.i, label %for.inc.i.if.end23_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end23_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end23:                                         ; preds = %for.inc.i.if.end23_crit_edge, %if.then21.if.end23_crit_edge, %for.end.if.end23_crit_edge
  %res.0.lcssa57 = phi i32 [ 0, %if.then21.if.end23_crit_edge ], [ %res.1, %for.end.if.end23_crit_edge ], [ 0, %for.inc.i.if.end23_crit_edge ]
  ret i32 %res.0.lcssa57
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sas_ex_discover_dev(ptr noundef %dev, i32 noundef %phy_id) unnamed_addr #0 align 64 {
entry:
  %rates.i = alloca %struct.sas_phy_linkrates, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ex_phy1 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %ex_phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ex_phy1, align 4
  %linkrate = getelementptr %struct.ex_phy, ptr %1, i32 %phy_id, i32 3
  %2 = ptrtoint ptr %linkrate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %linkrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then:                                          ; preds = %entry
  %call = tail call i32 @sas_smp_phy_control(ptr noundef %dev, i32 noundef %phy_id, i32 noundef 1, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end:                                           ; preds = %if.then
  %call3 = tail call i32 @sas_ex_phy_discover(ptr noundef %dev, i32 noundef %phy_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end7:                                          ; preds = %if.end.if.end7_crit_edge, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %parent = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 6
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 64
  %tobool8.not = icmp eq ptr %5, null
  %attached_sas_addr = getelementptr %struct.ex_phy, ptr %1, i32 %phy_id, i32 7
  %6 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %attached_sas_addr, align 4
  br i1 %tobool8.not, label %land.lhs.true, label %land.lhs.true15

land.lhs.true:                                    ; preds = %if.end7
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 4
  %sas_addr = getelementptr inbounds %struct.asd_sas_port, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %sas_addr to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %sas_addr, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %11)
  %cmp10 = icmp eq i64 %7, %11
  br i1 %cmp10, label %if.then11, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then11:                                        ; preds = %land.lhs.true
  %12 = ptrtoint ptr %ex_phy1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ex_phy1, align 4
  %parent_port.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 4, i32 12
  %14 = ptrtoint ptr %parent_port.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent_port.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then11.sas_add_parent_port.exit_crit_edge

if.then11.sas_add_parent_port.exit_crit_edge:     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_add_parent_port.exit

if.then.i:                                        ; preds = %if.then11
  %rphy.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 14
  %16 = ptrtoint ptr %rphy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rphy.i, align 4
  %call.i = tail call ptr @sas_port_alloc(ptr noundef %17, i32 noundef %phy_id) #10
  %18 = ptrtoint ptr %parent_port.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %parent_port.i, align 4
  %tobool5.not.i = icmp eq ptr %call.i, null
  br i1 %tobool5.not.i, label %do.body10.i, label %do.body16.i, !prof !248

do.body10.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/libsas/sas_internal.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 168, 0\0A.popsection", ""() #10, !srcloc !250
  unreachable

do.body16.i:                                      ; preds = %if.then.i
  %call18.i = tail call i32 @sas_port_add(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %do.end35.i, label %do.body27.i, !prof !247

do.body27.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/libsas/sas_internal.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 169, 0\0A.popsection", ""() #10, !srcloc !251
  unreachable

do.end35.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %parent_port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent_port.i, align 4
  tail call void @sas_port_mark_backlink(ptr noundef %20) #10
  br label %sas_add_parent_port.exit

sas_add_parent_port.exit:                         ; preds = %do.end35.i, %if.then11.sas_add_parent_port.exit_crit_edge
  %21 = ptrtoint ptr %parent_port.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent_port.i, align 4
  %phy.i = getelementptr %struct.ex_phy, ptr %13, i32 %phy_id, i32 13
  %23 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy.i, align 4
  tail call void @sas_port_add_phy(ptr noundef %22, ptr noundef %24) #10
  br label %cleanup

land.lhs.true15:                                  ; preds = %if.end7
  %sas_addr19 = getelementptr inbounds %struct.domain_device, ptr %5, i32 0, i32 15
  %25 = ptrtoint ptr %sas_addr19 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %sas_addr19, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %26)
  %cmp21 = icmp eq i64 %7, %26
  br i1 %cmp21, label %if.then22, label %land.lhs.true15.if.end30_crit_edge

land.lhs.true15.if.end30_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then22:                                        ; preds = %land.lhs.true15
  %27 = ptrtoint ptr %ex_phy1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ex_phy1, align 4
  %parent_port.i229 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 4, i32 12
  %29 = ptrtoint ptr %parent_port.i229 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent_port.i229, align 4
  %tobool.not.i230 = icmp eq ptr %30, null
  br i1 %tobool.not.i230, label %if.then.i234, label %if.then22.sas_add_parent_port.exit242_crit_edge

if.then22.sas_add_parent_port.exit242_crit_edge:  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_add_parent_port.exit242

if.then.i234:                                     ; preds = %if.then22
  %rphy.i231 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 14
  %31 = ptrtoint ptr %rphy.i231 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rphy.i231, align 4
  %call.i232 = tail call ptr @sas_port_alloc(ptr noundef %32, i32 noundef %phy_id) #10
  %33 = ptrtoint ptr %parent_port.i229 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i232, ptr %parent_port.i229, align 4
  %tobool5.not.i233 = icmp eq ptr %call.i232, null
  br i1 %tobool5.not.i233, label %do.body10.i235, label %do.body16.i238, !prof !248

do.body10.i235:                                   ; preds = %if.then.i234
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/libsas/sas_internal.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 168, 0\0A.popsection", ""() #10, !srcloc !250
  unreachable

do.body16.i238:                                   ; preds = %if.then.i234
  %call18.i236 = tail call i32 @sas_port_add(ptr noundef nonnull %call.i232) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i236)
  %tobool19.not.i237 = icmp eq i32 %call18.i236, 0
  br i1 %tobool19.not.i237, label %do.end35.i240, label %do.body27.i239, !prof !247

do.body27.i239:                                   ; preds = %do.body16.i238
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/libsas/sas_internal.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 169, 0\0A.popsection", ""() #10, !srcloc !251
  unreachable

do.end35.i240:                                    ; preds = %do.body16.i238
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %parent_port.i229 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent_port.i229, align 4
  tail call void @sas_port_mark_backlink(ptr noundef %35) #10
  br label %sas_add_parent_port.exit242

sas_add_parent_port.exit242:                      ; preds = %do.end35.i240, %if.then22.sas_add_parent_port.exit242_crit_edge
  %36 = ptrtoint ptr %parent_port.i229 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent_port.i229, align 4
  %phy.i241 = getelementptr %struct.ex_phy, ptr %28, i32 %phy_id, i32 13
  %38 = ptrtoint ptr %phy.i241 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy.i241, align 4
  tail call void @sas_port_add_phy(ptr noundef %37, ptr noundef %39) #10
  %routing_attr = getelementptr %struct.ex_phy, ptr %1, i32 %phy_id, i32 10
  %40 = ptrtoint ptr %routing_attr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %routing_attr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp23 = icmp eq i32 %41, 2
  br i1 %cmp23, label %if.then24, label %sas_add_parent_port.exit242.cleanup_crit_edge

sas_add_parent_port.exit242.cleanup_crit_edge:    ; preds = %sas_add_parent_port.exit242
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %sas_add_parent_port.exit242
  call void @__sanitizer_cov_trace_pc() #12
  %port25 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %42 = ptrtoint ptr %port25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port25, align 4
  %sas_addr26 = getelementptr inbounds %struct.asd_sas_port, ptr %43, i32 0, i32 12
  %call28 = tail call fastcc i32 @sas_configure_phy(ptr noundef %dev, i32 noundef %phy_id, ptr noundef %sas_addr26, i32 noundef 1)
  br label %cleanup

if.end30:                                         ; preds = %land.lhs.true15.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge
  %port31 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  %44 = ptrtoint ptr %port31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port31, align 4
  %attached_sas_addr32 = getelementptr %struct.ex_phy, ptr %1, i32 %phy_id, i32 7
  %sas_addr1.i = getelementptr inbounds %struct.asd_sas_port, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %sas_addr1.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %sas_addr1.i, align 4
  %48 = ptrtoint ptr %attached_sas_addr32 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %attached_sas_addr32, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %47, i64 %49)
  %cmp.i = icmp eq i64 %47, %49
  br i1 %cmp.i, label %if.end30.if.then36_crit_edge, label %if.end.i

if.end30.if.then36_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.end.i:                                         ; preds = %if.end30
  %dev_list.i = getelementptr inbounds %struct.asd_sas_port, ptr %45, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %dev_list.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %50 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp3.not.i = icmp eq ptr %.pn.i, %dev_list.i
  br i1 %cmp3.not.i, label %for.cond.i.if.end39_crit_edge, label %for.body.i

for.cond.i.if.end39_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

for.body.i:                                       ; preds = %for.cond.i
  %sas_addr4.i = getelementptr i8, ptr %.pn.i, i32 28
  %51 = ptrtoint ptr %sas_addr4.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %sas_addr4.i, align 16
  %cmp6.i = icmp eq i64 %52, %49
  br i1 %cmp6.i, label %for.body.i.if.then36_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.body.i.if.then36_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then36

if.then36:                                        ; preds = %for.body.i.if.then36_crit_edge, %if.end30.if.then36_crit_edge
  %53 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19
  %num_phys.i = getelementptr inbounds %struct.expander_device, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_phys.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp19.not.i = icmp eq i8 %55, 0
  br i1 %cmp19.not.i, label %if.then36.if.end39_crit_edge, label %if.then36.for.body.i244_crit_edge

if.then36.for.body.i244_crit_edge:                ; preds = %if.then36
  br label %for.body.i244

if.then36.if.end39_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

for.body.i244:                                    ; preds = %cleanup.i.for.body.i244_crit_edge, %if.then36.for.body.i244_crit_edge
  %i.020.i = phi i32 [ %inc.i, %cleanup.i.for.body.i244_crit_edge ], [ 0, %if.then36.for.body.i244_crit_edge ]
  %56 = ptrtoint ptr %ex_phy1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ex_phy1, align 4
  %phy_state.i = getelementptr %struct.ex_phy, ptr %57, i32 %i.020.i, i32 1
  %58 = ptrtoint ptr %phy_state.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %phy_state.i, align 4
  %.off.i = add i32 %59, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %for.body.i244.cleanup.i_crit_edge, label %if.end.i245

for.body.i244.cleanup.i_crit_edge:                ; preds = %for.body.i244
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i245:                                      ; preds = %for.body.i244
  %attached_sas_addr.i = getelementptr %struct.ex_phy, ptr %57, i32 %i.020.i, i32 7
  %60 = ptrtoint ptr %attached_sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %61 = load i64, ptr %attached_sas_addr.i, align 4
  %62 = ptrtoint ptr %attached_sas_addr32 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %attached_sas_addr32, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %61, i64 %63)
  %cmp7.i = icmp eq i64 %61, %63
  br i1 %cmp7.i, label %if.then9.i, label %if.end.i245.cleanup.i_crit_edge

if.end.i245.cleanup.i_crit_edge:                  ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then9.i:                                       ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @sas_smp_phy_control(ptr noundef %dev, i32 noundef %i.020.i, i32 noundef 3, ptr noundef null) #10
  %linkrate.i.i = getelementptr %struct.ex_phy, ptr %57, i32 %i.020.i, i32 3
  %64 = ptrtoint ptr %linkrate.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %linkrate.i.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then9.i, %if.end.i245.cleanup.i_crit_edge, %for.body.i244.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %65 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %num_phys.i, align 2
  %conv.i = zext i8 %66 to i32
  %cmp.i246 = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i246, label %cleanup.i.for.body.i244_crit_edge, label %cleanup.i.if.end39_crit_edge

cleanup.i.if.end39_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

cleanup.i.for.body.i244_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i244

if.end39:                                         ; preds = %cleanup.i.if.end39_crit_edge, %if.then36.if.end39_crit_edge, %for.cond.i.if.end39_crit_edge
  %attached_dev_type = getelementptr %struct.ex_phy, ptr %1, i32 %phy_id, i32 2
  %67 = ptrtoint ptr %attached_dev_type to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %attached_dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp40 = icmp eq i32 %68, 0
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %if.end39
  %routing_attr42 = getelementptr %struct.ex_phy, ptr %1, i32 %phy_id, i32 10
  %69 = ptrtoint ptr %routing_attr42 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %routing_attr42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp43 = icmp eq i32 %70, 0
  br i1 %cmp43, label %if.then44, label %if.then41.cleanup_crit_edge

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then44:                                        ; preds = %if.then41
  %71 = ptrtoint ptr %attached_sas_addr32 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 8)
  store i64 0, ptr %attached_sas_addr32, align 4
  %72 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %parent, align 64
  %tobool.not.i247 = icmp eq ptr %73, null
  br i1 %tobool.not.i247, label %if.then44.cleanup_crit_edge, label %if.then.i249

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i249:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %call.i248 = tail call fastcc i32 @sas_configure_parent(ptr noundef nonnull %73, ptr noundef %dev, ptr noundef %attached_sas_addr32, i32 noundef 1) #10
  br label %cleanup

if.else:                                          ; preds = %if.end39
  %74 = ptrtoint ptr %linkrate to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %linkrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp52 = icmp eq i32 %75, 0
  br i1 %cmp52, label %if.else.cleanup_crit_edge, label %if.end55

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end55:                                         ; preds = %if.else
  %76 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %68, label %do.end [
    i32 1, label %if.end55.if.end72_crit_edge
    i32 3, label %if.end55.if.end72_crit_edge306
    i32 2, label %if.end55.if.end72_crit_edge307
    i32 9, label %if.end55.if.end72_crit_edge308
  ]

if.end55.if.end72_crit_edge308:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end55.if.end72_crit_edge307:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end55.if.end72_crit_edge306:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end55.if.end72_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

do.end:                                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr69 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %77 = ptrtoint ptr %sas_addr69 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %sas_addr69, align 16
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %68, i64 noundef %78, i32 noundef %phy_id) #15
  br label %cleanup

if.end72:                                         ; preds = %if.end55.if.end72_crit_edge, %if.end55.if.end72_crit_edge306, %if.end55.if.end72_crit_edge307, %if.end55.if.end72_crit_edge308
  %79 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %parent, align 64
  %tobool.not.i252 = icmp eq ptr %80, null
  br i1 %tobool.not.i252, label %if.end72.if.end88_crit_edge, label %sas_configure_routing.exit256

if.end72.if.end88_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

sas_configure_routing.exit256:                    ; preds = %if.end72
  %call.i253 = tail call fastcc i32 @sas_configure_parent(ptr noundef nonnull %80, ptr noundef %dev, ptr noundef %attached_sas_addr32, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i253)
  %tobool76.not = icmp eq i32 %call.i253, 0
  br i1 %tobool76.not, label %sas_configure_routing.exit256.if.end88_crit_edge, label %do.end80

sas_configure_routing.exit256.if.end88_crit_edge: ; preds = %sas_configure_routing.exit256
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

do.end80:                                         ; preds = %sas_configure_routing.exit256
  %81 = ptrtoint ptr %attached_sas_addr32 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 8)
  %82 = load i64, ptr %attached_sas_addr32, align 4
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i64 noundef %82, i32 noundef %call.i253) #15
  %83 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %parent, align 64
  %tobool.not.i258 = icmp eq ptr %84, null
  br i1 %tobool.not.i258, label %do.end80.cleanup_crit_edge, label %if.then.i260

do.end80.cleanup_crit_edge:                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i260:                                     ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #12
  %call.i259 = tail call fastcc i32 @sas_configure_parent(ptr noundef nonnull %84, ptr noundef %dev, ptr noundef %attached_sas_addr32, i32 noundef 0) #10
  br label %cleanup

if.end88:                                         ; preds = %sas_configure_routing.exit256.if.end88_crit_edge, %if.end72.if.end88_crit_edge
  %85 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19
  %86 = ptrtoint ptr %ex_phy1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ex_phy1, align 8
  %arrayidx.i = getelementptr %struct.ex_phy, ptr %87, i32 %phy_id
  %num_phys.i262 = getelementptr inbounds %struct.expander_device, ptr %85, i32 0, i32 3
  %88 = ptrtoint ptr %num_phys.i262 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %num_phys.i262, align 2
  %conv.i263 = zext i8 %89 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp32.not.i = icmp eq i8 %89, 0
  br i1 %cmp32.not.i, label %if.end88.if.end104_crit_edge, label %for.body.lr.ph.i265

if.end88.if.end104_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

for.body.lr.ph.i265:                              ; preds = %if.end88
  %attached_sas_addr.i264 = getelementptr %struct.ex_phy, ptr %87, i32 %phy_id, i32 7
  br label %for.body.i266

for.body.i266:                                    ; preds = %for.inc.i.for.body.i266_crit_edge, %for.body.lr.ph.i265
  %cmp35.i = phi i1 [ true, %for.body.lr.ph.i265 ], [ %cmp.i272, %for.inc.i.for.body.i266_crit_edge ]
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i265 ], [ %inc.i271, %for.inc.i.for.body.i266_crit_edge ]
  %arrayidx3.i = getelementptr %struct.ex_phy, ptr %87, i32 %i.033.i
  %cmp4.i = icmp eq ptr %arrayidx3.i, %arrayidx.i
  br i1 %cmp4.i, label %for.body.i266.for.inc.i_crit_edge, label %if.end.i268

for.body.i266.for.inc.i_crit_edge:                ; preds = %for.body.i266
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i268:                                      ; preds = %for.body.i266
  %attached_sas_addr6.i = getelementptr %struct.ex_phy, ptr %87, i32 %i.033.i, i32 7
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %attached_sas_addr.i264, ptr noundef dereferenceable(8) %attached_sas_addr6.i, i32 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i267 = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i267, label %land.lhs.true.i, label %if.end.i268.for.inc.i_crit_edge

if.end.i268.for.inc.i_crit_edge:                  ; preds = %if.end.i268
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i268
  %port.i = getelementptr %struct.ex_phy, ptr %87, i32 %i.033.i, i32 14
  %90 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %port.i, align 4
  %tobool8.not.i = icmp eq ptr %91, null
  br i1 %tobool8.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %cleanup.i270

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cleanup.i270:                                     ; preds = %land.lhs.true.i
  %phy11.i = getelementptr %struct.ex_phy, ptr %87, i32 %phy_id, i32 13
  %92 = ptrtoint ptr %phy11.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %phy11.i, align 4
  tail call void @sas_port_add_phy(ptr noundef nonnull %91, ptr noundef %93) #10
  %94 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %port.i, align 4
  %port13.i = getelementptr %struct.ex_phy, ptr %87, i32 %phy_id, i32 14
  %96 = ptrtoint ptr %port13.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %95, ptr %port13.i, align 4
  %phy_state.i269 = getelementptr %struct.ex_phy, ptr %87, i32 %phy_id, i32 1
  %97 = ptrtoint ptr %phy_state.i269 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 3, ptr %phy_state.i269, align 4
  br i1 %cmp35.i, label %do.body91, label %cleanup.i270.if.end104_crit_edge

cleanup.i270.if.end104_crit_edge:                 ; preds = %cleanup.i270
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i268.for.inc.i_crit_edge, %for.body.i266.for.inc.i_crit_edge
  %inc.i271 = add nuw nsw i32 %i.033.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i271, i32 %conv.i263)
  %cmp.i272 = icmp ult i32 %inc.i271, %conv.i263
  %exitcond.not.i = icmp eq i32 %inc.i271, %conv.i263
  br i1 %exitcond.not.i, label %for.inc.i.if.end104_crit_edge, label %for.inc.i.for.body.i266_crit_edge

for.inc.i.for.body.i266_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i266

for.inc.i.if.end104_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

do.body91:                                        ; preds = %cleanup.i270
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_ex_discover_dev.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_ex_discover_dev, %cleanup)) #10
          to label %if.then98 [label %cleanup], !srcloc !246

if.then98:                                        ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %attached_sas_addr32 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 8)
  %99 = load i64, ptr %attached_sas_addr32, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_ex_discover_dev.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.59, i32 noundef %phy_id, i64 noundef %99) #10
  br label %cleanup

if.end104:                                        ; preds = %for.inc.i.if.end104_crit_edge, %cleanup.i270.if.end104_crit_edge, %if.end88.if.end104_crit_edge
  %100 = ptrtoint ptr %attached_dev_type to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %attached_dev_type, align 4
  %102 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %101, label %if.end104.do.end148_crit_edge [
    i32 1, label %if.end104.sw.bb_crit_edge
    i32 9, label %if.end104.sw.bb_crit_edge309
    i32 3, label %sw.bb107
    i32 2, label %if.end104.sw.bb142_crit_edge
  ]

if.end104.sw.bb142_crit_edge:                     ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb142

if.end104.sw.bb_crit_edge309:                     ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end104.sw.bb_crit_edge:                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end104.do.end148_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end148

sw.bb:                                            ; preds = %if.end104.sw.bb_crit_edge, %if.end104.sw.bb_crit_edge309
  %103 = ptrtoint ptr %ex_phy1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ex_phy1, align 4
  %arrayidx.i274 = getelementptr %struct.ex_phy, ptr %104, i32 %phy_id
  %attached_sata_host.i = getelementptr %struct.ex_phy, ptr %104, i32 %phy_id, i32 4
  %105 = ptrtoint ptr %attached_sata_host.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %bf.load.i = load i8, ptr %attached_sata_host.i, align 4
  %106 = and i8 %bf.load.i, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %if.end.i275, label %sw.bb.do.end148_crit_edge

sw.bb.do.end148_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end148

if.end.i275:                                      ; preds = %sw.bb
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %108 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %108, i32 noundef 3520, i32 noundef 640) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i275.do.end148_crit_edge, label %if.end7.i

if.end.i275.do.end148_crit_edge:                  ; preds = %if.end.i275
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end148

if.end7.i:                                        ; preds = %if.end.i275
  %siblings.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 7
  %109 = ptrtoint ptr %siblings.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %siblings.i.i, ptr %siblings.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 7, i32 1
  %110 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %siblings.i.i, ptr %prev.i.i.i, align 8
  %dev_list_node.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 10
  %111 = ptrtoint ptr %dev_list_node.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %dev_list_node.i.i, ptr %dev_list_node.i.i, align 4
  %prev.i8.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 10, i32 1
  %112 = ptrtoint ptr %prev.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %dev_list_node.i.i, ptr %prev.i8.i.i, align 8
  %disco_list_node.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 11
  %113 = ptrtoint ptr %disco_list_node.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %disco_list_node.i.i, ptr %disco_list_node.i.i, align 4
  %prev.i9.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 11, i32 1
  %114 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %disco_list_node.i.i, ptr %prev.i9.i.i, align 8
  %kref.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 22
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #10
  %115 = ptrtoint ptr %kref.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 1, ptr %kref.i.i, align 8
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @.str.91, ptr noundef nonnull @sas_alloc_device.__key, i16 noundef signext 3) #10
  %kref.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 22
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %116 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !252
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end7.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !248

if.end7.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end7.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %117 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %117)
  %.not.i.i.i.i.i = icmp sgt i32 %117, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !247

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.kref_get.exit.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end7.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end7.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %kref_get.exit.i

kref_get.exit.i:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.kref_get.exit.i_crit_edge
  %parent8.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 6
  %118 = ptrtoint ptr %parent8.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %dev, ptr %parent8.i, align 64
  %119 = ptrtoint ptr %port31 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %port31, align 4
  %port9.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 8
  %121 = ptrtoint ptr %port9.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %port9.i, align 4
  %attached_iproto.i = getelementptr %struct.ex_phy, ptr %104, i32 %phy_id, i32 6
  %122 = ptrtoint ptr %attached_iproto.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %attached_iproto.i, align 4
  %iproto.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 12
  %124 = ptrtoint ptr %iproto.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %iproto.i, align 4
  %sas_addr.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 15
  %attached_sas_addr.i277 = getelementptr %struct.ex_phy, ptr %104, i32 %phy_id, i32 7
  %125 = ptrtoint ptr %attached_sas_addr.i277 to i32
  call void @__asan_loadN_noabort(i32 %125, i32 8)
  %126 = load i64, ptr %attached_sas_addr.i277, align 4
  %127 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %126, ptr %sas_addr.i, align 16
  %hashed_sas_addr.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 16
  tail call void @sas_hash_addr(ptr noundef %hashed_sas_addr.i, ptr noundef %sas_addr.i) #10
  %port14.i = getelementptr %struct.ex_phy, ptr %104, i32 %phy_id, i32 14
  %128 = ptrtoint ptr %port14.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %port14.i, align 4
  %tobool15.not.i = icmp eq ptr %129, null
  br i1 %tobool15.not.i, label %if.then16.i, label %kref_get.exit.i.if.end39.i_crit_edge

kref_get.exit.i.if.end39.i_crit_edge:             ; preds = %kref_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then16.i:                                      ; preds = %kref_get.exit.i
  %rphy17.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 14
  %130 = ptrtoint ptr %rphy17.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rphy17.i, align 4
  %call18.i278 = tail call ptr @sas_port_alloc(ptr noundef %131, i32 noundef %phy_id) #10
  %132 = ptrtoint ptr %port14.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call18.i278, ptr %port14.i, align 4
  %tobool21.not.i = icmp eq ptr %call18.i278, null
  br i1 %tobool21.not.i, label %if.then16.i.out_err.i_crit_edge, label %if.end26.i, !prof !248

if.then16.i.out_err.i_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_err.i

if.end26.i:                                       ; preds = %if.then16.i
  %call28.i = tail call i32 @sas_port_add(ptr noundef nonnull %call18.i278) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp.not.i = icmp eq i32 %call28.i, 0
  br i1 %cmp.not.i, label %if.end26.i.if.end39.i_crit_edge, label %if.then36.i, !prof !247

if.end26.i.if.end39.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then36.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %133 = ptrtoint ptr %port14.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %port14.i, align 4
  tail call void @sas_port_free(ptr noundef %134) #10
  br label %out_err.i

if.end39.i:                                       ; preds = %if.end26.i.if.end39.i_crit_edge, %kref_get.exit.i.if.end39.i_crit_edge
  %pathways.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 5
  %135 = ptrtoint ptr %pathways.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %pathways.i.i, align 4
  %136 = ptrtoint ptr %port14.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %port14.i, align 4
  %138 = ptrtoint ptr %num_phys.i262 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %num_phys.i262, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp86.not.i.i = icmp eq i8 %139, 0
  br i1 %cmp86.not.i.i, label %if.end39.i.sas_ex_get_linkrate.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end39.i.sas_ex_get_linkrate.exit.i_crit_edge:  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_ex_get_linkrate.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end39.i
  %min_linkrate.i.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 3
  %min_linkrate14.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 3
  %max_linkrate.i.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 4
  %max_linkrate23.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.087.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc27.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %140 = ptrtoint ptr %ex_phy1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %ex_phy1, align 4
  %phy_state.i.i = getelementptr %struct.ex_phy, ptr %141, i32 %i.087.i.i, i32 1
  %142 = ptrtoint ptr %phy_state.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %phy_state.i.i, align 4
  %.off.i.i = add i32 %143, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %attached_sas_addr.i.i = getelementptr %struct.ex_phy, ptr %141, i32 %i.087.i.i, i32 7
  %144 = ptrtoint ptr %attached_sas_addr.i.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 8)
  %145 = load i64, ptr %attached_sas_addr.i.i, align 4
  %146 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %sas_addr.i, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %145, i64 %147)
  %cmp9.i.i = icmp eq i64 %145, %147
  br i1 %cmp9.i.i, label %if.then11.i.i, label %if.end.i.i.cleanup.i.i_crit_edge

if.end.i.i.cleanup.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %min_linkrate.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %min_linkrate.i.i, align 4
  %linkrate.i.i279 = getelementptr %struct.ex_phy, ptr %141, i32 %i.087.i.i, i32 3
  %150 = ptrtoint ptr %linkrate.i.i279 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %linkrate.i.i279, align 4
  %152 = tail call i32 @llvm.umin.i32(i32 %149, i32 %151) #10
  %153 = ptrtoint ptr %min_linkrate14.i.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %min_linkrate14.i.i, align 4
  %154 = ptrtoint ptr %max_linkrate.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %max_linkrate.i.i, align 8
  %156 = ptrtoint ptr %linkrate.i.i279 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %linkrate.i.i279, align 4
  %158 = tail call i32 @llvm.umax.i32(i32 %155, i32 %157) #10
  %159 = ptrtoint ptr %max_linkrate23.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %max_linkrate23.i.i, align 8
  %160 = ptrtoint ptr %pathways.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %pathways.i.i, align 4
  %inc.i.i = add i32 %161, 1
  store i32 %inc.i.i, ptr %pathways.i.i, align 4
  %phy25.i.i = getelementptr %struct.ex_phy, ptr %141, i32 %i.087.i.i, i32 13
  %162 = ptrtoint ptr %phy25.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %phy25.i.i, align 4
  tail call void @sas_port_add_phy(ptr noundef %137, ptr noundef %163) #10
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then11.i.i, %if.end.i.i.cleanup.i.i_crit_edge, %for.body.i.i.cleanup.i.i_crit_edge
  %inc27.i.i = add nuw nsw i32 %i.087.i.i, 1
  %164 = ptrtoint ptr %num_phys.i262 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %num_phys.i262, align 2
  %conv.i.i = zext i8 %165 to i32
  %cmp.i.i = icmp ult i32 %inc27.i.i, %conv.i.i
  br i1 %cmp.i.i, label %cleanup.i.i.for.body.i.i_crit_edge, label %cleanup.i.i.sas_ex_get_linkrate.exit.i_crit_edge

cleanup.i.i.sas_ex_get_linkrate.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_ex_get_linkrate.exit.i

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

sas_ex_get_linkrate.exit.i:                       ; preds = %cleanup.i.i.sas_ex_get_linkrate.exit.i_crit_edge, %if.end39.i.sas_ex_get_linkrate.exit.i_crit_edge
  %linkrate28.i.i = getelementptr %struct.ex_phy, ptr %104, i32 %phy_id, i32 3
  %166 = ptrtoint ptr %linkrate28.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %linkrate28.i.i, align 4
  %max_linkrate29.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 4
  %168 = ptrtoint ptr %max_linkrate29.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %max_linkrate29.i.i, align 8
  %170 = tail call i32 @llvm.umin.i32(i32 %167, i32 %169) #10
  %linkrate37.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 2
  %171 = ptrtoint ptr %linkrate37.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %linkrate37.i.i, align 16
  %172 = ptrtoint ptr %pathways.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %pathways.i.i, align 4
  %pathways39.i.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 5
  %174 = ptrtoint ptr %pathways39.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %pathways39.i.i, align 4
  %176 = tail call i32 @llvm.smin.i32(i32 %173, i32 %175) #10
  %177 = ptrtoint ptr %pathways.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %pathways.i.i, align 4
  %178 = ptrtoint ptr %port14.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %port14.i, align 4
  tail call void @sas_device_set_phy(ptr noundef %call7.i.i.i.i, ptr noundef %179) #10
  %attached_tproto.i = getelementptr %struct.ex_phy, ptr %104, i32 %phy_id, i32 5
  %180 = ptrtoint ptr %attached_tproto.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %attached_tproto.i, align 4
  %and.i = and i32 %181, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool41.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool41.not.i, label %lor.lhs.false42.i, label %sas_ex_get_linkrate.exit.i.if.then48.i_crit_edge

sas_ex_get_linkrate.exit.i.if.then48.i_crit_edge: ; preds = %sas_ex_get_linkrate.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48.i

lor.lhs.false42.i:                                ; preds = %sas_ex_get_linkrate.exit.i
  %182 = ptrtoint ptr %attached_sata_host.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %bf.load43.i = load i8, ptr %attached_sata_host.i, align 4
  %183 = and i8 %bf.load43.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool47.not.i = icmp eq i8 %183, 0
  br i1 %tobool47.not.i, label %if.else.i, label %lor.lhs.false42.i.if.then48.i_crit_edge

lor.lhs.false42.i.if.then48.i_crit_edge:          ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48.i

if.then48.i:                                      ; preds = %lor.lhs.false42.i.if.then48.i_crit_edge, %sas_ex_get_linkrate.exit.i.if.then48.i_crit_edge
  %184 = ptrtoint ptr %linkrate37.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %linkrate37.i.i, align 16
  %min_linkrate.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 3
  %186 = ptrtoint ptr %min_linkrate.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %min_linkrate.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %185, i32 %187)
  %cmp49.i = icmp ugt i32 %185, %187
  br i1 %cmp49.i, label %if.then51.i, label %if.then48.i.if.end87.i_crit_edge

if.then48.i.if.end87.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87.i

if.then51.i:                                      ; preds = %if.then48.i
  %phy52.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 9
  %188 = ptrtoint ptr %phy52.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %phy52.i, align 16
  %minimum_linkrate.i = getelementptr inbounds %struct.sas_phy, ptr %189, i32 0, i32 6
  %190 = ptrtoint ptr %minimum_linkrate.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %minimum_linkrate.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %191, i32 %187)
  %cmp55.i = icmp ugt i32 %191, %187
  %spec.select.i = select i1 %cmp55.i, i32 %187, i32 0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rates.i) #10
  %192 = getelementptr inbounds %struct.sas_phy_linkrates, ptr %rates.i, i32 0, i32 1
  %193 = ptrtoint ptr %rates.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %187, ptr %rates.i, align 4
  %194 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %spec.select.i, ptr %192, align 4
  %195 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %sas_addr.i, align 16
  %call61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i64 noundef %196, i32 noundef %phy_id) #15
  %call62.i = call i32 @sas_smp_phy_control(ptr noundef %dev, i32 noundef %phy_id, i32 noundef 1, ptr noundef nonnull %rates.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  %197 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %197)
  %198 = load i64, ptr %sas_addr.i, align 16
  br i1 %tobool63.not.i, label %cleanup.thread.i, label %cleanup.i280

cleanup.thread.i:                                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #12
  %call79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i64 noundef %198, i32 noundef %phy_id) #15
  %min_linkrate80.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 3
  %199 = ptrtoint ptr %min_linkrate80.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %min_linkrate80.i, align 4
  %201 = ptrtoint ptr %linkrate37.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %linkrate37.i.i, align 16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rates.i) #10
  br label %if.end87.i

cleanup.i280:                                     ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #12
  %call71.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i64 noundef %198, i32 noundef %phy_id, i32 noundef %call62.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rates.i) #10
  br label %out_free.i

if.end87.i:                                       ; preds = %cleanup.thread.i, %if.then48.i.if.end87.i_crit_edge
  %call88.i = call i32 @sas_get_ata_info(ptr noundef %call7.i.i.i.i, ptr noundef %arrayidx.i274) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %tobool89.not.i = icmp eq i32 %call88.i, 0
  br i1 %tobool89.not.i, label %if.end91.i, label %if.end87.i.out_free.i_crit_edge

if.end87.i.out_free.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free.i

if.end91.i:                                       ; preds = %if.end87.i
  call void @sas_init_dev(ptr noundef %call7.i.i.i.i) #10
  %call92.i = call i32 @sas_ata_init(ptr noundef %call7.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %tobool93.not.i = icmp eq i32 %call92.i, 0
  br i1 %tobool93.not.i, label %if.end95.i, label %if.end91.i.out_free.i_crit_edge

if.end91.i.out_free.i_crit_edge:                  ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free.i

if.end95.i:                                       ; preds = %if.end91.i
  %202 = ptrtoint ptr %port14.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %port14.i, align 4
  %call97.i = call ptr @sas_end_device_alloc(ptr noundef %203) #10
  %tobool98.not.i = icmp eq ptr %call97.i, null
  br i1 %tobool98.not.i, label %if.end95.i.out_free.i_crit_edge, label %if.end100.i

if.end95.i.out_free.i_crit_edge:                  ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free.i

if.end100.i:                                      ; preds = %if.end95.i
  %conv101.i = trunc i32 %phy_id to i8
  %phy_identifier.i = getelementptr inbounds %struct.sas_rphy, ptr %call97.i, i32 0, i32 1, i32 4
  %204 = ptrtoint ptr %phy_identifier.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv101.i, ptr %phy_identifier.i, align 8
  %rphy102.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 14
  %205 = ptrtoint ptr %rphy102.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %call97.i, ptr %rphy102.i, align 4
  %call104.i = call ptr @get_device(ptr noundef nonnull %call97.i) #10
  %206 = ptrtoint ptr %port31 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %port31, align 4
  %disco_list.i = getelementptr inbounds %struct.asd_sas_port, ptr %207, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.asd_sas_port, ptr %207, i32 0, i32 4, i32 1
  %208 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %disco_list_node.i.i, ptr noundef %209, ptr noundef %disco_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end100.i.list_add_tail.exit.i_crit_edge

if.end100.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #12
  %210 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %disco_list_node.i.i, ptr %prev.i.i, align 4
  %211 = ptrtoint ptr %disco_list_node.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %disco_list.i, ptr %disco_list_node.i.i, align 4
  %212 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %209, ptr %prev.i9.i.i, align 8
  %213 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %213)
  store volatile ptr %disco_list_node.i.i, ptr %209, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end100.i.list_add_tail.exit.i_crit_edge
  %call106.i = call i32 @sas_discover_sata(ptr noundef %call7.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %tobool107.not.i = icmp eq i32 %call106.i, 0
  br i1 %tobool107.not.i, label %list_add_tail.exit.i.if.end169.i_crit_edge, label %do.end111.i

list_add_tail.exit.i.if.end169.i_crit_edge:       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169.i

do.end111.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %214 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %sas_addr.i, align 16
  %sas_addr115.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %216 = ptrtoint ptr %sas_addr115.i to i32
  call void @__asan_load8_noabort(i32 %216)
  %217 = load i64, ptr %sas_addr115.i, align 16
  %call117.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i64 noundef %215, i64 noundef %217, i32 noundef %phy_id, i32 noundef %call106.i) #15
  br label %out_list_del.i

if.else.i:                                        ; preds = %lor.lhs.false42.i
  %and120.i = and i32 %181, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120.i)
  %tobool121.not.i = icmp eq i32 %and120.i, 0
  br i1 %tobool121.not.i, label %do.end162.i, label %if.then122.i

if.then122.i:                                     ; preds = %if.else.i
  %dev_type.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 1
  %218 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 1, ptr %dev_type.i, align 4
  %219 = ptrtoint ptr %port14.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %port14.i, align 4
  %call124.i = tail call ptr @sas_end_device_alloc(ptr noundef %220) #10
  %tobool125.not.i = icmp eq ptr %call124.i, null
  br i1 %tobool125.not.i, label %if.then122.i.out_free.i_crit_edge, label %if.end135.i, !prof !248

if.then122.i.out_free.i_crit_edge:                ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free.i

if.end135.i:                                      ; preds = %if.then122.i
  %221 = ptrtoint ptr %attached_tproto.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %attached_tproto.i, align 4
  %tproto.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 13
  %223 = ptrtoint ptr %tproto.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %tproto.i, align 8
  tail call void @sas_init_dev(ptr noundef %call7.i.i.i.i) #10
  %rphy137.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 14
  %224 = ptrtoint ptr %rphy137.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %call124.i, ptr %rphy137.i, align 4
  %call139.i = tail call ptr @get_device(ptr noundef nonnull %call124.i) #10
  %conv140.i = trunc i32 %phy_id to i8
  %phy_identifier142.i = getelementptr inbounds %struct.sas_rphy, ptr %call124.i, i32 0, i32 1, i32 4
  %225 = ptrtoint ptr %phy_identifier142.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 %conv140.i, ptr %phy_identifier142.i, align 8
  %226 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %sas_addr.i, align 16
  %sas_address.i.i = getelementptr inbounds %struct.sas_rphy, ptr %call124.i, i32 0, i32 1, i32 3
  %228 = ptrtoint ptr %sas_address.i.i to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 %227, ptr %sas_address.i.i, align 8
  %229 = ptrtoint ptr %iproto.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %iproto.i, align 4
  %initiator_port_protocols.i.i = getelementptr inbounds %struct.sas_rphy, ptr %call124.i, i32 0, i32 1, i32 1
  %231 = ptrtoint ptr %initiator_port_protocols.i.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %230, ptr %initiator_port_protocols.i.i, align 4
  %232 = ptrtoint ptr %tproto.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %tproto.i, align 8
  %target_port_protocols.i.i = getelementptr inbounds %struct.sas_rphy, ptr %call124.i, i32 0, i32 1, i32 2
  %234 = ptrtoint ptr %target_port_protocols.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %233, ptr %target_port_protocols.i.i, align 8
  %235 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %dev_type.i, align 4
  %switch.tableidx = add i32 %236, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %237 = icmp ult i32 %switch.tableidx, 9
  br i1 %237, label %switch.lookup, label %if.end135.i.sas_fill_in_rphy.exit.i_crit_edge

if.end135.i.sas_fill_in_rphy.exit.i_crit_edge:    ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_fill_in_rphy.exit.i

switch.lookup:                                    ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.sas_ex_discover_dev, i32 0, i32 %switch.tableidx
  %238 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %238)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sas_fill_in_rphy.exit.i

sas_fill_in_rphy.exit.i:                          ; preds = %switch.lookup, %if.end135.i.sas_fill_in_rphy.exit.i_crit_edge
  %.sink.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end135.i.sas_fill_in_rphy.exit.i_crit_edge ]
  %identify.i.i = getelementptr inbounds %struct.sas_rphy, ptr %call124.i, i32 0, i32 1
  %239 = ptrtoint ptr %identify.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %.sink.i.i, ptr %identify.i.i, align 8
  %240 = ptrtoint ptr %port31 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %port31, align 4
  %disco_list145.i = getelementptr inbounds %struct.asd_sas_port, ptr %241, i32 0, i32 4
  %prev.i281.i = getelementptr inbounds %struct.asd_sas_port, ptr %241, i32 0, i32 4, i32 1
  %242 = ptrtoint ptr %prev.i281.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %prev.i281.i, align 4
  %call.i.i282.i = tail call zeroext i1 @__list_add_valid(ptr noundef %disco_list_node.i.i, ptr noundef %243, ptr noundef %disco_list145.i) #10
  br i1 %call.i.i282.i, label %if.end.i.i284.i, label %sas_fill_in_rphy.exit.i.list_add_tail.exit285.i_crit_edge

sas_fill_in_rphy.exit.i.list_add_tail.exit285.i_crit_edge: ; preds = %sas_fill_in_rphy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit285.i

if.end.i.i284.i:                                  ; preds = %sas_fill_in_rphy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %244 = ptrtoint ptr %prev.i281.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %disco_list_node.i.i, ptr %prev.i281.i, align 4
  %245 = ptrtoint ptr %disco_list_node.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %disco_list145.i, ptr %disco_list_node.i.i, align 4
  %246 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %243, ptr %prev.i9.i.i, align 8
  %247 = ptrtoint ptr %243 to i32
  call void @__asan_store4_noabort(i32 %247)
  store volatile ptr %disco_list_node.i.i, ptr %243, align 4
  br label %list_add_tail.exit285.i

list_add_tail.exit285.i:                          ; preds = %if.end.i.i284.i, %sas_fill_in_rphy.exit.i.list_add_tail.exit285.i_crit_edge
  %call146.i = tail call i32 @sas_discover_end_dev(ptr noundef %call7.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i)
  %tobool147.not.i = icmp eq i32 %call146.i, 0
  br i1 %tobool147.not.i, label %list_add_tail.exit285.i.if.end169.i_crit_edge, label %do.end151.i

list_add_tail.exit285.i.if.end169.i_crit_edge:    ; preds = %list_add_tail.exit285.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end169.i

do.end151.i:                                      ; preds = %list_add_tail.exit285.i
  call void @__sanitizer_cov_trace_pc() #12
  %248 = ptrtoint ptr %sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %248)
  %249 = load i64, ptr %sas_addr.i, align 16
  %sas_addr155.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %250 = ptrtoint ptr %sas_addr155.i to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %sas_addr155.i, align 16
  %call157.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i64 noundef %249, i64 noundef %251, i32 noundef %phy_id, i32 noundef %call146.i) #15
  br label %out_list_del.i

do.end162.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr165.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %252 = ptrtoint ptr %sas_addr165.i to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %sas_addr165.i, align 16
  %call167.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %181, i64 noundef %253, i32 noundef %phy_id) #15
  br label %out_free.i

if.end169.i:                                      ; preds = %list_add_tail.exit285.i.if.end169.i_crit_edge, %list_add_tail.exit.i.if.end169.i_crit_edge
  %prev.i286.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 1
  %254 = ptrtoint ptr %prev.i286.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %prev.i286.i, align 4
  %call.i.i287.i = call zeroext i1 @__list_add_valid(ptr noundef %siblings.i.i, ptr noundef %255, ptr noundef %85) #10
  br i1 %call.i.i287.i, label %if.end.i.i289.i, label %if.end169.i.sw.epilog_crit_edge

if.end169.i.sw.epilog_crit_edge:                  ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i.i289.i:                                  ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #12
  %256 = ptrtoint ptr %prev.i286.i to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr %siblings.i.i, ptr %prev.i286.i, align 4
  %257 = ptrtoint ptr %siblings.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %85, ptr %siblings.i.i, align 4
  %258 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %255, ptr %prev.i.i.i, align 8
  %259 = ptrtoint ptr %255 to i32
  call void @__asan_store4_noabort(i32 %259)
  store volatile ptr %siblings.i.i, ptr %255, align 4
  br label %sw.epilog

out_list_del.i:                                   ; preds = %do.end151.i, %do.end111.i
  %rphy170.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i.i, i32 0, i32 14
  %260 = ptrtoint ptr %rphy170.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %rphy170.i, align 4
  call void @sas_rphy_free(ptr noundef %261) #10
  %call.i.i291.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %disco_list_node.i.i) #10
  br i1 %call.i.i291.i, label %if.end.i.i293.i, label %out_list_del.i.list_del.exit.i_crit_edge

out_list_del.i.list_del.exit.i_crit_edge:         ; preds = %out_list_del.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i293.i:                                  ; preds = %out_list_del.i
  call void @__sanitizer_cov_trace_pc() #12
  %262 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %prev.i9.i.i, align 8
  %264 = ptrtoint ptr %disco_list_node.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %disco_list_node.i.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %265, i32 0, i32 1
  %266 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %263, ptr %prev1.i.i.i.i, align 4
  %267 = ptrtoint ptr %263 to i32
  call void @__asan_store4_noabort(i32 %267)
  store volatile ptr %265, ptr %263, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i293.i, %out_list_del.i.list_del.exit.i_crit_edge
  %268 = ptrtoint ptr %disco_list_node.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr inttoptr (i32 256 to ptr), ptr %disco_list_node.i.i, align 4
  %269 = ptrtoint ptr %prev.i9.i.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i9.i.i, align 8
  %270 = ptrtoint ptr %port31 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %port31, align 4
  %dev_list_lock.i = getelementptr inbounds %struct.asd_sas_port, ptr %271, i32 0, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %dev_list_lock.i) #10
  %call.i.i295.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_list_node.i.i) #10
  br i1 %call.i.i295.i, label %if.end.i.i298.i, label %list_del.exit.i.list_del.exit300.i_crit_edge

list_del.exit.i.list_del.exit300.i_crit_edge:     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit300.i

if.end.i.i298.i:                                  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %272 = ptrtoint ptr %prev.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %prev.i8.i.i, align 8
  %274 = ptrtoint ptr %dev_list_node.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev_list_node.i.i, align 4
  %prev1.i.i.i297.i = getelementptr inbounds %struct.list_head, ptr %275, i32 0, i32 1
  %276 = ptrtoint ptr %prev1.i.i.i297.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store ptr %273, ptr %prev1.i.i.i297.i, align 4
  %277 = ptrtoint ptr %273 to i32
  call void @__asan_store4_noabort(i32 %277)
  store volatile ptr %275, ptr %273, align 4
  br label %list_del.exit300.i

list_del.exit300.i:                               ; preds = %if.end.i.i298.i, %list_del.exit.i.list_del.exit300.i_crit_edge
  %278 = ptrtoint ptr %dev_list_node.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_list_node.i.i, align 4
  %279 = ptrtoint ptr %prev.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i8.i.i, align 8
  %280 = ptrtoint ptr %port31 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %port31, align 4
  %dev_list_lock174.i = getelementptr inbounds %struct.asd_sas_port, ptr %281, i32 0, i32 2
  call void @_raw_spin_unlock_irq(ptr noundef %dev_list_lock174.i) #10
  br label %out_free.i

out_free.i:                                       ; preds = %list_del.exit300.i, %do.end162.i, %if.then122.i.out_free.i_crit_edge, %if.end95.i.out_free.i_crit_edge, %if.end91.i.out_free.i_crit_edge, %if.end87.i.out_free.i_crit_edge, %cleanup.i280
  %282 = ptrtoint ptr %port14.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %port14.i, align 4
  call void @sas_port_delete(ptr noundef %283) #10
  br label %out_err.i

out_err.i:                                        ; preds = %out_free.i, %if.then36.i, %if.then16.i.out_err.i_crit_edge
  %284 = ptrtoint ptr %port14.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr null, ptr %port14.i, align 4
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !253
  call void @llvm.prefetch.p0(ptr %kref.i.i, i32 1, i32 3, i32 1) #10
  %285 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i.i, ptr %kref.i.i, i32 1, ptr elementtype(i32) %kref.i.i) #10, !srcloc !254
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %285, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %out_err.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.do.end148_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !247

if.end5.i.i.i.i.i.i.do.end148_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end148

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %kref.i.i, i32 noundef 3) #10
  br label %do.end148

if.then.i.i.i:                                    ; preds = %out_err.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !255
  call void @sas_free_device(ptr noundef %kref.i.i) #10
  br label %do.end148

sw.bb107:                                         ; preds = %if.end104
  %286 = ptrtoint ptr %port31 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %port31, align 4
  %fanout_sas_addr = getelementptr inbounds %struct.sas_discovery, ptr %287, i32 0, i32 2
  %288 = ptrtoint ptr %fanout_sas_addr to i32
  call void @__asan_loadN_noabort(i32 %288, i32 8)
  %289 = load i64, ptr %fanout_sas_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %289)
  %tobool110.not = icmp eq i64 %289, 0
  br i1 %tobool110.not, label %if.else134, label %do.body112

do.body112:                                       ; preds = %sw.bb107
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_ex_discover_dev.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_ex_discover_dev, %do.end133)) #10
          to label %if.then126 [label %do.end133], !srcloc !246

if.then126:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #12
  %290 = ptrtoint ptr %attached_sas_addr32 to i32
  call void @__asan_loadN_noabort(i32 %290, i32 8)
  %291 = load i64, ptr %attached_sas_addr32, align 4
  %attached_phy_id = getelementptr %struct.ex_phy, ptr %1, i32 %phy_id, i32 8
  %292 = ptrtoint ptr %attached_phy_id to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %attached_phy_id, align 4
  %conv = zext i8 %293 to i32
  %sas_addr129 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %294 = ptrtoint ptr %sas_addr129 to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %sas_addr129, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_ex_discover_dev.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.61, i64 noundef %291, i32 noundef %conv, i64 noundef %295, i32 noundef %phy_id) #10
  br label %do.end133

do.end133:                                        ; preds = %if.then126, %do.body112
  %296 = ptrtoint ptr %ex_phy1 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %ex_phy1, align 4
  %call.i283 = tail call i32 @sas_smp_phy_control(ptr noundef %dev, i32 noundef %phy_id, i32 noundef 3, ptr noundef null) #10
  %linkrate.i = getelementptr %struct.ex_phy, ptr %297, i32 %phy_id, i32 3
  %298 = ptrtoint ptr %linkrate.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 1, ptr %linkrate.i, align 4
  br label %cleanup

if.else134:                                       ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #12
  %299 = ptrtoint ptr %attached_sas_addr32 to i32
  call void @__asan_loadN_noabort(i32 %299, i32 8)
  %300 = load i64, ptr %attached_sas_addr32, align 4
  %301 = ptrtoint ptr %fanout_sas_addr to i32
  call void @__asan_storeN_noabort(i32 %301, i32 8)
  store i64 %300, ptr %fanout_sas_addr, align 4
  br label %sw.bb142

sw.bb142:                                         ; preds = %if.else134, %if.end104.sw.bb142_crit_edge
  %call143 = tail call fastcc ptr @sas_ex_discover_expander(ptr noundef %dev, i32 noundef %phy_id)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb142, %if.end.i.i289.i, %if.end169.i.sw.epilog_crit_edge
  %child.0 = phi ptr [ %call143, %sw.bb142 ], [ %call7.i.i.i.i, %if.end169.i.sw.epilog_crit_edge ], [ %call7.i.i.i.i, %if.end.i.i289.i ]
  %tobool144.not = icmp eq ptr %child.0, null
  br i1 %tobool144.not, label %sw.epilog.do.end148_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog.do.end148_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end148

do.end148:                                        ; preds = %sw.epilog.do.end148_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.do.end148_crit_edge, %if.end.i275.do.end148_crit_edge, %sw.bb.do.end148_crit_edge, %if.end104.do.end148_crit_edge
  %sas_addr150 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %302 = ptrtoint ptr %sas_addr150 to i32
  call void @__asan_load8_noabort(i32 %302)
  %303 = load i64, ptr %sas_addr150, align 16
  %call152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i64 noundef %303, i32 noundef %phy_id) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end148, %sw.epilog.cleanup_crit_edge, %do.end133, %if.then98, %do.body91, %if.then.i260, %do.end80.cleanup_crit_edge, %do.end, %if.else.cleanup_crit_edge, %if.then.i249, %if.then44.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %if.then24, %sas_add_parent_port.exit242.cleanup_crit_edge, %sas_add_parent_port.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end133 ], [ 0, %sas_add_parent_port.exit ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %if.then24 ], [ 0, %sas_add_parent_port.exit242.cleanup_crit_edge ], [ 0, %if.then41.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then98 ], [ 0, %do.end148 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then44.cleanup_crit_edge ], [ 0, %if.then.i249 ], [ %call.i253, %do.end80.cleanup_crit_edge ], [ %call.i253, %if.then.i260 ], [ 0, %do.body91 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sas_configure_phy(ptr noundef %dev, i32 noundef %phy_id, ptr nocapture noundef readonly %sas_addr, i32 noundef %include) unnamed_addr #0 align 64 {
entry:
  %req_sg.i.i13 = alloca %struct.scatterlist, align 4
  %resp_sg.i.i14 = alloca %struct.scatterlist, align 4
  %req_sg.i.i = alloca %struct.scatterlist, align 4
  %resp_sg.i.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ex_phy.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %ex_phy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ex_phy.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 64, ptr %call7.i.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i112.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 44) #13
  %tobool2.not.i = icmp eq ptr %call7.i.i.i112.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %arrayidx5.i = getelementptr i8, ptr %call7.i.i.i.i, i32 1
  %5 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 19, ptr %arrayidx5.i, align 1
  %conv.i = trunc i32 %phy_id to i8
  %arrayidx6.i = getelementptr i8, ptr %call7.i.i.i.i, i32 9
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %arrayidx6.i, align 1
  %max_route_indexes.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 3
  %7 = ptrtoint ptr %max_route_indexes.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %max_route_indexes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp126.not.i = icmp eq i16 %8, 0
  br i1 %cmp126.not.i, label %if.end4.i.sas_configure_present.exit_crit_edge, label %for.body.lr.ph.i

if.end4.i.sas_configure_present.exit_crit_edge:   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_configure_present.exit

for.body.lr.ph.i:                                 ; preds = %if.end4.i
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i.i, i32 6
  %arrayidx14.i = getelementptr i8, ptr %call7.i.i.i112.i, i32 2
  %add.ptr36.i = getelementptr i8, ptr %call7.i.i.i112.i, i32 16
  %last_da_index.i = getelementptr %struct.ex_phy, ptr %1, i32 %phy_id, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0127.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %conv9.i = trunc i32 %i.0127.i to i16
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv9.i, ptr %add.ptr.i, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req_sg.i.i) #10
  %10 = call ptr @memset(ptr %req_sg.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %resp_sg.i.i) #10
  %11 = call ptr @memset(ptr %resp_sg.i.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %req_sg.i.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 16) #10
  call void @sg_init_one(ptr noundef nonnull %resp_sg.i.i, ptr noundef nonnull %call7.i.i.i112.i, i32 noundef 44) #10
  %call.i.i = call fastcc i32 @smp_execute_task_sg(ptr noundef %dev, ptr noundef nonnull %req_sg.i.i, ptr noundef nonnull %resp_sg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %resp_sg.i.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req_sg.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %for.body.i.sas_configure_present.exit_crit_edge

for.body.i.sas_configure_present.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_configure_present.exit

if.end13.i:                                       ; preds = %for.body.i
  %12 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx14.i, align 2
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %13, label %do.end26.i [
    i8 17, label %do.end.i
    i8 0, label %if.end32.i
  ]

do.end.i:                                         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr19.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %15 = ptrtoint ptr %sas_addr19.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %sas_addr19.i, align 16
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i64 noundef %16, i32 noundef %phy_id, i32 noundef %i.0127.i) #15
  br label %sas_configure_present.exit

do.end26.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv15.i = zext i8 %13 to i32
  %sas_addr28.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %17 = ptrtoint ptr %sas_addr28.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sas_addr28.i, align 16
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i64 noundef %18, i32 noundef %phy_id, i32 noundef %i.0127.i, i32 noundef %conv15.i) #15
  br label %sas_configure_present.exit

if.end32.i:                                       ; preds = %if.end13.i
  %19 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %sas_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %cmp33.not.i = icmp eq i64 %20, 0
  %21 = ptrtoint ptr %add.ptr36.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr36.i, align 8
  br i1 %cmp33.not.i, label %if.else54.i, label %if.then35.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %20)
  %cmp37.i = icmp eq i64 %22, %20
  br i1 %cmp37.i, label %if.then39.i, label %if.else47.i

if.then39.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx40.i = getelementptr i8, ptr %call7.i.i.i112.i, i32 12
  %23 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx40.i, align 4
  %25 = xor i8 %24, -1
  %26 = lshr i8 %25, 7
  %.not = zext i8 %26 to i32
  br label %sas_configure_present.exit

if.else47.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp49.i = icmp eq i64 %22, 0
  br i1 %cmp49.i, label %if.else47.i.sas_configure_present.exit_crit_edge, label %if.else47.i.for.inc.i_crit_edge

if.else47.i.for.inc.i_crit_edge:                  ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.else47.i.sas_configure_present.exit_crit_edge: ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_configure_present.exit

if.else54.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp56.i = icmp eq i64 %22, 0
  br i1 %cmp56.i, label %land.lhs.true.i, label %if.else54.i.for.inc.i_crit_edge

if.else54.i.for.inc.i_crit_edge:                  ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.else54.i
  %27 = ptrtoint ptr %last_da_index.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last_da_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %i.0127.i)
  %cmp58.i = icmp slt i32 %28, %i.0127.i
  br i1 %cmp58.i, label %if.then60.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then60.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %last_da_index.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %i.0127.i, ptr %last_da_index.i, align 4
  br label %sas_configure_present.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.else54.i.for.inc.i_crit_edge, %if.else47.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0127.i, 1
  %30 = ptrtoint ptr %max_route_indexes.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %max_route_indexes.i, align 4
  %conv7.i = zext i16 %31 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv7.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.sas_configure_present.exit_crit_edge

for.inc.i.sas_configure_present.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_configure_present.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sas_configure_present.exit:                       ; preds = %for.inc.i.sas_configure_present.exit_crit_edge, %if.then60.i, %if.else47.i.sas_configure_present.exit_crit_edge, %if.then39.i, %do.end26.i, %do.end.i, %for.body.i.sas_configure_present.exit_crit_edge, %if.end4.i.sas_configure_present.exit_crit_edge
  %index.0 = phi i32 [ 0, %if.end4.i.sas_configure_present.exit_crit_edge ], [ 0, %do.end26.i ], [ %i.0127.i, %if.then60.i ], [ 0, %do.end.i ], [ %i.0127.i, %if.then39.i ], [ %i.0127.i, %if.else47.i.sas_configure_present.exit_crit_edge ], [ 0, %for.body.i.sas_configure_present.exit_crit_edge ], [ 0, %for.inc.i.sas_configure_present.exit_crit_edge ]
  %present.0 = phi i32 [ 0, %if.end4.i.sas_configure_present.exit_crit_edge ], [ 0, %do.end26.i ], [ 0, %if.then60.i ], [ 0, %do.end.i ], [ %.not, %if.then39.i ], [ 0, %if.else47.i.sas_configure_present.exit_crit_edge ], [ 0, %for.inc.i.sas_configure_present.exit_crit_edge ], [ 0, %for.body.i.sas_configure_present.exit_crit_edge ]
  %res.0.i = phi i32 [ -1, %if.end4.i.sas_configure_present.exit_crit_edge ], [ %conv15.i, %do.end26.i ], [ 0, %if.then60.i ], [ 17, %do.end.i ], [ 0, %if.then39.i ], [ 0, %if.else47.i.sas_configure_present.exit_crit_edge ], [ %call.i.i, %for.body.i.sas_configure_present.exit_crit_edge ], [ -1, %for.inc.i.sas_configure_present.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i112.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i)
  %tobool.not = icmp eq i32 %res.0.i, 0
  br i1 %tobool.not, label %if.end, label %sas_configure_present.exit.cleanup_crit_edge

sas_configure_present.exit.cleanup_crit_edge:     ; preds = %sas_configure_present.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sas_configure_present.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %present.0, i32 %include)
  %tobool1.not = icmp eq i32 %present.0, %include
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i15 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 44) #13
  %tobool.not.i.i16 = icmp eq ptr %call7.i.i.i.i15, null
  br i1 %tobool.not.i.i16, label %if.then2.cleanup_crit_edge, label %if.end.i18

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i18:                                       ; preds = %if.then2
  %33 = ptrtoint ptr %call7.i.i.i.i15 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 64, ptr %call7.i.i.i.i15, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i46.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 8) #13
  %tobool2.not.i17 = icmp eq ptr %call7.i.i.i46.i, null
  br i1 %tobool2.not.i17, label %if.then3.i19, label %if.end4.i24

if.then3.i19:                                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i15) #10
  br label %cleanup

if.end4.i24:                                      ; preds = %if.end.i18
  %arrayidx.i = getelementptr i8, ptr %call7.i.i.i.i15, i32 1
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -112, ptr %arrayidx.i, align 1
  %conv.i20 = trunc i32 %index.0 to i16
  %add.ptr.i21 = getelementptr i8, ptr %call7.i.i.i.i15, i32 6
  %36 = ptrtoint ptr %add.ptr.i21 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i20, ptr %add.ptr.i21, align 2
  %arrayidx6.i22 = getelementptr i8, ptr %call7.i.i.i.i15, i32 9
  %37 = ptrtoint ptr %arrayidx6.i22 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv.i, ptr %arrayidx6.i22, align 1
  %38 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %sas_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %cmp.i23 = icmp eq i64 %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %include)
  %tobool8.not.i = icmp eq i32 %include, 0
  %or.cond.i = or i1 %tobool8.not.i, %cmp.i23
  br i1 %or.cond.i, label %if.then9.i, label %if.end4.i24.if.end13.i26_crit_edge

if.end4.i24.if.end13.i26_crit_edge:               ; preds = %if.end4.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i26

if.then9.i:                                       ; preds = %if.end4.i24
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx10.i = getelementptr i8, ptr %call7.i.i.i.i15, i32 12
  %40 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx10.i, align 4
  %42 = or i8 %41, -128
  store i8 %42, ptr %arrayidx10.i, align 4
  br label %if.end13.i26

if.end13.i26:                                     ; preds = %if.then9.i, %if.end4.i24.if.end13.i26_crit_edge
  %add.ptr14.i = getelementptr i8, ptr %call7.i.i.i.i15, i32 16
  %43 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %39, ptr %add.ptr14.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req_sg.i.i13) #10
  %44 = call ptr @memset(ptr %req_sg.i.i13, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %resp_sg.i.i14) #10
  %45 = call ptr @memset(ptr %resp_sg.i.i14, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %req_sg.i.i13, ptr noundef nonnull %call7.i.i.i.i15, i32 noundef 44) #10
  call void @sg_init_one(ptr noundef nonnull %resp_sg.i.i14, ptr noundef nonnull %call7.i.i.i46.i, i32 noundef 8) #10
  %call.i.i25 = call fastcc i32 @smp_execute_task_sg(ptr noundef %dev, ptr noundef nonnull %req_sg.i.i13, ptr noundef nonnull %resp_sg.i.i14) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %resp_sg.i.i14) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req_sg.i.i13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i25)
  %tobool16.not.i = icmp eq i32 %call.i.i25, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end13.i26.out.i29_crit_edge

if.end13.i26.out.i29_crit_edge:                   ; preds = %if.end13.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i29

if.end18.i:                                       ; preds = %if.end13.i26
  %arrayidx19.i = getelementptr i8, ptr %call7.i.i.i46.i, i32 2
  %46 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx19.i, align 2
  %conv20.i = zext i8 %47 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %47)
  %cmp21.i = icmp eq i8 %47, 17
  br i1 %cmp21.i, label %do.end.i27, label %if.end18.i.out.i29_crit_edge

if.end18.i.out.i29_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i29

do.end.i27:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr24.i = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %48 = ptrtoint ptr %sas_addr24.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %sas_addr24.i, align 16
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i64 noundef %49, i32 noundef %phy_id, i32 noundef %index.0) #15
  br label %out.i29

out.i29:                                          ; preds = %do.end.i27, %if.end18.i.out.i29_crit_edge, %if.end13.i26.out.i29_crit_edge
  %res.0.i28 = phi i32 [ %call.i.i25, %if.end13.i26.out.i29_crit_edge ], [ 17, %do.end.i27 ], [ %conv20.i, %if.end18.i.out.i29_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i15) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i46.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out.i29, %if.then3.i19, %if.then2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sas_configure_present.exit.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0.i, %sas_configure_present.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %res.0.i28, %out.i29 ], [ -12, %if.then3.i19 ], [ -12, %if.then2.cleanup_crit_edge ], [ -12, %if.then3.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sas_ex_discover_expander(ptr noundef %parent, i32 noundef %phy_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rphy = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 14
  %0 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rphy, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -56
  %2 = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 19
  %ex_phy = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 19, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %ex_phy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ex_phy, align 8
  %routing_attr = getelementptr %struct.ex_phy, ptr %4, i32 %phy_id, i32 10
  %5 = ptrtoint ptr %routing_attr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %routing_attr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 15
  %7 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sas_addr, align 16
  %attached_sas_addr = getelementptr %struct.ex_phy, ptr %4, i32 %phy_id, i32 7
  %9 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %attached_sas_addr, align 4
  %attached_phy_id = getelementptr %struct.ex_phy, ptr %4, i32 %phy_id, i32 8
  %11 = ptrtoint ptr %attached_phy_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %attached_phy_id, align 4
  %conv = zext i8 %12 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i64 noundef %8, i32 noundef %phy_id, i64 noundef %10, i32 noundef %conv) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 640) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %siblings.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %siblings.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %siblings.i, ptr %siblings.i, align 4
  %prev.i.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %siblings.i, ptr %prev.i.i, align 8
  %dev_list_node.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %dev_list_node.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %dev_list_node.i, ptr %dev_list_node.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev_list_node.i, ptr %prev.i8.i, align 8
  %disco_list_node.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 11
  %18 = ptrtoint ptr %disco_list_node.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %disco_list_node.i, ptr %disco_list_node.i, align 4
  %prev.i9.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 11, i32 1
  %19 = ptrtoint ptr %prev.i9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %disco_list_node.i, ptr %prev.i9.i, align 8
  %kref.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 22
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  %20 = ptrtoint ptr %kref.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 1, ptr %kref.i, align 8
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.91, ptr noundef nonnull @sas_alloc_device.__key, i16 noundef signext 3) #10
  %21 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rphy, align 4
  %call8 = tail call ptr @sas_port_alloc(ptr noundef %22, i32 noundef %phy_id) #10
  %port9 = getelementptr %struct.ex_phy, ptr %4, i32 %phy_id, i32 14
  %23 = ptrtoint ptr %port9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8, ptr %port9, align 4
  %call12 = tail call i32 @sas_port_add(ptr noundef %call8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %do.end26, label %do.body18, !prof !247

do.body18:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/libsas/sas_expander.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 964, 0\0A.popsection", ""() #10, !srcloc !256
  unreachable

do.end26:                                         ; preds = %if.end6
  %attached_dev_type = getelementptr %struct.ex_phy, ptr %4, i32 %phy_id, i32 2
  %24 = ptrtoint ptr %attached_dev_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %attached_dev_type, align 4
  %26 = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %switch = icmp eq i32 %26, 2
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/libsas/sas_expander.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 978, 0\0A.popsection", ""() #10, !srcloc !257
  unreachable

sw.epilog:                                        ; preds = %do.end26
  %27 = ptrtoint ptr %port9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port9, align 4
  %call31 = tail call ptr @sas_expander_alloc(ptr noundef %28, i32 noundef %25) #10
  %port38 = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 8
  %29 = ptrtoint ptr %port38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port38, align 4
  %rphy39 = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 14
  %31 = ptrtoint ptr %rphy39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call31, ptr %rphy39, align 4
  %call41 = tail call ptr @get_device(ptr noundef %call31) #10
  %add.ptr44 = getelementptr i8, ptr %call31, i32 -56
  %32 = ptrtoint ptr %attached_dev_type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %attached_dev_type, align 4
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %dev_type, align 4
  %kref = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 22
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #10
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #10, !srcloc !252
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %sw.epilog.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !248

sw.epilog.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %sw.epilog
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %36 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %.not.i.i.i.i = icmp sgt i32 %36, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !247

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %sw.epilog.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %sw.epilog.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #10
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %parent46 = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %parent46 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %parent, ptr %parent46, align 64
  %port47 = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 8
  %38 = ptrtoint ptr %port47 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %30, ptr %port47, align 4
  %attached_iproto = getelementptr %struct.ex_phy, ptr %4, i32 %phy_id, i32 6
  %39 = ptrtoint ptr %attached_iproto to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %attached_iproto, align 4
  %iproto = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 12
  %41 = ptrtoint ptr %iproto to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %iproto, align 4
  %attached_tproto = getelementptr %struct.ex_phy, ptr %4, i32 %phy_id, i32 5
  %42 = ptrtoint ptr %attached_tproto to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %attached_tproto, align 4
  %tproto = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 13
  %44 = ptrtoint ptr %tproto to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %tproto, align 8
  %sas_addr48 = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 15
  %attached_sas_addr50 = getelementptr %struct.ex_phy, ptr %4, i32 %phy_id, i32 7
  %45 = ptrtoint ptr %attached_sas_addr50 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %attached_sas_addr50, align 4
  %47 = ptrtoint ptr %sas_addr48 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %sas_addr48, align 16
  %hashed_sas_addr = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 16
  tail call void @sas_hash_addr(ptr noundef %hashed_sas_addr, ptr noundef %sas_addr48) #10
  %pathways.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %pathways.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %pathways.i, align 4
  %49 = ptrtoint ptr %port9 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %port9, align 4
  %num_phys.i = getelementptr inbounds %struct.expander_device, ptr %2, i32 0, i32 3
  %51 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %num_phys.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp86.not.i = icmp eq i8 %52, 0
  br i1 %cmp86.not.i, label %kref_get.exit.sas_ex_get_linkrate.exit_crit_edge, label %for.body.lr.ph.i

kref_get.exit.sas_ex_get_linkrate.exit_crit_edge: ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_ex_get_linkrate.exit

for.body.lr.ph.i:                                 ; preds = %kref_get.exit
  %min_linkrate.i = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 3
  %min_linkrate14.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 3
  %max_linkrate.i = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 4
  %max_linkrate23.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.087.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc27.i, %cleanup.i.for.body.i_crit_edge ]
  %53 = ptrtoint ptr %ex_phy to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ex_phy, align 4
  %phy_state.i = getelementptr %struct.ex_phy, ptr %54, i32 %i.087.i, i32 1
  %55 = ptrtoint ptr %phy_state.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %phy_state.i, align 4
  %.off.i = add i32 %56, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %attached_sas_addr.i = getelementptr %struct.ex_phy, ptr %54, i32 %i.087.i, i32 7
  %57 = ptrtoint ptr %attached_sas_addr.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %attached_sas_addr.i, align 4
  %59 = ptrtoint ptr %sas_addr48 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %sas_addr48, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %60)
  %cmp9.i = icmp eq i64 %58, %60
  br i1 %cmp9.i, label %if.then11.i, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %min_linkrate.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %min_linkrate.i, align 4
  %linkrate.i = getelementptr %struct.ex_phy, ptr %54, i32 %i.087.i, i32 3
  %63 = ptrtoint ptr %linkrate.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %linkrate.i, align 4
  %65 = tail call i32 @llvm.umin.i32(i32 %62, i32 %64) #10
  %66 = ptrtoint ptr %min_linkrate14.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %min_linkrate14.i, align 4
  %67 = ptrtoint ptr %max_linkrate.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_linkrate.i, align 8
  %69 = ptrtoint ptr %linkrate.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %linkrate.i, align 4
  %71 = tail call i32 @llvm.umax.i32(i32 %68, i32 %70) #10
  %72 = ptrtoint ptr %max_linkrate23.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %max_linkrate23.i, align 8
  %73 = ptrtoint ptr %pathways.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pathways.i, align 4
  %inc.i = add i32 %74, 1
  store i32 %inc.i, ptr %pathways.i, align 4
  %phy25.i = getelementptr %struct.ex_phy, ptr %54, i32 %i.087.i, i32 13
  %75 = ptrtoint ptr %phy25.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %phy25.i, align 4
  tail call void @sas_port_add_phy(ptr noundef %50, ptr noundef %76) #10
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then11.i, %if.end.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %inc27.i = add nuw nsw i32 %i.087.i, 1
  %77 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %num_phys.i, align 2
  %conv.i = zext i8 %78 to i32
  %cmp.i = icmp ult i32 %inc27.i, %conv.i
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.sas_ex_get_linkrate.exit_crit_edge

cleanup.i.sas_ex_get_linkrate.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_ex_get_linkrate.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

sas_ex_get_linkrate.exit:                         ; preds = %cleanup.i.sas_ex_get_linkrate.exit_crit_edge, %kref_get.exit.sas_ex_get_linkrate.exit_crit_edge
  %linkrate28.i = getelementptr %struct.ex_phy, ptr %4, i32 %phy_id, i32 3
  %79 = ptrtoint ptr %linkrate28.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %linkrate28.i, align 4
  %max_linkrate29.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 4
  %81 = ptrtoint ptr %max_linkrate29.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max_linkrate29.i, align 8
  %83 = tail call i32 @llvm.umin.i32(i32 %80, i32 %82) #10
  %linkrate37.i = getelementptr inbounds %struct.domain_device, ptr %call7.i.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %linkrate37.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %linkrate37.i, align 16
  %85 = ptrtoint ptr %pathways.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %pathways.i, align 4
  %pathways39.i = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 5
  %87 = ptrtoint ptr %pathways39.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pathways39.i, align 4
  %89 = tail call i32 @llvm.smin.i32(i32 %86, i32 %88) #10
  %90 = ptrtoint ptr %pathways.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %pathways.i, align 4
  %91 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %add.ptr, align 8
  %add = add i32 %92, 1
  %93 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add, ptr %add.ptr44, align 8
  %94 = ptrtoint ptr %port38 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %port38, align 4
  %max_level = getelementptr inbounds %struct.sas_discovery, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %max_level to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_level, align 4
  %98 = tail call i32 @llvm.smax.i32(i32 %97, i32 %add)
  %99 = ptrtoint ptr %max_level to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %max_level, align 4
  tail call void @sas_init_dev(ptr noundef nonnull %call7.i.i.i) #10
  %100 = ptrtoint ptr %sas_addr48 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %sas_addr48, align 16
  %sas_address.i = getelementptr inbounds %struct.sas_rphy, ptr %call31, i32 0, i32 1, i32 3
  %102 = ptrtoint ptr %sas_address.i to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %sas_address.i, align 8
  %103 = ptrtoint ptr %iproto to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %iproto, align 4
  %initiator_port_protocols.i = getelementptr inbounds %struct.sas_rphy, ptr %call31, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %initiator_port_protocols.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %initiator_port_protocols.i, align 4
  %106 = ptrtoint ptr %tproto to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tproto, align 8
  %target_port_protocols.i = getelementptr inbounds %struct.sas_rphy, ptr %call31, i32 0, i32 1, i32 2
  %108 = ptrtoint ptr %target_port_protocols.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %target_port_protocols.i, align 8
  %109 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dev_type, align 4
  %switch.tableidx = add i32 %110, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %111 = icmp ult i32 %switch.tableidx, 9
  br i1 %111, label %switch.lookup, label %sas_ex_get_linkrate.exit.sas_fill_in_rphy.exit_crit_edge

sas_ex_get_linkrate.exit.sas_fill_in_rphy.exit_crit_edge: ; preds = %sas_ex_get_linkrate.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_fill_in_rphy.exit

switch.lookup:                                    ; preds = %sas_ex_get_linkrate.exit
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.sas_ex_discover_expander, i32 0, i32 %switch.tableidx
  %112 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %112)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sas_fill_in_rphy.exit

sas_fill_in_rphy.exit:                            ; preds = %switch.lookup, %sas_ex_get_linkrate.exit.sas_fill_in_rphy.exit_crit_edge
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %sas_ex_get_linkrate.exit.sas_fill_in_rphy.exit_crit_edge ]
  %identify.i = getelementptr inbounds %struct.sas_rphy, ptr %call31, i32 0, i32 1
  %113 = ptrtoint ptr %identify.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %.sink.i, ptr %identify.i, align 8
  %call64 = tail call i32 @sas_rphy_add(ptr noundef %call31) #10
  %114 = ptrtoint ptr %port38 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %port38, align 4
  %dev_list_lock = getelementptr inbounds %struct.asd_sas_port, ptr %115, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %dev_list_lock) #10
  %116 = ptrtoint ptr %port38 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %port38, align 4
  %dev_list = getelementptr inbounds %struct.asd_sas_port, ptr %117, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.asd_sas_port, ptr %117, i32 0, i32 3, i32 1
  %118 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dev_list_node.i, ptr noundef %119, ptr noundef %dev_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %sas_fill_in_rphy.exit.list_add_tail.exit_crit_edge

sas_fill_in_rphy.exit.list_add_tail.exit_crit_edge: ; preds = %sas_fill_in_rphy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sas_fill_in_rphy.exit
  call void @__sanitizer_cov_trace_pc() #12
  %120 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %dev_list_node.i, ptr %prev.i, align 4
  %121 = ptrtoint ptr %dev_list_node.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %dev_list, ptr %dev_list_node.i, align 4
  %122 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %119, ptr %prev.i8.i, align 8
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %dev_list_node.i, ptr %119, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sas_fill_in_rphy.exit.list_add_tail.exit_crit_edge
  %124 = ptrtoint ptr %port38 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %port38, align 4
  %dev_list_lock68 = getelementptr inbounds %struct.asd_sas_port, ptr %125, i32 0, i32 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %dev_list_lock68) #10
  %call69 = tail call fastcc i32 @sas_discover_expander(ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end79, label %if.then71

if.then71:                                        ; preds = %list_add_tail.exit
  tail call void @sas_rphy_delete(ptr noundef %call31) #10
  %126 = ptrtoint ptr %port38 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %port38, align 4
  %dev_list_lock73 = getelementptr inbounds %struct.asd_sas_port, ptr %127, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %dev_list_lock73) #10
  %call.i.i144 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_list_node.i) #10
  br i1 %call.i.i144, label %if.end.i.i146, label %if.then71.list_del.exit_crit_edge

if.then71.list_del.exit_crit_edge:                ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i146:                                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #12
  %128 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %prev.i8.i, align 8
  %130 = ptrtoint ptr %dev_list_node.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev_list_node.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %129, ptr %prev1.i.i.i, align 4
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %133)
  store volatile ptr %131, ptr %129, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i146, %if.then71.list_del.exit_crit_edge
  %134 = ptrtoint ptr %dev_list_node.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_list_node.i, align 4
  %135 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i8.i, align 8
  %136 = ptrtoint ptr %port38 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %port38, align 4
  %dev_list_lock76 = getelementptr inbounds %struct.asd_sas_port, ptr %137, i32 0, i32 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %dev_list_lock76) #10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !253
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #10
  %138 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #10, !srcloc !254
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %138, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sas_put_device.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !247

if.end5.i.i.i.i.i.sas_put_device.exit_crit_edge:  ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_put_device.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #10
  br label %sas_put_device.exit

if.then.i.i:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !255
  tail call void @sas_free_device(ptr noundef %kref.i) #10
  br label %sas_put_device.exit

sas_put_device.exit:                              ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sas_put_device.exit_crit_edge
  %139 = ptrtoint ptr %port9 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %port9, align 4
  tail call void @sas_port_delete(ptr noundef %140) #10
  %141 = ptrtoint ptr %port9 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %port9, align 4
  br label %cleanup

if.end79:                                         ; preds = %list_add_tail.exit
  %prev.i149 = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 19, i32 0, i32 1
  %142 = ptrtoint ptr %prev.i149 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev.i149, align 4
  %call.i.i150 = tail call zeroext i1 @__list_add_valid(ptr noundef %siblings.i, ptr noundef %143, ptr noundef %2) #10
  br i1 %call.i.i150, label %if.end.i.i152, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i152:                                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %prev.i149 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %siblings.i, ptr %prev.i149, align 4
  %145 = ptrtoint ptr %siblings.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %2, ptr %siblings.i, align 4
  %146 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %143, ptr %prev.i.i, align 8
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %siblings.i, ptr %143, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i152, %if.end79.cleanup_crit_edge, %sas_put_device.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %sas_put_device.exit ], [ %call7.i.i.i, %if.end79.cleanup_crit_edge ], [ %call7.i.i.i, %if.end.i.i152 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_port_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_port_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_port_mark_backlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_port_add_phy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sas_configure_parent(ptr noundef %parent, ptr nocapture noundef readonly %child, ptr nocapture noundef readonly %sas_addr, i32 noundef %include) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 19
  %parent1 = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 6
  %1 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent1, align 64
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @sas_configure_parent(ptr noundef nonnull %2, ptr noundef %parent, ptr noundef %sas_addr, i32 noundef %include)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup33_crit_edge

if.then.cleanup33_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %conf_route_table = getelementptr inbounds %struct.expander_device, ptr %0, i32 0, i32 4
  %3 = ptrtoint ptr %conf_route_table to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %conf_route_table, align 1
  %4 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %do.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end5
  %num_phys = getelementptr inbounds %struct.expander_device, ptr %0, i32 0, i32 3
  %5 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %num_phys, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp1860.not = icmp eq i8 %6, 0
  br i1 %cmp1860.not, label %for.cond.preheader.cleanup33_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup33_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ex_phy = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 19, i32 0, i32 4, i32 8
  %sas_addr23 = getelementptr inbounds %struct.domain_device, ptr %child, i32 0, i32 15
  br label %for.body

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_configure_parent.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_configure_parent, %cleanup33)) #10
          to label %if.then13 [label %cleanup33], !srcloc !246

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr14 = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 15
  %7 = ptrtoint ptr %sas_addr14 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sas_addr14, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_configure_parent.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.73, i64 noundef %8) #10
  br label %cleanup33

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %ex_phy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ex_phy, align 4
  %routing_attr = getelementptr %struct.ex_phy, ptr %10, i32 %i.061, i32 10
  %11 = ptrtoint ptr %routing_attr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %routing_attr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp20 = icmp eq i32 %12, 2
  br i1 %cmp20, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %attached_sas_addr = getelementptr %struct.ex_phy, ptr %10, i32 %i.061, i32 7
  %13 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %attached_sas_addr, align 4
  %15 = ptrtoint ptr %sas_addr23 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %sas_addr23, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %16)
  %cmp25 = icmp eq i64 %14, %16
  br i1 %cmp25, label %if.then27, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then27:                                        ; preds = %land.lhs.true
  %call28 = tail call fastcc i32 @sas_configure_phy(ptr noundef %parent, i32 noundef %i.061, ptr noundef %sas_addr, i32 noundef %include)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then27.for.inc_crit_edge, label %if.then27.cleanup33_crit_edge

if.then27.cleanup33_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

if.then27.for.inc_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.then27.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.061, 1
  %17 = ptrtoint ptr %num_phys to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_phys, align 2
  %conv17 = zext i8 %18 to i32
  %cmp18 = icmp ult i32 %inc, %conv17
  br i1 %cmp18, label %for.inc.for.body_crit_edge, label %for.inc.cleanup33_crit_edge

for.inc.cleanup33_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup33

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup33:                                        ; preds = %for.inc.cleanup33_crit_edge, %if.then27.cleanup33_crit_edge, %if.then13, %do.body, %for.cond.preheader.cleanup33_crit_edge, %if.then.cleanup33_crit_edge
  %retval.2 = phi i32 [ %call, %if.then.cleanup33_crit_edge ], [ 0, %if.then13 ], [ 0, %do.body ], [ 0, %for.cond.preheader.cleanup33_crit_edge ], [ 0, %for.inc.cleanup33_crit_edge ], [ %call28, %if.then27.cleanup33_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_hash_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_port_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_device_set_phy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_get_ata_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_init_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_ata_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_end_device_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_discover_sata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_discover_end_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_rphy_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_port_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_expander_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_rphy_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sas_get_phy_discover(ptr noundef %dev, i32 noundef %phy_id, ptr noundef %disc_resp) unnamed_addr #0 align 64 {
entry:
  %req_sg.i = alloca %struct.scatterlist, align 4
  %resp_sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 64, ptr %call7.i.i.i, align 8
  %arrayidx = getelementptr i8, ptr %call7.i.i.i, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %arrayidx, align 1
  %conv = trunc i32 %phy_id to i8
  %arrayidx1 = getelementptr i8, ptr %call7.i.i.i, i32 9
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %arrayidx1, align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %req_sg.i) #10
  %4 = call ptr @memset(ptr %req_sg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %resp_sg.i) #10
  %5 = call ptr @memset(ptr %resp_sg.i, i32 255, i32 20)
  call void @sg_init_one(ptr noundef nonnull %req_sg.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 16) #10
  call void @sg_init_one(ptr noundef nonnull %resp_sg.i, ptr noundef %disc_resp, i32 noundef 56) #10
  %call.i = call fastcc i32 @smp_execute_task_sg(ptr noundef %dev, ptr noundef nonnull %req_sg.i, ptr noundef nonnull %resp_sg.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %resp_sg.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %req_sg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.else, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %result = getelementptr inbounds %struct.smp_resp, ptr %disc_resp, i32 0, i32 2
  %6 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %result, align 1
  %conv5 = zext i8 %7 to i32
  br label %out

out:                                              ; preds = %if.else, %if.end.out_crit_edge
  %res.0 = phi i32 [ %call.i, %if.end.out_crit_edge ], [ %conv5, %if.else ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sas_rediscover_dev(ptr noundef %dev, i32 noundef %phy_id, i1 noundef zeroext %last, i32 noundef %sibling) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ex_phy = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %ex_phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ex_phy, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %msg) #10
  %2 = call ptr @memset(ptr %msg, i32 0, i32 80)
  br i1 %last, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %msg, ptr noundef nonnull @.str.104, i32 noundef %sibling)
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_rediscover_dev.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_rediscover_dev, %do.end)) #10
          to label %if.then7 [label %do.end], !srcloc !246

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr8 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %3 = ptrtoint ptr %sas_addr8 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %sas_addr8, align 16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_rediscover_dev.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.107, i64 noundef %4, i32 noundef %phy_id, ptr noundef nonnull %msg) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 56) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.end.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  %call1.i = call fastcc i32 @sas_get_phy_discover(ptr noundef %dev, i32 noundef %phy_id, ptr noundef nonnull %call7.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %if.then2.i, label %sas_get_phy_attached_dev.exit

if.then2.i:                                       ; preds = %if.end.i
  %attached_sas_addr.i = getelementptr inbounds %struct.smp_resp, ptr %call7.i.i.i.i, i32 0, i32 4, i32 0, i32 6
  %6 = ptrtoint ptr %attached_sas_addr.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %attached_sas_addr.i, align 8
  %sas_addr.sroa.0.0.extract.shift = lshr i64 %7, 56
  %sas_addr.sroa.0.0.extract.trunc = trunc i64 %sas_addr.sroa.0.0.extract.shift to i8
  %sas_addr.sroa.7.0.extract.shift = lshr i64 %7, 48
  %sas_addr.sroa.7.0.extract.trunc = trunc i64 %sas_addr.sroa.7.0.extract.shift to i8
  %sas_addr.sroa.8.0.extract.shift = lshr i64 %7, 40
  %sas_addr.sroa.8.0.extract.trunc = trunc i64 %sas_addr.sroa.8.0.extract.shift to i8
  %sas_addr.sroa.9.0.extract.shift = lshr i64 %7, 32
  %sas_addr.sroa.9.0.extract.trunc = trunc i64 %sas_addr.sroa.9.0.extract.shift to i8
  %sas_addr.sroa.10.0.extract.shift = lshr i64 %7, 24
  %sas_addr.sroa.10.0.extract.trunc = trunc i64 %sas_addr.sroa.10.0.extract.shift to i8
  %sas_addr.sroa.11.0.extract.shift = lshr i64 %7, 16
  %sas_addr.sroa.11.0.extract.trunc = trunc i64 %sas_addr.sroa.11.0.extract.shift to i8
  %sas_addr.sroa.12.0.extract.shift = lshr i64 %7, 8
  %sas_addr.sroa.12.0.extract.trunc = trunc i64 %sas_addr.sroa.12.0.extract.shift to i8
  %sas_addr.sroa.13.0.extract.trunc = trunc i64 %7 to i8
  %attached_dev_type.i.i = getelementptr inbounds %struct.smp_resp, ptr %call7.i.i.i.i, i32 0, i32 4, i32 0, i32 4
  %8 = ptrtoint ptr %attached_dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i.i = load i32, ptr %attached_dev_type.i.i, align 4
  %9 = and i32 %bf.load.i.i, 1879572481
  call void @__sanitizer_cov_trace_const_cmp4(i32 524289, i32 %9)
  %.not.i.i = icmp eq i32 %9, 524289
  %bf.lshr16.i.i = lshr i32 %bf.load.i.i, 28
  %bf.cast18.i.i = and i32 %bf.lshr16.i.i, 7
  %retval.0.i.i = select i1 %.not.i.i, i32 9, i32 %bf.cast18.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp4.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.then2.i.sas_get_phy_attached_dev.exit.thread137_crit_edge

if.then2.i.sas_get_phy_attached_dev.exit.thread137_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_get_phy_attached_dev.exit.thread137

if.then5.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_get_phy_attached_dev.exit.thread137

sas_get_phy_attached_dev.exit.thread137:          ; preds = %if.then5.i, %if.then2.i.sas_get_phy_attached_dev.exit.thread137_crit_edge
  %sas_addr.sroa.13.0.ph = phi i8 [ %sas_addr.sroa.13.0.extract.trunc, %if.then2.i.sas_get_phy_attached_dev.exit.thread137_crit_edge ], [ 0, %if.then5.i ]
  %sas_addr.sroa.12.0.ph = phi i8 [ %sas_addr.sroa.12.0.extract.trunc, %if.then2.i.sas_get_phy_attached_dev.exit.thread137_crit_edge ], [ 0, %if.then5.i ]
  %sas_addr.sroa.11.0.ph = phi i8 [ %sas_addr.sroa.11.0.extract.trunc, %if.then2.i.sas_get_phy_attached_dev.exit.thread137_crit_edge ], [ 0, %if.then5.i ]
  %sas_addr.sroa.10.0.ph = phi i8 [ %sas_addr.sroa.10.0.extract.trunc, %if.then2.i.sas_get_phy_attached_dev.exit.thread137_crit_edge ], [ 0, %if.then5.i ]
  %sas_addr.sroa.9.0.ph = phi i8 [ %sas_addr.sroa.9.0.extract.trunc, %if.then2.i.sas_get_phy_attached_dev.exit.thread137_crit_edge ], [ 0, %if.then5.i ]
  %sas_addr.sroa.8.0.ph = phi i8 [ %sas_addr.sroa.8.0.extract.trunc, %if.then2.i.sas_get_phy_attached_dev.exit.thread137_crit_edge ], [ 0, %if.then5.i ]
  %sas_addr.sroa.7.0.ph = phi i8 [ %sas_addr.sroa.7.0.extract.trunc, %if.then2.i.sas_get_phy_attached_dev.exit.thread137_crit_edge ], [ 0, %if.then5.i ]
  %sas_addr.sroa.0.0.ph = phi i8 [ %sas_addr.sroa.0.0.extract.trunc, %if.then2.i.sas_get_phy_attached_dev.exit.thread137_crit_edge ], [ 0, %if.then5.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %sw.epilog

sas_get_phy_attached_dev.exit:                    ; preds = %if.end.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  %10 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %call1.i, label %sas_get_phy_attached_dev.exit.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 22, label %sw.bb16
    i32 -70, label %sas_get_phy_attached_dev.exit.sw.epilog_crit_edge
  ]

sas_get_phy_attached_dev.exit.sw.epilog_crit_edge: ; preds = %sas_get_phy_attached_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sas_get_phy_attached_dev.exit.cleanup_crit_edge:  ; preds = %sas_get_phy_attached_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %sas_get_phy_attached_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %phy_state = getelementptr %struct.ex_phy, ptr %1, i32 %phy_id, i32 1
  %11 = ptrtoint ptr %phy_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %phy_state, align 4
  call fastcc void @sas_unregister_devs_sas_addr(ptr noundef %dev, i32 noundef %phy_id, i1 noundef zeroext %last)
  br label %cleanup

sw.bb16:                                          ; preds = %sas_get_phy_attached_dev.exit
  call void @__sanitizer_cov_trace_pc() #12
  %phy_state17 = getelementptr %struct.ex_phy, ptr %1, i32 %phy_id, i32 1
  %12 = ptrtoint ptr %phy_state17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %phy_state17, align 4
  call fastcc void @sas_unregister_devs_sas_addr(ptr noundef %dev, i32 noundef %phy_id, i1 noundef zeroext %last)
  br label %cleanup

sw.epilog:                                        ; preds = %sas_get_phy_attached_dev.exit.sw.epilog_crit_edge, %sas_get_phy_attached_dev.exit.thread137
  %sas_addr.sroa.0.0155 = phi i8 [ %sas_addr.sroa.0.0.ph, %sas_get_phy_attached_dev.exit.thread137 ], [ 0, %sas_get_phy_attached_dev.exit.sw.epilog_crit_edge ]
  %sas_addr.sroa.7.0154 = phi i8 [ %sas_addr.sroa.7.0.ph, %sas_get_phy_attached_dev.exit.thread137 ], [ 0, %sas_get_phy_attached_dev.exit.sw.epilog_crit_edge ]
  %sas_addr.sroa.8.0153 = phi i8 [ %sas_addr.sroa.8.0.ph, %sas_get_phy_attached_dev.exit.thread137 ], [ 0, %sas_get_phy_attached_dev.exit.sw.epilog_crit_edge ]
  %sas_addr.sroa.9.0152 = phi i8 [ %sas_addr.sroa.9.0.ph, %sas_get_phy_attached_dev.exit.thread137 ], [ 0, %sas_get_phy_attached_dev.exit.sw.epilog_crit_edge ]
  %sas_addr.sroa.10.0151 = phi i8 [ %sas_addr.sroa.10.0.ph, %sas_get_phy_attached_dev.exit.thread137 ], [ 0, %sas_get_phy_attached_dev.exit.sw.epilog_crit_edge ]
  %sas_addr.sroa.11.0150 = phi i8 [ %sas_addr.sroa.11.0.ph, %sas_get_phy_attached_dev.exit.thread137 ], [ 0, %sas_get_phy_attached_dev.exit.sw.epilog_crit_edge ]
  %sas_addr.sroa.12.0149 = phi i8 [ %sas_addr.sroa.12.0.ph, %sas_get_phy_attached_dev.exit.thread137 ], [ 0, %sas_get_phy_attached_dev.exit.sw.epilog_crit_edge ]
  %sas_addr.sroa.13.0148 = phi i8 [ %sas_addr.sroa.13.0.ph, %sas_get_phy_attached_dev.exit.thread137 ], [ 0, %sas_get_phy_attached_dev.exit.sw.epilog_crit_edge ]
  %type.0147 = phi i32 [ %retval.0.i.i, %sas_get_phy_attached_dev.exit.thread137 ], [ 0, %sas_get_phy_attached_dev.exit.sw.epilog_crit_edge ]
  %sas_addr.sroa.13.0.insert.ext = zext i8 %sas_addr.sroa.13.0148 to i64
  %sas_addr.sroa.12.0.insert.ext = zext i8 %sas_addr.sroa.12.0149 to i64
  %sas_addr.sroa.12.0.insert.shift = shl nuw nsw i64 %sas_addr.sroa.12.0.insert.ext, 8
  %sas_addr.sroa.12.0.insert.insert = or i64 %sas_addr.sroa.12.0.insert.shift, %sas_addr.sroa.13.0.insert.ext
  %sas_addr.sroa.11.0.insert.ext = zext i8 %sas_addr.sroa.11.0150 to i64
  %sas_addr.sroa.11.0.insert.shift = shl nuw nsw i64 %sas_addr.sroa.11.0.insert.ext, 16
  %sas_addr.sroa.11.0.insert.insert = or i64 %sas_addr.sroa.12.0.insert.insert, %sas_addr.sroa.11.0.insert.shift
  %sas_addr.sroa.10.0.insert.ext = zext i8 %sas_addr.sroa.10.0151 to i64
  %sas_addr.sroa.10.0.insert.shift = shl nuw nsw i64 %sas_addr.sroa.10.0.insert.ext, 24
  %sas_addr.sroa.10.0.insert.insert = or i64 %sas_addr.sroa.11.0.insert.insert, %sas_addr.sroa.10.0.insert.shift
  %sas_addr.sroa.9.0.insert.ext = zext i8 %sas_addr.sroa.9.0152 to i64
  %sas_addr.sroa.9.0.insert.shift = shl nuw nsw i64 %sas_addr.sroa.9.0.insert.ext, 32
  %sas_addr.sroa.8.0.insert.ext = zext i8 %sas_addr.sroa.8.0153 to i64
  %sas_addr.sroa.8.0.insert.shift = shl nuw nsw i64 %sas_addr.sroa.8.0.insert.ext, 40
  %sas_addr.sroa.8.0.insert.mask = or i64 %sas_addr.sroa.10.0.insert.insert, %sas_addr.sroa.9.0.insert.shift
  %sas_addr.sroa.7.0.insert.ext = zext i8 %sas_addr.sroa.7.0154 to i64
  %sas_addr.sroa.7.0.insert.shift = shl nuw nsw i64 %sas_addr.sroa.7.0.insert.ext, 48
  %sas_addr.sroa.0.0.insert.ext = zext i8 %sas_addr.sroa.0.0155 to i64
  %sas_addr.sroa.0.0.insert.shift = shl nuw i64 %sas_addr.sroa.0.0.insert.ext, 56
  %sas_addr.sroa.7.0.insert.mask.masked = or i64 %sas_addr.sroa.8.0.insert.mask, %sas_addr.sroa.8.0.insert.shift
  %sas_addr.sroa.0.0.insert.mask = or i64 %sas_addr.sroa.7.0.insert.shift, %sas_addr.sroa.0.0.insert.shift
  %sas_addr.sroa.0.0.insert.insert = or i64 %sas_addr.sroa.0.0.insert.mask, %sas_addr.sroa.7.0.insert.mask.masked
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sas_addr.sroa.0.0.insert.insert)
  %cmp = icmp eq i64 %sas_addr.sroa.0.0.insert.insert, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -70, i32 %call1.i)
  %cmp20 = icmp eq i32 %call1.i, -70
  %or.cond = select i1 %cmp, i1 true, i1 %cmp20
  br i1 %or.cond, label %if.then21, label %if.else

if.then21:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %phy_state22 = getelementptr %struct.ex_phy, ptr %1, i32 %phy_id, i32 1
  %13 = ptrtoint ptr %phy_state22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %phy_state22, align 4
  call fastcc void @sas_unregister_devs_sas_addr(ptr noundef %dev, i32 noundef %phy_id, i1 noundef zeroext %last)
  %call24 = call i32 @sas_ex_phy_discover(ptr noundef %dev, i32 noundef %phy_id)
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  %attached_sas_addr = getelementptr %struct.ex_phy, ptr %1, i32 %phy_id, i32 7
  %14 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %attached_sas_addr, align 4
  call void @__sanitizer_cov_trace_cmp8(i64 %sas_addr.sroa.0.0.insert.insert, i64 %15)
  %cmp27 = icmp eq i64 %sas_addr.sroa.0.0.insert.insert, %15
  br i1 %cmp27, label %land.lhs.true, label %if.else.do.end62_crit_edge

if.else.do.end62_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62

land.lhs.true:                                    ; preds = %if.else
  %attached_dev_type = getelementptr %struct.ex_phy, ptr %1, i32 %phy_id, i32 2
  %16 = ptrtoint ptr %attached_dev_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %attached_dev_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %type.0147)
  %cmp.i120 = icmp eq i32 %17, %type.0147
  br i1 %cmp.i120, label %land.lhs.true.if.then29_crit_edge, label %if.end.i121

land.lhs.true.if.then29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.end.i121:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %17)
  %cmp1.i = icmp eq i32 %17, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type.0147)
  %cmp2.i = icmp eq i32 %type.0147, 1
  %or.cond.i = and i1 %cmp2.i, %cmp1.i
  br i1 %or.cond.i, label %if.end.i121.if.then29_crit_edge, label %dev_type_flutter.exit

if.end.i121.if.then29_crit_edge:                  ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

dev_type_flutter.exit:                            ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp3.i = icmp eq i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %type.0147)
  %cmp5.i = icmp eq i32 %type.0147, 9
  %or.cond12.i = and i1 %cmp5.i, %cmp3.i
  br i1 %or.cond12.i, label %dev_type_flutter.exit.if.then29_crit_edge, label %dev_type_flutter.exit.do.end62_crit_edge

dev_type_flutter.exit.do.end62_crit_edge:         ; preds = %dev_type_flutter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end62

dev_type_flutter.exit.if.then29_crit_edge:        ; preds = %dev_type_flutter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.then29:                                        ; preds = %dev_type_flutter.exit.if.then29_crit_edge, %if.end.i121.if.then29_crit_edge, %land.lhs.true.if.then29_crit_edge
  %18 = ptrtoint ptr %ex_phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ex_phy, align 8
  %port.i = getelementptr %struct.ex_phy, ptr %19, i32 %phy_id, i32 14
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %port.i, align 4
  %tobool.not.i123 = icmp eq ptr %21, null
  br i1 %tobool.not.i123, label %if.then29.sas_ex_to_ata.exit.thread_crit_edge, label %if.end.i124

if.then29.sas_ex_to_ata.exit.thread_crit_edge:    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_ex_to_ata.exit.thread

if.end.i124:                                      ; preds = %if.then29
  %rphy3.i = getelementptr inbounds %struct.sas_port, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %rphy3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rphy3.i, align 4
  %tobool4.not.i = icmp eq ptr %23, null
  br i1 %tobool4.not.i, label %if.end.i124.sas_ex_to_ata.exit.thread_crit_edge, label %if.end6.i

if.end.i124.sas_ex_to_ata.exit.thread_crit_edge:  ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_ex_to_ata.exit.thread

if.end6.i:                                        ; preds = %if.end.i124
  %call.i = call ptr @sas_find_dev_by_rphy(ptr noundef nonnull %23) #10
  %tobool7.not.i = icmp eq ptr %call.i, null
  br i1 %tobool7.not.i, label %if.end6.i.sas_ex_to_ata.exit.thread_crit_edge, label %land.lhs.true.i

if.end6.i.sas_ex_to_ata.exit.thread_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_ex_to_ata.exit.thread

land.lhs.true.i:                                  ; preds = %if.end6.i
  %dev_type.i.i = getelementptr inbounds %struct.domain_device, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dev_type.i.i, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %25, label %land.lhs.true.i.sas_ex_to_ata.exit.thread_crit_edge [
    i32 5, label %land.lhs.true.i.land.lhs.true33_crit_edge
    i32 7, label %land.lhs.true.i.land.lhs.true33_crit_edge161
    i32 8, label %land.lhs.true.i.land.lhs.true33_crit_edge162
    i32 9, label %land.lhs.true.i.land.lhs.true33_crit_edge163
  ]

land.lhs.true.i.land.lhs.true33_crit_edge163:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true33

land.lhs.true.i.land.lhs.true33_crit_edge162:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true33

land.lhs.true.i.land.lhs.true33_crit_edge161:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true33

land.lhs.true.i.land.lhs.true33_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true33

land.lhs.true.i.sas_ex_to_ata.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sas_ex_to_ata.exit.thread

sas_ex_to_ata.exit.thread:                        ; preds = %land.lhs.true.i.sas_ex_to_ata.exit.thread_crit_edge, %if.end6.i.sas_ex_to_ata.exit.thread_crit_edge, %if.end.i124.sas_ex_to_ata.exit.thread_crit_edge, %if.then29.sas_ex_to_ata.exit.thread_crit_edge
  %call31158 = call i32 @sas_ex_phy_discover(ptr noundef %dev, i32 noundef %phy_id)
  br label %do.body38

land.lhs.true33:                                  ; preds = %land.lhs.true.i.land.lhs.true33_crit_edge, %land.lhs.true.i.land.lhs.true33_crit_edge161, %land.lhs.true.i.land.lhs.true33_crit_edge162, %land.lhs.true.i.land.lhs.true33_crit_edge163
  %call31 = call i32 @sas_ex_phy_discover(ptr noundef %dev, i32 noundef %phy_id)
  %27 = ptrtoint ptr %attached_dev_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %attached_dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %28)
  %cmp35 = icmp eq i32 %28, 9
  %spec.select = select i1 %cmp35, ptr @.str.108, ptr @.str.29
  br label %do.body38

do.body38:                                        ; preds = %land.lhs.true33, %sas_ex_to_ata.exit.thread
  %action.0 = phi ptr [ %spec.select, %land.lhs.true33 ], [ @.str.29, %sas_ex_to_ata.exit.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_rediscover_dev.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_rediscover_dev, %cleanup)) #10
          to label %if.then52 [label %cleanup], !srcloc !246

if.then52:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr53 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %29 = ptrtoint ptr %sas_addr53 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %sas_addr53, align 16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_rediscover_dev.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.110, i64 noundef %30, i32 noundef %phy_id, ptr noundef nonnull %action.0) #10
  br label %cleanup

do.end62:                                         ; preds = %dev_type_flutter.exit.do.end62_crit_edge, %if.else.do.end62_crit_edge
  %sas_addr64 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %31 = ptrtoint ptr %sas_addr64 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %sas_addr64, align 16
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, i64 noundef %32, i32 noundef %phy_id, i64 noundef %15) #15
  call fastcc void @sas_unregister_devs_sas_addr(ptr noundef %dev, i32 noundef %phy_id, i1 noundef zeroext %last)
  %call70 = call fastcc i32 @sas_discover_new(ptr noundef %dev, i32 noundef %phy_id)
  br label %cleanup

cleanup:                                          ; preds = %do.end62, %if.then52, %do.body38, %if.then21, %sw.bb16, %sw.bb, %sas_get_phy_attached_dev.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.then21 ], [ %call70, %do.end62 ], [ 22, %sw.bb16 ], [ 16, %sw.bb ], [ %call1.i, %sas_get_phy_attached_dev.exit.cleanup_crit_edge ], [ %call1.i, %if.then52 ], [ -12, %do.end.cleanup_crit_edge ], [ %call1.i, %do.body38 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %msg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sas_discover_new(ptr noundef %dev, i32 noundef %phy_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19
  %ex_phy1 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %ex_phy1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ex_phy1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_discover_new.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_discover_new, %do.end)) #10
          to label %if.then [label %do.end], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sas_addr = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 15
  %3 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %sas_addr, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_discover_new.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.114, i64 noundef %4, i32 noundef %phy_id) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @sas_ex_phy_discover(ptr noundef %dev, i32 noundef %phy_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %5 = ptrtoint ptr %ex_phy1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ex_phy1, align 8
  %arrayidx.i = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id
  %num_phys.i = getelementptr inbounds %struct.expander_device, ptr %0, i32 0, i32 3
  %7 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_phys.i, align 2
  %conv.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp32.not.i = icmp eq i8 %8, 0
  br i1 %cmp32.not.i, label %if.end8.if.end11_crit_edge, label %for.body.lr.ph.i

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

for.body.lr.ph.i:                                 ; preds = %if.end8
  %attached_sas_addr.i = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %cmp35.i = phi i1 [ true, %for.body.lr.ph.i ], [ %cmp.i, %for.inc.i.for.body.i_crit_edge ]
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr %struct.ex_phy, ptr %6, i32 %i.033.i
  %cmp4.i = icmp eq ptr %arrayidx3.i, %arrayidx.i
  br i1 %cmp4.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %attached_sas_addr6.i = getelementptr %struct.ex_phy, ptr %6, i32 %i.033.i, i32 7
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %attached_sas_addr.i, ptr noundef dereferenceable(8) %attached_sas_addr6.i, i32 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %port.i = getelementptr %struct.ex_phy, ptr %6, i32 %i.033.i, i32 14
  %9 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port.i, align 4
  %tobool8.not.i = icmp eq ptr %10, null
  br i1 %tobool8.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %cleanup.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cleanup.i:                                        ; preds = %land.lhs.true.i
  %phy11.i = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 13
  %11 = ptrtoint ptr %phy11.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy11.i, align 4
  tail call void @sas_port_add_phy(ptr noundef nonnull %10, ptr noundef %12) #10
  %13 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port.i, align 4
  %port13.i = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 14
  %15 = ptrtoint ptr %port13.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %port13.i, align 4
  %phy_state.i = getelementptr %struct.ex_phy, ptr %6, i32 %phy_id, i32 1
  %16 = ptrtoint ptr %phy_state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %phy_state.i, align 4
  br i1 %cmp35.i, label %cleanup.i.cleanup_crit_edge, label %cleanup.i.if.end11_crit_edge

cleanup.i.if.end11_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

cleanup.i.cleanup_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.033.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv.i)
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end11_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end11_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end11:                                         ; preds = %for.inc.i.if.end11_crit_edge, %cleanup.i.if.end11_crit_edge, %if.end8.if.end11_crit_edge
  %call12 = tail call fastcc i32 @sas_ex_discover_devices(ptr noundef %dev, i32 noundef %phy_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.cond.preheader, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end11
  %attached_sas_addr = getelementptr %struct.ex_phy, ptr %2, i32 %phy_id, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ %0, %for.cond.preheader ]
  %17 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %0
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %sas_addr20 = getelementptr i8, ptr %.pn, i32 44
  %18 = ptrtoint ptr %sas_addr20 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sas_addr20, align 16
  %20 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %attached_sas_addr, align 4
  %cmp23 = icmp eq i64 %19, %21
  br i1 %cmp23, label %if.then24, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then24:                                        ; preds = %for.body
  %dev_type = getelementptr i8, ptr %.pn, i32 -24
  %22 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dev_type, align 4
  %24 = and i32 %23, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %if.then26, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  %child.0.le = getelementptr i8, ptr %.pn, i32 -68
  %call27 = tail call fastcc i32 @sas_discover_bfs_by_root(ptr noundef %child.0.le)
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.then24.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %cleanup.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %call27, %if.then26 ], [ 0, %if.then24.cleanup_crit_edge ], [ 0, %cleanup.i.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sas_unregister_devs_sas_addr(ptr noundef readonly %parent, i32 noundef %phy_id, i1 noundef zeroext %last) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 19
  %ex_phy = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 19, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %ex_phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ex_phy, align 4
  br i1 %last, label %for.cond.preheader, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

for.cond.preheader:                               ; preds = %entry
  %attached_sas_addr = getelementptr %struct.ex_phy, ptr %2, i32 %phy_id, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %.pn.in.in = phi ptr [ %.pn.in, %for.body.for.cond_crit_edge ], [ %0, %for.cond.preheader ]
  %3 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, %0
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %sas_addr = getelementptr i8, ptr %.pn.in, i32 44
  %4 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sas_addr, align 16
  %6 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %attached_sas_addr, align 4
  %cmp8 = icmp eq i64 %5, %7
  br i1 %cmp8, label %if.then9, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.then9:                                         ; preds = %for.body
  %child.0.le = getelementptr i8, ptr %.pn.in, i32 -68
  %state = getelementptr i8, ptr %.pn.in, i32 448
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #10
  %dev_type = getelementptr i8, ptr %.pn.in, i32 -24
  %8 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_type, align 4
  %10 = and i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %11 = icmp eq i32 %10, 2
  %port = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 8
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port, align 4
  br i1 %11, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sas_unregister_ex_tree(ptr noundef %13, ptr noundef %child.0.le)
  br label %for.end

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sas_unregister_dev(ptr noundef %13, ptr noundef %child.0.le) #10
  br label %for.end

for.end:                                          ; preds = %if.else, %if.then10, %for.cond.for.end_crit_edge
  %found.0 = phi ptr [ %child.0.le, %if.else ], [ %child.0.le, %if.then10 ], [ null, %for.cond.for.end_crit_edge ]
  %parent.i = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 6
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 64
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.end.if.end21_crit_edge, label %if.then.i

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call fastcc i32 @sas_configure_parent(ptr noundef nonnull %15, ptr noundef %parent, ptr noundef %attached_sas_addr, i32 noundef 0) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then.i, %for.end.if.end21_crit_edge, %entry.if.end21_crit_edge
  %found.1 = phi ptr [ null, %entry.if.end21_crit_edge ], [ %found.0, %for.end.if.end21_crit_edge ], [ %found.0, %if.then.i ]
  %attached_sas_addr22 = getelementptr %struct.ex_phy, ptr %2, i32 %phy_id, i32 7
  %16 = ptrtoint ptr %attached_sas_addr22 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 0, ptr %attached_sas_addr22, align 4
  %port24 = getelementptr %struct.ex_phy, ptr %2, i32 %phy_id, i32 14
  %17 = ptrtoint ptr %port24 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port24, align 4
  %tobool25.not = icmp eq ptr %18, null
  br i1 %tobool25.not, label %if.end21.if.end37_crit_edge, label %if.then26

if.end21.if.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then26:                                        ; preds = %if.end21
  %phy28 = getelementptr %struct.ex_phy, ptr %2, i32 %phy_id, i32 13
  %19 = ptrtoint ptr %phy28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy28, align 4
  tail call void @sas_port_delete_phy(ptr noundef nonnull %18, ptr noundef %20) #10
  %21 = ptrtoint ptr %port24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port24, align 4
  tail call void @sas_device_set_phy(ptr noundef %found.1, ptr noundef %22) #10
  %23 = ptrtoint ptr %port24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %port24, align 4
  %num_phys = getelementptr inbounds %struct.sas_port, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp31 = icmp eq i32 %26, 0
  br i1 %cmp31, label %if.then32, label %if.then26.if.end35_crit_edge

if.then26.if.end35_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then32:                                        ; preds = %if.then26
  %del_list = getelementptr inbounds %struct.sas_port, ptr %24, i32 0, i32 7
  %port34 = getelementptr inbounds %struct.domain_device, ptr %parent, i32 0, i32 8
  %27 = ptrtoint ptr %port34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port34, align 4
  %sas_port_del_list = getelementptr inbounds %struct.asd_sas_port, ptr %28, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.asd_sas_port, ptr %28, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %del_list, ptr noundef %30, ptr noundef %sas_port_del_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then32.if.end35_crit_edge

if.then32.if.end35_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end.i.i:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %del_list, ptr %prev.i, align 4
  %32 = ptrtoint ptr %del_list to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %sas_port_del_list, ptr %del_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sas_port, ptr %24, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %del_list, ptr %30, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end.i.i, %if.then32.if.end35_crit_edge, %if.then26.if.end35_crit_edge
  %35 = ptrtoint ptr %port24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %port24, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %if.end21.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sas_unregister_ex_tree(ptr noundef %port, ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 19
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp.not25 = icmp eq ptr %2, %0
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in26 = phi ptr [ %.pn28, %for.inc.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %child.027 = getelementptr i8, ptr %.pn.in26, i32 -68
  %3 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn28 = load ptr, ptr %.pn.in26, align 4
  %state = getelementptr i8, ptr %.pn.in26, i32 448
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state) #10
  %dev_type = getelementptr i8, ptr %.pn.in26, i32 -24
  %4 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_type, align 4
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sas_unregister_ex_tree(ptr noundef %port, ptr noundef %child.027)
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sas_unregister_dev(ptr noundef %port, ptr noundef %child.027) #10
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %cmp.not = icmp eq ptr %.pn28, %0
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @sas_unregister_dev(ptr noundef %port, ptr noundef %dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_unregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_port_delete_phy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sas_discover_bfs_by_root(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rphy = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rphy, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -56
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 8
  %call = tail call fastcc i32 @sas_ex_discover_devices(ptr noundef %dev, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body.preheader, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body.preheader:                                ; preds = %entry
  %add = add i32 %3, 1
  %port = getelementptr inbounds %struct.domain_device, ptr %dev, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %level.0 = phi i32 [ %add4, %do.body.do.body_crit_edge ], [ %add, %do.body.preheader ]
  %call2 = tail call fastcc i32 @sas_discover_bfs_by_root_level(ptr noundef %dev, i32 noundef %level.0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  tail call void @arm_heavy_mb() #10
  %add4 = add i32 %level.0, 1
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %max_level = getelementptr inbounds %struct.sas_discovery, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %max_level to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_level, align 4
  %cmp.not = icmp sgt i32 %add4, %7
  br i1 %cmp.not, label %do.body.out_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %do.body.out_crit_edge, %entry.out_crit_edge
  %res.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call2, %do.body.out_crit_edge ]
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sas_discover_bfs_by_root_level(ptr noundef readonly %root, i32 noundef %level) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.domain_device, ptr %root, i32 0, i32 19
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn29 = load ptr, ptr %0, align 4
  %cmp.not31 = icmp eq ptr %.pn29, %0
  br i1 %cmp.not31, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn33 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn29, %entry.for.body_crit_edge ]
  %res.032 = phi i32 [ %res.2, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %child.034 = getelementptr i8, ptr %.pn33, i32 -68
  %dev_type = getelementptr i8, ptr %.pn33, i32 -24
  %2 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_type, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %rphy = getelementptr i8, ptr %.pn33, i32 40
  %6 = ptrtoint ptr %rphy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rphy, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 -56
  %8 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr4, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %level)
  %cmp6 = icmp slt i32 %9, %level
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call fastcc i32 @sas_discover_bfs_by_root_level(ptr noundef %child.034, i32 noundef %level)
  br label %for.inc

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %level)
  %cmp10 = icmp eq i32 %9, %level
  br i1 %cmp10, label %if.then11, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call fastcc i32 @sas_ex_discover_devices(ptr noundef %child.034, i32 noundef -1)
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.else.for.inc_crit_edge, %if.then7, %for.body.for.inc_crit_edge
  %res.2 = phi i32 [ %res.032, %for.body.for.inc_crit_edge ], [ %call8, %if.then7 ], [ %call12, %if.then11 ], [ %res.032, %if.else.for.inc_crit_edge ]
  %10 = ptrtoint ptr %.pn33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn33, align 4
  %cmp.not = icmp eq ptr %.pn, %0
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %res.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %res.2, %for.inc.for.end_crit_edge ]
  ret i32 %res.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_alloc_slow_task(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smp_task_done(ptr nocapture noundef readonly %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %slow_task = getelementptr inbounds %struct.sas_task, ptr %task, i32 0, i32 13
  %0 = ptrtoint ptr %slow_task to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slow_task, align 4
  %call = tail call i32 @del_timer(ptr noundef %1) #10
  %2 = ptrtoint ptr %slow_task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slow_task, align 4
  %completion = getelementptr inbounds %struct.sas_task_slow, ptr %3, i32 0, i32 1
  tail call void @complete(ptr noundef %completion) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smp_task_timedout(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %task1 = getelementptr inbounds %struct.sas_task_slow, ptr %t, i32 0, i32 2
  %0 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %task1, align 4
  %task_state_lock = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %task_state_lock) #10
  %task_state_flags = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %task_state_flags, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %3, 4
  %4 = ptrtoint ptr %task_state_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %task_state_flags, align 4
  %slow_task = getelementptr inbounds %struct.sas_task, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %slow_task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slow_task, align 4
  %completion = getelementptr inbounds %struct.sas_task_slow, ptr %6, i32 0, i32 1
  tail call void @complete(ptr noundef %completion) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %task_state_lock, i32 noundef %call4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_free_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !175, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !197, !199, !201, !202, !203, !204, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235}
!llvm.module.flags = !{!236, !237, !238, !239, !240, !241, !242, !243}
!llvm.ident = !{!244}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 608, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sas_smp_phy_control._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sas_smp_phy_control._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 611, i32 3}
!8 = !{ptr @sas_smp_phy_control._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @sas_smp_phy_control._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 2155, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @sas_smp_handler._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @sas_smp_handler._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 2162, i32 3}
!17 = !{ptr @sas_smp_handler._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @sas_smp_handler._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 2169, i32 3}
!21 = !{ptr @sas_smp_handler._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @sas_smp_handler._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 386, i32 3}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sas_ex_phy_discover_helper._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @sas_ex_phy_discover_helper._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 213, i32 7}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 297, i32 10}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 300, i32 10}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 305, i32 12}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 307, i32 12}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 310, i32 12}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 312, i32 12}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 317, i32 10}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 320, i32 10}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 340, i32 2}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @sas_set_ex_phy.__UNIQUE_ID_ddebug291, !47, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!51 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1603, i32 3}
!56 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sas_discover_expander._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @sas_discover_expander._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 493, i32 4}
!61 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @sas_ex_general._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @sas_ex_general._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 497, i32 4}
!66 = !{ptr @sas_ex_general.__UNIQUE_ID_ddebug294, !65, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!67 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 506, i32 4}
!70 = !{ptr @sas_ex_general.__UNIQUE_ID_ddebug295, !69, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!71 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 561, i32 3}
!74 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sas_ex_manuf_info._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @sas_ex_manuf_info._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 565, i32 3}
!79 = !{ptr @sas_ex_manuf_info.__UNIQUE_ID_ddebug296, !78, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!80 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1239, i32 5}
!83 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @sas_check_ex_subtractive_boundary._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @sas_check_ex_subtractive_boundary._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1255, i32 32}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1256, i32 34}
!90 = !{ptr @sas_print_parent_topology_bug.ex_type, !91, !"ex_type", i1 false, i1 false}
!91 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1254, i32 21}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1260, i32 2}
!94 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @sas_print_parent_topology_bug._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @sas_print_parent_topology_bug._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1282, i32 3}
!99 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @sas_check_eeds._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @sas_check_eeds._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1305, i32 3}
!104 = !{ptr @sas_check_eeds._entry.50, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @sas_check_eeds._entry_ptr.52, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1064, i32 3}
!108 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @sas_ex_discover_dev._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @sas_ex_discover_dev._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1073, i32 3}
!113 = !{ptr @sas_ex_discover_dev._entry.55, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @sas_ex_discover_dev._entry_ptr.57, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1080, i32 3}
!117 = !{ptr @sas_ex_discover_dev.__UNIQUE_ID_ddebug307, !116, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!118 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1092, i32 4}
!121 = !{ptr @sas_ex_discover_dev.__UNIQUE_ID_ddebug308, !120, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!122 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1111, i32 3}
!125 = !{ptr @sas_ex_discover_dev._entry.62, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @sas_ex_discover_dev._entry_ptr.64, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1422, i32 4}
!129 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @sas_configure_present._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @sas_configure_present._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1426, i32 4}
!134 = !{ptr @sas_configure_present._entry.67, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @sas_configure_present._entry_ptr.69, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1492, i32 3}
!138 = !{ptr @sas_configure_set._entry, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @sas_configure_set._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1541, i32 3}
!142 = !{ptr @.str.72, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @sas_configure_parent.__UNIQUE_ID_ddebug309, !141, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!144 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 829, i32 4}
!147 = !{ptr @.str.75, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @sas_ex_discover_end_dev._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @sas_ex_discover_end_dev._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 834, i32 5}
!152 = !{ptr @sas_ex_discover_end_dev._entry.76, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @sas_ex_discover_end_dev._entry_ptr.78, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 838, i32 4}
!156 = !{ptr @sas_ex_discover_end_dev._entry.79, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @sas_ex_discover_end_dev._entry_ptr.81, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.83, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 862, i32 4}
!160 = !{ptr @sas_ex_discover_end_dev._entry.82, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @sas_ex_discover_end_dev._entry_ptr.84, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.86, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 887, i32 4}
!164 = !{ptr @sas_ex_discover_end_dev._entry.85, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @sas_ex_discover_end_dev._entry_ptr.87, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.89, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 893, i32 3}
!168 = !{ptr @sas_ex_discover_end_dev._entry.88, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @sas_ex_discover_end_dev._entry_ptr.90, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @sas_alloc_device.__key, !171, !"__key", i1 false, i1 false}
!171 = !{!"../drivers/scsi/libsas/sas_internal.h", i32 184, i32 3}
!172 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.92, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 952, i32 3}
!175 = !{ptr @.str.93, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @sas_ex_discover_expander._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @sas_ex_discover_expander._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.94, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1157, i32 5}
!180 = !{ptr @.str.95, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @sas_check_level_subtractive_boundary._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @sas_check_level_subtractive_boundary._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1848, i32 4}
!185 = !{ptr @.str.97, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @sas_find_bcast_dev._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @sas_find_bcast_dev._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.99, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1852, i32 4}
!190 = !{ptr @sas_find_bcast_dev._entry.98, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @sas_find_bcast_dev._entry_ptr.100, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.101, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 2087, i32 2}
!194 = !{ptr @.str.102, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @sas_rediscover.__UNIQUE_ID_ddebug313, !193, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!196 = !{ptr @.str.103, !193, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.104, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 2009, i32 16}
!199 = !{ptr @.str.105, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 2011, i32 2}
!201 = !{ptr @.str.106, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @sas_rediscover_dev.__UNIQUE_ID_ddebug311, !200, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!203 = !{ptr @.str.107, !200, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.108, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 2050, i32 13}
!206 = !{ptr @.str.109, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 2051, i32 3}
!208 = !{ptr @sas_rediscover_dev.__UNIQUE_ID_ddebug312, !207, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!209 = !{ptr @.str.110, !207, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.111, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 2057, i32 2}
!212 = !{ptr @sas_rediscover_dev._entry, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @sas_rediscover_dev._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.112, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 1960, i32 2}
!216 = !{ptr @.str.113, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @sas_discover_new.__UNIQUE_ID_ddebug310, !215, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!218 = !{ptr @.str.114, !215, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.115, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 91, i32 4}
!221 = !{ptr @.str.116, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @smp_execute_task_sg._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @smp_execute_task_sg._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.118, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 98, i32 4}
!226 = !{ptr @smp_execute_task_sg._entry.117, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @smp_execute_task_sg._entry_ptr.119, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.121, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 101, i32 5}
!230 = !{ptr @smp_execute_task_sg._entry.120, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @smp_execute_task_sg._entry_ptr.122, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.124, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/scsi/libsas/sas_expander.c", i32 126, i32 4}
!234 = !{ptr @smp_execute_task_sg._entry.123, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @smp_execute_task_sg._entry_ptr.125, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{i32 1, !"wchar_size", i32 2}
!237 = !{i32 1, !"min_enum_size", i32 4}
!238 = !{i32 8, !"branch-target-enforcement", i32 0}
!239 = !{i32 8, !"sign-return-address", i32 0}
!240 = !{i32 8, !"sign-return-address-all", i32 0}
!241 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!242 = !{i32 7, !"uwtable", i32 1}
!243 = !{i32 7, !"frame-pointer", i32 2}
!244 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!245 = !{i64 2156030123}
!246 = !{i64 2148242202, i64 2148242207, i64 2148242220, i64 2148242264, i64 2148242298, i64 2148242319}
!247 = !{!"branch_weights", i32 2000, i32 1}
!248 = !{!"branch_weights", i32 1, i32 2000}
!249 = !{i64 2155912237, i64 2155912736, i64 2155912274, i64 2155912330, i64 2155912364, i64 2155912388, i64 2155912429, i64 2155912450, i64 2155912478, i64 2155912512}
!250 = !{i64 2155885160, i64 2155885659, i64 2155885197, i64 2155885253, i64 2155885287, i64 2155885311, i64 2155885352, i64 2155885373, i64 2155885401, i64 2155885435}
!251 = !{i64 2155886819, i64 2155887318, i64 2155886856, i64 2155886912, i64 2155886946, i64 2155886970, i64 2155887011, i64 2155887032, i64 2155887060, i64 2155887094}
!252 = !{i64 2148753244, i64 2148753276, i64 2148753305, i64 2148753339, i64 2148753370, i64 2148753393}
!253 = !{i64 2148841269}
!254 = !{i64 2148755709, i64 2148755741, i64 2148755770, i64 2148755804, i64 2148755835, i64 2148755858}
!255 = !{i64 2150023693}
!256 = !{i64 2155973427, i64 2155973926, i64 2155973464, i64 2155973520, i64 2155973554, i64 2155973578, i64 2155973619, i64 2155973640, i64 2155973668, i64 2155973702}
!257 = !{i64 2155974962, i64 2155975461, i64 2155974999, i64 2155975055, i64 2155975089, i64 2155975113, i64 2155975154, i64 2155975175, i64 2155975203, i64 2155975237}
!258 = !{i64 2156055923}
