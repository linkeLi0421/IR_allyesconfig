; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c_pt.bc'
source_filename = "../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_dp_sideband_msg_req_body = type { i8, %union.ack_req }
%union.ack_req = type { %struct.drm_dp_remote_i2c_read }
%struct.drm_dp_remote_i2c_read = type { i8, i8, [4 x %struct.drm_dp_remote_i2c_read_tx], i8, i8 }
%struct.drm_dp_remote_i2c_read_tx = type { i8, i8, ptr, i8, i8 }
%struct.drm_dp_allocate_payload = type { i8, i8, i8, i16, [16 x i8] }
%struct.drm_dp_query_stream_enc_status = type { i8, [7 x i8], i8, i8, i8, i8 }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.drm_dp_remote_i2c_write = type { i8, i8, i8, ptr }

@igt_dp_mst_calc_pbn_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s/%u: Expected PBN %d for clock %d bpp %d, got %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"igt_dp_mst_calc_pbn_mode\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c\00", [45 x i8] zeroinitializer }, align 32
@igt_dp_mst_calc_pbn_mode._entry_ptr = internal global ptr @igt_dp_mst_calc_pbn_mode._entry, section ".printk_index", align 4
@__const.igt_dp_mst_sideband_msg_req_decode.data = private unnamed_addr constant [3 x i8] c"\FF\00\DD", align 1
@igt_dp_mst_sideband_msg_req_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\013%s/%u: %s\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"igt_dp_mst_sideband_msg_req_decode\00", [61 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry, section ".printk_index", align 4
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"FAIL_ON(!sideband_msg_req_encode_decode(&in))\0A\00", [49 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.7 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.6, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.9 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.8, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.11 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.10, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.13 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.12, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.15 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.14, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.17 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.16, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.19 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.18, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.21 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.20, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.23 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.22, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.25 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.24, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.27 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.26, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.29 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.28, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.31 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.30, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.33 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.32, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.35 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.34, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.37 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.36, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.39 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.38, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.41 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.40, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.43 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.42, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.45 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.44, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.47 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.46, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.49 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.48, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.51 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.50, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.53 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.52, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.55 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.54, section ".printk_index", align 4
@igt_dp_mst_sideband_msg_req_decode._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@igt_dp_mst_sideband_msg_req_decode._entry_ptr.57 = internal global ptr @igt_dp_mst_sideband_msg_req_decode._entry.56, section ".printk_index", align 4
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"[drm_dp_mst_helper]\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to decode sideband request: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Encode/decode failed, expected:\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Got:\0A\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 33, i64 34, i64 35]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 8, i64 33, i64 34, i64 35]
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 36, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 187, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 191, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 195, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 201, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 203, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 205, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 207, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 211, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 213, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 217, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 219, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 221, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 225, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 227, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 230, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 234, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 236, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 245, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 249, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 251, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 254, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 258, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 261, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 263, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 265, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 267, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 269, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 124, i32 41 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 140, i32 18 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 147, i32 18 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [54 x i8] c"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 149, i32 18 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @igt_dp_mst_calc_pbn_mode._entry, ptr @igt_dp_mst_calc_pbn_mode._entry_ptr, ptr @igt_dp_mst_sideband_msg_req_decode._entry, ptr @igt_dp_mst_sideband_msg_req_decode._entry.10, ptr @igt_dp_mst_sideband_msg_req_decode._entry.12, ptr @igt_dp_mst_sideband_msg_req_decode._entry.14, ptr @igt_dp_mst_sideband_msg_req_decode._entry.16, ptr @igt_dp_mst_sideband_msg_req_decode._entry.18, ptr @igt_dp_mst_sideband_msg_req_decode._entry.20, ptr @igt_dp_mst_sideband_msg_req_decode._entry.22, ptr @igt_dp_mst_sideband_msg_req_decode._entry.24, ptr @igt_dp_mst_sideband_msg_req_decode._entry.26, ptr @igt_dp_mst_sideband_msg_req_decode._entry.28, ptr @igt_dp_mst_sideband_msg_req_decode._entry.30, ptr @igt_dp_mst_sideband_msg_req_decode._entry.32, ptr @igt_dp_mst_sideband_msg_req_decode._entry.34, ptr @igt_dp_mst_sideband_msg_req_decode._entry.36, ptr @igt_dp_mst_sideband_msg_req_decode._entry.38, ptr @igt_dp_mst_sideband_msg_req_decode._entry.40, ptr @igt_dp_mst_sideband_msg_req_decode._entry.42, ptr @igt_dp_mst_sideband_msg_req_decode._entry.44, ptr @igt_dp_mst_sideband_msg_req_decode._entry.46, ptr @igt_dp_mst_sideband_msg_req_decode._entry.48, ptr @igt_dp_mst_sideband_msg_req_decode._entry.50, ptr @igt_dp_mst_sideband_msg_req_decode._entry.52, ptr @igt_dp_mst_sideband_msg_req_decode._entry.54, ptr @igt_dp_mst_sideband_msg_req_decode._entry.56, ptr @igt_dp_mst_sideband_msg_req_decode._entry.6, ptr @igt_dp_mst_sideband_msg_req_decode._entry.8, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.11, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.13, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.15, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.17, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.19, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.21, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.23, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.25, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.27, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.29, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.31, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.33, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.35, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.37, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.39, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.41, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.43, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.45, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.47, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.49, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.51, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.53, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.55, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.57, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.7, ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_calc_pbn_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_dp_mst_sideband_msg_req_decode._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_dp_mst_calc_pbn_mode(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_dp_calc_pbn_mode(i32 noundef 154000, i32 noundef 30, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 689, i32 %call)
  %cmp4.not = icmp eq i32 %call, 689
  br i1 %cmp4.not, label %for.cond, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond:                                         ; preds = %entry
  %call.1 = tail call i32 @drm_dp_calc_pbn_mode(i32 noundef 234000, i32 noundef 30, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1047, i32 %call.1)
  %cmp4.not.1 = icmp eq i32 %call.1, 1047
  br i1 %cmp4.not.1, label %for.cond.1, label %for.cond.do.end_crit_edge

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call i32 @drm_dp_calc_pbn_mode(i32 noundef 297000, i32 noundef 24, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1063, i32 %call.2)
  %cmp4.not.2 = icmp eq i32 %call.2, 1063
  br i1 %cmp4.not.2, label %for.cond.2, label %for.cond.1.do.end_crit_edge

for.cond.1.do.end_crit_edge:                      ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.2:                                       ; preds = %for.cond.1
  %call.3 = tail call i32 @drm_dp_calc_pbn_mode(i32 noundef 332880, i32 noundef 24, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %call.3)
  %cmp4.not.3 = icmp eq i32 %call.3, 50
  br i1 %cmp4.not.3, label %for.cond.3, label %for.cond.2.do.end_crit_edge

for.cond.2.do.end_crit_edge:                      ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.3:                                       ; preds = %for.cond.2
  %call.4 = tail call i32 @drm_dp_calc_pbn_mode(i32 noundef 324540, i32 noundef 24, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %call.4)
  %cmp4.not.4 = icmp eq i32 %call.4, 49
  br i1 %cmp4.not.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.3.do.end_crit_edge

for.cond.3.do.end_crit_edge:                      ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %for.cond.3.do.end_crit_edge, %for.cond.2.do.end_crit_edge, %for.cond.1.do.end_crit_edge, %for.cond.do.end_crit_edge, %entry.do.end_crit_edge
  %.lcssa33 = phi i32 [ 154000, %entry.do.end_crit_edge ], [ 234000, %for.cond.do.end_crit_edge ], [ 297000, %for.cond.1.do.end_crit_edge ], [ 332880, %for.cond.2.do.end_crit_edge ], [ 324540, %for.cond.3.do.end_crit_edge ]
  %.lcssa31 = phi i32 [ 30, %entry.do.end_crit_edge ], [ 30, %for.cond.do.end_crit_edge ], [ 24, %for.cond.1.do.end_crit_edge ], [ 24, %for.cond.2.do.end_crit_edge ], [ 24, %for.cond.3.do.end_crit_edge ]
  %call.lcssa = phi i32 [ %call, %entry.do.end_crit_edge ], [ %call.1, %for.cond.do.end_crit_edge ], [ %call.2, %for.cond.1.do.end_crit_edge ], [ %call.3, %for.cond.2.do.end_crit_edge ], [ %call.4, %for.cond.3.do.end_crit_edge ]
  %.lcssa = phi i32 [ 689, %entry.do.end_crit_edge ], [ 1047, %for.cond.do.end_crit_edge ], [ 1063, %for.cond.1.do.end_crit_edge ], [ 50, %for.cond.2.do.end_crit_edge ], [ 49, %for.cond.3.do.end_crit_edge ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 39, i32 noundef %.lcssa, i32 noundef %.lcssa33, i32 noundef %.lcssa31, i32 noundef %call.lcssa) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.cond.3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.cond.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_calc_pbn_mode(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_dp_mst_sideband_msg_req_decode(ptr nocapture noundef readnone %unused) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca %struct.drm_dp_sideband_msg_req_body, align 4
  %data = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %in) #6
  %0 = call ptr @memset(ptr %in, i32 0, i32 60)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #6
  %1 = call ptr @memcpy(ptr %data, ptr @__const.igt_dp_mst_sideband_msg_req_decode.data, i32 3)
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %in, align 4
  %u = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1
  %3 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 5, ptr %u, align 4
  %call = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call, label %do.end4, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end4:                                          ; preds = %entry
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 36, ptr %in, align 4
  %5 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 5, ptr %u, align 4
  %call9 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call9, label %do.end18, label %do.end4.cleanup.sink.split_crit_edge

do.end4.cleanup.sink.split_crit_edge:             ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end18:                                         ; preds = %do.end4
  %6 = ptrtoint ptr %in to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 37, ptr %in, align 4
  %7 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 5, ptr %u, align 4
  %call23 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call23, label %do.body40, label %do.end18.cleanup.sink.split_crit_edge

do.end18.cleanup.sink.split_crit_edge:            ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.body40:                                        ; preds = %do.end18
  %8 = ptrtoint ptr %in to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 17, ptr %in, align 4
  %number_sdp_streams = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %number_sdp_streams to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %number_sdp_streams, align 1
  %arrayidx = getelementptr inbounds %struct.drm_dp_allocate_payload, ptr %u, i32 0, i32 4, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %arrayidx, align 2
  %arrayidx.1 = getelementptr inbounds %struct.drm_dp_allocate_payload, ptr %u, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %arrayidx.1, align 1
  %arrayidx.2 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %arrayidx.2, align 4
  %call41 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call41, label %do.end50, label %do.body40.cleanup.sink.split_crit_edge

do.body40.cleanup.sink.split_crit_edge:           ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end50:                                         ; preds = %do.body40
  %13 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 15, ptr %u, align 4
  %call54 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call54, label %do.end63, label %do.end50.cleanup.sink.split_crit_edge

do.end50.cleanup.sink.split_crit_edge:            ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end63:                                         ; preds = %do.end50
  %vcpi = getelementptr inbounds %struct.drm_dp_allocate_payload, ptr %u, i32 0, i32 2
  %14 = ptrtoint ptr %vcpi to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 127, ptr %vcpi, align 2
  %call66 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call66, label %do.end75, label %do.end63.cleanup.sink.split_crit_edge

do.end63.cleanup.sink.split_crit_edge:            ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end75:                                         ; preds = %do.end63
  %pbn = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %pbn to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %pbn, align 4
  %call78 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call78, label %do.end87, label %do.end75.cleanup.sink.split_crit_edge

do.end75.cleanup.sink.split_crit_edge:            ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end87:                                         ; preds = %do.end75
  %16 = ptrtoint ptr %in to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 18, ptr %in, align 4
  %17 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 15, ptr %u, align 4
  %call92 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call92, label %do.end101, label %do.end87.cleanup.sink.split_crit_edge

do.end87.cleanup.sink.split_crit_edge:            ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end101:                                        ; preds = %do.end87
  %18 = ptrtoint ptr %number_sdp_streams to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 127, ptr %number_sdp_streams, align 1
  %call105 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call105, label %do.end114, label %do.end101.cleanup.sink.split_crit_edge

do.end101.cleanup.sink.split_crit_edge:           ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end114:                                        ; preds = %do.end101
  %19 = ptrtoint ptr %in to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 32, ptr %in, align 4
  %20 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 15, ptr %u, align 4
  %call119 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call119, label %do.end128, label %do.end114.cleanup.sink.split_crit_edge

do.end114.cleanup.sink.split_crit_edge:           ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end128:                                        ; preds = %do.end114
  %21 = ptrtoint ptr %pbn to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1043915, ptr %pbn, align 4
  %call131 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call131, label %do.end140, label %do.end128.cleanup.sink.split_crit_edge

do.end128.cleanup.sink.split_crit_edge:           ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end140:                                        ; preds = %do.end128
  %num_bytes = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2, i32 0, i32 2
  %22 = ptrtoint ptr %num_bytes to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %num_bytes, align 4
  %call143 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call143, label %do.end152, label %do.end140.cleanup.sink.split_crit_edge

do.end140.cleanup.sink.split_crit_edge:           ; preds = %do.end140
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end152:                                        ; preds = %do.end140
  %23 = ptrtoint ptr %in to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 33, ptr %in, align 4
  %24 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 15, ptr %u, align 4
  %call157 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call157, label %do.end166, label %do.end152.cleanup.sink.split_crit_edge

do.end152.cleanup.sink.split_crit_edge:           ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end166:                                        ; preds = %do.end152
  %25 = ptrtoint ptr %pbn to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1043915, ptr %pbn, align 4
  %call170 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call170, label %do.end179, label %do.end166.cleanup.sink.split_crit_edge

do.end166.cleanup.sink.split_crit_edge:           ; preds = %do.end166
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end179:                                        ; preds = %do.end166
  %26 = ptrtoint ptr %num_bytes to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %num_bytes, align 4
  %bytes = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2, i32 0, i32 3
  %27 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %data, ptr %bytes, align 4
  %call184 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call184, label %do.end193, label %do.end179.cleanup.sink.split_crit_edge

do.end179.cleanup.sink.split_crit_edge:           ; preds = %do.end179
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end193:                                        ; preds = %do.end179
  %28 = ptrtoint ptr %in to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 34, ptr %in, align 4
  %29 = ptrtoint ptr %number_sdp_streams to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 15, ptr %number_sdp_streams, align 1
  %call198 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call198, label %do.end207, label %do.end193.cleanup.sink.split_crit_edge

do.end193.cleanup.sink.split_crit_edge:           ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end207:                                        ; preds = %do.end193
  %read_i2c_device_id = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 3
  %30 = ptrtoint ptr %read_i2c_device_id to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 127, ptr %read_i2c_device_id, align 4
  %call210 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call210, label %for.body228.preheader, label %do.end207.cleanup.sink.split_crit_edge

do.end207.cleanup.sink.split_crit_edge:           ; preds = %do.end207
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body228.preheader:                            ; preds = %do.end207
  %31 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %u, align 4
  %num_bytes_read = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 4
  %32 = ptrtoint ptr %num_bytes_read to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 9, ptr %num_bytes_read, align 1
  br label %for.body228

for.body228:                                      ; preds = %for.body228.for.body228_crit_edge, %for.body228.preheader
  %i.1394 = phi i32 [ %inc248, %for.body228.for.body228_crit_edge ], [ 0, %for.body228.preheader ]
  %arrayidx231 = getelementptr %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2, i32 %i.1394
  %bytes232 = getelementptr %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2, i32 %i.1394, i32 2
  %33 = ptrtoint ptr %bytes232 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %data, ptr %bytes232, align 4
  %num_bytes236 = getelementptr %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2, i32 %i.1394, i32 1
  %34 = ptrtoint ptr %num_bytes236 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %num_bytes236, align 1
  %35 = trunc i32 %i.1394 to i8
  %36 = xor i8 %35, -1
  %conv237 = and i8 %36, 127
  %37 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv237, ptr %arrayidx231, align 4
  %conv243 = and i8 %36, 15
  %i2c_transaction_delay = getelementptr %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2, i32 %i.1394, i32 4
  %38 = ptrtoint ptr %i2c_transaction_delay to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv243, ptr %i2c_transaction_delay, align 1
  %inc248 = add nuw nsw i32 %i.1394, 1
  %39 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %u, align 4
  %conv225 = zext i8 %40 to i32
  %cmp226 = icmp ult i32 %inc248, %conv225
  br i1 %cmp226, label %for.body228.for.body228_crit_edge, label %do.body250

for.body228.for.body228_crit_edge:                ; preds = %for.body228
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body228

do.body250:                                       ; preds = %for.body228
  %call251 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call251, label %do.end260, label %do.body250.cleanup.sink.split_crit_edge

do.body250.cleanup.sink.split_crit_edge:          ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end260:                                        ; preds = %do.body250
  %41 = ptrtoint ptr %in to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 35, ptr %in, align 4
  %42 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 15, ptr %u, align 4
  %call265 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call265, label %do.end274, label %do.end260.cleanup.sink.split_crit_edge

do.end260.cleanup.sink.split_crit_edge:           ; preds = %do.end260
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end274:                                        ; preds = %do.end260
  %43 = ptrtoint ptr %number_sdp_streams to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 127, ptr %number_sdp_streams, align 1
  %call277 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call277, label %do.end286, label %do.end274.cleanup.sink.split_crit_edge

do.end274.cleanup.sink.split_crit_edge:           ; preds = %do.end274
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end286:                                        ; preds = %do.end274
  %44 = ptrtoint ptr %vcpi to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 3, ptr %vcpi, align 2
  %45 = ptrtoint ptr %pbn to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %data, ptr %pbn, align 4
  %call293 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call293, label %do.end302, label %do.end286.cleanup.sink.split_crit_edge

do.end286.cleanup.sink.split_crit_edge:           ; preds = %do.end286
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end302:                                        ; preds = %do.end286
  %46 = ptrtoint ptr %in to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 56, ptr %in, align 4
  %47 = ptrtoint ptr %u to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %u, align 4
  %call306 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call306, label %do.end315, label %do.end302.cleanup.sink.split_crit_edge

do.end302.cleanup.sink.split_crit_edge:           ; preds = %do.end302
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end315:                                        ; preds = %do.end302
  call void @get_random_bytes(ptr noundef %number_sdp_streams, i32 noundef 7) #6
  %call319 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call319, label %do.end328, label %do.end315.cleanup.sink.split_crit_edge

do.end315.cleanup.sink.split_crit_edge:           ; preds = %do.end315
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end328:                                        ; preds = %do.end315
  %48 = ptrtoint ptr %num_bytes to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 3, ptr %num_bytes, align 4
  %call331 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call331, label %do.end340, label %do.end328.cleanup.sink.split_crit_edge

do.end328.cleanup.sink.split_crit_edge:           ; preds = %do.end328
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end340:                                        ; preds = %do.end328
  %valid_stream_event = getelementptr inbounds %struct.drm_dp_query_stream_enc_status, ptr %u, i32 0, i32 3
  %49 = ptrtoint ptr %valid_stream_event to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %valid_stream_event, align 1
  %call343 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call343, label %do.end352, label %do.end340.cleanup.sink.split_crit_edge

do.end340.cleanup.sink.split_crit_edge:           ; preds = %do.end340
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end352:                                        ; preds = %do.end340
  %stream_behavior = getelementptr inbounds %struct.drm_dp_query_stream_enc_status, ptr %u, i32 0, i32 4
  %50 = ptrtoint ptr %stream_behavior to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 3, ptr %stream_behavior, align 2
  %call355 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call355, label %do.end364, label %do.end352.cleanup.sink.split_crit_edge

do.end352.cleanup.sink.split_crit_edge:           ; preds = %do.end352
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end364:                                        ; preds = %do.end352
  %valid_stream_behavior = getelementptr inbounds %struct.drm_dp_query_stream_enc_status, ptr %u, i32 0, i32 5
  %51 = ptrtoint ptr %valid_stream_behavior to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %valid_stream_behavior, align 1
  %call367 = call fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef nonnull %in)
  br i1 %call367, label %do.end364.cleanup_crit_edge, label %do.end364.cleanup.sink.split_crit_edge

do.end364.cleanup.sink.split_crit_edge:           ; preds = %do.end364
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

do.end364.cleanup_crit_edge:                      ; preds = %do.end364
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.end364.cleanup.sink.split_crit_edge, %do.end352.cleanup.sink.split_crit_edge, %do.end340.cleanup.sink.split_crit_edge, %do.end328.cleanup.sink.split_crit_edge, %do.end315.cleanup.sink.split_crit_edge, %do.end302.cleanup.sink.split_crit_edge, %do.end286.cleanup.sink.split_crit_edge, %do.end274.cleanup.sink.split_crit_edge, %do.end260.cleanup.sink.split_crit_edge, %do.body250.cleanup.sink.split_crit_edge, %do.end207.cleanup.sink.split_crit_edge, %do.end193.cleanup.sink.split_crit_edge, %do.end179.cleanup.sink.split_crit_edge, %do.end166.cleanup.sink.split_crit_edge, %do.end152.cleanup.sink.split_crit_edge, %do.end140.cleanup.sink.split_crit_edge, %do.end128.cleanup.sink.split_crit_edge, %do.end114.cleanup.sink.split_crit_edge, %do.end101.cleanup.sink.split_crit_edge, %do.end87.cleanup.sink.split_crit_edge, %do.end75.cleanup.sink.split_crit_edge, %do.end63.cleanup.sink.split_crit_edge, %do.end50.cleanup.sink.split_crit_edge, %do.body40.cleanup.sink.split_crit_edge, %do.end18.cleanup.sink.split_crit_edge, %do.end4.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 187, %entry.cleanup.sink.split_crit_edge ], [ 191, %do.end4.cleanup.sink.split_crit_edge ], [ 195, %do.end18.cleanup.sink.split_crit_edge ], [ 201, %do.body40.cleanup.sink.split_crit_edge ], [ 203, %do.end50.cleanup.sink.split_crit_edge ], [ 205, %do.end63.cleanup.sink.split_crit_edge ], [ 207, %do.end75.cleanup.sink.split_crit_edge ], [ 211, %do.end87.cleanup.sink.split_crit_edge ], [ 213, %do.end101.cleanup.sink.split_crit_edge ], [ 217, %do.end114.cleanup.sink.split_crit_edge ], [ 219, %do.end128.cleanup.sink.split_crit_edge ], [ 221, %do.end140.cleanup.sink.split_crit_edge ], [ 225, %do.end152.cleanup.sink.split_crit_edge ], [ 227, %do.end166.cleanup.sink.split_crit_edge ], [ 230, %do.end179.cleanup.sink.split_crit_edge ], [ 234, %do.end193.cleanup.sink.split_crit_edge ], [ 236, %do.end207.cleanup.sink.split_crit_edge ], [ 245, %do.body250.cleanup.sink.split_crit_edge ], [ 249, %do.end260.cleanup.sink.split_crit_edge ], [ 251, %do.end274.cleanup.sink.split_crit_edge ], [ 254, %do.end286.cleanup.sink.split_crit_edge ], [ 258, %do.end302.cleanup.sink.split_crit_edge ], [ 261, %do.end315.cleanup.sink.split_crit_edge ], [ 263, %do.end328.cleanup.sink.split_crit_edge ], [ 265, %do.end340.cleanup.sink.split_crit_edge ], [ 267, %do.end352.cleanup.sink.split_crit_edge ], [ 269, %do.end364.cleanup.sink.split_crit_edge ]
  %call373 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %.sink, ptr noundef nonnull @.str.5) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end364.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end364.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %in) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sideband_msg_req_encode_decode(ptr noundef %in) unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #6
  %0 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %3 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @__drm_printfn_err, ptr %p, align 4, !alias.scope !107
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %0, align 4, !alias.scope !107
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %1, align 4, !alias.scope !107
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.58, ptr %2, align 4, !alias.scope !107
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 60) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i47 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 752) #10
  %tobool2.not = icmp eq ptr %call7.i.i47, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @drm_dp_encode_sideband_req(ptr noundef %in, ptr noundef nonnull %call7.i.i47) #6
  %call5 = tail call i32 @drm_dp_decode_sideband_req(ptr noundef nonnull %call7.i.i47, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.59, i32 noundef %call5) #6
  br label %out22

if.end7:                                          ; preds = %if.end4
  %9 = ptrtoint ptr %in to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %in, align 4
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp.not.i = icmp eq i8 %10, %12
  br i1 %cmp.not.i, label %if.end.i, label %if.end7.if.then9_crit_edge

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.end.i:                                         ; preds = %if.end7
  %13 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %sw.default.i [
    i8 34, label %sw.bb.i
    i8 33, label %sw.bb78.i
    i8 35, label %sw.bb114.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %num_bytes_read.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 4
  %14 = ptrtoint ptr %num_bytes_read.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_bytes_read.i, align 1
  %num_bytes_read8.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 4
  %16 = ptrtoint ptr %num_bytes_read8.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %num_bytes_read8.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp10.not.i = icmp eq i8 %15, %17
  br i1 %cmp10.not.i, label %lor.lhs.false.i, label %sw.bb.i.if.then9_crit_edge

sw.bb.i.if.then9_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %u.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1
  %u7.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %u.i, align 4
  %20 = ptrtoint ptr %u7.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %u7.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp17.not.i = icmp eq i8 %19, %21
  br i1 %cmp17.not.i, label %lor.lhs.false19.i, label %lor.lhs.false.i.if.then9_crit_edge

lor.lhs.false.i.if.then9_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

lor.lhs.false19.i:                                ; preds = %lor.lhs.false.i
  %port_number.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port_number.i, align 1
  %port_number23.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %port_number23.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %port_number23.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp25.not.i = icmp eq i8 %23, %25
  br i1 %cmp25.not.i, label %lor.lhs.false27.i, label %lor.lhs.false19.i.if.then9_crit_edge

lor.lhs.false19.i.if.then9_crit_edge:             ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

lor.lhs.false27.i:                                ; preds = %lor.lhs.false19.i
  %read_i2c_device_id.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %read_i2c_device_id.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %read_i2c_device_id.i, align 4
  %read_i2c_device_id31.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  %28 = ptrtoint ptr %read_i2c_device_id31.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %read_i2c_device_id31.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp33.not.i = icmp eq i8 %27, %29
  br i1 %cmp33.not.i, label %for.cond.preheader.i, label %lor.lhs.false27.i.if.then9_crit_edge

lor.lhs.false27.i.if.then9_crit_edge:             ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

for.cond.preheader.i:                             ; preds = %lor.lhs.false27.i
  %conv39.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp40204.not.i = icmp eq i8 %19, 0
  br i1 %cmp40204.not.i, label %for.cond.preheader.i.for.cond.preheader_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.cond.preheader_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

for.cond.i:                                       ; preds = %if.end70.i
  %inc.i = add nuw nsw i32 %i.0205.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv39.i
  br i1 %exitcond.not.i, label %for.cond.i.if.end10_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.i.if.end10_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0205.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2, i32 %i.0205.i
  %arrayidx45.i = getelementptr %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2, i32 %i.0205.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 4
  %32 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx45.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp49.not.i = icmp eq i8 %31, %33
  br i1 %cmp49.not.i, label %lor.lhs.false51.i, label %for.body.i.if.then9_crit_edge

for.body.i.if.then9_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

lor.lhs.false51.i:                                ; preds = %for.body.i
  %no_stop_bit.i = getelementptr %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2, i32 %i.0205.i, i32 3
  %34 = ptrtoint ptr %no_stop_bit.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %no_stop_bit.i, align 4
  %no_stop_bit53.i = getelementptr %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2, i32 %i.0205.i, i32 3
  %36 = ptrtoint ptr %no_stop_bit53.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %no_stop_bit53.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp55.not.i = icmp eq i8 %35, %37
  br i1 %cmp55.not.i, label %lor.lhs.false57.i, label %lor.lhs.false51.i.if.then9_crit_edge

lor.lhs.false51.i.if.then9_crit_edge:             ; preds = %lor.lhs.false51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

lor.lhs.false57.i:                                ; preds = %lor.lhs.false51.i
  %num_bytes.i = getelementptr %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2, i32 %i.0205.i, i32 1
  %38 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %num_bytes.i, align 1
  %conv58.i = zext i8 %39 to i32
  %num_bytes59.i = getelementptr %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2, i32 %i.0205.i, i32 1
  %40 = ptrtoint ptr %num_bytes59.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %num_bytes59.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp61.not.i = icmp eq i8 %39, %41
  br i1 %cmp61.not.i, label %lor.lhs.false63.i, label %lor.lhs.false57.i.if.then9_crit_edge

lor.lhs.false57.i.if.then9_crit_edge:             ; preds = %lor.lhs.false57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

lor.lhs.false63.i:                                ; preds = %lor.lhs.false57.i
  %i2c_transaction_delay.i = getelementptr %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2, i32 %i.0205.i, i32 4
  %42 = ptrtoint ptr %i2c_transaction_delay.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %i2c_transaction_delay.i, align 1
  %i2c_transaction_delay65.i = getelementptr %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2, i32 %i.0205.i, i32 4
  %44 = ptrtoint ptr %i2c_transaction_delay65.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %i2c_transaction_delay65.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %45)
  %cmp67.not.i = icmp eq i8 %43, %45
  br i1 %cmp67.not.i, label %if.end70.i, label %lor.lhs.false63.i.if.then9_crit_edge

lor.lhs.false63.i.if.then9_crit_edge:             ; preds = %lor.lhs.false63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.end70.i:                                       ; preds = %lor.lhs.false63.i
  %bytes.i = getelementptr %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2, i32 %i.0205.i, i32 2
  %46 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bytes.i, align 4
  %bytes71.i = getelementptr %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2, i32 %i.0205.i, i32 2
  %48 = ptrtoint ptr %bytes71.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bytes71.i, align 4
  %bcmp202.i = tail call i32 @bcmp(ptr %47, ptr %49, i32 %conv58.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp202.i)
  %cmp74.not.i = icmp eq i32 %bcmp202.i, 0
  br i1 %cmp74.not.i, label %for.cond.i, label %if.end70.i.if.then9_crit_edge

if.end70.i.if.then9_crit_edge:                    ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

sw.bb78.i:                                        ; preds = %if.end.i
  %u79.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1
  %dpcd_address.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2
  %50 = ptrtoint ptr %dpcd_address.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dpcd_address.i, align 4
  %u80.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1
  %dpcd_address81.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %52 = ptrtoint ptr %dpcd_address81.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dpcd_address81.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp82.not.i = icmp eq i32 %51, %53
  br i1 %cmp82.not.i, label %lor.lhs.false84.i, label %sw.bb78.i.if.then9_crit_edge

sw.bb78.i.if.then9_crit_edge:                     ; preds = %sw.bb78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

lor.lhs.false84.i:                                ; preds = %sw.bb78.i
  %num_bytes86.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2, i32 0, i32 2
  %54 = ptrtoint ptr %num_bytes86.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_bytes86.i, align 4
  %conv87.i = zext i8 %55 to i32
  %num_bytes89.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2, i32 0, i32 2
  %56 = ptrtoint ptr %num_bytes89.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %num_bytes89.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %55, i8 %57)
  %cmp91.not.i = icmp eq i8 %55, %57
  br i1 %cmp91.not.i, label %lor.lhs.false93.i, label %lor.lhs.false84.i.if.then9_crit_edge

lor.lhs.false84.i.if.then9_crit_edge:             ; preds = %lor.lhs.false84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

lor.lhs.false93.i:                                ; preds = %lor.lhs.false84.i
  %58 = ptrtoint ptr %u79.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %u79.i, align 4
  %60 = ptrtoint ptr %u80.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %u80.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %61)
  %cmp100.not.i = icmp eq i8 %59, %61
  br i1 %cmp100.not.i, label %sideband_msg_req_equal.exit, label %lor.lhs.false93.i.if.then9_crit_edge

lor.lhs.false93.i.if.then9_crit_edge:             ; preds = %lor.lhs.false93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

sw.bb114.i:                                       ; preds = %if.end.i
  %u115.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1
  %62 = ptrtoint ptr %u115.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %u115.i, align 4
  %u118.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %u118.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %u118.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %65)
  %cmp121.not.i = icmp eq i8 %63, %65
  br i1 %cmp121.not.i, label %lor.lhs.false123.i, label %sw.bb114.i.if.then9_crit_edge

sw.bb114.i.if.then9_crit_edge:                    ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

lor.lhs.false123.i:                               ; preds = %sw.bb114.i
  %write_i2c_device_id.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 1
  %66 = ptrtoint ptr %write_i2c_device_id.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %write_i2c_device_id.i, align 1
  %write_i2c_device_id127.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %68 = ptrtoint ptr %write_i2c_device_id127.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %write_i2c_device_id127.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %69)
  %cmp129.not.i = icmp eq i8 %67, %69
  br i1 %cmp129.not.i, label %lor.lhs.false131.i, label %lor.lhs.false123.i.if.then9_crit_edge

lor.lhs.false123.i.if.then9_crit_edge:            ; preds = %lor.lhs.false123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

lor.lhs.false131.i:                               ; preds = %lor.lhs.false123.i
  %num_bytes133.i = getelementptr inbounds %struct.drm_dp_remote_i2c_write, ptr %u115.i, i32 0, i32 2
  %70 = ptrtoint ptr %num_bytes133.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %num_bytes133.i, align 2
  %num_bytes136.i = getelementptr inbounds %struct.drm_dp_remote_i2c_write, ptr %u118.i, i32 0, i32 2
  %72 = ptrtoint ptr %num_bytes136.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %num_bytes136.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %71, i8 %73)
  %cmp138.not.i = icmp eq i8 %71, %73
  br i1 %cmp138.not.i, label %if.end141.i, label %lor.lhs.false131.i.if.then9_crit_edge

lor.lhs.false131.i.if.then9_crit_edge:            ; preds = %lor.lhs.false131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.end141.i:                                      ; preds = %lor.lhs.false131.i
  %conv134.i = zext i8 %71 to i32
  %bytes143.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2
  %74 = ptrtoint ptr %bytes143.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bytes143.i, align 4
  %bytes145.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %76 = ptrtoint ptr %bytes145.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bytes145.i, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %75, ptr %77, i32 %conv134.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp150.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp150.i, label %if.end141.i.sw.bb18_crit_edge, label %if.end141.i.if.then9_crit_edge

if.end141.i.if.then9_crit_edge:                   ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

if.end141.i.sw.bb18_crit_edge:                    ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb18

sw.default.i:                                     ; preds = %if.end.i
  %bcmp203.i = tail call i32 @bcmp(ptr noundef dereferenceable(60) %in, ptr noundef nonnull dereferenceable(60) %call7.i.i, i32 60) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp203.i)
  %cmp153.i = icmp eq i32 %bcmp203.i, 0
  br i1 %cmp153.i, label %sw.default.i.if.end10_crit_edge, label %sw.default.i.if.then9_crit_edge

sw.default.i.if.then9_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

sw.default.i.if.end10_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

sideband_msg_req_equal.exit:                      ; preds = %lor.lhs.false93.i
  %bytes105.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1, i32 0, i32 2, i32 0, i32 3
  %78 = ptrtoint ptr %bytes105.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bytes105.i, align 4
  %bytes107.i = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2, i32 0, i32 3
  %80 = ptrtoint ptr %bytes107.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bytes107.i, align 8
  %bcmp201.i = tail call i32 @bcmp(ptr %79, ptr %81, i32 %conv87.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp201.i)
  %cmp112.i = icmp eq i32 %bcmp201.i, 0
  br i1 %cmp112.i, label %sideband_msg_req_equal.exit.sw.bb_crit_edge, label %sideband_msg_req_equal.exit.if.then9_crit_edge

sideband_msg_req_equal.exit.if.then9_crit_edge:   ; preds = %sideband_msg_req_equal.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then9

sideband_msg_req_equal.exit.sw.bb_crit_edge:      ; preds = %sideband_msg_req_equal.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then9:                                         ; preds = %sideband_msg_req_equal.exit.if.then9_crit_edge, %sw.default.i.if.then9_crit_edge, %if.end141.i.if.then9_crit_edge, %lor.lhs.false131.i.if.then9_crit_edge, %lor.lhs.false123.i.if.then9_crit_edge, %sw.bb114.i.if.then9_crit_edge, %lor.lhs.false93.i.if.then9_crit_edge, %lor.lhs.false84.i.if.then9_crit_edge, %sw.bb78.i.if.then9_crit_edge, %if.end70.i.if.then9_crit_edge, %lor.lhs.false63.i.if.then9_crit_edge, %lor.lhs.false57.i.if.then9_crit_edge, %lor.lhs.false51.i.if.then9_crit_edge, %for.body.i.if.then9_crit_edge, %lor.lhs.false27.i.if.then9_crit_edge, %lor.lhs.false19.i.if.then9_crit_edge, %lor.lhs.false.i.if.then9_crit_edge, %sw.bb.i.if.then9_crit_edge, %if.end7.if.then9_crit_edge
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.60) #6
  call void @drm_dp_dump_sideband_msg_req_body(ptr noundef %in, i32 noundef 1, ptr noundef nonnull %p) #6
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.61) #6
  call void @drm_dp_dump_sideband_msg_req_body(ptr noundef nonnull %call7.i.i, i32 noundef 1, ptr noundef nonnull %p) #6
  br label %out22

if.end10:                                         ; preds = %sw.default.i.if.end10_crit_edge, %for.cond.i.if.end10_crit_edge
  %82 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %10, label %if.end10.sw.epilog_crit_edge [
    i8 33, label %if.end10.sw.bb_crit_edge
    i8 34, label %if.end10.for.cond.preheader_crit_edge
    i8 35, label %if.end10.sw.bb18_crit_edge
  ]

if.end10.sw.bb18_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb18

if.end10.for.cond.preheader_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.preheader

if.end10.sw.bb_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end10.sw.epilog_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.cond.preheader:                               ; preds = %if.end10.for.cond.preheader_crit_edge, %for.cond.preheader.i.for.cond.preheader_crit_edge
  %u12 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %u12 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %u12, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp1454.not = icmp eq i8 %84, 0
  br i1 %cmp1454.not, label %for.cond.preheader.sw.epilog_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end10.sw.bb_crit_edge, %sideband_msg_req_equal.exit.sw.bb_crit_edge
  %bytes = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2, i32 0, i32 3
  br label %sw.epilog.sink.split

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %bytes17 = getelementptr %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2, i32 %i.055, i32 2
  %85 = ptrtoint ptr %bytes17 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %bytes17, align 4
  tail call void @kfree(ptr noundef %86) #6
  %inc = add nuw nsw i32 %i.055, 1
  %87 = ptrtoint ptr %u12 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %u12, align 4
  %conv13 = zext i8 %88 to i32
  %cmp14 = icmp ult i32 %inc, %conv13
  br i1 %cmp14, label %for.body.for.body_crit_edge, label %for.body.sw.epilog_crit_edge

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

sw.bb18:                                          ; preds = %if.end10.sw.bb18_crit_edge, %if.end141.i.sw.bb18_crit_edge
  %bytes20 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb18, %sw.bb
  %bytes20.sink = phi ptr [ %bytes20, %sw.bb18 ], [ %bytes, %sw.bb ]
  %89 = ptrtoint ptr %bytes20.sink to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bytes20.sink, align 8
  tail call void @kfree(ptr noundef %90) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %for.body.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge, %if.end10.sw.epilog_crit_edge
  %u21 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, ptr %in, i32 0, i32 1
  %91 = call ptr @memset(ptr %u21, i32 0, i32 56)
  br label %out22

out22:                                            ; preds = %sw.epilog, %if.then9, %if.then6
  %result.0.off0 = phi i1 [ false, %if.then6 ], [ true, %sw.epilog ], [ false, %if.then9 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  call void @kfree(ptr noundef nonnull %call7.i.i47) #6
  br label %cleanup

cleanup:                                          ; preds = %out22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %result.0.off0, %out22 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #6
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_encode_sideband_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_decode_sideband_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_dump_sideband_msg_req_body(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_err(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 36, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @igt_dp_mst_calc_pbn_mode._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @igt_dp_mst_calc_pbn_mode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 187, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.6, !13, !"_entry", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 191, i32 2}
!14 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.8, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 195, i32 2}
!17 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.10, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 201, i32 2}
!20 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.12, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 203, i32 2}
!23 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.14, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 205, i32 2}
!26 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.16, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 207, i32 2}
!29 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.18, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 211, i32 2}
!32 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.20, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 213, i32 2}
!35 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.22, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 217, i32 2}
!38 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.23, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.24, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 219, i32 2}
!41 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.26, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 221, i32 2}
!44 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.28, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 225, i32 2}
!47 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.29, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.30, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 227, i32 2}
!50 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.31, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.32, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 230, i32 2}
!53 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.33, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.34, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 234, i32 2}
!56 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.35, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.36, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 236, i32 2}
!59 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.37, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.38, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 245, i32 2}
!62 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.39, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.40, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 249, i32 2}
!65 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.41, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.42, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 251, i32 2}
!68 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.43, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.44, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 254, i32 2}
!71 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.45, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.46, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 258, i32 2}
!74 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.47, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.48, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 261, i32 2}
!77 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.49, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.50, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 263, i32 2}
!80 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.51, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.52, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 265, i32 2}
!83 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.53, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.54, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 267, i32 2}
!86 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.55, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry.56, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 269, i32 2}
!89 = !{ptr @igt_dp_mst_sideband_msg_req_decode._entry_ptr.57, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.58, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 124, i32 41}
!92 = !{ptr @.str.59, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 140, i32 18}
!94 = !{ptr @.str.60, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 147, i32 18}
!96 = !{ptr @.str.61, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/selftests/test-drm_dp_mst_helper.c", i32 149, i32 18}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"drm_err_printer: %agg.result"}
!109 = distinct !{!109, !"drm_err_printer"}
