; ModuleID = '/llk/IR_all_yes/drivers/rapidio/switches/idt_gen3.c_pt.bc'
source_filename = "../drivers/rapidio/switches/idt_gen3.c"
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
%struct.rio_dev = type { %struct.list_head, %struct.list_head, ptr, i8, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.device, [16 x %struct.resource], ptr, i16, i8, ptr, %struct.atomic_t, [0 x %struct.rio_switch] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rio_mport = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, %struct.resource, [16 x %struct.resource], [4 x %struct.rio_msg], [4 x %struct.rio_msg], i32, ptr, i8, i8, i32, i32, i32, [40 x i8], %struct.device, ptr, %struct.dma_device, ptr, %struct.atomic_t, i32 }
%struct.rio_msg = type { ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@idtg3_exit.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 92, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"idt_gen3\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"idtg3_exit\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/rapidio/switches/idt_gen3.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RIO: %s\0A\00", [23 x i8] zeroinitializer }, align 32
@idtg3_driver = internal global { %struct.rio_driver, [44 x i8] } { %struct.rio_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @idtg3_id_table, ptr @idtg3_probe, ptr @idtg3_remove, ptr @idtg3_shutdown, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@idtg3_exit.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 92, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RIO: %s done\0A\00", [18 x i8] zeroinitializer }, align 32
@__initcall__kmod_idt_gen3__237_373_idtg3_init6 = internal global ptr @idtg3_init, section ".initcall6.init", align 4
@__exitcall_idtg3_exit = internal global ptr @idtg3_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description238 = internal constant [71 x i8] c"idt_gen3.description=IDT RXS Gen.3 Serial RapidIO switch family driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [51 x i8] c"idt_gen3.author=Integrated Device Technology, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [48 x i8] c"idt_gen3.file=drivers/rapidio/switches/idt_gen3\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [21 x i8] c"idt_gen3.license=GPL\00", section ".modinfo", align 1
@idtg3_id_table = internal constant { [3 x %struct.rio_device_id], [40 x i8] } { [3 x %struct.rio_device_id] [%struct.rio_device_id { i16 -32539, i16 56, i16 -1, i16 -1 }, %struct.rio_device_id { i16 -32538, i16 56, i16 -1, i16 -1 }, %struct.rio_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@idtg3_probe.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 68, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"idtg3_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RIO: %s for %s\0A\00", [16 x i8] zeroinitializer }, align 32
@idtg3_switch_ops = internal global { %struct.rio_switch_ops, [32 x i8] } { %struct.rio_switch_ops { ptr null, ptr @idtg3_route_add_entry, ptr @idtg3_route_get_entry, ptr @idtg3_route_clr_table, ptr null, ptr null, ptr @idtg3_em_init, ptr @idtg3_em_handler }, [32 x i8] zeroinitializer }, align 32
@idtg3_route_add_entry.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 11, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"idtg3_route_add_entry\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RIO: %s t=0x%x did_%x to p_%x\0A\00", [33 x i8] zeroinitializer }, align 32
@idtg3_em_init.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"idtg3_em_init\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RIO: %s [%d:%d]\0A\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@idtg3_remove.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.6, i8 0, i8 74, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"idtg3_remove\00", [19 x i8] zeroinitializer }, align 32
@idtg3_shutdown.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 80, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idtg3_shutdown\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RIO: %s(%s)\0A\00", [19 x i8] zeroinitializer }, align 32
@idtg3_shutdown.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 85, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RIO: %s(%s) PW transmission disabled\0A\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 368, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"idtg3_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 353, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 370, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"idtg3_id_table\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 347, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 272, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"idtg3_switch_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 261, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 44, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 166, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 298, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 320, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [39 x i8] c"../drivers/rapidio/switches/idt_gen3.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 342, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_idtg3_exit, ptr @__initcall__kmod_idt_gen3__237_373_idtg3_init6, ptr @idtg3_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @idtg3_driver, ptr @.str.4, ptr @idtg3_id_table, ptr @.str.5, ptr @.str.6, ptr @idtg3_switch_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtg3_driver to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtg3_id_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idtg3_switch_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @idtg3_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtg3_exit.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtg3_exit, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtg3_exit.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @rio_unregister_driver(ptr noundef nonnull @idtg3_driver) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtg3_exit.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtg3_exit, %do.end20)) #4
          to label %if.then18 [label %do.end20], !srcloc !57

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtg3_exit.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #4
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
define internal i32 @idtg3_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rio_register_driver(ptr noundef nonnull @idtg3_driver) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtg3_probe(ptr noundef %rdev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtg3_probe.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtg3_probe, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !57

if.then:                                          ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.rio_name.exit_crit_edge

if.then.rio_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %rio_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i, %if.then.rio_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.then.rio_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtg3_probe.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i.i) #4
  br label %do.end

do.end:                                           ; preds = %rio_name.exit, %entry
  %lock = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 1, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %ops = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 1, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end12, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end12:                                         ; preds = %do.end
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @idtg3_switch_ops, ptr %ops, align 8
  %do_enum = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 3
  %7 = ptrtoint ptr %do_enum to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %do_enum, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool16.not = icmp eq i8 %8, 0
  br i1 %tobool16.not, label %if.end12.return_crit_edge, label %if.then17

if.end12.return_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i = tail call i32 @rio_mport_write_config_32(ptr noundef %12, i16 noundef zeroext %14, i8 noundef zeroext %16, i32 noundef 20512, i32 noundef 0) #4
  br label %return

return:                                           ; preds = %if.then17, %if.end12.return_crit_edge, %do.end.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.return_crit_edge ], [ 0, %if.then17 ], [ 0, %if.end12.return_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idtg3_remove(ptr noundef %rdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtg3_remove.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtg3_remove, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !57

if.then:                                          ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21, i32 3
  %0 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.rio_name.exit_crit_edge

if.then.rio_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %rio_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i, %if.then.rio_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %3, %if.end.i.i ], [ %1, %if.then.rio_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtg3_remove.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i.i) #4
  br label %do.end

do.end:                                           ; preds = %rio_name.exit, %entry
  %lock = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 1, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #4
  %ops = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 1, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 8
  %cmp = icmp eq ptr %5, @idtg3_switch_ops
  br i1 %cmp, label %if.then7, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ops, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %do.end.if.end11_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idtg3_shutdown(ptr nocapture noundef readonly %rdev) #3 align 64 {
entry:
  %rval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #4
  %0 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rval, align 4, !annotation !59
  %do_enum = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 3
  %1 = ptrtoint ptr %do_enum to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %do_enum, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtg3_shutdown.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtg3_shutdown, %do.end)) #4
          to label %if.then5 [label %do.end], !srcloc !57

if.then5:                                         ; preds = %do.body
  %init_name.i.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21, i32 3
  %3 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then5.rio_name.exit_crit_edge

if.then5.rio_name.exit_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %rio_name.exit

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i, %if.then5.rio_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %6, %if.end.i.i ], [ %4, %if.then5.rio_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtg3_shutdown.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i.i) #4
  br label %do.end

do.end:                                           ; preds = %rio_name.exit, %do.body
  %net.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 2
  %7 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %net.i, align 8
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hport.i, align 8
  %destid.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 24
  %11 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %destid.i, align 4
  %hopcount.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 25
  %13 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hopcount.i, align 2
  %call.i = call i32 @rio_mport_read_config_32(ptr noundef %10, i16 noundef zeroext %12, i8 noundef zeroext %14, i32 noundef 262664, ptr noundef nonnull %rval) #4
  %swpinfo = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 12
  %15 = ptrtoint ptr %swpinfo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %swpinfo, align 4
  %and = and i32 %16, 255
  %shl = shl nuw i32 1, %and
  %17 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rval, align 4
  %and9 = and i32 %shl, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %em_efptr = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 18
  %19 = ptrtoint ptr %em_efptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %em_efptr, align 4
  %add = add i32 %20, 40
  %21 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net.i, align 8
  %hport.i62 = getelementptr inbounds %struct.rio_net, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %hport.i62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hport.i62, align 8
  %25 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %destid.i, align 4
  %27 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hopcount.i, align 2
  %call.i65 = call i32 @rio_mport_read_config_32(ptr noundef %24, i16 noundef zeroext %26, i8 noundef zeroext %28, i32 noundef %add, ptr noundef nonnull %rval) #4
  %29 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rval, align 4
  %and14 = and i32 %30, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %shr = lshr i32 %30, 16
  %conv19 = and i32 %shr, 255
  %destid.0 = select i1 %tobool15.not, i32 %conv19, i32 %shr
  %31 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %net.i, align 8
  %hport = getelementptr inbounds %struct.rio_net, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %hport to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hport, align 8
  %host_deviceid = getelementptr inbounds %struct.rio_mport, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %host_deviceid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %destid.0)
  %cmp = icmp eq i32 %36, %destid.0
  br i1 %cmp, label %if.then23, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then23:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %em_efptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %em_efptr, align 4
  %add25 = add i32 %38, 52
  %39 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %destid.i, align 4
  %41 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %hopcount.i, align 2
  %call.i70 = call i32 @rio_mport_write_config_32(ptr noundef %34, i16 noundef zeroext %40, i8 noundef zeroext %42, i32 noundef %add25, i32 noundef 0) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtg3_shutdown.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtg3_shutdown, %cleanup)) #4
          to label %if.then41 [label %cleanup], !srcloc !57

if.then41:                                        ; preds = %if.then23
  %init_name.i.i71 = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21, i32 3
  %43 = ptrtoint ptr %init_name.i.i71 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i.i71, align 8
  %tobool.not.i.i72 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i72, label %if.end.i.i74, label %if.then41.rio_name.exit76_crit_edge

if.then41.rio_name.exit76_crit_edge:              ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %rio_name.exit76

if.end.i.i74:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i73 = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 21
  %45 = ptrtoint ptr %dev.i73 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i73, align 4
  br label %rio_name.exit76

rio_name.exit76:                                  ; preds = %if.end.i.i74, %if.then41.rio_name.exit76_crit_edge
  %retval.0.i.i75 = phi ptr [ %46, %if.end.i.i74 ], [ %44, %if.then41.rio_name.exit76_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtg3_shutdown.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i.i75) #4
  br label %cleanup

cleanup:                                          ; preds = %rio_name.exit76, %if.then23, %if.end12.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtg3_route_add_entry(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i16 noundef zeroext %table, i16 noundef zeroext %route_destid, i8 noundef zeroext %route_port) #3 align 64 {
entry:
  %rval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #4
  %0 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rval, align 4, !annotation !59
  %conv = zext i8 %route_port to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtg3_route_add_entry.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtg3_route_add_entry, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv5 = zext i16 %table to i32
  %conv6 = zext i16 %route_destid to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtg3_route_add_entry.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv7 = zext i16 %route_destid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %route_destid)
  %cmp = icmp ugt i16 %route_destid, 255
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %route_port)
  %cmp12 = icmp eq i8 %route_port, -1
  %spec.select = select i1 %cmp12, i32 768, i32 %conv
  %conv16 = zext i16 %table to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %table)
  %cmp17 = icmp eq i16 %table, 255
  br i1 %cmp17, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %mul = shl nuw nsw i32 %conv7, 2
  %add = add nuw nsw i32 %mul, 200704
  %call21 = tail call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef %add, i32 noundef %spec.select) #4
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  %call23 = call i32 @rio_mport_read_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 20, ptr noundef nonnull %rval) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %1 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rval, align 4
  %and = lshr i32 %2, 8
  %shr = and i32 %and, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv16)
  %cmp28.not = icmp ugt i32 %shr, %conv16
  br i1 %cmp28.not, label %if.end31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  %mul33 = shl nuw nsw i32 %conv16, 13
  %add34 = add nuw nsw i32 %mul33, 331776
  %mul37 = shl nuw nsw i32 %conv7, 2
  %add38 = add nuw nsw i32 %add34, %mul37
  %call39 = call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef %add38, i32 noundef %spec.select) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then19, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.then19 ], [ %call39, %if.end31 ], [ -22, %do.end.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ -22, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtg3_route_get_entry(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i16 noundef zeroext %table, i16 noundef zeroext %route_destid, ptr nocapture noundef writeonly %route_port) #3 align 64 {
entry:
  %rval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #4
  %0 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rval, align 4, !annotation !59
  %conv = zext i16 %route_destid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %route_destid)
  %cmp = icmp ugt i16 %route_destid, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @rio_mport_read_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 20, ptr noundef nonnull %rval) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %table)
  %cmp5 = icmp eq i16 %table, 255
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rval, align 4
  %conv8 = and i32 %2, 255
  br label %if.end15

if.else:                                          ; preds = %if.end3
  %conv4 = zext i16 %table to i32
  %3 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rval, align 4
  %and10 = lshr i32 %4, 8
  %shr = and i32 %and10, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv4)
  %cmp11.not = icmp ugt i32 %shr, %conv4
  br i1 %cmp11.not, label %if.else.if.end15_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.end15:                                         ; preds = %if.else.if.end15_crit_edge, %if.then7
  %conv16.pre-phi = phi i32 [ %conv4, %if.else.if.end15_crit_edge ], [ %conv8, %if.then7 ]
  %mul = shl nuw nsw i32 %conv16.pre-phi, 13
  %mul19 = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul19, 331776
  %add20 = add nuw nsw i32 %add, %mul
  %call21 = call i32 @rio_mport_read_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef %add20, ptr noundef nonnull %rval) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %6)
  %cmp25 = icmp eq i32 %6, 768
  %conv29 = trunc i32 %6 to i8
  %storemerge = select i1 %cmp25, i8 -1, i8 %conv29
  %7 = ptrtoint ptr %route_port to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %storemerge, ptr %route_port, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end15.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %call21, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtg3_route_clr_table(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i16 noundef zeroext %table) #3 align 64 {
entry:
  %rval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #4
  %0 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rval, align 4, !annotation !59
  %conv = zext i16 %table to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %table)
  %cmp = icmp eq i16 %table, 255
  br i1 %cmp, label %entry.for.body_crit_edge, label %if.end5

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond58.not = icmp eq i32 %inc, 256
  br i1 %exitcond58.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.055, 2
  %add = add nuw nsw i32 %mul, 200704
  %call = tail call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef %add, i32 noundef 768) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call6 = call i32 @rio_mport_read_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 20, ptr noundef nonnull %rval) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %1 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rval, align 4
  %and = lshr i32 %2, 8
  %shr = and i32 %and, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv)
  %cmp11.not = icmp ugt i32 %shr, %conv
  br i1 %cmp11.not, label %for.cond15.preheader, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond15.preheader:                             ; preds = %if.end9
  %mul20 = shl nuw nsw i32 %conv, 13
  %add21 = add nuw nsw i32 %mul20, 331776
  br label %for.body18

for.cond15:                                       ; preds = %for.body18
  %inc30 = add nuw nsw i32 %i.154, 1
  %exitcond.not = icmp eq i32 %inc30, 256
  br i1 %exitcond.not, label %for.cond15.cleanup_crit_edge, label %for.cond15.for.body18_crit_edge

for.cond15.for.body18_crit_edge:                  ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body18

for.cond15.cleanup_crit_edge:                     ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body18:                                       ; preds = %for.cond15.for.body18_crit_edge, %for.cond15.preheader
  %i.154 = phi i32 [ 0, %for.cond15.preheader ], [ %inc30, %for.cond15.for.body18_crit_edge ]
  %mul23 = shl nuw nsw i32 %i.154, 2
  %add24 = add nuw nsw i32 %add21, %mul23
  %call25 = call i32 @rio_mport_write_config_32(ptr noundef %mport, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef %add24, i32 noundef 768) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %for.cond15, label %for.body18.cleanup_crit_edge

for.body18.cleanup_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body18.cleanup_crit_edge, %for.cond15.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ], [ 0, %for.cond15.cleanup_crit_edge ], [ %call25, %for.body18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtg3_em_init(ptr noundef readonly %rdev) #3 align 64 {
entry:
  %rval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #4
  %0 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rval, align 4, !annotation !59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idtg3_em_init.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@idtg3_em_init, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idtg3_em_init.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %conv5) #4
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
  %call.i = tail call i32 @rio_mport_write_config_32(ptr noundef %8, i16 noundef zeroext %10, i8 noundef zeroext %12, i32 noundef 262192, i32 noundef 0) #4
  %em_efptr = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 18
  %13 = ptrtoint ptr %em_efptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %em_efptr, align 4
  %add = add i32 %14, 52
  %15 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net.i, align 8
  %hport.i65 = getelementptr inbounds %struct.rio_net, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %hport.i65 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hport.i65, align 8
  %19 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %destid.i, align 4
  %21 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hopcount.i, align 2
  %call.i68 = tail call i32 @rio_mport_write_config_32(ptr noundef %18, i16 noundef zeroext %20, i8 noundef zeroext %22, i32 noundef %add, i32 noundef 1) #4
  %swpinfo = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 12
  %23 = ptrtoint ptr %swpinfo to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %swpinfo, align 4
  %and = lshr i32 %24, 8
  %shr = and i32 %and, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp105.not = icmp eq i32 %shr, 0
  br i1 %cmp105.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %phys_efptr = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 16
  %phys_rmap = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %25 = ptrtoint ptr %phys_efptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phys_efptr, align 4
  %27 = ptrtoint ptr %phys_rmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phys_rmap, align 8
  %mul = shl i32 %i.0106, 5
  %mul9 = mul i32 %mul, %28
  %add10 = add i32 %26, 88
  %add11 = add i32 %add10, %mul9
  %29 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net.i, align 8
  %hport.i70 = getelementptr inbounds %struct.rio_net, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %hport.i70 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hport.i70, align 8
  %33 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %destid.i, align 4
  %35 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hopcount.i, align 2
  %call.i73 = call i32 @rio_mport_read_config_32(ptr noundef %32, i16 noundef zeroext %34, i8 noundef zeroext %36, i32 noundef %add11, ptr noundef nonnull %rval) #4
  %37 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rval, align 4
  %and13 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end16:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %em_efptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %em_efptr, align 4
  %mul18 = shl i32 %i.0106, 6
  %add19 = add nuw nsw i32 %mul18, 64
  %add20 = add i32 %add19, %40
  %41 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net.i, align 8
  %hport.i75 = getelementptr inbounds %struct.rio_net, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %hport.i75 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hport.i75, align 8
  %45 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %destid.i, align 4
  %47 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %hopcount.i, align 2
  %call.i78 = call i32 @rio_mport_write_config_32(ptr noundef %44, i16 noundef zeroext %46, i8 noundef zeroext %48, i32 noundef %add20, i32 noundef 0) #4
  %49 = ptrtoint ptr %em_efptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %em_efptr, align 4
  %add24 = add nuw nsw i32 %mul18, 68
  %add25 = add i32 %add24, %50
  %51 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %net.i, align 8
  %hport.i80 = getelementptr inbounds %struct.rio_net, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %hport.i80 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hport.i80, align 8
  %55 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %destid.i, align 4
  %57 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %hopcount.i, align 2
  %call.i83 = call i32 @rio_mport_write_config_32(ptr noundef %54, i16 noundef zeroext %56, i8 noundef zeroext %58, i32 noundef %add25, i32 noundef 1342177280) #4
  %mul27 = shl i32 %i.0106, 8
  %add28 = add nuw nsw i32 %mul27, 65816
  %59 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %net.i, align 8
  %hport.i85 = getelementptr inbounds %struct.rio_net, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %hport.i85 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hport.i85, align 8
  %63 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %destid.i, align 4
  %65 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %hopcount.i, align 2
  %call.i88 = call i32 @rio_mport_write_config_32(ptr noundef %62, i16 noundef zeroext %64, i8 noundef zeroext %66, i32 noundef %add28, i32 noundef 1342177280) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0106, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %67 = ptrtoint ptr %swpinfo to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %swpinfo, align 4
  %and31 = and i32 %68, 255
  %shl = shl nuw i32 1, %and31
  %69 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %net.i, align 8
  %hport.i90 = getelementptr inbounds %struct.rio_net, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %hport.i90 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hport.i90, align 8
  %73 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %destid.i, align 4
  %75 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %hopcount.i, align 2
  %call.i93 = call i32 @rio_mport_write_config_32(ptr noundef %72, i16 noundef zeroext %74, i8 noundef zeroext %76, i32 noundef 262664, i32 noundef %shl) #4
  %77 = ptrtoint ptr %em_efptr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %em_efptr, align 4
  %add34 = add i32 %78, 52
  %79 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %net.i, align 8
  %hport.i95 = getelementptr inbounds %struct.rio_net, ptr %80, i32 0, i32 4
  %81 = ptrtoint ptr %hport.i95 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hport.i95, align 8
  %83 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %destid.i, align 4
  %85 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %hopcount.i, align 2
  %call.i98 = call i32 @rio_mport_write_config_32(ptr noundef %82, i16 noundef zeroext %84, i8 noundef zeroext %86, i32 noundef %add34, i32 noundef 0) #4
  %phys_efptr36 = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 16
  %87 = ptrtoint ptr %phys_efptr36 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %phys_efptr36, align 4
  %add37 = add i32 %88, 32
  %89 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %net.i, align 8
  %hport.i100 = getelementptr inbounds %struct.rio_net, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %hport.i100 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hport.i100, align 8
  %93 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %destid.i, align 4
  %95 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %hopcount.i, align 2
  %call.i103 = call i32 @rio_mport_write_config_32(ptr noundef %92, i16 noundef zeroext %94, i8 noundef zeroext %96, i32 noundef %add37, i32 noundef 36352) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idtg3_em_handler(ptr nocapture noundef readonly %rdev, i8 noundef zeroext %pnum) #3 align 64 {
entry:
  %err_status = alloca i32, align 4
  %rval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err_status) #4
  %0 = ptrtoint ptr %err_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %err_status, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rval) #4
  %1 = ptrtoint ptr %rval to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rval, align 4, !annotation !59
  %phys_efptr = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 16
  %2 = ptrtoint ptr %phys_efptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phys_efptr, align 4
  %conv = zext i8 %pnum to i32
  %phys_rmap = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 17
  %4 = ptrtoint ptr %phys_rmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %phys_rmap, align 8
  %mul = shl nuw nsw i32 %conv, 5
  %mul1 = mul i32 %mul, %5
  %add = add i32 %3, 88
  %add2 = add i32 %add, %mul1
  %net.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 2
  %6 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i, align 8
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hport.i, align 8
  %destid.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 24
  %10 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %destid.i, align 4
  %hopcount.i = getelementptr inbounds %struct.rio_dev, ptr %rdev, i32 0, i32 25
  %12 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hopcount.i, align 2
  %call.i = call i32 @rio_mport_read_config_32(ptr noundef %9, i16 noundef zeroext %11, i8 noundef zeroext %13, i32 noundef %add2, ptr noundef nonnull %err_status) #4
  %14 = ptrtoint ptr %err_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %err_status, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %and3 = and i32 %15, 65792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or.cond = or i1 %tobool.not, %tobool4.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul7 = shl nuw nsw i32 %conv, 8
  %add8 = add nuw nsw i32 %mul7, 65792
  %16 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %net.i, align 8
  %hport.i29 = getelementptr inbounds %struct.rio_net, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %hport.i29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hport.i29, align 8
  %20 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %destid.i, align 4
  %22 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hopcount.i, align 2
  %call.i32 = call i32 @rio_mport_read_config_32(ptr noundef %19, i16 noundef zeroext %21, i8 noundef zeroext %23, i32 noundef %add8, ptr noundef nonnull %rval) #4
  %24 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rval, align 4
  %or = or i32 %25, 33554432
  %26 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net.i, align 8
  %hport.i34 = getelementptr inbounds %struct.rio_net, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %hport.i34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hport.i34, align 8
  %30 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %destid.i, align 4
  %32 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hopcount.i, align 2
  %call.i37 = call i32 @rio_mport_write_config_32(ptr noundef %29, i16 noundef zeroext %31, i8 noundef zeroext %33, i32 noundef %add8, i32 noundef %or) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 2147480) #4
  %35 = ptrtoint ptr %rval to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rval, align 4
  %37 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %net.i, align 8
  %hport.i39 = getelementptr inbounds %struct.rio_net, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %hport.i39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hport.i39, align 8
  %41 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %destid.i, align 4
  %43 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %hopcount.i, align 2
  %call.i42 = call i32 @rio_mport_write_config_32(ptr noundef %40, i16 noundef zeroext %42, i8 noundef zeroext %44, i32 noundef %add8, i32 noundef %36) #4
  call void @msleep(i32 noundef 500) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rval) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err_status) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_write_config_32(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_read_config_32(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/rapidio/switches/idt_gen3.c", i32 368, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @idtg3_exit.__UNIQUE_ID_ddebug235, !1, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/rapidio/switches/idt_gen3.c", i32 370, i32 2}
!8 = !{ptr @idtg3_exit.__UNIQUE_ID_ddebug236, !7, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_idt_gen3__237_373_idtg3_init6, !10, !"__initcall__kmod_idt_gen3__237_373_idtg3_init6", i1 false, i1 false}
!10 = !{!"../drivers/rapidio/switches/idt_gen3.c", i32 373, i32 1}
!11 = !{ptr @__exitcall_idtg3_exit, !12, !"__exitcall_idtg3_exit", i1 false, i1 false}
!12 = !{!"../drivers/rapidio/switches/idt_gen3.c", i32 374, i32 1}
!13 = !{ptr @__UNIQUE_ID_description238, !14, !"__UNIQUE_ID_description238", i1 false, i1 false}
!14 = !{!"../drivers/rapidio/switches/idt_gen3.c", i32 376, i32 1}
!15 = !{ptr @__UNIQUE_ID_author239, !16, !"__UNIQUE_ID_author239", i1 false, i1 false}
!16 = !{!"../drivers/rapidio/switches/idt_gen3.c", i32 377, i32 1}
!17 = !{ptr @__UNIQUE_ID_file240, !18, !"__UNIQUE_ID_file240", i1 false, i1 false}
!18 = !{!"../drivers/rapidio/switches/idt_gen3.c", i32 378, i32 1}
!19 = !{ptr @__UNIQUE_ID_license241, !18, !"__UNIQUE_ID_license241", i1 false, i1 false}
!20 = !{ptr @idtg3_driver, !21, !"idtg3_driver", i1 false, i1 false}
!21 = !{!"../drivers/rapidio/switches/idt_gen3.c", i32 353, i32 26}
!22 = !{ptr @idtg3_id_table, !23, !"idtg3_id_table", i1 false, i1 false}
!23 = !{!"../drivers/rapidio/switches/idt_gen3.c", i32 347, i32 35}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/rapidio/switches/idt_gen3.c", i32 272, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @idtg3_probe.__UNIQUE_ID_ddebug231, !25, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!28 = !{ptr @idtg3_switch_ops, !29, !"idtg3_switch_ops", i1 false, i1 false}
!29 = !{!"../drivers/rapidio/switches/idt_gen3.c", i32 261, i32 30}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/rapidio/switches/idt_gen3.c", i32 44, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @idtg3_route_add_entry.__UNIQUE_ID_ddebug229, !31, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/rapidio/switches/idt_gen3.c", i32 166, i32 2}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @idtg3_em_init.__UNIQUE_ID_ddebug230, !35, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/rapidio/switches/idt_gen3.c", i32 298, i32 2}
!40 = !{ptr @idtg3_remove.__UNIQUE_ID_ddebug232, !39, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rapidio/switches/idt_gen3.c", i32 320, i32 2}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @idtg3_shutdown.__UNIQUE_ID_ddebug233, !42, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rapidio/switches/idt_gen3.c", i32 342, i32 3}
!47 = !{ptr @idtg3_shutdown.__UNIQUE_ID_ddebug234, !46, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2148961345, i64 2148961350, i64 2148961363, i64 2148961407, i64 2148961441, i64 2148961462}
!58 = !{i8 0, i8 2}
!59 = !{!"auto-init"}
