; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/prm44xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/prm44xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pwrdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.omap_prcm_irq_setup = type { i16, i16, i16, i8, i8, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.prm_ll_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.omap_prcm_irq = type { ptr, i32, i8 }
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.omap4_vp = type { i32, i32 }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i64, [4 x i64], i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.omap_prcm_init_data = type { i32, ptr, i32, i16, i16, i32, ptr, ptr }

@omap4_pwrdm_operations = dso_local global { %struct.pwrdm_ops, [44 x i8] } { %struct.pwrdm_ops { ptr @omap4_pwrdm_set_next_pwrst, ptr @omap4_pwrdm_read_next_pwrst, ptr @omap4_pwrdm_read_pwrst, ptr @omap4_pwrdm_read_prev_pwrst, ptr @omap4_pwrdm_set_logic_retst, ptr @omap4_pwrdm_set_mem_onst, ptr @omap4_pwrdm_set_mem_retst, ptr @omap4_pwrdm_read_logic_pwrst, ptr @omap4_pwrdm_read_prev_logic_pwrst, ptr @omap4_pwrdm_read_logic_retst, ptr @omap4_pwrdm_read_mem_pwrst, ptr @omap4_pwrdm_read_prev_mem_pwrst, ptr @omap4_pwrdm_read_mem_retst, ptr @omap4_pwrdm_clear_all_prev_pwrst, ptr null, ptr null, ptr @omap4_pwrdm_set_lowpwrstchange, ptr @omap4_pwrdm_wait_transition, ptr @omap4_check_vcvp, ptr @omap4_pwrdm_save_context, ptr @omap4_pwrdm_restore_context }, [44 x i8] zeroinitializer }, align 32
@omap44xx_prm_init.nb = internal global { %struct.notifier_block, [20 x i8] } zeroinitializer, align 32
@prm_init_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@prm_features = external dso_local local_unnamed_addr global i16, align 2
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,am4-prcm\00", [20 x i8] zeroinitializer }, align 32
@omap4_prcm_irq_setup = internal global { %struct.omap_prcm_irq_setup, [44 x i8] } { %struct.omap_prcm_irq_setup { i16 16, i16 24, i16 32, i8 2, i8 1, ptr @omap4_prcm_irqs, i32 0, ptr @omap44xx_prm_read_pending_irqs, ptr @omap44xx_prm_ocp_barrier, ptr @omap44xx_prm_save_and_clear_irqen, ptr @omap44xx_prm_restore_irqen, ptr @omap44xx_prm_reconfigure_io_chain, ptr null, ptr null, i32 0, i8 0, i8 0 }, [44 x i8] zeroinitializer }, align 32
@omap44xx_prm_ll_data = internal global { %struct.prm_ll_data, [52 x i8] } { %struct.prm_ll_data { ptr @omap44xx_prm_read_reset_sources, ptr @omap44xx_prm_was_any_context_lost_old, ptr @omap44xx_prm_clear_context_loss_flags_old, ptr @omap44xx_prm_late_init, ptr @omap4_prminst_assert_hardreset, ptr @omap4_prminst_deassert_hardreset, ptr @omap4_prminst_is_hardreset_asserted, ptr @omap4_prminst_global_warm_sw_reset, ptr null, ptr @omap4_prm_vp_check_txdone, ptr @omap4_prm_vp_clear_txdone }, [52 x i8] zeroinitializer }, align 32
@__exitcall_omap44xx_prm_exit = internal global ptr @omap44xx_prm_exit, section ".exitcall.exit", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@omap4_pwrdm_wait_transition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013powerdomain: %s: waited too long to complete transition\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"omap4_pwrdm_wait_transition\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"arch/arm/mach-omap2/prm44xx.c\00", [34 x i8] zeroinitializer }, align 32
@omap4_pwrdm_wait_transition._entry_ptr = internal global ptr @omap4_pwrdm_wait_transition._entry, section ".printk_index", align 4
@omap4_pwrdm_wait_transition.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"prm44xx\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"powerdomain: completed transition in %d loops\0A\00", [49 x i8] zeroinitializer }, align 32
@omap4_prcm_irqs = internal constant { [1 x %struct.omap_prcm_irq], [20 x i8] } { [1 x %struct.omap_prcm_irq] [%struct.omap_prcm_irq { ptr @.str.6, i32 9, i8 1 }], [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"io\00", [29 x i8] zeroinitializer }, align 32
@prm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@omap44xx_prm_reconfigure_io_chain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014PRM: I/O chain clock line assertion timed out\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"omap44xx_prm_reconfigure_io_chain\00", [62 x i8] zeroinitializer }, align 32
@omap44xx_prm_reconfigure_io_chain._entry_ptr = internal global ptr @omap44xx_prm_reconfigure_io_chain._entry, section ".printk_index", align 4
@omap44xx_prm_reconfigure_io_chain._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014PRM: I/O chain clock line deassertion timed out\0A\00", [45 x i8] zeroinitializer }, align 32
@omap44xx_prm_reconfigure_io_chain._entry_ptr.11 = internal global ptr @omap44xx_prm_reconfigure_io_chain._entry.9, section ".printk_index", align 4
@enable_off_mode = external dso_local local_unnamed_addr global i32, align 4
@omap_prm_context.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@omap_prm_context.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@omap4_vp = internal constant { [3 x %struct.omap4_vp], [40 x i8] } { [3 x %struct.omap4_vp] [%struct.omap4_vp { i32 16, i32 2097152 }, %struct.omap4_vp { i32 16, i32 536870912 }, %struct.omap4_vp { i32 20, i32 32 }], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"omap4_pwrdm_operations\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 724, i32 18 }
@___asan_gen_.17 = private unnamed_addr constant [3 x i8] c"nb\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 806, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"prm_init_data\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 802, i32 42 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 820, i32 40 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"omap4_prcm_irq_setup\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 45, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"omap44xx_prm_ll_data\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 789, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 658, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 663, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"omap4_prcm_irqs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 41, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 42, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 325, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 338, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"omap_prm_context.0\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"omap_prm_context.1\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [9 x i8] c"omap4_vp\00", align 1
@___asan_gen_.74 = private constant [33 x i8] c"../arch/arm/mach-omap2/prm44xx.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 132, i32 24 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__exitcall_omap44xx_prm_exit, ptr @omap44xx_prm_exit, ptr @omap44xx_prm_reconfigure_io_chain._entry, ptr @omap44xx_prm_reconfigure_io_chain._entry.9, ptr @omap44xx_prm_reconfigure_io_chain._entry_ptr, ptr @omap44xx_prm_reconfigure_io_chain._entry_ptr.11, ptr @omap4_pwrdm_wait_transition._entry, ptr @omap4_pwrdm_wait_transition._entry_ptr, ptr @omap4_pwrdm_operations, ptr @omap44xx_prm_init.nb, ptr @prm_init_data, ptr @.str, ptr @omap4_prcm_irq_setup, ptr @omap44xx_prm_ll_data, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @omap4_prcm_irqs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @omap_prm_context.0, ptr @omap_prm_context.1, ptr @omap4_vp], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_pwrdm_operations to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap44xx_prm_init.nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prm_init_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_prcm_irq_setup to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap44xx_prm_ll_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_pwrdm_wait_transition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_prcm_irqs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap44xx_prm_reconfigure_io_chain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap44xx_prm_reconfigure_io_chain._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prm_context.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_prm_context.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_vp to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_prm_vcvp_read(i8 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap4_prmst_get_prm_dev_inst() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %call to i16
  %conv1 = zext i8 %offset to i16
  %call2 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext 1, i16 noundef signext %conv, i16 noundef zeroext %conv1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prmst_get_prm_dev_inst() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4_prm_vcvp_write(i32 noundef %val, i8 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap4_prmst_get_prm_dev_inst() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %call to i16
  %conv1 = zext i8 %offset to i16
  tail call void @omap4_prminst_write_inst_reg(i32 noundef %val, i8 noundef zeroext 1, i16 noundef signext %conv, i16 noundef zeroext %conv1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_prminst_write_inst_reg(i32 noundef, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_prm_vcvp_rmw(i32 noundef %mask, i32 noundef %bits, i8 noundef zeroext %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap4_prmst_get_prm_dev_inst() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %call to i16
  %conv1 = zext i8 %offset to i16
  %call2 = tail call i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef %mask, i32 noundef %bits, i8 noundef zeroext 1, i16 noundef signext %conv, i16 noundef zeroext %conv1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef, i32 noundef, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_set_next_pwrst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %pwrst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %pwrst to i32
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %call = tail call i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef 3, i32 noundef %conv, i8 noundef zeroext %1, i16 noundef signext %3, i16 noundef zeroext 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_next_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %call = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %1, i16 noundef signext %3, i16 noundef zeroext 0) #6
  %and = and i32 %call, 3
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %call = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %1, i16 noundef signext %3, i16 noundef zeroext 4) #6
  %and = and i32 %call, 3
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_prev_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %call = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %1, i16 noundef signext %3, i16 noundef zeroext 4) #6
  %and = lshr i32 %call, 24
  %shr = and i32 %and, 3
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_set_logic_retst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %pwrst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %pwrst to i32
  %shl = shl nuw nsw i32 %conv, 2
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %call1 = tail call i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef 4, i32 noundef %shl, i8 noundef zeroext %1, i16 noundef signext %3, i16 noundef zeroext 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_set_mem_onst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %bank, i8 noundef zeroext %pwrst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap2_pwrdm_get_mem_bank_onstate_mask(i8 noundef zeroext %bank) #6
  %conv = zext i8 %pwrst to i32
  %0 = tail call i32 @llvm.cttz.i32(i32 %call, i1 false) #6, !range !52
  %shl = shl i32 %conv, %0
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %1 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %3 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %prcm_offs, align 8
  %call2 = tail call i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef %call, i32 noundef %shl, i8 noundef zeroext %2, i16 noundef signext %4, i16 noundef zeroext 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_set_mem_retst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %bank, i8 noundef zeroext %pwrst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap2_pwrdm_get_mem_bank_retst_mask(i8 noundef zeroext %bank) #6
  %conv = zext i8 %pwrst to i32
  %0 = tail call i32 @llvm.cttz.i32(i32 %call, i1 false) #6, !range !52
  %shl = shl i32 %conv, %0
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %1 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %3 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %prcm_offs, align 8
  %call2 = tail call i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef %call, i32 noundef %shl, i8 noundef zeroext %2, i16 noundef signext %4, i16 noundef zeroext 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_logic_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %call = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %1, i16 noundef signext %3, i16 noundef zeroext 4) #6
  %and = lshr i32 %call, 2
  %shr = and i32 %and, 1
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_prev_logic_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %0 = ptrtoint ptr %prcm_partition.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition.i, align 8
  %prcm_offs.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs.i, align 8
  %call.i = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %1, i16 noundef signext %3, i16 noundef zeroext 4) #6
  %and.i = lshr i32 %call.i, 24
  %shr.i = and i32 %and.i, 3
  %4 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %if.then2 [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %if.end3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %prcm_partition.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %prcm_partition.i, align 8
  %7 = ptrtoint ptr %prcm_offs.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %prcm_offs.i, align 8
  %call.i9 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %6, i16 noundef signext %8, i16 noundef zeroext 0) #6
  %and.i10 = lshr i32 %call.i9, 2
  %shr.i11 = and i32 %and.i10, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then2 ], [ %shr.i11, %if.end3 ], [ %shr.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_logic_retst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %call = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %1, i16 noundef signext %3, i16 noundef zeroext 0) #6
  %and = lshr i32 %call, 2
  %shr = and i32 %and, 1
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_mem_pwrst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %bank) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap2_pwrdm_get_mem_bank_stst_mask(i8 noundef zeroext %bank) #6
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %call1 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %1, i16 noundef signext %3, i16 noundef zeroext 4) #6
  %and = and i32 %call1, %call
  %4 = tail call i32 @llvm.cttz.i32(i32 %call, i1 false) #6, !range !52
  %shr = lshr i32 %and, %4
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_prev_mem_pwrst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %bank) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %0 = ptrtoint ptr %prcm_partition.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition.i, align 8
  %prcm_offs.i = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs.i, align 8
  %call.i = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %1, i16 noundef signext %3, i16 noundef zeroext 4) #6
  %and.i = lshr i32 %call.i, 24
  %shr.i = and i32 %and.i, 3
  %4 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %shr.i, label %if.then2 [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %if.end3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i7 = tail call i32 @omap2_pwrdm_get_mem_bank_retst_mask(i8 noundef zeroext %bank) #6
  %5 = ptrtoint ptr %prcm_partition.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %prcm_partition.i, align 8
  %7 = ptrtoint ptr %prcm_offs.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %prcm_offs.i, align 8
  %call1.i = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %6, i16 noundef signext %8, i16 noundef zeroext 0) #6
  %and.i10 = and i32 %call1.i, %call.i7
  %9 = tail call i32 @llvm.cttz.i32(i32 %call.i7, i1 false) #6, !range !52
  %shr.i11 = lshr i32 %and.i10, %9
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then2 ], [ %shr.i11, %if.end3 ], [ %shr.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_read_mem_retst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %bank) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap2_pwrdm_get_mem_bank_retst_mask(i8 noundef zeroext %bank) #6
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %call1 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %1, i16 noundef signext %3, i16 noundef zeroext 0) #6
  %and = and i32 %call1, %call
  %4 = tail call i32 @llvm.cttz.i32(i32 %call, i1 false) #6, !range !52
  %shr = lshr i32 %and, %4
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_clear_all_prev_pwrst(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %call = tail call i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef 50331648, i32 noundef 50331648, i8 noundef zeroext %1, i16 noundef signext %3, i16 noundef zeroext 4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_set_lowpwrstchange(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %call = tail call i32 @omap4_prminst_rmw_inst_reg_bits(i32 noundef 16, i32 noundef 16, i8 noundef zeroext %1, i16 noundef signext %3, i16 noundef zeroext 0) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pwrdm_wait_transition(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 8
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %call22 = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %1, i16 noundef signext %3, i16 noundef zeroext 4) #6
  %and23 = and i32 %call22, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool.not24 = icmp eq i32 %and23, 0
  br i1 %tobool.not24, label %entry.do.body3_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %c.025 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %c.025)
  %exitcond.not = icmp eq i32 %c.025, 100000
  br i1 %exitcond.not, label %do.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %c.025, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %5 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %prcm_partition, align 8
  %7 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %prcm_offs, align 8
  %call = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %6, i16 noundef signext %8, i16 noundef zeroext 4) #6
  %and = and i32 %call, 1048576
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.do.body3_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

while.body.do.body3_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pwrdm, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %10) #9
  br label %cleanup

do.body3:                                         ; preds = %while.body.do.body3_crit_edge, %entry.do.body3_crit_edge
  %c.119 = phi i32 [ 0, %entry.do.body3_crit_edge ], [ %inc, %while.body.do.body3_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap4_pwrdm_wait_transition.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap4_pwrdm_wait_transition, %if.then9)) #6
          to label %cleanup [label %if.then9], !srcloc !53

if.then9:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap4_pwrdm_wait_transition.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.5, i32 noundef %c.119) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.body3, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ 0, %if.then9 ], [ 0, %do.body3 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap4_check_vcvp() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @prm_features to i32))
  %0 = load i16, ptr @prm_features, align 2
  %1 = lshr i16 %0, 1
  %.lobit = and i16 %1, 1
  %2 = zext i16 %.lobit to i32
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap4_pwrdm_save_context(ptr nocapture noundef %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %pwrstctrl_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 19
  %4 = ptrtoint ptr %pwrstctrl_offs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pwrstctrl_offs, align 4
  %conv = zext i8 %5 to i16
  %call = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %1, i16 noundef signext %3, i16 noundef zeroext %conv) #6
  %context = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 28
  %and = and i32 %call, -17
  %6 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %context, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap4_pwrdm_restore_context(ptr nocapture noundef readonly %pwrdm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_partition = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 9
  %0 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prcm_partition, align 8
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %2 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %prcm_offs, align 8
  %pwrstctrl_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 19
  %4 = ptrtoint ptr %pwrstctrl_offs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pwrstctrl_offs, align 4
  %conv = zext i8 %5 to i16
  %call = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %1, i16 noundef signext %3, i16 noundef zeroext %conv) #6
  %context = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 28
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %context, align 8
  %8 = ptrtoint ptr %prcm_partition to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %prcm_partition, align 8
  %10 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %prcm_offs, align 8
  %12 = ptrtoint ptr %pwrstctrl_offs to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pwrstctrl_offs, align 4
  %conv4 = zext i8 %13 to i16
  tail call void @omap4_prminst_write_inst_reg(i32 noundef %7, i8 noundef zeroext %9, i16 noundef signext %11, i16 noundef zeroext %conv4) #6
  %14 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %context, align 8
  %16 = xor i32 %15, %call
  %17 = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not = icmp eq i32 %17, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @omap4_pwrdm_wait_transition(ptr noundef %pwrdm)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap44xx_prm_init(ptr noundef %data) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap_prm_base_init() #6
  store ptr %data, ptr @prm_init_data, align 4
  %flags = getelementptr inbounds %struct.omap_prcm_init_data, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @prm_features to i32))
  %3 = load i16, ptr @prm_features, align 2
  %4 = or i16 %3, 1
  store i16 %4, ptr @prm_features, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool6.not = icmp eq i16 %5, 0
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @prm_features to i32))
  %6 = load i16, ptr @prm_features, align 2
  %7 = or i16 %6, 2
  store i16 %7, ptr @prm_features, align 2
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  %device_inst_offset = getelementptr inbounds %struct.omap_prcm_init_data, ptr %data, i32 0, i32 5
  %8 = ptrtoint ptr %device_inst_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device_inst_offset, align 4
  tail call void @omap4_prminst_set_prm_dev_inst(i32 noundef %9) #6
  %np = getelementptr inbounds %struct.omap_prcm_init_data, ptr %data, i32 0, i32 7
  %10 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %np, align 4
  %call = tail call i32 @of_device_is_compatible(ptr noundef %11, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.end11.if.end14_crit_edge, label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  store i8 1, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 4), align 1
  store i8 1, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 3), align 2
  store i16 36, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 2), align 4
  store i16 4, ptr @omap4_prcm_irq_setup, align 4
  store i16 8, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 1), align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  %call.i = tail call i32 @omap_rev() #6
  %shr.mask.i = and i32 %call.i, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1124073472, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 1124073472
  br i1 %cmp.i.not, label %if.then17, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @cpu_notifier, ptr @omap44xx_prm_init.nb, align 4
  %call18 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @omap44xx_prm_init.nb) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14.if.end19_crit_edge
  %call20 = tail call i32 @prm_register(ptr noundef nonnull @omap44xx_prm_ll_data) #6
  ret i32 %call20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_prm_base_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_prminst_set_prm_dev_inst(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_notifier(ptr nocapture noundef readnone %nb, i32 noundef %cmd, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 5, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @enable_off_mode to i32))
  %1 = load i32, ptr @enable_off_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %2 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 1), align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv1.i.i = zext i16 %2 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %3, i32 %conv1.i.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #6, !srcloc !54
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  store i32 %5, ptr @omap_prm_context.0, align 4
  %6 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 16384
  %conv1.i2.i = zext i16 %6 to i32
  %add.ptr2.i3.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv1.i2.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i3.i) #6, !srcloc !54
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  store i32 %9, ptr @omap_prm_context.1, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @enable_off_mode to i32))
  %10 = load i32, ptr @enable_off_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not = icmp eq i32 %10, 0
  br i1 %tobool2.not, label %sw.bb1.sw.epilog_crit_edge, label %if.then3

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then3:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %11 = load i32, ptr @omap_prm_context.0, align 4
  %12 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 1), align 2
  %13 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv1.i.i5 = zext i16 %12 to i32
  %add.ptr2.i.i6 = getelementptr i8, ptr %14, i32 %conv1.i.i5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i6, i32 %13) #6, !srcloc !55
  %15 = load i32, ptr @omap_prm_context.1, align 4
  %16 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 2), align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %18, i32 16384
  %conv1.i1.i = zext i16 %16 to i32
  %add.ptr2.i2.i = getelementptr i8, ptr %add.ptr.i.i7, i32 %conv1.i1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i2.i, i32 %17) #6, !srcloc !55
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then3, %sw.bb1.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prm_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap44xx_prm_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @prm_unregister(ptr noundef nonnull @omap44xx_prm_ll_data) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prm_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_get_mem_bank_onstate_mask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_get_mem_bank_retst_mask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_pwrdm_get_mem_bank_stst_mask(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap44xx_prm_read_pending_irqs(ptr nocapture noundef writeonly %events) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 3), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp13.not = icmp eq i8 %0, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 1), align 2
  %i.0.tr = trunc i32 %i.014 to i16
  %2 = shl i16 %i.0.tr, 2
  %conv3 = add i16 %1, %2
  %3 = load i16, ptr @omap4_prcm_irq_setup, align 4
  %conv7 = add i16 %3, %2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv1.i.i = zext i16 %conv3 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %4, i32 %conv1.i.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #6, !srcloc !54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv1.i2.i = zext i16 %conv7 to i32
  %add.ptr2.i3.i = getelementptr i8, ptr %6, i32 %conv1.i2.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i3.i) #6, !srcloc !54
  %8 = and i32 %7, %5
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %arrayidx = getelementptr i32, ptr %events, i32 %i.014
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.014, 1
  %11 = load i8, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 3), align 2
  %conv = zext i8 %11 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap44xx_prm_ocp_barrier() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap44xx_prm_save_and_clear_irqen(ptr nocapture noundef writeonly %saved_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 3), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp12.not = icmp eq i8 %0, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 1), align 2
  %i.0.tr = trunc i32 %i.013 to i16
  %2 = shl i16 %i.0.tr, 2
  %conv3 = add i16 %1, %2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv1.i = zext i16 %conv3 to i32
  %add.ptr2.i = getelementptr i8, ptr %3, i32 %conv1.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !54
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %arrayidx = getelementptr i32, ptr %saved_mask, i32 %i.013
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i10 = getelementptr i8, ptr %7, i32 %conv1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i10, i32 0) #6, !srcloc !55
  %inc = add nuw nsw i32 %i.013, 1
  %8 = load i8, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 3), align 2
  %conv = zext i8 %8 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap44xx_prm_restore_irqen(ptr nocapture noundef readonly %saved_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 3), align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp8.not = icmp eq i8 %0, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %saved_mask, i32 %i.09
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 1), align 2
  %i.0.tr = trunc i32 %i.09 to i16
  %4 = shl i16 %i.0.tr, 2
  %conv3 = add i16 %3, %4
  %5 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv1.i = zext i16 %conv3 to i32
  %add.ptr2.i = getelementptr i8, ptr %6, i32 %conv1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %5) #6, !srcloc !55
  %inc = add nuw nsw i32 %i.09, 1
  %7 = load i8, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 3), align 2
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap44xx_prm_reconfigure_io_chain() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap4_prmst_get_prm_dev_inst() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %sext = shl i32 %call, 16
  %conv.i.i = ashr exact i32 %sext, 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %conv1.i.i = zext i16 %0 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv1.i.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #6, !srcloc !54
  %3 = or i32 %2, 65536
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %add.ptr2.i4.i = getelementptr i8, ptr %add.ptr.i2.i, i32 %conv1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i, i32 %3) #6, !srcloc !55
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %if.end
  %i.066 = phi i32 [ 0, %if.end ], [ %inc, %if.end9.for.body_crit_edge ]
  %5 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %conv1.i = zext i16 %5 to i32
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv1.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !54
  %8 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.not = icmp eq i32 %8, 0
  br i1 %cmp6.not, label %if.end9, label %for.body.if.end14_crit_edge

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.end9:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %inc = add nuw nsw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %do.end, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %if.end14

if.end14:                                         ; preds = %do.end, %for.body.if.end14_crit_edge
  %10 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %11, i32 %conv.i.i
  %conv1.i.i53 = zext i16 %10 to i32
  %add.ptr2.i.i54 = getelementptr i8, ptr %add.ptr.i.i52, i32 %conv1.i.i53
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i54) #6, !srcloc !54
  %13 = and i32 %12, -65537
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i56 = getelementptr i8, ptr %14, i32 %conv.i.i
  %add.ptr2.i4.i57 = getelementptr i8, ptr %add.ptr.i2.i56, i32 %conv1.i.i53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i57, i32 %13) #6, !srcloc !55
  br label %for.body20

for.body20:                                       ; preds = %if.end28.for.body20_crit_edge, %if.end14
  %i.167 = phi i32 [ 0, %if.end14 ], [ %inc30, %if.end28.for.body20_crit_edge ]
  %15 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i59 = getelementptr i8, ptr %16, i32 %conv.i.i
  %conv1.i60 = zext i16 %15 to i32
  %add.ptr2.i61 = getelementptr i8, ptr %add.ptr.i59, i32 %conv1.i60
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i61) #6, !srcloc !54
  %18 = and i32 %17, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp25 = icmp eq i32 %18, 0
  br i1 %cmp25, label %for.body20.cleanup_crit_edge, label %if.end28

for.body20.cleanup_crit_edge:                     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %for.body20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #6
  %inc30 = add nuw nsw i32 %i.167, 1
  %exitcond68.not = icmp eq i32 %inc30, 100
  br i1 %exitcond68.not, label %do.end37, label %if.end28.for.body20_crit_edge

if.end28.for.body20_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body20

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %for.body20.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap44xx_prm_read_reset_sources() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap4_prmst_get_prm_dev_inst() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %cleanup.loopexit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.loopexit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %sext = shl i32 %call, 16
  %conv.i = ashr exact i32 %sext, 16
  %add.ptr.i = getelementptr i8, ptr %0, i32 %conv.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !54
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %r.1.9 = and i32 %2, 1023
  %and.10 = shl i32 %2, 1
  %3 = and i32 %and.10, 2048
  %r.1.10 = or i32 %3, %r.1.9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %r.1.10, %cleanup.loopexit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @omap44xx_prm_was_any_context_lost_old(i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %idx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap44xx_prm_clear_context_loss_flags_old(i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap4_prminst_write_inst_reg(i32 noundef -1, i8 noundef zeroext %part, i16 noundef signext %inst, i16 noundef zeroext %idx) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap44xx_prm_late_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @prm_features to i32))
  %0 = load i16, ptr @prm_features, align 2
  %1 = and i16 %0, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @prm_init_data, align 4
  %np = getelementptr inbounds %struct.omap_prcm_init_data, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %np, align 4
  %call = tail call i32 @of_irq_get(ptr noundef %4, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call)
  %cmp = icmp eq i32 %call, -517
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  store i32 %call, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 6), align 4
  %call.i = tail call i32 @omap4_prmst_get_prm_dev_inst() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -1
  br i1 %cmp.i, label %if.end3.omap44xx_prm_enable_io_wakeup.exit_crit_edge, label %if.end.i

if.end3.omap44xx_prm_enable_io_wakeup.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %omap44xx_prm_enable_io_wakeup.exit

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %5 = load i16, ptr getelementptr inbounds (%struct.omap_prcm_irq_setup, ptr @omap4_prcm_irq_setup, i32 0, i32 2), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %sext.i = shl i32 %call.i, 16
  %conv.i.i.i = ashr exact i32 %sext.i, 16
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %conv.i.i.i
  %conv1.i.i.i = zext i16 %5 to i32
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %conv1.i.i.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #6, !srcloc !54
  %8 = or i32 %7, 256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %add.ptr2.i4.i.i = getelementptr i8, ptr %add.ptr.i2.i.i, i32 %conv1.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i4.i.i, i32 %8) #6, !srcloc !55
  br label %omap44xx_prm_enable_io_wakeup.exit

omap44xx_prm_enable_io_wakeup.exit:               ; preds = %if.end.i, %if.end3.omap44xx_prm_enable_io_wakeup.exit_crit_edge
  %call4 = tail call i32 @omap_prcm_register_chain_handler(ptr noundef nonnull @omap4_prcm_irq_setup) #6
  br label %cleanup

cleanup:                                          ; preds = %omap44xx_prm_enable_io_wakeup.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %omap44xx_prm_enable_io_wakeup.exit ], [ 0, %entry.cleanup_crit_edge ], [ -517, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prminst_assert_hardreset(i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prminst_deassert_hardreset(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_prminst_is_hardreset_asserted(i8 noundef zeroext, i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_prminst_global_warm_sw_reset() #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_prm_vp_check_txdone(i8 noundef zeroext %vp_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %vp_id to i32
  %arrayidx = getelementptr [3 x %struct.omap4_vp], ptr @omap4_vp, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %1 to i16
  %call = tail call i32 @omap4_prminst_read_inst_reg(i8 noundef zeroext 1, i16 noundef signext 0, i16 noundef zeroext %conv) #6
  %tranxdone_status = getelementptr [3 x %struct.omap4_vp], ptr @omap4_vp, i32 0, i32 %idxprom, i32 1
  %2 = ptrtoint ptr %tranxdone_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tranxdone_status, align 4
  %and = and i32 %3, %call
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap4_prm_vp_clear_txdone(i8 noundef zeroext %vp_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %vp_id to i32
  %arrayidx = getelementptr [3 x %struct.omap4_vp], ptr @omap4_vp, i32 0, i32 %idxprom
  %tranxdone_status = getelementptr [3 x %struct.omap4_vp], ptr @omap4_vp, i32 0, i32 %idxprom, i32 1
  %0 = ptrtoint ptr %tranxdone_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tranxdone_status, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %conv = trunc i32 %3 to i16
  tail call void @omap4_prminst_write_inst_reg(i32 noundef %1, i8 noundef zeroext 1, i16 noundef signext 0, i16 noundef zeroext %conv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prcm_register_chain_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @omap4_pwrdm_operations, !1, !"omap4_pwrdm_operations", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/prm44xx.c", i32 724, i32 18}
!2 = !{ptr @omap44xx_prm_init.nb, !3, !"nb", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/prm44xx.c", i32 806, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/prm44xx.c", i32 820, i32 40}
!6 = !{ptr @__exitcall_omap44xx_prm_exit, !7, !"__exitcall_omap44xx_prm_exit", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/prm44xx.c", i32 859, i32 1}
!8 = !{ptr @prm_init_data, !9, !"prm_init_data", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/prm44xx.c", i32 802, i32 42}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/prm44xx.c", i32 658, i32 3}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @omap4_pwrdm_wait_transition._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @omap4_pwrdm_wait_transition._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/prm44xx.c", i32 663, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @omap4_pwrdm_wait_transition.__UNIQUE_ID_ddebug288, !17, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!20 = !{ptr @omap4_prcm_irq_setup, !21, !"omap4_prcm_irq_setup", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/prm44xx.c", i32 45, i32 35}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/prm44xx.c", i32 42, i32 2}
!24 = !{ptr @omap4_prcm_irqs, !25, !"omap4_prcm_irqs", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/prm44xx.c", i32 41, i32 35}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/prm44xx.c", i32 325, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @omap44xx_prm_reconfigure_io_chain._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @omap44xx_prm_reconfigure_io_chain._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-omap2/prm44xx.c", i32 338, i32 3}
!33 = !{ptr @omap44xx_prm_reconfigure_io_chain._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @omap44xx_prm_reconfigure_io_chain._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = distinct !{null, !36, !"omap_prm_context", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-omap2/prm44xx.c", i32 64, i32 36}
!37 = !{ptr @omap44xx_prm_ll_data, !38, !"omap44xx_prm_ll_data", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-omap2/prm44xx.c", i32 789, i32 27}
!39 = distinct !{null, !40, !"omap44xx_prm_reset_src_map", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-omap2/prm44xx.c", i32 72, i32 33}
!41 = !{ptr @omap4_vp, !42, !"omap4_vp", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-omap2/prm44xx.c", i32 132, i32 24}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i32 0, i32 33}
!53 = !{i64 2148716335, i64 2148716340, i64 2148716353, i64 2148716397, i64 2148716431, i64 2148716452}
!54 = !{i64 3063124}
!55 = !{i64 3062706}
