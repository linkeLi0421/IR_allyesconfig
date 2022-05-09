; ModuleID = '/llk/IR_all_yes/arch/arm/mm/cache-b15-rac.c_pt.bc'
source_filename = "../arch/arm/mm/cache-b15-rac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@b15_rac_flags = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rac_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_cache_b15_rac__227_374_b15_rac_init3 = internal global ptr @b15_rac_init, section ".initcall3.init", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rac_lock\00", [23 x i8] zeroinitializer }, align 32
@b15_rac_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rac_flush_offset = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"brcm,brcmstb-cpu-biu-ctrl\00", [38 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"arch/arm/mm/cache-b15-rac.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RAC only supports 4 CPUs\0A\00", [38 x i8] zeroinitializer }, align 32
@b15_rac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013failed to remap BIU control base\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"b15_rac_init\00", [19 x i8] zeroinitializer }, align 32
@b15_rac_init._entry_ptr = internal global ptr @b15_rac_init._entry, section ".printk_index", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm,brahma-b15\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm,brahma-b53\00", [16 x i8] zeroinitializer }, align 32
@b15_rac_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\013Unsupported CPU\0A\00", [45 x i8] zeroinitializer }, align 32
@b15_rac_init._entry_ptr.10 = internal global ptr @b15_rac_init._entry.8, section ".printk_index", align 4
@b15_rac_reboot_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @b15_rac_reboot_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@b15_rac_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013failed to register reboot notifier\0A\00", [58 x i8] zeroinitializer }, align 32
@b15_rac_init._entry_ptr.13 = internal global ptr @b15_rac_init._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"arm/cache-b15-rac:dead\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"arm/cache-b15-rac:dying\00", [40 x i8] zeroinitializer }, align 32
@b15_rac_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @b15_rac_suspend, ptr @b15_rac_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Read-ahead cache not previously disabled\0A\00", [54 x i8] zeroinitializer }, align 32
@b15_rac_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%pOF: Broadcom Brahma-B15 readahead cache\0A\00", [51 x i8] zeroinitializer }, align 32
@b15_rac_init._entry_ptr.19 = internal global ptr @b15_rac_init._entry.17, section ".printk_index", align 4
@rac_config0_reg = internal global { i32, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"b15_rac_flags\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 60, i32 22 }
@___asan_gen_.23 = private unnamed_addr constant [9 x i8] c"rac_lock\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 52, i32 8 }
@___asan_gen_.29 = private unnamed_addr constant [13 x i8] c"b15_rac_base\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 51, i32 22 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"rac_flush_offset\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 55, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 295, i32 43 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 299, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 304, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 315, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 317, i32 43 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 320, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"b15_rac_reboot_nb\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 176, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 329, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 336, i32 6 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 342, i32 6 }
@___asan_gen_.80 = private unnamed_addr constant [20 x i8] c"b15_rac_syscore_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 284, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 355, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 361, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"rac_config0_reg\00", align 1
@___asan_gen_.93 = private constant [31 x i8] c"../arch/arm/mm/cache-b15-rac.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 54, i32 12 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__initcall__kmod_cache_b15_rac__227_374_b15_rac_init3, ptr @b15_rac_init._entry, ptr @b15_rac_init._entry.11, ptr @b15_rac_init._entry.17, ptr @b15_rac_init._entry.8, ptr @b15_rac_init._entry_ptr, ptr @b15_rac_init._entry_ptr.10, ptr @b15_rac_init._entry_ptr.13, ptr @b15_rac_init._entry_ptr.19, ptr @b15_rac_flags, ptr @rac_lock, ptr @.str, ptr @b15_rac_base, ptr @rac_flush_offset, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @b15_rac_reboot_nb, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @b15_rac_syscore_ops, ptr @.str.16, ptr @.str.18, ptr @rac_config0_reg], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b15_rac_flags to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rac_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b15_rac_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rac_flush_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b15_rac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b15_rac_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b15_rac_reboot_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b15_rac_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b15_rac_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b15_rac_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rac_config0_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b15_flush_kern_cache_all() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @b15_rac_flags, align 4
  %1 = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @v7_flush_kern_cache_all() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @rac_lock) #5
  %2 = load volatile i32, ptr @b15_rac_flags, align 4
  %and1.i11 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i11)
  %tobool2.not = icmp eq i32 %and1.i11, 0
  br i1 %tobool2.not, label %if.end5.thread, label %if.then3

if.end5.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @v7_flush_kern_cache_all() #5
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr @b15_rac_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !58
  %5 = load ptr, ptr @b15_rac_base, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %5, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  %6 = load ptr, ptr @b15_rac_base, align 4
  %7 = load i32, ptr @rac_flush_offset, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %6, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 1) #5, !srcloc !59
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !61
  %8 = load ptr, ptr @b15_rac_base, align 4
  %9 = load i32, ptr @rac_flush_offset, align 4
  %add.ptr1.i2.i = getelementptr i8, ptr %8, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i2.i) #5, !srcloc !58
  %and.i.i = and i32 %10, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

if.else:                                          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @v7_flush_kern_cache_all() #5
  %11 = load ptr, ptr @b15_rac_base, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end5.thread
  tail call void @_raw_spin_unlock(ptr noundef nonnull @rac_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v7_flush_kern_cache_all() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @b15_rac_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call4.i.i)
  %cmp = icmp ugt i32 %call4.i.i, 4
  br i1 %cmp, label %do.end, label %if.end25.critedge, !prof !63

do.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 299, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %out

if.end25.critedge:                                ; preds = %if.end.i.i
  %call26 = tail call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #5
  store ptr %call26, ptr @b15_rac_base, align 4
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end25.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %out

if.end34:                                         ; preds = %if.end25.critedge
  %call35 = tail call ptr @of_get_cpu_node(i32 noundef 0, ptr noundef null) #5
  %tobool36.not = icmp eq ptr %call35, null
  br i1 %tobool36.not, label %if.end34.out_crit_edge, label %if.end38

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end38:                                         ; preds = %if.end34
  %call39 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call35, ptr noundef nonnull @.str.6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.else, label %if.end38.if.end52_crit_edge

if.end38.if.end52_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.else:                                          ; preds = %if.end38
  %call42 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call35, ptr noundef nonnull @.str.7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.end48, label %if.else.if.end52_crit_edge

if.else.if.end52_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

do.end48:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #8
  tail call void @of_node_put(ptr noundef nonnull %call35) #5
  br label %out

if.end52:                                         ; preds = %if.else.if.end52_crit_edge, %if.end38.if.end52_crit_edge
  %storemerge = phi i32 [ 128, %if.end38.if.end52_crit_edge ], [ 132, %if.else.if.end52_crit_edge ]
  store i32 %storemerge, ptr @rac_flush_offset, align 4
  tail call void @of_node_put(ptr noundef nonnull %call35) #5
  %call53 = tail call i32 @register_reboot_notifier(ptr noundef nonnull @b15_rac_reboot_nb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end61, label %do.end58

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  %1 = load ptr, ptr @b15_rac_base, align 4
  tail call void @iounmap(ptr noundef %1) #5
  br label %out

if.end61:                                         ; preds = %if.end52
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 38, ptr noundef nonnull @.str.14, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @b15_rac_dead_cpu, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool63.not = icmp eq i32 %call.i, 0
  br i1 %tobool63.not, label %if.end65, label %if.end61.out_unmap_crit_edge

if.end61.out_unmap_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_unmap

if.end65:                                         ; preds = %if.end61
  %call.i130 = tail call i32 @__cpuhp_setup_state(i32 noundef 148, ptr noundef nonnull @.str.15, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @b15_rac_dying_cpu, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %tobool67.not = icmp eq i32 %call.i130, 0
  br i1 %tobool67.not, label %if.end69, label %out_cpu_dead

if.end69:                                         ; preds = %if.end65
  tail call void @register_syscore_ops(ptr noundef nonnull @b15_rac_syscore_ops) #5
  tail call void @_raw_spin_lock(ptr noundef nonnull @rac_lock) #5
  %2 = load ptr, ptr @b15_rac_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 120
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %call71131 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call71131, i32 %4)
  %cmp72132 = icmp ult i32 %call71131, %4
  br i1 %cmp72132, label %if.end69.for.body_crit_edge, label %if.end69.for.end_crit_edge

if.end69.for.end_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end69.for.body_crit_edge:                      ; preds = %if.end69
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end69.for.body_crit_edge
  %call71134 = phi i32 [ %call71, %for.body.for.body_crit_edge ], [ %call71131, %if.end69.for.body_crit_edge ]
  %en_mask.0133 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %if.end69.for.body_crit_edge ]
  %mul = shl i32 %call71134, 3
  %shl = shl i32 16, %mul
  %or = or i32 %shl, %en_mask.0133
  %call71 = tail call i32 @cpumask_next(i32 noundef %call71134, ptr noundef nonnull @__cpu_possible_mask) #9
  %cmp72 = icmp ult i32 %call71, %4
  br i1 %cmp72, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end69.for.end_crit_edge
  %en_mask.0.lcssa = phi i32 [ 0, %if.end69.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %and = and i32 %en_mask.0.lcssa, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool74.not = icmp eq i32 %and, 0
  br i1 %tobool74.not, label %for.end.if.end96_crit_edge, label %do.end90, !prof !64

for.end.if.end96_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end96

do.end90:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 355, i32 noundef 9, ptr noundef nonnull @.str.16) #5
  br label %if.end96

if.end96:                                         ; preds = %do.end90, %for.end.if.end96_crit_edge
  tail call fastcc void @b15_rac_enable()
  tail call void @_set_bit(i32 noundef 0, ptr noundef nonnull @b15_rac_flags) #5
  tail call void @_raw_spin_unlock(ptr noundef nonnull @rac_lock) #5
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %call) #8
  br label %out

out_cpu_dead:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__cpuhp_remove_state(i32 noundef 148, i1 noundef zeroext false) #5
  br label %out_unmap

out_unmap:                                        ; preds = %out_cpu_dead, %if.end61.out_unmap_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end61.out_unmap_crit_edge ], [ %call.i130, %out_cpu_dead ]
  %call109 = tail call i32 @unregister_reboot_notifier(ptr noundef nonnull @b15_rac_reboot_nb) #5
  %5 = load ptr, ptr @b15_rac_base, align 4
  tail call void @iounmap(ptr noundef %5) #5
  br label %out

out:                                              ; preds = %out_unmap, %if.end96, %do.end58, %do.end48, %if.end34.out_crit_edge, %do.end31, %do.end
  %ret.1 = phi i32 [ %call53, %do.end58 ], [ %ret.0, %out_unmap ], [ 0, %if.end96 ], [ -22, %do.end48 ], [ -12, %do.end31 ], [ 0, %do.end ], [ -19, %if.end34.out_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b15_rac_dead_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @b15_rac_flags, align 4
  %1 = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @rac_lock) #5
  %2 = load i32, ptr @rac_config0_reg, align 4
  %3 = load ptr, ptr @b15_rac_base, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %4 = load i32, ptr @b15_rac_flags, align 4
  %or.i = or i32 %4, 1
  store i32 %or.i, ptr @b15_rac_flags, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @rac_lock) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b15_rac_dying_cpu(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile i32, ptr @b15_rac_flags, align 4
  %1 = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @rac_lock) #5
  %2 = load i32, ptr @b15_rac_flags, align 4
  %and.i = and i32 %2, -2
  store i32 %and.i, ptr @b15_rac_flags, align 4
  %3 = load ptr, ptr @b15_rac_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !58
  %5 = load ptr, ptr @b15_rac_base, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %5, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  %6 = load ptr, ptr @b15_rac_base, align 4
  %7 = load i32, ptr @rac_flush_offset, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %6, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 1) #5, !srcloc !59
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !61
  %8 = load ptr, ptr @b15_rac_base, align 4
  %9 = load i32, ptr @rac_flush_offset, align 4
  %add.ptr1.i2.i = getelementptr i8, ptr %8, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i2.i) #5, !srcloc !58
  %and.i.i = and i32 %10, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %b15_rac_disable_and_flush.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

b15_rac_disable_and_flush.exit:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i32 %4, ptr @rac_config0_reg, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @rac_lock) #5
  br label %return

return:                                           ; preds = %b15_rac_disable_and_flush.exit, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @b15_rac_enable() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call5 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %0)
  %cmp6 = icmp ult i32 %call5, %0
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %call8 = phi i32 [ %call, %for.body.for.body_crit_edge ], [ %call5, %entry.for.body_crit_edge ]
  %enable.07 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %call8, 3
  %shl = shl i32 221, %mul
  %or = or i32 %shl, %enable.07
  %call = tail call i32 @cpumask_next(i32 noundef %call8, ptr noundef nonnull @__cpu_possible_mask) #9
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %enable.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %1 = load ptr, ptr @b15_rac_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 120
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !58
  %3 = load ptr, ptr @b15_rac_base, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  %4 = load ptr, ptr @b15_rac_base, align 4
  %5 = load i32, ptr @rac_flush_offset, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %4, i32 %5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 1) #5, !srcloc !59
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !61
  %6 = load ptr, ptr @b15_rac_base, align 4
  %7 = load i32, ptr @rac_flush_offset, align 4
  %add.ptr1.i2.i = getelementptr i8, ptr %6, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i2.i) #5, !srcloc !58
  %and.i.i = and i32 %8, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %b15_rac_disable_and_flush.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

b15_rac_disable_and_flush.exit:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = load ptr, ptr @b15_rac_base, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %enable.0.lcssa) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b15_rac_reboot_notifier(ptr nocapture noundef readnone %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp = icmp eq i32 %action, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @rac_lock) #5
  %0 = load ptr, ptr @b15_rac_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 120
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !58
  %2 = load ptr, ptr @b15_rac_base, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %2, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  %3 = load ptr, ptr @b15_rac_base, align 4
  %4 = load i32, ptr @rac_flush_offset, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %3, i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 1) #5, !srcloc !59
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !61
  %5 = load ptr, ptr @b15_rac_base, align 4
  %6 = load i32, ptr @rac_flush_offset, align 4
  %add.ptr1.i2.i = getelementptr i8, ptr %5, i32 %6
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i2.i) #5, !srcloc !58
  %and.i.i = and i32 %7, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %b15_rac_disable_and_flush.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

b15_rac_disable_and_flush.exit:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef nonnull @b15_rac_flags) #5
  tail call void @_set_bit(i32 noundef 1, ptr noundef nonnull @b15_rac_flags) #5
  tail call void @_raw_spin_unlock(ptr noundef nonnull @rac_lock) #5
  br label %if.end

if.end:                                           ; preds = %b15_rac_disable_and_flush.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b15_rac_suspend() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @b15_rac_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 120
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !58
  %2 = load ptr, ptr @b15_rac_base, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %2, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 0) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  %3 = load ptr, ptr @b15_rac_base, align 4
  %4 = load i32, ptr @rac_flush_offset, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %3, i32 %4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1.i, i32 1) #5, !srcloc !59
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !61
  %5 = load ptr, ptr @b15_rac_base, align 4
  %6 = load i32, ptr @rac_flush_offset, align 4
  %add.ptr1.i2.i = getelementptr i8, ptr %5, i32 %6
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i2.i) #5, !srcloc !58
  %and.i.i = and i32 %7, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %b15_rac_disable_and_flush.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i.i

b15_rac_disable_and_flush.exit:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i32 %1, ptr @rac_config0_reg, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef nonnull @b15_rac_flags) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b15_rac_resume() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @rac_config0_reg, align 4
  %1 = load ptr, ptr @b15_rac_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @_clear_bit(i32 noundef 1, ptr noundef nonnull @b15_rac_flags) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !19, !20, !21, !23, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !42, !43, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_cache_b15_rac__227_374_b15_rac_init3, !1, !"__initcall__kmod_cache_b15_rac__227_374_b15_rac_init3", i1 false, i1 false}
!1 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 374, i32 1}
!2 = !{ptr @b15_rac_flags, !3, !"b15_rac_flags", i1 false, i1 false}
!3 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 60, i32 22}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 52, i32 8}
!6 = !{ptr @rac_lock, !5, !"rac_lock", i1 false, i1 false}
!7 = !{ptr @b15_rac_base, !8, !"b15_rac_base", i1 false, i1 false}
!8 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 51, i32 22}
!9 = !{ptr @rac_flush_offset, !10, !"rac_flush_offset", i1 false, i1 false}
!10 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 55, i32 12}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 295, i32 43}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 299, i32 6}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 304, i32 3}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @b15_rac_init._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @b15_rac_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 315, i32 38}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 317, i32 43}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 320, i32 3}
!27 = !{ptr @b15_rac_init._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @b15_rac_init._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 329, i32 3}
!31 = !{ptr @b15_rac_init._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @b15_rac_init._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 336, i32 6}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 342, i32 6}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 355, i32 2}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 361, i32 2}
!41 = !{ptr @b15_rac_init._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @b15_rac_init._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @b15_rac_reboot_nb, !44, !"b15_rac_reboot_nb", i1 false, i1 false}
!44 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 176, i32 30}
!45 = !{ptr @rac_config0_reg, !46, !"rac_config0_reg", i1 false, i1 false}
!46 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 54, i32 12}
!47 = !{ptr @b15_rac_syscore_ops, !48, !"b15_rac_syscore_ops", i1 false, i1 false}
!48 = !{!"../arch/arm/mm/cache-b15-rac.c", i32 284, i32 27}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 1720721}
!59 = !{i64 1720303}
!60 = !{i64 2153929442}
!61 = !{i64 2153929718}
!62 = !{i64 2153930182}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{!"branch_weights", i32 2000, i32 1}
