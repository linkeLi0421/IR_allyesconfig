; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/prm3xxx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/prm3xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pwrdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.prm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_prcm_irq_setup = type { i16, i16, i16, i8, i8, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap_prcm_irq = type { ptr, i32, i8 }
%struct.omap3_vp = type { i32 }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i64, [4 x i64], i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@omap3_pwrdm_operations = dso_local global { %struct.pwrdm_ops, [44 x i8] } { %struct.pwrdm_ops { ptr @omap3_pwrdm_set_next_pwrst, ptr @omap3_pwrdm_read_next_pwrst, ptr @omap3_pwrdm_read_pwrst, ptr @omap3_pwrdm_read_prev_pwrst, ptr @omap2_pwrdm_set_logic_retst, ptr @omap2_pwrdm_set_mem_onst, ptr @omap2_pwrdm_set_mem_retst, ptr @omap3_pwrdm_read_logic_pwrst, ptr @omap3_pwrdm_read_prev_logic_pwrst, ptr @omap3_pwrdm_read_logic_retst, ptr @omap2_pwrdm_read_mem_pwrst, ptr @omap3_pwrdm_read_prev_mem_pwrst, ptr @omap2_pwrdm_read_mem_retst, ptr @omap3_pwrdm_clear_all_prev_pwrst, ptr @omap3_pwrdm_enable_hdwr_sar, ptr @omap3_pwrdm_disable_hdwr_sar, ptr null, ptr @omap2_pwrdm_wait_transition, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@prm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@prm_features = external dso_local local_unnamed_addr global i16, align 2
@omap3xxx_prm_ll_data = internal global { %struct.prm_ll_data, [52 x i8] } { %struct.prm_ll_data { ptr @omap3xxx_prm_read_reset_sources, ptr null, ptr null, ptr @omap3xxx_prm_late_init, ptr @omap2_prm_assert_hardreset, ptr @omap2_prm_deassert_hardreset, ptr @omap2_prm_is_hardreset_asserted, ptr @omap3xxx_prm_dpll3_reset, ptr @omap3xxx_prm_clear_mod_irqs, ptr @omap3_prm_vp_check_txdone, ptr @omap3_prm_vp_clear_txdone }, [52 x i8] zeroinitializer }, align 32
@__exitcall_omap3xxx_prm_exit = internal global ptr @omap3xxx_prm_exit, section ".exitcall.exit", align 4
@cm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/mach-omap2/prm3xxx.c\00", [34 x i8] zeroinitializer }, align 32
@omap_features = external dso_local local_unnamed_addr global i32, align 4
@omap3_prcm_irq_setup = internal global { %struct.omap_prcm_irq_setup, [44 x i8] } { %struct.omap_prcm_irq_setup { i16 24, i16 28, i16 0, i8 1, i8 2, ptr @omap3_prcm_irqs, i32 27, ptr @omap3xxx_prm_read_pending_irqs, ptr @omap3xxx_prm_ocp_barrier, ptr @omap3xxx_prm_save_and_clear_irqen, ptr @omap3xxx_prm_restore_irqen, ptr null, ptr null, ptr null, i32 0, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@omap3_prm_dt_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-prm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@omap3xxx_prm_late_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 705, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013PRM: no device tree node for interrupt?\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap3xxx_prm_late_init\00", [41 x i8] zeroinitializer }, align 32
@omap3xxx_prm_late_init._entry_ptr = internal global ptr @omap3xxx_prm_late_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@omap3_prm_reconfigure_io_chain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014PRM: I/O chain clock line assertion timed out\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"omap3_prm_reconfigure_io_chain\00", [33 x i8] zeroinitializer }, align 32
@omap3_prm_reconfigure_io_chain._entry_ptr = internal global ptr @omap3_prm_reconfigure_io_chain._entry, section ".printk_index", align 4
@omap3_prcm_irqs = internal constant { [2 x %struct.omap_prcm_irq], [40 x i8] } { [2 x %struct.omap_prcm_irq] [%struct.omap_prcm_irq { ptr @.str.5, i32 0, i8 0 }, %struct.omap_prcm_irq { ptr @.str.6, i32 9, i8 1 }], [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wkup\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"io\00", [29 x i8] zeroinitializer }, align 32
@omap3_vp = internal constant { [2 x %struct.omap3_vp], [24 x i8] } { [2 x %struct.omap3_vp] [%struct.omap3_vp { i32 32768 }, %struct.omap3_vp { i32 2097152 }], [24 x i8] zeroinitializer }, align 32
@switch.table.omap3_pwrdm_read_prev_mem_pwrst = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 48, i32 192, i32 768, i32 3072], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [23 x i8] c"omap3_pwrdm_operations\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 635, i32 18 }
@___asan_gen_.10 = private unnamed_addr constant [21 x i8] c"omap3xxx_prm_ll_data\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 661, i32 27 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 599, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"omap3_prcm_irq_setup\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 41, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [25 x i8] c"omap3_prm_dt_match_table\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 683, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 705, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 413, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"omap3_prcm_irqs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 36, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 37, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 38, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [9 x i8] c"omap3_vp\00", align 1
@___asan_gen_.50 = private constant [33 x i8] c"../arch/arm/mach-omap2/prm3xxx.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 86, i32 24 }
@___asan_gen_.52 = private unnamed_addr constant [45 x i8] c"switch.table.omap3_pwrdm_read_prev_mem_pwrst\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @__exitcall_omap3xxx_prm_exit, ptr @omap3_prm_reconfigure_io_chain._entry, ptr @omap3_prm_reconfigure_io_chain._entry_ptr, ptr @omap3xxx_prm_exit, ptr @omap3xxx_prm_late_init._entry, ptr @omap3xxx_prm_late_init._entry_ptr, ptr @omap3_pwrdm_operations, ptr @omap3xxx_prm_ll_data, ptr @.str, ptr @omap3_prcm_irq_setup, ptr @omap3_prm_dt_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @omap3_prcm_irqs, ptr @.str.5, ptr @.str.6, ptr @omap3_vp, ptr @switch.table.omap3_pwrdm_read_prev_mem_pwrst], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_pwrdm_operations to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3xxx_prm_ll_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_prcm_irq_setup to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_prm_dt_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3xxx_prm_late_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_prm_reconfigure_io_chain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_prcm_irqs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_vp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap3_pwrdm_read_prev_mem_pwrst to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_prm_vcvp_read(i8 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 2560
  %conv1.i = zext i8 %offset to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !41
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_prm_vcvp_write(i32 noundef %val, i8 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.bswap.i32(i32 %val) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2560
  %conv1.i = zext i8 %offset to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %0) #5, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_prm_vcvp_rmw(i32 noundef %mask, i32 noundef %bits, i8 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 2560
  %conv1.i.i = zext i8 %offset to i32
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv1.i.i
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !41
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %neg.i = xor i32 %mask, -1
  %and.i = and i32 %2, %neg.i
  %or.i = or i32 %and.i, %bits
  %3 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i = getelementptr i8, ptr %4, i32 2560
  %add.ptr2.i9.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %conv1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i, i32 %3) #5, !srcloc !42
  ret i32 %or.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_prm_reset_modem() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %0, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 50331648) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i2 = getelementptr i8, ptr %1, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i2, i32 0) #5, !srcloc !42
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_prm_init_pm(i1 noundef zeroext %has_uart4, i1 noundef zeroext %has_iva) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i = getelementptr i8, ptr %0, i32 2672
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !41
  %2 = and i32 %1, -402653185
  %3 = or i32 %2, 134217728
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i9.i = getelementptr i8, ptr %4, i32 2672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i, i32 %3) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 184614912) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i23 = getelementptr i8, ptr %6, i32 1188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i23, i32 184549376) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i25 = getelementptr i8, ptr %7, i32 1696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i25, i32 16777216) #5, !srcloc !42
  %. = select i1 %has_uart4, i32 518151, i32 256007
  %8 = tail call i32 @llvm.bswap.i32(i32 %.) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i27 = getelementptr i8, ptr %9, i32 2208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i27, i32 %8) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i29 = getelementptr i8, ptr %10, i32 2212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i29, i32 %8) #5, !srcloc !42
  br i1 %has_iva, label %if.then20, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i31 = getelementptr i8, ptr %11, i32 1192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i31, i32 0) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i33 = getelementptr i8, ptr %12, i32 680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i33, i32 0) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i35 = getelementptr i8, ptr %13, i32 756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i35, i32 0) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i37 = getelementptr i8, ptr %14, i32 2216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i37, i32 0) #5, !srcloc !42
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %entry.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i39 = getelementptr i8, ptr %15, i32 344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i39, i32 -1) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i41 = getelementptr i8, ptr %16, i32 600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i41, i32 -1) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i43 = getelementptr i8, ptr %17, i32 2136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i43, i32 -1) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i45 = getelementptr i8, ptr %18, i32 2392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i45, i32 -1) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i47 = getelementptr i8, ptr %19, i32 2904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i47, i32 -1) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i49 = getelementptr i8, ptr %20, i32 1624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i49, i32 -1) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i51 = getelementptr i8, ptr %21, i32 3160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i51, i32 -1) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i52 = getelementptr i8, ptr %22, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i52, i32 0) #5, !srcloc !42
  tail call void @omap3xxx_prm_iva_idle()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i53 = getelementptr i8, ptr %23, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i53, i32 50331648) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i2.i = getelementptr i8, ptr %24, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i2.i, i32 0) #5, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3xxx_prm_iva_idle() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 -2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %1, i32 -1972
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !41
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i3 = getelementptr i8, ptr %4, i32 -1968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i3, i32 117440512) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 -2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 16777216) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i6 = getelementptr i8, ptr %6, i32 -1968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i6, i32 0) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i7 = getelementptr i8, ptr %7, i32 -2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 0) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i9 = getelementptr i8, ptr %8, i32 -1968
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9, i32 117440512) #5, !srcloc !42
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3xxx_prm_clear_global_cold_reset() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %0, i32 2648
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !41
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %3, i32 2648
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !41
  %5 = or i32 %4, 16777216
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i9.i.i = getelementptr i8, ptr %6, i32 2648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i.i, i32 %5) #5, !srcloc !42
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_prm_save_scratchpad_contents(ptr nocapture noundef writeonly %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %0, i32 2672
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !41
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %incdec.ptr = getelementptr i32, ptr %ptr, i32 1
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i5 = getelementptr i8, ptr %4, i32 2624
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i5) #5, !srcloc !41
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  %7 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %incdec.ptr, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_set_next_pwrst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %pwrst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %pwrst to i32
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 224
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !41
  %4 = and i32 %3, -50331649
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %or.i = or i32 %5, %conv
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %add.ptr2.i9.i = getelementptr i8, ptr %add.ptr.i7.i, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i, i32 %6) #5, !srcloc !42
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_read_next_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 224
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !41
  %4 = lshr i32 %3, 24
  %and.i = and i32 %4, 3
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_read_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 228
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !41
  %4 = lshr i32 %3, 24
  %and.i = and i32 %4, 3
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_read_prev_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 232
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !41
  %4 = lshr i32 %3, 24
  %and.i = and i32 %4, 3
  ret i32 %and.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_set_logic_retst(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_set_mem_onst(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_set_mem_retst(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_read_logic_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 228
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !41
  %4 = lshr i32 %3, 26
  %and.i = and i32 %4, 1
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_read_prev_logic_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 232
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !41
  %4 = lshr i32 %3, 26
  %and.i = and i32 %4, 1
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_read_logic_retst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 224
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !41
  %4 = lshr i32 %3, 26
  %and.i = and i32 %4, 1
  ret i32 %and.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_read_mem_pwrst(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_read_prev_mem_pwrst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %bank) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bank)
  %0 = icmp ult i8 %bank, 4
  br i1 %0, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 599, i32 noundef 9, ptr noundef null) #5
  br label %omap3_get_mem_bank_lastmemst_mask.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = sext i8 %bank to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.omap3_pwrdm_read_prev_mem_pwrst, i32 0, i32 %1
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %omap3_get_mem_bank_lastmemst_mask.exit

omap3_get_mem_bank_lastmemst_mask.exit:           ; preds = %switch.lookup, %do.end.i
  %retval.0.i = phi i32 [ -17, %do.end.i ], [ %switch.load, %switch.lookup ]
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %3 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 232
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !41
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  %and.i = and i32 %7, %retval.0.i
  %8 = tail call i32 @llvm.cttz.i32(i32 %retval.0.i, i1 true) #5, !range !43
  %shr.i = lshr i32 %and.i, %8
  ret i32 %shr.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_read_mem_retst(ptr noundef, i8 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_clear_all_prev_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i = sext i16 %1 to i32
  %add.ptr.i = getelementptr i8, ptr %2, i32 %conv.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #5, !srcloc !42
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_enable_hdwr_sar(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 224
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !41
  %4 = or i32 %3, 268435456
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %add.ptr2.i9.i = getelementptr i8, ptr %add.ptr.i7.i, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i, i32 %4) #5, !srcloc !42
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_pwrdm_disable_hdwr_sar(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 224
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !41
  %4 = and i32 %3, -268435457
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i7.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %add.ptr2.i9.i = getelementptr i8, ptr %add.ptr.i7.i, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i, i32 %4) #5, !srcloc !42
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_wait_transition(ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3xxx_prm_init(ptr nocapture noundef readnone %data) local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr = getelementptr i8, ptr %0, i32 -2048
  tail call void @omap2_clk_legacy_provider_init(i32 noundef 2, ptr noundef %add.ptr) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap_features to i32))
  %1 = load i32, ptr @omap_features, align 4
  %and.i = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @prm_features to i32))
  %2 = load i16, ptr @prm_features, align 2
  %3 = or i16 %2, 1
  store i16 %3, ptr @prm_features, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @prm_register(ptr noundef nonnull @omap3xxx_prm_ll_data) #5
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_legacy_provider_init(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prm_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap3xxx_prm_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @prm_unregister(ptr noundef nonnull @omap3xxx_prm_ll_data) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prm_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3xxx_prm_read_reset_sources() #0 align 64 {
while.end:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %0, i32 1112
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !41
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %and.8 = and i32 %2, 512
  %and.7 = and i32 %2, 256
  %and.6 = lshr i32 %2, 1
  %3 = and i32 %and.6, 64
  %and.5 = lshr i32 %2, 1
  %4 = and i32 %and.5, 32
  %and.4 = lshr i32 %2, 2
  %5 = and i32 %and.4, 8
  %and.3 = lshr i32 %2, 1
  %6 = and i32 %and.3, 8
  %and.2 = lshr i32 %2, 1
  %7 = and i32 %and.2, 4
  %r.1.1 = and i32 %2, 3
  %r.1.2 = or i32 %7, %r.1.1
  %r.1.3 = or i32 %6, %r.1.2
  %r.1.4 = or i32 %5, %r.1.3
  %r.1.5 = or i32 %4, %r.1.4
  %r.1.6 = or i32 %3, %r.1.5
  %r.1.7 = or i32 %and.7, %r.1.6
  %r.1.8 = or i32 %and.8, %r.1.7
  %and.9 = and i32 %2, 1024
  %r.1.9 = or i32 %and.9, %r.1.8
  ret i32 %r.1.9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3xxx_prm_late_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @prm_features to i32))
  %0 = load i16, ptr @prm_features, align 2
  %1 = and i16 %0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap_features to i32))
  %2 = load i32, ptr @omap_features, align 4
  %and.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not = icmp eq i32 %and.i, 0
  %omap3430_pre_es3_1_reconfigure_io_chain.omap3_prm_reconfigure_io_chain = select i1 %tobool1.not, ptr @omap3430_pre_es3_1_reconfigure_io_chain, ptr @omap3_prm_reconfigure_io_chain
  store ptr %omap3430_pre_es3_1_reconfigure_io_chain.omap3_prm_reconfigure_io_chain, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap3_prcm_irq_setup, i32 0, i32 11), align 4
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @omap3_prm_dt_match_table, ptr noundef null) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @of_irq_get(ptr noundef nonnull %call.i, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call9)
  %cmp = icmp eq i32 %call9, -517
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  store i32 %call9, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap3_prcm_irq_setup, i32 0, i32 6), align 4
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @prm_features to i32))
  %3 = load i16, ptr @prm_features, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not.i = icmp eq i16 %4, 0
  br i1 %tobool.not.i, label %if.end12.omap3xxx_prm_enable_io_wakeup.exit_crit_edge, label %if.then.i

if.end12.omap3xxx_prm_enable_io_wakeup.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap3xxx_prm_enable_io_wakeup.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %5, i32 1184
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i.i) #5, !srcloc !41
  %7 = or i32 %6, 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i9.i.i.i = getelementptr i8, ptr %8, i32 1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i.i.i, i32 %7) #5, !srcloc !42
  br label %omap3xxx_prm_enable_io_wakeup.exit

omap3xxx_prm_enable_io_wakeup.exit:               ; preds = %if.then.i, %if.end12.omap3xxx_prm_enable_io_wakeup.exit_crit_edge
  %call13 = tail call i32 @omap_prcm_register_chain_handler(ptr noundef nonnull @omap3_prcm_irq_setup) #5
  br label %cleanup

cleanup:                                          ; preds = %omap3xxx_prm_enable_io_wakeup.exit, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %omap3xxx_prm_enable_io_wakeup.exit ], [ -19, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ -517, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_prm_assert_hardreset(i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_prm_deassert_hardreset(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_prm_is_hardreset_asserted(i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap3xxx_prm_dpll3_reset() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %0, i32 2640
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !41
  %2 = or i32 %1, 67108864
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i9.i.i = getelementptr i8, ptr %3, i32 2640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i.i, i32 %2) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %4, i32 2640
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3xxx_prm_clear_mod_irqs(i16 noundef signext %module, i8 noundef zeroext %regs, i32 noundef %wkst_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %regs)
  %cmp = icmp eq i8 %regs, 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i = sext i16 %module to i32
  %add.ptr.i = getelementptr i8, ptr %0, i32 %conv.i
  %conv1.i = select i1 %cmp, i32 184, i32 176
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i62 = getelementptr i8, ptr %2, i32 %conv.i
  %conv1.i63 = select i1 %cmp, i32 248, i32 164
  %add.ptr2.i64 = getelementptr i8, ptr %add.ptr.i62, i32 %conv1.i63
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i64) #5, !srcloc !41
  %4 = and i32 %3, %1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and19 = and i32 %5, %wkst_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool.not = icmp eq i32 %and19, 0
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i66 = getelementptr i8, ptr %6, i32 %conv.i
  %conv1.i67 = select i1 %cmp, i32 24, i32 16
  %add.ptr2.i68 = getelementptr i8, ptr %add.ptr.i66, i32 %conv1.i67
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i68) #5, !srcloc !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i70 = getelementptr i8, ptr %8, i32 %conv.i
  %conv1.i71 = select i1 %cmp, i32 8, i32 0
  %add.ptr2.i72 = getelementptr i8, ptr %add.ptr.i70, i32 %conv1.i71
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i72) #5, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %module)
  %cmp25 = icmp eq i16 %module, 3072
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then
  %c.098 = phi i32 [ 0, %if.then ], [ %inc, %while.body.while.body_crit_edge ]
  %wkst.097 = phi i32 [ %and19, %if.then ], [ %and30, %while.body.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %conv.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv1.i67
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !41
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #5
  %or.i.i = or i32 %12, %wkst.097
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %14, i32 %conv.i
  %add.ptr2.i4.i.i = getelementptr i8, ptr %add.ptr.i2.i.i, i32 %conv1.i67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i.i, i32 %13) #5, !srcloc !42
  %or = or i32 %wkst.097, 2
  %spec.select = select i1 %cmp25, i32 %or, i32 %wkst.097
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i.i.i74 = getelementptr i8, ptr %15, i32 %conv.i
  %add.ptr2.i.i.i76 = getelementptr i8, ptr %add.ptr.i.i.i74, i32 %conv1.i71
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i76) #5, !srcloc !41
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  %or.i.i77 = or i32 %17, %spec.select
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i.i77) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i.i78 = getelementptr i8, ptr %19, i32 %conv.i
  %add.ptr2.i4.i.i79 = getelementptr i8, ptr %add.ptr.i2.i.i78, i32 %conv1.i71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i.i79, i32 %18) #5, !srcloc !42
  %20 = tail call i32 @llvm.bswap.i32(i32 %wkst.097) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i81 = getelementptr i8, ptr %21, i32 %conv.i
  %add.ptr2.i83 = getelementptr i8, ptr %add.ptr.i81, i32 %conv1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i83, i32 %20) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i85 = getelementptr i8, ptr %22, i32 %conv.i
  %add.ptr2.i87 = getelementptr i8, ptr %add.ptr.i85, i32 %conv1.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i87) #5, !srcloc !41
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  %and30 = and i32 %24, %wkst_mask
  %inc = add i32 %c.098, 1
  %tobool22.not = icmp eq i32 %and30, 0
  br i1 %tobool22.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i89 = getelementptr i8, ptr %25, i32 %conv.i
  %add.ptr2.i91 = getelementptr i8, ptr %add.ptr.i89, i32 %conv1.i67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i91, i32 %7) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @cm_base, i32 0, i32 1), align 4
  %add.ptr.i93 = getelementptr i8, ptr %26, i32 %conv.i
  %add.ptr2.i95 = getelementptr i8, ptr %add.ptr.i93, i32 %conv1.i71
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i95, i32 %9) #5, !srcloc !42
  br label %if.end31

if.end31:                                         ; preds = %while.end, %entry.if.end31_crit_edge
  %c.1 = phi i32 [ %inc, %while.end ], [ 0, %entry.if.end31_crit_edge ]
  ret i32 %c.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_prm_vp_check_txdone(i8 noundef zeroext %vp_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %vp_id to i32
  %arrayidx = getelementptr [2 x %struct.omap3_vp], ptr @omap3_vp, i32 0, i32 %idxprom
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %0, i32 24
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !41
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %and = and i32 %2, %4
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap3_prm_vp_clear_txdone(i8 noundef zeroext %vp_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %vp_id to i32
  %arrayidx = getelementptr [2 x %struct.omap3_vp], ptr @omap3_vp, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %2) #5, !srcloc !42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap3_prm_reconfigure_io_chain() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %0, i32 1184
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !41
  %2 = or i32 %1, 256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i9.i.i = getelementptr i8, ptr %3, i32 1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i.i, i32 %2) #5, !srcloc !42
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.022 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %4, i32 1200
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !41
  %6 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %for.body.if.end5_crit_edge

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #5
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %if.end5

if.end5:                                          ; preds = %do.end, %for.body.if.end5_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i.i11 = getelementptr i8, ptr %8, i32 1184
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i11) #5, !srcloc !41
  %10 = and i32 %9, -257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i9.i.i12 = getelementptr i8, ptr %11, i32 1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i.i12, i32 %10) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i.i14 = getelementptr i8, ptr %12, i32 1200
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i14) #5, !srcloc !41
  %14 = or i32 %13, 256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i9.i.i17 = getelementptr i8, ptr %15, i32 1200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i.i17, i32 %14) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i19 = getelementptr i8, ptr %16, i32 1200
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i19) #5, !srcloc !41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap3430_pre_es3_1_reconfigure_io_chain() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %0, i32 1184
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !41
  %2 = and i32 %1, -65537
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i9.i.i = getelementptr i8, ptr %3, i32 1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i.i, i32 %2) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i.i3 = getelementptr i8, ptr %4, i32 1184
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i3) #5, !srcloc !41
  %6 = or i32 %5, 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i9.i.i4 = getelementptr i8, ptr %7, i32 1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i9.i.i4, i32 %6) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %8, i32 1184
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !41
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prcm_register_chain_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap3xxx_prm_read_pending_irqs(ptr nocapture noundef writeonly %events) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %0, i32 28
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !41
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i2 = getelementptr i8, ptr %2, i32 24
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i2) #5, !srcloc !41
  %4 = and i32 %3, %1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %events, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap3xxx_prm_ocp_barrier() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %0, i32 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap3xxx_prm_save_and_clear_irqen(ptr nocapture noundef writeonly %saved_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %0, i32 28
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !41
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %3 = ptrtoint ptr %saved_mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %saved_mask, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i2 = getelementptr i8, ptr %4, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i2, i32 0) #5, !srcloc !42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i3 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i3) #5, !srcloc !41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap3xxx_prm_restore_irqen(ptr nocapture noundef readonly %saved_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %saved_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %saved_mask, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %2) #5, !srcloc !42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @omap3_pwrdm_operations, !1, !"omap3_pwrdm_operations", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/prm3xxx.c", i32 635, i32 18}
!2 = !{ptr @__exitcall_omap3xxx_prm_exit, !3, !"__exitcall_omap3xxx_prm_exit", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/prm3xxx.c", i32 725, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/prm3xxx.c", i32 599, i32 3}
!6 = !{ptr @omap3xxx_prm_ll_data, !7, !"omap3xxx_prm_ll_data", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/prm3xxx.c", i32 661, i32 27}
!8 = distinct !{null, !9, !"omap3xxx_prm_reset_src_map", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/prm3xxx.c", i32 60, i32 33}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/prm3xxx.c", i32 705, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @omap3xxx_prm_late_init._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @omap3xxx_prm_late_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-omap2/prm3xxx.c", i32 413, i32 3}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @omap3_prm_reconfigure_io_chain._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @omap3_prm_reconfigure_io_chain._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @omap3_prcm_irq_setup, !21, !"omap3_prcm_irq_setup", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/prm3xxx.c", i32 41, i32 35}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/prm3xxx.c", i32 37, i32 2}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/prm3xxx.c", i32 38, i32 2}
!26 = !{ptr @omap3_prcm_irqs, !27, !"omap3_prcm_irqs", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/prm3xxx.c", i32 36, i32 35}
!28 = !{ptr @omap3_prm_dt_match_table, !29, !"omap3_prm_dt_match_table", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/prm3xxx.c", i32 683, i32 34}
!30 = !{ptr @omap3_vp, !31, !"omap3_vp", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/prm3xxx.c", i32 86, i32 24}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 1268086}
!42 = !{i64 1267668}
!43 = !{i32 0, i32 33}
