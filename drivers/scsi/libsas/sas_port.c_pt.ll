; ModuleID = '/llk/IR_all_yes/drivers/scsi/libsas/sas_port.c_pt.bc'
source_filename = "../drivers/scsi/libsas/sas_port.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_core = type { ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
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
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.domain_device = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, [8 x i8], [3 x i8], [32 x i8], [101 x i8], %union.anon.83, ptr, i32, %struct.kref, [116 x i8] }
%union.anon.83 = type { %struct.sata_device }
%struct.sata_device = type { i32, i8, ptr, ptr, [112 x i8], %struct.smp_resp, [24 x i8], [44 x i8] }
%struct.smp_resp = type { i8, i8, i8, i8, %union.anon.85 }
%union.anon.85 = type { %struct.report_phy_sata_resp }
%struct.report_phy_sata_resp = type { [5 x i8], i8, i8, i8, i32, [8 x i8], %struct.dev_to_host_fis, i32, [8 x i8], i32 }
%struct.dev_to_host_fis = type { i8, i8, i8, i8, i8, %union.anon.86, %union.anon.87, i8, i8, i8, i8, i8, %union.anon.88, i8, i8, i8, i32 }
%union.anon.86 = type { i8 }
%union.anon.87 = type { i8 }
%union.anon.88 = type { i8 }
%struct.sas_internal = type { %struct.scsi_transport_template, ptr, ptr, [0 x %struct.device_attribute], [17 x %struct.device_attribute], [1 x %struct.device_attribute], [8 x %struct.device_attribute], [5 x %struct.device_attribute], [7 x %struct.device_attribute], %struct.transport_container, %struct.transport_container, %struct.transport_container, %struct.transport_container, %struct.transport_container, [1 x ptr], [18 x ptr], [2 x ptr], [9 x ptr], [6 x ptr], [8 x ptr] }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.sas_domain_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sas_phy = type { %struct.device, i32, i32, %struct.sas_identify, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }
%struct.ex_phy = type { i32, i32, i32, i32, i8, i32, i32, [8 x i8], i8, i32, i32, i8, i32, ptr, ptr }

@sas_porte_broadcast_rcvd.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"libsas\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sas_porte_broadcast_rcvd\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/scsi/libsas/sas_port.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"broadcast received: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sas: broadcast received: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@sas_port_event_fns = dso_local constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sas_porte_bytes_dmaed, ptr @sas_porte_broadcast_rcvd, ptr @sas_porte_link_reset_err, ptr @sas_porte_timer_event, ptr @sas_porte_hard_reset], [44 x i8] zeroinitializer }, align 32
@sas_form_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016sas: %s: phy%d belongs to port%d already(%d)!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sas_form_port\00", [18 x i8] zeroinitializer }, align 32
@sas_form_port._entry_ptr = internal global ptr @sas_form_port._entry, section ".printk_index", align 4
@sas_form_port.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 28, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"phy%d matched wide port%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sas: phy%d matched wide port%d\0A\00", [32 x i8] zeroinitializer }, align 32
@sas_form_port._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013sas: %s: couldn't find a free port, bug?\0A\00", [52 x i8] zeroinitializer }, align 32
@sas_form_port._entry_ptr.11 = internal global ptr @sas_form_port._entry.9, section ".printk_index", align 4
@sas_form_port.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.12, i8 0, i8 42, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s added to %s, phy_mask:0x%x (%016llx)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sas: %s added to %s, phy_mask:0x%x (%016llx)\0A\00", [50 x i8] zeroinitializer }, align 32
@sas_init_port.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&port->phy_list_lock\00", [43 x i8] zeroinitializer }, align 32
@sas_init_port.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&port->dev_list_lock\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 283, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c"sas_port_event_fns\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 356, i32 19 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 98, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 113, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 135, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 168, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 325, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [34 x i8] c"../drivers/scsi/libsas/sas_port.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 329, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @sas_form_port._entry, ptr @sas_form_port._entry.9, ptr @sas_form_port._entry_ptr, ptr @sas_form_port._entry_ptr.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sas_port_event_fns, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @sas_init_port.__key, ptr @.str.14, ptr @sas_init_port.__key.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_port_event_fns to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_form_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_form_port._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_init_port.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_init_port.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_deform_port(ptr noundef %phy, i32 noundef %gone) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ha = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 23
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %port1 = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 22
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %core = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %transportt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transportt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_dev = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %port_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_dev, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pathways = getelementptr inbounds %struct.domain_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %pathways to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pathways, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %pathways, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %num_phys = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 19
  %12 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sas_unregister_domain_devices(ptr noundef nonnull %3, i32 noundef %gone) #5
  tail call void @sas_destruct_devices(ptr noundef nonnull %3) #5
  %port6 = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 22
  %14 = ptrtoint ptr %port6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port6, align 4
  tail call void @sas_port_delete(ptr noundef %15) #5
  %16 = ptrtoint ptr %port6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %port6, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %port8 = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 22
  %17 = ptrtoint ptr %port8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %port8, align 4
  %phy9 = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 4
  %19 = ptrtoint ptr %phy9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy9, align 4
  tail call void @sas_port_delete_phy(ptr noundef %18, ptr noundef %20) #5
  %21 = ptrtoint ptr %port8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port8, align 4
  tail call void @sas_device_set_phy(ptr noundef %9, ptr noundef %22) #5
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then5
  %dft = getelementptr inbounds %struct.sas_internal, ptr %7, i32 0, i32 2
  %23 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dft, align 4
  %lldd_port_deformed = getelementptr inbounds %struct.sas_domain_function_template, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %lldd_port_deformed to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lldd_port_deformed, align 4
  %tobool12.not = icmp eq ptr %26, null
  br i1 %tobool12.not, label %if.end11.do.body17_crit_edge, label %if.then13

if.end11.do.body17_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body17

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %26(ptr noundef %phy) #5
  br label %do.body17

do.body17:                                        ; preds = %if.then13, %if.end11.do.body17_crit_edge
  %phy_port_lock = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 16
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %phy_port_lock) #5
  %phy_list_lock = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %phy_list_lock) #5
  %port_phy_el = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %port_phy_el) #5
  br i1 %call.i.i, label %if.end.i.i, label %do.body17.list_del_init.exit_crit_edge

do.body17.list_del_init.exit_crit_edge:           ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 21, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %port_phy_el to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port_phy_el, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.body17.list_del_init.exit_crit_edge
  %33 = ptrtoint ptr %port_phy_el to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %port_phy_el, ptr %port_phy_el, align 4
  %prev.i3.i = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 21, i32 1
  %34 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %port_phy_el, ptr %prev.i3.i, align 4
  %phy1.i = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 4
  %35 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy1.i, align 4
  %identify8.i = getelementptr inbounds %struct.sas_phy, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %identify8.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %identify8.i, align 8
  %target_port_protocols11.i = getelementptr inbounds %struct.sas_phy, ptr %36, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %target_port_protocols11.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %target_port_protocols11.i, align 8
  %39 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %port1, align 4
  %40 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_phys, align 4
  %dec25 = add i32 %41, -1
  store i32 %dec25, ptr %num_phys, align 4
  %id = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 6
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id, align 4
  %shl = shl nuw i32 1, %43
  %neg = xor i32 %shl, -1
  %phy_mask = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 20
  %44 = ptrtoint ptr %phy_mask to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %phy_mask, align 4
  %and = and i32 %45, %neg
  store i32 %and, ptr %phy_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec25)
  %cmp27 = icmp eq i32 %dec25, 0
  br i1 %cmp27, label %if.then29, label %list_del_init.exit.if.end32_crit_edge

list_del_init.exit.if.end32_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then29:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %phy_list = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 18
  %46 = ptrtoint ptr %phy_list to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %phy_list, ptr %phy_list, align 4
  %prev.i = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 18, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %phy_list, ptr %prev.i, align 4
  %class = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 11
  %48 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %phy_mask, align 4
  %49 = call ptr @memset(ptr %class, i32 0, i32 32)
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %list_del_init.exit.if.end32_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %phy_list_lock) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %phy_port_lock, i32 noundef %call20) #5
  %port35 = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 22
  %50 = ptrtoint ptr %port35 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port35, align 4
  %tobool36.not = icmp eq ptr %51, null
  %brmerge = select i1 %tobool36.not, i1 true, i1 %tobool2.not
  br i1 %brmerge, label %if.end32.if.end43_crit_edge, label %land.lhs.true38

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

land.lhs.true38:                                  ; preds = %if.end32
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %9, i32 0, i32 1
  %52 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dev_type, align 4
  %54 = and i32 %53, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %if.then41, label %land.lhs.true38.if.end43_crit_edge

land.lhs.true38.if.end43_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then41:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #7
  %ex_change_count = getelementptr inbounds %struct.domain_device, ptr %9, i32 0, i32 19, i32 0, i32 2
  %56 = ptrtoint ptr %ex_change_count to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %ex_change_count, align 4
  %call42 = tail call i32 @sas_discover_event(ptr noundef nonnull %3, i32 noundef 1) #5
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %land.lhs.true38.if.end43_crit_edge, %if.end32.if.end43_crit_edge
  %disco_q = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 13
  %57 = ptrtoint ptr %disco_q to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %disco_q, align 4
  tail call void @flush_workqueue(ptr noundef %58) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_unregister_domain_devices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_destruct_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_port_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_port_delete_phy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_device_set_phy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_discover_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_porte_bytes_dmaed(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  tail call fastcc void @sas_form_port(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sas_form_port(ptr noundef %phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ha = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 23
  %0 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ha, align 4
  %port1 = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 22
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port1, align 4
  %core = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %transportt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transportt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body14_crit_edge, label %if.then

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

if.then:                                          ; preds = %entry
  %attached_sas_addr.i = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 13
  %attached_sas_addr1.i = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 15
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %attached_sas_addr.i, ptr noundef dereferenceable(8) %attached_sas_addr1.i, i32 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.then.if.then2_crit_edge

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

lor.lhs.false.i:                                  ; preds = %if.then
  %strict_wide_ports.i = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %strict_wide_ports.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %strict_wide_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.else_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.else_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %sas_addr.i = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 12
  %sas_addr4.i = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 14
  %10 = ptrtoint ptr %sas_addr4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sas_addr4.i, align 4
  %bcmp10.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %sas_addr.i, ptr noundef dereferenceable(8) %11, i32 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp10.i)
  %cmp6.not.i = icmp eq i32 %bcmp10.i, 0
  br i1 %cmp6.not.i, label %land.lhs.true.i.if.else_crit_edge, label %land.lhs.true.i.if.then2_crit_edge

land.lhs.true.i.if.then2_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then2:                                         ; preds = %land.lhs.true.i.if.then2_crit_edge, %if.then.if.then2_crit_edge
  tail call void @sas_deform_port(ptr noundef %phy, i32 noundef 0)
  br label %do.body14

if.else:                                          ; preds = %land.lhs.true.i.if.else_crit_edge, %lor.lhs.false.i.if.else_crit_edge
  %suspended = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 3
  %12 = ptrtoint ptr %suspended to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool3.not = icmp eq i32 %13, 0
  br i1 %tobool3.not, label %do.end, label %if.then4

if.then4:                                         ; preds = %if.else
  %14 = ptrtoint ptr %suspended to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %suspended, align 4
  %15 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core, align 4
  %transportt.i = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %transportt.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %transportt.i, align 4
  %dft.i = getelementptr inbounds %struct.sas_internal, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dft.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dft.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool.not.i302 = icmp eq ptr %22, null
  br i1 %tobool.not.i302, label %if.then4.if.end.i303_crit_edge, label %if.then.i

if.then4.if.end.i303_crit_edge:                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i303

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %22(ptr noundef %phy) #5
  br label %if.end.i303

if.end.i303:                                      ; preds = %if.then.i, %if.then4.if.end.i303_crit_edge
  %suspended.i = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 9
  %23 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %suspended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool4.not.i = icmp eq i32 %24, 0
  br i1 %tobool4.not.i, label %if.end.i303.sas_resume_port.exit_crit_edge, label %if.then5.i

if.end.i303.sas_resume_port.exit_crit_edge:       ; preds = %if.end.i303
  call void @__sanitizer_cov_trace_pc() #7
  br label %sas_resume_port.exit

if.then5.i:                                       ; preds = %if.end.i303
  %25 = ptrtoint ptr %suspended.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %suspended.i, align 4
  %dev_list.i = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %dev_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_list.i, align 4
  %cmp.not69.i = icmp eq ptr %27, %dev_list.i
  br i1 %cmp.not69.i, label %if.then5.i.for.end35.i_crit_edge, label %if.then5.i.for.body.i_crit_edge

if.then5.i.for.body.i_crit_edge:                  ; preds = %if.then5.i
  br label %for.body.i

if.then5.i.for.end35.i_crit_edge:                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end35.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then5.i.for.body.i_crit_edge
  %.pn.in70.i = phi ptr [ %.pn72.i, %cleanup.i.for.body.i_crit_edge ], [ %27, %if.then5.i.for.body.i_crit_edge ]
  %dev.071.i = getelementptr i8, ptr %.pn.in70.i, i32 -84
  %28 = ptrtoint ptr %.pn.in70.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn72.i = load ptr, ptr %.pn.in70.i, align 4
  %call.i = tail call i32 @sas_notify_lldd_dev_found(ptr noundef %dev.071.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.then18.i

if.then18.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sas_unregister_dev(ptr noundef nonnull %3, ptr noundef %dev.071.i) #5
  tail call void @sas_destruct_devices(ptr noundef nonnull %3) #5
  br label %cleanup.i

if.end19.i:                                       ; preds = %for.body.i
  %dev_type.i = getelementptr i8, ptr %.pn.in70.i, i32 -40
  %29 = ptrtoint ptr %dev_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dev_type.i, align 4
  %31 = and i32 %30, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %if.then21.i, label %if.end19.i.cleanup.i_crit_edge

if.end19.i.cleanup.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.then21.i:                                      ; preds = %if.end19.i
  %ex_change_count.i = getelementptr i8, ptr %.pn.in70.i, i32 180
  %33 = ptrtoint ptr %ex_change_count.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %ex_change_count.i, align 8
  %num_phys.i = getelementptr i8, ptr %.pn.in70.i, i32 186
  %34 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_phys.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp2365.not.i = icmp eq i8 %35, 0
  br i1 %cmp2365.not.i, label %if.then21.i.cleanup.i_crit_edge, label %for.body25.lr.ph.i

if.then21.i.cleanup.i_crit_edge:                  ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

for.body25.lr.ph.i:                               ; preds = %if.then21.i
  %ex_phy.i = getelementptr i8, ptr %.pn.in70.i, i32 196
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i.for.body25.i_crit_edge, %for.body25.lr.ph.i
  %i.066.i = phi i32 [ 0, %for.body25.lr.ph.i ], [ %inc.i, %for.body25.i.for.body25.i_crit_edge ]
  %36 = ptrtoint ptr %ex_phy.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ex_phy.i, align 8
  %phy_change_count.i = getelementptr %struct.ex_phy, ptr %37, i32 %i.066.i, i32 9
  %38 = ptrtoint ptr %phy_change_count.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %phy_change_count.i, align 4
  %inc.i = add nuw nsw i32 %i.066.i, 1
  %39 = ptrtoint ptr %num_phys.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %num_phys.i, align 2
  %conv.i = zext i8 %40 to i32
  %cmp23.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp23.i, label %for.body25.i.for.body25.i_crit_edge, label %for.body25.i.cleanup.i_crit_edge

for.body25.i.cleanup.i_crit_edge:                 ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

for.body25.i.for.body25.i_crit_edge:              ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body25.i

cleanup.i:                                        ; preds = %for.body25.i.cleanup.i_crit_edge, %if.then21.i.cleanup.i_crit_edge, %if.end19.i.cleanup.i_crit_edge, %if.then18.i
  %cmp.not.i304 = icmp eq ptr %.pn72.i, %dev_list.i
  br i1 %cmp.not.i304, label %cleanup.i.for.end35.i_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cleanup.i.for.end35.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end35.i

for.end35.i:                                      ; preds = %cleanup.i.for.end35.i_crit_edge, %if.then5.i.for.end35.i_crit_edge
  %call36.i = tail call i32 @sas_discover_event(ptr noundef nonnull %3, i32 noundef 3) #5
  br label %sas_resume_port.exit

sas_resume_port.exit:                             ; preds = %for.end35.i, %if.end.i303.sas_resume_port.exit_crit_edge
  %eh_wait_q = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %eh_wait_q, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %cleanup

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %id = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 6
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id, align 4
  %id9 = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 10
  %43 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id9, align 4
  %num_phys = getelementptr inbounds %struct.asd_sas_port, ptr %3, i32 0, i32 19
  %45 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_phys, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %42, i32 noundef %44, i32 noundef %46) #9
  br label %cleanup

do.body14:                                        ; preds = %if.then2, %entry.do.body14_crit_edge
  %phy_port_lock = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 16
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %phy_port_lock) #5
  %num_phys22 = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 19
  %47 = ptrtoint ptr %num_phys22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_phys22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp23346 = icmp sgt i32 %48, 0
  br i1 %cmp23346, label %for.body.lr.ph, label %do.body14.for.end_crit_edge

do.body14.for.end_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body14
  %sas_port = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 18
  %attached_sas_addr1.i306 = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 15
  %sas_addr4.i314 = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %if.end46.for.body_crit_edge, %for.body.lr.ph
  %i.0347 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end46.for.body_crit_edge ]
  %49 = ptrtoint ptr %sas_port to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sas_port, align 4
  %arrayidx = getelementptr ptr, ptr %50, i32 %i.0347
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %phy_list_lock = getelementptr inbounds %struct.asd_sas_port, ptr %52, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %phy_list_lock) #5
  %sas_addr = getelementptr inbounds %struct.asd_sas_port, ptr %52, i32 0, i32 12
  %53 = ptrtoint ptr %sas_addr to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %sas_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %54)
  %tobool25.not = icmp eq i64 %54, 0
  br i1 %tobool25.not, label %for.body.if.end46_crit_edge, label %land.lhs.true

for.body.if.end46_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

land.lhs.true:                                    ; preds = %for.body
  %attached_sas_addr.i305 = getelementptr inbounds %struct.asd_sas_port, ptr %52, i32 0, i32 13
  %bcmp.i307 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %attached_sas_addr.i305, ptr noundef dereferenceable(8) %attached_sas_addr1.i306, i32 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i307)
  %cmp.not.i308 = icmp eq i32 %bcmp.i307, 0
  br i1 %cmp.not.i308, label %lor.lhs.false.i312, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

lor.lhs.false.i312:                               ; preds = %land.lhs.true
  %55 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ha, align 4
  %strict_wide_ports.i310 = getelementptr inbounds %struct.sas_ha_struct, ptr %56, i32 0, i32 20
  %57 = ptrtoint ptr %strict_wide_ports.i310 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %strict_wide_ports.i310, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i311 = icmp eq i32 %58, 0
  br i1 %tobool.not.i311, label %lor.lhs.false.i312.land.lhs.true28_crit_edge, label %land.lhs.true.i317

lor.lhs.false.i312.land.lhs.true28_crit_edge:     ; preds = %lor.lhs.false.i312
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true28

land.lhs.true.i317:                               ; preds = %lor.lhs.false.i312
  %59 = ptrtoint ptr %sas_addr4.i314 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sas_addr4.i314, align 4
  %bcmp10.i315 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %sas_addr, ptr noundef dereferenceable(8) %60, i32 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp10.i315)
  %cmp6.not.i316 = icmp eq i32 %bcmp10.i315, 0
  br i1 %cmp6.not.i316, label %land.lhs.true.i317.land.lhs.true28_crit_edge, label %land.lhs.true.i317.if.end46_crit_edge

land.lhs.true.i317.if.end46_crit_edge:            ; preds = %land.lhs.true.i317
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

land.lhs.true.i317.land.lhs.true28_crit_edge:     ; preds = %land.lhs.true.i317
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true28

land.lhs.true28:                                  ; preds = %land.lhs.true.i317.land.lhs.true28_crit_edge, %lor.lhs.false.i312.land.lhs.true28_crit_edge
  %num_phys29 = getelementptr inbounds %struct.asd_sas_port, ptr %52, i32 0, i32 19
  %61 = ptrtoint ptr %num_phys29 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_phys29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp30 = icmp sgt i32 %62, 0
  br i1 %cmp30, label %do.body33, label %land.lhs.true28.if.end46_crit_edge

land.lhs.true28.if.end46_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

do.body33:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_form_port.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_form_port, %for.end)) #5
          to label %if.then40 [label %for.end], !srcloc !41

if.then40:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #7
  %id41 = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 6
  %63 = ptrtoint ptr %id41 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id41, align 4
  %id42 = getelementptr inbounds %struct.asd_sas_port, ptr %52, i32 0, i32 10
  %65 = ptrtoint ptr %id42 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id42, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_form_port.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.8, i32 noundef %64, i32 noundef %66) #5
  br label %for.end

if.end46:                                         ; preds = %land.lhs.true28.if.end46_crit_edge, %land.lhs.true.i317.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %for.body.if.end46_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %phy_list_lock) #5
  %inc = add nuw nsw i32 %i.0347, 1
  %67 = ptrtoint ptr %num_phys22 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_phys22, align 4
  %cmp23 = icmp slt i32 %inc, %68
  br i1 %cmp23, label %if.end46.for.body_crit_edge, label %if.end46.for.end_crit_edge

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end46.for.body_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end46.for.end_crit_edge, %if.then40, %do.body33, %do.body14.for.end_crit_edge
  %i.0342 = phi i32 [ %i.0347, %if.then40 ], [ %i.0347, %do.body33 ], [ 0, %do.body14.for.end_crit_edge ], [ %inc, %if.end46.for.end_crit_edge ]
  %port.1 = phi ptr [ %52, %if.then40 ], [ %52, %do.body33 ], [ %3, %do.body14.for.end_crit_edge ], [ %52, %if.end46.for.end_crit_edge ]
  %69 = ptrtoint ptr %num_phys22 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_phys22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0342, i32 %70)
  %cmp49 = icmp eq i32 %i.0342, %70
  br i1 %cmp49, label %for.cond52.preheader, label %for.end.if.end77_crit_edge

for.end.if.end77_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

for.cond52.preheader:                             ; preds = %for.end
  %71 = ptrtoint ptr %num_phys22 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_phys22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp54350 = icmp sgt i32 %72, 0
  br i1 %cmp54350, label %for.body56.lr.ph, label %for.cond52.preheader.if.end77_crit_edge

for.cond52.preheader.if.end77_crit_edge:          ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

for.body56.lr.ph:                                 ; preds = %for.cond52.preheader
  %sas_port57 = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 18
  br label %for.body56

for.body56:                                       ; preds = %if.end72.for.body56_crit_edge, %for.body56.lr.ph
  %i.1351 = phi i32 [ 0, %for.body56.lr.ph ], [ %inc75, %if.end72.for.body56_crit_edge ]
  %73 = ptrtoint ptr %sas_port57 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sas_port57, align 4
  %arrayidx58 = getelementptr ptr, ptr %74, i32 %i.1351
  %75 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx58, align 4
  %phy_list_lock59 = getelementptr inbounds %struct.asd_sas_port, ptr %76, i32 0, i32 17
  tail call void @_raw_spin_lock(ptr noundef %phy_list_lock59) #5
  %sas_addr60 = getelementptr inbounds %struct.asd_sas_port, ptr %76, i32 0, i32 12
  %77 = ptrtoint ptr %sas_addr60 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 8)
  %78 = load i64, ptr %sas_addr60, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %78)
  %cmp62 = icmp eq i64 %78, 0
  br i1 %cmp62, label %land.lhs.true64, label %for.body56.if.end72_crit_edge

for.body56.if.end72_crit_edge:                    ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

land.lhs.true64:                                  ; preds = %for.body56
  %num_phys65 = getelementptr inbounds %struct.asd_sas_port, ptr %76, i32 0, i32 19
  %79 = ptrtoint ptr %num_phys65 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_phys65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp66 = icmp eq i32 %80, 0
  br i1 %cmp66, label %if.then68, label %land.lhs.true64.if.end72_crit_edge

land.lhs.true64.if.end72_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then68:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #7
  %sas_addr71 = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 14
  %81 = ptrtoint ptr %sas_addr71 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sas_addr71, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_loadN_noabort(i32 %83, i32 8)
  %84 = load i64, ptr %82, align 1
  %85 = ptrtoint ptr %sas_addr60 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 8)
  store i64 %84, ptr %sas_addr60, align 4
  br label %if.end77

if.end72:                                         ; preds = %land.lhs.true64.if.end72_crit_edge, %for.body56.if.end72_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %phy_list_lock59) #5
  %inc75 = add nuw nsw i32 %i.1351, 1
  %86 = ptrtoint ptr %num_phys22 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_phys22, align 4
  %cmp54 = icmp slt i32 %inc75, %87
  br i1 %cmp54, label %if.end72.for.body56_crit_edge, label %if.end72.if.end77_crit_edge

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.end72.for.body56_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body56

if.end77:                                         ; preds = %if.end72.if.end77_crit_edge, %if.then68, %for.cond52.preheader.if.end77_crit_edge, %for.end.if.end77_crit_edge
  %port.3 = phi ptr [ %76, %if.then68 ], [ %port.1, %for.end.if.end77_crit_edge ], [ %port.1, %for.cond52.preheader.if.end77_crit_edge ], [ %76, %if.end72.if.end77_crit_edge ]
  %i.2 = phi i32 [ %i.1351, %if.then68 ], [ %i.0342, %for.end.if.end77_crit_edge ], [ 0, %for.cond52.preheader.if.end77_crit_edge ], [ %inc75, %if.end72.if.end77_crit_edge ]
  %88 = ptrtoint ptr %num_phys22 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_phys22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2, i32 %89)
  %cmp79.not = icmp slt i32 %i.2, %89
  br i1 %cmp79.not, label %if.end88, label %do.end84

do.end84:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %phy_port_lock, i32 noundef %call17) #5
  br label %cleanup

if.end88:                                         ; preds = %if.end77
  %port_dev89 = getelementptr inbounds %struct.asd_sas_port, ptr %port.3, i32 0, i32 1
  %90 = ptrtoint ptr %port_dev89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %port_dev89, align 4
  %port_phy_el = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 21
  %phy_list = getelementptr inbounds %struct.asd_sas_port, ptr %port.3, i32 0, i32 18
  %prev.i = getelementptr inbounds %struct.asd_sas_port, ptr %port.3, i32 0, i32 18, i32 1
  %92 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %port_phy_el, ptr noundef %93, ptr noundef %phy_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end88.list_add_tail.exit_crit_edge

if.end88.list_add_tail.exit_crit_edge:            ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %port_phy_el, ptr %prev.i, align 4
  %95 = ptrtoint ptr %port_phy_el to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %phy_list, ptr %port_phy_el, align 4
  %prev3.i.i = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 21, i32 1
  %96 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev3.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %port_phy_el, ptr %93, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end88.list_add_tail.exit_crit_edge
  %phy1.i = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 4
  %98 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %phy1.i, align 4
  %tobool.not.i322 = icmp eq ptr %91, null
  br i1 %tobool.not.i322, label %if.else7.i, label %if.then.i323

if.then.i323:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev_type.i.i = getelementptr inbounds %struct.domain_device, ptr %91, i32 0, i32 1
  %100 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dev_type.i.i, align 4
  %switch.tableidx = add i32 %101, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %102 = icmp ult i32 %switch.tableidx, 5
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %103 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %switch.lobit.not = icmp eq i8 %103, 0
  %spec.select = select i1 %switch.lobit.not, i32 %101, i32 1
  %.sink.i = select i1 %102, i32 %spec.select, i32 %101
  %identify4.i = getelementptr inbounds %struct.sas_phy, ptr %99, i32 0, i32 3
  %104 = ptrtoint ptr %identify4.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %.sink.i, ptr %identify4.i, align 8
  %tproto.i = getelementptr inbounds %struct.domain_device, ptr %91, i32 0, i32 13
  %105 = ptrtoint ptr %tproto.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tproto.i, align 8
  br label %sas_phy_set_target.exit

if.else7.i:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %identify8.i = getelementptr inbounds %struct.sas_phy, ptr %99, i32 0, i32 3
  %107 = ptrtoint ptr %identify8.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %identify8.i, align 8
  br label %sas_phy_set_target.exit

sas_phy_set_target.exit:                          ; preds = %if.else7.i, %if.then.i323
  %.sink21.i = phi i32 [ 0, %if.else7.i ], [ %106, %if.then.i323 ]
  %target_port_protocols11.i = getelementptr inbounds %struct.sas_phy, ptr %99, i32 0, i32 3, i32 2
  %108 = ptrtoint ptr %target_port_protocols11.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %.sink21.i, ptr %target_port_protocols11.i, align 8
  %109 = ptrtoint ptr %port1 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %port.3, ptr %port1, align 4
  %num_phys91 = getelementptr inbounds %struct.asd_sas_port, ptr %port.3, i32 0, i32 19
  %110 = ptrtoint ptr %num_phys91 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_phys91, align 4
  %inc92 = add i32 %111, 1
  store i32 %inc92, ptr %num_phys91, align 4
  %id93 = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 6
  %112 = ptrtoint ptr %id93 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %id93, align 4
  %shl = shl nuw i32 1, %113
  %phy_mask = getelementptr inbounds %struct.asd_sas_port, ptr %port.3, i32 0, i32 20
  %114 = ptrtoint ptr %phy_mask to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %phy_mask, align 4
  %or = or i32 %115, %shl
  store i32 %or, ptr %phy_mask, align 4
  %attached_sas_addr = getelementptr inbounds %struct.asd_sas_port, ptr %port.3, i32 0, i32 13
  %116 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_loadN_noabort(i32 %116, i32 8)
  %117 = load i64, ptr %attached_sas_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %117)
  %cmp95 = icmp eq i64 %117, 0
  br i1 %cmp95, label %if.then97, label %if.else107

if.then97:                                        ; preds = %sas_phy_set_target.exit
  call void @__sanitizer_cov_trace_pc() #7
  %class = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 7
  %118 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %class, align 4
  %class98 = getelementptr inbounds %struct.asd_sas_port, ptr %port.3, i32 0, i32 11
  %120 = ptrtoint ptr %class98 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %class98, align 4
  %attached_sas_addr101 = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 15
  %121 = ptrtoint ptr %attached_sas_addr101 to i32
  call void @__asan_loadN_noabort(i32 %121, i32 8)
  %122 = load i64, ptr %attached_sas_addr101, align 4
  %123 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_storeN_noabort(i32 %123, i32 8)
  store i64 %122, ptr %attached_sas_addr, align 4
  %iproto = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 8
  %124 = ptrtoint ptr %iproto to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %iproto, align 4
  %iproto103 = getelementptr inbounds %struct.asd_sas_port, ptr %port.3, i32 0, i32 14
  %126 = ptrtoint ptr %iproto103 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %iproto103, align 4
  %tproto = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 9
  %127 = ptrtoint ptr %tproto to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tproto, align 4
  %tproto104 = getelementptr inbounds %struct.asd_sas_port, ptr %port.3, i32 0, i32 15
  %129 = ptrtoint ptr %tproto104 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %tproto104, align 4
  %oob_mode = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 12
  %130 = ptrtoint ptr %oob_mode to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %oob_mode, align 4
  %oob_mode105 = getelementptr inbounds %struct.asd_sas_port, ptr %port.3, i32 0, i32 16
  %132 = ptrtoint ptr %oob_mode105 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %oob_mode105, align 4
  %linkrate = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 13
  %133 = ptrtoint ptr %linkrate to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %linkrate, align 4
  %linkrate106 = getelementptr inbounds %struct.asd_sas_port, ptr %port.3, i32 0, i32 7
  %135 = ptrtoint ptr %linkrate106 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %linkrate106, align 4
  br label %if.end114

if.else107:                                       ; preds = %sas_phy_set_target.exit
  call void @__sanitizer_cov_trace_pc() #7
  %linkrate108 = getelementptr inbounds %struct.asd_sas_port, ptr %port.3, i32 0, i32 7
  %136 = ptrtoint ptr %linkrate108 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %linkrate108, align 4
  %linkrate109 = getelementptr inbounds %struct.asd_sas_phy, ptr %phy, i32 0, i32 13
  %138 = ptrtoint ptr %linkrate109 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %linkrate109, align 4
  %140 = tail call i32 @llvm.umax.i32(i32 %137, i32 %139)
  %141 = ptrtoint ptr %linkrate108 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %linkrate108, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.else107, %if.then97
  %phy_list_lock115 = getelementptr inbounds %struct.asd_sas_port, ptr %port.3, i32 0, i32 17
  tail call void @_raw_spin_unlock(ptr noundef %phy_list_lock115) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %phy_port_lock, i32 noundef %call17) #5
  %port117 = getelementptr inbounds %struct.asd_sas_port, ptr %port.3, i32 0, i32 22
  %142 = ptrtoint ptr %port117 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %port117, align 4
  %tobool118.not = icmp eq ptr %143, null
  br i1 %tobool118.not, label %if.then119, label %if.end114.if.end147_crit_edge

if.end114.if.end147_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end147

if.then119:                                       ; preds = %if.end114
  %144 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %phy1.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %parent, align 8
  %id121 = getelementptr inbounds %struct.asd_sas_port, ptr %port.3, i32 0, i32 10
  %148 = ptrtoint ptr %id121 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %id121, align 4
  %call122 = tail call ptr @sas_port_alloc(ptr noundef %147, i32 noundef %149) #5
  %150 = ptrtoint ptr %port117 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call122, ptr %port117, align 4
  %tobool126.not = icmp eq ptr %call122, null
  br i1 %tobool126.not, label %do.body136, label %do.end144, !prof !42

do.body136:                                       ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/libsas/sas_port.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 163, 0\0A.popsection", ""() #5, !srcloc !43
  unreachable

do.end144:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #7
  %call146 = tail call i32 @sas_port_add(ptr noundef nonnull %call122) #5
  br label %if.end147

if.end147:                                        ; preds = %do.end144, %if.end114.if.end147_crit_edge
  %151 = ptrtoint ptr %port117 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %port117, align 4
  %153 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %phy1.i, align 4
  tail call void @sas_port_add_phy(ptr noundef %152, ptr noundef %154) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_form_port.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_form_port, %do.end176)) #5
          to label %if.then164 [label %do.end176], !srcloc !41

if.then164:                                       ; preds = %if.end147
  %155 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %phy1.i, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %156, i32 0, i32 3
  %157 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i325 = icmp eq ptr %158, null
  br i1 %tobool.not.i325, label %if.end.i326, label %if.then164.dev_name.exit_crit_edge

if.then164.dev_name.exit_crit_edge:               ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i326:                                      ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #7
  %159 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %156, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i326, %if.then164.dev_name.exit_crit_edge
  %retval.0.i327 = phi ptr [ %160, %if.end.i326 ], [ %158, %if.then164.dev_name.exit_crit_edge ]
  %161 = ptrtoint ptr %port117 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %port117, align 4
  %init_name.i328 = getelementptr inbounds %struct.device, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %init_name.i328 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %init_name.i328, align 8
  %tobool.not.i329 = icmp eq ptr %164, null
  br i1 %tobool.not.i329, label %if.end.i330, label %dev_name.exit.dev_name.exit332_crit_edge

dev_name.exit.dev_name.exit332_crit_edge:         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit332

if.end.i330:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %165 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %162, align 4
  br label %dev_name.exit332

dev_name.exit332:                                 ; preds = %if.end.i330, %dev_name.exit.dev_name.exit332_crit_edge
  %retval.0.i331 = phi ptr [ %166, %if.end.i330 ], [ %164, %dev_name.exit.dev_name.exit332_crit_edge ]
  %167 = ptrtoint ptr %phy_mask to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %phy_mask, align 4
  %169 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_loadN_noabort(i32 %169, i32 8)
  %170 = load i64, ptr %attached_sas_addr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_form_port.__UNIQUE_ID_ddebug294, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i327, ptr noundef %retval.0.i331, i32 noundef %168, i64 noundef %170) #5
  br label %do.end176

do.end176:                                        ; preds = %dev_name.exit332, %if.end147
  br i1 %tobool.not.i322, label %do.end176.if.end180_crit_edge, label %if.then178

do.end176.if.end180_crit_edge:                    ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end180

if.then178:                                       ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #7
  %171 = ptrtoint ptr %num_phys91 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %num_phys91, align 4
  %pathways = getelementptr inbounds %struct.domain_device, ptr %91, i32 0, i32 5
  %173 = ptrtoint ptr %pathways to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %172, ptr %pathways, align 4
  br label %if.end180

if.end180:                                        ; preds = %if.then178, %do.end176.if.end180_crit_edge
  %dft = getelementptr inbounds %struct.sas_internal, ptr %7, i32 0, i32 2
  %174 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dft, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  %tobool181.not = icmp eq ptr %177, null
  br i1 %tobool181.not, label %if.end180.if.end185_crit_edge, label %if.then182

if.end180.if.end185_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end185

if.then182:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %177(ptr noundef %phy) #5
  br label %if.end185

if.end185:                                        ; preds = %if.then182, %if.end180.if.end185_crit_edge
  %178 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %port1, align 4
  %call187 = tail call i32 @sas_discover_event(ptr noundef %179, i32 noundef 0) #5
  br i1 %tobool.not.i322, label %if.end185.if.end194_crit_edge, label %land.lhs.true189

if.end185.if.end194_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end194

land.lhs.true189:                                 ; preds = %if.end185
  %dev_type = getelementptr inbounds %struct.domain_device, ptr %91, i32 0, i32 1
  %180 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %dev_type, align 4
  %182 = and i32 %181, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %182)
  %183 = icmp eq i32 %182, 2
  br i1 %183, label %if.then192, label %land.lhs.true189.if.end194_crit_edge

land.lhs.true189.if.end194_crit_edge:             ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end194

if.then192:                                       ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #7
  %ex_change_count = getelementptr inbounds %struct.domain_device, ptr %91, i32 0, i32 19, i32 0, i32 2
  %184 = ptrtoint ptr %ex_change_count to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 -1, ptr %ex_change_count, align 4
  %call193 = tail call i32 @sas_discover_event(ptr noundef %port.3, i32 noundef 1) #5
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %land.lhs.true189.if.end194_crit_edge, %if.end185.if.end194_crit_edge
  %disco_q = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 13
  %185 = ptrtoint ptr %disco_q to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %disco_q, align 4
  tail call void @flush_workqueue(ptr noundef %186) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end194, %do.end84, %do.end, %sas_resume_port.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_porte_broadcast_rcvd(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %sas_prim_lock = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 19
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sas_prim_lock) #5
  %sas_prim = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %sas_prim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sas_prim, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sas_prim_lock, i32 noundef %call4) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_porte_broadcast_rcvd.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sas_porte_broadcast_rcvd, %do.end15)) #5
          to label %if.then [label %do.end15], !srcloc !41

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_porte_broadcast_rcvd.__UNIQUE_ID_ddebug295, ptr noundef nonnull @.str.4, i32 noundef %3) #5
  br label %do.end15

do.end15:                                         ; preds = %if.then, %entry
  %port = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port, align 4
  %call16 = tail call i32 @sas_discover_event(ptr noundef %5, i32 noundef 1) #5
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  %tobool18.not = icmp eq ptr %7, null
  br i1 %tobool18.not, label %do.end15.if.end21_crit_edge, label %if.then19

do.end15.if.end21_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then19:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  %ha = getelementptr inbounds %struct.asd_sas_port, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ha, align 4
  %disco_q = getelementptr inbounds %struct.sas_ha_struct, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %disco_q to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disco_q, align 4
  tail call void @flush_workqueue(ptr noundef %11) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %do.end15.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_porte_link_reset_err(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  tail call void @sas_deform_port(ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_porte_timer_event(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  tail call void @sas_deform_port(ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_porte_hard_reset(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  tail call void @sas_deform_port(ptr noundef %1, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_register_ports(ptr noundef %sas_ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_phys = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 19
  %0 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8 = icmp sgt i32 %1, 0
  br i1 %cmp8, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sas_port = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %sas_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sas_port, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.09
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 504)
  %id.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 10
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %i.09, ptr %id.i, align 4
  %dev_list.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %dev_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %dev_list.i, ptr %dev_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev_list.i, ptr %prev.i.i, align 4
  %disco_list.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %disco_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %disco_list.i, ptr %disco_list.i, align 4
  %prev.i13.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i13.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %disco_list.i, ptr %prev.i13.i, align 4
  %destroy_list.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %destroy_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %destroy_list.i, ptr %destroy_list.i, align 4
  %prev.i14.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev.i14.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %destroy_list.i, ptr %prev.i14.i, align 4
  %sas_port_del_list.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %sas_port_del_list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %sas_port_del_list.i, ptr %sas_port_del_list.i, align 4
  %prev.i15.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %prev.i15.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sas_port_del_list.i, ptr %prev.i15.i, align 4
  %phy_list_lock.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %phy_list_lock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @sas_init_port.__key, i16 noundef signext 3) #5
  %phy_list.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 18
  %16 = ptrtoint ptr %phy_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %phy_list.i, ptr %phy_list.i, align 4
  %prev.i16.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev.i16.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %phy_list.i, ptr %prev.i16.i, align 4
  %ha.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 21
  %18 = ptrtoint ptr %ha.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sas_ha, ptr %ha.i, align 4
  %dev_list_lock.i = getelementptr inbounds %struct.asd_sas_port, ptr %5, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %dev_list_lock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @sas_init_port.__key.15, i16 noundef signext 3) #5
  tail call void @sas_init_disc(ptr noundef %5, ptr noundef %5) #5
  %inc = add nuw nsw i32 %i.09, 1
  %19 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_phys, align 4
  %cmp = icmp slt i32 %inc, %20
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_init_disc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_unregister_ports(ptr nocapture noundef readonly %sas_ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_phys = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 19
  %0 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8 = icmp sgt i32 %1, 0
  br i1 %cmp8, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sas_phy = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %sas_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sas_phy, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.09
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %port = getelementptr inbounds %struct.asd_sas_phy, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sas_deform_port(ptr noundef %5, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.09, 1
  %8 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_phys, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_port_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_port_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_port_add_phy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_notify_lldd_dev_found(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_unregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind readonly willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/libsas/sas_port.c", i32 283, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @sas_porte_broadcast_rcvd.__UNIQUE_ID_ddebug295, !1, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @sas_port_event_fns, !8, !"sas_port_event_fns", i1 false, i1 false}
!8 = !{!"../drivers/scsi/libsas/sas_port.c", i32 356, i32 19}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/libsas/sas_port.c", i32 98, i32 4}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @sas_form_port._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @sas_form_port._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/libsas/sas_port.c", i32 113, i32 4}
!16 = !{ptr @sas_form_port.__UNIQUE_ID_ddebug291, !15, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/libsas/sas_port.c", i32 135, i32 3}
!20 = !{ptr @sas_form_port._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @sas_form_port._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/libsas/sas_port.c", i32 168, i32 2}
!24 = !{ptr @sas_form_port.__UNIQUE_ID_ddebug294, !23, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sas_init_port.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/scsi/libsas/sas_port.c", i32 325, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sas_init_port.__key.15, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/scsi/libsas/sas_port.c", i32 329, i32 2}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 2148207361, i64 2148207366, i64 2148207379, i64 2148207423, i64 2148207457, i64 2148207478}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 2155867364, i64 2155867859, i64 2155867401, i64 2155867457, i64 2155867491, i64 2155867515, i64 2155867556, i64 2155867577, i64 2155867605, i64 2155867639}
