; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/comedi_bond.c_pt.bc'
source_filename = "../drivers/comedi/drivers/comedi_bond.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.comedi_bond_private = type { [256 x i8], ptr, i32, i32 }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.bonded_device = type { ptr, i32, i32, i32 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_comedi_bond__230_343_bonding_driver_init6 = internal global ptr @bonding_driver_init, section ".initcall6.init", align 4
@bonding_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @bonding_attach, ptr @bonding_detach, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_bonding_driver_exit = internal global ptr @bonding_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [36 x i8] c"comedi_bond.author=Calin A. Culianu\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [106 x i8] c"comedi_bond.description=comedi_bond: A driver for COMEDI to bond multiple COMEDI devices together as one.\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [52 x i8] c"comedi_bond.file=drivers/comedi/drivers/comedi_bond\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [24 x i8] c"comedi_bond.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"comedi_bond\00", [20 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@bonding_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 309, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: %s attached, %u channels from %u devices\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bonding_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/comedi/drivers/comedi_bond.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bonding_attach._entry_ptr = internal global ptr @bonding_attach._entry, section ".printk_index", align 4
@do_dev_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 191, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Minor %d is invalid!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"do_dev_config\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@do_dev_config._entry_ptr = internal global ptr @do_dev_config._entry, section ".printk_index", align 4
@do_dev_config._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 196, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot bond this driver to itself!\0A\00", [60 x i8] zeroinitializer }, align 32
@do_dev_config._entry_ptr.11 = internal global ptr @do_dev_config._entry.9, section ".printk_index", align 4
@do_dev_config._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.3, i32 201, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Minor %d specified more than once!\0A\00", [60 x i8] zeroinitializer }, align 32
@do_dev_config._entry_ptr.14 = internal global ptr @do_dev_config._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"/dev/comedi%d\00", [18 x i8] zeroinitializer }, align 32
@do_dev_config._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.3, i32 212, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Minor %u could not be opened\0A\00", [34 x i8] zeroinitializer }, align 32
@do_dev_config._entry_ptr.18 = internal global ptr @do_dev_config._entry.16, section ".printk_index", align 4
@do_dev_config._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str.3, i32 223, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"comedi_get_n_channels() returned %d on minor %u subdev %d!\0A\00", [36 x i8] zeroinitializer }, align 32
@do_dev_config._entry_ptr.21 = internal global ptr @do_dev_config._entry.19, section ".printk_index", align 4
@do_dev_config._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.7, ptr @.str.3, i32 247, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Could not allocate memory. Out of memory?\0A\00", [53 x i8] zeroinitializer }, align 32
@do_dev_config._entry_ptr.24 = internal global ptr @do_dev_config._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%u:%u \00", [25 x i8] zeroinitializer }, align 32
@do_dev_config._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.7, ptr @.str.3, i32 266, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No channels found!\0A\00", [44 x i8] zeroinitializer }, align 32
@do_dev_config._entry_ptr.28 = internal global ptr @do_dev_config._entry.26, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 28]
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"bonding_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 337, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 338, i32 17 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 306, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 190, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 195, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 200, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 205, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 211, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 221, i32 5 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 246, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 257, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [40 x i8] c"../drivers/comedi/drivers/comedi_bond.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 266, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_bonding_driver_exit, ptr @__initcall__kmod_comedi_bond__230_343_bonding_driver_init6, ptr @bonding_attach._entry, ptr @bonding_attach._entry_ptr, ptr @bonding_driver_exit, ptr @do_dev_config._entry, ptr @do_dev_config._entry.12, ptr @do_dev_config._entry.16, ptr @do_dev_config._entry.19, ptr @do_dev_config._entry.22, ptr @do_dev_config._entry.26, ptr @do_dev_config._entry.9, ptr @do_dev_config._entry_ptr, ptr @do_dev_config._entry_ptr.11, ptr @do_dev_config._entry_ptr.14, ptr @do_dev_config._entry_ptr.18, ptr @do_dev_config._entry_ptr.21, ptr @do_dev_config._entry_ptr.24, ptr @do_dev_config._entry_ptr.28, ptr @bonding_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bonding_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bonding_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_dev_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_dev_config._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_dev_config._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_dev_config._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_dev_config._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_dev_config._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_dev_config._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bonding_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @bonding_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bonding_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @comedi_driver_unregister(ptr noundef nonnull @bonding_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bonding_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  %devs_opened.i = alloca [2 x i32], align 8
  %file.i = alloca [18 x i8], align 1
  %buf.i = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 268) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %devs_opened.i) #10
  %2 = ptrtoint ptr %devs_opened.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %devs_opened.i, align 8
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %1, align 4
  %4 = getelementptr inbounds [18 x i8], ptr %file.i, i32 0, i32 17
  %minor7.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 5
  %nchans51.i = getelementptr inbounds %struct.comedi_bond_private, ptr %1, i32 0, i32 3
  %devs53.i = getelementptr inbounds %struct.comedi_bond_private, ptr %1, i32 0, i32 1
  %ndevs.i = getelementptr inbounds %struct.comedi_bond_private, ptr %1, i32 0, i32 2
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.end
  %i.0158.i = phi i32 [ 0, %if.end ], [ %inc81.i, %for.inc.i.land.rhs.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0158.i)
  %tobool.not.i = icmp eq i32 %i.0158.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.for.body.i_crit_edge, label %lor.rhs.i

land.rhs.i.for.body.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

lor.rhs.i:                                        ; preds = %land.rhs.i
  %arrayidx1.i = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 %i.0158.i
  %5 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.i = icmp eq i32 %6, 0
  br i1 %tobool2.not.i, label %lor.rhs.i.for.end.i_crit_edge, label %lor.rhs.i.for.body.i_crit_edge

lor.rhs.i.for.body.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

lor.rhs.i.for.end.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %lor.rhs.i.for.body.i_crit_edge, %land.rhs.i.for.body.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %file.i) #10
  %arrayidx4.i = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 %i.0158.i
  %7 = call ptr @memset(ptr %file.i, i32 255, i32 18)
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %9)
  %10 = icmp ugt i32 %9, 47
  br i1 %10, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef %9) #13
  br label %cleanup.thread.i

if.end.i:                                         ; preds = %for.body.i
  %13 = ptrtoint ptr %minor7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %minor7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %14)
  %cmp8.i = icmp eq i32 %9, %14
  br i1 %cmp8.i, label %do.end12.i, label %if.end14.i

do.end12.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev13.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %15 = ptrtoint ptr %class_dev13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %class_dev13.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.10) #13
  br label %cleanup.thread.i

if.end14.i:                                       ; preds = %if.end.i
  %call.i = call i32 @_test_and_set_bit(i32 noundef %9, ptr noundef nonnull %devs_opened.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool15.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool15.not.i, label %if.end21.i, label %do.end19.i

do.end19.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev20.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %17 = ptrtoint ptr %class_dev20.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev20.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.13, i32 noundef %9) #13
  br label %cleanup.thread.i

if.end21.i:                                       ; preds = %if.end14.i
  %call23.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %file.i, i32 noundef 18, ptr noundef nonnull @.str.15, i32 noundef %9) #10
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %4, align 1
  %call26.i = call ptr @comedi_open(ptr noundef nonnull %file.i) #10
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %do.end31.i, label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end21.i
  %call34155.i = call i32 @comedi_find_subdevice_by_type(ptr noundef nonnull %call26.i, i32 noundef 5, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call34155.i)
  %cmp35156.i = icmp sgt i32 %call34155.i, -1
  br i1 %cmp35156.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.for.inc.i_crit_edge

while.cond.preheader.i.for.inc.i_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

do.end31.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev32.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %20 = ptrtoint ptr %class_dev32.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %class_dev32.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.17, i32 noundef %9) #13
  br label %cleanup.thread.i

while.body.i:                                     ; preds = %if.end62.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call34157.i = phi i32 [ %call34.i, %if.end62.i.while.body.i_crit_edge ], [ %call34155.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call36.i = call i32 @comedi_get_n_channels(ptr noundef nonnull %call26.i, i32 noundef %call34157.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call36.i)
  %cmp37.i = icmp slt i32 %call36.i, 1
  br i1 %cmp37.i, label %do.end41.i, label %if.end43.i

do.end41.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev42.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %22 = ptrtoint ptr %class_dev42.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %class_dev42.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.20, i32 noundef %call36.i, i32 noundef %9, i32 noundef %call34157.i) #13
  br label %cleanup.thread.i

if.end43.i:                                       ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3264, i32 noundef 16) #14
  %tobool45.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool45.not.i, label %if.end43.i.cleanup.thread.i_crit_edge, label %if.end47.i

if.end43.i.cleanup.thread.i_crit_edge:            ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end47.i:                                       ; preds = %if.end43.i
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call26.i, ptr %call7.i.i, align 8
  %minor49.i = getelementptr inbounds %struct.bonded_device, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %minor49.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %9, ptr %minor49.i, align 4
  %subdev.i = getelementptr inbounds %struct.bonded_device, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %subdev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call34157.i, ptr %subdev.i, align 8
  %nchans50.i = getelementptr inbounds %struct.bonded_device, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %nchans50.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call36.i, ptr %nchans50.i, align 4
  %29 = ptrtoint ptr %nchans51.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nchans51.i, align 4
  %add52.i = add i32 %30, %call36.i
  store i32 %add52.i, ptr %nchans51.i, align 4
  %31 = ptrtoint ptr %devs53.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %devs53.i, align 4
  %33 = ptrtoint ptr %ndevs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ndevs.i, align 4
  %add54.i = shl i32 %34, 2
  %mul.i = add i32 %add54.i, 4
  %call55.i = call noalias ptr @krealloc(ptr noundef %32, i32 noundef %mul.i, i32 noundef 3264) #15
  %tobool56.not.i = icmp eq ptr %call55.i, null
  br i1 %tobool56.not.i, label %do.end60.i, label %if.end62.i

do.end60.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev61.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %35 = ptrtoint ptr %class_dev61.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %class_dev61.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.23) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup.thread.i

if.end62.i:                                       ; preds = %if.end47.i
  %37 = ptrtoint ptr %devs53.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call55.i, ptr %devs53.i, align 4
  %38 = ptrtoint ptr %ndevs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ndevs.i, align 4
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %ndevs.i, align 4
  %arrayidx66.i = getelementptr ptr, ptr %call55.i, i32 %39
  %40 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call7.i.i, ptr %arrayidx66.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf.i) #10
  %41 = call ptr @memset(ptr %buf.i, i32 255, i32 20)
  %42 = ptrtoint ptr %minor49.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %minor49.i, align 4
  %44 = ptrtoint ptr %subdev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %subdev.i, align 8
  %call70.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 20, ptr noundef nonnull @.str.25, i32 noundef %43, i32 noundef %45) #10
  %call74.i = call i32 @strlcat(ptr noundef %1, ptr noundef nonnull %buf.i, i32 noundef 256) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf.i) #10
  %add.i = add nuw i32 %call34157.i, 1
  %call34.i = call i32 @comedi_find_subdevice_by_type(ptr noundef nonnull %call26.i, i32 noundef 5, i32 noundef %add.i) #10
  %cmp35.i = icmp sgt i32 %call34.i, -1
  br i1 %cmp35.i, label %if.end62.i.while.body.i_crit_edge, label %if.end62.i.for.inc.i_crit_edge

if.end62.i.for.inc.i_crit_edge:                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end62.i.while.body.i_crit_edge:                ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.thread.i:                                 ; preds = %do.end60.i, %if.end43.i.cleanup.thread.i_crit_edge, %do.end41.i, %do.end31.i, %do.end19.i, %do.end12.i, %do.end.i
  %retval.1.ph.i = phi i32 [ -19, %do.end31.i ], [ -12, %do.end60.i ], [ -22, %do.end41.i ], [ -22, %do.end19.i ], [ -22, %do.end12.i ], [ -22, %do.end.i ], [ -12, %if.end43.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %file.i) #10
  br label %do_dev_config.exit.thread

for.inc.i:                                        ; preds = %if.end62.i.for.inc.i_crit_edge, %while.cond.preheader.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %file.i) #10
  %inc81.i = add nuw nsw i32 %i.0158.i, 1
  %exitcond.not.i = icmp eq i32 %inc81.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %lor.rhs.i.for.end.i_crit_edge
  %46 = ptrtoint ptr %nchans51.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nchans51.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool83.not.i = icmp eq i32 %47, 0
  br i1 %tobool83.not.i, label %do.end87.i, label %if.end4

do.end87.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %class_dev88.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %48 = ptrtoint ptr %class_dev88.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %class_dev88.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.27) #13
  br label %do_dev_config.exit.thread

do_dev_config.exit.thread:                        ; preds = %do.end87.i, %cleanup.thread.i
  %retval.2.i.ph = phi i32 [ %retval.1.ph.i, %cleanup.thread.i ], [ -22, %do.end87.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %devs_opened.i) #10
  br label %cleanup

if.end4:                                          ; preds = %for.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %devs_opened.i) #10
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %50 = ptrtoint ptr %board_name to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call, ptr %board_name, align 4
  %call5 = call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %51 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 5, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 4
  %54 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 196608, ptr %subdev_flags, align 4
  %nchans = getelementptr inbounds %struct.comedi_bond_private, ptr %call, i32 0, i32 3
  %55 = ptrtoint ptr %nchans to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nchans, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 3
  %57 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 13
  %58 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 15
  %59 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %insn_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 20
  %60 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @bonding_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr inbounds %struct.comedi_subdevice, ptr %52, i32 0, i32 21
  %61 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @bonding_dio_insn_config, ptr %insn_config, align 4
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %62 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %class_dev, align 4
  %driver = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 1
  %64 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver, align 4
  %driver_name = getelementptr inbounds %struct.comedi_driver, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %driver_name to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver_name, align 4
  %68 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %board_name, align 4
  %70 = load i32, ptr %nchans, align 4
  %ndevs = getelementptr inbounds %struct.comedi_bond_private, ptr %call, i32 0, i32 2
  %71 = ptrtoint ptr %ndevs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ndevs, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.1, ptr noundef %67, ptr noundef %69, i32 noundef %70, i32 noundef %72) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %do_dev_config.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %retval.2.i.ph, %do_dev_config.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bonding_detach(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %devs_closed = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %land.lhs.true

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %devs = getelementptr inbounds %struct.comedi_bond_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end14_crit_edge, label %if.then

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %devs_closed) #10
  %4 = ptrtoint ptr %devs_closed to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %devs_closed, align 8
  %ndevs = getelementptr inbounds %struct.comedi_bond_private, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %ndevs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ndevs, align 4
  %dec25 = add i32 %6, -1
  store i32 %dec25, ptr %ndevs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not26 = icmp eq i32 %6, 0
  br i1 %tobool2.not26, label %if.then.while.end_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.then.while.body_crit_edge
  %dec27 = phi i32 [ %dec, %cleanup.while.body_crit_edge ], [ %dec25, %if.then.while.body_crit_edge ]
  %7 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devs, align 4
  %arrayidx = getelementptr ptr, ptr %8, i32 %dec27
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %while.body
  %minor = getelementptr inbounds %struct.bonded_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %minor, align 4
  %call = call i32 @_test_and_set_bit(i32 noundef %12, ptr noundef nonnull %devs_closed) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %call10 = call i32 @comedi_close(ptr noundef %14) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  call void @kfree(ptr noundef nonnull %10) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %while.body.cleanup_crit_edge
  %15 = ptrtoint ptr %ndevs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ndevs, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %ndevs, align 4
  %tobool2.not = icmp eq i32 %16, 0
  br i1 %tobool2.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then.while.end_crit_edge
  %17 = ptrtoint ptr %devs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %devs, align 4
  call void @kfree(ptr noundef %18) #10
  %19 = ptrtoint ptr %devs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %devs, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %devs_closed) #10
  br label %if.end14

if.end14:                                         ; preds = %while.end, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bonding_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef %data) #2 align 64 {
entry:
  %b_data_bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %arrayidx1 = getelementptr i32, ptr %data, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %6 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chanspec, align 4
  %and = and i32 %7, 65535
  %nchans = getelementptr inbounds %struct.comedi_bond_private, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %nchans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nchans, align 4
  %sub = sub i32 %9, %and
  %10 = tail call i32 @llvm.umin.i32(i32 %sub, i32 32)
  %devs2 = getelementptr inbounds %struct.comedi_bond_private, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %devs2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %devs2, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %n_left.0 = phi i32 [ %10, %entry ], [ %n_left.3.ph, %do.cond.do.body_crit_edge ]
  %n_done.0 = phi i32 [ 0, %entry ], [ %n_done.3.ph, %do.cond.do.body_crit_edge ]
  %base_chan.0 = phi i32 [ %and, %entry ], [ %base_chan.3.ph, %do.cond.do.body_crit_edge ]
  %devs.0 = phi ptr [ %12, %entry ], [ %incdec.ptr, %do.cond.do.body_crit_edge ]
  %incdec.ptr = getelementptr ptr, ptr %devs.0, i32 1
  %13 = ptrtoint ptr %devs.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %devs.0, align 4
  %nchans3 = getelementptr inbounds %struct.bonded_device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %nchans3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nchans3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %base_chan.0, i32 %16)
  %cmp4 = icmp ult i32 %base_chan.0, %16
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b_data_bits) #10
  %sub7 = sub i32 %16, %base_chan.0
  %17 = call i32 @llvm.umin.i32(i32 %sub7, i32 %n_left.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %cmp11 = icmp ult i32 %17, 32
  %notmask = shl nsw i32 -1, %17
  %sub12 = xor i32 %notmask, -1
  %cond = select i1 %cmp11, i32 %sub12, i32 -1
  %shr = lshr i32 %3, %n_done.0
  %and13 = and i32 %cond, %shr
  %shr14 = lshr i32 %5, %n_done.0
  %and15 = and i32 %cond, %shr14
  %18 = ptrtoint ptr %b_data_bits to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and15, ptr %b_data_bits, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  %subdev = getelementptr inbounds %struct.bonded_device, ptr %14, i32 0, i32 2
  %21 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %subdev, align 4
  %call = call i32 @comedi_dio_bitfield2(ptr noundef %20, i32 noundef %22, i32 noundef %and13, ptr noundef nonnull %b_data_bits, i32 noundef %base_chan.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp17 = icmp slt i32 %call, 0
  br i1 %cmp17, label %cleanup34, label %cleanup

cleanup:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %shl20 = shl i32 %cond, %n_done.0
  %neg = xor i32 %shl20, -1
  %23 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx1, align 4
  %and22 = and i32 %24, %neg
  %25 = ptrtoint ptr %b_data_bits to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %b_data_bits, align 4
  %and23 = and i32 %26, %cond
  %shl24 = shl i32 %and23, %n_done.0
  %or = or i32 %shl24, %and22
  store i32 %or, ptr %arrayidx1, align 4
  %add = add i32 %17, %n_done.0
  %sub26 = sub i32 %n_left.0, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b_data_bits) #10
  br label %do.cond

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %sub32 = sub i32 %base_chan.0, %16
  br label %do.cond

cleanup34:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b_data_bits) #10
  br label %cleanup37

do.cond:                                          ; preds = %if.else, %cleanup
  %n_left.3.ph = phi i32 [ %n_left.0, %if.else ], [ %sub26, %cleanup ]
  %n_done.3.ph = phi i32 [ %n_done.0, %if.else ], [ %add, %cleanup ]
  %base_chan.3.ph = phi i32 [ %sub32, %if.else ], [ 0, %cleanup ]
  %tobool.not = icmp eq i32 %n_left.3.ph, 0
  br i1 %tobool.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %27 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n, align 4
  br label %cleanup37

cleanup37:                                        ; preds = %do.end, %cleanup34
  %retval.4 = phi i32 [ %28, %do.end ], [ %call, %cleanup34 ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bonding_dio_insn_config(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  %devs1 = getelementptr inbounds %struct.comedi_bond_private, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %devs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devs1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %bdev.027 = load ptr, ptr %5, align 4
  %nchans28 = getelementptr inbounds %struct.bonded_device, ptr %bdev.027, i32 0, i32 3
  %7 = ptrtoint ptr %nchans28 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nchans28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %8)
  %cmp.not29 = icmp ult i32 %and, %8
  br i1 %cmp.not29, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %9 = phi i32 [ %12, %for.body.for.body_crit_edge ], [ %8, %entry.for.body_crit_edge ]
  %bdev.0.in31 = phi ptr [ %devs.0, %for.body.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %chan.030 = phi i32 [ %sub, %for.body.for.body_crit_edge ], [ %and, %entry.for.body_crit_edge ]
  %devs.0 = getelementptr ptr, ptr %bdev.0.in31, i32 1
  %sub = sub i32 %chan.030, %9
  %10 = ptrtoint ptr %devs.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %bdev.0 = load ptr, ptr %devs.0, align 4
  %nchans = getelementptr inbounds %struct.bonded_device, ptr %bdev.0, i32 0, i32 3
  %11 = ptrtoint ptr %nchans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nchans, align 4
  %cmp.not = icmp ult i32 %sub, %12
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %chan.0.lcssa = phi i32 [ %and, %entry.for.end_crit_edge ], [ %sub, %for.body.for.end_crit_edge ]
  %bdev.0.lcssa = phi ptr [ %bdev.027, %entry.for.end_crit_edge ], [ %bdev.0, %for.body.for.end_crit_edge ]
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %14, label %for.end.if.end_crit_edge [
    i32 1, label %for.end.sw.bb_crit_edge
    i32 0, label %for.end.sw.bb_crit_edge38
    i32 28, label %sw.bb6
  ]

for.end.sw.bb_crit_edge38:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.end.sw.bb_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb:                                            ; preds = %for.end.sw.bb_crit_edge, %for.end.sw.bb_crit_edge38
  %16 = ptrtoint ptr %bdev.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdev.0.lcssa, align 4
  %subdev = getelementptr inbounds %struct.bonded_device, ptr %bdev.0.lcssa, i32 0, i32 2
  %18 = ptrtoint ptr %subdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %subdev, align 4
  %call = tail call i32 @comedi_dio_config(ptr noundef %17, i32 noundef %19, i32 noundef %chan.0.lcssa, i32 noundef %14) #10
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %bdev.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev.0.lcssa, align 4
  %subdev8 = getelementptr inbounds %struct.bonded_device, ptr %bdev.0.lcssa, i32 0, i32 2
  %22 = ptrtoint ptr %subdev8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %subdev8, align 4
  %arrayidx9 = getelementptr i32, ptr %data, i32 1
  %call10 = tail call i32 @comedi_dio_get_config(ptr noundef %21, i32 noundef %23, i32 noundef %chan.0.lcssa, ptr noundef %arrayidx9) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb
  %ret.0 = phi i32 [ %call10, %sw.bb6 ], [ %call, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp11 = icmp sgt i32 %ret.0, -1
  br i1 %cmp11, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %24 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge, %for.end.if.end_crit_edge
  %ret.1 = phi i32 [ %25, %if.then ], [ %ret.0, %sw.epilog.if.end_crit_edge ], [ -22, %for.end.if.end_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_find_subdevice_by_type(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_get_n_channels(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_bitfield2(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_get_config(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(1) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_comedi_bond__230_343_bonding_driver_init6, !1, !"__initcall__kmod_comedi_bond__230_343_bonding_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/comedi_bond.c", i32 343, i32 1}
!2 = !{ptr @__exitcall_bonding_driver_exit, !1, !"__exitcall_bonding_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/comedi_bond.c", i32 345, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/comedi_bond.c", i32 346, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/comedi_bond.c", i32 347, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/comedi_bond.c", i32 338, i32 17}
!12 = !{ptr @bonding_driver, !13, !"bonding_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/comedi_bond.c", i32 337, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/comedi_bond.c", i32 306, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bonding_attach._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bonding_attach._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/comedi_bond.c", i32 190, i32 4}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @do_dev_config._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @do_dev_config._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/comedi_bond.c", i32 195, i32 4}
!30 = !{ptr @do_dev_config._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @do_dev_config._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/comedi_bond.c", i32 200, i32 4}
!34 = !{ptr @do_dev_config._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @do_dev_config._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/comedi_bond.c", i32 205, i32 32}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/comedi_bond.c", i32 211, i32 4}
!40 = !{ptr @do_dev_config._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @do_dev_config._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/comedi_bond.c", i32 221, i32 5}
!44 = !{ptr @do_dev_config._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @do_dev_config._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/comedi/drivers/comedi_bond.c", i32 246, i32 5}
!48 = !{ptr @do_dev_config._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @do_dev_config._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/comedi/drivers/comedi_bond.c", i32 257, i32 32}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/comedi/drivers/comedi_bond.c", i32 266, i32 3}
!54 = !{ptr @do_dev_config._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @do_dev_config._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
