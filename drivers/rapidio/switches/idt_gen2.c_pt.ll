; ModuleID = '/llk/IR_all_yes/drivers/rapidio/switches/idt_gen2.c_pt.bc'
source_filename = "../drivers/rapidio/switches/idt_gen2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.rio_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rio_device_id = type { i16, i16, i16, i16 }
%struct.rio_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rio_dev = type { %struct.list_head, %struct.list_head, ptr, i8, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.device, [16 x %struct.resource], ptr, i16, i8, ptr, %struct.atomic_t, [0 x %struct.rio_switch] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rio_switch = type { %struct.list_head, ptr, i32, ptr, %struct.spinlock, [0 x ptr] }
%struct.rio_net = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i8, %struct.device, ptr, ptr }

@idtg2_exit.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 120, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"idt_gen2\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"idtg2_exit\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/rapidio/switches/idt_gen2.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RIO: %s\0A\00", [23 x i8] zeroinitializer }, align 32
@idtg2_driver = internal global { %struct.rio_driver, [44 x i8] } { %struct.rio_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @idtg2_id_table, ptr @idtg2_probe, ptr @idtg2_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@idtg2_exit.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 120, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RIO: %s done\0A\00", [18 x i8] zeroinitializer }, align 32
@__initcall__kmod_idt_gen2__236_485_idtg2_init6 = internal global ptr @idtg2_init, section ".initcall6.init", align 4
@__exitcall_idtg2_exit = internal global ptr @idtg2_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description237 = internal constant [71 x i8] c"idt_gen2.description=IDT CPS Gen.2 Serial RapidIO switch family driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [51 x i8] c"idt_gen2.author=Integrated Device Technology, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [48 x i8] c"idt_gen2.file=drivers/rapidio/switches/idt_gen2\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [21 x i8] c"idt_gen2.license=GPL\00", section ".modinfo", align 1
@idtg2_id_table = internal constant { [6 x %struct.rio_device_id], [48 x i8] } { [6 x %struct.rio_device_id] [%struct.rio_device_id { i16 884, i16 56, i16 -1, i16 -1 }, %struct.rio_device_id { i16 889, i16 56, i16 -1, i16 -1 }, %struct.rio_device_id { i16 887, i16 56, i16 -1, i16 -1 }, %struct.rio_device_id { i16 888, i16 56, i16 -1, i16 -1 }, %struct.rio_device_id { i16 885, i16 56, i16 -1, i16 -1 }, %struct.rio_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@idtg2_probe.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 104, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"idtg2_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RIO: %s for %s\0A\00", [16 x i8] zeroinitializer }, align 32
@idtg2_switch_ops = internal global { %struct.rio_switch_ops, [32 x i8] } { %struct.rio_switch_ops { ptr null, ptr @idtg2_route_add_entry, ptr @idtg2_route_get_entry, ptr @idtg2_route_clr_table, ptr @idtg2_set_domain, ptr @idtg2_get_domain, ptr @idtg2_em_init, ptr @idtg2_em_handler }, [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@idtg2_em_init.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 55, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idtg2_em_init\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RIO: %s [%d:%d]\0A\00", [47 x i8] zeroinitializer }, align 32
@idtg2_em_handler.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 84, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"idtg2_em_handler\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"RIO: %s Implementation Specific LTL errors 0x%x @(0x%x)\0A\00", [39 x i8] zeroinitializer }, align 32
@idtg2_em_handler.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 89, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"RIO: %s Implementation Specific Port errors 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@dev_attr_errlog = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @idtg2_show_errlog, ptr null }, [36 x i8] zeroinitializer }, align 32
@idtg2_sysfs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 398, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable create sysfs errlog file\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"idtg2_sysfs\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@idtg2_sysfs._entry_ptr = internal global ptr @idtg2_sysfs._entry, section ".printk_index", align 4
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"errlog\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x\0A\00", [26 x i8] zeroinitializer }, align 32
@idtg2_remove.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.6, i8 0, i8 111, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idtg2_remove\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 480, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"idtg2_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 466, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 482, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"idtg2_id_table\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 457, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 418, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"idtg2_switch_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 405, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 223, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 335, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 356, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant [16 x i8] c"dev_attr_errlog\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 398, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 387, i32 8 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 379, i32 6 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [39 x i8] c"../drivers/rapidio/switches/idt_gen2.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 445, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_idtg2_exit, ptr @__initcall__kmod_idt_gen2__236_485_idtg2_init6, ptr @idtg2_exit, ptr @idtg2_sysfs._entry, ptr @idtg2_sysfs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @idtg2_driver, ptr @.str.4, ptr @idtg2_id_table, ptr @.str.5, ptr @.str.6, ptr @idtg2_switch_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @dev_attr_errlog, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtg2_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtg2_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtg2_switch_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_errlog to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtg2_sysfs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @idtg2_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtg2_exit.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtg2_exit, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtg2_exit.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @rio_unregister_driver(ptr noundef nonnull @idtg2_driver) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtg2_exit.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtg2_exit, %do.end20)) #6
          to label %if.then18 [label %do.end20], !srcloc !65

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtg2_exit.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #6
  br label %do.end20

do.end20:                                         ; preds = %if.then18, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rio_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @idtg2_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rio_register_driver(ptr noundef nonnull @idtg2_driver) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtg2_probe(ptr noundef %rdev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtg2_probe.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtg2_probe, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !65

if.then:                                          ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.rio_name.exit_crit_edge

if.then.rio_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i, %if.then.rio_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.then.rio_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtg2_probe.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i.i) #6
  br label %do.end

do.end:                                           ; preds = %rio_name.exit, %entry
  %lock = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 1, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %ops = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 1, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end12, label %if.then8

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %return

if.end12:                                         ; preds = %do.end
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @idtg2_switch_ops, ptr %ops, align 8
  %do_enum = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 3
  %7 = ptrtoint ptr %do_enum to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %do_enum, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool16.not = icmp eq i8 %8, 0
  br i1 %tobool16.not, label %if.end12.if.end19_crit_edge, label %if.then17

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %net.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 2
  %9 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net.i, align 8
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hport.i, align 8
  %destid.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 24
  %13 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %destid.i, align 4
  %hopcount.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 25
  %15 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hopcount.i, align 2
  %call.i = tail call i32 @rio_mport_write_config_32(ptr noundef %12, i16 noundef zeroext %14, i8 noundef zeroext %16, i32 noundef 120, i32 noundef 223) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end12.if.end19_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %dev1.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21
  %call.i32 = tail call i32 @device_create_file(ptr noundef %dev1.i, ptr noundef nonnull @dev_attr_errlog) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool2.not.i = icmp eq i32 %call.i32, 0
  br i1 %tobool2.not.i, label %if.end19.return_crit_edge, label %do.end.i

if.end19.return_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.12) #9
  br label %return

return:                                           ; preds = %do.end.i, %if.end19.return_crit_edge, %if.then8
  %retval.0 = phi i32 [ -22, %if.then8 ], [ 0, %if.end19.return_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idtg2_remove(ptr noundef %rdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtg2_remove.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtg2_remove, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !65

if.then:                                          ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.rio_name.exit_crit_edge

if.then.rio_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i, %if.then.rio_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.then.rio_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtg2_remove.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.18, ptr noundef %retval.0.i.i) #6
  br label %do.end

do.end:                                           ; preds = %rio_name.exit, %entry
  %lock = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 1, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %ops = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 1, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %cmp.not = icmp eq ptr %5, @idtg2_switch_ops
  br i1 %cmp.not, label %if.end11, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %return

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ops, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %dev1.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef nonnull @dev_attr_errlog) #6
  br label %return

return:                                           ; preds = %if.end11, %if.then7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtg2_route_add_entry(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i16 noundef zeroext %table, i16 noundef zeroext %route_destid, i8 noundef zeroext %route_port) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %table)
  %cmp = icmp eq i16 %table, 255
  %inc = add i16 %table, 1
  %narrow = select i1 %cmp, i16 0, i16 %inc
  %table.addr.0 = zext i16 %narrow to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %route_port)
  %cmp3 = icmp eq i8 %route_port, -1
  %spec.store.select = select i1 %cmp3, i8 -34, i8 %route_port
  %call = tail call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 65648, i32 noundef %table.addr.0) #6
  %conv8 = zext i16 %route_destid to i32
  %call9 = tail call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 112, i32 noundef %conv8) #6
  %conv10 = zext i8 %spec.store.select to i32
  %call11 = tail call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 116, i32 noundef %conv10) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 2147480) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtg2_route_get_entry(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i16 noundef zeroext %table, i16 noundef zeroext %route_destid, ptr nocapture noundef writeonly %route_port) #3 align 64 {
entry:
  %result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #6
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %result, align 4, !annotation !67
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %table)
  %cmp = icmp eq i16 %table, 255
  %inc = add i16 %table, 1
  %narrow = select i1 %cmp, i16 0, i16 %inc
  %table.addr.0 = zext i16 %narrow to i32
  %call = tail call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 65648, i32 noundef %table.addr.0) #6
  %conv3 = zext i16 %route_destid to i32
  %call4 = tail call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 112, i32 noundef %conv3) #6
  %call5 = call i32 @rio_mport_read_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 116, ptr noundef nonnull %result) #6
  %1 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %result, align 4
  %conv6 = trunc i32 %2 to i8
  %3 = and i32 %2, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 222, i32 %3)
  %switch = icmp eq i32 %3, 222
  %spec.select = select i1 %switch, i8 -1, i8 %conv6
  %4 = ptrtoint ptr %route_port to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %spec.select, ptr %route_port, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtg2_route_clr_table(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i16 noundef zeroext %table) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %table)
  %cmp = icmp eq i16 %table, 255
  %inc = add i16 %table, 1
  %narrow = select i1 %cmp, i16 0, i16 %inc
  %table.addr.0 = zext i16 %narrow to i32
  %call = tail call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 65648, i32 noundef %table.addr.0) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.017 = phi i32 [ -2147483648, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %call5 = tail call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 112, i32 noundef %i.017) #6
  %call6 = tail call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 116, i32 noundef -555819298) #6
  %add = add nuw nsw i32 %i.017, 4
  %cmp3 = icmp ult i32 %i.017, -2147483396
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtg2_set_domain(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i8 noundef zeroext %sw_domain) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %sw_domain to i32
  %call = tail call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 15859744, i32 noundef %conv) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtg2_get_domain(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, ptr nocapture noundef writeonly %sw_domain) #3 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !67
  %call = call i32 @rio_mport_read_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 15859744, ptr noundef nonnull %regval) #6
  %1 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %regval, align 4
  %conv = trunc i32 %2 to i8
  %3 = ptrtoint ptr %sw_domain to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %sw_domain, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtg2_em_init(ptr noundef readonly %rdev) #3 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtg2_em_init.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtg2_em_init, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %destid = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 24
  %1 = ptrtoint ptr %destid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %destid, align 4
  %conv = zext i16 %2 to i32
  %hopcount = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 25
  %3 = ptrtoint ptr %hopcount to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hopcount, align 2
  %conv5 = zext i8 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtg2_em_init.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %conv5) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %net.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 2
  %5 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i, align 8
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hport.i, align 8
  %destid.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 24
  %9 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %destid.i, align 4
  %hopcount.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 25
  %11 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hopcount.i, align 2
  %call.i = tail call i32 @rio_mport_write_config_32(ptr noundef %8, i16 noundef zeroext %10, i8 noundef zeroext %12, i32 noundef 15859748, i32 noundef 57344) #6
  %13 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net.i, align 8
  %hport.i87 = getelementptr inbounds %struct.rio_net, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %hport.i87 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hport.i87, align 8
  %17 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %destid.i, align 4
  %19 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hopcount.i, align 2
  %call.i90 = tail call i32 @rio_mport_write_config_32(ptr noundef %16, i16 noundef zeroext %18, i8 noundef zeroext %20, i32 noundef 200716, i32 noundef 146800640) #6
  %21 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i, align 8
  %hport.i92 = getelementptr inbounds %struct.rio_net, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %hport.i92 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hport.i92, align 8
  %25 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %destid.i, align 4
  %27 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hopcount.i, align 2
  %call.i95 = call i32 @rio_mport_read_config_32(ptr noundef %24, i16 noundef zeroext %26, i8 noundef zeroext %28, i32 noundef 15859724, ptr noundef nonnull %regval) #6
  %29 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %regval, align 4
  %or9 = or i32 %30, 33554433
  %31 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net.i, align 8
  %hport.i97 = getelementptr inbounds %struct.rio_net, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %hport.i97 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hport.i97, align 8
  %35 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %destid.i, align 4
  %37 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hopcount.i, align 2
  %call.i100 = call i32 @rio_mport_write_config_32(ptr noundef %34, i16 noundef zeroext %36, i8 noundef zeroext %38, i32 noundef 15859724, i32 noundef %or9) #6
  %39 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net.i, align 8
  %hport.i102 = getelementptr inbounds %struct.rio_net, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %hport.i102 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hport.i102, align 8
  %43 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %destid.i, align 4
  %45 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %hopcount.i, align 2
  %call.i105 = call i32 @rio_mport_write_config_32(ptr noundef %42, i16 noundef zeroext %44, i8 noundef zeroext %46, i32 noundef 261892, i32 noundef -2139193289) #6
  %47 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net.i, align 8
  %hport.i107 = getelementptr inbounds %struct.rio_net, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %hport.i107 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hport.i107, align 8
  %51 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %destid.i, align 4
  %53 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %hopcount.i, align 2
  %call.i110 = call i32 @rio_mport_write_config_32(ptr noundef %50, i16 noundef zeroext %52, i8 noundef zeroext %54, i32 noundef 261900, i32 noundef 32) #6
  %swpinfo = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 12
  %55 = ptrtoint ptr %swpinfo to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %swpinfo, align 4
  %and = lshr i32 %56, 8
  %shr = and i32 %and, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp187.not = icmp eq i32 %shr, 0
  br i1 %cmp187.not, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.0188 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %mul = shl i32 %i.0188, 8
  %add = add nuw nsw i32 %mul, 15990788
  %57 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %net.i, align 8
  %hport.i112 = getelementptr inbounds %struct.rio_net, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %hport.i112 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hport.i112, align 8
  %61 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %destid.i, align 4
  %63 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %hopcount.i, align 2
  %call.i115 = call i32 @rio_mport_read_config_32(ptr noundef %60, i16 noundef zeroext %62, i8 noundef zeroext %64, i32 noundef %add, ptr noundef nonnull %regval) #6
  %65 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %regval, align 4
  %or20 = or i32 %66, 134217840
  %67 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %net.i, align 8
  %hport.i117 = getelementptr inbounds %struct.rio_net, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %hport.i117 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hport.i117, align 8
  %71 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %destid.i, align 4
  %73 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %hopcount.i, align 2
  %call.i120 = call i32 @rio_mport_write_config_32(ptr noundef %70, i16 noundef zeroext %72, i8 noundef zeroext %74, i32 noundef %add, i32 noundef %or20) #6
  %inc = add nuw nsw i32 %i.0188, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %75 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %net.i, align 8
  %hport.i122 = getelementptr inbounds %struct.rio_net, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %hport.i122 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hport.i122, align 8
  %79 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %destid.i, align 4
  %81 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %hopcount.i, align 2
  %call.i125 = call i32 @rio_mport_write_config_32(ptr noundef %78, i16 noundef zeroext %80, i8 noundef zeroext %82, i32 noundef 16580608, i32 noundef 4) #6
  %83 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %net.i, align 8
  %hport.i127 = getelementptr inbounds %struct.rio_net, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %hport.i127 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hport.i127, align 8
  %87 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %destid.i, align 4
  %89 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %hopcount.i, align 2
  %call.i130 = call i32 @rio_mport_write_config_32(ptr noundef %86, i16 noundef zeroext %88, i8 noundef zeroext %90, i32 noundef 261904, i32 noundef 0) #6
  %did = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 4
  %91 = ptrtoint ptr %did to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %did, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 884, i16 %92)
  %cmp25 = icmp eq i16 %92, 884
  %cond = select i1 %cmp25, i32 48, i32 16
  br label %for.body30

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.end
  %i.1189 = phi i32 [ 0, %for.end ], [ %inc39, %for.body30.for.body30_crit_edge ]
  %mul31 = shl i32 %i.1189, 8
  %add32 = add nuw nsw i32 %mul31, 16744448
  %93 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %net.i, align 8
  %hport.i132 = getelementptr inbounds %struct.rio_net, ptr %94, i32 0, i32 4
  %95 = ptrtoint ptr %hport.i132 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hport.i132, align 8
  %97 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %destid.i, align 4
  %99 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %hopcount.i, align 2
  %call.i135 = call i32 @rio_mport_read_config_32(ptr noundef %96, i16 noundef zeroext %98, i8 noundef zeroext %100, i32 noundef %add32, ptr noundef nonnull %regval) #6
  %101 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %regval, align 4
  %or36 = or i32 %102, 2097152
  %103 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %net.i, align 8
  %hport.i137 = getelementptr inbounds %struct.rio_net, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %hport.i137 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hport.i137, align 8
  %107 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %destid.i, align 4
  %109 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %hopcount.i, align 2
  %call.i140 = call i32 @rio_mport_write_config_32(ptr noundef %106, i16 noundef zeroext %108, i8 noundef zeroext %110, i32 noundef %add32, i32 noundef %or36) #6
  %inc39 = add nuw nsw i32 %i.1189, 1
  %exitcond190.not = icmp eq i32 %inc39, %cond
  br i1 %exitcond190.not, label %for.end40, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30

for.end40:                                        ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %net.i, align 8
  %hport.i142 = getelementptr inbounds %struct.rio_net, ptr %112, i32 0, i32 4
  %113 = ptrtoint ptr %hport.i142 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hport.i142, align 8
  %115 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %destid.i, align 4
  %117 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %hopcount.i, align 2
  %call.i145 = call i32 @rio_mport_write_config_32(ptr noundef %114, i16 noundef zeroext %116, i8 noundef zeroext %118, i32 noundef 131072, i32 noundef 0) #6
  %119 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %net.i, align 8
  %hport.i147 = getelementptr inbounds %struct.rio_net, ptr %120, i32 0, i32 4
  %121 = ptrtoint ptr %hport.i147 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hport.i147, align 8
  %123 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %destid.i, align 4
  %125 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %hopcount.i, align 2
  %call.i150 = call i32 @rio_mport_write_config_32(ptr noundef %122, i16 noundef zeroext %124, i8 noundef zeroext %126, i32 noundef 15859736, i32 noundef 0) #6
  %127 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %net.i, align 8
  %hport.i152 = getelementptr inbounds %struct.rio_net, ptr %128, i32 0, i32 4
  %129 = ptrtoint ptr %hport.i152 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %hport.i152, align 8
  %131 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %destid.i, align 4
  %133 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %hopcount.i, align 2
  %call.i155 = call i32 @rio_mport_write_config_32(ptr noundef %130, i16 noundef zeroext %132, i8 noundef zeroext %134, i32 noundef 15859804, i32 noundef 0) #6
  %135 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %net.i, align 8
  %hport.i157 = getelementptr inbounds %struct.rio_net, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %hport.i157 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %hport.i157, align 8
  %139 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %destid.i, align 4
  %141 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %hopcount.i, align 2
  %call.i160 = call i32 @rio_mport_read_config_32(ptr noundef %138, i16 noundef zeroext %140, i8 noundef zeroext %142, i32 noundef 15859792, ptr noundef nonnull %regval) #6
  %143 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %regval, align 4
  %and45 = and i32 %144, -67108865
  %145 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %net.i, align 8
  %hport.i162 = getelementptr inbounds %struct.rio_net, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %hport.i162 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %hport.i162, align 8
  %149 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %destid.i, align 4
  %151 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %hopcount.i, align 2
  %call.i165 = call i32 @rio_mport_write_config_32(ptr noundef %148, i16 noundef zeroext %150, i8 noundef zeroext %152, i32 noundef 15859792, i32 noundef %and45) #6
  %153 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %net.i, align 8
  %hport.i167 = getelementptr inbounds %struct.rio_net, ptr %154, i32 0, i32 4
  %155 = ptrtoint ptr %hport.i167 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hport.i167, align 8
  %157 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %destid.i, align 4
  %159 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %hopcount.i, align 2
  %call.i170 = call i32 @rio_mport_write_config_32(ptr noundef %156, i16 noundef zeroext %158, i8 noundef zeroext %160, i32 noundef 131080, i32 noundef 0) #6
  %161 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %net.i, align 8
  %hport.i172 = getelementptr inbounds %struct.rio_net, ptr %162, i32 0, i32 4
  %163 = ptrtoint ptr %hport.i172 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hport.i172, align 8
  %165 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %destid.i, align 4
  %167 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %hopcount.i, align 2
  %call.i175 = call i32 @rio_mport_read_config_32(ptr noundef %164, i16 noundef zeroext %166, i8 noundef zeroext %168, i32 noundef 15859732, ptr noundef nonnull %regval) #6
  %169 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %regval, align 4
  %and49 = and i32 %170, -3
  %171 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %net.i, align 8
  %hport.i177 = getelementptr inbounds %struct.rio_net, ptr %172, i32 0, i32 4
  %173 = ptrtoint ptr %hport.i177 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hport.i177, align 8
  %175 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %destid.i, align 4
  %177 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %hopcount.i, align 2
  %call.i180 = call i32 @rio_mport_write_config_32(ptr noundef %174, i16 noundef zeroext %176, i8 noundef zeroext %178, i32 noundef 15859732, i32 noundef %and49) #6
  %phys_efptr = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 16
  %179 = ptrtoint ptr %phys_efptr to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %phys_efptr, align 4
  %add51 = add i32 %180, 32
  %181 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %net.i, align 8
  %hport.i182 = getelementptr inbounds %struct.rio_net, ptr %182, i32 0, i32 4
  %183 = ptrtoint ptr %hport.i182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %hport.i182, align 8
  %185 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %destid.i, align 4
  %187 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %hopcount.i, align 2
  %call.i185 = call i32 @rio_mport_write_config_32(ptr noundef %184, i16 noundef zeroext %186, i8 noundef zeroext %188, i32 noundef %add51, i32 noundef 36352) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtg2_em_handler(ptr noundef readonly %rdev, i8 noundef zeroext %portnum) #3 align 64 {
entry:
  %regval = alloca i32, align 4
  %em_perrdet = alloca i32, align 4
  %em_ltlerrdet = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %em_perrdet) #6
  %1 = ptrtoint ptr %em_perrdet to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %em_perrdet, align 4, !annotation !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %em_ltlerrdet) #6
  %2 = ptrtoint ptr %em_ltlerrdet to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %em_ltlerrdet, align 4, !annotation !67
  %em_efptr = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 18
  %3 = ptrtoint ptr %em_efptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %em_efptr, align 4
  %add = add i32 %4, 8
  %net.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 2
  %5 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i, align 8
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hport.i, align 8
  %destid.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 24
  %9 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %destid.i, align 4
  %hopcount.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 25
  %11 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hopcount.i, align 2
  %call.i = call i32 @rio_mport_read_config_32(ptr noundef %8, i16 noundef zeroext %10, i8 noundef zeroext %12, i32 noundef %add, ptr noundef nonnull %em_ltlerrdet) #6
  %13 = ptrtoint ptr %em_ltlerrdet to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %em_ltlerrdet, align 4
  %and = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %entry.if.end13_crit_edge, label %if.then2

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then2:                                         ; preds = %entry
  %15 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i, align 8
  %hport.i69 = getelementptr inbounds %struct.rio_net, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %hport.i69 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hport.i69, align 8
  %19 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %destid.i, align 4
  %21 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hopcount.i, align 2
  %call.i72 = call i32 @rio_mport_read_config_32(ptr noundef %18, i16 noundef zeroext %20, i8 noundef zeroext %22, i32 noundef 135188, ptr noundef nonnull %regval) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtg2_em_handler.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtg2_em_handler, %do.end)) #6
          to label %if.then9 [label %do.end], !srcloc !65

if.then9:                                         ; preds = %if.then2
  %init_name.i.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21, i32 3
  %23 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then9.rio_name.exit_crit_edge

if.then9.rio_name.exit_crit_edge:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_name.exit

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i, %if.then9.rio_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %26, %if.end.i.i ], [ %24, %if.then9.rio_name.exit_crit_edge ]
  %27 = ptrtoint ptr %em_ltlerrdet to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %em_ltlerrdet, align 4
  %29 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %regval, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtg2_em_handler.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i.i, i32 noundef %28, i32 noundef %30) #6
  br label %do.end

do.end:                                           ; preds = %rio_name.exit, %if.then2
  %31 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net.i, align 8
  %hport.i74 = getelementptr inbounds %struct.rio_net, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %hport.i74 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hport.i74, align 8
  %35 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %destid.i, align 4
  %37 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %hopcount.i, align 2
  %call.i77 = call i32 @rio_mport_write_config_32(ptr noundef %34, i16 noundef zeroext %36, i8 noundef zeroext %38, i32 noundef 135188, i32 noundef 0) #6
  br label %if.end13

if.end13:                                         ; preds = %do.end, %entry.if.end13_crit_edge
  %39 = ptrtoint ptr %em_efptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %em_efptr, align 4
  %conv = zext i8 %portnum to i32
  %mul = shl nuw nsw i32 %conv, 6
  %add15 = add nuw nsw i32 %mul, 64
  %add16 = add i32 %add15, %40
  %41 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net.i, align 8
  %hport.i79 = getelementptr inbounds %struct.rio_net, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %hport.i79 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hport.i79, align 8
  %45 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %destid.i, align 4
  %47 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %hopcount.i, align 2
  %call.i82 = call i32 @rio_mport_read_config_32(ptr noundef %44, i16 noundef zeroext %46, i8 noundef zeroext %48, i32 noundef %add16, ptr noundef nonnull %em_perrdet) #6
  %49 = ptrtoint ptr %em_perrdet to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %em_perrdet, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %tobool21.not = icmp sgt i32 %50, -1
  br i1 %tobool21.not, label %if.end13.if.end51_crit_edge, label %if.then22

if.end13.if.end51_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then22:                                        ; preds = %if.end13
  %mul24 = shl nuw nsw i32 %conv, 8
  %add25 = or i32 %mul24, 15990792
  %51 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net.i, align 8
  %hport.i84 = getelementptr inbounds %struct.rio_net, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %hport.i84 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hport.i84, align 8
  %55 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %destid.i, align 4
  %57 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %hopcount.i, align 2
  %call.i87 = call i32 @rio_mport_read_config_32(ptr noundef %54, i16 noundef zeroext %56, i8 noundef zeroext %58, i32 noundef %add25, ptr noundef nonnull %regval) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtg2_em_handler.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtg2_em_handler, %do.end45)) #6
          to label %if.then41 [label %do.end45], !srcloc !65

if.then41:                                        ; preds = %if.then22
  %init_name.i.i88 = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21, i32 3
  %59 = ptrtoint ptr %init_name.i.i88 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i.i88, align 8
  %tobool.not.i.i89 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i89, label %if.end.i.i91, label %if.then41.rio_name.exit93_crit_edge

if.then41.rio_name.exit93_crit_edge:              ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_name.exit93

if.end.i.i91:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i90 = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21
  %61 = ptrtoint ptr %dev.i90 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i90, align 4
  br label %rio_name.exit93

rio_name.exit93:                                  ; preds = %if.end.i.i91, %if.then41.rio_name.exit93_crit_edge
  %retval.0.i.i92 = phi ptr [ %62, %if.end.i.i91 ], [ %60, %if.then41.rio_name.exit93_crit_edge ]
  %63 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %regval, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtg2_em_handler.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i.i92, i32 noundef %64) #6
  br label %do.end45

do.end45:                                         ; preds = %rio_name.exit93, %if.then22
  %65 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %net.i, align 8
  %hport.i95 = getelementptr inbounds %struct.rio_net, ptr %66, i32 0, i32 4
  %67 = ptrtoint ptr %hport.i95 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hport.i95, align 8
  %69 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %destid.i, align 4
  %71 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %hopcount.i, align 2
  %call.i98 = call i32 @rio_mport_write_config_32(ptr noundef %68, i16 noundef zeroext %70, i8 noundef zeroext %72, i32 noundef %add25, i32 noundef 0) #6
  br label %if.end51

if.end51:                                         ; preds = %do.end45, %if.end13.if.end51_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %em_ltlerrdet) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %em_perrdet) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_write_config_32(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_read_config_32(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtg2_show_errlog(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !67
  %net.i = getelementptr i8, ptr %dev, i32 -72
  %destid.i = getelementptr i8, ptr %dev, i32 1444
  %hopcount.i = getelementptr i8, ptr %dev, i32 1446
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %len.0 = phi i32 [ 0, %entry ], [ %add, %if.end.while.cond_crit_edge ]
  %1 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %net.i, align 8
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hport.i, align 8
  %5 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %destid.i, align 4
  %7 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hopcount.i, align 2
  %call.i = call i32 @rio_mport_read_config_32(ptr noundef %4, i16 noundef zeroext %6, i8 noundef zeroext %8, i32 noundef 16580612, ptr noundef nonnull %regval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  %9 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %regval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool1.not = icmp eq i32 %10, 0
  br i1 %tobool1.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %while.body
  %add.ptr2 = getelementptr i8, ptr %buf, i32 %len.0
  %sub = sub nuw nsw i32 4096, %len.0
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr2, i32 noundef %sub, ptr noundef nonnull @.str.17, i32 noundef %10)
  %add = add i32 %call3, %len.0
  %cmp = icmp ugt i32 %add, 4085
  br i1 %cmp, label %if.end.while.end_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %len.1 = phi i32 [ %add, %if.end.while.end_crit_edge ], [ %len.0, %while.body.while.end_crit_edge ], [ %len.0, %while.cond.while.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 %len.1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !46, !47, !48, !50, !51, !53, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 480, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @idtg2_exit.__UNIQUE_ID_ddebug234, !1, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 482, i32 2}
!8 = !{ptr @idtg2_exit.__UNIQUE_ID_ddebug235, !7, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_idt_gen2__236_485_idtg2_init6, !10, !"__initcall__kmod_idt_gen2__236_485_idtg2_init6", i1 false, i1 false}
!10 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 485, i32 1}
!11 = !{ptr @__exitcall_idtg2_exit, !12, !"__exitcall_idtg2_exit", i1 false, i1 false}
!12 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 486, i32 1}
!13 = !{ptr @__UNIQUE_ID_description237, !14, !"__UNIQUE_ID_description237", i1 false, i1 false}
!14 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 488, i32 1}
!15 = !{ptr @__UNIQUE_ID_author238, !16, !"__UNIQUE_ID_author238", i1 false, i1 false}
!16 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 489, i32 1}
!17 = !{ptr @__UNIQUE_ID_file239, !18, !"__UNIQUE_ID_file239", i1 false, i1 false}
!18 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 490, i32 1}
!19 = !{ptr @__UNIQUE_ID_license240, !18, !"__UNIQUE_ID_license240", i1 false, i1 false}
!20 = !{ptr @idtg2_driver, !21, !"idtg2_driver", i1 false, i1 false}
!21 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 466, i32 26}
!22 = !{ptr @idtg2_id_table, !23, !"idtg2_id_table", i1 false, i1 false}
!23 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 457, i32 35}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 418, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @idtg2_probe.__UNIQUE_ID_ddebug232, !25, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!28 = !{ptr @idtg2_switch_ops, !29, !"idtg2_switch_ops", i1 false, i1 false}
!29 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 405, i32 30}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 223, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @idtg2_em_init.__UNIQUE_ID_ddebug229, !31, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 335, i32 4}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @idtg2_em_handler.__UNIQUE_ID_ddebug230, !35, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 356, i32 4}
!40 = !{ptr @idtg2_em_handler.__UNIQUE_ID_ddebug231, !39, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 398, i32 4}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @idtg2_sysfs._entry, !42, !"_entry", i1 false, i1 false}
!47 = !{ptr @idtg2_sysfs._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 387, i32 8}
!50 = !{ptr @dev_attr_errlog, !49, !"dev_attr_errlog", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 379, i32 6}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rapidio/switches/idt_gen2.c", i32 445, i32 2}
!55 = !{ptr @idtg2_remove.__UNIQUE_ID_ddebug233, !54, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148964023, i64 2148964028, i64 2148964041, i64 2148964085, i64 2148964119, i64 2148964140}
!66 = !{i8 0, i8 2}
!67 = !{!"auto-init"}
