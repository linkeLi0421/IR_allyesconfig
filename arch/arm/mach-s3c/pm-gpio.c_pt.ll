; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/pm-gpio.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/pm-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.samsung_gpio_pm = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.samsung_gpio_chip = type { %struct.gpio_chip, ptr, ptr, ptr, i32, i32, %struct.spinlock, [4 x i32], i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.64, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.64 = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@samsung_gpio_pm_1bit = dso_local global { %struct.samsung_gpio_pm, [24 x i8] } { %struct.samsung_gpio_pm { ptr @samsung_gpio_pm_1bit_save, ptr @samsung_gpio_pm_1bit_resume }, [24 x i8] zeroinitializer }, align 32
@samsung_gpio_pm_2bit = dso_local global { %struct.samsung_gpio_pm, [24 x i8] } { %struct.samsung_gpio_pm { ptr @samsung_gpio_pm_2bit_save, ptr @samsung_gpio_pm_2bit_resume }, [24 x i8] zeroinitializer }, align 32
@samsung_gpio_pm_4bit = dso_local global { %struct.samsung_gpio_pm, [24 x i8] } { %struct.samsung_gpio_pm { ptr @samsung_gpio_pm_4bit_save, ptr @samsung_gpio_pm_4bit_resume }, [24 x i8] zeroinitializer }, align 32
@samsung_pm_save_gpios.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pm_gpio\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"samsung_pm_save_gpios\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"arch/arm/mach-s3c/pm-gpio.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: save %08x,%08x,%08x,%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@samsung_gpio_pm_1bit_resume.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"samsung_gpio_pm_1bit_resume\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: CON %08x => %08x, DAT %08x => %08x\0A\00", [56 x i8] zeroinitializer }, align 32
@samsung_gpio_pm_2bit_resume.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.5, i8 0, i8 45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"samsung_gpio_pm_2bit_resume\00", [36 x i8] zeroinitializer }, align 32
@samsung_gpio_pm_4bit_resume.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"samsung_gpio_pm_4bit_resume\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: CON4 %08x,%08x => %08x,%08x, DAT %08x => %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@samsung_gpio_pm_4bit_resume.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.9, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: CON4 %08x => %08x, DAT %08x => %08x\0A\00", [55 x i8] zeroinitializer }, align 32
@s3c_gpios = external dso_local local_unnamed_addr global [204 x ptr], align 4
@samsung_pm_save_gpio.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"samsung_pm_save_gpio\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: no pm for %s\0A\00", [46 x i8] zeroinitializer }, align 32
@samsung_pm_resume_gpio.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.11, i8 0, i8 89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"samsung_pm_resume_gpio\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [21 x i8] c"samsung_gpio_pm_1bit\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 59, i32 24 }
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"samsung_gpio_pm_2bit\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 186, i32 24 }
@___asan_gen_.19 = private unnamed_addr constant [21 x i8] c"samsung_gpio_pm_4bit\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 297, i32 24 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 337, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 55, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 182, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 285, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 291, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 312, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [31 x i8] c"../arch/arm/mach-s3c/pm-gpio.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 358, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @samsung_gpio_pm_1bit, ptr @samsung_gpio_pm_2bit, ptr @samsung_gpio_pm_4bit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_gpio_pm_1bit to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_gpio_pm_2bit to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_gpio_pm_4bit to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_gpio_pm_1bit_save(ptr nocapture noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #2, !srcloc !42
  %pm_save = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7
  %3 = ptrtoint ptr %pm_save to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %pm_save, align 4
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #2, !srcloc !42
  %arrayidx5 = getelementptr %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_gpio_pm_1bit_resume(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #2, !srcloc !42
  %add.ptr2 = getelementptr i8, ptr %1, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #2, !srcloc !42
  %pm_save = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7
  %4 = ptrtoint ptr %pm_save to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pm_save, align 4
  %arrayidx5 = getelementptr %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %or = or i32 %5, %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %or) #2, !srcloc !43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %7) #2, !srcloc !43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %5) #2, !srcloc !43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_gpio_pm_1bit_resume.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@samsung_gpio_pm_1bit_resume, %if.then)) #2
          to label %do.end [label %if.then], !srcloc !44

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @samsung_gpio_pm_1bit_resume.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.5, ptr noundef %9, i32 noundef %2, i32 noundef %5, i32 noundef %3, i32 noundef %7) #2
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_gpio_pm_2bit_save(ptr nocapture noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #2, !srcloc !42
  %pm_save = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7
  %3 = ptrtoint ptr %pm_save to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %pm_save, align 4
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #2, !srcloc !42
  %arrayidx5 = getelementptr %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx5, align 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #2, !srcloc !42
  %arrayidx10 = getelementptr %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7, i32 2
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx10, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_gpio_pm_2bit_resume(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #2, !srcloc !42
  %add.ptr2 = getelementptr i8, ptr %1, i32 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #2, !srcloc !42
  %pm_save = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7
  %4 = ptrtoint ptr %pm_save to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pm_save, align 4
  %arrayidx5 = getelementptr %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  %arrayidx7 = getelementptr %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %add.ptr8 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %9) #2, !srcloc !43
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %nr.090 = phi i32 [ 0, %entry ], [ %add, %for.inc.for.body_crit_edge ]
  %change_mask.089 = phi i32 [ 0, %entry ], [ %change_mask.1, %for.inc.for.body_crit_edge ]
  %mask.087 = phi i32 [ 3, %entry ], [ %shl, %for.inc.for.body_crit_edge ]
  %and = and i32 %mask.087, %2
  %shr = lshr i32 %and, %nr.090
  %and9 = and i32 %mask.087, %5
  %shr10 = lshr i32 %and9, %nr.090
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %shr10)
  %cmp11 = icmp eq i32 %shr, %shr10
  br i1 %cmp11, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %cmp.i = icmp ult i32 %shr, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr10)
  %cmp.i74 = icmp ult i32 %shr10, 2
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp.i74
  br i1 %or.cond, label %if.end16, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp.i76.not = icmp eq i32 %shr, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr10)
  %cmp.i78.not = icmp eq i32 %shr10, 1
  %or.cond85 = select i1 %cmp.i76.not, i1 %cmp.i78.not, i1 false
  br i1 %or.cond85, label %if.end16.for.inc_crit_edge, label %if.end23

if.end16.for.inc_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  %cmp.i.not = xor i1 %cmp.i, true
  %or.cond86 = select i1 %cmp.i.not, i1 %cmp.i78.not, i1 false
  %or = select i1 %or.cond86, i32 0, i32 %mask.087
  %spec.select = or i32 %change_mask.089, %or
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %if.end16.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %change_mask.1 = phi i32 [ %change_mask.089, %for.body.for.inc_crit_edge ], [ %change_mask.089, %if.end.for.inc_crit_edge ], [ %change_mask.089, %if.end16.for.inc_crit_edge ], [ %spec.select, %if.end23 ]
  %add = add nuw nsw i32 %nr.090, 2
  %shl = shl i32 %mask.087, 2
  %cmp = icmp ult i32 %nr.090, 30
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.end:                                          ; preds = %for.inc
  %neg = xor i32 %change_mask.1, -1
  %and31 = and i32 %2, %neg
  %and32 = and i32 %change_mask.1, %5
  %or33 = or i32 %and31, %and32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %or33) #2, !srcloc !43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %7) #2, !srcloc !43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %5) #2, !srcloc !43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_gpio_pm_2bit_resume.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@samsung_gpio_pm_2bit_resume, %if.then41)) #2
          to label %do.end [label %if.then41], !srcloc !44

if.then41:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #4
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @samsung_gpio_pm_2bit_resume.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.5, ptr noundef %11, i32 noundef %2, i32 noundef %5, i32 noundef %3, i32 noundef %7) #2
  br label %do.end

do.end:                                           ; preds = %if.then41, %for.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_gpio_pm_4bit_save(ptr nocapture noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #2, !srcloc !42
  %arrayidx = getelementptr %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #2, !srcloc !42
  %arrayidx5 = getelementptr %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7, i32 2
  %7 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx5, align 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #2, !srcloc !42
  %arrayidx10 = getelementptr %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7, i32 3
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx10, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %12 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %13)
  %cmp = icmp ugt i16 %13, 8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %pm_save = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %15, i32 -4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #2, !srcloc !42
  %17 = ptrtoint ptr %pm_save to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %pm_save, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @samsung_gpio_pm_4bit_resume(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !42
  %pm_save = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7
  %arrayidx = getelementptr %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #2, !srcloc !42
  tail call fastcc void @samsung_gpio_pm_4bit_con(ptr noundef %chip, i32 noundef 0)
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %7)
  %cmp = icmp ugt i16 %7, 8
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %add.ptr8 = getelementptr i8, ptr %1, i32 -4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #2, !srcloc !42
  tail call fastcc void @samsung_gpio_pm_4bit_con(ptr noundef %chip, i32 noundef -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %old_gpcon.sroa.0.0 = phi i32 [ %8, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #2, !srcloc !43
  %arrayidx15 = getelementptr %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx15, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %12) #2, !srcloc !43
  %13 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %14)
  %cmp20 = icmp ugt i16 %14, 8
  br i1 %cmp20, label %if.then22, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end26

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %15 = ptrtoint ptr %pm_save to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pm_save, align 4
  %add.ptr25 = getelementptr i8, ptr %1, i32 -4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %16) #2, !srcloc !43
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end.if.end26_crit_edge
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #2, !srcloc !43
  %arrayidx31 = getelementptr %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7, i32 3
  %19 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx31, align 4
  %add.ptr32 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %20) #2, !srcloc !43
  %21 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %22)
  %cmp36 = icmp ugt i16 %22, 8
  br i1 %cmp36, label %do.body, label %do.body51

do.body:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_gpio_pm_4bit_resume.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@samsung_gpio_pm_4bit_resume, %if.then42)) #2
          to label %if.end72 [label %if.then42], !srcloc !44

if.then42:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  %23 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chip, align 4
  %add.ptr46 = getelementptr i8, ptr %1, i32 -4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #2, !srcloc !42
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #2, !srcloc !42
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @samsung_gpio_pm_4bit_resume.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.8, ptr noundef %24, i32 noundef %old_gpcon.sroa.0.0, i32 noundef %5, i32 noundef %25, i32 noundef %26, i32 noundef %2, i32 noundef %4) #2
  br label %if.end72

do.body51:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_gpio_pm_4bit_resume.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@samsung_gpio_pm_4bit_resume, %if.then63)) #2
          to label %if.end72 [label %if.then63], !srcloc !44

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #4
  %27 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #2, !srcloc !42
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @samsung_gpio_pm_4bit_resume.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.9, ptr noundef %28, i32 noundef %5, i32 noundef %29, i32 noundef %2, i32 noundef %4) #2
  br label %if.end72

if.end72:                                         ; preds = %if.then63, %do.body51, %if.then42, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_pm_save_gpios() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %entry
  %gpio_nr.027 = phi i32 [ 0, %entry ], [ %gpio_nr.0.be, %for.cond.backedge.for.body_crit_edge ]
  %arrayidx.i = getelementptr [204 x ptr], ptr @s3c_gpios, i32 0, i32 %gpio_nr.027
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.cond.backedge_crit_edge, label %if.end

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %do.end, %for.body.for.cond.backedge_crit_edge
  %conv.pn = phi i32 [ %conv, %do.end ], [ 1, %for.body.for.cond.backedge_crit_edge ]
  %gpio_nr.0.be = add nuw nsw i32 %gpio_nr.027, %conv.pn
  %cmp = icmp ult i32 %gpio_nr.0.be, 204
  br i1 %cmp, label %for.cond.backedge.for.body_crit_edge, label %for.end

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

if.end:                                           ; preds = %for.body
  %pm1.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pm1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm1.i, align 4
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %if.end.do.body.i_crit_edge, label %lor.lhs.false.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp2.i = icmp eq ptr %5, null
  br i1 %cmp2.i, label %lor.lhs.false.i.do.body.i_crit_edge, label %if.else.i

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_pm_save_gpio.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@samsung_pm_save_gpios, %if.then5.i)) #2
          to label %samsung_pm_save_gpio.exit [label %if.then5.i], !srcloc !44

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @samsung_pm_save_gpio.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, ptr noundef %7) #2
  br label %samsung_pm_save_gpio.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %5(ptr noundef nonnull %1) #2
  br label %samsung_pm_save_gpio.exit

samsung_pm_save_gpio.exit:                        ; preds = %if.else.i, %if.then5.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_pm_save_gpios.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@samsung_pm_save_gpios, %if.then5)) #2
          to label %do.end [label %if.then5], !srcloc !44

if.then5:                                         ; preds = %samsung_pm_save_gpio.exit
  call void @__sanitizer_cov_trace_pc() #4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %pm_save = getelementptr inbounds %struct.samsung_gpio_chip, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %pm_save to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pm_save, align 4
  %arrayidx7 = getelementptr %struct.samsung_gpio_chip, ptr %1, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  %arrayidx9 = getelementptr %struct.samsung_gpio_chip, ptr %1, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9, align 4
  %arrayidx11 = getelementptr %struct.samsung_gpio_chip, ptr %1, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx11, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @samsung_pm_save_gpios.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.3, ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #2
  br label %do.end

do.end:                                           ; preds = %if.then5, %samsung_pm_save_gpio.exit
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %19 to i32
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @samsung_pm_restore_gpios() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.cond.backedge.for.body_crit_edge, %entry
  %gpio_nr.08 = phi i32 [ 0, %entry ], [ %gpio_nr.0.be, %for.cond.backedge.for.body_crit_edge ]
  %arrayidx.i = getelementptr [204 x ptr], ptr @s3c_gpios, i32 0, i32 %gpio_nr.08
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.cond.backedge_crit_edge, label %if.end

for.body.for.cond.backedge_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %samsung_pm_resume_gpio.exit, %for.body.for.cond.backedge_crit_edge
  %conv.pn = phi i32 [ %conv, %samsung_pm_resume_gpio.exit ], [ 1, %for.body.for.cond.backedge_crit_edge ]
  %gpio_nr.0.be = add nuw nsw i32 %gpio_nr.08, %conv.pn
  %cmp = icmp ult i32 %gpio_nr.0.be, 204
  br i1 %cmp, label %for.cond.backedge.for.body_crit_edge, label %for.end

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

if.end:                                           ; preds = %for.body
  %pm1.i = getelementptr inbounds %struct.samsung_gpio_chip, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pm1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm1.i, align 4
  %cmp.i = icmp eq ptr %3, null
  br i1 %cmp.i, label %if.end.do.body.i_crit_edge, label %lor.lhs.false.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %if.end
  %resume.i = getelementptr inbounds %struct.samsung_gpio_pm, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resume.i, align 4
  %cmp2.i = icmp eq ptr %5, null
  br i1 %cmp2.i, label %lor.lhs.false.i.do.body.i_crit_edge, label %if.else.i

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false.i.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @samsung_pm_resume_gpio.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@samsung_pm_restore_gpios, %if.then5.i)) #2
          to label %samsung_pm_resume_gpio.exit [label %if.then5.i], !srcloc !44

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @samsung_pm_resume_gpio.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef %7) #2
  br label %samsung_pm_resume_gpio.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void %5(ptr noundef nonnull %1) #2
  br label %samsung_pm_resume_gpio.exit

samsung_pm_resume_gpio.exit:                      ; preds = %if.else.i, %if.then5.i, %do.body.i
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %9 to i32
  br label %for.cond.backedge

for.end:                                          ; preds = %for.cond.backedge
  call void @__sanitizer_cov_trace_pc() #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @samsung_gpio_pm_4bit_con(ptr nocapture noundef readonly %chip, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %mul = shl i32 %index, 2
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !42
  %add = add i32 %index, 1
  %arrayidx = getelementptr %struct.samsung_gpio_chip, ptr %chip, i32 0, i32 7, i32 %add
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %2, 15
  %and1.i = and i32 %4, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and1.i)
  %cmp3.i = icmp eq i32 %and.i, %and1.i
  br i1 %cmp3.i, label %entry.for.inc.i_crit_edge, label %if.end.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp.i.i = icmp ult i32 %and.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and1.i)
  %cmp.i35.i = icmp ult i32 %and1.i, 2
  %or.cond.i = or i1 %cmp.i.i, %cmp.i35.i
  br i1 %or.cond.i, label %if.end7.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i37.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and1.i)
  %cmp.i39.not.i = icmp eq i32 %and1.i, 1
  %or.cond45.i = and i1 %cmp.i37.not.i, %cmp.i39.not.i
  br i1 %or.cond45.i, label %if.end7.i.for.inc.i_crit_edge, label %if.end14.i

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.end14.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #4
  %cmp.i.not.i = xor i1 %cmp.i.i, true
  %or.cond46.i = and i1 %cmp.i39.not.i, %cmp.i.not.i
  %or.i = select i1 %or.cond46.i, i32 0, i32 15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i, %if.end7.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %change_mask.1.i = phi i32 [ 0, %entry.for.inc.i_crit_edge ], [ 0, %if.end.i.for.inc.i_crit_edge ], [ 0, %if.end7.i.for.inc.i_crit_edge ], [ %or.i, %if.end14.i ]
  %and.1.i = lshr i32 %2, 4
  %shr.1.i = and i32 %and.1.i, 15
  %and1.1.i = lshr i32 %4, 4
  %shr2.1.i = and i32 %and1.1.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1.i, i32 %shr2.1.i)
  %cmp3.1.i = icmp eq i32 %shr.1.i, %shr2.1.i
  br i1 %cmp3.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.1.i)
  %cmp.i.1.i = icmp ult i32 %shr.1.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr2.1.i)
  %cmp.i35.1.i = icmp ult i32 %shr2.1.i, 2
  %or.cond.1.i = or i1 %cmp.i.1.i, %cmp.i35.1.i
  br i1 %or.cond.1.i, label %if.end7.1.i, label %if.end.1.i.for.inc.1.i_crit_edge

if.end.1.i.for.inc.1.i_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.1.i

if.end7.1.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.1.i)
  %cmp.i37.not.1.i = icmp eq i32 %shr.1.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr2.1.i)
  %cmp.i39.not.1.i = icmp eq i32 %shr2.1.i, 1
  %or.cond45.1.i = and i1 %cmp.i37.not.1.i, %cmp.i39.not.1.i
  br i1 %or.cond45.1.i, label %if.end7.1.i.for.inc.1.i_crit_edge, label %if.end14.1.i

if.end7.1.i.for.inc.1.i_crit_edge:                ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.1.i

if.end14.1.i:                                     ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #4
  %cmp.i.not.1.i = xor i1 %cmp.i.1.i, true
  %or.cond46.1.i = and i1 %cmp.i39.not.1.i, %cmp.i.not.1.i
  %or.1.i = select i1 %or.cond46.1.i, i32 0, i32 240
  %spec.select.1.i = or i32 %change_mask.1.i, %or.1.i
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end14.1.i, %if.end7.1.i.for.inc.1.i_crit_edge, %if.end.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %change_mask.1.1.i = phi i32 [ %change_mask.1.i, %for.inc.i.for.inc.1.i_crit_edge ], [ %change_mask.1.i, %if.end.1.i.for.inc.1.i_crit_edge ], [ %change_mask.1.i, %if.end7.1.i.for.inc.1.i_crit_edge ], [ %spec.select.1.i, %if.end14.1.i ]
  %and.2.i = lshr i32 %2, 8
  %shr.2.i = and i32 %and.2.i, 15
  %and1.2.i = lshr i32 %4, 8
  %shr2.2.i = and i32 %and1.2.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2.i, i32 %shr2.2.i)
  %cmp3.2.i = icmp eq i32 %shr.2.i, %shr2.2.i
  br i1 %cmp3.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.2.i)
  %cmp.i.2.i = icmp ult i32 %shr.2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr2.2.i)
  %cmp.i35.2.i = icmp ult i32 %shr2.2.i, 2
  %or.cond.2.i = or i1 %cmp.i.2.i, %cmp.i35.2.i
  br i1 %or.cond.2.i, label %if.end7.2.i, label %if.end.2.i.for.inc.2.i_crit_edge

if.end.2.i.for.inc.2.i_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.2.i

if.end7.2.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.2.i)
  %cmp.i37.not.2.i = icmp eq i32 %shr.2.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr2.2.i)
  %cmp.i39.not.2.i = icmp eq i32 %shr2.2.i, 1
  %or.cond45.2.i = and i1 %cmp.i37.not.2.i, %cmp.i39.not.2.i
  br i1 %or.cond45.2.i, label %if.end7.2.i.for.inc.2.i_crit_edge, label %if.end14.2.i

if.end7.2.i.for.inc.2.i_crit_edge:                ; preds = %if.end7.2.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.2.i

if.end14.2.i:                                     ; preds = %if.end7.2.i
  call void @__sanitizer_cov_trace_pc() #4
  %cmp.i.not.2.i = xor i1 %cmp.i.2.i, true
  %or.cond46.2.i = and i1 %cmp.i39.not.2.i, %cmp.i.not.2.i
  %or.2.i = select i1 %or.cond46.2.i, i32 0, i32 3840
  %spec.select.2.i = or i32 %change_mask.1.1.i, %or.2.i
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end14.2.i, %if.end7.2.i.for.inc.2.i_crit_edge, %if.end.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %change_mask.1.2.i = phi i32 [ %change_mask.1.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ], [ %change_mask.1.1.i, %if.end.2.i.for.inc.2.i_crit_edge ], [ %change_mask.1.1.i, %if.end7.2.i.for.inc.2.i_crit_edge ], [ %spec.select.2.i, %if.end14.2.i ]
  %and.3.i = lshr i32 %2, 12
  %shr.3.i = and i32 %and.3.i, 15
  %and1.3.i = lshr i32 %4, 12
  %shr2.3.i = and i32 %and1.3.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3.i, i32 %shr2.3.i)
  %cmp3.3.i = icmp eq i32 %shr.3.i, %shr2.3.i
  br i1 %cmp3.3.i, label %for.inc.2.i.samsung_gpio_pm_4bit_mask.exit_crit_edge, label %if.end.3.i

for.inc.2.i.samsung_gpio_pm_4bit_mask.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %samsung_gpio_pm_4bit_mask.exit

if.end.3.i:                                       ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.3.i)
  %cmp.i.3.i = icmp ult i32 %shr.3.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr2.3.i)
  %cmp.i35.3.i = icmp ult i32 %shr2.3.i, 2
  %or.cond.3.i = or i1 %cmp.i.3.i, %cmp.i35.3.i
  br i1 %or.cond.3.i, label %if.end7.3.i, label %if.end.3.i.samsung_gpio_pm_4bit_mask.exit_crit_edge

if.end.3.i.samsung_gpio_pm_4bit_mask.exit_crit_edge: ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %samsung_gpio_pm_4bit_mask.exit

if.end7.3.i:                                      ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.3.i)
  %cmp.i37.not.3.i = icmp eq i32 %shr.3.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr2.3.i)
  %cmp.i39.not.3.i = icmp eq i32 %shr2.3.i, 1
  %or.cond45.3.i = and i1 %cmp.i37.not.3.i, %cmp.i39.not.3.i
  br i1 %or.cond45.3.i, label %if.end7.3.i.samsung_gpio_pm_4bit_mask.exit_crit_edge, label %if.end14.3.i

if.end7.3.i.samsung_gpio_pm_4bit_mask.exit_crit_edge: ; preds = %if.end7.3.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %samsung_gpio_pm_4bit_mask.exit

if.end14.3.i:                                     ; preds = %if.end7.3.i
  call void @__sanitizer_cov_trace_pc() #4
  %cmp.i.not.3.i = xor i1 %cmp.i.3.i, true
  %or.cond46.3.i = and i1 %cmp.i39.not.3.i, %cmp.i.not.3.i
  %or.3.i = select i1 %or.cond46.3.i, i32 0, i32 61440
  %spec.select.3.i = or i32 %change_mask.1.2.i, %or.3.i
  br label %samsung_gpio_pm_4bit_mask.exit

samsung_gpio_pm_4bit_mask.exit:                   ; preds = %if.end14.3.i, %if.end7.3.i.samsung_gpio_pm_4bit_mask.exit_crit_edge, %if.end.3.i.samsung_gpio_pm_4bit_mask.exit_crit_edge, %for.inc.2.i.samsung_gpio_pm_4bit_mask.exit_crit_edge
  %change_mask.1.3.i = phi i32 [ %change_mask.1.2.i, %for.inc.2.i.samsung_gpio_pm_4bit_mask.exit_crit_edge ], [ %change_mask.1.2.i, %if.end.3.i.samsung_gpio_pm_4bit_mask.exit_crit_edge ], [ %change_mask.1.2.i, %if.end7.3.i.samsung_gpio_pm_4bit_mask.exit_crit_edge ], [ %spec.select.3.i, %if.end14.3.i ]
  %neg = xor i32 %change_mask.1.3.i, -1
  %and = and i32 %2, %neg
  %and2 = and i32 %change_mask.1.3.i, %4
  %or = or i32 %and, %and2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #2, !srcloc !43
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !25, !26, !28, !29, !30, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @samsung_gpio_pm_1bit, !1, !"samsung_gpio_pm_1bit", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/pm-gpio.c", i32 59, i32 24}
!2 = !{ptr @samsung_gpio_pm_2bit, !3, !"samsung_gpio_pm_2bit", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-s3c/pm-gpio.c", i32 186, i32 24}
!4 = !{ptr @samsung_gpio_pm_4bit, !5, !"samsung_gpio_pm_4bit", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-s3c/pm-gpio.c", i32 297, i32 24}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-s3c/pm-gpio.c", i32 337, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @samsung_pm_save_gpios.__UNIQUE_ID_ddebug228, !7, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-s3c/pm-gpio.c", i32 55, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @samsung_gpio_pm_1bit_resume.__UNIQUE_ID_ddebug223, !13, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-s3c/pm-gpio.c", i32 182, i32 2}
!18 = !{ptr @samsung_gpio_pm_2bit_resume.__UNIQUE_ID_ddebug224, !17, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-s3c/pm-gpio.c", i32 285, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @samsung_gpio_pm_4bit_resume.__UNIQUE_ID_ddebug225, !20, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-s3c/pm-gpio.c", i32 291, i32 3}
!25 = !{ptr @samsung_gpio_pm_4bit_resume.__UNIQUE_ID_ddebug226, !24, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-s3c/pm-gpio.c", i32 312, i32 3}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @samsung_pm_save_gpio.__UNIQUE_ID_ddebug227, !27, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-s3c/pm-gpio.c", i32 358, i32 3}
!32 = !{ptr @samsung_pm_resume_gpio.__UNIQUE_ID_ddebug229, !31, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 4778952}
!43 = !{i64 4778534}
!44 = !{i64 2148699316, i64 2148699321, i64 2148699334, i64 2148699378, i64 2148699412, i64 2148699433}
