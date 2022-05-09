; ModuleID = '/llk/IR_all_yes/sound/soc/mediatek/mt8183/mt8183-afe-clk.c_pt.bc'
source_filename = "../sound/soc/mediatek/mt8183/mt8183-afe-clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mt8183_mck_div = type { i32, i32 }
%struct.mtk_base_afe = type { ptr, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, ptr, i32, i32, %struct.list_head, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }

@aud_clks = internal constant { [35 x ptr], [52 x i8] } { [35 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], [52 x i8] zeroinitializer }, align 32
@mt8183_init_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 107, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(), devm_clk_get %s fail, ret %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt8183_init_clock\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sound/soc/mediatek/mt8183/mt8183-afe-clk.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt8183_init_clock._entry_ptr = internal global ptr @mt8183_init_clock._entry, section ".printk_index", align 4
@mt8183_afe_enable_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 123, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(), clk_prepare_enable %s fail %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt8183_afe_enable_clock\00", [40 x i8] zeroinitializer }, align 32
@mt8183_afe_enable_clock._entry_ptr = internal global ptr @mt8183_afe_enable_clock._entry, section ".printk_index", align 4
@mt8183_afe_enable_clock._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8183_afe_enable_clock._entry_ptr.8 = internal global ptr @mt8183_afe_enable_clock._entry.7, section ".printk_index", align 4
@mt8183_afe_enable_clock._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 139, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s(), clk_set_parent %s-%s fail %d\0A\00", [60 x i8] zeroinitializer }, align 32
@mt8183_afe_enable_clock._entry_ptr.11 = internal global ptr @mt8183_afe_enable_clock._entry.9, section ".printk_index", align 4
@mt8183_afe_enable_clock._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 146, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8183_afe_enable_clock._entry_ptr.13 = internal global ptr @mt8183_afe_enable_clock._entry.12, section ".printk_index", align 4
@mt8183_afe_enable_clock._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8183_afe_enable_clock._entry_ptr.15 = internal global ptr @mt8183_afe_enable_clock._entry.14, section ".printk_index", align 4
@mt8183_afe_enable_clock._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 162, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s clk_prepare_enable %s fail %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mt8183_afe_enable_clock._entry_ptr.18 = internal global ptr @mt8183_afe_enable_clock._entry.16, section ".printk_index", align 4
@mt8183_afe_enable_clock._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8183_afe_enable_clock._entry_ptr.20 = internal global ptr @mt8183_afe_enable_clock._entry.19, section ".printk_index", align 4
@mt8183_afe_enable_clock._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 176, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8183_afe_enable_clock._entry_ptr.22 = internal global ptr @mt8183_afe_enable_clock._entry.21, section ".printk_index", align 4
@mt8183_afe_enable_clock._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 183, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8183_afe_enable_clock._entry_ptr.24 = internal global ptr @mt8183_afe_enable_clock._entry.23, section ".printk_index", align 4
@mt8183_afe_enable_clock._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.2, i32 190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8183_afe_enable_clock._entry_ptr.26 = internal global ptr @mt8183_afe_enable_clock._entry.25, section ".printk_index", align 4
@mt8183_apll1_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.27, ptr @.str.2, i32 390, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt8183_apll1_enable\00", [44 x i8] zeroinitializer }, align 32
@mt8183_apll1_enable._entry_ptr = internal global ptr @mt8183_apll1_enable._entry, section ".printk_index", align 4
@mt8183_apll1_enable._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.27, ptr @.str.2, i32 397, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8183_apll1_enable._entry_ptr.29 = internal global ptr @mt8183_apll1_enable._entry.28, section ".printk_index", align 4
@mt8183_apll2_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.30, ptr @.str.2, i32 444, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt8183_apll2_enable\00", [44 x i8] zeroinitializer }, align 32
@mt8183_apll2_enable._entry_ptr = internal global ptr @mt8183_apll2_enable._entry, section ".printk_index", align 4
@mt8183_apll2_enable._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.30, ptr @.str.2, i32 451, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8183_apll2_enable._entry_ptr.32 = internal global ptr @mt8183_apll2_enable._entry.31, section ".printk_index", align 4
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"APLL1\00", [26 x i8] zeroinitializer }, align 32
@mck_div = internal constant { [7 x %struct.mt8183_mck_div], [40 x i8] } { [7 x %struct.mt8183_mck_div] [%struct.mt8183_mck_div { i32 22, i32 28 }, %struct.mt8183_mck_div { i32 23, i32 29 }, %struct.mt8183_mck_div { i32 24, i32 30 }, %struct.mt8183_mck_div { i32 25, i32 31 }, %struct.mt8183_mck_div { i32 26, i32 32 }, %struct.mt8183_mck_div { i32 -1, i32 33 }, %struct.mt8183_mck_div { i32 -1, i32 -1 }], [40 x i8] zeroinitializer }, align 32
@mt8183_mck_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.34, ptr @.str.2, i32 561, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt8183_mck_enable\00", [46 x i8] zeroinitializer }, align 32
@mt8183_mck_enable._entry_ptr = internal global ptr @mt8183_mck_enable._entry, section ".printk_index", align 4
@mt8183_mck_enable._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.34, ptr @.str.2, i32 569, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8183_mck_enable._entry_ptr.36 = internal global ptr @mt8183_mck_enable._entry.35, section ".printk_index", align 4
@mt8183_mck_enable._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.34, ptr @.str.2, i32 578, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mt8183_mck_enable._entry_ptr.38 = internal global ptr @mt8183_mck_enable._entry.37, section ".printk_index", align 4
@mt8183_mck_enable._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.34, ptr @.str.2, i32 585, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(), clk_set_rate %s, rate %d, fail %d\0A\00", [55 x i8] zeroinitializer }, align 32
@mt8183_mck_enable._entry_ptr.41 = internal global ptr @mt8183_mck_enable._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aud_afe_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aud_tml_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aud_apll22m_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aud_apll24m_clk\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aud_apll1_tuner_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aud_apll2_tuner_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_i2s1_bclk_sw\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_i2s2_bclk_sw\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_i2s3_bclk_sw\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aud_i2s4_bclk_sw\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aud_infra_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"top_mux_audio\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"top_mux_aud_intbus\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"top_syspll_d2_d4\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"top_mux_aud_1\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"top_apll1_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"top_mux_aud_2\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"top_apll2_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"top_mux_aud_eng1\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"top_apll1_d8\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"top_mux_aud_eng2\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"top_apll2_d8\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_i2s0_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_i2s1_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_i2s2_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_i2s3_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_i2s4_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_i2s5_m_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_div0\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_div1\00", [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_div2\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_div3\00", [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_div4\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"top_apll12_divb\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"top_clk26m_clk\00", [17 x i8] zeroinitializer }, align 32
@apll1_mux_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.77, ptr @.str.2, i32 240, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apll1_mux_setting\00", [46 x i8] zeroinitializer }, align 32
@apll1_mux_setting._entry_ptr = internal global ptr @apll1_mux_setting._entry, section ".printk_index", align 4
@apll1_mux_setting._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.2, i32 248, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s clk_set_parent %s-%s fail %d\0A\00", [63 x i8] zeroinitializer }, align 32
@apll1_mux_setting._entry_ptr.80 = internal global ptr @apll1_mux_setting._entry.78, section ".printk_index", align 4
@apll1_mux_setting._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.77, ptr @.str.2, i32 256, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll1_mux_setting._entry_ptr.82 = internal global ptr @apll1_mux_setting._entry.81, section ".printk_index", align 4
@apll1_mux_setting._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.2, i32 264, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll1_mux_setting._entry_ptr.84 = internal global ptr @apll1_mux_setting._entry.83, section ".printk_index", align 4
@apll1_mux_setting._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.2, i32 273, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll1_mux_setting._entry_ptr.86 = internal global ptr @apll1_mux_setting._entry.85, section ".printk_index", align 4
@apll1_mux_setting._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.2, i32 283, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll1_mux_setting._entry_ptr.88 = internal global ptr @apll1_mux_setting._entry.87, section ".printk_index", align 4
@apll2_mux_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.89, ptr @.str.2, i32 314, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apll2_mux_setting\00", [46 x i8] zeroinitializer }, align 32
@apll2_mux_setting._entry_ptr = internal global ptr @apll2_mux_setting._entry, section ".printk_index", align 4
@apll2_mux_setting._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.89, ptr @.str.2, i32 322, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll2_mux_setting._entry_ptr.91 = internal global ptr @apll2_mux_setting._entry.90, section ".printk_index", align 4
@apll2_mux_setting._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.89, ptr @.str.2, i32 330, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll2_mux_setting._entry_ptr.93 = internal global ptr @apll2_mux_setting._entry.92, section ".printk_index", align 4
@apll2_mux_setting._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.89, ptr @.str.2, i32 338, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll2_mux_setting._entry_ptr.95 = internal global ptr @apll2_mux_setting._entry.94, section ".printk_index", align 4
@apll2_mux_setting._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.89, ptr @.str.2, i32 347, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll2_mux_setting._entry_ptr.97 = internal global ptr @apll2_mux_setting._entry.96, section ".printk_index", align 4
@apll2_mux_setting._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.89, ptr @.str.2, i32 357, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@apll2_mux_setting._entry_ptr.99 = internal global ptr @apll2_mux_setting._entry.98, section ".printk_index", align 4
@___asan_gen_.100 = private unnamed_addr constant [9 x i8] c"aud_clks\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 54, i32 20 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 105, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 122, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 129, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 137, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 145, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 153, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 161, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 168, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 175, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 182, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 189, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 389, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 396, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 443, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 450, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 499, i32 19 }
@___asan_gen_.184 = private unnamed_addr constant [8 x i8] c"mck_div\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 511, i32 36 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 560, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 567, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 577, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 583, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 55, i32 14 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 56, i32 14 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 57, i32 18 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 58, i32 18 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 59, i32 22 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 60, i32 22 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 61, i32 23 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 62, i32 23 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 63, i32 23 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 64, i32 23 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 65, i32 26 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 66, i32 20 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 67, i32 26 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 68, i32 27 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 69, i32 24 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 70, i32 23 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 71, i32 24 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 72, i32 23 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 73, i32 27 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 74, i32 23 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 75, i32 27 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 76, i32 23 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 77, i32 25 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 78, i32 25 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 79, i32 25 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 80, i32 25 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 81, i32 25 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 82, i32 25 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 83, i32 26 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 84, i32 26 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 85, i32 26 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 86, i32 26 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 87, i32 26 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 88, i32 26 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 89, i32 17 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 239, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 246, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 255, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 262, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 271, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 281, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 313, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 320, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 329, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 336, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 345, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.353 = private constant [46 x i8] c"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.353, i32 355, i32 4 }
@llvm.compiler.used = appending global [116 x ptr] [ptr @apll1_mux_setting._entry, ptr @apll1_mux_setting._entry.78, ptr @apll1_mux_setting._entry.81, ptr @apll1_mux_setting._entry.83, ptr @apll1_mux_setting._entry.85, ptr @apll1_mux_setting._entry.87, ptr @apll1_mux_setting._entry_ptr, ptr @apll1_mux_setting._entry_ptr.80, ptr @apll1_mux_setting._entry_ptr.82, ptr @apll1_mux_setting._entry_ptr.84, ptr @apll1_mux_setting._entry_ptr.86, ptr @apll1_mux_setting._entry_ptr.88, ptr @apll2_mux_setting._entry, ptr @apll2_mux_setting._entry.90, ptr @apll2_mux_setting._entry.92, ptr @apll2_mux_setting._entry.94, ptr @apll2_mux_setting._entry.96, ptr @apll2_mux_setting._entry.98, ptr @apll2_mux_setting._entry_ptr, ptr @apll2_mux_setting._entry_ptr.91, ptr @apll2_mux_setting._entry_ptr.93, ptr @apll2_mux_setting._entry_ptr.95, ptr @apll2_mux_setting._entry_ptr.97, ptr @apll2_mux_setting._entry_ptr.99, ptr @mt8183_afe_enable_clock._entry, ptr @mt8183_afe_enable_clock._entry.12, ptr @mt8183_afe_enable_clock._entry.14, ptr @mt8183_afe_enable_clock._entry.16, ptr @mt8183_afe_enable_clock._entry.19, ptr @mt8183_afe_enable_clock._entry.21, ptr @mt8183_afe_enable_clock._entry.23, ptr @mt8183_afe_enable_clock._entry.25, ptr @mt8183_afe_enable_clock._entry.7, ptr @mt8183_afe_enable_clock._entry.9, ptr @mt8183_afe_enable_clock._entry_ptr, ptr @mt8183_afe_enable_clock._entry_ptr.11, ptr @mt8183_afe_enable_clock._entry_ptr.13, ptr @mt8183_afe_enable_clock._entry_ptr.15, ptr @mt8183_afe_enable_clock._entry_ptr.18, ptr @mt8183_afe_enable_clock._entry_ptr.20, ptr @mt8183_afe_enable_clock._entry_ptr.22, ptr @mt8183_afe_enable_clock._entry_ptr.24, ptr @mt8183_afe_enable_clock._entry_ptr.26, ptr @mt8183_afe_enable_clock._entry_ptr.8, ptr @mt8183_apll1_enable._entry, ptr @mt8183_apll1_enable._entry.28, ptr @mt8183_apll1_enable._entry_ptr, ptr @mt8183_apll1_enable._entry_ptr.29, ptr @mt8183_apll2_enable._entry, ptr @mt8183_apll2_enable._entry.31, ptr @mt8183_apll2_enable._entry_ptr, ptr @mt8183_apll2_enable._entry_ptr.32, ptr @mt8183_init_clock._entry, ptr @mt8183_init_clock._entry_ptr, ptr @mt8183_mck_enable._entry, ptr @mt8183_mck_enable._entry.35, ptr @mt8183_mck_enable._entry.37, ptr @mt8183_mck_enable._entry.39, ptr @mt8183_mck_enable._entry_ptr, ptr @mt8183_mck_enable._entry_ptr.36, ptr @mt8183_mck_enable._entry_ptr.38, ptr @mt8183_mck_enable._entry_ptr.41, ptr @aud_clks, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.10, ptr @.str.17, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @mck_div, ptr @.str.34, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.89], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_clks to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_init_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_enable_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_enable_clock._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_enable_clock._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_enable_clock._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_enable_clock._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_enable_clock._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_enable_clock._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_enable_clock._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_enable_clock._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_afe_enable_clock._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_apll1_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_apll1_enable._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_apll2_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_apll2_enable._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mck_div to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mck_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mck_enable._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mck_enable._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mck_enable._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll1_mux_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll1_mux_setting._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll1_mux_setting._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll1_mux_setting._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll1_mux_setting._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll1_mux_setting._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll2_mux_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll2_mux_setting._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll2_mux_setting._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll2_mux_setting._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll2_mux_setting._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll2_mux_setting._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8183_init_clock(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 140, i32 noundef 3520) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5.i.i, ptr %1, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %arrayidx = getelementptr [35 x ptr], ptr @aud_clks, i32 0, i32 %i.037
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call ptr @devm_clk_get(ptr noundef %6, ptr noundef %8) #6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %arrayidx5 = getelementptr ptr, ptr %10, i32 %i.037
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3, ptr %arrayidx5, align 4
  %12 = load ptr, ptr %1, align 4
  %arrayidx7 = getelementptr ptr, ptr %12, i32 %i.037
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx7, align 4
  %cmp.i = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %8, i32 noundef %17) #9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %arrayidx16 = getelementptr ptr, ptr %19, i32 %i.037
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx16, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 35
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8183_afe_enable_clock(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.52, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx2 = getelementptr ptr, ptr %9, i32 11
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  %call.i158 = tail call i32 @clk_prepare(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool.not.i159 = icmp eq i32 %call.i158, 0
  br i1 %tobool.not.i159, label %if.end.i162, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

if.end.i162:                                      ; preds = %if.end
  %call1.i160 = tail call i32 @clk_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i160)
  %tobool2.not.i161 = icmp eq i32 %call1.i160, 0
  br i1 %tobool2.not.i161, label %if.end10, label %if.then3.i163

if.then3.i163:                                    ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %do.end8

do.end8:                                          ; preds = %if.then3.i163, %if.end.do.end8_crit_edge
  %retval.0.i164.ph = phi i32 [ %call1.i160, %if.then3.i163 ], [ %call.i158, %if.end.do.end8_crit_edge ]
  %dev9 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.53, i32 noundef %retval.0.i164.ph) #9
  br label %CLK_MUX_AUDIO_ERR

if.end10:                                         ; preds = %if.end.i162
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %arrayidx12 = getelementptr ptr, ptr %15, i32 11
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr ptr, ptr %15, i32 34
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx14, align 4
  %call15 = tail call i32 @clk_set_parent(ptr noundef %17, ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %dev21 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %20 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.76, i32 noundef %call15) #9
  br label %CLK_MUX_AUDIO_ERR

if.end22:                                         ; preds = %if.end10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %arrayidx24 = getelementptr ptr, ptr %23, i32 12
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx24, align 4
  %call.i166 = tail call i32 @clk_prepare(ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool.not.i167 = icmp eq i32 %call.i166, 0
  br i1 %tobool.not.i167, label %if.end.i170, label %if.end22.do.end30_crit_edge

if.end22.do.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

if.end.i170:                                      ; preds = %if.end22
  %call1.i168 = tail call i32 @clk_enable(ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i168)
  %tobool2.not.i169 = icmp eq i32 %call1.i168, 0
  br i1 %tobool2.not.i169, label %if.end32, label %if.then3.i171

if.then3.i171:                                    ; preds = %if.end.i170
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %25) #6
  br label %do.end30

do.end30:                                         ; preds = %if.then3.i171, %if.end22.do.end30_crit_edge
  %retval.0.i172.ph = phi i32 [ %call1.i168, %if.then3.i171 ], [ %call.i166, %if.end22.do.end30_crit_edge ]
  %dev31 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %26 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.54, i32 noundef %retval.0.i172.ph) #9
  br label %CLK_MUX_AUDIO_INTBUS_ERR

if.end32:                                         ; preds = %if.end.i170
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %arrayidx34 = getelementptr ptr, ptr %29, i32 12
  %30 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx34, align 4
  %arrayidx36 = getelementptr ptr, ptr %29, i32 13
  %32 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx36, align 4
  %call37 = tail call i32 @clk_set_parent(ptr noundef %31, ptr noundef %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end44, label %do.end42

do.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %dev43 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %34 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev43, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef %call37) #9
  br label %CLK_MUX_AUDIO_INTBUS_ERR

if.end44:                                         ; preds = %if.end32
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %call.i174 = tail call i32 @clk_prepare(ptr noundef %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i174)
  %tobool.not.i175 = icmp eq i32 %call.i174, 0
  br i1 %tobool.not.i175, label %if.end.i178, label %if.end44.do.end52_crit_edge

if.end44.do.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end52

if.end.i178:                                      ; preds = %if.end44
  %call1.i176 = tail call i32 @clk_enable(ptr noundef %39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i176)
  %tobool2.not.i177 = icmp eq i32 %call1.i176, 0
  br i1 %tobool2.not.i177, label %if.end54, label %if.then3.i179

if.then3.i179:                                    ; preds = %if.end.i178
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %39) #6
  br label %do.end52

do.end52:                                         ; preds = %if.then3.i179, %if.end44.do.end52_crit_edge
  %retval.0.i180.ph = phi i32 [ %call1.i176, %if.then3.i179 ], [ %call.i174, %if.end44.do.end52_crit_edge ]
  %dev53 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %40 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.42, i32 noundef %retval.0.i180.ph) #9
  br label %CLK_AFE_ERR

if.end54:                                         ; preds = %if.end.i178
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %arrayidx56 = getelementptr ptr, ptr %43, i32 6
  %44 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx56, align 4
  %call.i182 = tail call i32 @clk_prepare(ptr noundef %45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool.not.i183 = icmp eq i32 %call.i182, 0
  br i1 %tobool.not.i183, label %if.end.i186, label %if.end54.do.end62_crit_edge

if.end54.do.end62_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62

if.end.i186:                                      ; preds = %if.end54
  %call1.i184 = tail call i32 @clk_enable(ptr noundef %45) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i184)
  %tobool2.not.i185 = icmp eq i32 %call1.i184, 0
  br i1 %tobool2.not.i185, label %if.end64, label %if.then3.i187

if.then3.i187:                                    ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %45) #6
  br label %do.end62

do.end62:                                         ; preds = %if.then3.i187, %if.end54.do.end62_crit_edge
  %retval.0.i188.ph = phi i32 [ %call1.i184, %if.then3.i187 ], [ %call.i182, %if.end54.do.end62_crit_edge ]
  %dev63 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %46 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.48, i32 noundef %retval.0.i188.ph) #9
  br label %CLK_I2S1_BCLK_SW_ERR

if.end64:                                         ; preds = %if.end.i186
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %arrayidx66 = getelementptr ptr, ptr %49, i32 7
  %50 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx66, align 4
  %call.i190 = tail call i32 @clk_prepare(ptr noundef %51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %tobool.not.i191 = icmp eq i32 %call.i190, 0
  br i1 %tobool.not.i191, label %if.end.i194, label %if.end64.do.end72_crit_edge

if.end64.do.end72_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end72

if.end.i194:                                      ; preds = %if.end64
  %call1.i192 = tail call i32 @clk_enable(ptr noundef %51) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i192)
  %tobool2.not.i193 = icmp eq i32 %call1.i192, 0
  br i1 %tobool2.not.i193, label %if.end74, label %if.then3.i195

if.then3.i195:                                    ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %51) #6
  br label %do.end72

do.end72:                                         ; preds = %if.then3.i195, %if.end64.do.end72_crit_edge
  %retval.0.i196.ph = phi i32 [ %call1.i192, %if.then3.i195 ], [ %call.i190, %if.end64.do.end72_crit_edge ]
  %dev73 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %52 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev73, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.49, i32 noundef %retval.0.i196.ph) #9
  br label %CLK_I2S2_BCLK_SW_ERR

if.end74:                                         ; preds = %if.end.i194
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %arrayidx76 = getelementptr ptr, ptr %55, i32 8
  %56 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx76, align 4
  %call.i198 = tail call i32 @clk_prepare(ptr noundef %57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool.not.i199 = icmp eq i32 %call.i198, 0
  br i1 %tobool.not.i199, label %if.end.i202, label %if.end74.do.end82_crit_edge

if.end74.do.end82_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end82

if.end.i202:                                      ; preds = %if.end74
  %call1.i200 = tail call i32 @clk_enable(ptr noundef %57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i200)
  %tobool2.not.i201 = icmp eq i32 %call1.i200, 0
  br i1 %tobool2.not.i201, label %if.end84, label %if.then3.i203

if.then3.i203:                                    ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %57) #6
  br label %do.end82

do.end82:                                         ; preds = %if.then3.i203, %if.end74.do.end82_crit_edge
  %retval.0.i204.ph = phi i32 [ %call1.i200, %if.then3.i203 ], [ %call.i198, %if.end74.do.end82_crit_edge ]
  %dev83 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %58 = ptrtoint ptr %dev83 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev83, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i204.ph) #9
  br label %CLK_I2S3_BCLK_SW_ERR

if.end84:                                         ; preds = %if.end.i202
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %arrayidx86 = getelementptr ptr, ptr %61, i32 9
  %62 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx86, align 4
  %call.i206 = tail call i32 @clk_prepare(ptr noundef %63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %tobool.not.i207 = icmp eq i32 %call.i206, 0
  br i1 %tobool.not.i207, label %if.end.i210, label %if.end84.do.end92_crit_edge

if.end84.do.end92_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end92

if.end.i210:                                      ; preds = %if.end84
  %call1.i208 = tail call i32 @clk_enable(ptr noundef %63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i208)
  %tobool2.not.i209 = icmp eq i32 %call1.i208, 0
  br i1 %tobool2.not.i209, label %if.end.i210.cleanup_crit_edge, label %if.then3.i211

if.end.i210.cleanup_crit_edge:                    ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i211:                                    ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %63) #6
  br label %do.end92

do.end92:                                         ; preds = %if.then3.i211, %if.end84.do.end92_crit_edge
  %retval.0.i212.ph = phi i32 [ %call1.i208, %if.then3.i211 ], [ %call.i206, %if.end84.do.end92_crit_edge ]
  %dev93 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %64 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev93, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.51, i32 noundef %retval.0.i212.ph) #9
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %arrayidx96 = getelementptr ptr, ptr %67, i32 8
  %68 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx96, align 4
  tail call void @clk_disable(ptr noundef %69) #6
  tail call void @clk_unprepare(ptr noundef %69) #6
  br label %CLK_I2S3_BCLK_SW_ERR

CLK_I2S3_BCLK_SW_ERR:                             ; preds = %do.end92, %do.end82
  %ret.0 = phi i32 [ %retval.0.i204.ph, %do.end82 ], [ %retval.0.i212.ph, %do.end92 ]
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %arrayidx98 = getelementptr ptr, ptr %71, i32 7
  %72 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx98, align 4
  tail call void @clk_disable(ptr noundef %73) #6
  tail call void @clk_unprepare(ptr noundef %73) #6
  br label %CLK_I2S2_BCLK_SW_ERR

CLK_I2S2_BCLK_SW_ERR:                             ; preds = %CLK_I2S3_BCLK_SW_ERR, %do.end72
  %ret.1 = phi i32 [ %retval.0.i196.ph, %do.end72 ], [ %ret.0, %CLK_I2S3_BCLK_SW_ERR ]
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %arrayidx100 = getelementptr ptr, ptr %75, i32 6
  %76 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx100, align 4
  tail call void @clk_disable(ptr noundef %77) #6
  tail call void @clk_unprepare(ptr noundef %77) #6
  br label %CLK_I2S1_BCLK_SW_ERR

CLK_I2S1_BCLK_SW_ERR:                             ; preds = %CLK_I2S2_BCLK_SW_ERR, %do.end62
  %ret.2 = phi i32 [ %retval.0.i188.ph, %do.end62 ], [ %ret.1, %CLK_I2S2_BCLK_SW_ERR ]
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  tail call void @clk_disable(ptr noundef %81) #6
  tail call void @clk_unprepare(ptr noundef %81) #6
  br label %CLK_AFE_ERR

CLK_AFE_ERR:                                      ; preds = %CLK_I2S1_BCLK_SW_ERR, %do.end52
  %ret.3 = phi i32 [ %retval.0.i180.ph, %do.end52 ], [ %ret.2, %CLK_I2S1_BCLK_SW_ERR ]
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %arrayidx104 = getelementptr ptr, ptr %83, i32 12
  %84 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx104, align 4
  tail call void @clk_disable(ptr noundef %85) #6
  tail call void @clk_unprepare(ptr noundef %85) #6
  br label %CLK_MUX_AUDIO_INTBUS_ERR

CLK_MUX_AUDIO_INTBUS_ERR:                         ; preds = %CLK_AFE_ERR, %do.end42, %do.end30
  %ret.4 = phi i32 [ %retval.0.i172.ph, %do.end30 ], [ %call37, %do.end42 ], [ %ret.3, %CLK_AFE_ERR ]
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  %arrayidx106 = getelementptr ptr, ptr %87, i32 11
  %88 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx106, align 4
  tail call void @clk_disable(ptr noundef %89) #6
  tail call void @clk_unprepare(ptr noundef %89) #6
  br label %CLK_MUX_AUDIO_ERR

CLK_MUX_AUDIO_ERR:                                ; preds = %CLK_MUX_AUDIO_INTBUS_ERR, %do.end20, %do.end8
  %ret.5 = phi i32 [ %retval.0.i164.ph, %do.end8 ], [ %call15, %do.end20 ], [ %ret.4, %CLK_MUX_AUDIO_INTBUS_ERR ]
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %arrayidx108 = getelementptr ptr, ptr %91, i32 10
  %92 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx108, align 4
  tail call void @clk_disable(ptr noundef %93) #6
  tail call void @clk_unprepare(ptr noundef %93) #6
  br label %cleanup

cleanup:                                          ; preds = %CLK_MUX_AUDIO_ERR, %if.end.i210.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.5, %CLK_MUX_AUDIO_ERR ], [ 0, %if.end.i210.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8183_afe_disable_clock(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 9
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %arrayidx2 = getelementptr ptr, ptr %7, i32 8
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %arrayidx4 = getelementptr ptr, ptr %11, i32 7
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %arrayidx6 = getelementptr ptr, ptr %15, i32 6
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %21) #6
  tail call void @clk_unprepare(ptr noundef %21) #6
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %arrayidx10 = getelementptr ptr, ptr %23, i32 12
  %24 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx10, align 4
  tail call void @clk_disable(ptr noundef %25) #6
  tail call void @clk_unprepare(ptr noundef %25) #6
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %arrayidx12 = getelementptr ptr, ptr %27, i32 11
  %28 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx12, align 4
  tail call void @clk_disable(ptr noundef %29) #6
  tail call void @clk_unprepare(ptr noundef %29) #6
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %arrayidx14 = getelementptr ptr, ptr %31, i32 10
  %32 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx14, align 4
  tail call void @clk_disable(ptr noundef %33) #6
  tail call void @clk_unprepare(ptr noundef %33) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8183_apll1_enable(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  tail call fastcc void @apll1_mux_setting(ptr noundef %afe, i1 noundef zeroext true)
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.44, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx3 = getelementptr ptr, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %call.i32 = tail call i32 @clk_prepare(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i33 = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i33, label %if.end.i36, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

if.end.i36:                                       ; preds = %if.end
  %call1.i34 = tail call i32 @clk_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool2.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool2.not.i35, label %if.end11, label %if.then3.i37

if.then3.i37:                                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then3.i37, %if.end.do.end9_crit_edge
  %retval.0.i38.ph = phi i32 [ %call1.i34, %if.then3.i37 ], [ %call.i32, %if.end.do.end9_crit_edge ]
  %dev10 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.46, i32 noundef %retval.0.i38.ph) #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %arrayidx18 = getelementptr ptr, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx18, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i40 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 1008, i32 noundef 65527, i32 noundef 2098, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 1008, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 3536, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end9, %do.end
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %retval.0.i.ph, %do.end ], [ %retval.0.i38.ph, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apll1_mux_setting(ptr nocapture noundef readonly %afe, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %3, i32 14
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.56, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx4 = getelementptr ptr, ptr %9, i32 14
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr ptr, ptr %9, i32 15
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 4
  %call7 = tail call i32 @clk_set_parent(ptr noundef %11, ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev13 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %14 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %call7) #9
  br label %ERR_SELECT_CLK_TOP_MUX_AUD_1

if.end14:                                         ; preds = %if.end
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %arrayidx16 = getelementptr ptr, ptr %17, i32 18
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx16, align 4
  %call.i1 = tail call i32 @clk_prepare(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.not.i2 = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i2, label %if.end.i5, label %if.end14.do.end22_crit_edge

if.end14.do.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

if.end.i5:                                        ; preds = %if.end14
  %call1.i3 = tail call i32 @clk_enable(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool2.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool2.not.i4, label %if.end24, label %if.then3.i6

if.then3.i6:                                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %19) #6
  br label %do.end22

do.end22:                                         ; preds = %if.then3.i6, %if.end14.do.end22_crit_edge
  %retval.0.i7.ph = phi i32 [ %call1.i3, %if.then3.i6 ], [ %call.i1, %if.end14.do.end22_crit_edge ]
  %dev23 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %20 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.60, i32 noundef %retval.0.i7.ph) #9
  br label %ERR_SELECT_CLK_TOP_MUX_AUD_1

if.end24:                                         ; preds = %if.end.i5
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %arrayidx26 = getelementptr ptr, ptr %23, i32 18
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr ptr, ptr %23, i32 19
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx28, align 4
  %call29 = tail call i32 @clk_set_parent(ptr noundef %25, ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end24.cleanup_crit_edge, label %do.end34

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end34:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %dev35 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %28 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef %call29) #9
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %arrayidx67 = getelementptr ptr, ptr %31, i32 18
  %32 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx67, align 4
  %arrayidx69 = getelementptr ptr, ptr %31, i32 34
  %34 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx69, align 4
  %call70 = tail call i32 @clk_set_parent(ptr noundef %33, ptr noundef %35) #6
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %arrayidx72 = getelementptr ptr, ptr %37, i32 18
  %38 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx72, align 4
  tail call void @clk_disable(ptr noundef %39) #6
  tail call void @clk_unprepare(ptr noundef %39) #6
  br label %ERR_SELECT_CLK_TOP_MUX_AUD_1

if.else:                                          ; preds = %entry
  %arrayidx38 = getelementptr ptr, ptr %3, i32 18
  %40 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx38, align 4
  %arrayidx40 = getelementptr ptr, ptr %3, i32 34
  %42 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx40, align 4
  %call41 = tail call i32 @clk_set_parent(ptr noundef %41, ptr noundef %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev47 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %44 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.76, i32 noundef %call41) #9
  br label %cleanup

if.end48:                                         ; preds = %if.else
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %arrayidx50 = getelementptr ptr, ptr %47, i32 18
  %48 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx50, align 4
  tail call void @clk_disable(ptr noundef %49) #6
  tail call void @clk_unprepare(ptr noundef %49) #6
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %arrayidx52 = getelementptr ptr, ptr %51, i32 14
  %52 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx52, align 4
  %arrayidx54 = getelementptr ptr, ptr %51, i32 34
  %54 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx54, align 4
  %call55 = tail call i32 @clk_set_parent(ptr noundef %53, ptr noundef %55) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %dev61 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %56 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.76, i32 noundef %call55) #9
  br label %cleanup

if.end62:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %arrayidx64 = getelementptr ptr, ptr %59, i32 14
  %60 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx64, align 4
  tail call void @clk_disable(ptr noundef %61) #6
  tail call void @clk_unprepare(ptr noundef %61) #6
  br label %cleanup

ERR_SELECT_CLK_TOP_MUX_AUD_1:                     ; preds = %do.end34, %do.end22, %do.end12
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %arrayidx74 = getelementptr ptr, ptr %63, i32 14
  %64 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx74, align 4
  %arrayidx76 = getelementptr ptr, ptr %63, i32 34
  %66 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx76, align 4
  %call77 = tail call i32 @clk_set_parent(ptr noundef %65, ptr noundef %67) #6
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %arrayidx79 = getelementptr ptr, ptr %69, i32 14
  %70 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx79, align 4
  tail call void @clk_disable(ptr noundef %71) #6
  tail call void @clk_unprepare(ptr noundef %71) #6
  br label %cleanup

cleanup:                                          ; preds = %ERR_SELECT_CLK_TOP_MUX_AUD_1, %if.end62, %do.end60, %do.end46, %if.end24.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt8183_apll1_disable(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3536, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 1008, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %arrayidx4 = getelementptr ptr, ptr %11, i32 2
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  tail call fastcc void @apll1_mux_setting(ptr noundef %afe, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8183_apll2_enable(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  tail call fastcc void @apll2_mux_setting(ptr noundef %afe, i1 noundef zeroext true)
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.45, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx3 = getelementptr ptr, ptr %9, i32 5
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %call.i32 = tail call i32 @clk_prepare(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i33 = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i33, label %if.end.i36, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

if.end.i36:                                       ; preds = %if.end
  %call1.i34 = tail call i32 @clk_enable(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34)
  %tobool2.not.i35 = icmp eq i32 %call1.i34, 0
  br i1 %tobool2.not.i35, label %if.end11, label %if.then3.i37

if.then3.i37:                                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then3.i37, %if.end.do.end9_crit_edge
  %retval.0.i38.ph = phi i32 [ %call1.i34, %if.then3.i37 ], [ %call.i32, %if.end.do.end9_crit_edge ]
  %dev10 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.47, i32 noundef %retval.0.i38.ph) #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %arrayidx18 = getelementptr ptr, ptr %15, i32 3
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx18, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  br label %cleanup

if.end11:                                         ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i40 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 1012, i32 noundef 65527, i32 noundef 1588, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 1012, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 3536, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end9, %do.end
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %retval.0.i.ph, %do.end ], [ %retval.0.i38.ph, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @apll2_mux_setting(ptr nocapture noundef readonly %afe, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %3, i32 16
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.58, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %arrayidx4 = getelementptr ptr, ptr %9, i32 16
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr ptr, ptr %9, i32 17
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 4
  %call7 = tail call i32 @clk_set_parent(ptr noundef %11, ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev13 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %14 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, i32 noundef %call7) #9
  br label %ERR_SELECT_CLK_TOP_MUX_AUD_2

if.end14:                                         ; preds = %if.end
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %arrayidx16 = getelementptr ptr, ptr %17, i32 20
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx16, align 4
  %call.i1 = tail call i32 @clk_prepare(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.not.i2 = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i2, label %if.end.i5, label %if.end14.do.end22_crit_edge

if.end14.do.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

if.end.i5:                                        ; preds = %if.end14
  %call1.i3 = tail call i32 @clk_enable(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool2.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool2.not.i4, label %if.end24, label %if.then3.i6

if.then3.i6:                                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %19) #6
  br label %do.end22

do.end22:                                         ; preds = %if.then3.i6, %if.end14.do.end22_crit_edge
  %retval.0.i7.ph = phi i32 [ %call1.i3, %if.then3.i6 ], [ %call.i1, %if.end14.do.end22_crit_edge ]
  %dev23 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %20 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.62, i32 noundef %retval.0.i7.ph) #9
  br label %ERR_SELECT_CLK_TOP_MUX_AUD_2

if.end24:                                         ; preds = %if.end.i5
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %arrayidx26 = getelementptr ptr, ptr %23, i32 20
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr ptr, ptr %23, i32 21
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx28, align 4
  %call29 = tail call i32 @clk_set_parent(ptr noundef %25, ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end24.cleanup_crit_edge, label %do.end34

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end34:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %dev35 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %28 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i32 noundef %call29) #9
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %arrayidx67 = getelementptr ptr, ptr %31, i32 20
  %32 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx67, align 4
  %arrayidx69 = getelementptr ptr, ptr %31, i32 34
  %34 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx69, align 4
  %call70 = tail call i32 @clk_set_parent(ptr noundef %33, ptr noundef %35) #6
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %arrayidx72 = getelementptr ptr, ptr %37, i32 20
  %38 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx72, align 4
  tail call void @clk_disable(ptr noundef %39) #6
  tail call void @clk_unprepare(ptr noundef %39) #6
  br label %ERR_SELECT_CLK_TOP_MUX_AUD_2

if.else:                                          ; preds = %entry
  %arrayidx38 = getelementptr ptr, ptr %3, i32 20
  %40 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx38, align 4
  %arrayidx40 = getelementptr ptr, ptr %3, i32 34
  %42 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx40, align 4
  %call41 = tail call i32 @clk_set_parent(ptr noundef %41, ptr noundef %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end48, label %do.end46

do.end46:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev47 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %44 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.76, i32 noundef %call41) #9
  br label %cleanup

if.end48:                                         ; preds = %if.else
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %arrayidx50 = getelementptr ptr, ptr %47, i32 20
  %48 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx50, align 4
  tail call void @clk_disable(ptr noundef %49) #6
  tail call void @clk_unprepare(ptr noundef %49) #6
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %arrayidx52 = getelementptr ptr, ptr %51, i32 16
  %52 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx52, align 4
  %arrayidx54 = getelementptr ptr, ptr %51, i32 34
  %54 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx54, align 4
  %call55 = tail call i32 @clk_set_parent(ptr noundef %53, ptr noundef %55) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %dev61 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %56 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.76, i32 noundef %call55) #9
  br label %cleanup

if.end62:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %arrayidx64 = getelementptr ptr, ptr %59, i32 16
  %60 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx64, align 4
  tail call void @clk_disable(ptr noundef %61) #6
  tail call void @clk_unprepare(ptr noundef %61) #6
  br label %cleanup

ERR_SELECT_CLK_TOP_MUX_AUD_2:                     ; preds = %do.end34, %do.end22, %do.end12
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %arrayidx74 = getelementptr ptr, ptr %63, i32 16
  %64 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx74, align 4
  %arrayidx76 = getelementptr ptr, ptr %63, i32 34
  %66 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx76, align 4
  %call77 = tail call i32 @clk_set_parent(ptr noundef %65, ptr noundef %67) #6
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %arrayidx79 = getelementptr ptr, ptr %69, i32 16
  %70 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx79, align 4
  tail call void @clk_disable(ptr noundef %71) #6
  tail call void @clk_unprepare(ptr noundef %71) #6
  br label %cleanup

cleanup:                                          ; preds = %ERR_SELECT_CLK_TOP_MUX_AUD_2, %if.end62, %do.end60, %do.end46, %if.end24.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt8183_apll2_disable(ptr nocapture noundef readonly %afe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %regmap = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 2
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3536, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 1012, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %arrayidx4 = getelementptr ptr, ptr %11, i32 3
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  tail call fastcc void @apll2_mux_setting(ptr noundef %afe, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mt8183_get_apll_rate(ptr nocapture noundef readnone %afe, i32 noundef %apll) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %apll)
  %cmp = icmp eq i32 %apll, 0
  %cond = select i1 %cmp, i32 180633600, i32 196608000
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mt8183_get_apll_by_rate(ptr nocapture readnone %afe, i32 noundef %rate) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = srem i32 %rate, 8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  %cond = zext i1 %cmp to i32
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mt8183_get_apll_by_name(ptr nocapture noundef readnone %afe, ptr nocapture noundef readonly %name) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef nonnull dereferenceable(6) @.str.33) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp ne i32 %call, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt8183_mck_enable(ptr nocapture noundef readonly %afe, i32 noundef %mck_id, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %rem.i = srem i32 %rate, 8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp.i.not = icmp eq i32 %rem.i, 0
  %cond = select i1 %cmp.i.not, i32 16, i32 14
  %arrayidx = getelementptr [7 x %struct.mt8183_mck_div], ptr @mck_div, i32 0, i32 %mck_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %div_clk_id3 = getelementptr [7 x %struct.mt8183_mck_div], ptr @mck_div, i32 0, i32 %mck_id, i32 1
  %4 = ptrtoint ptr %div_clk_id3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div_clk_id3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %mck_id)
  %cmp4 = icmp eq i32 %mck_id, 6
  br i1 %cmp4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp5 = icmp sgt i32 %3, -1
  br i1 %cmp5, label %if.then6, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then6:                                         ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %arrayidx7 = getelementptr ptr, ptr %7, i32 %3
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx7, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.do.end_crit_edge

if.then6.do.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.then6
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end11, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then6.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then6.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %arrayidx10 = getelementptr [35 x ptr], ptr @aud_clks, i32 0, i32 %3
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.34, ptr noundef %13, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end11:                                         ; preds = %if.end.i
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %arrayidx13 = getelementptr ptr, ptr %15, i32 %3
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx13, align 4
  %arrayidx15 = getelementptr ptr, ptr %15, i32 %cond
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx15, align 4
  %call16 = tail call i32 @clk_set_parent(ptr noundef %17, ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end11.if.end26_crit_edge, label %ERR_SELECT_MCLK.thread

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

ERR_SELECT_MCLK.thread:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %dev22 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %20 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev22, align 4
  %arrayidx23 = getelementptr [35 x ptr], ptr @aud_clks, i32 0, i32 %3
  %22 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr [35 x ptr], ptr @aud_clks, i32 0, i32 %cond
  %24 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.34, ptr noundef %23, ptr noundef %25, i32 noundef %call16) #9
  br label %if.then52

if.end26:                                         ; preds = %if.end11.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %arrayidx28 = getelementptr ptr, ptr %27, i32 %5
  %28 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx28, align 4
  %call.i95 = tail call i32 @clk_prepare(ptr noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool.not.i96 = icmp eq i32 %call.i95, 0
  br i1 %tobool.not.i96, label %if.end.i99, label %if.end26.do.end34_crit_edge

if.end26.do.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

if.end.i99:                                       ; preds = %if.end26
  %call1.i97 = tail call i32 @clk_enable(ptr noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i97)
  %tobool2.not.i98 = icmp eq i32 %call1.i97, 0
  br i1 %tobool2.not.i98, label %if.end37, label %if.then3.i100

if.then3.i100:                                    ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %29) #6
  br label %do.end34

do.end34:                                         ; preds = %if.then3.i100, %if.end26.do.end34_crit_edge
  %retval.0.i101.ph = phi i32 [ %call1.i97, %if.then3.i100 ], [ %call.i95, %if.end26.do.end34_crit_edge ]
  %dev35 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %30 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev35, align 4
  %arrayidx36 = getelementptr [35 x ptr], ptr @aud_clks, i32 0, i32 %5
  %32 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.34, ptr noundef %33, i32 noundef %retval.0.i101.ph) #9
  br label %ERR_SELECT_MCLK

if.end37:                                         ; preds = %if.end.i99
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %arrayidx39 = getelementptr ptr, ptr %35, i32 %5
  %36 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx39, align 4
  %call40 = tail call i32 @clk_set_rate(ptr noundef %37, i32 noundef %rate) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end37.cleanup_crit_edge, label %do.end45

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %dev46 = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 1
  %38 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev46, align 4
  %arrayidx47 = getelementptr [35 x ptr], ptr @aud_clks, i32 0, i32 %5
  %40 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.34, ptr noundef %41, i32 noundef %rate, i32 noundef %call40) #9
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %arrayidx50 = getelementptr ptr, ptr %43, i32 %5
  %44 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx50, align 4
  tail call void @clk_disable(ptr noundef %45) #6
  tail call void @clk_unprepare(ptr noundef %45) #6
  br label %ERR_SELECT_MCLK

ERR_SELECT_MCLK:                                  ; preds = %do.end45, %do.end34
  %ret.0 = phi i32 [ %retval.0.i101.ph, %do.end34 ], [ %call40, %do.end45 ]
  br i1 %cmp5, label %ERR_SELECT_MCLK.if.then52_crit_edge, label %ERR_SELECT_MCLK.cleanup_crit_edge

ERR_SELECT_MCLK.cleanup_crit_edge:                ; preds = %ERR_SELECT_MCLK
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ERR_SELECT_MCLK.if.then52_crit_edge:              ; preds = %ERR_SELECT_MCLK
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then52

if.then52:                                        ; preds = %ERR_SELECT_MCLK.if.then52_crit_edge, %ERR_SELECT_MCLK.thread
  %ret.0110 = phi i32 [ %call16, %ERR_SELECT_MCLK.thread ], [ %ret.0, %ERR_SELECT_MCLK.if.then52_crit_edge ]
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %arrayidx54 = getelementptr ptr, ptr %47, i32 %3
  %48 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx54, align 4
  tail call void @clk_disable(ptr noundef %49) #6
  tail call void @clk_unprepare(ptr noundef %49) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %ERR_SELECT_MCLK.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ %retval.0.i.ph, %do.end ], [ %ret.0110, %if.then52 ], [ %ret.0, %ERR_SELECT_MCLK.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mt8183_mck_disable(ptr nocapture noundef readonly %afe, i32 noundef %mck_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_priv = getelementptr inbounds %struct.mtk_base_afe, ptr %afe, i32 0, i32 25
  %0 = ptrtoint ptr %platform_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_priv, align 4
  %arrayidx = getelementptr [7 x %struct.mt8183_mck_div], ptr @mck_div, i32 0, i32 %mck_id
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %mck_id)
  %cmp = icmp eq i32 %mck_id, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %div_clk_id3 = getelementptr [7 x %struct.mt8183_mck_div], ptr @mck_div, i32 0, i32 %mck_id, i32 1
  %4 = ptrtoint ptr %div_clk_id3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %div_clk_id3, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %arrayidx4 = getelementptr ptr, ptr %7, i32 %5
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp5 = icmp sgt i32 %3, -1
  br i1 %cmp5, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %arrayidx8 = getelementptr ptr, ptr %11, i32 %3
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8, align 4
  tail call void @clk_disable(ptr noundef %13) #6
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !49, !51, !52, !53, !55, !56, !58, !60, !61, !62, !64, !65, !67, !68, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !148, !150, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190, !191, !192}
!llvm.ident = !{!193}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 105, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mt8183_init_clock._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mt8183_init_clock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 122, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mt8183_afe_enable_clock._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mt8183_afe_enable_clock._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @mt8183_afe_enable_clock._entry.7, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 129, i32 3}
!15 = !{ptr @mt8183_afe_enable_clock._entry_ptr.8, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 137, i32 3}
!18 = !{ptr @mt8183_afe_enable_clock._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mt8183_afe_enable_clock._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @mt8183_afe_enable_clock._entry.12, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 145, i32 3}
!22 = !{ptr @mt8183_afe_enable_clock._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @mt8183_afe_enable_clock._entry.14, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 153, i32 3}
!25 = !{ptr @mt8183_afe_enable_clock._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 161, i32 3}
!28 = !{ptr @mt8183_afe_enable_clock._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mt8183_afe_enable_clock._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @mt8183_afe_enable_clock._entry.19, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 168, i32 3}
!32 = !{ptr @mt8183_afe_enable_clock._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @mt8183_afe_enable_clock._entry.21, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 175, i32 3}
!35 = !{ptr @mt8183_afe_enable_clock._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @mt8183_afe_enable_clock._entry.23, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 182, i32 3}
!38 = !{ptr @mt8183_afe_enable_clock._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @mt8183_afe_enable_clock._entry.25, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 189, i32 3}
!41 = !{ptr @mt8183_afe_enable_clock._entry_ptr.26, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 389, i32 3}
!44 = !{ptr @mt8183_apll1_enable._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mt8183_apll1_enable._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @mt8183_apll1_enable._entry.28, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 396, i32 3}
!48 = !{ptr @mt8183_apll1_enable._entry_ptr.29, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 443, i32 3}
!51 = !{ptr @mt8183_apll2_enable._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mt8183_apll2_enable._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @mt8183_apll2_enable._entry.31, !54, !"_entry", i1 false, i1 false}
!54 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 450, i32 3}
!55 = !{ptr @mt8183_apll2_enable._entry_ptr.32, !54, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 499, i32 19}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 560, i32 4}
!60 = !{ptr @mt8183_mck_enable._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mt8183_mck_enable._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @mt8183_mck_enable._entry.35, !63, !"_entry", i1 false, i1 false}
!63 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 567, i32 4}
!64 = !{ptr @mt8183_mck_enable._entry_ptr.36, !63, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @mt8183_mck_enable._entry.37, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 577, i32 3}
!67 = !{ptr @mt8183_mck_enable._entry_ptr.38, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 583, i32 3}
!70 = !{ptr @mt8183_mck_enable._entry.39, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mt8183_mck_enable._entry_ptr.41, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 55, i32 14}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 56, i32 14}
!76 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 57, i32 18}
!78 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 58, i32 18}
!80 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 59, i32 22}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 60, i32 22}
!84 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 61, i32 23}
!86 = !{ptr @.str.49, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 62, i32 23}
!88 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 63, i32 23}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 64, i32 23}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 65, i32 26}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 66, i32 20}
!96 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 67, i32 26}
!98 = !{ptr @.str.55, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 68, i32 27}
!100 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 69, i32 24}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 70, i32 23}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 71, i32 24}
!106 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 72, i32 23}
!108 = !{ptr @.str.60, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 73, i32 27}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 74, i32 23}
!112 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 75, i32 27}
!114 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 76, i32 23}
!116 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 77, i32 25}
!118 = !{ptr @.str.65, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 78, i32 25}
!120 = !{ptr @.str.66, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 79, i32 25}
!122 = !{ptr @.str.67, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 80, i32 25}
!124 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 81, i32 25}
!126 = !{ptr @.str.69, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 82, i32 25}
!128 = !{ptr @.str.70, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 83, i32 26}
!130 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 84, i32 26}
!132 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 85, i32 26}
!134 = !{ptr @.str.73, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 86, i32 26}
!136 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 87, i32 26}
!138 = !{ptr @.str.75, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 88, i32 26}
!140 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 89, i32 17}
!142 = !{ptr @aud_clks, !143, !"aud_clks", i1 false, i1 false}
!143 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 54, i32 20}
!144 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 239, i32 4}
!146 = !{ptr @apll1_mux_setting._entry, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @apll1_mux_setting._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 246, i32 4}
!150 = !{ptr @apll1_mux_setting._entry.78, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @apll1_mux_setting._entry_ptr.80, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @apll1_mux_setting._entry.81, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 255, i32 4}
!154 = !{ptr @apll1_mux_setting._entry_ptr.82, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @apll1_mux_setting._entry.83, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 262, i32 4}
!157 = !{ptr @apll1_mux_setting._entry_ptr.84, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @apll1_mux_setting._entry.85, !159, !"_entry", i1 false, i1 false}
!159 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 271, i32 4}
!160 = !{ptr @apll1_mux_setting._entry_ptr.86, !159, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @apll1_mux_setting._entry.87, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 281, i32 4}
!163 = !{ptr @apll1_mux_setting._entry_ptr.88, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.89, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 313, i32 4}
!166 = !{ptr @apll2_mux_setting._entry, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @apll2_mux_setting._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @apll2_mux_setting._entry.90, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 320, i32 4}
!170 = !{ptr @apll2_mux_setting._entry_ptr.91, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @apll2_mux_setting._entry.92, !172, !"_entry", i1 false, i1 false}
!172 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 329, i32 4}
!173 = !{ptr @apll2_mux_setting._entry_ptr.93, !172, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @apll2_mux_setting._entry.94, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 336, i32 4}
!176 = !{ptr @apll2_mux_setting._entry_ptr.95, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @apll2_mux_setting._entry.96, !178, !"_entry", i1 false, i1 false}
!178 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 345, i32 4}
!179 = !{ptr @apll2_mux_setting._entry_ptr.97, !178, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @apll2_mux_setting._entry.98, !181, !"_entry", i1 false, i1 false}
!181 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 355, i32 4}
!182 = !{ptr @apll2_mux_setting._entry_ptr.99, !181, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @mck_div, !184, !"mck_div", i1 false, i1 false}
!184 = !{!"../sound/soc/mediatek/mt8183/mt8183-afe-clk.c", i32 511, i32 36}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 1, !"min_enum_size", i32 4}
!187 = !{i32 8, !"branch-target-enforcement", i32 0}
!188 = !{i32 8, !"sign-return-address", i32 0}
!189 = !{i32 8, !"sign-return-address-all", i32 0}
!190 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!191 = !{i32 7, !"uwtable", i32 1}
!192 = !{i32 7, !"frame-pointer", i32 2}
!193 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
