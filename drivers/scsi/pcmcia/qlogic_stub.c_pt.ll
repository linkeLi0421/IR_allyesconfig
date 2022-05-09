; ModuleID = '/llk/IR_all_yes/drivers/scsi/pcmcia/qlogic_stub.c_pt.bc'
source_filename = "../drivers/scsi/pcmcia/qlogic_stub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.scsi_info_t = type { ptr, ptr, i16 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }

@qlogic_ids = internal constant [15 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -2009505881, i32 867673574, i32 0, i32 0], [4 x ptr] [ptr @.str, ptr @.str.1, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -748587217, i32 698160977, i32 0, i32 0], [4 x ptr] [ptr @.str.2, ptr @.str.3, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 545528680, i32 -1422115987, i32 0, i32 0], [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1697921066, i32 -696324487, i32 0, i32 0], [4 x ptr] [ptr @.str.6, ptr @.str.7, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 417270688, i32 610676362, i32 0, i32 0], [4 x ptr] [ptr @.str.8, ptr @.str.9, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -2110301657, i32 -158442505, i32 0, i32 0], [4 x ptr] [ptr @.str.10, ptr @.str.11, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -2110301657, i32 1760218708, i32 0, i32 0], [4 x ptr] [ptr @.str.10, ptr @.str.12, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1068426870, i32 423776492, i32 0, i32 0], [4 x ptr] [ptr @.str.13, ptr @.str.14, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -679794384, i32 -1470421195, i32 0, i32 0], [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -679794384, i32 1895347704, i32 0, i32 0], [4 x ptr] [ptr @.str.15, ptr @.str.17, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 112, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1068426870, i32 -2121700511, i32 -107018657, i32 0], [4 x ptr] [ptr @.str.13, ptr @.str.18, ptr @.str.19, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -2050945513, i32 438714561, i32 0, i32 0], [4 x ptr] [ptr @.str.20, ptr @.str.21, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1269278182, i32 -1494192450, i32 0, i32 0], [4 x ptr] [ptr @.str.22, ptr @.str.23, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 -1269278182, i32 176742048, i32 0, i32 0], [4 x ptr] [ptr @.str.22, ptr @.str.24, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], align 4
@__UNIQUE_ID_author291 = internal constant [37 x i8] c"author=Tom Zerucha, Michael Griffith\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [62 x i8] c"description=Driver for the PCMCIA Qlogic FAS SCSI controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EIger Labs\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PCMCIA-to-SCSI Adapter\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EPSON\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SCSI-2 PC Card SC200\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MACNICA\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MIRACLE SCSI-II mPS110\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MIDORI ELECTRONICS \00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CN-SC43\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NEC\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PC-9801N-J03R\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"KME \00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KXLC003\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KXLC004\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"KME\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KXLC101\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"QLOGIC CORPORATION\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pc05\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc05 rev 1.10\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"KXLC002\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"00\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RATOC System Inc.\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SCSI2 CARD 37\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TOSHIBA\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SCSC200A PC CARD SCSI\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SCSC200B PC CARD SCSI-10\00", [39 x i8] zeroinitializer }, align 32
@qlogic_cs_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str.25, ptr @qlogic_probe, ptr @qlogic_detach, ptr null, ptr @qlogic_resume, ptr @__this_module, ptr @qlogic_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qlogic_cs\00", [22 x i8] zeroinitializer }, align 32
@__this_module = external dso_local global %struct.module, align 128
@qlogic_probe.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qlogic_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/scsi/pcmcia/qlogic_stub.c\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qlogic_attach()\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qlogic_config.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.29, ptr @.str.27, ptr @.str.30, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qlogic_config\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qlogic_config\0A\00", [17 x i8] zeroinitializer }, align 32
@qlogicfas_driver_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @qlogicfas408_queuecommand, ptr null, ptr @__this_module, ptr @qlogic_name, ptr @qlogicfas408_info, ptr null, ptr null, ptr null, ptr @qlogicfas408_abort, ptr null, ptr null, ptr null, ptr @qlogicfas408_host_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qlogicfas408_biosparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qlogic_name, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 0, i32 4095, i32 0, i16 0, i8 0, i32 0, i8 0, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@qlogic_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.27, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: no SCSI devices found\0A\00", [35 x i8] zeroinitializer }, align 32
@qlogic_config._entry_ptr = internal global ptr @qlogic_config._entry, section ".printk_index", align 4
@qlogic_name = internal global { [10 x i8], [22 x i8] } { [10 x i8] c"qlogic_cs\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Qlogicfas Driver version 0.46, chip %02X at %03X, IRQ %d, TPdma:%d\00", [61 x i8] zeroinitializer }, align 32
@qlogic_detach.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.33, ptr @.str.27, ptr @.str.34, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qlogic_detach\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qlogic_detach\0A\00", [17 x i8] zeroinitializer }, align 32
@qlogic_release.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.35, ptr @.str.27, ptr @.str.36, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qlogic_release\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qlogic_release\0A\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 11, i64 152, i64 49163]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 16, i64 11, i64 152, i64 49163]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 277, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 278, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 279, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 280, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 281, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 282, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 283, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 284, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 285, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 286, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 287, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 288, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 289, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 290, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"qlogic_cs_driver\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 298, i32 29 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 300, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 149, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 194, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [26 x i8] c"qlogicfas_driver_template\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 63, i32 34 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 223, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [12 x i8] c"qlogic_name\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 61, i32 13 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 126, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 167, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [37 x i8] c"../drivers/scsi/pcmcia/qlogic_stub.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 242, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_license293, ptr @qlogic_config._entry, ptr @qlogic_config._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @qlogic_cs_driver, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @qlogicfas_driver_template, ptr @.str.31, ptr @qlogic_name, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlogic_cs_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlogicfas_driver_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlogic_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qlogic_name to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@__mod_pcmcia__qlogic_ids_device_table = dso_local alias [15 x %struct.pcmcia_device_id], ptr @qlogic_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @qlogic_cs_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @qlogic_cs_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlogic_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qlogic_probe.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qlogic_probe, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qlogic_probe.__UNIQUE_ID_ddebug287, ptr noundef %dev, ptr noundef nonnull @.str.28) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #9
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %link, ptr %call7.i.i, align 8
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %priv, align 8
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %3 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %config_flags, align 4
  %or = or i32 %4, 2049
  store i32 %or, ptr %config_flags, align 4
  %config_regs = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 13
  %5 = ptrtoint ptr %config_regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %config_regs, align 8
  %call7 = tail call fastcc i32 @qlogic_config(ptr noundef %link)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qlogic_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qlogic_detach.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qlogic_detach, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qlogic_detach.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.34) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %priv.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qlogic_release.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qlogic_detach, %if.then.i)) #6
          to label %qlogic_release.exit [label %if.then.i], !srcloc !87

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qlogic_release.__UNIQUE_ID_ddebug290, ptr noundef %dev.i, ptr noundef nonnull @.str.36) #6
  br label %qlogic_release.exit

qlogic_release.exit:                              ; preds = %if.then.i, %do.end
  %host.i = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  tail call void @scsi_remove_host(ptr noundef %3) #6
  %irq.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 8
  %6 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %host.i, align 4
  %call4.i = tail call ptr @free_irq(i32 noundef %5, ptr noundef %7) #6
  tail call void @pcmcia_disable_device(ptr noundef %link) #6
  %8 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host.i, align 4
  tail call void @scsi_host_put(ptr noundef %9) #6
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 8
  tail call void @kfree(ptr noundef %11) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlogic_resume(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 @pcmcia_enable_device(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %manf_id = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %manf_id, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.end.if.end34_crit_edge [
    i16 -16373, label %if.end.do.body_crit_edge
    i16 11, label %if.end.do.body_crit_edge44
    i16 152, label %if.end.do.body_crit_edge45
  ]

if.end.do.body_crit_edge45:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.do.body_crit_edge44:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

do.body:                                          ; preds = %if.end.do.body_crit_edge, %if.end.do.body_crit_edge44, %if.end.do.body_crit_edge45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resource, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add = add i32 %8, 13
  %and = and i32 %add, 1048575
  %add12 = or i32 %and, -18874368
  %9 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 -128) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %resource, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add20 = add i32 %13, 9
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %14 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 36) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %resource, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add30 = add i32 %18, 13
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %19 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 4) #6, !srcloc !89
  br label %if.end34

if.end34:                                         ; preds = %do.body, %if.end.if.end34_crit_edge
  %call35 = tail call i32 @qlogicfas408_host_reset(ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qlogic_config(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qlogic_config.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qlogic_config, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qlogic_config.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.30) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @qlogic_config_check, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.failed_crit_edge

do.end.failed_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

if.end6:                                          ; preds = %do.end
  %irq = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %if.end6.failed_crit_edge, label %if.end9

if.end6.failed_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

if.end9:                                          ; preds = %if.end6
  %call10 = tail call i32 @pcmcia_enable_device(ptr noundef %link) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.failed_crit_edge

if.end9.failed_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %failed

if.end13:                                         ; preds = %if.end9
  %manf_id = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %manf_id, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %5, label %if.end13.if.end50_crit_edge [
    i16 -16373, label %if.end13.do.body25_crit_edge
    i16 11, label %if.end13.do.body25_crit_edge102
    i16 152, label %if.end13.do.body25_crit_edge103
  ]

if.end13.do.body25_crit_edge103:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25

if.end13.do.body25_crit_edge102:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25

if.end13.do.body25_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body25

if.end13.if.end50_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.body25:                                        ; preds = %if.end13.do.body25_crit_edge, %if.end13.do.body25_crit_edge102, %if.end13.do.body25_crit_edge103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resource, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %add = add i32 %10, 13
  %and = and i32 %add, 1048575
  %add28 = or i32 %and, -18874368
  %11 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 -76) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resource, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add36 = add i32 %15, 9
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %16 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 36) #6, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resource, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add46 = add i32 %20, 13
  %and47 = and i32 %add46, 1048575
  %add48 = or i32 %and47, -18874368
  %21 = inttoptr i32 %add48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 4) #6, !srcloc !89
  br label %if.end50

if.end50:                                         ; preds = %do.body25, %if.end13.if.end50_crit_edge
  %resource51 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %22 = ptrtoint ptr %resource51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resource51, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 4
  %sub.i = add i32 %25, 1
  %add.i = sub i32 %sub.i, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add.i)
  %cmp54 = icmp eq i32 %add.i, 32
  %add60 = add i32 %27, 16
  %.sink = select i1 %cmp54, i32 %add60, i32 %27
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 8
  %call67 = tail call fastcc ptr @qlogic_detect(i32 noundef %.sink, i32 noundef %29)
  %tobool69.not = icmp eq ptr %call67, null
  br i1 %tobool69.not, label %do.end73, label %if.end76

do.end73:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @qlogic_name) #10
  br label %failed

if.end76:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %host77 = getelementptr inbounds %struct.scsi_info_t, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %host77 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call67, ptr %host77, align 4
  br label %cleanup

failed:                                           ; preds = %do.end73, %if.end9.failed_crit_edge, %if.end6.failed_crit_edge, %do.end.failed_crit_edge
  tail call void @pcmcia_disable_device(ptr noundef %link) #6
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end76
  %retval.0 = phi i32 [ -19, %failed ], [ 0, %if.end76 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qlogic_config_check(ptr noundef %p_dev, ptr nocapture noundef readnone %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 14
  %0 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 10, ptr %io_lines, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 7
  %1 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, -25
  store i32 %and, ptr %flags, align 4
  %5 = load ptr, ptr %resource, align 4
  %flags3 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags3, align 4
  %or = or i32 %7, 16
  store i32 %or, ptr %flags3, align 4
  %8 = load ptr, ptr %resource, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @qlogic_detect(i32 noundef %qbase, i32 noundef %qlirq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @qlogicfas408_get_chip_type(i32 noundef %qbase, i32 noundef 0) #6
  %0 = load i32, ptr getelementptr inbounds (%struct.scsi_host_template, ptr @qlogicfas_driver_template, i32 0, i32 35), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp slt i32 %0, 0
  %spec.store.select = select i1 %cmp, i32 7, i32 %0
  tail call void @qlogicfas408_setup(i32 noundef %qbase, i32 noundef %spec.store.select, i32 noundef 0) #6
  store ptr @qlogic_name, ptr getelementptr inbounds (%struct.scsi_host_template, ptr @qlogicfas_driver_template, i32 0, i32 4), align 8
  %call1 = tail call ptr @scsi_host_alloc(ptr noundef nonnull @qlogicfas_driver_template, i32 noundef 112) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  %io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 0, i32 44
  %1 = ptrtoint ptr %io_port to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %qbase, ptr %io_port, align 8
  %n_io_port = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 0, i32 45
  %2 = ptrtoint ptr %n_io_port to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %n_io_port, align 4
  %dma_channel = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 0, i32 46
  %3 = ptrtoint ptr %dma_channel to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %dma_channel, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %qlirq)
  %cmp4.not = icmp eq i32 %qlirq, -1
  br i1 %cmp4.not, label %if.end3.if.end6_crit_edge, label %if.then5

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 0, i32 47
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %qlirq, ptr %irq, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 0, i32 53
  %qlirq7 = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 1, i32 1, i32 1
  %5 = ptrtoint ptr %qlirq7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %qlirq, ptr %qlirq7, align 4
  %6 = ptrtoint ptr %hostdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %qbase, ptr %hostdata, align 4
  %qinitid9 = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %qinitid9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.store.select, ptr %qinitid9, align 4
  %shost10 = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 1, i32 5, i32 1, i32 4, i32 2
  %8 = ptrtoint ptr %shost10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %shost10, align 4
  %int_type = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 1, i32 2
  %9 = ptrtoint ptr %int_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %int_type, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %qlirq, ptr noundef nonnull @qlogicfas408_ihandl, ptr noundef null, i32 noundef 0, ptr noundef nonnull @qlogic_name, ptr noundef nonnull %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.end6.free_scsi_host_crit_edge

if.end6.free_scsi_host_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_scsi_host

if.end14:                                         ; preds = %if.end6
  %qinfo = getelementptr inbounds %struct.Scsi_Host, ptr %call1, i32 1, i32 2, i32 1
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %qinfo, ptr noundef nonnull @.str.32, i32 noundef %call, i32 noundef %qbase, i32 noundef %qlirq, i32 noundef 1)
  %call.i1 = tail call i32 @scsi_add_host_with_dma(ptr noundef nonnull %call1, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool17.not = icmp eq i32 %call.i1, 0
  br i1 %tobool17.not, label %if.end19, label %free_interrupt

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @scsi_scan_host(ptr noundef nonnull %call1) #6
  br label %cleanup

free_interrupt:                                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call ptr @free_irq(i32 noundef %qlirq, ptr noundef nonnull %call1) #6
  br label %free_scsi_host

free_scsi_host:                                   ; preds = %free_interrupt, %if.end6.free_scsi_host_crit_edge
  tail call void @scsi_host_put(ptr noundef nonnull %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %free_scsi_host, %if.end19, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end19 ], [ null, %entry.cleanup_crit_edge ], [ null, %free_scsi_host ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlogicfas408_get_chip_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qlogicfas408_setup(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlogicfas408_ihandl(i32 noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_scan_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_host_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_add_host_with_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlogicfas408_queuecommand(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qlogicfas408_info(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlogicfas408_abort(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlogicfas408_host_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qlogicfas408_biosparam(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !28, !29, !31, !32, !34, !36, !37, !39, !40, !42, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !73, !74, !76, !77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__UNIQUE_ID_author291, !1, !"__UNIQUE_ID_author291", i1 false, i1 false}
!1 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 307, i32 1}
!2 = !{ptr @__UNIQUE_ID_description292, !3, !"__UNIQUE_ID_description292", i1 false, i1 false}
!3 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 308, i32 1}
!4 = !{ptr @__UNIQUE_ID_license293, !5, !"__UNIQUE_ID_license293", i1 false, i1 false}
!5 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 309, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 277, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 278, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 279, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 280, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 281, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 282, i32 2}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 283, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 284, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 285, i32 2}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 286, i32 2}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 287, i32 2}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 288, i32 2}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 289, i32 2}
!42 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 290, i32 2}
!45 = !{ptr @qlogic_ids, !46, !"qlogic_ids", i1 false, i1 false}
!46 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 276, i32 38}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 300, i32 11}
!49 = !{ptr @qlogic_cs_driver, !50, !"qlogic_cs_driver", i1 false, i1 false}
!50 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 298, i32 29}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 149, i32 2}
!53 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @qlogic_probe.__UNIQUE_ID_ddebug287, !52, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 194, i32 2}
!58 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @qlogic_config.__UNIQUE_ID_ddebug289, !57, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 223, i32 3}
!62 = !{ptr @qlogic_config._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @qlogic_config._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 126, i32 3}
!66 = !{ptr @qlogicfas_driver_template, !67, !"qlogicfas_driver_template", i1 false, i1 false}
!67 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 63, i32 34}
!68 = !{ptr @qlogic_name, !69, !"qlogic_name", i1 false, i1 false}
!69 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 61, i32 13}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 167, i32 2}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @qlogic_detach.__UNIQUE_ID_ddebug288, !71, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/scsi/pcmcia/qlogic_stub.c", i32 242, i32 2}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @qlogic_release.__UNIQUE_ID_ddebug290, !75, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 2148960378, i64 2148960383, i64 2148960396, i64 2148960440, i64 2148960474, i64 2148960495}
!88 = !{i64 2155056227}
!89 = !{i64 4953908}
!90 = !{i64 2155056598}
!91 = !{i64 2155056969}
!92 = !{i64 2155051447}
!93 = !{i64 2155051818}
!94 = !{i64 2155052189}
