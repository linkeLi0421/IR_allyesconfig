; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/pm.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@s3c_irqwake_intmask = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@s3c_irqwake_eintmask = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@s3c_irqext_wake._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016wake %s for irq %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c_irqext_wake\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arch/arm/mach-s3c/pm.c\00", [41 x i8] zeroinitializer }, align 32
@s3c_irqext_wake._entry_ptr = internal global ptr @s3c_irqext_wake._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@s3c_pm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"S3C Power Management, Copyright 2004 Simtec Electronics\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s3c_pm_init\00", [20 x i8] zeroinitializer }, align 32
@s3c_pm_init._entry_ptr = internal global ptr @s3c_pm_init._entry, section ".printk_index", align 4
@s3c_pm_ops = internal constant { %struct.platform_suspend_ops, [56 x i8] } { %struct.platform_suspend_ops { ptr @suspend_valid_only_mem, ptr null, ptr @s3c_pm_prepare, ptr null, ptr @s3c_pm_enter, ptr null, ptr @s3c_pm_finish, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@s3c_pm_flags = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@pm_cpu_prep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@pm_cpu_sleep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@s3c_pm_enter.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pm\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s3c_pm_enter\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%d)\0A\00", [24 x i8] zeroinitializer }, align 32
@s3c_pm_enter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: error: no cpu sleep function\0A\00", [60 x i8] zeroinitializer }, align 32
@s3c_pm_enter._entry_ptr = internal global ptr @s3c_pm_enter._entry, section ".printk_index", align 4
@s3c_pm_enter._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: No wake-up sources!\0A\00", [37 x i8] zeroinitializer }, align 32
@s3c_pm_enter._entry_ptr.13 = internal global ptr @s3c_pm_enter._entry.11, section ".printk_index", align 4
@s3c_pm_enter._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: Aborting sleep\0A\00", [42 x i8] zeroinitializer }, align 32
@s3c_pm_enter._entry_ptr.16 = internal global ptr @s3c_pm_enter._entry.14, section ".printk_index", align 4
@s3c_pm_enter.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.17, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sleep: irq wakeup masks: %08lx,%08lx\0A\00", [58 x i8] zeroinitializer }, align 32
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@s3c_pm_enter.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.18, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: post sleep, preparing to return\0A\00", [59 x i8] zeroinitializer }, align 32
@s3c_pm_enter.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.2, ptr @.str.19, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"S3C PM Resume (post-restore)\0A\00", [34 x i8] zeroinitializer }, align 32
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.20 = private unnamed_addr constant [20 x i8] c"s3c_irqwake_intmask\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 39, i32 15 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"s3c_irqwake_eintmask\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 40, i32 15 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 49, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 195, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"s3c_pm_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 179, i32 42 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"s3c_pm_flags\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 34, i32 15 }
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"pm_cpu_prep\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 60, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"pm_cpu_sleep\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 61, i32 7 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 76, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 79, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 91, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 92, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 110, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 153, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [26 x i8] c"../arch/arm/mach-s3c/pm.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 162, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @s3c_irqext_wake._entry, ptr @s3c_irqext_wake._entry_ptr, ptr @s3c_pm_enter._entry, ptr @s3c_pm_enter._entry.11, ptr @s3c_pm_enter._entry.14, ptr @s3c_pm_enter._entry_ptr, ptr @s3c_pm_enter._entry_ptr.13, ptr @s3c_pm_enter._entry_ptr.16, ptr @s3c_pm_init._entry, ptr @s3c_pm_init._entry_ptr, ptr @s3c_irqwake_intmask, ptr @s3c_irqwake_eintmask, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @s3c_pm_ops, ptr @s3c_pm_flags, ptr @pm_cpu_prep, ptr @pm_cpu_sleep, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_irqwake_intmask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_irqwake_eintmask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_irqext_wake._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pm_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_cpu_prep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_cpu_sleep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pm_enter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pm_enter._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_pm_enter._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c_irqext_wake(ptr nocapture noundef readonly %data, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %sub = add i32 %1, -101
  %shl = shl nuw i32 1, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %sub)
  %tobool.not = icmp ugt i32 %sub, 27
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool1.not = icmp eq i32 %state, 0
  %cond = select i1 %tobool1.not, ptr @.str.4, ptr @.str.3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull %cond, i32 noundef %1) #7
  br i1 %tobool1.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = load i32, ptr @s3c_irqwake_eintmask, align 4
  %or = or i32 %2, %shl
  br label %if.end6

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %neg = xor i32 %shl, -1
  %3 = load i32, ptr @s3c_irqwake_eintmask, align 4
  %and5 = and i32 %3, %neg
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %storemerge = phi i32 [ %or, %if.then4 ], [ %and5, %if.else ]
  store i32 %storemerge, ptr @s3c_irqwake_eintmask, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s3c_pm_init() local_unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #7
  tail call void @suspend_set_ops(ptr noundef nonnull @s3c_pm_ops) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suspend_valid_only_mem(i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_pm_prepare() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c_pm_check_prepare() #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_pm_enter(i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_pm_enter.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_pm_enter, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !60

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_pm_enter.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef %state) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr @pm_cpu_prep, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %do.end.do.end7_crit_edge, label %lor.lhs.false

do.end.do.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

lor.lhs.false:                                    ; preds = %do.end
  %1 = load ptr, ptr @pm_cpu_sleep, align 4
  %cmp3 = icmp eq ptr %1, null
  br i1 %cmp3, label %lor.lhs.false.do.end7_crit_edge, label %if.end10

lor.lhs.false.do.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

do.end7:                                          ; preds = %lor.lhs.false.do.end7_crit_edge, %do.end.do.end7_crit_edge
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %2 = load ptr, ptr @of_root, align 4
  %cmp.i.not = icmp eq ptr %2, null
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end10.if.end30_crit_edge

if.end10.if.end30_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end10
  %3 = load i32, ptr @s3c_irqwake_intmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp12.not = icmp eq i32 %3, -1
  br i1 %cmp12.not, label %land.lhs.true13, label %land.lhs.true.if.then29_crit_edge

land.lhs.true.if.then29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29

land.lhs.true13:                                  ; preds = %land.lhs.true
  %4 = load i32, ptr @s3c_irqwake_eintmask, align 4
  %and14 = and i32 %4, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %and14)
  %cmp15.not = icmp eq i32 %and14, 268435455
  br i1 %cmp15.not, label %do.end19, label %land.lhs.true13.if.then29_crit_edge

land.lhs.true13.if.then29_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29

do.end19:                                         ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.8) #7
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.then29:                                        ; preds = %land.lhs.true13.if.then29_crit_edge, %land.lhs.true.if.then29_crit_edge
  tail call void @samsung_pm_save_gpios() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162526928 to ptr), i32 1) #4, !srcloc !61
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end10.if.end30_crit_edge
  tail call void @s3c_pm_save_core() #4
  tail call void @s3c_pm_configure_extint() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_pm_enter.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_pm_enter, %if.then43)) #4
          to label %do.end46 [label %if.then43], !srcloc !60

if.then43:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %5 = load i32, ptr @s3c_irqwake_intmask, align 4
  %6 = load i32, ptr @s3c_irqwake_eintmask, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_pm_enter.__UNIQUE_ID_ddebug289, ptr noundef nonnull @.str.17, i32 noundef %5, i32 noundef %6) #4
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %if.end30
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -162526940 to ptr)) #4, !srcloc !62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162526940 to ptr), i32 %7) #4, !srcloc !61
  %8 = load ptr, ptr @pm_cpu_prep, align 4
  tail call void %8() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %9() #4
  tail call void @s3c_pm_check_store() #4
  %10 = load ptr, ptr @pm_cpu_sleep, align 4
  %call47 = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %do.end46.cleanup_crit_edge

do.end46.cleanup_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end50:                                         ; preds = %do.end46
  tail call void @s3c_pm_restore_core() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %11 = load ptr, ptr @of_root, align 4
  %cmp.i97.not = icmp eq ptr %11, null
  br i1 %cmp.i97.not, label %if.then52, label %if.end50.if.end53_crit_edge

if.end50.if.end53_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @samsung_pm_restore_gpios() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -162526928 to ptr), i32 0) #4, !srcloc !61
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end50.if.end53_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_pm_enter.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_pm_enter, %if.then66)) #4
          to label %do.end69 [label %if.then66], !srcloc !60

if.then66:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_pm_enter.__UNIQUE_ID_ddebug290, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.8) #4
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %if.end53
  tail call void @s3c_pm_debug_smdkled(i32 noundef 2, i32 noundef 0) #4
  tail call void @s3c_pm_check_restore() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s3c_pm_enter.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s3c_pm_enter, %if.then82)) #4
          to label %cleanup [label %if.then82], !srcloc !60

if.then82:                                        ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s3c_pm_enter.__UNIQUE_ID_ddebug291, ptr noundef nonnull @.str.19) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then82, %do.end69, %do.end46.cleanup_crit_edge, %do.end19, %do.end7
  %retval.0 = phi i32 [ -22, %do.end7 ], [ -22, %do.end19 ], [ %call47, %do.end46.cleanup_crit_edge ], [ 0, %if.then82 ], [ 0, %do.end69 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c_pm_finish() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @s3c_pm_check_cleanup() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_pm_check_prepare() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_pm_save_gpios() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_pm_save_core() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_pm_configure_extint() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_pm_check_store() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_pm_restore_core() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_pm_restore_gpios() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_pm_debug_smdkled(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_pm_check_restore() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @s3c_pm_check_cleanup() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !50}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @s3c_irqwake_intmask, !1, !"s3c_irqwake_intmask", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/pm.c", i32 39, i32 15}
!2 = !{ptr @s3c_irqwake_eintmask, !3, !"s3c_irqwake_eintmask", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-s3c/pm.c", i32 40, i32 15}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-s3c/pm.c", i32 49, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @s3c_irqext_wake._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @s3c_irqext_wake._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-s3c/pm.c", i32 195, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @s3c_pm_init._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @s3c_pm_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @s3c_pm_flags, !18, !"s3c_pm_flags", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-s3c/pm.c", i32 34, i32 15}
!19 = !{ptr @pm_cpu_prep, !20, !"pm_cpu_prep", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-s3c/pm.c", i32 60, i32 8}
!21 = !{ptr @pm_cpu_sleep, !22, !"pm_cpu_sleep", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-s3c/pm.c", i32 61, i32 7}
!23 = !{ptr @s3c_pm_ops, !24, !"s3c_pm_ops", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-s3c/pm.c", i32 179, i32 42}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-s3c/pm.c", i32 76, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @s3c_pm_enter.__UNIQUE_ID_ddebug288, !26, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-s3c/pm.c", i32 79, i32 3}
!32 = !{ptr @s3c_pm_enter._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @s3c_pm_enter._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-s3c/pm.c", i32 91, i32 3}
!36 = !{ptr @s3c_pm_enter._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @s3c_pm_enter._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-s3c/pm.c", i32 92, i32 3}
!40 = !{ptr @s3c_pm_enter._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @s3c_pm_enter._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-s3c/pm.c", i32 110, i32 2}
!44 = !{ptr @s3c_pm_enter.__UNIQUE_ID_ddebug289, !43, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-s3c/pm.c", i32 153, i32 2}
!47 = !{ptr @s3c_pm_enter.__UNIQUE_ID_ddebug290, !46, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-s3c/pm.c", i32 162, i32 2}
!50 = !{ptr @s3c_pm_enter.__UNIQUE_ID_ddebug291, !49, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2148348938, i64 2148348943, i64 2148348956, i64 2148349000, i64 2148349034, i64 2148349055}
!61 = !{i64 5365384}
!62 = !{i64 5365802}
