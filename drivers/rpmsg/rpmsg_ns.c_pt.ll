; ModuleID = '/llk/IR_all_yes/drivers/rpmsg/rpmsg_ns.c_pt.bc'
source_filename = "../drivers/rpmsg/rpmsg_ns.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rpmsg_ns_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_rpmsg_ns_register_device\09\09\09\09"
module asm "\09.long\09__crc_rpmsg_ns_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpmsg_ns_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22rpmsg_ns_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_rpmsg_ns_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rpmsg_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rpmsg_device = type { %struct.device, %struct.rpmsg_device_id, ptr, i32, i32, ptr, i8, i8, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.rpmsg_device_id = type { [32 x i8], i32 }
%struct.rpmsg_channel_info = type { [32 x i8], i32, i32 }
%struct.rpmsg_ns_msg = type { [32 x i8], i32, i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rpmsg_ns\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_rpmsg_ns_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpmsg_ns_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_rpmsg_ns_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpmsg_ns_register_device to i32), ptr @__kstrtab_rpmsg_ns_register_device, ptr @__kstrtabns_rpmsg_ns_register_device }, section "___ksymtab+rpmsg_ns_register_device", align 4
@__initcall__kmod_rpmsg_ns__224_115_rpmsg_ns_init2 = internal global ptr @rpmsg_ns_init, section ".initcall2.init", align 4
@__exitcall_rpmsg_ns_exit = internal global ptr @rpmsg_ns_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description225 = internal constant [60 x i8] c"rpmsg_ns.description=Name service announcement rpmsg driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author226 = internal constant [59 x i8] c"rpmsg_ns.author=Arnaud Pouliquen <arnaud.pouliquen@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias227 = internal constant [30 x i8] c"rpmsg_ns.alias=rpmsg:rpmsg_ns\00", section ".modinfo", align 1
@__UNIQUE_ID_file228 = internal constant [37 x i8] c"rpmsg_ns.file=drivers/rpmsg/rpmsg_ns\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [24 x i8] c"rpmsg_ns.license=GPL v2\00", section ".modinfo", align 1
@rpmsg_ns_driver = internal global { %struct.rpmsg_driver, [36 x i8] } { %struct.rpmsg_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr @rpmsg_ns_probe, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rpmsg_ns_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register rpmsg driver\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rpmsg_ns_init\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/rpmsg/rpmsg_ns.c\00", [39 x i8] zeroinitializer }, align 32
@rpmsg_ns_init._entry_ptr = internal global ptr @rpmsg_ns_init._entry, section ".printk_index", align 4
@rpmsg_ns_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 92, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create the ns ept\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rpmsg_ns_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpmsg_ns_probe._entry_ptr = internal global ptr @rpmsg_ns_probe._entry, section ".printk_index", align 4
@rpmsg_ns_cb.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rpmsg_ns_cb\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NS announcement: \00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@rpmsg_ns_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.3, i32 48, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"malformed ns msg (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@rpmsg_ns_cb._entry_ptr = internal global ptr @rpmsg_ns_cb._entry, section ".printk_index", align 4
@rpmsg_ns_cb._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.3, i32 61, ptr @.str.14, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%sing channel %s addr 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rpmsg_ns_cb._entry_ptr.15 = internal global ptr @rpmsg_ns_cb._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"destroy\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"creat\00", [26 x i8] zeroinitializer }, align 32
@rpmsg_ns_cb._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.8, ptr @.str.3, i32 66, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rpmsg_destroy_channel failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rpmsg_ns_cb._entry_ptr.20 = internal global ptr @rpmsg_ns_cb._entry.18, section ".printk_index", align 4
@rpmsg_ns_cb._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.3, i32 70, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rpmsg_create_channel failed\0A\00", [35 x i8] zeroinitializer }, align 32
@rpmsg_ns_cb._entry_ptr.23 = internal global ptr @rpmsg_ns_cb._entry.21, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 23, i32 25 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"rpmsg_ns_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 100, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 111, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 92, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 43, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 48, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 59, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 66, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [28 x i8] c"../drivers/rpmsg/rpmsg_ns.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 70, i32 4 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_alias227, ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__exitcall_rpmsg_ns_exit, ptr @__initcall__kmod_rpmsg_ns__224_115_rpmsg_ns_init2, ptr @__ksymtab_rpmsg_ns_register_device, ptr @rpmsg_ns_cb._entry, ptr @rpmsg_ns_cb._entry.12, ptr @rpmsg_ns_cb._entry.18, ptr @rpmsg_ns_cb._entry.21, ptr @rpmsg_ns_cb._entry_ptr, ptr @rpmsg_ns_cb._entry_ptr.15, ptr @rpmsg_ns_cb._entry_ptr.20, ptr @rpmsg_ns_cb._entry_ptr.23, ptr @rpmsg_ns_init._entry, ptr @rpmsg_ns_init._entry_ptr, ptr @rpmsg_ns_probe._entry, ptr @rpmsg_ns_probe._entry_ptr, ptr @.str, ptr @rpmsg_ns_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_ns_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_ns_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_ns_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_ns_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_ns_cb._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_ns_cb._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpmsg_ns_cb._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpmsg_ns_register_device(ptr noundef %rpdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %id, ptr @.str, i32 9)
  %driver_override = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 2
  %1 = ptrtoint ptr %driver_override to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str, ptr %driver_override, align 4
  %src = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 3
  %2 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 53, ptr %src, align 8
  %dst = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 4
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 53, ptr %dst, align 4
  %call1 = tail call i32 @rpmsg_register_device(ptr noundef %rpdev) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_ns_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_rpmsg_driver(ptr noundef nonnull @rpmsg_ns_driver, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpmsg_ns_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_rpmsg_driver(ptr noundef nonnull @rpmsg_ns_driver) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_rpmsg_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_ns_probe(ptr noundef %rpdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rpmsg_create_ept(ptr noundef %rpdev, ptr noundef nonnull @rpmsg_ns_cb, ptr noundef null, [10 x i32] [i32 1851878757, i32 1601398130, i32 1986618213, i32 0, i32 0, i32 0, i32 0, i32 0, i32 53, i32 53]) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %rpdev, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ept = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 5
  %0 = ptrtoint ptr %ept to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %ept, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpmsg_create_ept(ptr noundef, ptr noundef, ptr noundef, [10 x i32]) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpmsg_ns_cb(ptr noundef %rpdev, ptr noundef %data, i32 noundef %len, ptr nocapture noundef readnone %priv, i32 noundef %src) #0 align 64 {
entry:
  %chinfo = alloca %struct.rpmsg_channel_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %chinfo) #6
  %parent = getelementptr inbounds %struct.device, ptr %rpdev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rpmsg_ns_cb.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rpmsg_ns_cb, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @print_hex_dump(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %data, i32 noundef %len, i1 noundef zeroext true) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %len)
  %cmp.not = icmp eq i32 %len, 40
  br i1 %cmp.not, label %if.end8, label %do.end7

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %len) #9
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %arrayidx = getelementptr [32 x i8], ptr %data, i32 0, i32 31
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %call12 = call ptr @strncpy(ptr noundef nonnull %chinfo, ptr noundef %data, i32 noundef 32)
  %src13 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo, i32 0, i32 1
  %3 = ptrtoint ptr %src13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %src13, align 4
  %addr = getelementptr inbounds %struct.rpmsg_ns_msg, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %addr, align 1
  %tobool.not.i = icmp eq ptr %rpdev, null
  br i1 %tobool.not.i, label %rpmsg32_to_cpu.exit.thread, label %if.else.i69

rpmsg32_to_cpu.exit.thread:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %flags82 = getelementptr inbounds %struct.rpmsg_ns_msg, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %flags82 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %flags82, align 1
  br label %rpmsg32_to_cpu.exit71

if.else.i69:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %little_endian.i = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 7
  %8 = ptrtoint ptr %little_endian.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %little_endian.i, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not.i = icmp eq i8 %9, 0
  %10 = call i32 @llvm.bswap.i32(i32 %5) #6
  %retval.0.i.i = select i1 %tobool2.not.i, i32 %5, i32 %10
  %flags = getelementptr inbounds %struct.rpmsg_ns_msg, ptr %data, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %flags, align 1
  %13 = call i32 @llvm.bswap.i32(i32 %12) #6
  %retval.0.i.i68 = select i1 %tobool2.not.i, i32 %12, i32 %13
  br label %rpmsg32_to_cpu.exit71

rpmsg32_to_cpu.exit71:                            ; preds = %if.else.i69, %rpmsg32_to_cpu.exit.thread
  %retval.0.i.i.sink = phi i32 [ %5, %rpmsg32_to_cpu.exit.thread ], [ %retval.0.i.i, %if.else.i69 ]
  %flags84 = phi ptr [ %flags82, %rpmsg32_to_cpu.exit.thread ], [ %flags, %if.else.i69 ]
  %retval.0.i70 = phi i32 [ %7, %rpmsg32_to_cpu.exit.thread ], [ %retval.0.i.i68, %if.else.i69 ]
  %14 = getelementptr inbounds %struct.rpmsg_channel_info, ptr %chinfo, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i.i.sink, ptr %14, align 4
  %and = and i32 %retval.0.i70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool19.not, ptr @.str.17, ptr @.str.16
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond, ptr noundef %data, i32 noundef %retval.0.i.i.sink) #9
  %16 = ptrtoint ptr %flags84 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %flags84, align 1
  br i1 %tobool.not.i, label %rpmsg32_to_cpu.exit71.rpmsg32_to_cpu.exit78_crit_edge, label %if.else.i76

rpmsg32_to_cpu.exit71.rpmsg32_to_cpu.exit78_crit_edge: ; preds = %rpmsg32_to_cpu.exit71
  call void @__sanitizer_cov_trace_pc() #8
  br label %rpmsg32_to_cpu.exit78

if.else.i76:                                      ; preds = %rpmsg32_to_cpu.exit71
  call void @__sanitizer_cov_trace_pc() #8
  %little_endian.i73 = getelementptr inbounds %struct.rpmsg_device, ptr %rpdev, i32 0, i32 7
  %18 = ptrtoint ptr %little_endian.i73 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %little_endian.i73, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool2.not.i74 = icmp eq i8 %19, 0
  %20 = call i32 @llvm.bswap.i32(i32 %17) #6
  %retval.0.i.i75 = select i1 %tobool2.not.i74, i32 %17, i32 %20
  br label %rpmsg32_to_cpu.exit78

rpmsg32_to_cpu.exit78:                            ; preds = %if.else.i76, %rpmsg32_to_cpu.exit71.rpmsg32_to_cpu.exit78_crit_edge
  %retval.0.i77 = phi i32 [ %retval.0.i.i75, %if.else.i76 ], [ %17, %rpmsg32_to_cpu.exit71.rpmsg32_to_cpu.exit78_crit_edge ]
  %and25 = and i32 %retval.0.i77, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %rpmsg32_to_cpu.exit78
  %call28 = call i32 @rpmsg_release_channel(ptr noundef %rpdev, ptr noundef nonnull %chinfo) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then27.cleanup_crit_edge, label %do.end33

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end33:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %call28) #9
  br label %cleanup

if.else:                                          ; preds = %rpmsg32_to_cpu.exit78
  %call35 = call ptr @rpmsg_create_channel(ptr noundef %rpdev, ptr noundef nonnull %chinfo) #6
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %do.end40, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end40:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.22) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.else.cleanup_crit_edge, %do.end33, %if.then27.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ -22, %do.end7 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %do.end40 ], [ 0, %if.then27.cleanup_crit_edge ], [ 0, %do.end33 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %chinfo) #6
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpmsg_release_channel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpmsg_create_channel(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_rpmsg_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !47, !48, !50, !51, !52, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/rpmsg/rpmsg_ns.c", i32 23, i32 25}
!2 = !{ptr @__ksymtab_rpmsg_ns_register_device, !3, !"__ksymtab_rpmsg_ns_register_device", i1 false, i1 false}
!3 = !{!"../drivers/rpmsg/rpmsg_ns.c", i32 30, i32 1}
!4 = !{ptr @__initcall__kmod_rpmsg_ns__224_115_rpmsg_ns_init2, !5, !"__initcall__kmod_rpmsg_ns__224_115_rpmsg_ns_init2", i1 false, i1 false}
!5 = !{!"../drivers/rpmsg/rpmsg_ns.c", i32 115, i32 1}
!6 = !{ptr @__exitcall_rpmsg_ns_exit, !7, !"__exitcall_rpmsg_ns_exit", i1 false, i1 false}
!7 = !{!"../drivers/rpmsg/rpmsg_ns.c", i32 121, i32 1}
!8 = !{ptr @__UNIQUE_ID_description225, !9, !"__UNIQUE_ID_description225", i1 false, i1 false}
!9 = !{!"../drivers/rpmsg/rpmsg_ns.c", i32 123, i32 1}
!10 = !{ptr @__UNIQUE_ID_author226, !11, !"__UNIQUE_ID_author226", i1 false, i1 false}
!11 = !{!"../drivers/rpmsg/rpmsg_ns.c", i32 124, i32 1}
!12 = !{ptr @__UNIQUE_ID_alias227, !13, !"__UNIQUE_ID_alias227", i1 false, i1 false}
!13 = !{!"../drivers/rpmsg/rpmsg_ns.c", i32 125, i32 1}
!14 = !{ptr @__UNIQUE_ID_file228, !15, !"__UNIQUE_ID_file228", i1 false, i1 false}
!15 = !{!"../drivers/rpmsg/rpmsg_ns.c", i32 126, i32 1}
!16 = !{ptr @__UNIQUE_ID_license229, !15, !"__UNIQUE_ID_license229", i1 false, i1 false}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rpmsg/rpmsg_ns.c", i32 111, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rpmsg_ns_init._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @rpmsg_ns_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @rpmsg_ns_driver, !24, !"rpmsg_ns_driver", i1 false, i1 false}
!24 = !{!"../drivers/rpmsg/rpmsg_ns.c", i32 100, i32 28}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rpmsg/rpmsg_ns.c", i32 92, i32 3}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rpmsg_ns_probe._entry, !26, !"_entry", i1 false, i1 false}
!31 = !{ptr @rpmsg_ns_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rpmsg/rpmsg_ns.c", i32 43, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rpmsg_ns_cb.__UNIQUE_ID_ddebug223, !33, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!36 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rpmsg/rpmsg_ns.c", i32 48, i32 3}
!39 = !{ptr @rpmsg_ns_cb._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @rpmsg_ns_cb._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rpmsg/rpmsg_ns.c", i32 59, i32 2}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rpmsg_ns_cb._entry.12, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @rpmsg_ns_cb._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/rpmsg/rpmsg_ns.c", i32 66, i32 4}
!50 = !{ptr @rpmsg_ns_cb._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @rpmsg_ns_cb._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/rpmsg/rpmsg_ns.c", i32 70, i32 4}
!54 = !{ptr @rpmsg_ns_cb._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @rpmsg_ns_cb._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148278793, i64 2148278798, i64 2148278811, i64 2148278855, i64 2148278889, i64 2148278910}
!66 = !{i8 0, i8 2}
