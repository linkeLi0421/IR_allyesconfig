; ModuleID = '/llk/IR_all_yes/arch/arm/mach-hisi/platmcpm.c_pt.bc'
source_filename = "../arch/arm/mach-hisi/platmcpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_platmcpm__227_346_hip04_smp_initearly = internal global ptr @hip04_smp_init, section ".initcallearly.init", align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hisilicon,hip04-bootwrapper\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"boot-method\00", [20 x i8] zeroinitializer }, align 32
@hip04_boot_method = internal global { [4 x i32], [16 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hisilicon,sysctrl\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hisilicon,hip04-fabric\00", [41 x i8] zeroinitializer }, align 32
@hip04_smp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013failed to map relocation space\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hip04_smp_init\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/mach-hisi/platmcpm.c\00", [34 x i8] zeroinitializer }, align 32
@hip04_smp_init._entry_ptr = internal global ptr @hip04_smp_init._entry, section ".printk_index", align 4
@sysctrl = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@hip04_smp_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013failed to get sysctrl base\0A\00", [34 x i8] zeroinitializer }, align 32
@hip04_smp_init._entry_ptr.9 = internal global ptr @hip04_smp_init._entry.7, section ".printk_index", align 4
@hip04_smp_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013failed to get fabric base phys\0A\00", [62 x i8] zeroinitializer }, align 32
@hip04_smp_init._entry_ptr.12 = internal global ptr @hip04_smp_init._entry.10, section ".printk_index", align 4
@fabric_phys_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fabric = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@hip04_smp_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013failed to get fabric base\0A\00", [35 x i8] zeroinitializer }, align 32
@hip04_smp_init._entry_ptr.15 = internal global ptr @hip04_smp_init._entry.13, section ".printk_index", align 4
@hip04_smp_ops = internal constant %struct.smp_operations { ptr null, ptr null, ptr null, ptr @hip04_boot_secondary, ptr @hip04_cpu_kill, ptr @hip04_cpu_die, ptr null, ptr null }, section ".init.rodata", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@hip04_cpu_table_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: boot CPU is out of bound!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hip04_cpu_table_init\00", [43 x i8] zeroinitializer }, align 32
@hip04_cpu_table_init._entry_ptr = internal global ptr @hip04_cpu_table_init._entry, section ".printk_index", align 4
@hip04_cpu_table = internal global { [4 x [4 x i32]], [32 x i8] } zeroinitializer, align 32
@__cpu_logical_map = external dso_local local_unnamed_addr global [0 x i32], align 4
@boot_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"boot_lock\00", [22 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@hip04_cpu_die._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Cluster %d CPU%d boots multiple times\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hip04_cpu_die\00", [18 x i8] zeroinitializer }, align 32
@hip04_cpu_die._entry_ptr = internal global ptr @hip04_cpu_die._entry, section ".printk_index", align 4
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 272, i32 43 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 275, i32 39 }
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"hip04_boot_method\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 69, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 281, i32 48 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 284, i32 47 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 294, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [8 x i8] c"sysctrl\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 59, i32 22 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 300, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 306, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"fabric_phys_addr\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 62, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"fabric\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 59, i32 32 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 313, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 257, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [16 x i8] c"hip04_cpu_table\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 60, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [10 x i8] c"boot_lock\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 61, i32 8 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [33 x i8] c"../arch/arm/mach-hisi/platmcpm.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 169, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__initcall__kmod_platmcpm__227_346_hip04_smp_initearly, ptr @hip04_cpu_die._entry, ptr @hip04_cpu_die._entry_ptr, ptr @hip04_cpu_table_init._entry, ptr @hip04_cpu_table_init._entry_ptr, ptr @hip04_smp_init._entry, ptr @hip04_smp_init._entry.10, ptr @hip04_smp_init._entry.13, ptr @hip04_smp_init._entry.7, ptr @hip04_smp_init._entry_ptr, ptr @hip04_smp_init._entry_ptr.12, ptr @hip04_smp_init._entry_ptr.15, ptr @hip04_smp_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @hip04_boot_method, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sysctrl, ptr @.str.8, ptr @.str.11, ptr @fabric_phys_addr, ptr @fabric, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @hip04_cpu_table, ptr @boot_lock, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_boot_method to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_smp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysctrl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_smp_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_smp_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fabric_phys_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fabric to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_smp_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_cpu_table_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_cpu_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boot_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hip04_cpu_die._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_smp_init() #0 section ".init.text" align 64 {
entry:
  %fab_res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %fab_res) #7
  %0 = call ptr @memset(ptr %fab_res, i32 255, i32 32)
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call, ptr noundef nonnull @.str.1, ptr noundef nonnull @hip04_boot_method, i32 noundef 4, i32 noundef 0) #7
  %1 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool2.not = icmp sgt i32 %call.i, -1
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #7
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %2 = load i32, ptr @hip04_boot_method, align 4
  %3 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @hip04_boot_method, i32 0, i32 1), align 4
  %call13 = tail call i32 @memblock_reserve(i32 noundef %2, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %4 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @hip04_boot_method, i32 0, i32 2), align 4
  %5 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @hip04_boot_method, i32 0, i32 3), align 4
  %call17 = tail call ptr @ioremap(i32 noundef %4, i32 noundef %5) #7
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %err_reloc

if.end21:                                         ; preds = %if.end16
  %call22 = tail call ptr @of_iomap(ptr noundef nonnull %call5, i32 noundef 0) #7
  store ptr %call22, ptr @sysctrl, align 4
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %err_sysctrl

if.end30:                                         ; preds = %if.end21
  %call31 = call i32 @of_address_to_resource(ptr noundef nonnull %call9, i32 noundef 0, ptr noundef nonnull %fab_res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end39, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %err_fabric

if.end39:                                         ; preds = %if.end30
  %6 = ptrtoint ptr %fab_res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fab_res, align 4
  store i32 %7, ptr @fabric_phys_addr, align 4
  call fastcc void @__sync_cache_range_w()
  %call40 = call ptr @of_iomap(ptr noundef nonnull %call9, i32 noundef 0) #7
  store ptr %call40, ptr @fabric, align 4
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %do.end45, label %if.end48

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %err_fabric

if.end48:                                         ; preds = %if.end39
  %call49 = call fastcc zeroext i1 @hip04_cpu_table_init() #11
  br i1 %call49, label %if.end51, label %if.then50

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load ptr, ptr @fabric, align 4
  call void @iounmap(ptr noundef %8) #7
  br label %err_fabric

if.end51:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %9 = load i32, ptr @hip04_boot_method, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call17, i32 %10) #7, !srcloc !62
  %add.ptr = getelementptr i8, ptr %call17, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1515870811) #7, !srcloc !62
  %call53 = call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @secondary_startup to i32)) #7
  %11 = call i32 @llvm.bswap.i32(i32 %call53)
  %add.ptr54 = getelementptr i8, ptr %call17, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %11) #7, !srcloc !62
  %add.ptr55 = getelementptr i8, ptr %call17, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 0) #7, !srcloc !62
  call void @iounmap(ptr noundef nonnull %call17) #7
  call void @smp_set_ops(ptr noundef nonnull @hip04_smp_ops) #7
  br label %cleanup

err_fabric:                                       ; preds = %if.then50, %do.end45, %do.end36
  %ret.0 = phi i32 [ %call31, %do.end36 ], [ -22, %if.then50 ], [ -12, %do.end45 ]
  %12 = load ptr, ptr @sysctrl, align 4
  call void @iounmap(ptr noundef %12) #7
  br label %err_sysctrl

err_sysctrl:                                      ; preds = %err_fabric, %do.end27
  %ret.1 = phi i32 [ %ret.0, %err_fabric ], [ -12, %do.end27 ]
  call void @iounmap(ptr noundef nonnull %call17) #7
  br label %err_reloc

err_reloc:                                        ; preds = %err_sysctrl, %do.end
  %ret.2 = phi i32 [ %ret.1, %err_sysctrl ], [ -12, %do.end ]
  %13 = load i32, ptr @hip04_boot_method, align 4
  %14 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @hip04_boot_method, i32 0, i32 1), align 4
  %call56 = call i32 @memblock_phys_free(i32 noundef %13, i32 noundef %14) #7
  br label %cleanup

cleanup:                                          ; preds = %err_reloc, %if.end51, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end51 ], [ %1, %if.end.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %ret.2, %err_reloc ], [ -19, %if.end8.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %fab_res) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__sync_cache_range_w() unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 7), align 4
  tail call void %0(ptr noundef nonnull @fabric_phys_addr, i32 noundef 4) #7
  %call = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr @fabric_phys_addr to i32)) #7
  %call1 = tail call i32 @__virt_to_phys(i32 noundef ptrtoint (ptr getelementptr inbounds (i32, ptr @fabric_phys_addr, i32 1) to i32)) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 1), align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.outer_clean_range.exit_crit_edge, label %if.then.i

entry.outer_clean_range.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %outer_clean_range.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %1(i32 noundef %call, i32 noundef %call1) #7
  br label %outer_clean_range.exit

outer_clean_range.exit:                           ; preds = %if.then.i, %entry.outer_clean_range.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @hip04_cpu_table_init() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 5", "=r,~{cc}"() #12, !srcloc !63
  %and = and i32 %0, 255
  %shr1 = lshr i32 %0, 8
  %and2 = and i32 %shr1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and2)
  %cmp = icmp ugt i32 %and2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp3 = icmp ugt i32 %and, 3
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @fabric, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/platmcpm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #7, !srcloc !64
  unreachable

if.end.i:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !65
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %shl6.i = shl nuw nsw i32 1, %and2
  %or.i = or i32 %3, %shl6.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %5 = load ptr, ptr @fabric, align 4
  %add.ptr8.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %4) #7, !srcloc !62
  br label %do.body9.i

do.body9.i:                                       ; preds = %do.body9.i.do.body9.i_crit_edge, %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !67
  %6 = load ptr, ptr @fabric, align 4
  %add.ptr21.i = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #7, !srcloc !65
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %cmp.not.i = icmp eq i32 %or.i, %8
  br i1 %cmp.not.i, label %hip04_set_snoop_filter.exit, label %do.body9.i.do.body9.i_crit_edge

do.body9.i.do.body9.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

hip04_set_snoop_filter.exit:                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx5 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %and2, i32 %and
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %arrayidx5, align 4
  br label %cleanup

cleanup:                                          ; preds = %hip04_set_snoop_filter.exit, %do.end
  %10 = xor i1 %or.cond, true
  ret i1 %10
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smp_set_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_phys_free(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_boot_secondary(i32 noundef %l_cpu, ptr nocapture noundef readnone %idle) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %l_cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 255
  %shr1 = lshr i32 %1, 8
  %and2 = and i32 %shr1, 255
  %2 = load ptr, ptr @sysctrl, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and2)
  %cmp = icmp ugt i32 %and2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp3 = icmp ugt i32 %and, 3
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @boot_lock) #7
  %arrayidx7 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %and2, i32 %and
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not = icmp eq i32 %4, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end10:                                         ; preds = %if.end5
  %5 = load ptr, ptr @sysctrl, align 4
  %shl = shl nuw nsw i32 %and2, 3
  %add = add nuw nsw i32 %shl, 1316
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %add12 = add nuw nsw i32 %shl, 5408
  %add.ptr13 = getelementptr i8, ptr %5, i32 %add12
  %arrayidx1.i = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %and2, i32 0
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end10.if.end27_crit_edge

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

for.cond.i:                                       ; preds = %if.end10
  %arrayidx1.1.i = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %and2, i32 1
  %8 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1.i = icmp eq i32 %9, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.end27_crit_edge

for.cond.i.if.end27_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx1.2.i = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %and2, i32 2
  %10 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.2.i = icmp eq i32 %11, 0
  br i1 %tobool.not.2.i, label %hip04_cluster_is_down.exit, label %for.cond.1.i.if.end27_crit_edge

for.cond.1.i.if.end27_crit_edge:                  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

hip04_cluster_is_down.exit:                       ; preds = %for.cond.1.i
  %arrayidx1.3.i = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %and2, i32 3
  %12 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx1.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.3.i = icmp eq i32 %13, 0
  br i1 %tobool.not.3.i, label %if.then14, label %hip04_cluster_is_down.exit.if.end27_crit_edge

hip04_cluster_is_down.exit.if.end27_crit_edge:    ; preds = %hip04_cluster_is_down.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then14:                                        ; preds = %hip04_cluster_is_down.exit
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2097152) #7, !srcloc !62
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.then14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !69
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !65
  %15 = and i32 %14, 2097152
  %tobool25.not = icmp eq i32 %15, 0
  br i1 %tobool25.not, label %do.end26, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end26:                                         ; preds = %do.body
  %16 = load ptr, ptr @fabric, align 4
  %tobool.not.i76 = icmp eq ptr %16, null
  br i1 %tobool.not.i76, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/platmcpm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #7, !srcloc !64
  unreachable

if.end.i:                                         ; preds = %do.end26
  %add.ptr.i = getelementptr i8, ptr %16, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !65
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  %shl6.i = shl nuw i32 1, %and2
  %or.i = or i32 %18, %shl6.i
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %20 = load ptr, ptr @fabric, align 4
  %add.ptr8.i = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %19) #7, !srcloc !62
  br label %do.body9.i

do.body9.i:                                       ; preds = %do.body9.i.do.body9.i_crit_edge, %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !67
  %21 = load ptr, ptr @fabric, align 4
  %add.ptr21.i = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #7, !srcloc !65
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  %cmp.not.i = icmp eq i32 %or.i, %23
  br i1 %cmp.not.i, label %do.body9.i.if.end27_crit_edge, label %do.body9.i.do.body9.i_crit_edge

do.body9.i.do.body9.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

do.body9.i.if.end27_crit_edge:                    ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end27:                                         ; preds = %do.body9.i.if.end27_crit_edge, %hip04_cluster_is_down.exit.if.end27_crit_edge, %for.cond.1.i.if.end27_crit_edge, %for.cond.i.if.end27_crit_edge, %if.end10.if.end27_crit_edge
  %or33 = shl i32 529, %and
  %24 = tail call i32 @llvm.bswap.i32(i32 %or33)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %24) #7, !srcloc !62
  br label %do.body34

do.body34:                                        ; preds = %do.body34.do.body34_crit_edge, %if.end27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !71
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !65
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %cmp48 = icmp eq i32 %or33, %26
  br i1 %cmp48, label %do.body34.do.body34_crit_edge, label %do.end49

do.body34.do.body34_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body34

do.end49:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 4294960) #7
  %rem.i = and i32 %l_cpu, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %l_cpu, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i77 = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  tail call void @arch_send_wakeup_ipi_mask(ptr noundef %add.ptr.i77) #7
  br label %out

out:                                              ; preds = %do.end49, %if.end5.out_crit_edge
  %28 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx7, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %arrayidx7, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @boot_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hip04_cpu_kill(i32 noundef %l_cpu) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %l_cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 255
  %shr1 = lshr i32 %1, 8
  %and2 = and i32 %shr1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and2)
  %cmp = icmp ugt i32 %and2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp3 = icmp ugt i32 %and, 3
  %spec.select = select i1 %cmp, i1 true, i1 %cmp3, !prof !72
  br i1 %spec.select, label %do.body5, label %do.end10, !prof !72

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/platmcpm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 200, 0\0A.popsection", ""() #7, !srcloc !73
  unreachable

do.end10:                                         ; preds = %entry
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @boot_lock) #7
  %arrayidx13 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %and2, i32 %and
  %shl = shl nuw nsw i32 %and2, 3
  %add = add nuw nsw i32 %shl, 5408
  %shl27 = shl nuw nsw i32 65536, %and
  br label %for.body

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %do.end10
  %tries.0109 = phi i32 [ 0, %do.end10 ], [ %inc, %if.end31.for.body_crit_edge ]
  %2 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool14.not = icmp eq i32 %3, 0
  br i1 %tobool14.not, label %do.end21, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end21:                                         ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !75
  %4 = load ptr, ptr @sysctrl, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !65
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and28 = and i32 %6, %shl27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end34

if.end31:                                         ; preds = %do.end21
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @boot_lock) #7
  tail call void @msleep(i32 noundef 10) #7
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @boot_lock) #7
  %inc = add nuw nsw i32 %tries.0109, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end31.cleanup_crit_edge, label %if.end31.for.body_crit_edge

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %do.end21
  %shl35 = shl nuw i32 1, %and
  %or40 = shl i32 529, %and
  %7 = tail call i32 @llvm.bswap.i32(i32 %or40)
  %8 = load ptr, ptr @sysctrl, align 4
  %add42 = add nuw nsw i32 %shl, 1312
  %add.ptr43 = getelementptr i8, ptr %8, i32 %add42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %7) #7, !srcloc !62
  br label %do.end51

for.cond44:                                       ; preds = %do.end51
  %inc68 = add nuw nsw i32 %tries.1110, 1
  %exitcond112.not = icmp eq i32 %inc68, 100
  br i1 %exitcond112.not, label %for.cond44.cleanup_crit_edge, label %for.cond44.do.end51_crit_edge

for.cond44.do.end51_crit_edge:                    ; preds = %for.cond44
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51

for.cond44.cleanup_crit_edge:                     ; preds = %for.cond44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end51:                                         ; preds = %for.cond44.do.end51_crit_edge, %if.end34
  %tries.1110 = phi i32 [ 0, %if.end34 ], [ %inc68, %for.cond44.do.end51_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !77
  %9 = load ptr, ptr @sysctrl, align 4
  %add.ptr59 = getelementptr i8, ptr %9, i32 %add
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #7, !srcloc !65
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %and63 = and i32 %11, %shl35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %for.cond44, label %if.end72

if.end72:                                         ; preds = %do.end51
  %arrayidx1.i = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %and2, i32 0
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end72.cleanup_crit_edge

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i:                                       ; preds = %if.end72
  %arrayidx1.1.i = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %and2, i32 1
  %14 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.1.i = icmp eq i32 %15, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx1.2.i = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %and2, i32 2
  %16 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx1.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.2.i = icmp eq i32 %17, 0
  br i1 %tobool.not.2.i, label %hip04_cluster_is_down.exit, label %for.cond.1.i.cleanup_crit_edge

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

hip04_cluster_is_down.exit:                       ; preds = %for.cond.1.i
  %arrayidx1.3.i = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %and2, i32 3
  %18 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx1.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.3.i = icmp eq i32 %19, 0
  br i1 %tobool.not.3.i, label %if.then74, label %hip04_cluster_is_down.exit.cleanup_crit_edge

hip04_cluster_is_down.exit.cleanup_crit_edge:     ; preds = %hip04_cluster_is_down.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then74:                                        ; preds = %hip04_cluster_is_down.exit
  %20 = load ptr, ptr @fabric, align 4
  %tobool.not.i104 = icmp eq ptr %20, null
  br i1 %tobool.not.i104, label %do.body.i, label %if.end.i

do.body.i:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/platmcpm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 86, 0\0A.popsection", ""() #7, !srcloc !64
  unreachable

if.end.i:                                         ; preds = %if.then74
  %add.ptr.i = getelementptr i8, ptr %20, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !65
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %shl6.i = shl nuw i32 1, %and2
  %neg.i = xor i32 %shl6.i, -1
  %and.i = and i32 %22, %neg.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %24 = load ptr, ptr @fabric, align 4
  %add.ptr8.i = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %23) #7, !srcloc !62
  br label %do.body9.i

do.body9.i:                                       ; preds = %do.body9.i.do.body9.i_crit_edge, %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !67
  %25 = load ptr, ptr @fabric, align 4
  %add.ptr21.i = getelementptr i8, ptr %25, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #7, !srcloc !65
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  %cmp.not.i = icmp eq i32 %and.i, %27
  br i1 %cmp.not.i, label %do.body9.i.cleanup_crit_edge, label %do.body9.i.do.body9.i_crit_edge

do.body9.i.do.body9.i_crit_edge:                  ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9.i

do.body9.i.cleanup_crit_edge:                     ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %do.body9.i.cleanup_crit_edge, %hip04_cluster_is_down.exit.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %for.cond44.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.cond.1.i.cleanup_crit_edge ], [ 1, %for.cond.i.cleanup_crit_edge ], [ 1, %if.end72.cleanup_crit_edge ], [ 1, %hip04_cluster_is_down.exit.cleanup_crit_edge ], [ 1, %do.body9.i.cleanup_crit_edge ], [ 0, %for.cond44.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @boot_lock) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hip04_cpu_die(i32 noundef %l_cpu) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [0 x i32], ptr @__cpu_logical_map, i32 0, i32 %l_cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, 255
  %shr1 = lshr i32 %1, 8
  %and2 = and i32 %shr1, 255
  tail call void @_raw_spin_lock(ptr noundef nonnull @boot_lock) #7
  %arrayidx4 = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %and2, i32 %and
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp = icmp eq i32 %dec, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock(ptr noundef nonnull @boot_lock) #7
  ret void

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp9 = icmp sgt i32 %dec, 1
  br i1 %cmp9, label %do.end, label %if.end17

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %and2, i32 noundef %and) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-hisi/platmcpm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #7, !srcloc !78
  unreachable

if.end17:                                         ; preds = %if.else
  %arrayidx1.i = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %and2, i32 0
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end17.hip04_cluster_is_down.exit.thread_crit_edge

if.end17.hip04_cluster_is_down.exit.thread_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %hip04_cluster_is_down.exit.thread

for.cond.i:                                       ; preds = %if.end17
  %arrayidx1.1.i = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %and2, i32 1
  %6 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1.i = icmp eq i32 %7, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.hip04_cluster_is_down.exit.thread_crit_edge

for.cond.i.hip04_cluster_is_down.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hip04_cluster_is_down.exit.thread

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx1.2.i = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %and2, i32 2
  %8 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.2.i = icmp eq i32 %9, 0
  br i1 %tobool.not.2.i, label %hip04_cluster_is_down.exit, label %for.cond.1.i.hip04_cluster_is_down.exit.thread_crit_edge

for.cond.1.i.hip04_cluster_is_down.exit.thread_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hip04_cluster_is_down.exit.thread

hip04_cluster_is_down.exit.thread:                ; preds = %for.cond.1.i.hip04_cluster_is_down.exit.thread_crit_edge, %for.cond.i.hip04_cluster_is_down.exit.thread_crit_edge, %if.end17.hip04_cluster_is_down.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @boot_lock) #7
  br label %if.else20

hip04_cluster_is_down.exit:                       ; preds = %for.cond.1.i
  %arrayidx1.3.i = getelementptr [4 x [4 x i32]], ptr @hip04_cpu_table, i32 0, i32 %and2, i32 3
  %10 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx1.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.3.i = icmp eq i32 %11, 0
  tail call void @_raw_spin_unlock(ptr noundef nonnull @boot_lock) #7
  br i1 %tobool.not.3.i, label %if.then19, label %hip04_cluster_is_down.exit.if.else20_crit_edge

hip04_cluster_is_down.exit.if.else20_crit_edge:   ; preds = %hip04_cluster_is_down.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else20

if.then19:                                        ; preds = %hip04_cluster_is_down.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr\09p15, 1, $0, c15, c0, 3 \0A\09isb\09\0A\09dsb\09", "r"(i32 1024) #7, !srcloc !79
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_all \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #7, !srcloc !80
  br label %for.cond.preheader

if.else20:                                        ; preds = %hip04_cluster_is_down.exit.if.else20_crit_edge, %hip04_cluster_is_down.exit.thread
  tail call void asm sideeffect ".arch\09armv7-a \0A\09stmfd\09sp!, {fp, ip} \0A\09mrc\09p15, 0, r0, c1, c0, 0\09@ get SCTLR \0A\09bic\09r0, r0, #(1 << 2) \0A\09mcr\09p15, 0, r0, c1, c0, 0\09@ set SCTLR \0A\09isb\09\0A\09bl\09v7_flush_dcache_louis \0A\09mrc\09p15, 0, r0, c1, c0, 1\09@ get ACTLR \0A\09bic\09r0, r0, #(1 << 6)\09@ disable local coherency \0A\09mcr\09p15, 0, r0, c1, c0, 1\09@ set ACTLR \0A\09isb\09\0A\09dsb\09\0A\09ldmfd\09sp!, {fp, ip}", "~{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6},~{r7},~{r9},~{r10},~{lr},~{memory}"() #7, !srcloc !81
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.else20, %if.then19
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %for.cond.preheader
  tail call void asm sideeffect "wfi", "~{memory}"() #7, !srcloc !82
  br label %for.cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arch_send_wakeup_ipi_mask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !45, !47, !48, !50, !51, !52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_platmcpm__227_346_hip04_smp_initearly, !1, !"__initcall__kmod_platmcpm__227_346_hip04_smp_initearly", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 346, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 272, i32 43}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 275, i32 39}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 281, i32 48}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 284, i32 47}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 294, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @hip04_smp_init._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @hip04_smp_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 300, i32 3}
!18 = !{ptr @hip04_smp_init._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @hip04_smp_init._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 306, i32 3}
!22 = !{ptr @hip04_smp_init._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @hip04_smp_init._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 313, i32 3}
!26 = !{ptr @hip04_smp_init._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hip04_smp_init._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @hip04_boot_method, !29, !"hip04_boot_method", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 69, i32 12}
!30 = !{ptr @sysctrl, !31, !"sysctrl", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 59, i32 22}
!32 = !{ptr @fabric_phys_addr, !33, !"fabric_phys_addr", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 62, i32 12}
!34 = !{ptr @fabric, !35, !"fabric", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 59, i32 32}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 257, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hip04_cpu_table_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @hip04_cpu_table_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @hip04_cpu_table, !42, !"hip04_cpu_table", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 60, i32 12}
!43 = !{ptr @hip04_smp_ops, !44, !"hip04_smp_ops", i1 false, i1 false}
!44 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 239, i32 36}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 61, i32 8}
!47 = !{ptr @boot_lock, !46, !"boot_lock", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-hisi/platmcpm.c", i32 169, i32 3}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hip04_cpu_die._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @hip04_cpu_die._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2982650}
!63 = !{i64 2153574101}
!64 = !{i64 2153986511, i64 2153987004, i64 2153986548, i64 2153986604, i64 2153986638, i64 2153986662, i64 2153986703, i64 2153986724, i64 2153986752, i64 2153986786}
!65 = !{i64 2983068}
!66 = !{i64 2153988532}
!67 = !{i64 2153988374}
!68 = !{i64 2153989596}
!69 = !{i64 2153989438}
!70 = !{i64 2153990401}
!71 = !{i64 2153990243}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2153996658, i64 2153997152, i64 2153996695, i64 2153996751, i64 2153996785, i64 2153996809, i64 2153996850, i64 2153996871, i64 2153996899, i64 2153996933}
!74 = !{i64 2153998195}
!75 = !{i64 2153998037}
!76 = !{i64 2153999173}
!77 = !{i64 2153999015}
!78 = !{i64 2153993429, i64 2153993923, i64 2153993466, i64 2153993522, i64 2153993556, i64 2153993580, i64 2153993621, i64 2153993642, i64 2153993670, i64 2153993704}
!79 = !{i64 4507, i64 4537, i64 4550}
!80 = !{i64 2153994763, i64 2153994780, i64 2153994810, i64 2153994858, i64 2153994901, i64 2153994949, i64 2153994963, i64 2153995013, i64 2153995061, i64 2153995119, i64 2153995167, i64 2153995181, i64 2153995195}
!81 = !{i64 2153995410, i64 2153995427, i64 2153995457, i64 2153995505, i64 2153995548, i64 2153995596, i64 2153995610, i64 2153995660, i64 2153995708, i64 2153995766, i64 2153995814, i64 2153995828, i64 2153995842}
!82 = !{i64 2153996068}
