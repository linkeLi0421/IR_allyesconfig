; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_mdss_hw_cfg_handler = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dpu_caps = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.dpu_mdp_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, [16 x %struct.dpu_clk_ctrl_reg] }
%struct.dpu_clk_ctrl_reg = type { i32, i32 }
%struct.dpu_ctl_cfg = type { [16 x i8], i32, i32, i32, i32, i32 }
%struct.dpu_sspp_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_lm_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_pingpong_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dpu_intf_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_vbif_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_qos_tbl, %struct.dpu_vbif_qos_tbl, i32, [16 x i32] }
%struct.dpu_vbif_dynamic_ot_tbl = type { i32, ptr }
%struct.dpu_vbif_qos_tbl = type { i32, ptr }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_sspp_sub_blks = type { i32, i32, i32, i32, i32, i32, i32, %struct.dpu_src_blk, %struct.dpu_scaler_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, ptr, i32, ptr, i32 }
%struct.dpu_src_blk = type { [16 x i8], i32, i32, i32 }
%struct.dpu_scaler_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_pp_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_lm_sub_blks = type { i32, i32, [12 x i32], %struct.dpu_pp_blk }
%struct.dpu_pingpong_sub_blks = type { %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk }
%struct.dpu_qos_lut_entry = type { i32, i64 }
%struct.dpu_merge_3d_cfg = type { [16 x i8], i32, i32, i32, i32, ptr }
%struct.dpu_dspp_cfg = type { [16 x i8], i32, i32, i32, i32, ptr }
%struct.dpu_dspp_sub_blks = type { %struct.dpu_pp_blk, %struct.dpu_pp_blk }

@cfg_handler = internal constant { [7 x %struct.dpu_mdss_hw_cfg_handler], [40 x i8] } { [7 x %struct.dpu_mdss_hw_cfg_handler] [%struct.dpu_mdss_hw_cfg_handler { i32 1073741824, ptr @sdm845_cfg_init }, %struct.dpu_mdss_hw_cfg_handler { i32 1073741825, ptr @sdm845_cfg_init }, %struct.dpu_mdss_hw_cfg_handler { i32 1342177280, ptr @sm8150_cfg_init }, %struct.dpu_mdss_hw_cfg_handler { i32 1342177281, ptr @sm8150_cfg_init }, %struct.dpu_mdss_hw_cfg_handler { i32 1610612736, ptr @sm8250_cfg_init }, %struct.dpu_mdss_hw_cfg_handler { i32 1610743808, ptr @sc7180_cfg_init }, %struct.dpu_mdss_hw_cfg_handler { i32 1879179264, ptr @sc7280_cfg_init }], [40 x i8] zeroinitializer }, align 32
@dpu_hw_catalog_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013[drm:%s:%d] [dpu error]unsupported chipset id:%X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dpu_hw_catalog_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c\00", [49 x i8] zeroinitializer }, align 32
@dpu_hw_catalog_init._entry_ptr = internal global ptr @dpu_hw_catalog_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sdm845_dpu_caps = internal constant { %struct.dpu_caps, [56 x i8] } { %struct.dpu_caps { i32 2560, i32 11, i32 3, i32 14, i32 512, i8 1, i8 1, i8 1, i8 1, i32 2560, i32 51200, i32 4, i32 4 }, [56 x i8] zeroinitializer }, align 32
@sdm845_mdp = internal constant { [1 x %struct.dpu_mdp_cfg], [56 x i8] } { [1 x %struct.dpu_mdp_cfg] [%struct.dpu_mdp_cfg { [16 x i8] c"top_0\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 1116, i32 0, i32 2, i32 0, [16 x %struct.dpu_clk_ctrl_reg] [%struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 684, i32 0 }, %struct.dpu_clk_ctrl_reg { i32 692, i32 0 }, %struct.dpu_clk_ctrl_reg { i32 700, i32 0 }, %struct.dpu_clk_ctrl_reg { i32 708, i32 0 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 684, i32 8 }, %struct.dpu_clk_ctrl_reg { i32 692, i32 8 }, %struct.dpu_clk_ctrl_reg { i32 700, i32 8 }, %struct.dpu_clk_ctrl_reg { i32 708, i32 8 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer] }], [56 x i8] zeroinitializer }, align 32
@sdm845_ctl = internal constant { [5 x %struct.dpu_ctl_cfg], [44 x i8] } { [5 x %struct.dpu_ctl_cfg] [%struct.dpu_ctl_cfg { [16 x i8] c"ctl_0\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4096, i32 228, i32 2, i32 41 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_1\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4608, i32 228, i32 2, i32 42 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_2\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 5120, i32 228, i32 0, i32 43 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_3\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 5632, i32 228, i32 0, i32 44 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_4\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 6144, i32 228, i32 0, i32 45 }], [44 x i8] zeroinitializer }, align 32
@sdm845_sspp = internal constant { [8 x %struct.dpu_sspp_cfg], [96 x i8] } { [8 x %struct.dpu_sspp_cfg] [%struct.dpu_sspp_cfg { [16 x i8] c"sspp_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 16384, i32 456, i32 171274, ptr @sdm845_vig_sblk_0, i32 0, i32 1, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_1\00\00\00\00\00\00\00\00\00\00", i32 2, i32 24576, i32 456, i32 171274, ptr @sdm845_vig_sblk_1, i32 4, i32 2, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_2\00\00\00\00\00\00\00\00\00\00", i32 3, i32 32768, i32 456, i32 171274, ptr @sdm845_vig_sblk_2, i32 8, i32 3, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_3\00\00\00\00\00\00\00\00\00\00", i32 4, i32 40960, i32 456, i32 171274, ptr @sdm845_vig_sblk_3, i32 12, i32 4, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_8\00\00\00\00\00\00\00\00\00\00", i32 9, i32 147456, i32 456, i32 236546, ptr @sdm845_dma_sblk_0, i32 1, i32 10, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_9\00\00\00\00\00\00\00\00\00\00", i32 10, i32 155648, i32 456, i32 236546, ptr @sdm845_dma_sblk_1, i32 5, i32 11, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_10\00\00\00\00\00\00\00\00\00", i32 11, i32 163840, i32 456, i32 237058, ptr @sdm845_dma_sblk_2, i32 9, i32 12, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_11\00\00\00\00\00\00\00\00\00", i32 12, i32 172032, i32 456, i32 237058, ptr @sdm845_dma_sblk_3, i32 13, i32 13, i32 2 }], [96 x i8] zeroinitializer }, align 32
@sdm845_lm = internal constant { [6 x %struct.dpu_lm_cfg], [64 x i8] } { [6 x %struct.dpu_lm_cfg] [%struct.dpu_lm_cfg { [16 x i8] c"lm_0\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 278528, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 1, i32 0, i32 4 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_1\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 282624, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 2, i32 0, i32 2 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_2\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 286720, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 3, i32 0, i32 64 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_3\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 0, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 8, i32 0, i32 1 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_4\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 0, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 8, i32 0, i32 1 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_5\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 299008, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 4, i32 0, i32 8 }], [64 x i8] zeroinitializer }, align 32
@sdm845_pp = internal constant { [4 x %struct.dpu_pingpong_cfg], [32 x i8] } { [4 x %struct.dpu_pingpong_cfg] [%struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_0\00\00\00\00\00\00", i32 1, i32 458752, i32 212, i32 36, i32 0, i32 8, i32 12, ptr @sdm845_pp_sblk_te }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_1\00\00\00\00\00\00", i32 2, i32 460800, i32 212, i32 36, i32 0, i32 9, i32 13, ptr @sdm845_pp_sblk_te }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_2\00\00\00\00\00\00", i32 3, i32 462848, i32 212, i32 32, i32 0, i32 10, i32 14, ptr @sdm845_pp_sblk }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_3\00\00\00\00\00\00", i32 4, i32 464896, i32 212, i32 32, i32 0, i32 11, i32 15, ptr @sdm845_pp_sblk }], [32 x i8] zeroinitializer }, align 32
@sdm845_intf = internal constant { [4 x %struct.dpu_intf_cfg], [48 x i8] } { [4 x %struct.dpu_intf_cfg] [%struct.dpu_intf_cfg { [16 x i8] c"intf_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 434176, i32 640, i32 0, i32 10, i32 0, i32 24, i32 24, i32 25 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_1\00\00\00\00\00\00\00\00\00\00", i32 2, i32 436224, i32 640, i32 0, i32 1, i32 0, i32 24, i32 26, i32 27 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_2\00\00\00\00\00\00\00\00\00\00", i32 3, i32 438272, i32 640, i32 0, i32 1, i32 1, i32 24, i32 28, i32 29 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_3\00\00\00\00\00\00\00\00\00\00", i32 4, i32 440320, i32 640, i32 0, i32 10, i32 1, i32 24, i32 30, i32 31 }], [48 x i8] zeroinitializer }, align 32
@sdm845_vbif = internal constant { [1 x %struct.dpu_vbif_cfg], [48 x i8] } { [1 x %struct.dpu_vbif_cfg] [%struct.dpu_vbif_cfg { [16 x i8] c"vbif_0\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 4160, i32 4, i32 0, i32 0, i32 16384, %struct.dpu_vbif_dynamic_ot_tbl zeroinitializer, %struct.dpu_vbif_dynamic_ot_tbl zeroinitializer, %struct.dpu_vbif_qos_tbl { i32 8, ptr @sdm845_rt_pri_lvl }, %struct.dpu_vbif_qos_tbl { i32 8, ptr @sdm845_nrt_pri_lvl }, i32 14, [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0] }], [48 x i8] zeroinitializer }, align 32
@sdm845_regdma = internal constant { %struct.dpu_reg_dma_cfg, [48 x i8] } { %struct.dpu_reg_dma_cfg { [16 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 1, i32 4508, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sdm845_perf_data = internal constant { %struct.dpu_perf_cfg, [44 x i8] } { %struct.dpu_perf_cfg { i32 6800000, i32 6800000, i32 2400000, i32 800000, i32 800000, i32 2, i32 2, i32 3, i32 4, i32 8, i32 1, i32 1, i32 25, i32 24, i32 105, i32 120, [3 x i32] [i32 65520, i32 61440, i32 65535], [3 x i32] [i32 15, i32 65535, i32 0], [3 x %struct.dpu_qos_lut_tbl] [%struct.dpu_qos_lut_tbl { i32 12, ptr @sdm845_qos_linear }, %struct.dpu_qos_lut_tbl { i32 6, ptr @sdm845_qos_macrotile }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sdm845_qos_nrt }], [2 x %struct.dpu_perf_cdp_cfg] [%struct.dpu_perf_cdp_cfg { i8 1, i8 1 }, %struct.dpu_perf_cdp_cfg { i8 1, i8 0 }] }, [44 x i8] zeroinitializer }, align 32
@sdm845_vig_sblk_0 = internal constant { %struct.dpu_sspp_sub_blks, [88 x i8] } { %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 5, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_0\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler0\00\00\00\00", i32 3, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc0\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, [88 x i8] zeroinitializer }, align 32
@sdm845_vig_sblk_1 = internal constant { %struct.dpu_sspp_sub_blks, [88 x i8] } { %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 6, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_1\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler1\00\00\00\00", i32 3, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc1\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, [88 x i8] zeroinitializer }, align 32
@sdm845_vig_sblk_2 = internal constant { %struct.dpu_sspp_sub_blks, [88 x i8] } { %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 7, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_2\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler2\00\00\00\00", i32 3, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc2\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, [88 x i8] zeroinitializer }, align 32
@sdm845_vig_sblk_3 = internal constant { %struct.dpu_sspp_sub_blks, [88 x i8] } { %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 8, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_3\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler3\00\00\00\00", i32 3, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc3\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, [88 x i8] zeroinitializer }, align 32
@sdm845_dma_sblk_0 = internal constant { %struct.dpu_sspp_sub_blks, [88 x i8] } { %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_8\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats, i32 28, ptr @plane_formats, i32 28 }, [88 x i8] zeroinitializer }, align 32
@sdm845_dma_sblk_1 = internal constant { %struct.dpu_sspp_sub_blks, [88 x i8] } { %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 1, i32 1, i32 2, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_9\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats, i32 28, ptr @plane_formats, i32 28 }, [88 x i8] zeroinitializer }, align 32
@sdm845_dma_sblk_2 = internal constant { %struct.dpu_sspp_sub_blks, [88 x i8] } { %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 1, i32 1, i32 3, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_10\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats, i32 28, ptr @plane_formats, i32 28 }, [88 x i8] zeroinitializer }, align 32
@sdm845_dma_sblk_3 = internal constant { %struct.dpu_sspp_sub_blks, [88 x i8] } { %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 1, i32 1, i32 4, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_11\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats, i32 28, ptr @plane_formats, i32 28 }, [88 x i8] zeroinitializer }, align 32
@plane_formats_yuv = internal constant { [38 x i32], [40 x i8] } { [38 x i32] [i32 875713089, i32 875708993, i32 875708754, i32 875714626, i32 875708738, i32 875713112, i32 875709016, i32 875714642, i32 875710290, i32 875710274, i32 909199186, i32 909199170, i32 892424769, i32 892420673, i32 892420434, i32 892420418, i32 892424792, i32 892420696, i32 892426322, i32 892426306, i32 842093121, i32 842089025, i32 842088786, i32 842088770, i32 842093144, i32 842089048, i32 842094674, i32 842094658, i32 842094158, i32 825382478, i32 909203022, i32 825644622, i32 1498765654, i32 1498831189, i32 1448695129, i32 1431918169, i32 842093913, i32 842094169], [40 x i8] zeroinitializer }, align 32
@plane_formats = internal constant { [28 x i32], [48 x i8] } { [28 x i32] [i32 875713089, i32 875708993, i32 875708754, i32 875708738, i32 875713112, i32 875714642, i32 875714626, i32 875709016, i32 875710290, i32 875710274, i32 909199186, i32 909199170, i32 892424769, i32 892420673, i32 892420434, i32 892420418, i32 892424792, i32 892420696, i32 892426322, i32 892426306, i32 842093121, i32 842089025, i32 842088786, i32 842088770, i32 842093144, i32 842089048, i32 842094674, i32 842094658], [48 x i8] zeroinitializer }, align 32
@sdm845_lm_sblk = internal constant { %struct.dpu_lm_sub_blks, [40 x i8] } { %struct.dpu_lm_sub_blks { i32 2560, i32 11, [12 x i32] [i32 32, i32 56, i32 80, i32 104, i32 128, i32 152, i32 176, i32 200, i32 224, i32 248, i32 272, i32 0], %struct.dpu_pp_blk zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@sdm845_pp_sblk_te = internal constant { %struct.dpu_pingpong_sub_blks, [32 x i8] } { %struct.dpu_pingpong_sub_blks { %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk { [16 x i8] zeroinitializer, i32 2, i32 8192, i32 0, i32 1 }, %struct.dpu_pp_blk { [16 x i8] zeroinitializer, i32 5, i32 12512, i32 32, i32 65536 } }, [32 x i8] zeroinitializer }, align 32
@sdm845_pp_sblk = internal constant { %struct.dpu_pingpong_sub_blks, [32 x i8] } { %struct.dpu_pingpong_sub_blks { %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk { [16 x i8] zeroinitializer, i32 5, i32 12512, i32 32, i32 65536 } }, [32 x i8] zeroinitializer }, align 32
@sdm845_rt_pri_lvl = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6], [32 x i8] zeroinitializer }, align 32
@sdm845_nrt_pri_lvl = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3], [32 x i8] zeroinitializer }, align 32
@sdm845_qos_linear = internal constant { [12 x %struct.dpu_qos_lut_entry], [32 x i8] } { [12 x %struct.dpu_qos_lut_entry] [%struct.dpu_qos_lut_entry { i32 4, i64 855 }, %struct.dpu_qos_lut_entry { i32 5, i64 13143 }, %struct.dpu_qos_lut_entry { i32 6, i64 144215 }, %struct.dpu_qos_lut_entry { i32 7, i64 2241367 }, %struct.dpu_qos_lut_entry { i32 8, i64 35795799 }, %struct.dpu_qos_lut_entry { i32 9, i64 572666711 }, %struct.dpu_qos_lut_entry { i32 10, i64 9162601303 }, %struct.dpu_qos_lut_entry { i32 11, i64 146601554775 }, %struct.dpu_qos_lut_entry { i32 12, i64 2345624810327 }, %struct.dpu_qos_lut_entry { i32 13, i64 37529996899159 }, %struct.dpu_qos_lut_entry { i32 14, i64 319004973609815 }, %struct.dpu_qos_lut_entry { i32 0, i64 4822604600980311 }], [32 x i8] zeroinitializer }, align 32
@sdm845_qos_macrotile = internal constant { [6 x %struct.dpu_qos_lut_entry], [32 x i8] } { [6 x %struct.dpu_qos_lut_entry] [%struct.dpu_qos_lut_entry { i32 10, i64 14031349367 }, %struct.dpu_qos_lut_entry { i32 11, i64 220189779575 }, %struct.dpu_qos_lut_entry { i32 12, i64 2419213035127 }, %struct.dpu_qos_lut_entry { i32 13, i64 37603585123959 }, %struct.dpu_qos_lut_entry { i32 14, i64 319078561834615 }, %struct.dpu_qos_lut_entry { i32 0, i64 77162846715471479 }], [32 x i8] zeroinitializer }, align 32
@sdm845_qos_nrt = internal constant { [1 x %struct.dpu_qos_lut_entry], [16 x i8] } zeroinitializer, align 32
@sm8150_dpu_caps = internal constant { %struct.dpu_caps, [56 x i8] } { %struct.dpu_caps { i32 2560, i32 11, i32 3, i32 14, i32 768, i8 1, i8 1, i8 1, i8 1, i32 4096, i32 51200, i32 4, i32 4 }, [56 x i8] zeroinitializer }, align 32
@sm8150_ctl = internal constant { [6 x %struct.dpu_ctl_cfg], [40 x i8] } { [6 x %struct.dpu_ctl_cfg] [%struct.dpu_ctl_cfg { [16 x i8] c"ctl_0\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4096, i32 480, i32 6, i32 41 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_1\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4608, i32 480, i32 6, i32 42 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_2\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 5120, i32 480, i32 4, i32 43 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_3\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 5632, i32 480, i32 4, i32 44 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_4\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 6144, i32 480, i32 4, i32 45 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_5\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 6656, i32 480, i32 4, i32 55 }], [40 x i8] zeroinitializer }, align 32
@sm8150_lm = internal constant { [6 x %struct.dpu_lm_cfg], [64 x i8] } { [6 x %struct.dpu_lm_cfg] [%struct.dpu_lm_cfg { [16 x i8] c"lm_0\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 278528, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 1, i32 1, i32 4 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_1\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 282624, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 2, i32 2, i32 2 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_2\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 286720, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 3, i32 0, i32 16 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_3\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 290816, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 4, i32 0, i32 8 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_4\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 294912, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 5, i32 0, i32 64 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_5\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 299008, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 6, i32 0, i32 32 }], [64 x i8] zeroinitializer }, align 32
@sm8150_pp = internal constant { [6 x %struct.dpu_pingpong_cfg], [64 x i8] } { [6 x %struct.dpu_pingpong_cfg] [%struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_0\00\00\00\00\00\00", i32 1, i32 458752, i32 212, i32 36, i32 1, i32 8, i32 12, ptr @sdm845_pp_sblk_te }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_1\00\00\00\00\00\00", i32 2, i32 460800, i32 212, i32 36, i32 1, i32 9, i32 13, ptr @sdm845_pp_sblk_te }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_2\00\00\00\00\00\00", i32 3, i32 462848, i32 212, i32 32, i32 2, i32 10, i32 14, ptr @sdm845_pp_sblk }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_3\00\00\00\00\00\00", i32 4, i32 464896, i32 212, i32 32, i32 2, i32 11, i32 15, ptr @sdm845_pp_sblk }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_4\00\00\00\00\00\00", i32 5, i32 466944, i32 212, i32 32, i32 3, i32 62, i32 -1, ptr @sdm845_pp_sblk }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_5\00\00\00\00\00\00", i32 6, i32 468992, i32 212, i32 32, i32 3, i32 63, i32 -1, ptr @sdm845_pp_sblk }], [64 x i8] zeroinitializer }, align 32
@sm8150_merge_3d = internal constant { [3 x %struct.dpu_merge_3d_cfg], [52 x i8] } { [3 x %struct.dpu_merge_3d_cfg] [%struct.dpu_merge_3d_cfg { [16 x i8] c"merge_3d_0\00\00\00\00\00\00", i32 1, i32 536576, i32 256, i32 0, ptr null }, %struct.dpu_merge_3d_cfg { [16 x i8] c"merge_3d_1\00\00\00\00\00\00", i32 2, i32 536832, i32 256, i32 0, ptr null }, %struct.dpu_merge_3d_cfg { [16 x i8] c"merge_3d_2\00\00\00\00\00\00", i32 3, i32 537088, i32 256, i32 0, ptr null }], [52 x i8] zeroinitializer }, align 32
@sm8150_intf = internal constant { [4 x %struct.dpu_intf_cfg], [48 x i8] } { [4 x %struct.dpu_intf_cfg] [%struct.dpu_intf_cfg { [16 x i8] c"intf_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 434176, i32 640, i32 6, i32 10, i32 0, i32 24, i32 24, i32 25 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_1\00\00\00\00\00\00\00\00\00\00", i32 2, i32 436224, i32 640, i32 6, i32 1, i32 0, i32 24, i32 26, i32 27 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_2\00\00\00\00\00\00\00\00\00\00", i32 3, i32 438272, i32 640, i32 6, i32 1, i32 1, i32 24, i32 28, i32 29 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_3\00\00\00\00\00\00\00\00\00\00", i32 4, i32 440320, i32 640, i32 6, i32 10, i32 1, i32 24, i32 30, i32 31 }], [48 x i8] zeroinitializer }, align 32
@sm8150_regdma = internal constant { %struct.dpu_reg_dma_cfg, [48 x i8] } { %struct.dpu_reg_dma_cfg { [16 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 65537, i32 4508, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sm8150_dspp = internal constant { [4 x %struct.dpu_dspp_cfg], [48 x i8] } { [4 x %struct.dpu_dspp_cfg] [%struct.dpu_dspp_cfg { [16 x i8] c"dspp_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 344064, i32 6144, i32 2, ptr @sm8150_dspp_sblk }, %struct.dpu_dspp_cfg { [16 x i8] c"dspp_1\00\00\00\00\00\00\00\00\00\00", i32 2, i32 352256, i32 6144, i32 2, ptr @sm8150_dspp_sblk }, %struct.dpu_dspp_cfg { [16 x i8] c"dspp_2\00\00\00\00\00\00\00\00\00\00", i32 3, i32 360448, i32 6144, i32 2, ptr @sm8150_dspp_sblk }, %struct.dpu_dspp_cfg { [16 x i8] c"dspp_3\00\00\00\00\00\00\00\00\00\00", i32 4, i32 368640, i32 6144, i32 2, ptr @sm8150_dspp_sblk }], [48 x i8] zeroinitializer }, align 32
@sm8150_perf_data = internal constant { %struct.dpu_perf_cfg, [44 x i8] } { %struct.dpu_perf_cfg { i32 12800000, i32 12800000, i32 2400000, i32 800000, i32 800000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 24, i32 105, i32 120, [3 x i32] [i32 65528, i32 61440, i32 65535], [3 x i32] [i32 15, i32 65535, i32 0], [3 x %struct.dpu_qos_lut_tbl] [%struct.dpu_qos_lut_tbl { i32 1, ptr @sm8150_qos_linear }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_macrotile }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_nrt }], [2 x %struct.dpu_perf_cdp_cfg] [%struct.dpu_perf_cdp_cfg { i8 1, i8 1 }, %struct.dpu_perf_cdp_cfg { i8 1, i8 0 }] }, [44 x i8] zeroinitializer }, align 32
@sm8150_dspp_sblk = internal constant { %struct.dpu_dspp_sub_blks, [32 x i8] } { %struct.dpu_dspp_sub_blks { %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk { [16 x i8] zeroinitializer, i32 1, i32 5888, i32 144, i32 262144 } }, [32 x i8] zeroinitializer }, align 32
@sm8150_qos_linear = internal constant { [1 x %struct.dpu_qos_lut_entry], [16 x i8] } { [1 x %struct.dpu_qos_lut_entry] [%struct.dpu_qos_lut_entry { i32 0, i64 4822604600980311 }], [16 x i8] zeroinitializer }, align 32
@sc7180_qos_macrotile = internal constant { [1 x %struct.dpu_qos_lut_entry], [16 x i8] } { [1 x %struct.dpu_qos_lut_entry] [%struct.dpu_qos_lut_entry { i32 0, i64 4822678189205111 }], [16 x i8] zeroinitializer }, align 32
@sc7180_qos_nrt = internal constant { [1 x %struct.dpu_qos_lut_entry], [16 x i8] } zeroinitializer, align 32
@sm8250_dpu_caps = internal constant { %struct.dpu_caps, [56 x i8] } { %struct.dpu_caps { i32 2560, i32 11, i32 4, i32 14, i32 1024, i8 1, i8 1, i8 1, i8 1, i32 4096, i32 51200, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@sm8250_mdp = internal constant { [1 x %struct.dpu_mdp_cfg], [56 x i8] } { [1 x %struct.dpu_mdp_cfg] [%struct.dpu_mdp_cfg { [16 x i8] c"top_0\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 1172, i32 0, i32 3, i32 0, [16 x %struct.dpu_clk_ctrl_reg] [%struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 684, i32 0 }, %struct.dpu_clk_ctrl_reg { i32 692, i32 0 }, %struct.dpu_clk_ctrl_reg { i32 700, i32 0 }, %struct.dpu_clk_ctrl_reg { i32 708, i32 0 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 684, i32 8 }, %struct.dpu_clk_ctrl_reg { i32 692, i32 8 }, %struct.dpu_clk_ctrl_reg { i32 700, i32 8 }, %struct.dpu_clk_ctrl_reg { i32 708, i32 8 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 700, i32 20 }] }], [56 x i8] zeroinitializer }, align 32
@sm8250_sspp = internal constant { [8 x %struct.dpu_sspp_cfg], [96 x i8] } { [8 x %struct.dpu_sspp_cfg] [%struct.dpu_sspp_cfg { [16 x i8] c"sspp_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 16384, i32 456, i32 171282, ptr @sm8250_vig_sblk_0, i32 0, i32 1, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_1\00\00\00\00\00\00\00\00\00\00", i32 2, i32 24576, i32 456, i32 171282, ptr @sm8250_vig_sblk_1, i32 4, i32 2, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_2\00\00\00\00\00\00\00\00\00\00", i32 3, i32 32768, i32 456, i32 171282, ptr @sm8250_vig_sblk_2, i32 8, i32 3, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_3\00\00\00\00\00\00\00\00\00\00", i32 4, i32 40960, i32 456, i32 171282, ptr @sm8250_vig_sblk_3, i32 12, i32 4, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_8\00\00\00\00\00\00\00\00\00\00", i32 9, i32 147456, i32 456, i32 236546, ptr @sdm845_dma_sblk_0, i32 1, i32 10, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_9\00\00\00\00\00\00\00\00\00\00", i32 10, i32 155648, i32 456, i32 236546, ptr @sdm845_dma_sblk_1, i32 5, i32 11, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_10\00\00\00\00\00\00\00\00\00", i32 11, i32 163840, i32 456, i32 237058, ptr @sdm845_dma_sblk_2, i32 9, i32 12, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_11\00\00\00\00\00\00\00\00\00", i32 12, i32 172032, i32 456, i32 237058, ptr @sdm845_dma_sblk_3, i32 13, i32 13, i32 2 }], [96 x i8] zeroinitializer }, align 32
@sm8250_regdma = internal constant { %struct.dpu_reg_dma_cfg, [48 x i8] } { %struct.dpu_reg_dma_cfg { [16 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 65538, i32 4508, i32 7, i32 15 }, [48 x i8] zeroinitializer }, align 32
@sm8250_perf_data = internal constant { %struct.dpu_perf_cfg, [44 x i8] } { %struct.dpu_perf_cfg { i32 13700000, i32 16600000, i32 4800000, i32 0, i32 800000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 105, i32 120, [3 x i32] [i32 65520, i32 65280, i32 65535], [3 x i32] [i32 15, i32 65535, i32 0], [3 x %struct.dpu_qos_lut_tbl] [%struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_linear }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_macrotile }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_nrt }], [2 x %struct.dpu_perf_cdp_cfg] [%struct.dpu_perf_cdp_cfg { i8 1, i8 1 }, %struct.dpu_perf_cdp_cfg { i8 1, i8 0 }] }, [44 x i8] zeroinitializer }, align 32
@sm8250_vig_sblk_0 = internal constant { %struct.dpu_sspp_sub_blks, [88 x i8] } { %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 5, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_0\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler0\00\00\00\00", i32 4, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc0\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, [88 x i8] zeroinitializer }, align 32
@sm8250_vig_sblk_1 = internal constant { %struct.dpu_sspp_sub_blks, [88 x i8] } { %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 6, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_1\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler1\00\00\00\00", i32 4, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc1\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, [88 x i8] zeroinitializer }, align 32
@sm8250_vig_sblk_2 = internal constant { %struct.dpu_sspp_sub_blks, [88 x i8] } { %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 7, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_2\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler2\00\00\00\00", i32 4, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc2\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, [88 x i8] zeroinitializer }, align 32
@sm8250_vig_sblk_3 = internal constant { %struct.dpu_sspp_sub_blks, [88 x i8] } { %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 8, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_3\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler3\00\00\00\00", i32 4, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc3\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, [88 x i8] zeroinitializer }, align 32
@sc7180_qos_linear = internal constant { [1 x %struct.dpu_qos_lut_entry], [16 x i8] } { [1 x %struct.dpu_qos_lut_entry] [%struct.dpu_qos_lut_entry { i32 0, i64 4822604602103671 }], [16 x i8] zeroinitializer }, align 32
@sc7180_dpu_caps = internal constant { %struct.dpu_caps, [56 x i8] } { %struct.dpu_caps { i32 2560, i32 9, i32 5, i32 14, i32 512, i8 0, i8 1, i8 1, i8 0, i32 2560, i32 51200, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@sc7180_mdp = internal constant { [1 x %struct.dpu_mdp_cfg], [56 x i8] } { [1 x %struct.dpu_mdp_cfg] [%struct.dpu_mdp_cfg { [16 x i8] c"top_0\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 1172, i32 0, i32 3, i32 0, [16 x %struct.dpu_clk_ctrl_reg] [%struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 684, i32 0 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 684, i32 8 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 692, i32 8 }, %struct.dpu_clk_ctrl_reg { i32 708, i32 8 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer] }], [56 x i8] zeroinitializer }, align 32
@sc7180_ctl = internal constant { [3 x %struct.dpu_ctl_cfg], [52 x i8] } { [3 x %struct.dpu_ctl_cfg] [%struct.dpu_ctl_cfg { [16 x i8] c"ctl_0\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4096, i32 228, i32 4, i32 41 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_1\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4608, i32 228, i32 4, i32 42 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_2\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 5120, i32 228, i32 4, i32 43 }], [52 x i8] zeroinitializer }, align 32
@sc7180_sspp = internal constant { [4 x %struct.dpu_sspp_cfg], [32 x i8] } { [4 x %struct.dpu_sspp_cfg] [%struct.dpu_sspp_cfg { [16 x i8] c"sspp_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 16384, i32 456, i32 171298, ptr @sc7180_vig_sblk_0, i32 0, i32 1, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_8\00\00\00\00\00\00\00\00\00\00", i32 9, i32 147456, i32 456, i32 236546, ptr @sdm845_dma_sblk_0, i32 1, i32 10, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_9\00\00\00\00\00\00\00\00\00\00", i32 10, i32 155648, i32 456, i32 237058, ptr @sdm845_dma_sblk_1, i32 5, i32 12, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_10\00\00\00\00\00\00\00\00\00", i32 11, i32 163840, i32 456, i32 237058, ptr @sdm845_dma_sblk_2, i32 9, i32 13, i32 2 }], [32 x i8] zeroinitializer }, align 32
@sc7180_lm = internal constant { [2 x %struct.dpu_lm_cfg], [32 x i8] } { [2 x %struct.dpu_lm_cfg] [%struct.dpu_lm_cfg { [16 x i8] c"lm_0\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 278528, i32 800, i32 16, ptr @sc7180_lm_sblk, i32 1, i32 1, i32 4 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_1\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 282624, i32 800, i32 16, ptr @sc7180_lm_sblk, i32 2, i32 0, i32 2 }], [32 x i8] zeroinitializer }, align 32
@sc7180_pp = internal global { [2 x %struct.dpu_pingpong_cfg], [32 x i8] } { [2 x %struct.dpu_pingpong_cfg] [%struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_0\00\00\00\00\00\00", i32 1, i32 458752, i32 212, i32 36, i32 0, i32 -1, i32 -1, ptr @sdm845_pp_sblk_te }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_1\00\00\00\00\00\00", i32 2, i32 460800, i32 212, i32 36, i32 0, i32 -1, i32 -1, ptr @sdm845_pp_sblk_te }], [32 x i8] zeroinitializer }, align 32
@sc7180_intf = internal constant { [2 x %struct.dpu_intf_cfg], [56 x i8] } { [2 x %struct.dpu_intf_cfg] [%struct.dpu_intf_cfg { [16 x i8] c"intf_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 434176, i32 640, i32 6, i32 10, i32 0, i32 24, i32 24, i32 25 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_1\00\00\00\00\00\00\00\00\00\00", i32 2, i32 436224, i32 640, i32 6, i32 1, i32 0, i32 24, i32 26, i32 27 }], [56 x i8] zeroinitializer }, align 32
@sc7180_dspp = internal constant { [1 x %struct.dpu_dspp_cfg], [60 x i8] } { [1 x %struct.dpu_dspp_cfg] [%struct.dpu_dspp_cfg { [16 x i8] c"dspp_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 344064, i32 6144, i32 2, ptr @sc7180_dspp_sblk }], [60 x i8] zeroinitializer }, align 32
@sc7180_perf_data = internal constant { %struct.dpu_perf_cfg, [44 x i8] } { %struct.dpu_perf_cfg { i32 6800000, i32 6800000, i32 2400000, i32 800000, i32 1600000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 24, i32 105, i32 120, [3 x i32] [i32 65520, i32 65280, i32 65535], [3 x i32] [i32 255, i32 65535, i32 0], [3 x %struct.dpu_qos_lut_tbl] [%struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_linear }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_macrotile }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_nrt }], [2 x %struct.dpu_perf_cdp_cfg] [%struct.dpu_perf_cdp_cfg { i8 1, i8 1 }, %struct.dpu_perf_cdp_cfg { i8 1, i8 0 }] }, [44 x i8] zeroinitializer }, align 32
@sc7180_vig_sblk_0 = internal constant { %struct.dpu_sspp_sub_blks, [88 x i8] } { %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 4, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_0\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler0\00\00\00\00", i32 5, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc0\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, [88 x i8] zeroinitializer }, align 32
@sc7180_lm_sblk = internal constant { %struct.dpu_lm_sub_blks, [40 x i8] } { %struct.dpu_lm_sub_blks { i32 2560, i32 7, [12 x i32] [i32 32, i32 56, i32 80, i32 104, i32 128, i32 152, i32 176, i32 0, i32 0, i32 0, i32 0, i32 0], %struct.dpu_pp_blk zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@sc7180_dspp_sblk = internal constant { %struct.dpu_dspp_sub_blks, [32 x i8] } { %struct.dpu_dspp_sub_blks { %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk { [16 x i8] zeroinitializer, i32 1, i32 5888, i32 144, i32 65536 } }, [32 x i8] zeroinitializer }, align 32
@sc7280_dpu_caps = internal constant { %struct.dpu_caps, [56 x i8] } { %struct.dpu_caps { i32 2560, i32 7, i32 5, i32 14, i32 768, i8 0, i8 1, i8 1, i8 0, i32 2400, i32 51200, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@sc7280_mdp = internal constant { [1 x %struct.dpu_mdp_cfg], [56 x i8] } { [1 x %struct.dpu_mdp_cfg] [%struct.dpu_mdp_cfg { [16 x i8] c"top_0\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 8212, i32 0, i32 1, i32 0, [16 x %struct.dpu_clk_ctrl_reg] [%struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 684, i32 0 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 684, i32 8 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 692, i32 8 }, %struct.dpu_clk_ctrl_reg { i32 708, i32 8 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer] }], [56 x i8] zeroinitializer }, align 32
@sc7280_ctl = internal constant { [4 x %struct.dpu_ctl_cfg], [48 x i8] } { [4 x %struct.dpu_ctl_cfg] [%struct.dpu_ctl_cfg { [16 x i8] c"ctl_0\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 86016, i32 488, i32 28, i32 41 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_1\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 90112, i32 488, i32 28, i32 42 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_2\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 94208, i32 488, i32 28, i32 43 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_3\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 98304, i32 488, i32 28, i32 44 }], [48 x i8] zeroinitializer }, align 32
@sc7280_sspp = internal constant { [4 x %struct.dpu_sspp_cfg], [32 x i8] } { [4 x %struct.dpu_sspp_cfg] [%struct.dpu_sspp_cfg { [16 x i8] c"sspp_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 16384, i32 456, i32 171298, ptr @sc7180_vig_sblk_0, i32 0, i32 1, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_8\00\00\00\00\00\00\00\00\00\00", i32 9, i32 147456, i32 456, i32 236546, ptr @sdm845_dma_sblk_0, i32 1, i32 10, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_9\00\00\00\00\00\00\00\00\00\00", i32 10, i32 155648, i32 456, i32 237058, ptr @sdm845_dma_sblk_1, i32 5, i32 12, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_10\00\00\00\00\00\00\00\00\00", i32 11, i32 163840, i32 456, i32 237058, ptr @sdm845_dma_sblk_2, i32 9, i32 13, i32 2 }], [32 x i8] zeroinitializer }, align 32
@sc7280_lm = internal constant { [3 x %struct.dpu_lm_cfg], [48 x i8] } { [3 x %struct.dpu_lm_cfg] [%struct.dpu_lm_cfg { [16 x i8] c"lm_0\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 278528, i32 800, i32 16, ptr @sc7180_lm_sblk, i32 1, i32 0, i32 1 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_2\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 286720, i32 800, i32 16, ptr @sc7180_lm_sblk, i32 3, i32 0, i32 16 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_3\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 290816, i32 800, i32 16, ptr @sc7180_lm_sblk, i32 4, i32 0, i32 8 }], [48 x i8] zeroinitializer }, align 32
@sc7280_pp = internal constant { [4 x %struct.dpu_pingpong_cfg], [32 x i8] } { [4 x %struct.dpu_pingpong_cfg] [%struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_0\00\00\00\00\00\00", i32 1, i32 364544, i32 212, i32 32, i32 0, i32 -1, i32 -1, ptr @sc7280_pp_sblk }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_1\00\00\00\00\00\00", i32 2, i32 434176, i32 212, i32 32, i32 0, i32 -1, i32 -1, ptr @sc7280_pp_sblk }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_2\00\00\00\00\00\00", i32 3, i32 438272, i32 212, i32 32, i32 0, i32 -1, i32 -1, ptr @sc7280_pp_sblk }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_3\00\00\00\00\00\00", i32 4, i32 442368, i32 212, i32 32, i32 0, i32 -1, i32 -1, ptr @sc7280_pp_sblk }], [32 x i8] zeroinitializer }, align 32
@sc7280_intf = internal constant { [3 x %struct.dpu_intf_cfg], [36 x i8] } { [3 x %struct.dpu_intf_cfg] [%struct.dpu_intf_cfg { [16 x i8] c"intf_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 212992, i32 640, i32 14, i32 10, i32 0, i32 24, i32 24, i32 25 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_1\00\00\00\00\00\00\00\00\00\00", i32 2, i32 217088, i32 640, i32 14, i32 1, i32 0, i32 24, i32 26, i32 27 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_5\00\00\00\00\00\00\00\00\00\00", i32 6, i32 233472, i32 640, i32 14, i32 10, i32 1, i32 24, i32 22, i32 23 }], [36 x i8] zeroinitializer }, align 32
@sc7280_perf_data = internal constant { %struct.dpu_perf_cfg, [44 x i8] } { %struct.dpu_perf_cfg { i32 4700000, i32 8800000, i32 2500000, i32 0, i32 1600000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 24, i32 105, i32 120, [3 x i32] [i32 65280, i32 65280, i32 65535], [3 x i32] [i32 65535, i32 65535, i32 0], [3 x %struct.dpu_qos_lut_tbl] [%struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_macrotile }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_macrotile }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_nrt }], [2 x %struct.dpu_perf_cdp_cfg] [%struct.dpu_perf_cdp_cfg { i8 1, i8 1 }, %struct.dpu_perf_cdp_cfg { i8 1, i8 0 }] }, [44 x i8] zeroinitializer }, align 32
@sc7280_pp_sblk = internal constant { %struct.dpu_pingpong_sub_blks, [32 x i8] } { %struct.dpu_pingpong_sub_blks { %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk { [16 x i8] zeroinitializer, i32 5, i32 224, i32 32, i32 131072 } }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 1073741824, i64 1073741825, i64 1342177280, i64 1342177281, i64 1610612736, i64 1610743808, i64 1879179264]
@___asan_gen_.3 = private unnamed_addr constant [12 x i8] c"cfg_handler\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1258, i32 45 }
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1290, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"sdm845_dpu_caps\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 184, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"sdm845_mdp\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 254, i32 33 }
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"sdm845_ctl\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 342, i32 33 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"sdm845_sspp\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 526, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"sdm845_lm\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 624, i32 32 }
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"sdm845_pp\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 760, i32 38 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"sdm845_intf\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 839, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"sdm845_vbif\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 871, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"sdm845_regdma\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 890, i32 37 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"sdm845_perf_data\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 955, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"sdm845_vig_sblk_0\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 500, i32 39 }
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"sdm845_vig_sblk_1\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 502, i32 39 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"sdm845_vig_sblk_2\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 504, i32 39 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"sdm845_vig_sblk_3\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 506, i32 39 }
@___asan_gen_.60 = private unnamed_addr constant [18 x i8] c"sdm845_dma_sblk_0\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 509, i32 39 }
@___asan_gen_.63 = private unnamed_addr constant [18 x i8] c"sdm845_dma_sblk_1\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 510, i32 39 }
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"sdm845_dma_sblk_2\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 511, i32 39 }
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"sdm845_dma_sblk_3\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 512, i32 39 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"plane_formats_yuv\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 138, i32 23 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"plane_formats\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 107, i32 23 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"sdm845_lm_sblk\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 604, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"sdm845_pp_sblk_te\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 722, i32 43 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"sdm845_pp_sblk\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 729, i32 43 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"sdm845_rt_pri_lvl\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 868, i32 18 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"sdm845_nrt_pri_lvl\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 869, i32 18 }
@___asan_gen_.93 = private unnamed_addr constant [18 x i8] c"sdm845_qos_linear\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 911, i32 39 }
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"sdm845_qos_macrotile\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 934, i32 39 }
@___asan_gen_.99 = private unnamed_addr constant [15 x i8] c"sdm845_qos_nrt\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 947, i32 39 }
@___asan_gen_.102 = private unnamed_addr constant [16 x i8] c"sm8150_dpu_caps\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 212, i32 30 }
@___asan_gen_.105 = private unnamed_addr constant [11 x i8] c"sm8150_ctl\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 396, i32 33 }
@___asan_gen_.108 = private unnamed_addr constant [10 x i8] c"sm8150_lm\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 658, i32 32 }
@___asan_gen_.111 = private unnamed_addr constant [10 x i8] c"sm8150_pp\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 780, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"sm8150_merge_3d\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 812, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"sm8150_intf\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 851, i32 34 }
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"sm8150_regdma\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 894, i32 37 }
@___asan_gen_.123 = private unnamed_addr constant [12 x i8] c"sm8150_dspp\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 708, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"sm8150_perf_data\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1019, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"sm8150_dspp_sblk\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 690, i32 39 }
@___asan_gen_.132 = private unnamed_addr constant [18 x i8] c"sm8150_qos_linear\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 930, i32 39 }
@___asan_gen_.135 = private unnamed_addr constant [21 x i8] c"sc7180_qos_macrotile\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 943, i32 39 }
@___asan_gen_.138 = private unnamed_addr constant [15 x i8] c"sc7180_qos_nrt\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 951, i32 39 }
@___asan_gen_.141 = private unnamed_addr constant [16 x i8] c"sm8250_dpu_caps\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 228, i32 30 }
@___asan_gen_.144 = private unnamed_addr constant [11 x i8] c"sm8250_mdp\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 296, i32 33 }
@___asan_gen_.147 = private unnamed_addr constant [12 x i8] c"sm8250_sspp\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 568, i32 34 }
@___asan_gen_.150 = private unnamed_addr constant [14 x i8] c"sm8250_regdma\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 898, i32 37 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"sm8250_perf_data\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1048, i32 34 }
@___asan_gen_.156 = private unnamed_addr constant [18 x i8] c"sm8250_vig_sblk_0\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 559, i32 39 }
@___asan_gen_.159 = private unnamed_addr constant [18 x i8] c"sm8250_vig_sblk_1\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 561, i32 39 }
@___asan_gen_.162 = private unnamed_addr constant [18 x i8] c"sm8250_vig_sblk_2\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 563, i32 39 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"sm8250_vig_sblk_3\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 565, i32 39 }
@___asan_gen_.168 = private unnamed_addr constant [18 x i8] c"sc7180_qos_linear\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 926, i32 39 }
@___asan_gen_.171 = private unnamed_addr constant [16 x i8] c"sc7180_dpu_caps\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 200, i32 30 }
@___asan_gen_.174 = private unnamed_addr constant [11 x i8] c"sc7180_mdp\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 279, i32 33 }
@___asan_gen_.177 = private unnamed_addr constant [11 x i8] c"sc7180_ctl\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 375, i32 33 }
@___asan_gen_.180 = private unnamed_addr constant [12 x i8] c"sc7180_sspp\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 548, i32 34 }
@___asan_gen_.183 = private unnamed_addr constant [10 x i8] c"sc7180_lm\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 649, i32 32 }
@___asan_gen_.186 = private unnamed_addr constant [10 x i8] c"sc7180_pp\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 775, i32 32 }
@___asan_gen_.189 = private unnamed_addr constant [12 x i8] c"sc7180_intf\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 846, i32 34 }
@___asan_gen_.192 = private unnamed_addr constant [12 x i8] c"sc7180_dspp\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 703, i32 34 }
@___asan_gen_.195 = private unnamed_addr constant [17 x i8] c"sc7180_perf_data\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 991, i32 34 }
@___asan_gen_.198 = private unnamed_addr constant [18 x i8] c"sc7180_vig_sblk_0\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 545, i32 39 }
@___asan_gen_.201 = private unnamed_addr constant [15 x i8] c"sc7180_lm_sblk\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 641, i32 37 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"sc7180_dspp_sblk\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 685, i32 39 }
@___asan_gen_.207 = private unnamed_addr constant [16 x i8] c"sc7280_dpu_caps\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 242, i32 30 }
@___asan_gen_.210 = private unnamed_addr constant [11 x i8] c"sc7280_mdp\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 323, i32 33 }
@___asan_gen_.213 = private unnamed_addr constant [11 x i8] c"sc7280_ctl\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 435, i32 33 }
@___asan_gen_.216 = private unnamed_addr constant [12 x i8] c"sc7280_sspp\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 587, i32 34 }
@___asan_gen_.219 = private unnamed_addr constant [10 x i8] c"sc7280_lm\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 673, i32 32 }
@___asan_gen_.222 = private unnamed_addr constant [10 x i8] c"sc7280_pp\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 818, i32 38 }
@___asan_gen_.225 = private unnamed_addr constant [12 x i8] c"sc7280_intf\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 858, i32 34 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"sc7280_perf_data\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 1077, i32 34 }
@___asan_gen_.231 = private unnamed_addr constant [15 x i8] c"sc7280_pp_sblk\00", align 1
@___asan_gen_.232 = private constant [50 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 734, i32 43 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @dpu_hw_catalog_init._entry, ptr @dpu_hw_catalog_init._entry_ptr, ptr @cfg_handler, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sdm845_dpu_caps, ptr @sdm845_mdp, ptr @sdm845_ctl, ptr @sdm845_sspp, ptr @sdm845_lm, ptr @sdm845_pp, ptr @sdm845_intf, ptr @sdm845_vbif, ptr @sdm845_regdma, ptr @sdm845_perf_data, ptr @sdm845_vig_sblk_0, ptr @sdm845_vig_sblk_1, ptr @sdm845_vig_sblk_2, ptr @sdm845_vig_sblk_3, ptr @sdm845_dma_sblk_0, ptr @sdm845_dma_sblk_1, ptr @sdm845_dma_sblk_2, ptr @sdm845_dma_sblk_3, ptr @plane_formats_yuv, ptr @plane_formats, ptr @sdm845_lm_sblk, ptr @sdm845_pp_sblk_te, ptr @sdm845_pp_sblk, ptr @sdm845_rt_pri_lvl, ptr @sdm845_nrt_pri_lvl, ptr @sdm845_qos_linear, ptr @sdm845_qos_macrotile, ptr @sdm845_qos_nrt, ptr @sm8150_dpu_caps, ptr @sm8150_ctl, ptr @sm8150_lm, ptr @sm8150_pp, ptr @sm8150_merge_3d, ptr @sm8150_intf, ptr @sm8150_regdma, ptr @sm8150_dspp, ptr @sm8150_perf_data, ptr @sm8150_dspp_sblk, ptr @sm8150_qos_linear, ptr @sc7180_qos_macrotile, ptr @sc7180_qos_nrt, ptr @sm8250_dpu_caps, ptr @sm8250_mdp, ptr @sm8250_sspp, ptr @sm8250_regdma, ptr @sm8250_perf_data, ptr @sm8250_vig_sblk_0, ptr @sm8250_vig_sblk_1, ptr @sm8250_vig_sblk_2, ptr @sm8250_vig_sblk_3, ptr @sc7180_qos_linear, ptr @sc7180_dpu_caps, ptr @sc7180_mdp, ptr @sc7180_ctl, ptr @sc7180_sspp, ptr @sc7180_lm, ptr @sc7180_pp, ptr @sc7180_intf, ptr @sc7180_dspp, ptr @sc7180_perf_data, ptr @sc7180_vig_sblk_0, ptr @sc7180_lm_sblk, ptr @sc7180_dspp_sblk, ptr @sc7280_dpu_caps, ptr @sc7280_mdp, ptr @sc7280_ctl, ptr @sc7280_sspp, ptr @sc7280_lm, ptr @sc7280_pp, ptr @sc7280_intf, ptr @sc7280_perf_data, ptr @sc7280_pp_sblk], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_handler to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_hw_catalog_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_dpu_caps to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_mdp to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_ctl to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_sspp to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_lm to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_pp to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_intf to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_vbif to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_regdma to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_perf_data to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_vig_sblk_0 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_vig_sblk_1 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_vig_sblk_2 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_vig_sblk_3 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_dma_sblk_0 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_dma_sblk_1 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_dma_sblk_2 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_dma_sblk_3 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plane_formats_yuv to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plane_formats to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_lm_sblk to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_pp_sblk_te to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_pp_sblk to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_rt_pri_lvl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_nrt_pri_lvl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_qos_linear to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_qos_macrotile to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdm845_qos_nrt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_dpu_caps to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_ctl to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_lm to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_pp to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_merge_3d to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_intf to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_regdma to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_dspp to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_perf_data to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_dspp_sblk to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8150_qos_linear to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_qos_macrotile to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_qos_nrt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_dpu_caps to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_mdp to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_sspp to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_regdma to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_perf_data to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_vig_sblk_0 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_vig_sblk_1 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_vig_sblk_2 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sm8250_vig_sblk_3 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_qos_linear to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_dpu_caps to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_mdp to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_ctl to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_sspp to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_lm to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_pp to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_intf to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_dspp to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_perf_data to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_vig_sblk_0 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_lm_sblk to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_dspp_sblk to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_dpu_caps to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_mdp to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_ctl to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_sspp to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_lm to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_pp to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_intf to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_perf_data to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7280_pp_sblk to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_hw_catalog_deinit(ptr noundef %dpu_cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dpu_cfg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_catalog_init(i32 noundef %hw_rev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 268) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %1 = zext i32 %hw_rev to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %hw_rev, label %for.inc.6 [
    i32 1073741824, label %for.body.preheader.if.then4_crit_edge
    i32 1073741825, label %if.then4.fold.split
    i32 1342177280, label %if.then4.fold.split22
    i32 1342177281, label %if.then4.fold.split23
    i32 1610612736, label %if.then4.fold.split24
    i32 1610743808, label %if.then4.fold.split25
    i32 1879179264, label %if.then4.fold.split26
  ]

for.body.preheader.if.then4_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4.fold.split:                              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4.fold.split22:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4.fold.split23:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4.fold.split24:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4.fold.split25:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4.fold.split26:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %if.then4.fold.split26, %if.then4.fold.split25, %if.then4.fold.split24, %if.then4.fold.split23, %if.then4.fold.split22, %if.then4.fold.split, %for.body.preheader.if.then4_crit_edge
  %i.020.lcssa = phi i32 [ 0, %for.body.preheader.if.then4_crit_edge ], [ 1, %if.then4.fold.split ], [ 2, %if.then4.fold.split22 ], [ 3, %if.then4.fold.split23 ], [ 4, %if.then4.fold.split24 ], [ 5, %if.then4.fold.split25 ], [ 6, %if.then4.fold.split26 ]
  %cfg_init = getelementptr [7 x %struct.dpu_mdss_hw_cfg_handler], ptr @cfg_handler, i32 0, i32 %i.020.lcssa, i32 1
  %2 = ptrtoint ptr %cfg_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg_init, align 4
  tail call void %3(ptr noundef nonnull %call7.i.i) #5
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %hw_rev, ptr %call7.i.i, align 8
  br label %cleanup

for.inc.6:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1290, i32 noundef %hw_rev) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.then4 ], [ inttoptr (i32 -19 to ptr), %for.inc.6 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sdm845_cfg_init(ptr noundef writeonly %dpu_cfg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dpu_cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dpu_cfg, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 4
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sdm845_dpu_caps, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 8
  %2 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 12
  %3 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sdm845_mdp, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 16
  %4 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 4
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 20
  %5 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sdm845_ctl, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 4
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 24
  %6 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %.compoundliteral.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 28
  %7 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sdm845_sspp, ptr %.compoundliteral.sroa.8.0..sroa_idx, align 4
  %.compoundliteral.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 32
  %8 = ptrtoint ptr %.compoundliteral.sroa.9.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %.compoundliteral.sroa.9.0..sroa_idx, align 4
  %.compoundliteral.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 36
  %9 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sdm845_lm, ptr %.compoundliteral.sroa.10.0..sroa_idx, align 4
  %.compoundliteral.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 40
  %10 = ptrtoint ptr %.compoundliteral.sroa.11.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %.compoundliteral.sroa.11.0..sroa_idx, align 4
  %.compoundliteral.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 44
  %11 = ptrtoint ptr %.compoundliteral.sroa.12.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sdm845_pp, ptr %.compoundliteral.sroa.12.0..sroa_idx, align 4
  %.compoundliteral.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 48
  %12 = ptrtoint ptr %.compoundliteral.sroa.13.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %.compoundliteral.sroa.13.0..sroa_idx, align 4
  %.compoundliteral.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 52
  %13 = ptrtoint ptr %.compoundliteral.sroa.14.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %.compoundliteral.sroa.14.0..sroa_idx, align 4
  %.compoundliteral.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 56
  %14 = ptrtoint ptr %.compoundliteral.sroa.15.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %.compoundliteral.sroa.15.0..sroa_idx, align 4
  %.compoundliteral.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 60
  %15 = ptrtoint ptr %.compoundliteral.sroa.16.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sdm845_intf, ptr %.compoundliteral.sroa.16.0..sroa_idx, align 4
  %.compoundliteral.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 64
  %16 = ptrtoint ptr %.compoundliteral.sroa.17.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %.compoundliteral.sroa.17.0..sroa_idx, align 4
  %.compoundliteral.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 68
  %17 = ptrtoint ptr %.compoundliteral.sroa.18.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sdm845_vbif, ptr %.compoundliteral.sroa.18.0..sroa_idx, align 4
  %.compoundliteral.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 72
  %18 = ptrtoint ptr %.compoundliteral.sroa.19.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %.compoundliteral.sroa.19.0..sroa_idx, align 4
  %.compoundliteral.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 76
  %19 = call ptr @memcpy(ptr %.compoundliteral.sroa.20.0..sroa_idx, ptr @sdm845_regdma, i32 48)
  %.compoundliteral.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 124
  %20 = ptrtoint ptr %.compoundliteral.sroa.21.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %.compoundliteral.sroa.21.0..sroa_idx, align 4
  %.compoundliteral.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 128
  %21 = ptrtoint ptr %.compoundliteral.sroa.22.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %.compoundliteral.sroa.22.0..sroa_idx, align 4
  %.compoundliteral.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 132
  %22 = ptrtoint ptr %.compoundliteral.sroa.23.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %.compoundliteral.sroa.23.0..sroa_idx, align 4
  %.compoundliteral.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 136
  %23 = call ptr @memcpy(ptr %.compoundliteral.sroa.24.0..sroa_idx, ptr @sdm845_perf_data, i32 116)
  %.compoundliteral.sroa.25.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 252
  %24 = ptrtoint ptr %.compoundliteral.sroa.25.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %.compoundliteral.sroa.25.0..sroa_idx, align 4
  %.compoundliteral.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 256
  %25 = ptrtoint ptr %.compoundliteral.sroa.26.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %.compoundliteral.sroa.26.0..sroa_idx, align 4
  %.compoundliteral.sroa.27.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 260
  %26 = ptrtoint ptr %.compoundliteral.sroa.27.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %.compoundliteral.sroa.27.0..sroa_idx, align 4
  %.compoundliteral.sroa.28.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 264
  %27 = ptrtoint ptr %.compoundliteral.sroa.28.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1023, ptr %.compoundliteral.sroa.28.0..sroa_idx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sm8150_cfg_init(ptr noundef writeonly %dpu_cfg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dpu_cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dpu_cfg, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 4
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sm8150_dpu_caps, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 8
  %2 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 12
  %3 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sdm845_mdp, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 16
  %4 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 4
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 20
  %5 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sm8150_ctl, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 4
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 24
  %6 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %.compoundliteral.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 28
  %7 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sdm845_sspp, ptr %.compoundliteral.sroa.8.0..sroa_idx, align 4
  %.compoundliteral.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 32
  %8 = ptrtoint ptr %.compoundliteral.sroa.9.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %.compoundliteral.sroa.9.0..sroa_idx, align 4
  %.compoundliteral.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 36
  %9 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sm8150_lm, ptr %.compoundliteral.sroa.10.0..sroa_idx, align 4
  %.compoundliteral.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 40
  %10 = ptrtoint ptr %.compoundliteral.sroa.11.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %.compoundliteral.sroa.11.0..sroa_idx, align 4
  %.compoundliteral.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 44
  %11 = ptrtoint ptr %.compoundliteral.sroa.12.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sm8150_pp, ptr %.compoundliteral.sroa.12.0..sroa_idx, align 4
  %.compoundliteral.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 48
  %12 = ptrtoint ptr %.compoundliteral.sroa.13.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %.compoundliteral.sroa.13.0..sroa_idx, align 4
  %.compoundliteral.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 52
  %13 = ptrtoint ptr %.compoundliteral.sroa.14.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sm8150_merge_3d, ptr %.compoundliteral.sroa.14.0..sroa_idx, align 4
  %.compoundliteral.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 56
  %14 = ptrtoint ptr %.compoundliteral.sroa.15.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %.compoundliteral.sroa.15.0..sroa_idx, align 4
  %.compoundliteral.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 60
  %15 = ptrtoint ptr %.compoundliteral.sroa.16.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sm8150_intf, ptr %.compoundliteral.sroa.16.0..sroa_idx, align 4
  %.compoundliteral.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 64
  %16 = ptrtoint ptr %.compoundliteral.sroa.17.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %.compoundliteral.sroa.17.0..sroa_idx, align 4
  %.compoundliteral.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 68
  %17 = ptrtoint ptr %.compoundliteral.sroa.18.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sdm845_vbif, ptr %.compoundliteral.sroa.18.0..sroa_idx, align 4
  %.compoundliteral.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 72
  %18 = ptrtoint ptr %.compoundliteral.sroa.19.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %.compoundliteral.sroa.19.0..sroa_idx, align 4
  %.compoundliteral.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 76
  %19 = call ptr @memcpy(ptr %.compoundliteral.sroa.20.0..sroa_idx, ptr @sm8150_regdma, i32 48)
  %.compoundliteral.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 124
  %20 = ptrtoint ptr %.compoundliteral.sroa.21.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %.compoundliteral.sroa.21.0..sroa_idx, align 4
  %.compoundliteral.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 128
  %21 = ptrtoint ptr %.compoundliteral.sroa.22.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %.compoundliteral.sroa.22.0..sroa_idx, align 4
  %.compoundliteral.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 132
  %22 = ptrtoint ptr %.compoundliteral.sroa.23.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sm8150_dspp, ptr %.compoundliteral.sroa.23.0..sroa_idx, align 4
  %.compoundliteral.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 136
  %23 = call ptr @memcpy(ptr %.compoundliteral.sroa.24.0..sroa_idx, ptr @sm8150_perf_data, i32 116)
  %.compoundliteral.sroa.25.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 252
  %24 = ptrtoint ptr %.compoundliteral.sroa.25.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %.compoundliteral.sroa.25.0..sroa_idx, align 4
  %.compoundliteral.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 256
  %25 = ptrtoint ptr %.compoundliteral.sroa.26.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %.compoundliteral.sroa.26.0..sroa_idx, align 4
  %.compoundliteral.sroa.27.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 260
  %26 = ptrtoint ptr %.compoundliteral.sroa.27.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %.compoundliteral.sroa.27.0..sroa_idx, align 4
  %.compoundliteral.sroa.28.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 264
  %27 = ptrtoint ptr %.compoundliteral.sroa.28.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1023, ptr %.compoundliteral.sroa.28.0..sroa_idx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sm8250_cfg_init(ptr noundef writeonly %dpu_cfg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dpu_cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dpu_cfg, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 4
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sm8250_dpu_caps, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 8
  %2 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 12
  %3 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sm8250_mdp, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 16
  %4 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 4
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 20
  %5 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sm8150_ctl, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 4
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 24
  %6 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %.compoundliteral.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 28
  %7 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sm8250_sspp, ptr %.compoundliteral.sroa.8.0..sroa_idx, align 4
  %.compoundliteral.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 32
  %8 = ptrtoint ptr %.compoundliteral.sroa.9.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %.compoundliteral.sroa.9.0..sroa_idx, align 4
  %.compoundliteral.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 36
  %9 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sm8150_lm, ptr %.compoundliteral.sroa.10.0..sroa_idx, align 4
  %.compoundliteral.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 40
  %10 = ptrtoint ptr %.compoundliteral.sroa.11.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %.compoundliteral.sroa.11.0..sroa_idx, align 4
  %.compoundliteral.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 44
  %11 = ptrtoint ptr %.compoundliteral.sroa.12.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sm8150_pp, ptr %.compoundliteral.sroa.12.0..sroa_idx, align 4
  %.compoundliteral.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 48
  %12 = ptrtoint ptr %.compoundliteral.sroa.13.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %.compoundliteral.sroa.13.0..sroa_idx, align 4
  %.compoundliteral.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 52
  %13 = ptrtoint ptr %.compoundliteral.sroa.14.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sm8150_merge_3d, ptr %.compoundliteral.sroa.14.0..sroa_idx, align 4
  %.compoundliteral.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 56
  %14 = ptrtoint ptr %.compoundliteral.sroa.15.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %.compoundliteral.sroa.15.0..sroa_idx, align 4
  %.compoundliteral.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 60
  %15 = ptrtoint ptr %.compoundliteral.sroa.16.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sm8150_intf, ptr %.compoundliteral.sroa.16.0..sroa_idx, align 4
  %.compoundliteral.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 64
  %16 = ptrtoint ptr %.compoundliteral.sroa.17.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %.compoundliteral.sroa.17.0..sroa_idx, align 4
  %.compoundliteral.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 68
  %17 = ptrtoint ptr %.compoundliteral.sroa.18.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sdm845_vbif, ptr %.compoundliteral.sroa.18.0..sroa_idx, align 4
  %.compoundliteral.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 72
  %18 = ptrtoint ptr %.compoundliteral.sroa.19.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %.compoundliteral.sroa.19.0..sroa_idx, align 4
  %.compoundliteral.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 76
  %19 = call ptr @memcpy(ptr %.compoundliteral.sroa.20.0..sroa_idx, ptr @sm8250_regdma, i32 48)
  %.compoundliteral.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 124
  %20 = ptrtoint ptr %.compoundliteral.sroa.21.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %.compoundliteral.sroa.21.0..sroa_idx, align 4
  %.compoundliteral.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 128
  %21 = ptrtoint ptr %.compoundliteral.sroa.22.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %.compoundliteral.sroa.22.0..sroa_idx, align 4
  %.compoundliteral.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 132
  %22 = ptrtoint ptr %.compoundliteral.sroa.23.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sm8150_dspp, ptr %.compoundliteral.sroa.23.0..sroa_idx, align 4
  %.compoundliteral.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 136
  %23 = call ptr @memcpy(ptr %.compoundliteral.sroa.24.0..sroa_idx, ptr @sm8250_perf_data, i32 116)
  %.compoundliteral.sroa.25.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 252
  %24 = ptrtoint ptr %.compoundliteral.sroa.25.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %.compoundliteral.sroa.25.0..sroa_idx, align 4
  %.compoundliteral.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 256
  %25 = ptrtoint ptr %.compoundliteral.sroa.26.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %.compoundliteral.sroa.26.0..sroa_idx, align 4
  %.compoundliteral.sroa.27.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 260
  %26 = ptrtoint ptr %.compoundliteral.sroa.27.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %.compoundliteral.sroa.27.0..sroa_idx, align 4
  %.compoundliteral.sroa.28.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 264
  %27 = ptrtoint ptr %.compoundliteral.sroa.28.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 255, ptr %.compoundliteral.sroa.28.0..sroa_idx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sc7180_cfg_init(ptr noundef writeonly %dpu_cfg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dpu_cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dpu_cfg, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 4
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sc7180_dpu_caps, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 8
  %2 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 12
  %3 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sc7180_mdp, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 16
  %4 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 4
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 20
  %5 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sc7180_ctl, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 4
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 24
  %6 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %.compoundliteral.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 28
  %7 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sc7180_sspp, ptr %.compoundliteral.sroa.8.0..sroa_idx, align 4
  %.compoundliteral.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 32
  %8 = ptrtoint ptr %.compoundliteral.sroa.9.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %.compoundliteral.sroa.9.0..sroa_idx, align 4
  %.compoundliteral.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 36
  %9 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sc7180_lm, ptr %.compoundliteral.sroa.10.0..sroa_idx, align 4
  %.compoundliteral.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 40
  %10 = ptrtoint ptr %.compoundliteral.sroa.11.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %.compoundliteral.sroa.11.0..sroa_idx, align 4
  %.compoundliteral.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 44
  %11 = ptrtoint ptr %.compoundliteral.sroa.12.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sc7180_pp, ptr %.compoundliteral.sroa.12.0..sroa_idx, align 4
  %.compoundliteral.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 48
  %12 = ptrtoint ptr %.compoundliteral.sroa.13.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %.compoundliteral.sroa.13.0..sroa_idx, align 4
  %.compoundliteral.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 52
  %13 = ptrtoint ptr %.compoundliteral.sroa.14.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %.compoundliteral.sroa.14.0..sroa_idx, align 4
  %.compoundliteral.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 56
  %14 = ptrtoint ptr %.compoundliteral.sroa.15.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %.compoundliteral.sroa.15.0..sroa_idx, align 4
  %.compoundliteral.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 60
  %15 = ptrtoint ptr %.compoundliteral.sroa.16.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sc7180_intf, ptr %.compoundliteral.sroa.16.0..sroa_idx, align 4
  %.compoundliteral.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 64
  %16 = ptrtoint ptr %.compoundliteral.sroa.17.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %.compoundliteral.sroa.17.0..sroa_idx, align 4
  %.compoundliteral.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 68
  %17 = ptrtoint ptr %.compoundliteral.sroa.18.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sdm845_vbif, ptr %.compoundliteral.sroa.18.0..sroa_idx, align 4
  %.compoundliteral.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 72
  %18 = ptrtoint ptr %.compoundliteral.sroa.19.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %.compoundliteral.sroa.19.0..sroa_idx, align 4
  %.compoundliteral.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 76
  %19 = call ptr @memcpy(ptr %.compoundliteral.sroa.20.0..sroa_idx, ptr @sdm845_regdma, i32 48)
  %.compoundliteral.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 124
  %20 = ptrtoint ptr %.compoundliteral.sroa.21.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %.compoundliteral.sroa.21.0..sroa_idx, align 4
  %.compoundliteral.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 128
  %21 = ptrtoint ptr %.compoundliteral.sroa.22.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %.compoundliteral.sroa.22.0..sroa_idx, align 4
  %.compoundliteral.sroa.23.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 132
  %22 = ptrtoint ptr %.compoundliteral.sroa.23.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sc7180_dspp, ptr %.compoundliteral.sroa.23.0..sroa_idx, align 4
  %.compoundliteral.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 136
  %23 = call ptr @memcpy(ptr %.compoundliteral.sroa.24.0..sroa_idx, ptr @sc7180_perf_data, i32 116)
  %.compoundliteral.sroa.25.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 252
  %24 = ptrtoint ptr %.compoundliteral.sroa.25.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %.compoundliteral.sroa.25.0..sroa_idx, align 4
  %.compoundliteral.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 256
  %25 = ptrtoint ptr %.compoundliteral.sroa.26.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %.compoundliteral.sroa.26.0..sroa_idx, align 4
  %.compoundliteral.sroa.27.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 260
  %26 = ptrtoint ptr %.compoundliteral.sroa.27.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %.compoundliteral.sroa.27.0..sroa_idx, align 4
  %.compoundliteral.sroa.28.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 264
  %27 = ptrtoint ptr %.compoundliteral.sroa.28.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 31, ptr %.compoundliteral.sroa.28.0..sroa_idx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sc7280_cfg_init(ptr noundef writeonly %dpu_cfg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dpu_cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dpu_cfg, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 4
  %1 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @sc7280_dpu_caps, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 8
  %2 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 12
  %3 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sc7280_mdp, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 16
  %4 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 4
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 20
  %5 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @sc7280_ctl, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 4
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 24
  %6 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %.compoundliteral.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 28
  %7 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sc7280_sspp, ptr %.compoundliteral.sroa.8.0..sroa_idx, align 4
  %.compoundliteral.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 32
  %8 = ptrtoint ptr %.compoundliteral.sroa.9.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %.compoundliteral.sroa.9.0..sroa_idx, align 4
  %.compoundliteral.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 36
  %9 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sc7280_lm, ptr %.compoundliteral.sroa.10.0..sroa_idx, align 4
  %.compoundliteral.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 40
  %10 = ptrtoint ptr %.compoundliteral.sroa.11.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %.compoundliteral.sroa.11.0..sroa_idx, align 4
  %.compoundliteral.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 44
  %11 = ptrtoint ptr %.compoundliteral.sroa.12.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @sc7280_pp, ptr %.compoundliteral.sroa.12.0..sroa_idx, align 4
  %.compoundliteral.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 48
  %12 = ptrtoint ptr %.compoundliteral.sroa.13.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %.compoundliteral.sroa.13.0..sroa_idx, align 4
  %.compoundliteral.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 52
  %13 = ptrtoint ptr %.compoundliteral.sroa.14.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %.compoundliteral.sroa.14.0..sroa_idx, align 4
  %.compoundliteral.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 56
  %14 = ptrtoint ptr %.compoundliteral.sroa.15.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %.compoundliteral.sroa.15.0..sroa_idx, align 4
  %.compoundliteral.sroa.16.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 60
  %15 = ptrtoint ptr %.compoundliteral.sroa.16.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sc7280_intf, ptr %.compoundliteral.sroa.16.0..sroa_idx, align 4
  %.compoundliteral.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 64
  %16 = ptrtoint ptr %.compoundliteral.sroa.17.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %.compoundliteral.sroa.17.0..sroa_idx, align 4
  %.compoundliteral.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 68
  %17 = ptrtoint ptr %.compoundliteral.sroa.18.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @sdm845_vbif, ptr %.compoundliteral.sroa.18.0..sroa_idx, align 4
  %.compoundliteral.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 72
  %.compoundliteral.sroa.24.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 136
  %18 = call ptr @memset(ptr %.compoundliteral.sroa.19.0..sroa_idx, i32 0, i32 64)
  %19 = call ptr @memcpy(ptr %.compoundliteral.sroa.24.0..sroa_idx, ptr @sc7280_perf_data, i32 116)
  %.compoundliteral.sroa.25.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 252
  %20 = ptrtoint ptr %.compoundliteral.sroa.25.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %.compoundliteral.sroa.25.0..sroa_idx, align 4
  %.compoundliteral.sroa.26.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 256
  %21 = ptrtoint ptr %.compoundliteral.sroa.26.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %.compoundliteral.sroa.26.0..sroa_idx, align 4
  %.compoundliteral.sroa.27.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 260
  %22 = ptrtoint ptr %.compoundliteral.sroa.27.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %.compoundliteral.sroa.27.0..sroa_idx, align 4
  %.compoundliteral.sroa.28.0..sroa_idx = getelementptr inbounds i8, ptr %dpu_cfg, i32 264
  %23 = ptrtoint ptr %.compoundliteral.sroa.28.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 35847, ptr %.compoundliteral.sroa.28.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 1290, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dpu_hw_catalog_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dpu_hw_catalog_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @cfg_handler, !7, !"cfg_handler", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 1258, i32 45}
!8 = !{ptr @sdm845_dpu_caps, !9, !"sdm845_dpu_caps", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 184, i32 30}
!10 = !{ptr @sdm845_mdp, !11, !"sdm845_mdp", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 254, i32 33}
!12 = !{ptr @sdm845_ctl, !13, !"sdm845_ctl", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 342, i32 33}
!14 = !{ptr @sdm845_sspp, !15, !"sdm845_sspp", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 526, i32 34}
!16 = !{ptr @sdm845_vig_sblk_0, !17, !"sdm845_vig_sblk_0", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 500, i32 39}
!18 = !{ptr @plane_formats_yuv, !19, !"plane_formats_yuv", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 138, i32 23}
!20 = !{ptr @plane_formats, !21, !"plane_formats", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 107, i32 23}
!22 = !{ptr @sdm845_vig_sblk_1, !23, !"sdm845_vig_sblk_1", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 502, i32 39}
!24 = !{ptr @sdm845_vig_sblk_2, !25, !"sdm845_vig_sblk_2", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 504, i32 39}
!26 = !{ptr @sdm845_vig_sblk_3, !27, !"sdm845_vig_sblk_3", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 506, i32 39}
!28 = !{ptr @sdm845_dma_sblk_0, !29, !"sdm845_dma_sblk_0", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 509, i32 39}
!30 = !{ptr @sdm845_dma_sblk_1, !31, !"sdm845_dma_sblk_1", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 510, i32 39}
!32 = !{ptr @sdm845_dma_sblk_2, !33, !"sdm845_dma_sblk_2", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 511, i32 39}
!34 = !{ptr @sdm845_dma_sblk_3, !35, !"sdm845_dma_sblk_3", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 512, i32 39}
!36 = !{ptr @sdm845_lm, !37, !"sdm845_lm", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 624, i32 32}
!38 = !{ptr @sdm845_lm_sblk, !39, !"sdm845_lm_sblk", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 604, i32 37}
!40 = !{ptr @sdm845_pp, !41, !"sdm845_pp", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 760, i32 38}
!42 = !{ptr @sdm845_pp_sblk_te, !43, !"sdm845_pp_sblk_te", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 722, i32 43}
!44 = !{ptr @sdm845_pp_sblk, !45, !"sdm845_pp_sblk", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 729, i32 43}
!46 = !{ptr @sdm845_intf, !47, !"sdm845_intf", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 839, i32 34}
!48 = !{ptr @sdm845_vbif, !49, !"sdm845_vbif", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 871, i32 34}
!50 = !{ptr @sdm845_rt_pri_lvl, !51, !"sdm845_rt_pri_lvl", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 868, i32 18}
!52 = !{ptr @sdm845_nrt_pri_lvl, !53, !"sdm845_nrt_pri_lvl", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 869, i32 18}
!54 = !{ptr @sdm845_regdma, !55, !"sdm845_regdma", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 890, i32 37}
!56 = !{ptr @sdm845_perf_data, !57, !"sdm845_perf_data", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 955, i32 34}
!58 = !{ptr @sdm845_qos_linear, !59, !"sdm845_qos_linear", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 911, i32 39}
!60 = !{ptr @sdm845_qos_macrotile, !61, !"sdm845_qos_macrotile", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 934, i32 39}
!62 = !{ptr @sdm845_qos_nrt, !63, !"sdm845_qos_nrt", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 947, i32 39}
!64 = !{ptr @sm8150_dpu_caps, !65, !"sm8150_dpu_caps", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 212, i32 30}
!66 = !{ptr @sm8150_ctl, !67, !"sm8150_ctl", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 396, i32 33}
!68 = !{ptr @sm8150_lm, !69, !"sm8150_lm", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 658, i32 32}
!70 = !{ptr @sm8150_pp, !71, !"sm8150_pp", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 780, i32 38}
!72 = !{ptr @sm8150_merge_3d, !73, !"sm8150_merge_3d", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 812, i32 38}
!74 = !{ptr @sm8150_intf, !75, !"sm8150_intf", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 851, i32 34}
!76 = !{ptr @sm8150_regdma, !77, !"sm8150_regdma", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 894, i32 37}
!78 = !{ptr @sm8150_dspp, !79, !"sm8150_dspp", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 708, i32 34}
!80 = !{ptr @sm8150_dspp_sblk, !81, !"sm8150_dspp_sblk", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 690, i32 39}
!82 = !{ptr @sm8150_perf_data, !83, !"sm8150_perf_data", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 1019, i32 34}
!84 = !{ptr @sm8150_qos_linear, !85, !"sm8150_qos_linear", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 930, i32 39}
!86 = !{ptr @sc7180_qos_macrotile, !87, !"sc7180_qos_macrotile", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 943, i32 39}
!88 = !{ptr @sc7180_qos_nrt, !89, !"sc7180_qos_nrt", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 951, i32 39}
!90 = !{ptr @sm8250_dpu_caps, !91, !"sm8250_dpu_caps", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 228, i32 30}
!92 = !{ptr @sm8250_mdp, !93, !"sm8250_mdp", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 296, i32 33}
!94 = !{ptr @sm8250_sspp, !95, !"sm8250_sspp", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 568, i32 34}
!96 = !{ptr @sm8250_vig_sblk_0, !97, !"sm8250_vig_sblk_0", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 559, i32 39}
!98 = !{ptr @sm8250_vig_sblk_1, !99, !"sm8250_vig_sblk_1", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 561, i32 39}
!100 = !{ptr @sm8250_vig_sblk_2, !101, !"sm8250_vig_sblk_2", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 563, i32 39}
!102 = !{ptr @sm8250_vig_sblk_3, !103, !"sm8250_vig_sblk_3", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 565, i32 39}
!104 = !{ptr @sm8250_regdma, !105, !"sm8250_regdma", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 898, i32 37}
!106 = !{ptr @sm8250_perf_data, !107, !"sm8250_perf_data", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 1048, i32 34}
!108 = !{ptr @sc7180_qos_linear, !109, !"sc7180_qos_linear", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 926, i32 39}
!110 = !{ptr @sc7180_dpu_caps, !111, !"sc7180_dpu_caps", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 200, i32 30}
!112 = !{ptr @sc7180_mdp, !113, !"sc7180_mdp", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 279, i32 33}
!114 = !{ptr @sc7180_ctl, !115, !"sc7180_ctl", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 375, i32 33}
!116 = !{ptr @sc7180_sspp, !117, !"sc7180_sspp", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 548, i32 34}
!118 = !{ptr @sc7180_vig_sblk_0, !119, !"sc7180_vig_sblk_0", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 545, i32 39}
!120 = !{ptr @sc7180_lm, !121, !"sc7180_lm", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 649, i32 32}
!122 = !{ptr @sc7180_lm_sblk, !123, !"sc7180_lm_sblk", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 641, i32 37}
!124 = !{ptr @sc7180_pp, !125, !"sc7180_pp", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 775, i32 32}
!126 = !{ptr @sc7180_intf, !127, !"sc7180_intf", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 846, i32 34}
!128 = !{ptr @sc7180_dspp, !129, !"sc7180_dspp", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 703, i32 34}
!130 = !{ptr @sc7180_dspp_sblk, !131, !"sc7180_dspp_sblk", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 685, i32 39}
!132 = !{ptr @sc7180_perf_data, !133, !"sc7180_perf_data", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 991, i32 34}
!134 = !{ptr @sc7280_dpu_caps, !135, !"sc7280_dpu_caps", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 242, i32 30}
!136 = !{ptr @sc7280_mdp, !137, !"sc7280_mdp", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 323, i32 33}
!138 = !{ptr @sc7280_ctl, !139, !"sc7280_ctl", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 435, i32 33}
!140 = !{ptr @sc7280_sspp, !141, !"sc7280_sspp", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 587, i32 34}
!142 = !{ptr @sc7280_lm, !143, !"sc7280_lm", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 673, i32 32}
!144 = !{ptr @sc7280_pp, !145, !"sc7280_pp", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 818, i32 38}
!146 = !{ptr @sc7280_pp_sblk, !147, !"sc7280_pp_sblk", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 734, i32 43}
!148 = !{ptr @sc7280_intf, !149, !"sc7280_intf", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 858, i32 34}
!150 = !{ptr @sc7280_perf_data, !151, !"sc7280_perf_data", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c", i32 1077, i32 34}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
